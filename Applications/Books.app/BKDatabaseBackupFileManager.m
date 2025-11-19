@interface BKDatabaseBackupFileManager
+ (BOOL)doesSyncSidecarExist;
+ (id)mergeSyncSidecarFileName;
+ (id)mergeSyncSidecarPath;
- (BKDatabaseBackupFileManager)initWithLibraryManager:(id)a3 annotationProvider:(id)a4;
- (BOOL)canModifyBackupFiles;
- (id)newBookmarkDictionarysArray:(id)a3;
- (void)mergeSyncSidecarWithCompletionBlock:(id)a3;
- (void)rewriteBackupFileWithCompletionBlock:(id)a3;
- (void)rewriteSyncSidecarWithCompletionBlock:(id)a3;
@end

@implementation BKDatabaseBackupFileManager

- (BKDatabaseBackupFileManager)initWithLibraryManager:(id)a3 annotationProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(BKDatabaseBackupFileManager *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryManager, a3);
    objc_storeStrong(&v10->_annotationProvider, a4);
  }

  return v10;
}

- (void)rewriteBackupFileWithCompletionBlock:(id)a3
{
  v4 = a3;
  if ([(BKDatabaseBackupFileManager *)self canModifyBackupFiles])
  {
    v5 = [(BKDatabaseBackupFileManager *)self annotationProvider];
    v6 = [objc_opt_class() ubiquityQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100154CC4;
    block[3] = &unk_100A033C8;
    block[4] = self;
    dispatch_async(v6, block);
  }

  if (v4)
  {
    v7 = +[AEAnnotationProvider ubiquityQueue];
    dispatch_async(v7, v4);
  }
}

+ (BOOL)doesSyncSidecarExist
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 lowercaseString];

  v5 = [v4 stringByAppendingString:@"-sync.plist"];
  if ([v5 length])
  {
    v6 = objc_alloc_init(NSFileManager);
    v7 = +[NSURL bu_booksRepositoryURL];
    v8 = [v7 URLByAppendingPathComponent:v5];
    v9 = [v8 path];

    v10 = [v6 fileExistsAtPath:v9];
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
  v3 = [v2 isRunningInStoreDemoMode];

  return v3 ^ 1;
}

- (id)newBookmarkDictionarysArray:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [AEAnnotation modernDictionaryRepresentationForAnnotationsMatchingPredicate:0 inManagedObjectContext:v3];
  objc_autoreleasePoolPop(v4);

  return v5;
}

- (void)rewriteSyncSidecarWithCompletionBlock:(id)a3
{
  v10 = a3;
  v4 = +[NSBundle mainBundle];
  v5 = [v4 bundleIdentifier];
  v6 = [v5 lowercaseString];

  v7 = [v6 stringByAppendingString:@"-sync.plist"];
  if ([v7 length])
  {
    v8 = [[AEAnnotationSidecarProducer alloc] initWithName:v7];
    v9 = [(BKDatabaseBackupFileManager *)self annotationProvider];
    [v8 rewriteWithAnnotationProvider:v9 completionBlock:v10];
  }
}

+ (id)mergeSyncSidecarFileName
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"com.apple.ibooks"])
  {
    v5 = @"com.apple.itunesu";
LABEL_5:
    v6 = [(__CFString *)v5 stringByAppendingString:@"-sync.plist"];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"com.apple.itunesu"])
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
  v5 = [v4 path];

  return v5;
}

- (void)mergeSyncSidecarWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(BKDatabaseBackupFileManager *)self annotationProvider];
  v6 = [(BKDatabaseBackupFileManager *)self annotationProvider];
  v7 = [objc_opt_class() ubiquityQueue];

  if (v7)
  {
    v8 = [(BKDatabaseBackupFileManager *)self annotationProvider];
    v9 = [objc_opt_class() ubiquityQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10015525C;
    block[3] = &unk_100A03788;
    v13 = v5;
    v14 = v4;
    dispatch_async(v9, block);

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