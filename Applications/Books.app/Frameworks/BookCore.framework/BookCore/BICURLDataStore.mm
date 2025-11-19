@interface BICURLDataStore
- (BICURLDataStore)initWithCachePath:(id)a3;
- (BOOL)canStoreDescribedImage:(id)a3;
- (void)_clean:(id)a3;
- (void)_inventoryLevel:(signed __int16)a3 addLevelID:(BOOL)a4 completion:(id)a5;
- (void)afterAllStoreOperationsCompletedPerformBlock:(id)a3;
- (void)deleteRemovedEntries:(id)a3 deletingCompletedHandler:(id)a4;
- (void)fetchImagesForEntry:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)storeAddedEntries:(id)a3 forRequest:(id)a4 storingCompletedHandler:(id)a5;
@end

@implementation BICURLDataStore

- (BICURLDataStore)initWithCachePath:(id)a3
{
  v17.receiver = self;
  v17.super_class = BICURLDataStore;
  v3 = [(BICURLDataStore *)&v17 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);
    v6 = dispatch_queue_create("URLDataStore", v5);

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("URLDataStore", v8);

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("URLDataStore Completion", v11);
    completionQueue = v3->_completionQueue;
    v3->_completionQueue = v12;

    v14 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:v6 backgroundTargetQueue:v9 numConcurrentWorkItems:16];
    workQueue = v3->_workQueue;
    v3->_workQueue = v14;

    [(BICWorkQueue *)v3->_workQueue setIdentifier:@"URLDataStore"];
    [(BICWorkQueue *)v3->_workQueue setManualCompletion:1];
  }

  return v3;
}

- (BOOL)canStoreDescribedImage:(id)a3
{
  v3 = a3;
  v4 = [v3 urlString];
  if (v4)
  {
    v5 = [v3 urlString];
    v6 = [v5 isEqualToString:@"test"] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)deleteRemovedEntries:(id)a3 deletingCompletedHandler:(id)a4
{
  v7 = a3;
  v5 = objc_retainBlock(a4);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v7);
  }
}

- (void)afterAllStoreOperationsCompletedPerformBlock:(id)a3
{
  v4 = a3;
  v5 = [BICDescribedImage describedImageWithPriority:3];
  objc_initWeak(&location, self);
  v6 = [(BICURLDataStore *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_B6884;
  v8[3] = &unk_2CC5E0;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v6 addWorkItemWithPriority:v5 description:@"URLDataStore after all ops" block:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)fetchImagesForEntry:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [BICDescribedImage describedImageFromImageEntry:v8];
  [v11 setExpiry:0];
  v12 = [v8 dataStoreInformation];
  if (v12)
  {
    v13 = [(BICURLDataStore *)self delegate];
    v14 = [v13 canFetchCoverForURL:v12];
    objc_initWeak(&location, self);
    v15 = BICCacheStatsOperationNetworkDownloadQueueStart;
    if (v14)
    {
      v15 = BICCacheStatsOperationNetworkDownloadQueueStartFromDataSource;
    }

    [BICCacheStats logOperation:*v15 forRequest:v9];
    v16 = [(BICURLDataStore *)self completionQueue];
    v17 = [(BICURLDataStore *)self workQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_B6BB4;
    v21[3] = &unk_2CC680;
    objc_copyWeak(&v28, &location);
    v22 = v9;
    v29 = v14;
    v23 = v12;
    v18 = v13;
    v24 = v18;
    v25 = v11;
    v27 = v10;
    v19 = v16;
    v26 = v19;
    [v17 addWorkItemWithPriority:v22 description:@"URLDataStore read" block:v21];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = objc_retainBlock(v10);
    v18 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, 0);
    }
  }
}

- (void)storeAddedEntries:(id)a3 forRequest:(id)a4 storingCompletedHandler:(id)a5
{
  v6 = a3;
  v7 = a5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 imageDescription];
        v14 = [v13 urlString];
        [v12 setStoredData:v14];
      }

      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v7[2](v7, v6, &__NSArray0__struct);
}

- (void)_inventoryLevel:(signed __int16)a3 addLevelID:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, &__NSArray0__struct);
    v5 = v6;
  }
}

- (void)_clean:(id)a3
{
  v3 = objc_retainBlock(a3);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

@end