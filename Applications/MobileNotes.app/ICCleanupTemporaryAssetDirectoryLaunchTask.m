@interface ICCleanupTemporaryAssetDirectoryLaunchTask
- (void)runLaunchTask;
@end

@implementation ICCleanupTemporaryAssetDirectoryLaunchTask

- (void)runLaunchTask
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ICCleanupTemporaryAssetDirectoryLaunchTaskExecuted"];
  v4 = os_log_create("com.apple.notes", "Filesystem");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF108(v3, v4);
  }

  v5 = +[ICCloudSyncingObject temporaryAssetDirectoryURL];
  if (!v5)
  {
    log = os_log_create("com.apple.notes", "Filesystem");
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1004DF2F0(log);
    }

    goto LABEL_39;
  }

  v6 = +[NSFileManager defaultManager];
  v58[0] = NSURLCreationDateKey;
  v58[1] = NSURLIsRegularFileKey;
  v7 = [NSArray arrayWithObjects:v58 count:2];
  v50 = 0;
  log = v6;
  v8 = [v6 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v7 options:4 error:&v50];
  v9 = v50;

  v10 = os_log_create("com.apple.notes", "Filesystem");
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1004DF198(v5, v9, v11);
    }

    goto LABEL_38;
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF220(v8, v12);
  }

  v11 = [NSDate dateWithTimeIntervalSinceNow:-86400.0];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v46 objects:v57 count:16];
  if (!v14)
  {

    goto LABEL_41;
  }

  v15 = v14;
  v40 = v11;
  v34 = v8;
  v35 = v3;
  v36 = v5;
  v37 = v2;
  v38 = 0;
  v16 = *v47;
  do
  {
    v17 = 0;
    do
    {
      if (*v47 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = v13;
      v19 = *(*(&v46 + 1) + 8 * v17);
      v44 = 0;
      v45 = 0;
      v20 = [v19 getResourceValue:&v45 forKey:NSURLIsRegularFileKey error:&v44];
      v21 = v45;
      v22 = v44;
      if (v20 && ([v21 BOOLValue] & 1) != 0)
      {
        v42 = 0;
        v43 = 0;
        v23 = [v19 getResourceValue:&v43 forKey:NSURLCreationDateKey error:&v42];
        v24 = v43;
        v25 = v42;

        if (v23)
        {
          if ([v24 compare:v40] != -1)
          {
            goto LABEL_27;
          }

          [v40 timeIntervalSinceDate:v24];
          v41 = 0;
          v27 = v26 / 3600.0;
          v28 = [log removeItemAtURL:v19 error:&v41];
          v29 = v41;
          v30 = os_log_create("com.apple.notes", "Filesystem");
          if (v28)
          {
            v31 = v30;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v52 = v19;
              v53 = 2112;
              v54 = *&v24;
              v55 = 2048;
              v56 = v27;
              _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "ICCleanupTemporaryAssetDirectoryLaunchTask :: Deleted old temporary asset file %@ with creationDate %@, hoursOld %f", buf, 0x20u);
            }
          }

          else
          {
            v31 = v30;
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v52 = v19;
              v53 = 2048;
              v54 = v27;
              v55 = 2112;
              v56 = *&v29;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "ICCleanupTemporaryAssetDirectoryLaunchTask :: Error deleting file %@, hoursOld %f, error %@", buf, 0x20u);
            }
          }

          v38 = 1;
        }

        else
        {
          v29 = os_log_create("com.apple.notes", "Filesystem");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v52 = v19;
            v53 = 2112;
            v54 = *&v25;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "ICCleanupTemporaryAssetDirectoryLaunchTask :: Error getting creation date for %@, error %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v29 = os_log_create("com.apple.notes", "Filesystem");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v52 = v19;
          _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "ICCleanupTemporaryAssetDirectoryLaunchTask :: Skipping file %@ because it is not a regular file", buf, 0xCu);
        }

        v24 = 0;
        v25 = v22;
      }

LABEL_27:
      v17 = v17 + 1;
      v13 = v18;
    }

    while (v15 != v17);
    v32 = [v18 countByEnumeratingWithState:&v46 objects:v57 count:16];
    v15 = v32;
  }

  while (v32);

  v5 = v36;
  v2 = v37;
  v3 = v35;
  v9 = 0;
  v8 = v34;
  v11 = v40;
  if (v38)
  {
    if ((v35 & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_38;
  }

LABEL_41:
  v33 = os_log_create("com.apple.notes", "Filesystem");
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DF2AC(v33);
  }

  if ((v3 & 1) == 0)
  {
LABEL_37:
    [v2 setBool:1 forKey:@"ICCleanupTemporaryAssetDirectoryLaunchTaskExecuted"];
  }

LABEL_38:

LABEL_39:
}

@end