@interface CloudRemoteStore
- (CloudRemoteStore)init;
- (void)_addDependenciesForModifyRecordsOperation:(id)a3 operationQueue:(id)a4;
- (void)_addModifyRecordsOperations:(id)a3 inOperationGroup:(id)a4 operationQueue:(id)a5;
- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)a3 recordChangedBlock:(id)a4 recordWithIDWasDeletedBlock:(id)a5 inOperationGroup:(id)a6 completionHandler:(id)a7;
- (void)_saveRecordZoneSubscriptionForZoneID:(id)a3 subscriptionID:(id)a4 inOperationGroup:(id)a5 operationQueue:(id)a6 completionHandler:(id)a7;
- (void)_scheduleOperation:(id)a3 inOperationGroup:(id)a4 operationQueue:(id)a5;
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

- (void)_saveRecordZoneSubscriptionForZoneID:(id)a3 subscriptionID:(id)a4 inOperationGroup:(id)a5 operationQueue:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_alloc_init(CKNotificationInfo);
  [v17 setShouldSendContentAvailable:1];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D0F74;
  block[3] = &unk_100136FE8;
  v26 = v12;
  v27 = v13;
  v31 = v15;
  v32 = v16;
  v28 = v17;
  v29 = self;
  v30 = v14;
  v19 = v15;
  v20 = v14;
  v21 = v16;
  v22 = v17;
  v23 = v13;
  v24 = v12;
  dispatch_async(internalQueue, block);
}

- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)a3 recordChangedBlock:(id)a4 recordWithIDWasDeletedBlock:(id)a5 inOperationGroup:(id)a6 completionHandler:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a6;
  v16 = a3;
  v17 = [(CloudRemoteStore *)self _zoneID];
  v18 = [v14 copy];

  v19 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v19 setPreviousServerChangeToken:v16];

  v20 = [[WBSRetryableCKFetchRecordZoneChangesOperation alloc] initWithOwner:self handlingQueue:self->_internalQueue];
  [v20 setLog:-[CloudTabGroupSyncCoordinator _bookmarksLog]_0()];
  v21 = [(CloudRemoteStore *)self operationConfiguration];
  [v20 setConfiguration:v21];

  [v20 setGroup:v15];
  v22 = [(CloudRemoteStore *)self _database];
  [v20 setDatabase:v22];

  v53 = v17;
  v23 = [NSArray arrayWithObjects:&v53 count:1];
  [v20 setRecordZoneIDs:v23];

  v51 = v17;
  v52 = v19;
  v24 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  [v20 setConfigurationsByRecordZoneID:v24];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000D15B4;
  v47[3] = &unk_100137010;
  v48 = v12;
  v25 = v12;
  [v20 setRecordWasChangedBlock:v47];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000D1628;
  v45[3] = &unk_100137038;
  v46 = v13;
  v26 = v13;
  [v20 setRecordWithIDWasDeletedBlock:v45];
  v39 = _NSConcreteStackBlock;
  v40 = 3221225472;
  v41 = sub_1000D16A8;
  v42 = &unk_100137060;
  v43 = self;
  v27 = v18;
  v44 = v27;
  [v20 setRecordZoneFetchCompletionBlock:&v39];
  v33 = _NSConcreteStackBlock;
  v34 = 3221225472;
  v35 = sub_1000D19FC;
  v36 = &unk_100137088;
  v37 = self;
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

- (void)_addDependenciesForModifyRecordsOperation:(id)a3 operationQueue:(id)a4
{
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [a4 operations];
  v7 = [v6 copy];

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
          [v5 addDependency:v12];
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_addModifyRecordsOperations:(id)a3 inOperationGroup:(id)a4 operationQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 134217984;
    v25 = [v8 count];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Enqueuing %lu modify records operations", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v8;
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
        [(CloudRemoteStore *)self _addDependenciesForModifyRecordsOperation:v18 operationQueue:v10, v19];
        [(CloudRemoteStore *)self _scheduleOperation:v18 inOperationGroup:v9 operationQueue:v10];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
}

- (void)_scheduleOperation:(id)a3 inOperationGroup:(id)a4 operationQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000D2008;
  v15[3] = &unk_1001311E8;
  v16 = v8;
  v17 = self;
  v18 = v9;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(internalQueue, v15);
}

@end