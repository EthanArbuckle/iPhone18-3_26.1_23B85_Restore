@interface ICDeleteCoherenceContextsFromGroupContainerLaunchTask
- (void)runOneTimeLaunchTask;
@end

@implementation ICDeleteCoherenceContextsFromGroupContainerLaunchTask

- (void)runOneTimeLaunchTask
{
  [(ICWorkerContextLaunchTask *)self workerContext];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = sub_1000A351C;
  v57 = sub_1000A352C;
  v58 = 0;
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000A3534;
  v50[3] = &unk_1006463C8;
  v51 = v52 = &v53;
  v29 = v51;
  [v51 performBlockAndWait:v50];
  v2 = objc_alloc_init(NSMutableSet);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v3 = v54[5];
  v4 = [v3 countByEnumeratingWithState:&v46 objects:v66 count:16];
  if (v4)
  {
    v5 = *v47;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v47 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v46 + 1) + 8 * i);
        v8 = +[ICAccountUtilities sharedInstance];
        v9 = [v8 applicationDocumentsURLForAccountIdentifier:v7];

        [v2 ic_addNonNilObject:v9];
      }

      v4 = [v3 countByEnumeratingWithState:&v46 objects:v66 count:16];
    }

    while (v4);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v2;
  v32 = [obj countByEnumeratingWithState:&v42 objects:v65 count:16];
  if (v32)
  {
    v31 = *v43;
    do
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v43 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v33 = [*(*(&v42 + 1) + 8 * j) URLByAppendingPathComponent:@"Accounts" isDirectory:1];
        v10 = +[NSFileManager defaultManager];
        v64 = NSURLIsDirectoryKey;
        v11 = [NSArray arrayWithObjects:&v64 count:1];
        v12 = [v10 enumeratorAtURL:v33 includingPropertiesForKeys:v11 options:1 errorHandler:0];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v35 = v12;
        v13 = [v35 countByEnumeratingWithState:&v38 objects:v63 count:16];
        if (v13)
        {
          v14 = *v39;
          do
          {
            v15 = 0;
            do
            {
              if (*v39 != v14)
              {
                objc_enumerationMutation(v35);
              }

              v16 = *(*(&v38 + 1) + 8 * v15);
              v37 = 0;
              v17 = [v16 getResourceValue:&v37 forKey:NSURLIsDirectoryKey error:0];
              v18 = v37;
              v19 = v18;
              if (v17 && [v18 BOOLValue])
              {
                v20 = [v16 URLByAppendingPathComponent:@"Paper" isDirectory:1];
                v21 = [v20 URLByAppendingPathComponent:@"CoherenceContexts" isDirectory:1];
                v22 = +[NSFileManager defaultManager];
                path = [v21 path];
                v24 = [v22 fileExistsAtPath:path];

                if (v24)
                {
                  v25 = +[NSFileManager defaultManager];
                  v36 = 0;
                  [v25 removeItemAtURL:v21 error:&v36];
                  v26 = v36;

                  v27 = os_log_create("com.apple.notes", "Application");
                  v28 = v27;
                  if (v26)
                  {
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v60 = v21;
                      v61 = 2112;
                      v62 = v26;
                      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to clean up coherence context directory %@, error %@", buf, 0x16u);
                    }
                  }

                  else
                  {
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v60 = v21;
                      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Successfully cleaned up coherence context directory %@", buf, 0xCu);
                    }

                    v26 = v28;
                  }
                }
              }

              v15 = v15 + 1;
            }

            while (v13 != v15);
            v13 = [v35 countByEnumeratingWithState:&v38 objects:v63 count:16];
          }

          while (v13);
        }
      }

      v32 = [obj countByEnumeratingWithState:&v42 objects:v65 count:16];
    }

    while (v32);
  }

  _Block_object_dispose(&v53, 8);
}

@end