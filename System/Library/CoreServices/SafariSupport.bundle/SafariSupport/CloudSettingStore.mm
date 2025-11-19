@interface CloudSettingStore
- (CloudSettingStore)initWithContainer:(id)a3;
- (WBSHashGenerator)hashGenerator;
- (id)createOperationGroupWithName:(id)a3 useLargerExpectedSendSize:(BOOL)a4;
- (void)_createCloudSettingsRecordZoneInOperationGroup:(id)a3 withRetryManager:(id)a4 completionHandler:(id)a5;
- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)a3 serverChangeToken:(id)a4 recordChangedBlock:(id)a5 recordWithIDWasDeletedBlock:(id)a6 inOperationGroup:(id)a7 completionHandler:(id)a8;
- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)a3 recordChangedBlock:(id)a4 recordWithIDWasDeletedBlock:(id)a5 inOperationGroup:(id)a6 completionHandler:(id)a7;
- (void)_saveCloudSettingsRecords:(id)a3 inOperationGroup:(id)a4 clientChangeTokenData:(id)a5 mergeHandler:(id)a6 completionHandler:(id)a7;
- (void)_saveCloudSettingsRecords:(id)a3 retryManager:(id)a4 inOperationGroup:(id)a5 clientChangeTokenData:(id)a6 mergeHandler:(id)a7 completionHandler:(id)a8;
- (void)_saveOrLoadRecord:(id)a3 inOperationGroup:(id)a4 withCompletionHandler:(id)a5;
- (void)_saveRecordZoneSubscriptionForZoneID:(id)a3 subscriptionID:(id)a4 inOperationGroup:(id)a5 operationQueue:(id)a6 completionHandler:(id)a7;
- (void)_scheduleOperation:(id)a3 inOperationGroup:(id)a4 operationQueue:(id)a5;
- (void)_setUpEncryptionInfoInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_setUpEncryptionInfoInOperationGroup:(id)a3 withRetryManager:(id)a4 completionHandler:(id)a5;
- (void)clearCachedCloudSettingsRecordZone;
- (void)createCloudSettingsRecordZoneInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)deleteCloudSettingsRecords:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)deleteCloudSettingsZoneInOperationGroup:(id)a3 completion:(id)a4;
- (void)fetchCloudSettingsRecordChangesSinceServerChangeToken:(id)a3 inOperationGroup:(id)a4 recordChangedBlock:(id)a5 recordWithIDWasDeletedBlock:(id)a6 completionHandler:(id)a7;
- (void)fetchCloudSettingsZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchNumberOfDevicesInSyncCircleInOperationGroup:(id)a3 completion:(id)a4;
- (void)generateEncryptedHashStringWithComponents:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)saveCloudSettingsRecords:(id)a3 createCloudSettingsZoneIfMissing:(BOOL)a4 inOperationGroup:(id)a5 clientChangeTokenData:(id)a6 mergeHandler:(id)a7 completionHandler:(id)a8;
- (void)saveCloudSettingsZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
@end

@implementation CloudSettingStore

- (CloudSettingStore)initWithContainer:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = CloudSettingStore;
  v6 = [(CloudSettingStore *)&v24 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
    v8 = [(CKContainer *)v7->_container privateCloudDatabase];
    database = v7->_database;
    v7->_database = v8;

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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_threadUnsafeHashGenerator;
  objc_sync_exit(v2);

  return v3;
}

- (void)generateEncryptedHashStringWithComponents:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100033C44;
  v10[3] = &unk_100132A30;
  v11 = a3;
  v12 = a5;
  v10[4] = self;
  v8 = v11;
  v9 = v12;
  [(CloudSettingStore *)self createCloudSettingsRecordZoneInOperationGroup:a4 completionHandler:v10];
}

- (id)createOperationGroupWithName:(id)a3 useLargerExpectedSendSize:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(CKOperationGroup);
  [v6 setName:v5];

  if (v4)
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

- (void)fetchCloudSettingsRecordChangesSinceServerChangeToken:(id)a3 inOperationGroup:(id)a4 recordChangedBlock:(id)a5 recordWithIDWasDeletedBlock:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_10000300C();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v18)
    {
      v19 = v17;
      v20 = [v13 safari_logDescription];
      *buf = 138543618;
      v37 = v12;
      v38 = 2114;
      v39 = v20;
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
    v20 = [v13 safari_logDescription];
    *buf = 138543362;
    v37 = v20;
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
  v31 = v12;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v25 = v16;
  v26 = v13;
  v27 = v15;
  v28 = v14;
  v29 = v12;
  dispatch_async(internalQueue, v30);
}

- (void)_fetchRecordsOnInternalQueueWithServerChangeToken:(id)a3 recordChangedBlock:(id)a4 recordWithIDWasDeletedBlock:(id)a5 inOperationGroup:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  [(CloudSettingStore *)self _fetchRecordsOnInternalQueueWithRetryManager:v17 serverChangeToken:v16 recordChangedBlock:v15 recordWithIDWasDeletedBlock:v14 inOperationGroup:v13 completionHandler:v12];
}

- (void)_fetchRecordsOnInternalQueueWithRetryManager:(id)a3 serverChangeToken:(id)a4 recordChangedBlock:(id)a5 recordWithIDWasDeletedBlock:(id)a6 inOperationGroup:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v43 = a6;
  v17 = a7;
  v44 = a8;
  v18 = objc_alloc_init(CKFetchRecordZoneChangesConfiguration);
  [v18 setPreviousServerChangeToken:v15];
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
  v25 = v17;
  v68 = v25;
  v69 = self;
  v26 = v16;
  v70 = v26;
  [v24 setRecordChangedBlock:v67];
  v63[0] = _NSConcreteStackBlock;
  v63[1] = 3221225472;
  v63[2] = sub_10003467C;
  v63[3] = &unk_100132A80;
  v27 = v25;
  v64 = v27;
  v65 = self;
  v28 = v43;
  v66 = v28;
  [v24 setRecordWithIDWasDeletedBlock:v63];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100034810;
  v56[3] = &unk_100132AA8;
  v56[4] = self;
  v57 = v14;
  v29 = v44;
  v60 = v29;
  v61 = v26;
  v58 = v15;
  v62 = v28;
  v30 = v27;
  v59 = v30;
  v31 = v28;
  v45 = v26;
  v32 = v15;
  v33 = v14;
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
  v49 = self;
  v51 = v36;
  v38 = v36;
  v39 = v34;
  [v24 setFetchRecordZoneChangesCompletionBlock:v47];
  v40 = sub_10000300C();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = v40;
    v42 = [v37 safari_logDescription];
    *buf = 138543618;
    v72 = @"CloudSettings";
    v73 = 2114;
    v74 = v42;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Enqueuing request to fetch records from record zone %{public}@ with %{public}@", buf, 0x16u);
  }

  [(CloudSettingStore *)self _scheduleOperation:v24 inOperationGroup:v37 operationQueue:self->_cloudSettingsOperationQueue, v43];
}

- (void)fetchNumberOfDevicesInSyncCircleInOperationGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100035314;
  v11[3] = &unk_100132B48;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(CloudSettingStore *)self _createCloudSettingsRecordZoneInOperationGroup:v10 withRetryManager:v8 completionHandler:v11];
}

- (void)saveCloudSettingsZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000300C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 safari_logDescription];
    *buf = 138543362;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings zone subscription with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v11 = sub_100033914();
  cloudSettingsOperationQueue = self->_cloudSettingsOperationQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100035570;
  v15[3] = &unk_100130EA0;
  v13 = v7;
  v17 = v13;
  objc_copyWeak(&v18, buf);
  v14 = v6;
  v16 = v14;
  [(CloudSettingStore *)self _saveRecordZoneSubscriptionForZoneID:v11 subscriptionID:@"CloudSettingsZoneSubscription" inOperationGroup:v14 operationQueue:cloudSettingsOperationQueue completionHandler:v15];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);
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
  block[2] = sub_100035A04;
  block[3] = &unk_100132B98;
  v26 = v12;
  v27 = v13;
  v28 = v17;
  v29 = v14;
  v31 = v15;
  v32 = v16;
  v30 = self;
  v19 = v15;
  v20 = v16;
  v21 = v14;
  v22 = v17;
  v23 = v13;
  v24 = v12;
  dispatch_async(internalQueue, block);
}

- (void)saveCloudSettingsRecords:(id)a3 createCloudSettingsZoneIfMissing:(BOOL)a4 inOperationGroup:(id)a5 clientChangeTokenData:(id)a6 mergeHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = sub_10000300C();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v19;
    v21 = [v15 safari_logDescription];
    *buf = 138543362;
    v36 = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving CloudSettings record with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100035ED4;
  v27[3] = &unk_100132BE8;
  objc_copyWeak(&v33, buf);
  v22 = v18;
  v31 = v22;
  v34 = a4;
  v23 = v15;
  v28 = v23;
  v24 = v14;
  v29 = v24;
  v25 = v16;
  v30 = v25;
  v26 = v17;
  v32 = v26;
  [(CloudSettingStore *)self _saveCloudSettingsRecords:v24 inOperationGroup:v23 clientChangeTokenData:v25 mergeHandler:v26 completionHandler:v27];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

- (void)_saveCloudSettingsRecords:(id)a3 inOperationGroup:(id)a4 clientChangeTokenData:(id)a5 mergeHandler:(id)a6 completionHandler:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  [(CloudSettingStore *)self _saveCloudSettingsRecords:v16 retryManager:v17 inOperationGroup:v15 clientChangeTokenData:v14 mergeHandler:v13 completionHandler:v12];
}

- (void)_saveCloudSettingsRecords:(id)a3 retryManager:(id)a4 inOperationGroup:(id)a5 clientChangeTokenData:(id)a6 mergeHandler:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v33 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v32 = a8;
  v18 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v14 recordIDsToDelete:0];
  v31 = v16;
  v19 = [v16 copy];
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
  v21 = v15;
  v44 = v21;
  v22 = v17;
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
  v24 = v32;
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
  v29 = v33;
  v38 = v29;
  v30 = v14;
  v39 = v30;
  [v18 setModifyRecordsCompletionBlock:v34];
  [(CloudSettingStore *)self _scheduleOperation:v18 inOperationGroup:v25 operationQueue:self->_cloudSettingsOperationQueue];

  _Block_object_dispose(v48, 8);
}

- (void)deleteCloudSettingsRecords:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  v12 = sub_10000300C();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = v12;
      v15 = [v8 count];
      v16 = [v9 safari_logDescription];
      *buf = 134218242;
      v25 = v15;
      v26 = 2114;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting %lu records with %{public}@", buf, 0x16u);
    }

    v17 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:v8];
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_100037820;
    v21[3] = &unk_100132CD8;
    v21[4] = self;
    v18 = v9;
    v22 = v18;
    v23 = v10;
    [v17 setModifyRecordsCompletionBlock:v21];
    [(CloudSettingStore *)self _scheduleOperation:v17 inOperationGroup:v18 operationQueue:self->_cloudSettingsOperationQueue];
  }

  else
  {
    if (v13)
    {
      v19 = v12;
      v20 = [v9 safari_logDescription];
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No records to delete with %{public}@", buf, 0xCu);
    }

    (*(v10 + 2))(v10, 0);
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

- (void)deleteCloudSettingsZoneInOperationGroup:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000300C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 safari_logDescription];
    *buf = 138543362;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Deleting CloudSettings zone with %{public}@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100037CA4;
  block[3] = &unk_100130E50;
  v15 = v6;
  v16 = v7;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  dispatch_async(internalQueue, block);
}

- (void)createCloudSettingsRecordZoneInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  [(CloudSettingStore *)self _createCloudSettingsRecordZoneInOperationGroup:v7 withRetryManager:v8 completionHandler:v6];
}

- (void)fetchCloudSettingsZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_10000300C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 safari_logDescription];
    *buf = 138543362;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Fetching CloudSettings zone subscription with %{public}@", buf, 0xCu);
  }

  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003810C;
  block[3] = &unk_100131A20;
  v15 = v6;
  v16 = self;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  dispatch_async(internalQueue, block);
}

- (void)_createCloudSettingsRecordZoneInOperationGroup:(id)a3 withRetryManager:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 safari_logDescription];
    *buf = 138543362;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating CloudSettings zone with %{public}@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  internalQueue = self->_internalQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100038624;
  block[3] = &unk_100132E80;
  v21 = v10;
  block[4] = self;
  v19 = v8;
  v15 = v8;
  v16 = v10;
  objc_copyWeak(&v22, buf);
  v20 = v9;
  v17 = v9;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);
}

- (void)_saveOrLoadRecord:(id)a3 inOperationGroup:(id)a4 withCompletionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v9 safari_logDescription];
    *buf = 138543362;
    v27 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Attempting to save/load record with %{public}@", buf, 0xCu);
  }

  v14 = [CKModifyRecordsOperation alloc];
  v25 = v8;
  v15 = [NSArray arrayWithObjects:&v25 count:1];
  v16 = [v14 initWithRecordsToSave:v15 recordIDsToDelete:0];

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000395B0;
  v20[3] = &unk_100132ED0;
  v21 = v8;
  v22 = v9;
  v23 = self;
  v24 = v10;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  [v16 setModifyRecordsCompletionBlock:v20];
  [(CloudSettingStore *)self _scheduleOperation:v16 inOperationGroup:v18 operationQueue:self->_cloudSettingsOperationQueue];
}

- (void)_setUpEncryptionInfoInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_10000300C()];
  [(CloudSettingStore *)self _setUpEncryptionInfoInOperationGroup:v7 withRetryManager:v8 completionHandler:v6];
}

- (void)_setUpEncryptionInfoInOperationGroup:(id)a3 withRetryManager:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_10000300C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v8 safari_logDescription];
    *buf = 138543362;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Creating encryption record with %{public}@", buf, 0xCu);
  }

  v14 = objc_alloc_init(WBSHashGenerator);
  v15 = sub_100033914();
  v16 = [v14 encryptionInfoRecordWithZone:v15];

  v17 = sub_10000300C();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v19 = [v8 safari_logDescription];
    *buf = 138543362;
    v28 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Attempting to save/load encryption record with %{public}@", buf, 0xCu);
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100039B8C;
  v23[3] = &unk_100132F48;
  v23[4] = self;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v20 = v9;
  v21 = v10;
  v22 = v8;
  [(CloudSettingStore *)self _saveOrLoadRecord:v16 inOperationGroup:v22 withCompletionHandler:v23];
}

- (void)_scheduleOperation:(id)a3 inOperationGroup:(id)a4 operationQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  internalQueue = self->_internalQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10003A3D0;
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