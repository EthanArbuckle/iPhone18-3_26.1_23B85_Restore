@interface _ANEInMemoryModelCacheManager
+ (BOOL)removeFilesFromDirectory:(id)a3 notAccessedInSeconds:(double)a4;
+ (BOOL)removeStaleModelsAtPath:(id)a3;
- (BOOL)removeAllModelsForBundleID:(id)a3;
- (BOOL)removeStaleModels;
- (_ANEInMemoryModelCacheManager)initWithURL:(id)a3 createDirectory:(BOOL)a4;
- (id)URLForBundleID:(id)a3;
- (id)URLForModelHash:(id)a3 bundleID:(id)a4;
- (id)cachedModelPathMatchingHash:(id)a3 csIdentity:(id)a4;
- (id)getDiskSpaceForBundleID:(id)a3;
- (void)scheduleMaintenanceWithName:(id)a3 directoryPaths:(id)a4;
@end

@implementation _ANEInMemoryModelCacheManager

- (_ANEInMemoryModelCacheManager)initWithURL:(id)a3 createDirectory:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v18.receiver = self;
  v18.super_class = _ANEInMemoryModelCacheManager;
  v9 = [(_ANEInMemoryModelCacheManager *)&v18 init];
  if (v9)
  {
    if (v4)
    {
      v10 = +[NSFileManager defaultManager];
      v11 = [v8 path];
      v17 = 0;
      v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v17];
      v13 = v17;

      if ((v12 & 1) == 0)
      {
        v14 = +[_ANELog daemon];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = NSStringFromSelector(a2);
          *buf = 138412802;
          v20 = v16;
          v21 = 2112;
          v22 = v8;
          v23 = 2112;
          v24 = v13;
          _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%@: FAILED creating cacheDir=%@ : err=%@", buf, 0x20u);
        }
      }
    }

    objc_storeStrong(&v9->_cacheDir, a3);
  }

  return v9;
}

- (id)URLForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(_ANEInMemoryModelCacheManager *)self cacheDir];
  v6 = [v5 URLByAppendingPathComponent:v4 isDirectory:1];

  return v6;
}

- (id)URLForModelHash:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_ANEInMemoryModelCacheManager *)self URLForBundleID:v7];
  v10 = [v9 URLByAppendingPathComponent:v6 isDirectory:1];

  objc_autoreleasePoolPop(v8);

  return v10;
}

- (id)cachedModelPathMatchingHash:(id)a3 csIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(_ANEInMemoryModelCacheManager *)self URLForModelHash:v6 bundleID:v7];
  v10 = +[_ANEStrings modelBinaryName];
  v11 = [v9 URLByAppendingPathComponent:v10 isDirectory:0];

  v12 = [v11 path];

  objc_autoreleasePoolPop(v8);

  return v12;
}

- (BOOL)removeAllModelsForBundleID:(id)a3
{
  v3 = [(_ANEInMemoryModelCacheManager *)self URLForBundleID:a3];
  v4 = [v3 path];
  v5 = [_ANEStorageHelper removeDirectoryAtPath:v4];

  return v5;
}

- (id)getDiskSpaceForBundleID:(id)a3
{
  v3 = [(_ANEInMemoryModelCacheManager *)self URLForBundleID:a3];
  v4 = [v3 path];
  v5 = [_ANEStorageHelper sizeOfModelCacheAtPath:v4 purgeSubdirectories:0];

  return v5;
}

+ (BOOL)removeFilesFromDirectory:(id)a3 notAccessedInSeconds:(double)a4
{
  v5 = a3;
  v6 = [NSDate dateWithTimeIntervalSinceNow:-a4];
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 enumeratorAtPath:v5];
  v9 = [v8 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [v5 stringByAppendingPathComponent:v10];
      v20 = 0;
      if ([v7 fileExistsAtPath:v12 isDirectory:&v20])
      {
        v13 = [_ANEStorageHelper getAccessTimeForFilePath:v12];
        if (v13)
        {
          [_ANEStorageHelper removeFilePath:v12 ifDate:v13 olderThanSecond:v6];
        }

        else
        {
          v14 = v6;
          v15 = +[_ANELog daemon];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v18 = NSStringFromSelector(a2);
            *buf = 138412546;
            v22 = v18;
            v23 = 2112;
            v24 = v12;
            _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "%@: Missing access time for %@", buf, 0x16u);
          }

          v6 = v14;
        }
      }

      objc_autoreleasePoolPop(v11);
      v16 = [v8 nextObject];

      v10 = v16;
    }

    while (v16);
  }

  return 1;
}

+ (BOOL)removeStaleModelsAtPath:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  [objc_opt_class() removeFilesFromDirectory:v4 notAccessedInSeconds:{objc_msgSend(a1, "notRecentlyUsedSecondsThreshold")}];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)removeStaleModels
{
  v2 = [(_ANEInMemoryModelCacheManager *)self cacheDir];
  v3 = [v2 path];

  v4 = [objc_opt_class() removeStaleModelsAtPath:v3];
  return v4;
}

- (void)scheduleMaintenanceWithName:(id)a3 directoryPaths:(id)a4
{
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_10000A0D0;
  v11 = &unk_10001C5A0;
  v12 = a3;
  v13 = self;
  v5 = v12;
  v6 = objc_retainBlock(&v8);
  v7 = [_ANETask taskWithName:v5 period:86400 handler:v6, v8, v9, v10, v11];
  [_ANETaskManager registerTask:v7];
}

@end