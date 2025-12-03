@interface CloudTabRemoteStore
- (CloudTabRemoteStore)initWithContainer:(id)container;
- (id)_operationToDeleteCloudTabRecordIDs:(id)ds completionHandler:(id)handler;
- (id)_zoneID;
- (void)_createCloudTabsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler;
- (void)_recursivelyCancelDependentOperations:(id)operations operationQueue:(id)queue;
- (void)_saveCloudTabsRecordBatch:(id)batch inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveCloudTabsRecordBatch:(id)batch previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds retryManager:(id)manager inOperationGroup:(id)group completionHandler:(id)handler;
- (void)createCloudTabsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudTabRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudTabsZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)fetchCloudTabsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)fetchCloudTabsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)saveCloudTabsRecordBatch:(id)batch createCloudTabsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveCloudTabsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
@end

@implementation CloudTabRemoteStore

- (id)_zoneID
{
  if (qword_100154010 != -1)
  {
    sub_10007D330();
  }

  v1 = qword_100154008;

  return v1;
}

- (CloudTabRemoteStore)initWithContainer:(id)container
{
  containerCopy = container;
  v17.receiver = self;
  v17.super_class = CloudTabRemoteStore;
  v6 = [(CloudRemoteStore *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
    containerIdentifier = [containerCopy containerIdentifier];
    v7->_usesManateeContainer = [containerIdentifier isEqualToString:WBSCloudTabManateeContainerIdentifier];

    privateCloudDatabase = [(CKContainer *)v7->_container privateCloudDatabase];
    threadUnsafeDatabase = v7->_threadUnsafeDatabase;
    v7->_threadUnsafeDatabase = privateCloudDatabase;

    if (!v7->_threadUnsafeDatabase)
    {
      v11 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000676FC();
      }
    }

    v12 = objc_opt_new();
    cloudTabsOperationQueue = v7->_cloudTabsOperationQueue;
    v7->_cloudTabsOperationQueue = v12;

    [(NSOperationQueue *)v7->_cloudTabsOperationQueue setQualityOfService:17];
    v14 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudTabRemoteStore.%@.%p.operationQueue", objc_opt_class(), v7];
    [(NSOperationQueue *)v7->_cloudTabsOperationQueue setName:v14];

    v15 = v7;
  }

  return v7;
}

- (void)createCloudTabsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_100001B78()];
  [(CloudTabRemoteStore *)self _createCloudTabsRecordZoneInOperationGroup:groupCopy withRetryManager:v8 completionHandler:handlerCopy];
}

- (void)fetchCloudTabsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = sub_100001B78();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching CloudTabs zone subscription", buf, 2u);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079C04;
  block[3] = &unk_100130E50;
  v13 = groupCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = groupCopy;
  v11 = handlerCopy;
  dispatch_async(internalQueue, block);
}

- (void)saveCloudTabsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v8 = sub_100001B78();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving CloudTabs zone subscription", buf, 2u);
  }

  v9 = [CloudTabRemoteStore _zoneID]_0();
  cloudTabsOperationQueue = self->_cloudTabsOperationQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10007A090;
  v13[3] = &unk_100130EA0;
  v11 = handlerCopy;
  v15 = v11;
  objc_copyWeak(&v16, &location);
  v12 = groupCopy;
  v14 = v12;
  [(CloudRemoteStore *)self _saveRecordZoneSubscriptionForZoneID:v9 subscriptionID:@"CloudTabsZoneSubscription" inOperationGroup:v12 operationQueue:cloudTabsOperationQueue completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)fetchCloudTabsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  tokenCopy = token;
  groupCopy = group;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  v17 = sub_100001B78();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (tokenCopy)
  {
    if (v18)
    {
      *buf = 138543362;
      v35 = tokenCopy;
      v19 = "Fetching record changes with server change token %{public}@.";
      v20 = v17;
      v21 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    }
  }

  else if (v18)
  {
    *buf = 0;
    v19 = "Fetching all records.";
    v20 = v17;
    v21 = 2;
    goto LABEL_6;
  }

  internalQueue = self->super._internalQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10007A4EC;
  v28[3] = &unk_100130F90;
  v28[4] = self;
  v29 = tokenCopy;
  v30 = groupCopy;
  v31 = blockCopy;
  v32 = deletedBlockCopy;
  v33 = handlerCopy;
  v23 = handlerCopy;
  v24 = groupCopy;
  v25 = deletedBlockCopy;
  v26 = blockCopy;
  v27 = tokenCopy;
  dispatch_async(internalQueue, v28);
}

- (void)saveCloudTabsRecordBatch:(id)batch createCloudTabsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group completionHandler:(id)handler
{
  batchCopy = batch;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v13 = sub_100001B78();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [batchCopy count];
    *buf = 134217984;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving record batch of size: %lu", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007A6DC;
  v18[3] = &unk_100130F18;
  objc_copyWeak(&v22, &location);
  v15 = handlerCopy;
  v21 = v15;
  missingCopy = missing;
  v16 = groupCopy;
  v19 = v16;
  v17 = batchCopy;
  v20 = v17;
  [(CloudTabRemoteStore *)self _saveCloudTabsRecordBatch:v17 inOperationGroup:v16 completionHandler:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)deleteCloudTabRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler
{
  recordsCopy = records;
  groupCopy = group;
  handlerCopy = handler;
  v11 = [recordsCopy count];
  v12 = sub_100001B78();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    v29 = groupCopy;
    if (v13)
    {
      v14 = v12;
      *buf = 134217984;
      v45 = [recordsCopy count];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting %lu records.", buf, 0xCu);
    }

    v32 = handlerCopy;
    v15 = [recordsCopy safari_arrayByGroupingIntoArraysWithMaxCount:100];
    v16 = [v15 count];
    if (v16 >= 2)
    {
      v17 = sub_100001B78();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [recordsCopy count];
        *buf = 134218240;
        v45 = v19;
        v46 = 2048;
        v47 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Grouping delete requests for %lu objects into %lu batches", buf, 0x16u);
      }
    }

    v30 = recordsCopy;
    v20 = [NSMutableSet setWithArray:v15];
    v21 = +[NSMutableArray array];
    v22 = [NSMutableArray arrayWithCapacity:v16];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v15;
    v23 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v40;
      do
      {
        v26 = 0;
        do
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v39 + 1) + 8 * v26);
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_10007ADE8;
          v33[3] = &unk_100130F68;
          v34 = v21;
          v35 = v20;
          v36 = v27;
          selfCopy = self;
          v38 = v32;
          v28 = [(CloudTabRemoteStore *)self _operationToDeleteCloudTabRecordIDs:v27 completionHandler:v33];
          [v22 addObject:v28];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    groupCopy = v29;
    [(CloudRemoteStore *)self _addModifyRecordsOperations:v22 inOperationGroup:v29 operationQueue:self->_cloudTabsOperationQueue];

    recordsCopy = v30;
    handlerCopy = v32;
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No records to delete.", buf, 2u);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)deleteCloudTabsZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = sub_100001B78();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Deleting CloudTabs zone", buf, 2u);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B054;
  block[3] = &unk_100130E50;
  v13 = groupCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = groupCopy;
  v11 = handlerCopy;
  dispatch_async(internalQueue, block);
}

- (void)_createCloudTabsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler
{
  groupCopy = group;
  managerCopy = manager;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v11 = sub_100001B78();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating CloudTabs zone", buf, 2u);
  }

  internalQueue = self->super._internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007B4D4;
  block[3] = &unk_100131260;
  v17 = managerCopy;
  v13 = managerCopy;
  objc_copyWeak(&v21, &location);
  selfCopy = self;
  v20 = handlerCopy;
  v18 = groupCopy;
  v14 = groupCopy;
  v15 = handlerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_saveCloudTabsRecordBatch:(id)batch inOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  batchCopy = batch;
  v13 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_100001B78()];
  [(CloudTabRemoteStore *)self _saveCloudTabsRecordBatch:batchCopy previouslySavedRecords:v13 previouslyDeletedRecordIDs:v11 retryManager:v12 inOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_saveCloudTabsRecordBatch:(id)batch previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds retryManager:(id)manager inOperationGroup:(id)group completionHandler:(id)handler
{
  batchCopy = batch;
  recordsCopy = records;
  dsCopy = ds;
  managerCopy = manager;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v20 = sub_100001B78();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [batchCopy count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving record batch with %lu records", &buf, 0xCu);
  }

  v22 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:batchCopy recordIDsToDelete:0];
  [v22 setSavePolicy:1];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x2020000000;
  v47 = 0;
  +[NSMutableArray array];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_10007BECC;
  v40[3] = &unk_100130FE0;
  v40[4] = self;
  v23 = p_buf = &buf;
  v41 = v23;
  [v22 setPerRecordCompletionBlock:v40];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10007C150;
  v31[3] = &unk_100131080;
  v31[4] = self;
  v30 = recordsCopy;
  v32 = v30;
  v24 = dsCopy;
  v33 = v24;
  v25 = handlerCopy;
  v37 = v25;
  v38 = &buf;
  v26 = batchCopy;
  v34 = v26;
  v27 = managerCopy;
  v35 = v27;
  v28 = groupCopy;
  v36 = v28;
  objc_copyWeak(&v39, &location);
  [v22 setModifyRecordsCompletionBlock:v31];
  v44 = v22;
  v29 = [NSArray arrayWithObjects:&v44 count:1];
  [(CloudRemoteStore *)self _addModifyRecordsOperations:v29 inOperationGroup:v28 operationQueue:self->_cloudTabsOperationQueue];

  objc_destroyWeak(&v39);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

- (id)_operationToDeleteCloudTabRecordIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:dsCopy];
  objc_initWeak(&location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007CE3C;
  v11[3] = &unk_100131300;
  v11[4] = self;
  objc_copyWeak(&v13, &location);
  v9 = handlerCopy;
  v12 = v9;
  [v8 setModifyRecordsCompletionBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

- (void)_recursivelyCancelDependentOperations:(id)operations operationQueue:(id)queue
{
  operationsCopy = operations;
  queueCopy = queue;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  operations = [queueCopy operations];
  v9 = [operations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(operations);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        dependencies = [v13 dependencies];
        v15 = [dependencies containsObject:operationsCopy];

        if (v15 && ([v13 isCancelled] & 1) == 0)
        {
          [v13 cancel];
          [(CloudTabRemoteStore *)self _recursivelyCancelDependentOperations:v13 operationQueue:queueCopy];
        }
      }

      v10 = [operations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

@end