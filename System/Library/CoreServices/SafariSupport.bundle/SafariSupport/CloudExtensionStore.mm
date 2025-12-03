@interface CloudExtensionStore
- (CloudExtensionStore)initWithContainer:(id)container;
- (id)_operationToDeleteCloudExtensionRecordIDs:(id)ds completionHandler:(id)handler;
- (void)_addDependenciesForModifyRecordsOperation:(id)operation operationQueue:(id)queue;
- (void)_addModifyRecordsOperations:(id)operations inOperationGroup:(id)group operationQueue:(id)queue;
- (void)_createCloudExtensionsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler;
- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)manager serverChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_recursivelyCancelDependentOperations:(id)operations operationQueue:(id)queue;
- (void)_saveCloudExtensionsRecordBatch:(id)batch inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveCloudExtensionsRecordBatch:(id)batch previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds retryManager:(id)manager inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveRecordZoneSubscriptionInOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler;
- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue;
- (void)createCloudExtensionsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudExtensionRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler;
- (void)fetchCloudExtensionsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)fetchCloudExtensionsZoneSubscriptionInOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveCloudExtensionsRecordBatch:(id)batch createCloudExtensionsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveCloudExtensionsZoneSubscriptionInOperationGroup:(id)group completionHandler:(id)handler;
@end

@implementation CloudExtensionStore

- (CloudExtensionStore)initWithContainer:(id)container
{
  containerCopy = container;
  v22.receiver = self;
  v22.super_class = CloudExtensionStore;
  v6 = [(CloudExtensionStore *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
    privateCloudDatabase = [(CKContainer *)v7->_container privateCloudDatabase];
    database = v7->_database;
    v7->_database = privateCloudDatabase;

    if (!v7->_database)
    {
      v10 = sub_1000D23FC();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000080B4();
      }
    }

    v11 = objc_alloc_init(NSOperationQueue);
    cloudExtensionsOperationQueue = v7->_cloudExtensionsOperationQueue;
    v7->_cloudExtensionsOperationQueue = v11;

    [(NSOperationQueue *)v7->_cloudExtensionsOperationQueue setQualityOfService:17];
    v13 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudExtensions.CloudExtensionStore.%@.%p.operationQueue", objc_opt_class(), v7];
    [(NSOperationQueue *)v7->_cloudExtensionsOperationQueue setName:v13];

    v14 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudExtensions.CloudExtensionStore.%@.%p.internalQueue", objc_opt_class(), v7];
    v15 = dispatch_queue_create([v14 UTF8String], 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v15;

    v17 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudExtensions.CloudExtensionStore.%@.%p.completionHandlerQueue", objc_opt_class(), v7];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    completionHandlerQueue = v7->_completionHandlerQueue;
    v7->_completionHandlerQueue = v18;

    v20 = v7;
  }

  return v7;
}

- (void)createCloudExtensionsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_1000D23FC()];
  [(CloudExtensionStore *)self _createCloudExtensionsRecordZoneInOperationGroup:groupCopy withRetryManager:v8 completionHandler:handlerCopy];
}

- (void)fetchCloudExtensionsZoneSubscriptionInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = sub_1000D23FC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching CloudExtensions zone subscription", buf, 2u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003624;
  block[3] = &unk_100130E50;
  v13 = groupCopy;
  v14 = handlerCopy;
  block[4] = self;
  v10 = groupCopy;
  v11 = handlerCopy;
  dispatch_async(internalQueue, block);
}

- (void)saveCloudExtensionsZoneSubscriptionInOperationGroup:(id)group completionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = sub_1000D23FC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Saving CloudExtensions zone subscription", buf, 2u);
  }

  objc_initWeak(buf, self);
  cloudExtensionsOperationQueue = self->_cloudExtensionsOperationQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100003A70;
  v12[3] = &unk_100130EA0;
  v10 = handlerCopy;
  v14 = v10;
  objc_copyWeak(&v15, buf);
  v11 = groupCopy;
  v13 = v11;
  [(CloudExtensionStore *)self _saveRecordZoneSubscriptionInOperationGroup:v11 operationQueue:cloudExtensionsOperationQueue completionHandler:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)saveCloudExtensionsRecordBatch:(id)batch createCloudExtensionsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group completionHandler:(id)handler
{
  batchCopy = batch;
  groupCopy = group;
  handlerCopy = handler;
  v13 = sub_1000D23FC();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *buf = 134217984;
    v25 = [batchCopy count];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Saving record batch of size: %lu", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003E88;
  v18[3] = &unk_100130F18;
  objc_copyWeak(&v22, buf);
  v15 = handlerCopy;
  v21 = v15;
  missingCopy = missing;
  v16 = groupCopy;
  v19 = v16;
  v17 = batchCopy;
  v20 = v17;
  [(CloudExtensionStore *)self _saveCloudExtensionsRecordBatch:v17 inOperationGroup:v16 completionHandler:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)deleteCloudExtensionRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler
{
  recordsCopy = records;
  groupCopy = group;
  handlerCopy = handler;
  v11 = [recordsCopy count];
  v12 = sub_1000D23FC();
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
      v17 = sub_1000D23FC();
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
          v33[2] = sub_100004580;
          v33[3] = &unk_100130F68;
          v34 = v21;
          v35 = v20;
          v36 = v27;
          selfCopy = self;
          v38 = v32;
          v28 = [(CloudExtensionStore *)self _operationToDeleteCloudExtensionRecordIDs:v27 completionHandler:v33];
          [v22 addObject:v28];

          v26 = v26 + 1;
        }

        while (v24 != v26);
        v24 = [obj countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v24);
    }

    groupCopy = v29;
    [(CloudExtensionStore *)self _addModifyRecordsOperations:v22 inOperationGroup:v29 operationQueue:self->_cloudExtensionsOperationQueue];

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

- (void)fetchCloudExtensionsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  tokenCopy = token;
  groupCopy = group;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  v17 = sub_1000D23FC();
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

  internalQueue = self->_internalQueue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000048B0;
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

- (void)_saveCloudExtensionsRecordBatch:(id)batch inOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  batchCopy = batch;
  v13 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_1000D23FC()];
  [(CloudExtensionStore *)self _saveCloudExtensionsRecordBatch:batchCopy previouslySavedRecords:v13 previouslyDeletedRecordIDs:v11 retryManager:v12 inOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_saveCloudExtensionsRecordBatch:(id)batch previouslySavedRecords:(id)records previouslyDeletedRecordIDs:(id)ds retryManager:(id)manager inOperationGroup:(id)group completionHandler:(id)handler
{
  batchCopy = batch;
  recordsCopy = records;
  dsCopy = ds;
  managerCopy = manager;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v20 = sub_1000D23FC();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [batchCopy count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving record batch with %lu records", &buf, 0xCu);
  }

  v22 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:batchCopy recordIDsToDelete:0];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x2020000000;
  v47 = 0;
  +[NSMutableArray array];
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_100004D28;
  v40[3] = &unk_100130FE0;
  v40[4] = self;
  v23 = p_buf = &buf;
  v41 = v23;
  [v22 setPerRecordCompletionBlock:v40];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100004FA0;
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
  [(CloudExtensionStore *)self _addModifyRecordsOperations:v29 inOperationGroup:v28 operationQueue:self->_cloudExtensionsOperationQueue];

  objc_destroyWeak(&v39);
  _Block_object_dispose(&buf, 8);

  objc_destroyWeak(&location);
}

- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  deletedBlockCopy = deletedBlock;
  blockCopy = block;
  tokenCopy = token;
  v17 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_1000D23FC()];
  [(CloudExtensionStore *)self _fetchRecordsOnInternalQueueWithRetryManager:v17 serverChangeToken:tokenCopy recordChangedBlock:blockCopy recordWithIDWasDeletedBlock:deletedBlockCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)manager serverChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  managerCopy = manager;
  tokenCopy = token;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v39 = sub_100003294();
  v19 = [handlerCopy copy];

  v20 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v20 setPreviousServerChangeToken:tokenCopy];
  v21 = [CKFetchRecordZoneChangesOperation alloc];
  v62 = v39;
  v22 = [NSArray arrayWithObjects:&v62 count:1];
  v60 = v39;
  v61 = v20;
  v23 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v24 = [v21 initWithRecordZoneIDs:v22 configurationsByRecordZoneID:v23];

  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_1000060CC;
  v57[3] = &unk_1001310A8;
  v57[4] = self;
  v25 = blockCopy;
  v58 = v25;
  [v24 setRecordChangedBlock:v57];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000061BC;
  v55[3] = &unk_1001310D0;
  v55[4] = self;
  v26 = deletedBlockCopy;
  v56 = v26;
  [v24 setRecordWithIDWasDeletedBlock:v55];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000062C0;
  v47[3] = &unk_100131148;
  v37 = managerCopy;
  v48 = v37;
  objc_copyWeak(&v54, &location);
  v27 = v19;
  v51 = v27;
  v28 = tokenCopy;
  v49 = v28;
  v29 = v25;
  v52 = v29;
  v30 = v26;
  v53 = v30;
  v31 = groupCopy;
  v50 = v31;
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10000661C;
  v44[3] = &unk_100131198;
  v44[4] = self;
  v32 = objc_retainBlock(v47);
  v45 = v32;
  v33 = v27;
  v46 = v33;
  [v24 setRecordZoneFetchCompletionBlock:v44];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100006A2C;
  v41[3] = &unk_1001311C0;
  v34 = v32;
  v41[4] = self;
  v42 = v34;
  v35 = v33;
  v43 = v35;
  [v24 setFetchRecordZoneChangesCompletionBlock:v41];
  v36 = sub_1000D23FC();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Enqueuing request to fetch records from CloudExtensions record zone", buf, 2u);
  }

  [(CloudExtensionStore *)self _scheduleOperation:v24 inOperationGroup:v31 operationQueue:self->_cloudExtensionsOperationQueue];

  objc_destroyWeak(&v54);
  objc_destroyWeak(&location);
}

- (void)_addModifyRecordsOperations:(id)operations inOperationGroup:(id)group operationQueue:(id)queue
{
  operationsCopy = operations;
  groupCopy = group;
  queueCopy = queue;
  v11 = sub_1000D23FC();
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
        [(CloudExtensionStore *)self _addDependenciesForModifyRecordsOperation:v18 operationQueue:queueCopy, v19];
        [(CloudExtensionStore *)self _scheduleOperation:v18 inOperationGroup:groupCopy operationQueue:queueCopy];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }
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

- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue
{
  operationCopy = operation;
  groupCopy = group;
  queueCopy = queue;
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100006FB8;
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

- (void)_createCloudExtensionsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler
{
  groupCopy = group;
  managerCopy = manager;
  handlerCopy = handler;
  v11 = sub_1000D23FC();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Creating CloudExtensions zone", buf, 2u);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007164;
  block[3] = &unk_100131260;
  v17 = managerCopy;
  v13 = managerCopy;
  objc_copyWeak(&v21, buf);
  selfCopy = self;
  v20 = handlerCopy;
  v18 = groupCopy;
  v14 = groupCopy;
  v15 = handlerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)_saveRecordZoneSubscriptionInOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler
{
  groupCopy = group;
  queueCopy = queue;
  handlerCopy = handler;
  v11 = objc_alloc_init(CKNotificationInfo);
  [v11 setShouldSendContentAvailable:1];
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000077F4;
  block[3] = &unk_1001312B0;
  v21 = queueCopy;
  v22 = handlerCopy;
  v18 = v11;
  selfCopy = self;
  v20 = groupCopy;
  v13 = queueCopy;
  v14 = groupCopy;
  v15 = handlerCopy;
  v16 = v11;
  dispatch_async(internalQueue, block);
}

- (id)_operationToDeleteCloudExtensionRecordIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v8 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:dsCopy];
  objc_initWeak(&location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100007B90;
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
          [(CloudExtensionStore *)self _recursivelyCancelDependentOperations:v13 operationQueue:queueCopy];
        }
      }

      v10 = [operations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

@end