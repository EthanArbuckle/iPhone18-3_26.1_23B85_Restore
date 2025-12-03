@interface CloudRemoteStore
- (CloudRemoteStore)init;
- (void)_addDependenciesForModifyRecordsOperation:(id)operation operationQueue:(id)queue;
- (void)_addModifyRecordsOperations:(id)operations inOperationGroup:(id)group operationQueue:(id)queue;
- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveRecordZoneSubscriptionForZoneID:(id)d subscriptionID:(id)iD inOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler;
- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue;
@end

@implementation CloudRemoteStore

- (CloudRemoteStore)init
{
  v11.receiver = self;
  v11.super_class = CloudRemoteStore;
  v2 = [(CloudRemoteStore *)&v11 init];
  if (v2)
  {
    v3 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkStore.%@.%p.internalQueue", objc_opt_class(), v2];
    v4 = dispatch_queue_create([v3 UTF8String], 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v4;

    v6 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudBookmarkStore.%@.%p.completionHandlerQueue", objc_opt_class(), v2];
    v7 = dispatch_queue_create([v6 UTF8String], 0);
    completionHandlerQueue = v2->_completionHandlerQueue;
    v2->_completionHandlerQueue = v7;

    v9 = v2;
  }

  return v2;
}

- (void)_saveRecordZoneSubscriptionForZoneID:(id)d subscriptionID:(id)iD inOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  groupCopy = group;
  queueCopy = queue;
  handlerCopy = handler;
  v17 = objc_alloc_init(CKNotificationInfo);
  [v17 setShouldSendContentAvailable:1];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D0F74;
  block[3] = &unk_100136FE8;
  v26 = dCopy;
  v27 = iDCopy;
  v31 = queueCopy;
  v32 = handlerCopy;
  v28 = v17;
  selfCopy = self;
  v30 = groupCopy;
  v19 = queueCopy;
  v20 = groupCopy;
  v21 = handlerCopy;
  v22 = v17;
  v23 = iDCopy;
  v24 = dCopy;
  dispatch_async(internalQueue, block);
}

- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  groupCopy = group;
  tokenCopy = token;
  _zoneID = [(CloudRemoteStore *)self _zoneID];
  v18 = [handlerCopy copy];

  v19 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v19 setPreviousServerChangeToken:tokenCopy];

  v20 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->_internalQueue];
  [v20 setLog:-[CloudTabGroupSyncCoordinator _bookmarksLog]_0()];
  operationConfiguration = [(CloudRemoteStore *)self operationConfiguration];
  [v20 setConfiguration:operationConfiguration];

  [v20 setGroup:groupCopy];
  _database = [(CloudRemoteStore *)self _database];
  [v20 setDatabase:_database];

  v53 = _zoneID;
  v23 = [NSArray arrayWithObjects:&v53 count:1];
  [v20 setRecordZoneIDs:v23];

  v51 = _zoneID;
  v52 = v19;
  v24 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [v20 setConfigurationsByRecordZoneID:v24];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000D15B4;
  v47[3] = &unk_100137010;
  v48 = blockCopy;
  v25 = blockCopy;
  [v20 setRecordWasChangedBlock:v47];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000D1628;
  v45[3] = &unk_100137038;
  v46 = deletedBlockCopy;
  v26 = deletedBlockCopy;
  [v20 setRecordWithIDWasDeletedBlock:v45];
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_1000D16A8;
  v42 = &unk_100137060;
  selfCopy = self;
  v27 = v18;
  v44 = v27;
  [v20 setRecordZoneFetchCompletionBlock:&v39];
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_1000D19FC;
  v36 = &unk_100137088;
  selfCopy2 = self;
  v38 = v27;
  v28 = v27;
  [v20 setFetchRecordZoneChangesCompletionBlock:&v33];
  v29 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = v29;
    v31 = [(CloudRemoteStore *)self _zoneLogName:v33];
    *buf = 138543362;
    v50 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "Enqueuing request to fetch records from record zone %{public}@", buf, 0xCu);
  }

  v32 = [(CloudRemoteStore *)self _operationQueue:v33];
  [v32 addOperation:v20];
}

- (void)_addDependenciesForModifyRecordsOperation:(id)operation operationQueue:(id)queue
{
  operationCopy = operation;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  operations = [queue operations];
  v7 = [operations copy];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [operationCopy addDependency:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_addModifyRecordsOperations:(id)operations inOperationGroup:(id)group operationQueue:(id)queue
{
  operationsCopy = operations;
  groupCopy = group;
  queueCopy = queue;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 134217984;
    v25 = [operationsCopy count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Enqueuing %lu modify records operations", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = operationsCopy;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v19 + 1) + 8 * i);
        [(CloudRemoteStore *)self _addDependenciesForModifyRecordsOperation:v18 operationQueue:queueCopy, v19];
        [(CloudRemoteStore *)self _scheduleOperation:v18 inOperationGroup:groupCopy operationQueue:queueCopy];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue
{
  operationCopy = operation;
  groupCopy = group;
  queueCopy = queue;
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D2008;
  v15[3] = &unk_1001311E8;
  v16 = operationCopy;
  selfCopy = self;
  v18 = groupCopy;
  v19 = queueCopy;
  v12 = queueCopy;
  v13 = groupCopy;
  v14 = operationCopy;
  dispatch_async(internalQueue, v15);
}

@end