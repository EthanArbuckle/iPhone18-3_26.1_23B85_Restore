@interface BICURLDataStore
- (BICURLDataStore)initWithCachePath:(id)path;
- (BOOL)canStoreDescribedImage:(id)image;
- (void)_clean:(id)_clean;
- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion;
- (void)afterAllStoreOperationsCompletedPerformBlock:(id)block;
- (void)deleteRemovedEntries:(id)entries deletingCompletedHandler:(id)handler;
- (void)fetchImagesForEntry:(id)entry forRequest:(id)request completion:(id)completion;
- (void)storeAddedEntries:(id)entries forRequest:(id)request storingCompletedHandler:(id)handler;
@end

@implementation BICURLDataStore

- (BICURLDataStore)initWithCachePath:(id)path
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

- (BOOL)canStoreDescribedImage:(id)image
{
  imageCopy = image;
  urlString = [imageCopy urlString];
  if (urlString)
  {
    urlString2 = [imageCopy urlString];
    v6 = [urlString2 isEqualToString:@"test"] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)deleteRemovedEntries:(id)entries deletingCompletedHandler:(id)handler
{
  entriesCopy = entries;
  v5 = objc_retainBlock(handler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, entriesCopy);
  }
}

- (void)afterAllStoreOperationsCompletedPerformBlock:(id)block
{
  blockCopy = block;
  v5 = [BICDescribedImage describedImageWithPriority:3];
  objc_initWeak(&location, self);
  workQueue = [(BICURLDataStore *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_B6884;
  v8[3] = &unk_2CC5E0;
  objc_copyWeak(&v10, &location);
  v7 = blockCopy;
  v9 = v7;
  [workQueue addWorkItemWithPriority:v5 description:@"URLDataStore after all ops" block:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)fetchImagesForEntry:(id)entry forRequest:(id)request completion:(id)completion
{
  entryCopy = entry;
  requestCopy = request;
  completionCopy = completion;
  v11 = [BICDescribedImage describedImageFromImageEntry:entryCopy];
  [v11 setExpiry:0];
  dataStoreInformation = [entryCopy dataStoreInformation];
  if (dataStoreInformation)
  {
    delegate = [(BICURLDataStore *)self delegate];
    v14 = [delegate canFetchCoverForURL:dataStoreInformation];
    objc_initWeak(&location, self);
    v15 = BICCacheStatsOperationNetworkDownloadQueueStart;
    if (v14)
    {
      v15 = BICCacheStatsOperationNetworkDownloadQueueStartFromDataSource;
    }

    [BICCacheStats logOperation:*v15 forRequest:requestCopy];
    completionQueue = [(BICURLDataStore *)self completionQueue];
    workQueue = [(BICURLDataStore *)self workQueue];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_B6BB4;
    v21[3] = &unk_2CC680;
    objc_copyWeak(&v28, &location);
    v22 = requestCopy;
    v29 = v14;
    v23 = dataStoreInformation;
    v18 = delegate;
    v24 = v18;
    v25 = v11;
    v27 = completionCopy;
    v19 = completionQueue;
    v26 = v19;
    [workQueue addWorkItemWithPriority:v22 description:@"URLDataStore read" block:v21];

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = objc_retainBlock(completionCopy);
    v18 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, 0);
    }
  }
}

- (void)storeAddedEntries:(id)entries forRequest:(id)request storingCompletedHandler:(id)handler
{
  entriesCopy = entries;
  handlerCopy = handler;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [entriesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(entriesCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        imageDescription = [v12 imageDescription];
        urlString = [imageDescription urlString];
        [v12 setStoredData:urlString];
      }

      v9 = [entriesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  handlerCopy[2](handlerCopy, entriesCopy, &__NSArray0__struct);
}

- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion
{
  v5 = objc_retainBlock(completion);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, &__NSArray0__struct);
    v5 = v6;
  }
}

- (void)_clean:(id)_clean
{
  v3 = objc_retainBlock(_clean);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

@end