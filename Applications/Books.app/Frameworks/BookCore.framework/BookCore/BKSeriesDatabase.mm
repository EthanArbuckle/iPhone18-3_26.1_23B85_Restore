@interface BKSeriesDatabase
+ (id)persistentStoreURL;
- (BKSeriesDatabase)init;
- (id)newManagedObjectContext;
- (id)newPrivateQueueManagedObjectContext;
@end

@implementation BKSeriesDatabase

- (BKSeriesDatabase)init
{
  persistentStoreURL = [objc_opt_class() persistentStoreURL];
  v11.receiver = self;
  v11.super_class = BKSeriesDatabase;
  v4 = [(IMCoreDataSource *)&v11 initWithPersistentStoreURL:persistentStoreURL];

  if (v4)
  {
    persistentStoreURL2 = [objc_opt_class() persistentStoreURL];
    v6 = +[NSFileManager defaultManager];
    uRLByDeletingLastPathComponent = [persistentStoreURL2 URLByDeletingLastPathComponent];
    path = [uRLByDeletingLastPathComponent path];
    v9 = [v6 fileExistsAtPath:path isDirectory:0];

    if ((v9 & 1) == 0)
    {
      [v6 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
    }

    [(IMCoreDataSource *)v4 loadCoreData];
  }

  return v4;
}

+ (id)persistentStoreURL
{
  v3 = +[UIApplication applicationDocumentsDirectory];
  persistentStoreName = [self persistentStoreName];
  v5 = [v3 stringByAppendingPathComponent:@"BKSeriesDatabase"];
  v6 = [v5 stringByAppendingPathComponent:persistentStoreName];

  v7 = [NSURL fileURLWithPath:v6];

  return v7;
}

- (id)newPrivateQueueManagedObjectContext
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = BKSeriesDatabase;
  return [(IMCoreDataSource *)&v5 newPrivateQueueManagedObjectContextWithClass:v3];
}

- (id)newManagedObjectContext
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = BKSeriesDatabase;
  return [(IMCoreDataSource *)&v5 newManagedObjectContextWithClass:v3];
}

@end