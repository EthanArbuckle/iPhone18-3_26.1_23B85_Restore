@interface WebBundleDownloadManager
- (BOOL)_fileHashesInFiles:(id)files areEqualToFilesInDirectory:(id)directory error:(id *)error;
- (BOOL)_isVersion:(id)version newerThan:(id)than;
- (BOOL)_saveFileData:(id)data toDirectory:(id)directory toFilePath:(id)path error:(id *)error;
- (BOOL)_saveWebBundleManifestToDevice:(id)device error:(id *)error;
- (WebBundleDownloadManager)initWithConfiguration:(id)configuration;
- (id)_fileHashForFile:(id)file;
- (id)_loadCachedWebBundleVersion;
- (id)loadWebBundleManifestWithError:(id *)error;
- (id)observers;
- (void)_downloadCompleteWithNewDirectory:(id)directory withError:(id)error;
- (void)_downloadManifestWithForce:(BOOL)force completion:(id)completion;
- (void)_downloadWebBundleFileWithPath:(id)path inDirectory:(id)directory withCompletion:(id)completion;
- (void)_downloadWebBundleWithForce:(BOOL)force;
- (void)_updateCachedBundleFromBuiltInDirectoryWithManifest:(id)manifest error:(id *)error;
- (void)_updateCachedBundleFromDownloadedBundleDirectoryWithManifest:(id)manifest error:(id *)error;
- (void)_updateOnDevicesWebBundleIfNeed;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
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

    absoluteBuiltInWebBundleDirectory = [(WebBundleConfiguration *)self->_configuration absoluteBuiltInWebBundleDirectory];
    v7 = [absoluteBuiltInWebBundleDirectory URLByAppendingPathComponent:@"manifest.json"];

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

- (BOOL)_isVersion:(id)version newerThan:(id)than
{
  versionCopy = version;
  thanCopy = than;
  if ([versionCopy length])
  {
    if ([thanCopy length])
    {
      v7 = [versionCopy compare:thanCopy options:64] == 1;
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

- (void)_updateCachedBundleFromBuiltInDirectoryWithManifest:(id)manifest error:(id *)error
{
  configuration = self->_configuration;
  manifestCopy = manifest;
  absoluteCachedWebBundleDirectory = [(WebBundleConfiguration *)configuration absoluteCachedWebBundleDirectory];
  absoluteBuiltInWebBundleDirectory = [(WebBundleConfiguration *)self->_configuration absoluteBuiltInWebBundleDirectory];
  [WebBundleFileHelper copyWebBundleFilesToDirectory:absoluteCachedWebBundleDirectory fromDirectory:absoluteBuiltInWebBundleDirectory webBundleManifest:manifestCopy error:error];

  [(WebBundleConfiguration *)self->_configuration setWebBundleDirectory:absoluteCachedWebBundleDirectory];
  [RAPWebBundleConfigurationManager saveConfiguration:self->_configuration];
}

- (void)_updateCachedBundleFromDownloadedBundleDirectoryWithManifest:(id)manifest error:(id *)error
{
  configuration = self->_configuration;
  manifestCopy = manifest;
  absoluteCachedWebBundleDirectory = [(WebBundleConfiguration *)configuration absoluteCachedWebBundleDirectory];
  webBundleDirectory = [(WebBundleConfiguration *)self->_configuration webBundleDirectory];
  [WebBundleFileHelper copyWebBundleFilesToDirectory:absoluteCachedWebBundleDirectory fromDirectory:webBundleDirectory webBundleManifest:manifestCopy error:error];
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
  absoluteCachedWebBundleDirectory = [(WebBundleConfiguration *)self->_configuration absoluteCachedWebBundleDirectory];
  path = [absoluteCachedWebBundleDirectory path];
  v10 = [v7 contentsOfDirectoryAtPath:path error:0];

  v11 = sub_100038318();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v10 count];
    absoluteCachedWebBundleDirectory2 = [(WebBundleConfiguration *)self->_configuration absoluteCachedWebBundleDirectory];
    v16 = 134218242;
    v17 = v12;
    v18 = 2112;
    v19 = absoluteCachedWebBundleDirectory2;
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

- (BOOL)_saveFileData:(id)data toDirectory:(id)directory toFilePath:(id)path error:(id *)error
{
  dataCopy = data;
  v10 = [directory URLByAppendingPathComponent:path];
  uRLByDeletingLastPathComponent = [v10 URLByDeletingLastPathComponent];
  v12 = +[NSFileManager defaultManager];
  v22 = 0;
  [v12 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v22];
  v13 = v22;

  if (v13)
  {
    if (error)
    {
      v14 = v13;
      *error = v13;
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
  [dataCopy writeToURL:v10 options:0 error:&v21];
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

    if (error)
    {
      v20 = v13;
      v16 = 0;
      *error = v13;
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

- (id)_fileHashForFile:(id)file
{
  v3 = [NSData dataWithContentsOfURL:file];
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

- (BOOL)_fileHashesInFiles:(id)files areEqualToFilesInDirectory:(id)directory error:(id *)error
{
  filesCopy = files;
  directoryCopy = directory;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = filesCopy;
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
        filePath = [v15 filePath];
        v17 = [directoryCopy URLByAppendingPathComponent:filePath];

        v18 = [(WebBundleDownloadManager *)self _fileHashForFile:v17];
        fileHash = [v15 fileHash];
        if (([v18 isEqualToString:fileHash] & 1) == 0)
        {
          v21 = +[NSFileManager defaultManager];
          path = [v17 path];
          v23 = [v21 fileExistsAtPath:path];

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

            absoluteString = [v17 absoluteString];
            *buf = 138412546;
            v33 = v25;
            v34 = 2112;
            v35 = absoluteString;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "File%@ exists and hashes doesn't match: %@", buf, 0x16u);
          }

          if (error)
          {
            *error = [NSError errorWithDomain:@"com.apple.Maps.ReportAProblem.Downloader" code:-4 userInfo:0];
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

- (id)loadWebBundleManifestWithError:(id *)error
{
  v5 = +[NSUserDefaults standardUserDefaults];
  manifestKey = [(WebBundleConfiguration *)self->_configuration manifestKey];
  v7 = [v5 objectForKey:manifestKey];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v7 error:error];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_saveWebBundleManifestToDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v7 = +[NSUserDefaults standardUserDefaults];
  v14 = 0;
  v8 = [NSKeyedArchiver archivedDataWithRootObject:deviceCopy requiringSecureCoding:1 error:&v14];

  v9 = v14;
  v10 = v9;
  if (v9)
  {
    if (error)
    {
      v11 = v9;
      *error = v10;
    }
  }

  else
  {
    manifestKey = [(WebBundleConfiguration *)self->_configuration manifestKey];
    [v7 setObject:v8 forKey:manifestKey];

    [v7 synchronize];
  }

  return v10 == 0;
}

- (void)_downloadCompleteWithNewDirectory:(id)directory withError:(id)error
{
  directoryCopy = directory;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = sub_100038318();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = errorCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Download failed with error:%@", &v13, 0xCu);
    }

    observers = [(WebBundleDownloadManager *)self observers];
    [observers webBundleEncounteredError:errorCopy];
LABEL_5:

    goto LABEL_10;
  }

  v10 = sub_100038318();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!directoryCopy)
  {
    if (v11)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Web bundle hasn't changed", &v13, 2u);
    }

    observers = [(WebBundleDownloadManager *)self observers];
    [observers webBundleHadNoChanges];
    goto LABEL_5;
  }

  if (v11)
  {
    v13 = 138412290;
    v14 = directoryCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Download complete with new directory: %@", &v13, 0xCu);
  }

  observers2 = [(WebBundleDownloadManager *)self observers];
  [observers2 webBundleUpdatedWithWebBundlePath:directoryCopy];

  [(WebBundleConfiguration *)self->_configuration setWebBundleDirectory:directoryCopy];
  [RAPWebBundleConfigurationManager saveConfiguration:self->_configuration];
  [(WebBundleDownloadManager *)self _updateOnDevicesWebBundleIfNeed];
LABEL_10:
  [(WebBundleDownloadManager *)self setWebBundleDownloading:0];
}

- (void)_downloadWebBundleFileWithPath:(id)path inDirectory:(id)directory withCompletion:(id)completion
{
  pathCopy = path;
  directoryCopy = directory;
  completionCopy = completion;
  serverURL = [(WebBundleConfiguration *)self->_configuration serverURL];
  v12 = [serverURL URLByAppendingPathComponent:pathCopy];

  v13 = [NSURLRequest requestWithURL:v12];
  objc_initWeak(&location, self);
  v14 = +[NSURLSession sharedSession];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100F59450;
  v19[3] = &unk_10165E330;
  objc_copyWeak(&v23, &location);
  v15 = completionCopy;
  v22 = v15;
  v16 = directoryCopy;
  v20 = v16;
  v17 = pathCopy;
  v21 = v17;
  v18 = [v14 dataTaskWithRequest:v13 completionHandler:v19];

  [v18 resume];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

- (void)_downloadManifestWithForce:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7 = +[GEOResourceManifestManager modernManager];
  activeTileGroup = [v7 activeTileGroup];
  explicitResources = [activeTileGroup explicitResources];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100F59730;
  v18[3] = &unk_10165E2B8;
  objc_copyWeak(&v19, &location);
  v10 = [NSPredicate predicateWithBlock:v18];
  v11 = [explicitResources filteredArrayUsingPredicate:v10];

  v12 = +[GEOResourceRequester sharedRequester];
  global_queue = geo_get_global_queue();
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100F597C4;
  v15[3] = &unk_10165E308;
  objc_copyWeak(&v17, &location);
  v14 = completionCopy;
  v16 = v14;
  [v12 fetchResources:v11 force:forceCopy manifestConfiguration:0 auditToken:0 queue:global_queue handler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (void)_downloadWebBundleWithForce:(BOOL)force
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
    forceCopy = force;
    dispatch_async(downloadingQueue, v6);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(WebBundleDownloadManager *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(WebBundleDownloadManager *)self observers];
  [observers registerObserver:observerCopy];
}

- (WebBundleDownloadManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = WebBundleDownloadManager;
  v6 = [(WebBundleDownloadManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
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