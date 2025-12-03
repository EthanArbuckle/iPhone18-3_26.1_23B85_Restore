@interface PLPartialVideoCacheCleanUpMaintenanceTask
+ (BOOL)_shouldRemovePartialVideoAtURL:(id)l;
- (BOOL)runTaskWithTransaction:(id)transaction;
@end

@implementation PLPartialVideoCacheCleanUpMaintenanceTask

+ (BOOL)_shouldRemovePartialVideoAtURL:(id)l
{
  lCopy = l;
  v14 = 0;
  v13 = 0;
  v4 = [lCopy getResourceValue:&v14 forKey:NSURLContentAccessDateKey error:&v13];
  v5 = v14;
  v6 = v13;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v16 = lCopy;
      v17 = 1024;
      v18 = v4;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Cannot get the last access date on partial video file %@, success: %d, error: %@", buf, 0x1Cu);
    }

    v11 = 1;
  }

  else
  {
    v8 = [[NSDate alloc] initWithTimeInterval:v5 sinceDate:604800.0];
    v9 = +[NSDate now];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10 < 0.0;
  }

  return v11;
}

- (BOOL)runTaskWithTransaction:(id)transaction
{
  libraryServicesManager = [(PLMaintenanceTask *)self libraryServicesManager];
  isSystemPhotoLibrary = [libraryServicesManager isSystemPhotoLibrary];

  if (!isSystemPhotoLibrary)
  {
    return 1;
  }

  v35 = +[PLPhotoLibraryPathManager systemLibraryPathManager];
  v5 = [v35 photoDirectoryWithType:20];
  v6 = [NSURL fileURLWithPath:v5 isDirectory:1];

  v7 = +[NSFileManager defaultManager];
  v55[0] = NSURLContentAccessDateKey;
  v55[1] = NSURLIsDirectoryKey;
  v8 = [NSArray arrayWithObjects:v55 count:2];
  v34 = v6;
  v9 = [v7 enumeratorAtURL:v6 includingPropertiesForKeys:v8 options:14 errorHandler:&stru_10002CED8];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (!v11)
  {
    v36 = 1;
    v39 = 0;
    goto LABEL_40;
  }

  v12 = v11;
  v39 = 0;
  v13 = *v45;
  v36 = 1;
  v38 = v10;
  v37 = *v45;
  do
  {
    for (i = 0; i != v12; i = i + 1)
    {
      if (*v45 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v44 + 1) + 8 * i);
      v42 = 0;
      v43 = 0;
      v16 = [v15 getResourceValue:&v43 forKey:NSURLIsDirectoryKey error:&v42];
      v17 = v43;
      v18 = v42;
      if (!v16)
      {
        v21 = PLBackendGetLog();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }

        *buf = 138412546;
        v49 = v15;
        v50 = 2112;
        v51 = v18;
        v22 = v21;
        v23 = OS_LOG_TYPE_ERROR;
        v24 = "Failed to check NSURLIsDirectoryKey on URL: %@, with error: %@";
        v25 = 22;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v22, v23, v24, buf, v25);
        goto LABEL_34;
      }

      if (!v17)
      {
        goto LABEL_35;
      }

      if (([v17 BOOLValue] & 1) == 0 && objc_msgSend(objc_opt_class(), "_shouldRemovePartialVideoAtURL:", v15))
      {
        pathComponents = [v15 pathComponents];
        lastObject = [pathComponents lastObject];
        if ([pathComponents count] < 2)
        {
          v40 = 0;
        }

        else
        {
          v40 = [pathComponents objectAtIndex:{objc_msgSend(pathComponents, "count") - 2}];
        }

        v27 = +[NSFileManager defaultManager];
        v41 = 0;
        v28 = [v27 removeItemAtURL:v15 error:&v41];
        v21 = v41;

        if (v28)
        {
          ++v39;
          v29 = PLBackendGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v49 = lastObject;
            v50 = 2114;
            v30 = v40;
            v51 = v40;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Removed partial video %{public}@ of asset %{public}@", buf, 0x16u);
            goto LABEL_33;
          }

LABEL_32:
          v30 = v40;
        }

        else
        {
          v29 = PLBackendGetLog();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v36 = 0;
            goto LABEL_32;
          }

          *buf = 138543874;
          v49 = lastObject;
          v50 = 2114;
          v30 = v40;
          v51 = v40;
          v52 = 2112;
          v53 = v21;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Cannot remove partial video: %{public}@ of asset %{public}@, with error: %@", buf, 0x20u);
          v36 = 0;
        }

LABEL_33:

        v13 = v37;
        v10 = v38;
LABEL_34:

        goto LABEL_35;
      }

      if ([v17 BOOLValue] && objc_msgSend(v10, "isEnumeratingDirectoryPostOrder"))
      {
        if (!rmdir([v15 fileSystemRepresentation]))
        {
          v21 = PLBackendGetLog();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_34;
          }

          *buf = 138412290;
          v49 = v15;
          v22 = v21;
          v23 = OS_LOG_TYPE_DEBUG;
          v24 = "Removed empty direcotry under partial video root directory %@";
          v25 = 12;
          goto LABEL_15;
        }

        if (*__error() && *__error() != 66)
        {
          v21 = PLBackendGetLog();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_34;
          }

          v26 = *__error();
          *buf = 67109120;
          LODWORD(v49) = v26;
          v22 = v21;
          v23 = OS_LOG_TYPE_ERROR;
          v24 = "an error occured while removing an empty directoy under partial video root directory: %d";
          v25 = 8;
          goto LABEL_15;
        }
      }

LABEL_35:
    }

    v12 = [v10 countByEnumeratingWithState:&v44 objects:v54 count:16];
  }

  while (v12);
LABEL_40:

  v32 = PLBackendGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    LODWORD(v49) = v39;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Total removed partial videos: %d", buf, 8u);
  }

  return v36;
}

@end