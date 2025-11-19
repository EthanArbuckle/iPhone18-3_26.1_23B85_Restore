@interface CloudTabRemoteStore
- (CloudTabRemoteStore)initWithContainer:(id)a3;
- (id)_operationToDeleteCloudTabRecordIDs:(id)a3 completionHandler:(id)a4;
- (id)_zoneID;
- (void)_createCloudTabsRecordZoneInOperationGroup:(id)a3 withRetryManager:(id)a4 completionHandler:(id)a5;
- (void)_recursivelyCancelDependentOperations:(id)a3 operationQueue:(id)a4;
- (void)_saveCloudTabsRecordBatch:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_saveCloudTabsRecordBatch:(id)a3 previouslySavedRecords:(id)a4 previouslyDeletedRecordIDs:(id)a5 retryManager:(id)a6 inOperationGroup:(id)a7 completionHandler:(id)a8;
- (void)createCloudTabsRecordZoneInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)deleteCloudTabRecords:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)deleteCloudTabsZoneInOperationGroup:(id)a3 completionHandler:(id)a4;
- (void)fetchCloudTabsRecordChangesSinceServerChangeToken:(id)a3 inOperationGroup:(id)a4 recordChangedBlock:(id)a5 recordWithIDWasDeletedBlock:(id)a6 completionHandler:(id)a7;
- (void)fetchCloudTabsZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)saveCloudTabsRecordBatch:(id)a3 createCloudTabsZoneIfMissing:(BOOL)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)saveCloudTabsZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
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

- (CloudTabRemoteStore)initWithContainer:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = CloudTabRemoteStore;
  v6 = [(CloudRemoteStore *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_container, a3);
    v8 = [v5 containerIdentifier];
    v7->_usesManateeContainer = [v8 isEqualToString:WBSCloudTabManateeContainerIdentifier];

    v9 = [(CKContainer *)v7->_container privateCloudDatabase];
    threadUnsafeDatabase = v7->_threadUnsafeDatabase;
    v7->_threadUnsafeDatabase = v9;

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

- (void)createCloudTabsRecordZoneInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_100001B78()];
  [(CloudTabRemoteStore *)self _createCloudTabsRecordZoneInOperationGroup:v7 withRetryManager:v8 completionHandler:v6];
}

- (void)fetchCloudTabsZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(internalQueue, block);
}

- (void)saveCloudTabsZoneSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v11 = v7;
  v15 = v11;
  objc_copyWeak(&v16, &location);
  v12 = v6;
  v14 = v12;
  [(CloudRemoteStore *)self _saveRecordZoneSubscriptionForZoneID:v9 subscriptionID:@"CloudTabsZoneSubscription" inOperationGroup:v12 operationQueue:cloudTabsOperationQueue completionHandler:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)fetchCloudTabsRecordChangesSinceServerChangeToken:(id)a3 inOperationGroup:(id)a4 recordChangedBlock:(id)a5 recordWithIDWasDeletedBlock:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = sub_100001B78();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v18)
    {
      *buf = 138543362;
      v35 = v12;
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
  v29 = v12;
  v30 = v13;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v23 = v16;
  v24 = v13;
  v25 = v15;
  v26 = v14;
  v27 = v12;
  dispatch_async(internalQueue, v28);
}

- (void)saveCloudTabsRecordBatch:(id)a3 createCloudTabsZoneIfMissing:(BOOL)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  objc_initWeak(&location, self);
  v13 = sub_100001B78();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 count];
    *buf = 134217984;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Saving record batch of size: %lu", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10007A6DC;
  v18[3] = &unk_100130F18;
  objc_copyWeak(&v22, &location);
  v15 = v12;
  v21 = v15;
  v23 = a4;
  v16 = v11;
  v19 = v16;
  v17 = v10;
  v20 = v17;
  [(CloudTabRemoteStore *)self _saveCloudTabsRecordBatch:v17 inOperationGroup:v16 completionHandler:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)deleteCloudTabRecords:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 count];
  v12 = sub_100001B78();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    v29 = v9;
    if (v13)
    {
      v14 = v12;
      *buf = 134217984;
      v45 = [v8 count];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting %lu records.", buf, 0xCu);
    }

    v32 = v10;
    v15 = [v8 safari_arrayByGroupingIntoArraysWithMaxCount:100];
    v16 = [v15 count];
    if (v16 >= 2)
    {
      v17 = sub_100001B78();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        v19 = [v8 count];
        *buf = 134218240;
        v45 = v19;
        v46 = 2048;
        v47 = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Grouping delete requests for %lu objects into %lu batches", buf, 0x16u);
      }
    }

    v30 = v8;
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
          v37 = self;
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

    v9 = v29;
    [(CloudRemoteStore *)self _addModifyRecordsOperations:v22 inOperationGroup:v29 operationQueue:self->_cloudTabsOperationQueue];

    v8 = v30;
    v10 = v32;
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No records to delete.", buf, 2u);
    }

    (*(v10 + 2))(v10, 0);
  }
}

- (void)deleteCloudTabsZoneInOperationGroup:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v13 = v6;
  v14 = v7;
  block[4] = self;
  v10 = v6;
  v11 = v7;
  dispatch_async(internalQueue, block);
}

- (void)_createCloudTabsRecordZoneInOperationGroup:(id)a3 withRetryManager:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v17 = v9;
  v13 = v9;
  objc_copyWeak(&v21, &location);
  v19 = self;
  v20 = v10;
  v18 = v8;
  v14 = v8;
  v15 = v10;
  dispatch_async(internalQueue, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

- (void)_saveCloudTabsRecordBatch:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v13 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = [[WBSCloudKitOperationRetryManager alloc] initWithLog:sub_100001B78()];
  [(CloudTabRemoteStore *)self _saveCloudTabsRecordBatch:v10 previouslySavedRecords:v13 previouslyDeletedRecordIDs:v11 retryManager:v12 inOperationGroup:v9 completionHandler:v8];
}

- (void)_saveCloudTabsRecordBatch:(id)a3 previouslySavedRecords:(id)a4 previouslyDeletedRecordIDs:(id)a5 retryManager:(id)a6 inOperationGroup:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  objc_initWeak(&location, self);
  v20 = sub_100001B78();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v14 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Saving record batch with %lu records", &buf, 0xCu);
  }

  v22 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v14 recordIDsToDelete:0];
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
  v30 = v15;
  v32 = v30;
  v24 = v16;
  v33 = v24;
  v25 = v19;
  v37 = v25;
  v38 = &buf;
  v26 = v14;
  v34 = v26;
  v27 = v17;
  v35 = v27;
  v28 = v18;
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

- (id)_operationToDeleteCloudTabRecordIDs:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:0 recordIDsToDelete:v6];
  objc_initWeak(&location, v8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007CE3C;
  v11[3] = &unk_100131300;
  v11[4] = self;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  [v8 setModifyRecordsCompletionBlock:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v8;
}

- (void)_recursivelyCancelDependentOperations:(id)a3 operationQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v7 operations];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        v14 = [v13 dependencies];
        v15 = [v14 containsObject:v6];

        if (v15 && ([v13 isCancelled] & 1) == 0)
        {
          [v13 cancel];
          [(CloudTabRemoteStore *)self _recursivelyCancelDependentOperations:v13 operationQueue:v7];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }
}

@end