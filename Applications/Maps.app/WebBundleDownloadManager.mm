@interface WebBundleDownloadManager
- (BOOL)_fileHashesInFiles:(id)a3 areEqualToFilesInDirectory:(id)a4 error:(id *)a5;
- (BOOL)_isVersion:(id)a3 newerThan:(id)a4;
- (BOOL)_saveFileData:(id)a3 toDirectory:(id)a4 toFilePath:(id)a5 error:(id *)a6;
- (BOOL)_saveWebBundleManifestToDevice:(id)a3 error:(id *)a4;
- (WebBundleDownloadManager)initWithConfiguration:(id)a3;
- (id)_fileHashForFile:(id)a3;
- (id)_loadCachedWebBundleVersion;
- (id)loadWebBundleManifestWithError:(id *)a3;
- (id)observers;
- (void)_downloadCompleteWithNewDirectory:(id)a3 withError:(id)a4;
- (void)_downloadManifestWithForce:(BOOL)a3 completion:(id)a4;
- (void)_downloadWebBundleFileWithPath:(id)a3 inDirectory:(id)a4 withCompletion:(id)a5;
- (void)_downloadWebBundleWithForce:(BOOL)a3;
- (void)_updateCachedBundleFromBuiltInDirectoryWithManifest:(id)a3 error:(id *)a4;
- (void)_updateCachedBundleFromDownloadedBundleDirectoryWithManifest:(id)a3 error:(id *)a4;
- (void)_updateOnDevicesWebBundleIfNeed;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation WebBundleDownloadManager

- (void)_updateOnDevicesWebBundleIfNeed
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (+[NSThread isMainThread])
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100F581F4;
    v15[3] = &unk_1016608A8;
    v15[4] = &v16;
    sub_100F581F4(v15);
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F58250;
    block[3] = &unk_1016608A8;
    block[4] = &v16;
    dispatch_sync(&_dispatch_main_q, block);
  }

  if ((v17[3] & 1) == 0)
  {
    v13 = 0;
    v3 = [(WebBundleDownloadManager *)self loadWebBundleManifestWithError:&v13];
    v4 = v13;
    if (v4)
    {
      v5 = sub_100038318();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "manifest loading error: %@", buf, 0xCu);
      }
    }

    v6 = [(WebBundleConfiguration *)self->_configuration absoluteBuiltInWebBundleDirectory];
    v7 = [v6 URLByAppendingPathComponent:@"manifest.json"];

    v8 = [NSData dataWithContentsOfURL:v7];
    if (!v8)
    {
      v9 = sub_100038318();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Empty data in built-in manifest at path: %@", buf, 0xCu);
      }
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100F582AC;
    v11[3] = &unk_10165E358;
    v11[4] = self;
    v10 = v3;
    v12 = v10;
    [WebBundleFileHelper parseManifestFileFromData:v8 withCompletion:v11];
  }

  _Block_object_dispose(&v16, 8);
}

- (BOOL)_isVersion:(id)a3 newerThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    if ([v6 length])
    {
      v7 = [v5 compare:v6 options:64] == 1;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_updateCachedBundleFromBuiltInDirectoryWithManifest:(id)a3 error:(id *)a4
{
  configuration = self->_configuration;
  v7 = a3;
  v9 = [(WebBundleConfiguration *)configuration absoluteCachedWebBundleDirectory];
  v8 = [(WebBundleConfiguration *)self->_configuration absoluteBuiltInWebBundleDirectory];
  [WebBundleFileHelper copyWebBundleFilesToDirectory:v9 fromDirectory:v8 webBundleManifest:v7 error:a4];

  [(WebBundleConfiguration *)self->_configuration setWebBundleDirectory:v9];
  [RAPWebBundleConfigurationManager saveConfiguration:self->_configuration];
}

- (void)_updateCachedBundleFromDownloadedBundleDirectoryWithManifest:(id)a3 error:(id *)a4
{
  configuration = self->_configuration;
  v7 = a3;
  v9 = [(WebBundleConfiguration *)configuration absoluteCachedWebBundleDirectory];
  v8 = [(WebBundleConfiguration *)self->_configuration webBundleDirectory];
  [WebBundleFileHelper copyWebBundleFilesToDirectory:v9 fromDirectory:v8 webBundleManifest:v7 error:a4];
}

- (id)_loadCachedWebBundleVersion
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 stringForKey:@"kRAPBuiltInWebBundleVersionKey"];

  if (v4)
  {
    v5 = sub_100038318();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Found RAPCachedWebBundleVersionKey key in NSUserDefaults when loading cached web bundle. Load using NSUserDefaults string, setting GEOConfig with version, then removing from NSUserDefaults.", &v16, 2u);
    }

    v6 = [v3 stringForKey:@"kRAPBuiltInWebBundleVersionKey"];
    GEOConfigSetString();
    [v3 removeObjectForKey:@"kRAPBuiltInWebBundleVersionKey"];
  }

  else
  {
    v6 = GEOConfigGetString();
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [(WebBundleConfiguration *)self->_configuration absoluteCachedWebBundleDirectory];
  v9 = [v8 path];
  v10 = [v7 contentsOfDirectoryAtPath:v9 error:0];

  v11 = sub_100038318();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 count];
    v13 = [(WebBundleConfiguration *)self->_configuration absoluteCachedWebBundleDirectory];
    v16 = 134218242;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "number of files in cached web bundle directory: %lu, directory:%@", &v16, 0x16u);
  }

  if ([v10 count])
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_saveFileData:(id)a3 toDirectory:(id)a4 toFilePath:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = [a4 URLByAppendingPathComponent:a5];
  v11 = [v10 URLByDeletingLastPathComponent];
  v12 = +[NSFileManager defaultManager];
  v22 = 0;
  [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v22];
  v13 = v22;

  if (v13)
  {
    if (a6)
    {
      v14 = v13;
      *a6 = v13;
    }

    v15 = sub_100038318();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Directory %@ creation error: %@", buf, 0x16u);
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v21 = 0;
  [v9 writeToURL:v10 options:0 error:&v21];
  v13 = v21;
  v18 = sub_100038318();
  v19 = v18;
  if (v13)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "File %@ saving error: %@", buf, 0x16u);
    }

    if (a6)
    {
      v20 = v13;
      v16 = 0;
      *a6 = v13;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "File downloaded: %@", buf, 0xCu);
  }

  v13 = 0;
  v16 = 1;
LABEL_8:

  return v16;
}

- (id)_fileHashForFile:(id)a3
{
  v3 = [NSData dataWithContentsOfURL:a3];
  if (v3)
  {
    v4 = [NSMutableData dataWithLength:32];
    CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));
    v5 = [v4 base64EncodedStringWithOptions:0];
  }

  else
  {
    v5 = &stru_1016631F0;
  }

  return v5;
}

- (BOOL)_fileHashesInFiles:(id)a3 areEqualToFilesInDirectory:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        v16 = [v15 filePath];
        v17 = [v9 URLByAppendingPathComponent:v16];

        v18 = [(WebBundleDownloadManager *)self _fileHashForFile:v17];
        v19 = [v15 fileHash];
        if (([v18 isEqualToString:v19] & 1) == 0)
        {
          v21 = +[NSFileManager defaultManager];
          v22 = [v17 path];
          v23 = [v21 fileExistsAtPath:v22];

          v24 = sub_100038318();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            if (v23)
            {
              v25 = &stru_1016631F0;
            }

            else
            {
              v25 = @" NOT";
            }

            v26 = [v17 absoluteString];
            *buf = 138412546;
            v33 = v25;
            v34 = 2112;
            v35 = v26;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "File%@ exists and hashes doesn't match: %@", buf, 0x16u);
          }

          if (a5)
          {
            *a5 = [NSError errorWithDomain:@"com.apple.Maps.ReportAProblem.Downloader" code:-4 userInfo:0];
          }

          v20 = 0;
          goto LABEL_18;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v20 = 1;
LABEL_18:

  return v20;
}

- (id)loadWebBundleManifestWithError:(id *)a3
{
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [(WebBundleConfiguration *)self->_configuration manifestKey];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v7 error:a3];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_saveWebBundleManifestToDevice:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[NSUserDefaults standardUserDefaults];
  v14 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];

  v9 = v14;
  v10 = v9;
  if (v9)
  {
    if (a4)
    {
      v11 = v9;
      *a4 = v10;
    }
  }

  else
  {
    v12 = [(WebBundleConfiguration *)self->_configuration manifestKey];
    [v7 setObject:v8 forKey:v12];

    [v7 synchronize];
  }

  return v10 == 0;
}

- (void)_downloadCompleteWithNewDirectory:(id)a3 withError:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = sub_100038318();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Download failed with error:%@", &v13, 0xCu);
    }

    v9 = [(WebBundleDownloadManager *)self observers];
    [v9 webBundleEncounteredError:v7];
LABEL_5:

    goto LABEL_10;
  }

  v10 = sub_100038318();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v6)
  {
    if (v11)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Web bundle hasn't changed", &v13, 2u);
    }

    v9 = [(WebBundleDownloadManager *)self observers];
    [v9 webBundleHadNoChanges];
    goto LABEL_5;
  }

  if (v11)
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Download complete with new directory: %@", &v13, 0xCu);
  }

  v12 = [(WebBundleDownloadManager *)self observers];
  [v12 webBundleUpdatedWithWebBundlePath:v6];

  [(WebBundleConfiguration *)self->_configuration setWebBundleDirectory:v6];
  [RAPWebBundleConfigurationManager saveConfiguration:self->_configuration];
  [(WebBundleDownloadManager *)self _updateOnDevicesWebBundleIfNeed];
LABEL_10:
  [(WebBundleDownloadManager *)self setWebBundleDownloading:0];
}

- (void)_downloadWebBundleFileWithPath:(id)a3 inDirectory:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(WebBundleConfiguration *)self->_configuration serverURL];
  v12 = [v11 URLByAppendingPathComponent:v8];

  v13 = [NSURLRequest requestWithURL:v12];
  objc_initWeak(&location, self);
  v14 = +[NSURLSession sharedSession];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100F59450;
  v19[3] = &unk_10165E330;
  objc_copyWeak(&v23, &location);
  v15 = v10;
  v22 = v15;
  v16 = v9;
  v20 = v16;
  v17 = v8;
  v21 = v17;
  v18 = [v14 dataTaskWithRequest:v13 completionHandler:v19];

  [v18 resume];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_downloadManifestWithForce:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = +[GEOResourceManifestManager modernManager];
  v8 = [v7 activeTileGroup];
  v9 = [v8 explicitResources];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100F59730;
  v18[3] = &unk_10165E2B8;
  objc_copyWeak(&v19, &location);
  v10 = [NSPredicate predicateWithBlock:v18];
  v11 = [v9 filteredArrayUsingPredicate:v10];

  v12 = +[GEOResourceRequester sharedRequester];
  global_queue = geo_get_global_queue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100F597C4;
  v15[3] = &unk_10165E308;
  objc_copyWeak(&v17, &location);
  v14 = v6;
  v16 = v14;
  [v12 fetchResources:v11 force:v4 manifestConfiguration:0 auditToken:0 queue:global_queue handler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)_downloadWebBundleWithForce:(BOOL)a3
{
  if (![(WebBundleDownloadManager *)self isWebBundleDownloading])
  {
    [(WebBundleDownloadManager *)self setWebBundleDownloading:1];
    downloadingQueue = self->_downloadingQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100F599A0;
    v6[3] = &unk_101661AE0;
    v6[4] = self;
    v7 = a3;
    dispatch_async(downloadingQueue, v6);
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(WebBundleDownloadManager *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(WebBundleDownloadManager *)self observers];
  [v5 registerObserver:v4];
}

- (WebBundleDownloadManager)initWithConfiguration:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WebBundleDownloadManager;
  v6 = [(WebBundleDownloadManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.maps.webbundle.downloading", v8);
    downloadingQueue = v7->_downloadingQueue;
    v7->_downloadingQueue = v9;

    [(WebBundleDownloadManager *)v7 _updateOnDevicesWebBundleIfNeed];
  }

  return v7;
}

- (id)observers
{
  observers = self->_observers;
  if (!observers)
  {
    v4 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___WebBundleDownloadManagerObserver queue:&_dispatch_main_q];
    v5 = self->_observers;
    self->_observers = v4;

    observers = self->_observers;
  }

  return observers;
}

@end