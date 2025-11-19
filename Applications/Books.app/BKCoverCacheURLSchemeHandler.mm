@interface BKCoverCacheURLSchemeHandler
+ (id)urlStringForAssetID:(id)a3 dataSourceID:(id)a4;
- (BKCoverCacheURLSchemeHandler)init;
- (void)_fetchCoverForDataSourceURL:(id)a3 completion:(id)a4;
- (void)fetchCoverForURL:(id)a3 completion:(id)a4;
@end

@implementation BKCoverCacheURLSchemeHandler

+ (id)urlStringForAssetID:(id)a3 dataSourceID:(id)a4
{
  v11[0] = a3;
  v11[1] = a4;
  v5 = a4;
  v6 = a3;
  v7 = [NSArray arrayWithObjects:v11 count:2];

  v8 = [v7 componentsJoinedByString:@"#item#"];
  v9 = [@"datasource://assetID-" stringByAppendingString:v8];

  return v9;
}

- (BKCoverCacheURLSchemeHandler)init
{
  v13.receiver = self;
  v13.super_class = BKCoverCacheURLSchemeHandler;
  v2 = [(BKCoverCacheURLSchemeHandler *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("BKCoverCacheURLSchemeHandler.schedule", v5);
    scheduleQueue = v3->_scheduleQueue;
    v3->_scheduleQueue = v6;

    v8 = dispatch_queue_create("BKCoverCacheURLSchemeHandler.completion", v5);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v8;

    v10 = dispatch_semaphore_create(16);
    concurrentTasks = v3->_concurrentTasks;
    v3->_concurrentTasks = v10;
  }

  return v3;
}

- (void)fetchCoverForURL:(id)a3 completion:(id)a4
{
  v7 = a3;
  v6 = a4;
  if ([v7 hasPrefix:@"datasource://assetID-"])
  {
    [(BKCoverCacheURLSchemeHandler *)self _fetchCoverForDataSourceURL:v7 completion:v6];
  }
}

- (void)_fetchCoverForDataSourceURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stringByReplacingOccurrencesOfString:@"datasource://assetID-" withString:&stru_100A30A68];
  v9 = [v8 componentsSeparatedByString:@"#item#"];

  if ([v9 count])
  {
    v10 = [v9 objectAtIndexedSubscript:0];
  }

  else
  {
    v10 = 0;
  }

  if ([v9 count] < 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v9 objectAtIndexedSubscript:1];
  }

  v12 = +[BKLibraryManager defaultManager];
  v13 = [v12 dataSourceWithIdentifier:v11];

  +[BKLibraryManager defaultManager];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001574E4;
  v21 = v20[3] = &unk_100A08858;
  v22 = v10;
  v23 = self;
  v24 = v11;
  v26 = v6;
  v27 = v7;
  v25 = v13;
  v14 = v6;
  v15 = v13;
  v16 = v7;
  v17 = v11;
  v18 = v10;
  v19 = v21;
  [v19 performBackgroundReadOnlyBlock:v20];
}

@end