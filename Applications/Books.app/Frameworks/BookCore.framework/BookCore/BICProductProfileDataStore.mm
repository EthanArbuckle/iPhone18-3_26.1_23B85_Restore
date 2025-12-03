@interface BICProductProfileDataStore
- (BICProductProfileDataStore)initWithCachePath:(id)path;
- (BOOL)canStoreDescribedImage:(id)image;
- (void)_clean:(id)_clean;
- (void)_inventoryLevel:(signed __int16)level addLevelID:(BOOL)d completion:(id)completion;
- (void)afterAllStoreOperationsCompletedPerformBlock:(id)block;
- (void)deleteRemovedEntries:(id)entries deletingCompletedHandler:(id)handler;
- (void)fetchImagesForEntry:(id)entry forRequest:(id)request completion:(id)completion;
- (void)storeAddedEntries:(id)entries forRequest:(id)request storingCompletedHandler:(id)handler;
@end

@implementation BICProductProfileDataStore

- (BICProductProfileDataStore)initWithCachePath:(id)path
{
  v17.receiver = self;
  v17.super_class = BICProductProfileDataStore;
  v3 = [(BICProductProfileDataStore *)&v17 init];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);
    v6 = dispatch_queue_create("ProductProfileDataStore", v5);

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);
    v9 = dispatch_queue_create("ProductProfileDataStore", v8);

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_USER_INITIATED, 0);
    v12 = dispatch_queue_create("ProductProfileCompletion", v11);
    completionQ = v3->_completionQ;
    v3->_completionQ = v12;

    v14 = [BICWorkQueue workQueueWithHighPriorityTargetQueue:v6 backgroundTargetQueue:v9 numConcurrentWorkItems:16];
    workQueue = v3->_workQueue;
    v3->_workQueue = v14;

    [(BICWorkQueue *)v3->_workQueue setIdentifier:@"ProductProfileDataStore"];
    [(BICWorkQueue *)v3->_workQueue setManualCompletion:1];
  }

  return v3;
}

- (BOOL)canStoreDescribedImage:(id)image
{
  imageCopy = image;
  adamID = [imageCopy adamID];
  if (adamID)
  {
    adamID2 = [imageCopy adamID];
    v6 = [adamID2 integerValue] != 0;
  }

  else
  {
    v6 = 0;
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
  workQueue = [(BICProductProfileDataStore *)self workQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_117DC8;
  v8[3] = &unk_2CC5E0;
  objc_copyWeak(&v10, &location);
  v7 = blockCopy;
  v9 = v7;
  [workQueue addWorkItemWithPriority:v5 description:@"ProfileDataStore after all ops" block:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)fetchImagesForEntry:(id)entry forRequest:(id)request completion:(id)completion
{
  entryCopy = entry;
  requestCopy = request;
  completionCopy = completion;
  dataStoreInformation = [entryCopy dataStoreInformation];
  if (dataStoreInformation)
  {
    objc_initWeak(&location, self);
    [BICCacheStats logOperation:BICCacheStatsOperationProfileDownloadQueueStart[0] forRequest:requestCopy];
    workQueue = [(BICProductProfileDataStore *)self workQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_118044;
    v15[3] = &unk_2CD5A8;
    objc_copyWeak(&v19, &location);
    v16 = requestCopy;
    v17 = dataStoreInformation;
    v18 = completionCopy;
    [workQueue addWorkItemWithPriority:v16 description:@"ProfileDataStore read" block:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = objc_retainBlock(completionCopy);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 2))(v13, 0);
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
        adamID = [imageDescription adamID];
        [v12 setStoredData:adamID];
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