@interface BKLibraryFileSizeManager
+ (id)sharedInstance;
- (BKLibraryFileSizeManager)init;
- (BKLibraryFileSizeManager)initWithLibraryManager:(id)manager;
- (BKLibraryManager)libraryManager;
- (id)_documentsURLWithFilename:(id)filename;
- (id)cachedFileSizeForAssetWithAssetID:(id)d;
- (id)dq_filesSizeForCacheItemRequest:(id)request;
- (id)synchronousFileSizeForCacheItemRequest:(id)request;
- (int64_t)_fileSizeForAssetAtURL:(id)l;
- (void)_installedUnzippedAssetDiskSpaceMetrics:(id *)metrics directory:(id)directory;
- (void)_removeObsoletePersistedInfo;
- (void)clearCacheEntryForAssetID:(id)d;
- (void)dq_persistInfoToDisk;
- (void)dq_readPersistedInfoFromDisk;
- (void)filesSizeForCacheItemRequest:(id)request completion:(id)completion;
- (void)filesSizesForCacheItemRequests:(id)requests completion:(id)completion;
- (void)purgeUnusedCacheEntries;
@end

@implementation BKLibraryFileSizeManager

+ (id)sharedInstance
{
  if (qword_EFD68 != -1)
  {
    sub_9131C();
  }

  v3 = qword_EFD70;

  return v3;
}

- (BKLibraryFileSizeManager)init
{
  v3 = +[BKLibraryManager defaultManager];
  v4 = [(BKLibraryFileSizeManager *)self initWithLibraryManager:v3];

  return v4;
}

- (BKLibraryFileSizeManager)initWithLibraryManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = BKLibraryFileSizeManager;
  v5 = [(BKLibraryFileSizeManager *)&v15 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.ibooks.BKLibraryFileSizeManager", v6);
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v7;

    v9 = objc_opt_new();
    assetPathToCacheItemDict = v5->_assetPathToCacheItemDict;
    v5->_assetPathToCacheItemDict = v9;

    objc_storeWeak(&v5->_libraryManager, managerCopy);
    [(BKLibraryFileSizeManager *)v5 _removeObsoletePersistedInfo];
    v11 = v5->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5A160;
    block[3] = &unk_D5528;
    v14 = v5;
    dispatch_sync(v11, block);
  }

  return v5;
}

- (id)cachedFileSizeForAssetWithAssetID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_5A2B8;
  v16 = sub_5A2C8;
  v17 = 0;
  if (dCopy)
  {
    dispatchQueue = [(BKLibraryFileSizeManager *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5A2D0;
    block[3] = &unk_D62A8;
    block[4] = self;
    v10 = dCopy;
    v11 = &v12;
    dispatch_sync(dispatchQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)synchronousFileSizeForCacheItemRequest:(id)request
{
  requestCopy = request;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_5A2B8;
  v16 = sub_5A2C8;
  v17 = 0;
  if (requestCopy)
  {
    dispatchQueue = [(BKLibraryFileSizeManager *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5A4B8;
    block[3] = &unk_D62D0;
    v11 = &v12;
    block[4] = self;
    v10 = requestCopy;
    dispatch_sync(dispatchQueue, block);

    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)clearCacheEntryForAssetID:(id)d
{
  dCopy = d;
  if ([dCopy count])
  {
    dispatchQueue = [(BKLibraryFileSizeManager *)self dispatchQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_5A5D8;
    v6[3] = &unk_D5420;
    v7 = dCopy;
    selfCopy = self;
    dispatch_async(dispatchQueue, v6);
  }
}

- (void)filesSizeForCacheItemRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = completionCopy;
  if (requestCopy)
  {
    dispatchQueue = [(BKLibraryFileSizeManager *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5A854;
    block[3] = &unk_D62F8;
    block[4] = self;
    v13 = requestCopy;
    v14 = v8;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    if (v10)
    {
      v11 = [NSError errorWithDomain:@"BKLibraryFileSizeManagerDomain" code:-1001 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)filesSizesForCacheItemRequests:(id)requests completion:(id)completion
{
  requestsCopy = requests;
  completionCopy = completion;
  v8 = completionCopy;
  if (requestsCopy)
  {
    dispatchQueue = [(BKLibraryFileSizeManager *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_5AA08;
    block[3] = &unk_D62F8;
    v13 = requestsCopy;
    selfCopy = self;
    v15 = v8;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v10 = objc_retainBlock(completionCopy);
    if (v10)
    {
      v11 = [NSError errorWithDomain:@"BKLibraryFileSizeManagerDomain" code:-1001 userInfo:0];
      v10[2](v10, 0, v11);
    }
  }
}

- (void)purgeUnusedCacheEntries
{
  dispatchQueue = [(BKLibraryFileSizeManager *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5AC7C;
  block[3] = &unk_D5528;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)dq_filesSizeForCacheItemRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    fileSizeNumber = 0;
    goto LABEL_20;
  }

  assetPathToCacheItemDict = [(BKLibraryFileSizeManager *)self assetPathToCacheItemDict];
  assetID = [requestCopy assetID];
  v7 = [assetPathToCacheItemDict objectForKeyedSubscript:assetID];

  if (!v7)
  {
    v17 = 0;
    goto LABEL_13;
  }

  fileOnDiskLastTouchDate = [v7 fileOnDiskLastTouchDate];
  v9 = +[NSFileManager defaultManager];
  assetURL = [requestCopy assetURL];
  path = [assetURL path];
  v27 = 0;
  v12 = [v9 attributesOfItemAtPath:path error:&v27];
  v13 = v27;

  domain = [v13 domain];
  if (![domain isEqualToString:NSCocoaErrorDomain])
  {

LABEL_9:
    fileModificationDate = [v12 fileModificationDate];
    v17 = fileModificationDate;
    if (fileOnDiskLastTouchDate)
    {
      if ([fileModificationDate compare:fileOnDiskLastTouchDate] != &dword_0 + 1 || (objc_msgSend(fileOnDiskLastTouchDate, "timeIntervalSinceNow"), fabs(v19) <= 1.0))
      {

        fileSizeNumber = [v7 fileSizeNumber];
        goto LABEL_19;
      }
    }

LABEL_13:
    assetURL2 = [requestCopy assetURL];
    if (assetURL2)
    {
      fileSizeNumber = [requestCopy assetID];

      if (fileSizeNumber)
      {
        fileSizeNumber = [NSNumber numberWithLongLong:[(BKLibraryFileSizeManager *)self _fileSizeForAssetAtURL:assetURL2]];
        v21 = objc_opt_new();

        [v21 setFileURL:assetURL2];
        [v21 setFileSizeNumber:fileSizeNumber];
        [v21 setFileOnDiskLastTouchDate:v17];
        assetPathToCacheItemDict2 = [(BKLibraryFileSizeManager *)self assetPathToCacheItemDict];
        assetID2 = [requestCopy assetID];
        [assetPathToCacheItemDict2 setObject:v21 forKeyedSubscript:assetID2];

        dispatchQueue = [(BKLibraryFileSizeManager *)self dispatchQueue];
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_5B1E4;
        v26[3] = &unk_D5528;
        v26[4] = self;
        dispatch_async(dispatchQueue, v26);

        v7 = v21;
      }
    }

    else
    {
      fileSizeNumber = 0;
    }

    goto LABEL_19;
  }

  code = [v13 code];

  if (code != &stru_B8.reserved3)
  {
    goto LABEL_9;
  }

  fileSizeNumber = &off_DE120;
  v17 = fileOnDiskLastTouchDate;
LABEL_19:

LABEL_20:

  return fileSizeNumber;
}

- (int64_t)_fileSizeForAssetAtURL:(id)l
{
  lCopy = l;
  v18 = 0;
  v5 = +[NSFileManager defaultManager];
  path = [lCopy path];
  v7 = [v5 fileExistsAtPath:path isDirectory:&v18];

  if (v7)
  {
    if (v18 == 1)
    {
      v17[0] = 0;
      v17[1] = 0;
      path2 = [lCopy path];
      [(BKLibraryFileSizeManager *)self _installedUnzippedAssetDiskSpaceMetrics:v17 directory:path2];

      longLongValue = v17[0];
    }

    else
    {
      path3 = [lCopy path];
      v16 = 0;
      v11 = [v5 attributesOfItemAtPath:path3 error:&v16];
      v12 = v16;

      longLongValue = 0;
      if (!v12)
      {
        objc_opt_class();
        v13 = [v11 objectForKeyedSubscript:NSFileSize];
        v14 = BUDynamicCast();

        longLongValue = [v14 longLongValue];
      }
    }
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

- (void)_installedUnzippedAssetDiskSpaceMetrics:(id *)metrics directory:(id)directory
{
  directoryCopy = directory;
  context = objc_autoreleasePoolPush();
  v5 = +[NSFileManager defaultManager];
  v25 = directoryCopy;
  v6 = [NSURL fileURLWithPath:directoryCopy isDirectory:1];
  v29[0] = NSURLTotalFileAllocatedSizeKey;
  v29[1] = NSURLIsDirectoryKey;
  [NSArray arrayWithObjects:v29 count:2];
  v21 = v7 = v5;
  v22 = v6;
  v8 = [v5 enumeratorAtURL:v6 includingPropertiesForKeys:? options:? errorHandler:?];
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    v10 = nextObject;
    v11 = 0;
    v26 = 0;
    do
    {
      v12 = objc_autoreleasePoolPush();
      v28 = 0;
      [v10 getResourceValue:&v28 forKey:NSURLIsDirectoryKey error:0];
      v13 = v28;
      if (([v13 BOOLValue] & 1) == 0)
      {
        path = [v10 path];
        v27 = 0;
        v15 = [v7 attributesOfItemAtPath:path error:&v27];
        v16 = v27;

        if (!v16)
        {
          objc_opt_class();
          v17 = [v15 objectForKeyedSubscript:NSFileSize];
          v18 = BUDynamicCast();

          v26 += [v18 longLongValue];
          ++v11;
        }
      }

      objc_autoreleasePoolPop(v12);
      nextObject2 = [v8 nextObject];

      v10 = nextObject2;
    }

    while (nextObject2);
  }

  else
  {
    v26 = 0;
    v11 = 0;
  }

  v20 = metrics->var1 + v11;
  metrics->var0 += v26;
  metrics->var1 = v20;

  objc_autoreleasePoolPop(context);
}

- (id)_documentsURLWithFilename:(id)filename
{
  filenameCopy = filename;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:0];

  v6 = [v5 URLByAppendingPathComponent:filenameCopy isDirectory:0];

  return v6;
}

- (void)dq_persistInfoToDisk
{
  v9[0] = @"version";
  v9[1] = @"assetPathToFileSize";
  v10[0] = &off_DE138;
  assetPathToCacheItemDict = [(BKLibraryFileSizeManager *)self assetPathToCacheItemDict];
  v4 = [assetPathToCacheItemDict copy];
  v10[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  v6 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v6 encodeObject:v5 forKey:@"root"];
  [v6 finishEncoding];
  encodedData = [v6 encodedData];
  _persistedInfoURL = [(BKLibraryFileSizeManager *)self _persistedInfoURL];
  [encodedData writeToURL:_persistedInfoURL atomically:1];
}

- (void)dq_readPersistedInfoFromDisk
{
  _persistedInfoURL = [(BKLibraryFileSizeManager *)self _persistedInfoURL];
  v4 = [NSData dataWithContentsOfURL:_persistedInfoURL];

  if (v4)
  {
    v19 = 0;
    v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v19];
    v6 = v19;
    if (v6)
    {
      v7 = BKLibraryLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _persistedInfoURL2 = [(BKLibraryFileSizeManager *)self _persistedInfoURL];
        sub_913D8(_persistedInfoURL2, v6, buf, v7);
      }
    }

    else
    {
      v9 = objc_opt_class();
      v10 = objc_opt_class();
      v11 = objc_opt_class();
      v12 = [NSSet setWithObjects:v9, v10, v11, objc_opt_class(), 0];
      objc_opt_class();
      v13 = [v5 decodeObjectOfClasses:v12 forKey:@"root"];
      v7 = BUDynamicCast();

      v14 = [v7 objectForKeyedSubscript:@"version"];
      if ([v14 unsignedIntegerValue] == &dword_0 + 2)
      {
        v15 = [v7 objectForKeyedSubscript:@"assetPathToFileSize"];
        if (v15)
        {
          v16 = [NSMutableDictionary dictionaryWithDictionary:v15];
          [(BKLibraryFileSizeManager *)self setAssetPathToCacheItemDict:v16];
        }
      }

      else
      {
        v17 = BCIMLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v21 = "[BKLibraryFileSizeManager dq_readPersistedInfoFromDisk]";
          v22 = 2080;
          v23 = "/Library/Caches/com.apple.xbs/Sources/Alder/frameworks/BKLibrary/Source/BKLibraryFileSizeManager.m";
          v24 = 1024;
          v25 = 527;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
        }

        v15 = BCIMLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          _persistedInfoURL3 = [(BKLibraryFileSizeManager *)self _persistedInfoURL];
          *buf = 138543362;
          v21 = _persistedInfoURL3;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "@Corrupt ubiquity cache or unrecongnized version at %{public}@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)_removeObsoletePersistedInfo
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(BKLibraryFileSizeManager *)self _documentsURLWithFilename:@"BKLibraryFileSizeManager"];
  v5 = 0;
  [v3 removeItemAtURL:v4 error:&v5];
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end