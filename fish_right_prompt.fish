function fish_right_prompt
  set -l last_status $status

  if test "$CMD_DURATION" -gt 100
    set -l duration_copy $CMD_DURATION
    set -l duration (echo $CMD_DURATION | humanize_duration)
    echo -sn (tput setaf 59) "($duration) "
  end	

  if test $last_status = 0
    set_color green
  else
    set_color red
  end
  date "+%T"
  set_color normal
end
