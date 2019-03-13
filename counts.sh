let a=0;for file in $(find .);do file $file | grep -i "text"; if [ $? -eq 0 ];then let a+=$(wc -l $file|grep -oE "[0-9]+");fi;done;echo $a
