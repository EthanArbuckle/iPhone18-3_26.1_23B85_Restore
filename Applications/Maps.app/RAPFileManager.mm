@interface RAPFileManager
+ (BOOL)haveContentsOfFilePathExpired:(id)expired withSuggestedRetryDate:(id)date;
+ (BOOL)haveContentsOfFilePathExpired:(id)expired withSuggestedRetryDate:(id)date withTimeToLive:(double)live;
+ (BOOL)removeAllItemsInDirectory:(id)directory;
+ (BOOL)removeItemAtFilePath:(id)path;
+ (BOOL)saveData:(id)data toDirectory:(id)directory filename:(id)filename;
+ (id)baseFilePath:(id *)path;
+ (id)baseLayoutFilePath;
+ (id)baseSubmissionFilePath;
+ (id)dataAtFileURL:(id)l;
+ (unint64_t)numberOfItemsInDirectory:(id)directory;
@end

@implementation RAPFileManager

+ (id)dataAtFileURL:(id)l
{
  lCopy = l;
  v4 = +[NSFileManager defaultManager];
  path = [lCopy path];

  v6 = [v4 contentsAtPath:path];

  return v6;
}

+ (BOOL)haveContentsOfFilePathExpired:(id)expired withSuggestedRetryDate:(id)date withTimeToLive:(double)live
{
  dateCopy = date;
  v16 = 0;
  v15 = 0;
  [expired getResourceValue:&v16 forKey:NSURLCreationDateKey error:&v15];
  v8 = v16;
  v9 = v15;
  if (v9)
  {
    v10 = sub_10002E924();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to get creation date with error %@", buf, 0xCu);
    }

    v11 = 1;
  }

  else
  {
    v10 = [v8 dateByAddingTimeInterval:live];
    v12 = [v10 compare:dateCopy];
    v11 = v12 == -1;
    v13 = sub_10002E924();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v18 = v10;
      v19 = 2112;
      v20 = dateCopy;
      v21 = 1024;
      v22 = v12 == -1;
      v23 = 2048;
      liveCopy = live;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "The latest date is %@, the retry date is %@, hasContentExpired = %d and the standard time to live is %f", buf, 0x26u);
    }
  }

  return v11;
}

+ (BOOL)haveContentsOfFilePathExpired:(id)expired withSuggestedRetryDate:(id)date
{
  dateCopy = date;
  expiredCopy = expired;
  [self standardTimeToLive];
  LOBYTE(self) = [self haveContentsOfFilePathExpired:expiredCopy withSuggestedRetryDate:dateCopy withTimeToLive:?];

  return self;
}

+ (BOOL)removeAllItemsInDirectory:(id)directory
{
  directoryCopy = directory;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:0 error:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    v11 = 1;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (v11)
        {
          v11 = [self removeItemAtFilePath:{*(*(&v14 + 1) + 8 * i), v14}];
        }

        else
        {
          v11 = 0;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

+ (BOOL)removeItemAtFilePath:(id)path
{
  if (!path)
  {
    return 0;
  }

  pathCopy = path;
  v4 = +[NSFileManager defaultManager];
  v14 = 0;
  v5 = [v4 removeItemAtURL:pathCopy error:&v14];
  v6 = v14;

  uRLByDeletingLastPathComponent = [pathCopy URLByDeletingLastPathComponent];

  if (![RAPFileManager numberOfItemsInDirectory:uRLByDeletingLastPathComponent])
  {
    v8 = sub_10002E924();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = uRLByDeletingLastPathComponent;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Deleting directory %@", buf, 0xCu);
    }

    v9 = +[NSFileManager defaultManager];
    v13 = v6;
    v10 = [v9 removeItemAtURL:uRLByDeletingLastPathComponent error:&v13];
    v11 = v13;

    v5 &= v10;
    v6 = v11;
  }

  return v5;
}

+ (unint64_t)numberOfItemsInDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = +[NSFileManager defaultManager];
  v11 = 0;
  v5 = [v4 contentsOfDirectoryAtURL:directoryCopy includingPropertiesForKeys:0 options:0 error:&v11];
  v6 = v11;

  v7 = sub_10002E924();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 count];
    *buf = 134218242;
    v13 = v8;
    v14 = 2112;
    v15 = directoryCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Found %lu items at directory %@", buf, 0x16u);
  }

  v9 = [v5 count];
  return v9;
}

+ (BOOL)saveData:(id)data toDirectory:(id)directory filename:(id)filename
{
  dataCopy = data;
  directoryCopy = directory;
  filenameCopy = filename;
  if (directoryCopy)
  {
    v10 = +[NSFileManager defaultManager];
    v39 = 0;
    v11 = [v10 createDirectoryAtURL:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v39];
    v12 = v39;

    if (!v11)
    {
      v23 = 0;
LABEL_20:

      goto LABEL_21;
    }

    v13 = [directoryCopy URLByAppendingPathComponent:filenameCopy];
    v14 = +[NSData data];
    v38 = v12;
    v15 = [v14 writeToURL:v13 options:0 error:&v38];
    v16 = v38;

    if (v15)
    {
      v36 = v16;
      v17 = [v13 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v36];
      v18 = v36;

      if ((v17 & 1) == 0)
      {
        v22 = +[NSFileManager defaultManager];
        v35 = v18;
        [v22 removeItemAtURL:v13 error:&v35];
        v27 = v35;
LABEL_16:
        v12 = v27;

        goto LABEL_17;
      }

      v34 = v18;
      v19 = [v13 setResourceValue:NSURLFileProtectionCompleteUnlessOpen forKey:NSURLFileProtectionKey error:&v34];
      v16 = v34;

      if (v19)
      {
        v32 = v16;
        v20 = [dataCopy writeToURL:v13 options:0 error:&v32];
        v18 = v32;

        v21 = +[NSFileManager defaultManager];
        v22 = v21;
        if (v20)
        {
          v42 = NSFileCreationDate;
          v29 = +[NSDate date];
          v43 = v29;
          v23 = 1;
          v24 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          path = [v13 path];
          v30 = v18;
          [v22 setAttributes:v24 ofItemAtPath:path error:&v30];
          v12 = v30;

          if (!v12)
          {
LABEL_19:

            goto LABEL_20;
          }

          v22 = sub_10002E924();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v41 = v12;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Error %@ in writing creation date to file", buf, 0xCu);
          }

          v23 = 1;
LABEL_18:

          goto LABEL_19;
        }

        v31 = v18;
        [v21 removeItemAtURL:v13 error:&v31];
        v27 = v31;
        goto LABEL_16;
      }

      v22 = +[NSFileManager defaultManager];
      v33 = v16;
      [v22 removeItemAtURL:v13 error:&v33];
      v26 = v33;
    }

    else
    {
      v22 = +[NSFileManager defaultManager];
      v37 = v16;
      [v22 removeItemAtURL:v13 error:&v37];
      v26 = v37;
    }

    v12 = v26;

LABEL_17:
    v23 = 0;
    goto LABEL_18;
  }

  v23 = 0;
LABEL_21:

  return v23;
}

+ (id)baseSubmissionFilePath
{
  v6 = 0;
  v2 = [self baseFilePath:&v6];
  v3 = v2;
  v4 = 0;
  if (!v6)
  {
    v4 = [v2 URLByAppendingPathComponent:@"ReportsOutbox" isDirectory:1];
  }

  return v4;
}

+ (id)baseLayoutFilePath
{
  v6 = 0;
  v2 = [self baseFilePath:&v6];
  v3 = v2;
  v4 = 0;
  if (!v6)
  {
    v4 = [v2 URLByAppendingPathComponent:@"LayoutConfig" isDirectory:1];
  }

  return v4;
}

+ (id)baseFilePath:(id *)path
{
  v4 = +[NSFileManager defaultManager];
  v11 = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v11];
  v6 = v11;

  if (v5)
  {
    v7 = [v5 URLByAppendingPathComponent:@"com.apple.Maps" isDirectory:1];
    v8 = [v7 URLByAppendingPathComponent:@"ReportAProblem" isDirectory:1];
  }

  else if (path)
  {
    v9 = v6;
    v8 = 0;
    *path = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end