@interface SHNetworkDownloadUtilities
+ (id)cachedFileURLWithFilename:(id)a3 type:(id)a4;
+ (id)downloadDirectory;
+ (id)renameDownloadedFile:(id)a3 withFilename:(id)a4 usingType:(id)a5 error:(id *)a6;
@end

@implementation SHNetworkDownloadUtilities

+ (id)renameDownloadedFile:(id)a3 withFilename:(id)a4 usingType:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [a1 downloadDirectory];
  v14 = [v13 URLByAppendingPathComponent:v12 conformingToType:v11];

  v15 = +[NSFileManager defaultManager];
  v16 = [v14 path];
  if (([v15 fileExistsAtPath:v16] & 1) == 0)
  {

    goto LABEL_9;
  }

  v17 = +[NSFileManager defaultManager];
  v18 = [v17 removeItemAtURL:v14 error:0];

  if (v18)
  {
LABEL_9:
    v24 = v14;
    goto LABEL_10;
  }

  v19 = sh_log_object();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = *a6;
    v33 = 138412546;
    v34 = v14;
    v35 = 2112;
    v36 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Existing downloaded file at %@ could not be removed for a new download. Error: %@.", &v33, 0x16u);
  }

  v21 = +[NSProcessInfo processInfo];
  v22 = [v21 globallyUniqueString];

  v23 = [a1 downloadDirectory];
  v24 = [v23 URLByAppendingPathComponent:v22 conformingToType:v11];

  v25 = sh_log_object();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v33 = 138412290;
    v34 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Saving downloaded file to %@ instead", &v33, 0xCu);
  }

LABEL_10:
  v26 = +[NSFileManager defaultManager];
  v27 = [v26 moveItemAtURL:v10 toURL:v24 error:a6];

  v28 = sh_log_object();
  v29 = v28;
  if (v27)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v33 = 138412290;
      v34 = v24;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Downloaded archive file from server %@", &v33, 0xCu);
    }

    v30 = v24;
  }

  else
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = *a6;
      v33 = 138412802;
      v34 = v10;
      v35 = 2112;
      v36 = v24;
      v37 = 2112;
      v38 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to rename item at %@ to %@ Error: %@", &v33, 0x20u);
    }

    v30 = 0;
  }

  return v30;
}

+ (id)cachedFileURLWithFilename:(id)a3 type:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 downloadDirectory];
  v9 = [v8 URLByAppendingPathComponent:v7 conformingToType:v6];

  v10 = +[NSFileManager defaultManager];
  v11 = [v9 path];
  LODWORD(v7) = [v10 fileExistsAtPath:v11];

  if (v7)
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)downloadDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = NSTemporaryDirectory();
  }

  v6 = v5;

  v7 = [NSURL fileURLWithPath:v6];
  v8 = [v7 URLByAppendingPathComponent:@"com.apple.shazamd/Downloads"];

  v20 = 0;
  v9 = +[NSFileManager defaultManager];
  v10 = [v8 path];
  v11 = [v9 fileExistsAtPath:v10 isDirectory:&v20];
  v12 = v20;

  if (!v11 || (v12 & 1) == 0)
  {
    v13 = +[NSFileManager defaultManager];
    v19 = 0;
    v14 = [v13 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:&v19];
    v15 = v19;

    if ((v14 & 1) == 0)
    {
      v16 = [NSURL fileURLWithPath:v6];

      v17 = sh_log_object();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to create directory for network downloads. Error: %@", buf, 0xCu);
      }

      v8 = v16;
    }
  }

  return v8;
}

@end