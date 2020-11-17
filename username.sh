#! /bin/bash
# username.sh
# David Ulriksen
echo "Enter a username between 3-12 characters long. Lower case letters, digits and underscore characters only. Must start with a lowercase letter.: "
read ZIP

while echo "$ZIP" | egrep -E -v "^[a-z]{1}\d*[a-z,0-9,_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - between 3 to 12 characters!"
	echo "Enter a username between 3-12 characters long. Lower case letters, digits and underscore characters only. Must start with a lowercase letter.: "
	read ZIP
done
echo "Thank you"
