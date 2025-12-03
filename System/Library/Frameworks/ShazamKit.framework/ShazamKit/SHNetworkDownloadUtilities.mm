@interface SHNetworkDownloadUtilities
+ (id)cachedFileURLWithFilename:(id)filename type:(id)type;
+ (id)downloadDirectory;
+ (id)renameDownloadedFile:(id)file withFilename:(id)filename usingType:(id)type error:(id *)error;
@end

@implementation SHNetworkDownloadUtilities

+ (id)renameDownloadedFile:(id)file withFilename:(id)filename usingType:(id)type error:(id *)error
{
  fileCopy = file;
  typeCopy = type;
  filenameCopy = filename;
  downloadDirectory = [self downloadDirectory];
  v14 = [downloadDirectory URLByAppendingPathComponent:filenameCopy conformingToType:typeCopy];

  v15 = +[NSFileManager defaultManager];
  path = [v14 path];
  if (([v15 fileExistsAtPath:path] & 1) == 0)
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
    v20 = *error;
    v33 = 138412546;
    v34 = v14;
    v35 = 2112;
    v36 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Existing downloaded file at %@ could not be removed for a new download. Error: %@.", &v33, 0x16u);
  }

  v21 = +[NSProcessInfo processInfo];
  globallyUniqueString = [v21 globallyUniqueString];

  downloadDirectory2 = [self downloadDirectory];
  v24 = [downloadDirectory2 URLByAppendingPathComponent:globallyUniqueString conformingToType:typeCopy];

  v25 = sh_log_object();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v33 = 138412290;
    v34 = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Saving downloaded file to %@ instead", &v33, 0xCu);
  }

LABEL_10:
  v26 = +[NSFileManager defaultManager];
  v27 = [v26 moveItemAtURL:fileCopy toURL:v24 error:error];

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
      v31 = *error;
      v33 = 138412802;
      v34 = fileCopy;
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

+ (id)cachedFileURLWithFilename:(id)filename type:(id)type
{
  typeCopy = type;
  filenameCopy = filename;
  downloadDirectory = [self downloadDirectory];
  v9 = [downloadDirectory URLByAppendingPathComponent:filenameCopy conformingToType:typeCopy];

  v10 = +[NSFileManager defaultManager];
  path = [v9 path];
  LODWORD(filenameCopy) = [v10 fileExistsAtPath:path];

  if (filenameCopy)
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
  firstObject = [v2 firstObject];
  v4 = firstObject;
  if (firstObject)
  {
    v5 = firstObject;
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
  path = [v8 path];
  v11 = [v9 fileExistsAtPath:path isDirectory:&v20];
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