echo "From : "
read m
echo "To :"
read n

sum=0
item=$n
di=$n
i=0

for((k=m;k<=n;k++))
do
	sum=0
	item=$k
	di=$k
	i=0

	while [ $di -ne 0 ]
	do
		di=`expr $di / 10`
		i=`expr $i + 1`
	done
	ds=`expr length $k`
	echo "$k DII $ds"
	while [ $item -ne 0 ]
	do
		cube=1
		rem=`expr $item % 10`

		for((j=1;j<=i;j++))
		do
			cube=`expr $cube \* $rem`
		done

		sum=`expr $sum + $cube`
		#echo "SUm $sum"
		item=`expr $item / 10`
	done

	#echo "SUM $sum"

	if [ $sum -eq $k ]
	then
		echo $k
	fi
done

