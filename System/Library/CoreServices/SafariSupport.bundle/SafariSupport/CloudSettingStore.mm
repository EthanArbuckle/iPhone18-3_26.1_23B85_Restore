@interface CloudSettingStore
- (CloudSettingStore)initWithContainer:(id)container;
- (WBSHashGenerator)hashGenerator;
- (id)createOperationGroupWithName:(id)name useLargerExpectedSendSize:(BOOL)size;
- (void)_createCloudSettingsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler;
- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)manager serverChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_saveCloudSettingsRecords:(id)records inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_saveCloudSettingsRecords:(id)records retryManager:(id)manager inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)_saveOrLoadRecord:(id)record inOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_saveRecordZoneSubscriptionForZoneID:(id)d subscriptionID:(id)iD inOperationGroup:(id)group operationQueue:(id)queue completionHandler:(id)handler;
- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue;
- (void)_setUpEncryptionInfoInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_setUpEncryptionInfoInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler;
- (void)clearCachedCloudSettingsRecordZone;
- (void)createCloudSettingsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudSettingsRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler;
- (void)deleteCloudSettingsZoneInOperationGroup:(id)group completion:(id)completion;
- (void)fetchCloudSettingsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)fetchCloudSettingsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)fetchNumberOfDevicesInSyncCircleInOperationGroup:(id)group completion:(id)completion;
- (void)generateEncryptedHashStringWithComponents:(id)components inOperationGroup:(id)group completionHandler:(id)handler;
- (void)saveCloudSettingsRecords:(id)records createCloudSettingsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler;
- (void)saveCloudSettingsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
@end

@implementation CloudSettingStore

- (CloudSettingStore)initWithContainer:(id)container
{
  containerCopy = container;
  v24.receiver = self;
  v24.super_class = CloudSettingStore;
  v6 = [(CloudSettingStore *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, container);
    privateCloudDatabase = [(CKContainer *)v7->_container privateCloudDatabase];
    database = v7->_database;
    v7->_database = privateCloudDatabase;

    if (!v7->_database)
    {
      v10 = sub_10000300C();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10003A5E4(v10);
      }
    }

    v11 = objc_alloc_init(NSOperationQueue);
    cloudSettingsOperationQueue = v7->_cloudSettingsOperationQueue;
    v7->_cloudSettingsOperationQueue = v11;

    [(NSOperationQueue *)v7->_cloudSettingsOperationQueue setQualityOfService:17];
    v13 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudSettings.CloudSettingStore.%@.%p.operationQueue", objc_opt_class(), v7];
    [(NSOperationQueue *)v7->_cloudSettingsOperationQueue setName:v13];

    v14 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudSettings.CloudSettingStore.%@.%p.internalQueue", objc_opt_class(), v7];
    v15 = dispatch_queue_create([v14 UTF8String], 0);
    internalQueue = v7->_internalQueue;
    v7->_internalQueue = v15;

    v17 = [NSString stringWithFormat:@"com.apple.SafariBookmarksSyncAgent.CloudSettings.CloudSettingStore.%@.%p.completionHandlerQueue", objc_opt_class(), v7];
    v18 = dispatch_queue_create([v17 UTF8String], 0);
    completionHandlerQueue = v7->_completionHandlerQueue;
    v7->_completionHandlerQueue = v18;

    v20 = +[NSMutableArray array];
    pendingZoneCreationCompletionHandlers = v7->_pendingZoneCreationCompletionHandlers;
    v7->_pendingZoneCreationCompletionHandlers = v20;

    v7->_isCreatingZone = 0;
    v22 = v7;
  }

  return v7;
}

- (WBSHashGenerator)hashGenerator
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_threadUnsafeHashGenerator;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)generateEncryptedHashStringWithComponents:(id)components inOperationGroup:(id)group completionHandler:(id)handler
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100033C44;
  v10[3] = &unk_100132A30;
  componentsCopy = components;
  handlerCopy = handler;
  v10[4] = self;
  v8 = componentsCopy;
  v9 = handlerCopy;
  [(CloudSettingStore *)self createCloudSettingsRecordZoneInOperationGroup:group completionHandler:v10];
}

- (id)createOperationGroupWithName:(id)name useLargerExpectedSendSize:(BOOL)size
{
  sizeCopy = size;
  nameCopy = name;
  v6 = objc_alloc_init(CKOperationGroup);
  [v6 setName:nameCopy];

  if (sizeCopy)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setExpectedSendSize:v7];
  [v6 setExpectedReceiveSize:2];

  return v6;
}

- (void)fetchCloudSettingsRecordChangesSinceServerChangeToken:(id)token inOperationGroup:(id)group recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  tokenCopy = token;
  groupCopy = group;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  v17 = sub_10000300C();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (tokenCopy)
  {
    if (v18)
    {
      v19 = v17;
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 138543618;
      v37 = tokenCopy;
      v38 = 2114;
      v39 = safari_logDescription;
      v21 = "Fetching record changes with server change token %{public}@ with %{public}@";
      v22 = v19;
      v23 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    }
  }

  else if (v18)
  {
    v19 = v17;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v37 = safari_logDescription;
    v21 = "Fetching all records with %{public}@";
    v22 = v19;
    v23 = 12;
    goto LABEL_6;
  }

  internalQueue = self->_internalQueue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100033FAC;
  v30[3] = &unk_100130F90;
  v30[4] = self;
  v31 = tokenCopy;
  v32 = groupCopy;
  v33 = blockCopy;
  v34 = deletedBlockCopy;
  v35 = handlerCopy;
  v25 = handlerCopy;
  v26 = groupCopy;
  v27 = deletedBlockCopy;
  v28 = blockCopy;
  v29 = tokenCopy;
  dispatch_async(internalQueue, v30);
}

- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  deletedBlockCopy = deletedBlock;
  blockCopy = block;
  tokenCopy = token;
  v17 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  [(CloudSettingStore *)self _fetchRecordsOnInternalQueueWithRetryManager:v17 serverChangeToken:tokenCopy recordChangedBlock:blockCopy recordWithIDWasDeletedBlock:deletedBlockCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
}

- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)manager serverChangeToken:(id)token recordChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock inOperationGroup:(id)group completionHandler:(id)handler
{
  managerCopy = manager;
  tokenCopy = token;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  groupCopy = group;
  handlerCopy = handler;
  v18 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v18 setPreviousServerChangeToken:tokenCopy];
  v19 = [CKFetchRecordZoneChangesOperation alloc];
  v20 = sub_100033914();
  v77 = v20;
  v21 = [NSArray arrayWithObjects:&v77 count:1];
  v22 = sub_100033914();
  v75 = v22;
  v76 = v18;
  v46 = v18;
  v23 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
  v24 = [v19 initWithRecordZoneIDs:v21 configurationsByRecordZoneID:v23];

  v67[0] = _NSConcreteStackBlock;
  v67[1] = 3221225472;
  v67[2] = sub_100034588;
  v67[3] = &unk_100132A58;
  v25 = groupCopy;
  v68 = v25;
  selfCopy = self;
  v26 = blockCopy;
  v70 = v26;
  [v24 setRecordChangedBlock:v67];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10003467C;
  v63[3] = &unk_100132A80;
  v27 = v25;
  v64 = v27;
  selfCopy2 = self;
  v28 = deletedBlockCopy;
  v66 = v28;
  [v24 setRecordWithIDWasDeletedBlock:v63];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100034810;
  v56[3] = &unk_100132AA8;
  v56[4] = self;
  v57 = managerCopy;
  v29 = handlerCopy;
  v60 = v29;
  v61 = v26;
  v58 = tokenCopy;
  v62 = v28;
  v30 = v27;
  v59 = v30;
  v31 = v28;
  v45 = v26;
  v32 = tokenCopy;
  v33 = managerCopy;
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100034BD8;
  v52[3] = &unk_100132AF8;
  v52[4] = self;
  v34 = objc_retainBlock(v56);
  v54 = v34;
  v35 = v30;
  v53 = v35;
  v36 = v29;
  v55 = v36;
  [v24 setRecordZoneFetchCompletionBlock:v52];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10003507C;
  v47[3] = &unk_100132B20;
  v50 = v34;
  v37 = v35;
  v48 = v37;
  selfCopy3 = self;
  v51 = v36;
  v38 = v36;
  v39 = v34;
  [v24 setFetchRecordZoneChangesCompletionBlock:v47];
  v40 = sub_10000300C();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = v40;
    safari_logDescription = [v37 safari_logDescription];
    *buf = 138543618;
    v72 = @"CloudSettings";
    v73 = 2114;
    v74 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Enqueuing request to fetch records from record zone %{public}@ with %{public}@", buf, 0x16u);
  }

  [(CloudSettingStore *)self _scheduleOperation:v24 inOperationGroup:v37 operationQueue:self->_cloudSettingsOperationQueue, deletedBlockCopy];
}

- (void)fetchNumberOfDevicesInSyncCircleInOperationGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100035314;
  v11[3] = &unk_100132B48;
  v12 = groupCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = groupCopy;
  [(CloudSettingStore *)self _createCloudSettingsRecordZoneInOperationGroup:v10 withRetryManager:v8 completionHandler:v11];
}

- (void)saveCloudSettingsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = sub_10000300C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v20 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings zone subscription with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v11 = sub_100033914();
  cloudSettingsOperationQueue = self->_cloudSettingsOperationQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100035570;
  v15[3] = &unk_100130EA0;
  v13 = handlerCopy;
  v17 = v13;
  objc_copyWeak(&v18, buf);
  v14 = groupCopy;
  v16 = v14;
  [(CloudSettingStore *)self _saveRecordZoneSubscriptionForZoneID:v11 subscriptionID:@"CloudSettingsZoneSubscription" inOperationGroup:v14 operationQueue:cloudSettingsOperationQueue completionHandler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
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
  block[2] = sub_100035A04;
  block[3] = &unk_100132B98;
  v26 = dCopy;
  v27 = iDCopy;
  v28 = v17;
  v29 = groupCopy;
  v31 = queueCopy;
  v32 = handlerCopy;
  selfCopy = self;
  v19 = queueCopy;
  v20 = handlerCopy;
  v21 = groupCopy;
  v22 = v17;
  v23 = iDCopy;
  v24 = dCopy;
  dispatch_async(internalQueue, block);
}

- (void)saveCloudSettingsRecords:(id)records createCloudSettingsZoneIfMissing:(BOOL)missing inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  recordsCopy = records;
  groupCopy = group;
  dataCopy = data;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v19 = sub_10000300C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v36 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings record with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100035ED4;
  v27[3] = &unk_100132BE8;
  objc_copyWeak(&v33, buf);
  v22 = completionHandlerCopy;
  v31 = v22;
  missingCopy = missing;
  v23 = groupCopy;
  v28 = v23;
  v24 = recordsCopy;
  v29 = v24;
  v25 = dataCopy;
  v30 = v25;
  v26 = handlerCopy;
  v32 = v26;
  [(CloudSettingStore *)self _saveCloudSettingsRecords:v24 inOperationGroup:v23 clientChangeTokenData:v25 mergeHandler:v26 completionHandler:v27];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

- (void)_saveCloudSettingsRecords:(id)records inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  dataCopy = data;
  groupCopy = group;
  recordsCopy = records;
  v17 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  [(CloudSettingStore *)self _saveCloudSettingsRecords:recordsCopy retryManager:v17 inOperationGroup:groupCopy clientChangeTokenData:dataCopy mergeHandler:handlerCopy completionHandler:completionHandlerCopy];
}

- (void)_saveCloudSettingsRecords:(id)records retryManager:(id)manager inOperationGroup:(id)group clientChangeTokenData:(id)data mergeHandler:(id)handler completionHandler:(id)completionHandler
{
  recordsCopy = records;
  managerCopy = manager;
  groupCopy = group;
  dataCopy = data;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v18 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:recordsCopy recordIDsToDelete:0];
  v31 = dataCopy;
  v19 = [dataCopy copy];
  [v18 setClientChangeTokenData:v19];
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2020000000;
  v49 = 0;
  v20 = +[NSMutableArray array];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_1000366F8;
  v43[3] = &unk_100132C38;
  v43[4] = self;
  v21 = groupCopy;
  v44 = v21;
  v22 = handlerCopy;
  v46 = v22;
  v23 = v20;
  v45 = v23;
  v47 = v48;
  [v18 setPerRecordCompletionBlock:v43];
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100036B74;
  v34[3] = &unk_100132CB0;
  v34[4] = self;
  v24 = completionHandlerCopy;
  v40 = v24;
  v25 = v21;
  v35 = v25;
  v42 = v48;
  v26 = v23;
  v36 = v26;
  v27 = v19;
  v37 = v27;
  v28 = v22;
  v41 = v28;
  v29 = managerCopy;
  v38 = v29;
  v30 = recordsCopy;
  v39 = v30;
  [v18 setModifyRecordsCompletionBlock:v34];
  [(CloudSettingStore *)self _scheduleOperation:v18 inOperationGroup:v25 operationQueue:self->_cloudSettingsOperationQueue];

  _Block_object_dispose(v48, 8);
}

- (void)deleteCloudSettingsRecords:(id)records inOperationGroup:(id)group completionHandler:(id)handler
{
  recordsCopy = records;
  groupCopy = group;
  handlerCopy = handler;
  v11 = [recordsCopy count];
  v12 = sub_10000300C();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = v12;
      v15 = [recordsCopy count];
      safari_logDescription = [groupCopy safari_logDescription];
      *buf = 134218242;
      v25 = v15;
      v26 = 2114;
      v27 = safari_logDescription;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting %lu records with %{public}@", buf, 0x16u);
    }

    v17 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:recordsCopy];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100037820;
    v21[3] = &unk_100132CD8;
    v21[4] = self;
    v18 = groupCopy;
    v22 = v18;
    v23 = handlerCopy;
    [v17 setModifyRecordsCompletionBlock:v21];
    [(CloudSettingStore *)self _scheduleOperation:v17 inOperationGroup:v18 operationQueue:self->_cloudSettingsOperationQueue];
  }

  else
  {
    if (v13)
    {
      v19 = v12;
      safari_logDescription2 = [groupCopy safari_logDescription];
      *buf = 138543362;
      v25 = safari_logDescription2;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No records to delete with %{public}@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (void)clearCachedCloudSettingsRecordZone
{
  v3 = sub_10000300C();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Clearing cached CloudSettings record zone", buf, 2u);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037AFC;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(internalQueue, block);
  completionHandlerQueue = self->_completionHandlerQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100037B34;
  v6[3] = &unk_100131408;
  v6[4] = self;
  dispatch_async(completionHandlerQueue, v6);
}

- (void)deleteCloudSettingsZoneInOperationGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  v8 = sub_10000300C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v18 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleting CloudSettings zone with %{public}@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037CA4;
  block[3] = &unk_100130E50;
  v15 = groupCopy;
  v16 = completionCopy;
  block[4] = self;
  v12 = groupCopy;
  v13 = completionCopy;
  dispatch_async(internalQueue, block);
}

- (void)createCloudSettingsRecordZoneInOperationGroup:(id)group completionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  [(CloudSettingStore *)self _createCloudSettingsRecordZoneInOperationGroup:groupCopy withRetryManager:v8 completionHandler:handlerCopy];
}

- (void)fetchCloudSettingsZoneSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = sub_10000300C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v19 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching CloudSettings zone subscription with %{public}@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003810C;
  block[3] = &unk_100131A20;
  v15 = groupCopy;
  selfCopy = self;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = groupCopy;
  dispatch_async(internalQueue, block);
}

- (void)_createCloudSettingsRecordZoneInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler
{
  groupCopy = group;
  managerCopy = manager;
  handlerCopy = handler;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v24 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating CloudSettings zone with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038624;
  block[3] = &unk_100132E80;
  v21 = handlerCopy;
  block[4] = self;
  v19 = groupCopy;
  v15 = groupCopy;
  v16 = handlerCopy;
  objc_copyWeak(&v22, buf);
  v20 = managerCopy;
  v17 = managerCopy;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)_saveOrLoadRecord:(id)record inOperationGroup:(id)group withCompletionHandler:(id)handler
{
  recordCopy = record;
  groupCopy = group;
  handlerCopy = handler;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v27 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Attempting to save/load record with %{public}@", buf, 0xCu);
  }

  v14 = [CKModifyRecordsOperation alloc];
  v25 = recordCopy;
  v15 = [NSArray arrayWithObjects:&v25 count:1];
  v16 = [v14 initWithRecordsToSave:v15 recordIDsToDelete:0];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000395B0;
  v20[3] = &unk_100132ED0;
  v21 = recordCopy;
  v22 = groupCopy;
  selfCopy = self;
  v24 = handlerCopy;
  v17 = handlerCopy;
  v18 = groupCopy;
  v19 = recordCopy;
  [v16 setModifyRecordsCompletionBlock:v20];
  [(CloudSettingStore *)self _scheduleOperation:v16 inOperationGroup:v18 operationQueue:self->_cloudSettingsOperationQueue];
}

- (void)_setUpEncryptionInfoInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  [(CloudSettingStore *)self _setUpEncryptionInfoInOperationGroup:groupCopy withRetryManager:v8 completionHandler:handlerCopy];
}

- (void)_setUpEncryptionInfoInOperationGroup:(id)group withRetryManager:(id)manager completionHandler:(id)handler
{
  groupCopy = group;
  managerCopy = manager;
  handlerCopy = handler;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    safari_logDescription = [groupCopy safari_logDescription];
    *buf = 138543362;
    v28 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating encryption record with %{public}@", buf, 0xCu);
  }

  v14 = objc_alloc_init(WBSHashGenerator);
  v15 = sub_100033914();
  v16 = [v14 encryptionInfoRecordWithZone:v15];

  v17 = sub_10000300C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    safari_logDescription2 = [groupCopy safari_logDescription];
    *buf = 138543362;
    v28 = safari_logDescription2;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Attempting to save/load encryption record with %{public}@", buf, 0xCu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100039B8C;
  v23[3] = &unk_100132F48;
  v23[4] = self;
  v24 = groupCopy;
  v25 = managerCopy;
  v26 = handlerCopy;
  v20 = managerCopy;
  v21 = handlerCopy;
  v22 = groupCopy;
  [(CloudSettingStore *)self _saveOrLoadRecord:v16 inOperationGroup:v22 withCompletionHandler:v23];
}

- (void)_scheduleOperation:(id)operation inOperationGroup:(id)group operationQueue:(id)queue
{
  operationCopy = operation;
  groupCopy = group;
  queueCopy = queue;
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003A3D0;
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