@interface ICDeleteOrphanedAccountDirectoriesFromAppDataContainerLaunchTask
- (void)runLaunchTask;
@end

@implementation ICDeleteOrphanedAccountDirectoriesFromAppDataContainerLaunchTask

- (void)runLaunchTask
{
  [(ICWorkerContextLaunchTask *)self workerContext];
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = sub_10006709C;
  v55 = sub_1000670AC;
  v56 = 0;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_1000670B4;
  v48[3] = &unk_1006463C8;
  v49 = v50 = &v51;
  v27 = v49;
  [v49 performBlockAndWait:v48];
  v2 = objc_alloc_init(NSMutableSet);
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = v52[5];
  v4 = [v3 countByEnumeratingWithState:&v44 objects:v64 count:16];
  if (v4)
  {
    v5 = *v45;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v45 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v44 + 1) + 8 * i);
        v8 = +[ICAccountUtilities sharedInstance];
        v9 = [v8 applicationDataContainerURLForAccountIdentifier:v7];

        [v2 ic_addNonNilObject:v9];
      }

      v4 = [v3 countByEnumeratingWithState:&v44 objects:v64 count:16];
    }

    while (v4);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v2;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v63 count:16];
  if (v30)
  {
    v29 = *v41;
    do
    {
      for (j = 0; j != v30; j = j + 1)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v31 = [*(*(&v40 + 1) + 8 * j) URLByAppendingPathComponent:@"Documents" isDirectory:1];
        v32 = [v31 URLByAppendingPathComponent:@"Accounts" isDirectory:1];
        v10 = +[NSFileManager defaultManager];
        v62 = NSURLIsDirectoryKey;
        v11 = [NSArray arrayWithObjects:&v62 count:1];
        v12 = [v10 enumeratorAtURL:v32 includingPropertiesForKeys:v11 options:1 errorHandler:0];

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v36 objects:v61 count:16];
        if (v14)
        {
          v15 = *v37;
          do
          {
            for (k = 0; k != v14; k = k + 1)
            {
              if (*v37 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v36 + 1) + 8 * k);
              v35 = 0;
              v18 = [v17 getResourceValue:&v35 forKey:NSURLIsDirectoryKey error:0];
              v19 = v35;
              v20 = v19;
              if (v18)
              {
                if ([v19 BOOLValue])
                {
                  v21 = v52[5];
                  lastPathComponent = [v17 lastPathComponent];
                  LOBYTE(v21) = [v21 containsObject:lastPathComponent];

                  if ((v21 & 1) == 0)
                  {
                    v23 = +[NSFileManager defaultManager];
                    v34 = 0;
                    [v23 removeItemAtURL:v17 error:&v34];
                    v24 = v34;

                    v25 = os_log_create("com.apple.notes", "Application");
                    v26 = v25;
                    if (v24)
                    {
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v58 = v17;
                        v59 = 2112;
                        v60 = v24;
                        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to clean up orphaned account directory %@, error %@", buf, 0x16u);
                      }
                    }

                    else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v58 = v17;
                      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "Successfully cleaned up orphaned account directory %@", buf, 0xCu);
                    }
                  }
                }
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v36 objects:v61 count:16];
          }

          while (v14);
        }
      }

      v30 = [obj countByEnumeratingWithState:&v40 objects:v63 count:16];
    }

    while (v30);
  }

  _Block_object_dispose(&v51, 8);
}

@end