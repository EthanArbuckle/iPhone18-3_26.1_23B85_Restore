@interface WebBundleFileHelper
+ (id)copyToDirectory:(id)directory fromDirectory:(id)fromDirectory files:(id)files;
+ (void)copyWebBundleFilesToDirectory:(id)directory fromDirectory:(id)fromDirectory webBundleManifest:(id)manifest error:(id *)error;
+ (void)parseManifestFileFromData:(id)data withCompletion:(id)completion;
@end

@implementation WebBundleFileHelper

+ (void)copyWebBundleFilesToDirectory:(id)directory fromDirectory:(id)fromDirectory webBundleManifest:(id)manifest error:(id *)error
{
  directoryCopy = directory;
  fromDirectoryCopy = fromDirectory;
  manifestCopy = manifest;
  v12 = sub_100038318();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    path = [directoryCopy path];
    path2 = [fromDirectoryCopy path];
    *buf = 138412546;
    v33 = path;
    v34 = 2112;
    v35 = path2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Moving on-device files to writable directory: %@, from directory: %@", buf, 0x16u);
  }

  v15 = +[NSFileManager defaultManager];
  path3 = [directoryCopy path];
  v17 = [v15 fileExistsAtPath:path3];

  if (v17)
  {
    v18 = +[NSFileManager defaultManager];
    v31 = 0;
    [v18 removeItemAtURL:directoryCopy error:&v31];
    v19 = v31;

    v20 = sub_100038318();
    v21 = v20;
    if (v19)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v33 = v19;
        v22 = "Error removing directory %@";
        v23 = v21;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v23, v24, v22, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v33 = directoryCopy;
      v22 = "Removed web bundle at directory: %@";
      v23 = v21;
      v24 = OS_LOG_TYPE_DEBUG;
      goto LABEL_9;
    }
  }

  files = [manifestCopy files];
  v26 = [WebBundleFileHelper copyToDirectory:directoryCopy fromDirectory:fromDirectoryCopy files:files];

  v27 = [v26 count];
  v28 = sub_100038318();
  v29 = v28;
  if (v27)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v26;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Couldn't move files: %@", buf, 0xCu);
    }

    v29 = [NSError errorWithDomain:@"com.apple.Maps.ReportAProblem.Downloader" code:-6 userInfo:0];
    *error = v29;
  }

  else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    path4 = [directoryCopy path];
    *buf = 138412290;
    v33 = path4;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Successfully copy web bundle files to directory: %@", buf, 0xCu);
  }
}

+ (id)copyToDirectory:(id)directory fromDirectory:(id)fromDirectory files:(id)files
{
  directoryCopy = directory;
  fromDirectoryCopy = fromDirectory;
  filesCopy = files;
  v37 = objc_alloc_init(NSMutableArray);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = filesCopy;
  v8 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v38 = *v45;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        filePath = [v11 filePath];
        v13 = [directoryCopy URLByAppendingPathComponent:filePath];

        uRLByDeletingLastPathComponent = [v13 URLByDeletingLastPathComponent];
        v15 = +[NSFileManager defaultManager];
        v43 = 0;
        [v15 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v43];
        v16 = v43;

        if (v16)
        {
          v17 = sub_100038318();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = v16;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Create file directory error: %@", buf, 0xCu);
          }
        }

        v18 = +[NSFileManager defaultManager];
        path = [v13 path];
        v20 = [v18 fileExistsAtPath:path];

        if (v20)
        {
          v21 = +[NSFileManager defaultManager];
          v42 = 0;
          [v21 removeItemAtURL:v13 error:&v42];
          v22 = v42;

          v23 = sub_100038318();
          v24 = v23;
          if (v22)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = v22;
              v25 = v24;
              v26 = OS_LOG_TYPE_ERROR;
              v27 = "Error removing file %@";
              goto LABEL_16;
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v49 = v13;
            v25 = v24;
            v26 = OS_LOG_TYPE_DEBUG;
            v27 = "Already existing file removed: %@";
LABEL_16:
            _os_log_impl(&_mh_execute_header, v25, v26, v27, buf, 0xCu);
          }
        }

        filePath2 = [v11 filePath];
        v29 = [fromDirectoryCopy URLByAppendingPathComponent:filePath2];

        v30 = +[NSFileManager defaultManager];
        v41 = 0;
        [v30 copyItemAtURL:v29 toURL:v13 error:&v41];
        v31 = v41;

        v32 = sub_100038318();
        v33 = v32;
        if (v31)
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = v31;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Move file error: %@", buf, 0xCu);
          }

          [v37 addObject:v11];
        }

        else
        {
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v49 = v13;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "File moved: %@", buf, 0xCu);
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v9);
  }

  v34 = [v37 copy];
  return v34;
}

+ (void)parseManifestFileFromData:(id)data withCompletion:(id)completion
{
  completionCopy = completion;
  v27 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:data options:0 error:&v27];
  v7 = v27;
  if (v7)
  {
    completionCopy[2](completionCopy, 0, v7);
  }

  else
  {
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"hashes"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = 0;
        v9 = objc_alloc_init(NSMutableSet);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        allKeys = [v8 allKeys];
        v11 = [allKeys countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v24;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v24 != v13)
              {
                objc_enumerationMutation(allKeys);
              }

              v15 = *(*(&v23 + 1) + 8 * i);
              v16 = [v8 objectForKeyedSubscript:{v15, v22}];
              v17 = [[WebBundleFile alloc] initWithPath:v15 hash:v16];
              [v9 addObject:v17];
            }

            v12 = [allKeys countByEnumeratingWithState:&v23 objects:v28 count:16];
          }

          while (v12);
        }

        v18 = [v6 objectForKeyedSubscript:@"version"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [WebBundleManifest alloc];
          v20 = [v9 copy];
          v21 = [(WebBundleManifest *)v19 initWithVersion:v18 files:v20];

          (completionCopy)[2](completionCopy, v21, 0);
        }

        else
        {
          v21 = [NSError errorWithDomain:@"com.apple.Maps.ReportAProblem.Downloader" code:-2 userInfo:0];
          completionCopy[2](completionCopy, 0, v21);
        }

        v7 = v22;
      }

      else
      {
        v9 = [NSError errorWithDomain:@"com.apple.Maps.ReportAProblem.Downloader" code:-2 userInfo:0];
        completionCopy[2](completionCopy, 0, v9);
      }
    }

    else
    {
      v8 = [NSError errorWithDomain:@"com.apple.Maps.ReportAProblem.Downloader" code:-1 userInfo:0];
      completionCopy[2](completionCopy, 0, v8);
    }
  }
}

@end