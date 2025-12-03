@interface BKDatabaseBackupFileManager
+ (BOOL)doesSyncSidecarExist;
+ (id)mergeSyncSidecarFileName;
+ (id)mergeSyncSidecarPath;
- (BKDatabaseBackupFileManager)initWithLibraryManager:(id)manager annotationProvider:(id)provider;
- (BOOL)canModifyBackupFiles;
- (id)newBookmarkDictionarysArray:(id)array;
- (void)mergeSyncSidecarWithCompletionBlock:(id)block;
- (void)rewriteBackupFileWithCompletionBlock:(id)block;
- (void)rewriteSyncSidecarWithCompletionBlock:(id)block;
@end

@implementation BKDatabaseBackupFileManager

- (BKDatabaseBackupFileManager)initWithLibraryManager:(id)manager annotationProvider:(id)provider
{
  managerCopy = manager;
  providerCopy = provider;
  v9 = [(BKDatabaseBackupFileManager *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryManager, manager);
    objc_storeStrong(&v10->_annotationProvider, provider);
  }

  return v10;
}

- (void)rewriteBackupFileWithCompletionBlock:(id)block
{
  blockCopy = block;
  if ([(BKDatabaseBackupFileManager *)self canModifyBackupFiles])
  {
    annotationProvider = [(BKDatabaseBackupFileManager *)self annotationProvider];
    ubiquityQueue = [objc_opt_class() ubiquityQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100154CC4;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(ubiquityQueue, block);
  }

  if (blockCopy)
  {
    v7 = +[AEAnnotationProvider ubiquityQueue];
    dispatch_async(v7, blockCopy);
  }
}

+ (BOOL)doesSyncSidecarExist
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];
  lowercaseString = [bundleIdentifier lowercaseString];

  v5 = [lowercaseString stringByAppendingString:@"-sync.plist"];
  if ([v5 length])
  {
    v6 = objc_alloc_init(NSFileManager);
    v7 = +[NSURL bu_booksRepositoryURL];
    v8 = [v7 URLByAppendingPathComponent:v5];
    path = [v8 path];

    v10 = [v6 fileExistsAtPath:path];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)canModifyBackupFiles
{
  v2 = +[AEAssetEngine appInfoMgr];
  isRunningInStoreDemoMode = [v2 isRunningInStoreDemoMode];

  return isRunningInStoreDemoMode ^ 1;
}

- (id)newBookmarkDictionarysArray:(id)array
{
  arrayCopy = array;
  v4 = objc_autoreleasePoolPush();
  v5 = [AEAnnotation modernDictionaryRepresentationForAnnotationsMatchingPredicate:0 inManagedObjectContext:arrayCopy];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (void)rewriteSyncSidecarWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = +[NSBundle mainBundle];
  bundleIdentifier = [v4 bundleIdentifier];
  lowercaseString = [bundleIdentifier lowercaseString];

  v7 = [lowercaseString stringByAppendingString:@"-sync.plist"];
  if ([v7 length])
  {
    v8 = [[AEAnnotationSidecarProducer alloc] initWithName:v7];
    annotationProvider = [(BKDatabaseBackupFileManager *)self annotationProvider];
    [v8 rewriteWithAnnotationProvider:annotationProvider completionBlock:blockCopy];
  }
}

+ (id)mergeSyncSidecarFileName
{
  v2 = +[NSBundle mainBundle];
  bundleIdentifier = [v2 bundleIdentifier];
  lowercaseString = [bundleIdentifier lowercaseString];

  if ([lowercaseString isEqualToString:@"com.apple.ibooks"])
  {
    v5 = @"com.apple.itunesu";
LABEL_5:
    v6 = [(__CFString *)v5 stringByAppendingString:@"-sync.plist"];
    goto LABEL_7;
  }

  if ([lowercaseString isEqualToString:@"com.apple.itunesu"])
  {
    v5 = @"com.apple.ibooks";
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

+ (id)mergeSyncSidecarPath
{
  v2 = +[NSURL bu_booksRepositoryURL];
  v3 = +[BKDatabaseBackupFileManager mergeSyncSidecarFileName];
  v4 = [v2 URLByAppendingPathComponent:v3];
  path = [v4 path];

  return path;
}

- (void)mergeSyncSidecarWithCompletionBlock:(id)block
{
  blockCopy = block;
  annotationProvider = [(BKDatabaseBackupFileManager *)self annotationProvider];
  annotationProvider2 = [(BKDatabaseBackupFileManager *)self annotationProvider];
  ubiquityQueue = [objc_opt_class() ubiquityQueue];

  if (ubiquityQueue)
  {
    annotationProvider3 = [(BKDatabaseBackupFileManager *)self annotationProvider];
    ubiquityQueue2 = [objc_opt_class() ubiquityQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015525C;
    block[3] = &unk_100A03788;
    v13 = annotationProvider;
    v14 = blockCopy;
    dispatch_async(ubiquityQueue2, block);

    v10 = v13;
  }

  else
  {
    v10 = BCIMLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Missing annotation provider ubiquity queue. Not saving sync side car.", v11, 2u);
    }
  }
}

@end