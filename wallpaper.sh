#!/bin/sh

shopt -s nullglob
 
cd ~/.config/variety/Downloaded/Bing/

while true; do
	files=()
	for i in *.jpg *.png; do
		[[ -f $i ]] && files+=("$i")
	done
	range=${#files[@]}
	((range)) && feh --bg-scale "${files[RANDOM % range]}"
	sleep 15m
done
