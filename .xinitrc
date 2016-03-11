#! /bin/sh

im=uim
wm=wmaker	# cwm, dwm
en=en_US.UTF-8
ja=ja_JP.UTF-8

################################################################################

export XMODIFIERS=@im=$im
export GTK_IM_MODULE=$im
export QT_IM_MODULE=$im
export LANG=$en

################################################################################

# XXX done in GNUstep?
xset b off
xset +fp $HOME/.fonts

uim-xim &
env LANG=$ja uim-toolbar-gtk &

exec ssh-agent $wm
