$7zipPath = "C:\Program Files\7-zip\"

$s_path = read-host "Enter the source directory: "
$passw = read-host "Enter the passphrase to be used to encrypt the zipped file: "
$dest_path = read-host "Enter the path for destination: "
$dest_file = read-host "Enter the output file name (add .7z to the end): "
$file_path = $dest_path + "/" + $dest_file

cd $7zipPath
./7z.exe a -t7z -p"$passw" "$file_path" "$source_path"
