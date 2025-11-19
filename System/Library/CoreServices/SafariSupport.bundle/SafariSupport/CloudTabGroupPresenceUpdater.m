@interface CloudTabGroupPresenceUpdater
- (CloudTabGroupPresenceUpdater)initWithCloudBookmarkStore:(id)a3;
- (id)_sharedPresenceRecordDatabaseForTabRecordZone:(id)a3;
- (id)_sharedPresenceRecordNameForUserRecordID:(id)a3;
- (void)_acquireLockUsingPrivatePresenceRecord:(id)a3 toSetPresenceInTabWithRecordID:(id)a4 previousPrivatePresenceRecord:(id)a5 inOperationGroup:(id)a6 isRetry:(BOOL)a7 completionHandler:(id)a8;
- (void)_cacheUserRecordIDIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)_checkPrivatePresenceLockValidityWithRecord:(id)a3 toUpdatePresenceInTabWithRecordID:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6;
- (void)_clearRetryHandlerIsCancelling:(BOOL)a3;
- (void)_createSharedPresenceRecordWithTabRecordID:(id)a3 currentPrivatePresenceRecord:(id)a4 inOperationGroup:(id)a5 isRetry:(BOOL)a6 completionHandler:(id)a7;
- (void)_performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_releaseLockForPrivatePresenceRecord:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_replaceSharedPresenceRecordWithTabRecordID:(id)a3 currentPrivatePresenceRecord:(id)a4 previousPrivatePresenceRecord:(id)a5 inOperationGroup:(id)a6 isRetry:(BOOL)a7 completionHandler:(id)a8;
- (void)_setUpRetryTimerToSetPresenceInTabWithRecordID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
- (void)_updatePresenceInTabIfNeededWithRecordID:(id)a3 inOperationGroup:(id)a4 isRetry:(BOOL)a5 completionHandler:(id)a6;
- (void)setPresenceToTabWithRecordID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5;
@end

@implementation CloudTabGroupPresenceUpdater

- (CloudTabGroupPresenceUpdater)initWithCloudBookmarkStore:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CloudTabGroupPresenceUpdater;
  v6 = [(CloudTabGroupPresenceUpdater *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v7->_lastScheduledUpdateLock._os_unfair_lock_opaque = 0;
    v8 = [CKRecordID alloc];
    v9 = [(CloudBookmarkStore *)v7->_store bookmarksRecordZoneID];
    v10 = [v8 initWithRecordName:@"UserTabGroupPresence" zoneID:v9];
    privatePresenceRecordID = v7->_privatePresenceRecordID;
    v7->_privatePresenceRecordID = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_attr_make_with_qos_class(v12, QOS_CLASS_USER_INITIATED, 0);

    v14 = [NSString stringWithFormat:@"com.apple.Safari.CloudBookmarks.CloudTabGroupPresenceUpdater.%@.%p._processUpdateQueue", objc_opt_class(), v7];
    v15 = dispatch_queue_create([v14 UTF8String], v13);
    processUpdateQueue = v7->_processUpdateQueue;
    v7->_processUpdateQueue = v15;

    v17 = v7;
  }

  return v7;
}

- (void)setPresenceToTabWithRecordID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(location, self);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10002E508;
  v50[3] = &unk_100132700;
  v11 = v8;
  v51 = v11;
  v12 = v9;
  v52 = v12;
  v13 = v10;
  v53 = v13;
  v14 = objc_retainBlock(v50);
  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x2810000000;
  v48[3] = "";
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100001474;
  v46 = sub_10002E634;
  v47 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E63C;
  block[3] = &unk_1001327C8;
  objc_copyWeak(&v41, location);
  v15 = v13;
  v37 = v15;
  v39 = v48;
  v40 = &v42;
  v16 = v11;
  v35 = v16;
  v17 = v12;
  v36 = v17;
  v18 = v14;
  v38 = v18;
  v19 = dispatch_block_create(0, block);
  v20 = v43[5];
  v43[5] = v19;

  v21 = v43[5];
  v22 = dispatch_get_global_queue(25, 0);
  notification_block[0] = _NSConcreteStackBlock;
  notification_block[1] = 3221225472;
  notification_block[2] = sub_10002EC10;
  notification_block[3] = &unk_100132818;
  v32 = v48;
  v33 = &v42;
  v23 = v18;
  v31 = v23;
  dispatch_block_notify(v21, v22, notification_block);

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v26 = sub_10002ED24;
  v27 = &unk_100132840;
  v28 = self;
  v29 = &v42;
  v24 = v25;
  os_unfair_lock_lock(&self->_lastScheduledUpdateLock);
  v26(v24);

  os_unfair_lock_unlock(&self->_lastScheduledUpdateLock);
  _Block_object_dispose(&v42, 8);

  objc_destroyWeak(&v41);
  _Block_object_dispose(v48, 8);

  objc_destroyWeak(location);
}

- (void)_cacheUserRecordIDIfNeededInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_cachedUserRecordID)
  {
    v8 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "UserRecordID is already cached", buf, 2u);
    }

    v7[2](v7, 1);
  }

  else
  {
    store = self->_store;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002EF68;
    v10[3] = &unk_100132868;
    v10[4] = self;
    v11 = v6;
    [(CloudBookmarkStore *)store fetchUserIdentityInOperationGroup:a3 withCompletionHandler:v10];
  }
}

- (void)_updatePresenceInTabIfNeededWithRecordID:(id)a3 inOperationGroup:(id)a4 isRetry:(BOOL)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  objc_initWeak(&location, self);
  store = self->_store;
  privatePresenceRecordID = self->_privatePresenceRecordID;
  v15 = [(CloudBookmarkStore *)store container];
  v16 = [v15 privateCloudDatabase];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002F25C;
  v20[3] = &unk_100132890;
  objc_copyWeak(&v24, &location);
  v17 = v12;
  v23 = v17;
  v18 = v10;
  v21 = v18;
  v19 = v11;
  v22 = v19;
  v25 = a5;
  [(CloudBookmarkStore *)store fetchRecordWithID:privatePresenceRecordID inDatabase:v16 operationGroup:v19 completionHandler:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [v8 ckShortDescription];
    *buf = 138543362;
    v29 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Will fetch shared presence for heartbeat update for tabRecordID: %{public}@", buf, 0xCu);
  }

  v13 = [v8 zoneID];
  v14 = [[CKRecordID alloc] initWithRecordName:self->_cachedSharedPresenceRecordName zoneID:v13];
  v15 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:v13];
  store = self->_store;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002F74C;
  v21[3] = &unk_1001328E0;
  objc_copyWeak(&v26, &location);
  v17 = v10;
  v25 = v17;
  v18 = v15;
  v22 = v18;
  v19 = v9;
  v23 = v19;
  v20 = v8;
  v24 = v20;
  [(CloudBookmarkStore *)store fetchRecordWithID:v14 inDatabase:v18 operationGroup:v19 completionHandler:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)_acquireLockUsingPrivatePresenceRecord:(id)a3 toSetPresenceInTabWithRecordID:(id)a4 previousPrivatePresenceRecord:(id)a5 inOperationGroup:(id)a6 isRetry:(BOOL)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  objc_initWeak(&location, self);
  v18 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v13 recordID];
    *buf = 138543362;
    v38 = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Attempting to acquire update presence lock with ID: %{public}@", buf, 0xCu);
  }

  if (v14)
  {
    v20 = [[CKReference alloc] initWithRecordID:v14 action:0];
  }

  else
  {
    v20 = 0;
  }

  [v13 setObject:v20 forKeyedSubscript:@"TabGroupTab"];
  [v13 setObject:&off_10013C338 forKeyedSubscript:@"Lock"];
  [v13 setExpirationAfterTimeInterval:&off_10013C2C0];
  store = self->_store;
  v22 = [(CloudBookmarkStore *)store container];
  v23 = [v22 privateCloudDatabase];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10002FE00;
  v29[3] = &unk_100132908;
  objc_copyWeak(&v34, &location);
  v24 = v17;
  v33 = v24;
  v25 = v15;
  v30 = v25;
  v26 = v14;
  v31 = v26;
  v27 = v16;
  v32 = v27;
  v35 = a7;
  [(CloudBookmarkStore *)store saveOrLoadRecord:v13 inDatabase:v23 operationGroup:v27 completionHandler:v29];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)_checkPrivatePresenceLockValidityWithRecord:(id)a3 toUpdatePresenceInTabWithRecordID:(id)a4 inOperationGroup:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 modificationDate];
  [v14 timeIntervalSinceNow];
  v16 = v15;

  if (v16 >= -60.0)
  {
    [(CloudTabGroupPresenceUpdater *)self _setUpRetryTimerToSetPresenceInTabWithRecordID:v11 inOperationGroup:v12 completionHandler:v13];
  }

  else
  {
    v17 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "The presence lock is too old, we are going to try to steal it.", v19, 2u);
    }

    v18 = [v10 copy];
    [(CloudTabGroupPresenceUpdater *)self _acquireLockUsingPrivatePresenceRecord:v10 toSetPresenceInTabWithRecordID:v11 previousPrivatePresenceRecord:v18 inOperationGroup:v12 isRetry:0 completionHandler:v13];
  }
}

- (void)_replaceSharedPresenceRecordWithTabRecordID:(id)a3 currentPrivatePresenceRecord:(id)a4 previousPrivatePresenceRecord:(id)a5 inOperationGroup:(id)a6 isRetry:(BOOL)a7 completionHandler:(id)a8
{
  v26 = a7;
  v13 = a3;
  v28 = a4;
  v29 = a5;
  v14 = a6;
  v15 = a8;
  objc_initWeak(&location, self);
  v16 = [v29 objectForKeyedSubscript:@"TabGroupTab"];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 recordID];
    v19 = [v18 zoneID];
    v27 = [[CKRecordID alloc] initWithRecordName:self->_cachedSharedPresenceRecordName zoneID:v19];
    v25 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:v19];
    if ([v18 isEqual:v13])
    {
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100030560;
      v38[3] = &unk_100132930;
      v38[4] = self;
      v39 = v28;
      v40 = v14;
      v41 = v15;
      [(CloudTabGroupPresenceUpdater *)self _performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:v13 inOperationGroup:v40 completionHandler:v38];
    }

    else
    {
      v21 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v27 ckShortDescription];
        v23 = [v18 ckShortDescription];
        *buf = 138543618;
        v44 = v22;
        v45 = 2114;
        v46 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Deleting previous presence record with ID: %{public}@ to tab: %{public}@", buf, 0x16u);
      }

      store = self->_store;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100030570;
      v30[3] = &unk_100132958;
      objc_copyWeak(&v36, &location);
      v35 = v15;
      v31 = v27;
      v32 = v13;
      v33 = v28;
      v34 = v14;
      v37 = v26;
      [(CloudBookmarkStore *)store deleteRecordWithID:v31 inDatabase:v25 operationGroup:v34 completionHandler:v30];

      objc_destroyWeak(&v36);
    }
  }

  else
  {
    v20 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "No previous presence record to delete", buf, 2u);
    }

    [(CloudTabGroupPresenceUpdater *)self _createSharedPresenceRecordWithTabRecordID:v13 currentPrivatePresenceRecord:v28 inOperationGroup:v14 isRetry:v26 completionHandler:v15];
  }

  objc_destroyWeak(&location);
}

- (void)_createSharedPresenceRecordWithTabRecordID:(id)a3 currentPrivatePresenceRecord:(id)a4 inOperationGroup:(id)a5 isRetry:(BOOL)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  objc_initWeak(&location, self);
  if (v11)
  {
    v15 = [CKRecordID alloc];
    cachedSharedPresenceRecordName = self->_cachedSharedPresenceRecordName;
    v17 = [v11 zoneID];
    v18 = [v15 initWithRecordName:cachedSharedPresenceRecordName zoneID:v17];

    v19 = [[CKRecord alloc] initWithRecordType:@"TabGroupTabParticipantPresence" recordID:v18];
    v20 = [[CKReference alloc] initWithRecordID:self->_cachedUserRecordID action:0];
    [v19 setObject:v20 forKeyedSubscript:@"Participant"];

    v21 = [[CKReference alloc] initWithRecordID:v11 action:1];
    [v19 setObject:v21 forKeyedSubscript:@"TabGroupTab"];

    [v19 setExpirationAfterTimeInterval:&off_10013C2B0];
    v22 = [v11 zoneID];
    v23 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:v22];

    store = self->_store;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100030954;
    v26[3] = &unk_100132980;
    objc_copyWeak(&v30, &location);
    v29 = v14;
    v27 = v12;
    v28 = v13;
    [(CloudBookmarkStore *)store saveOrLoadRecord:v19 inDatabase:v23 operationGroup:v28 completionHandler:v26];

    objc_destroyWeak(&v30);
  }

  else
  {
    v25 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "No need to create a new shared presence record", buf, 2u);
    }

    [(CloudTabGroupPresenceUpdater *)self _releaseLockForPrivatePresenceRecord:v12 inOperationGroup:v13 completionHandler:v14];
  }

  objc_destroyWeak(&location);
}

- (void)_releaseLockForPrivatePresenceRecord:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [v8 recordID];
    *buf = 138543362;
    v21 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Releasing update presence lock with ID: %{public}@", buf, 0xCu);
  }

  [v8 setObject:&off_10013C350 forKeyedSubscript:@"Lock"];
  [v8 setExpirationAfterTimeInterval:&off_10013C2C0];
  store = self->_store;
  v15 = [(CloudBookmarkStore *)store container];
  v16 = [v15 privateCloudDatabase];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100030C18;
  v18[3] = &unk_1001328B8;
  v18[4] = self;
  v19 = v9;
  v17 = v9;
  [(CloudBookmarkStore *)store saveOrLoadRecord:v8 inDatabase:v16 operationGroup:v10 completionHandler:v18];
}

- (void)_setUpRetryTimerToSetPresenceInTabWithRecordID:(id)a3 inOperationGroup:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_processUpdateQueue);
  retryTimer = self->_retryTimer;
  self->_retryTimer = v11;

  v13 = objc_retainBlock(v10);
  currentRetryCompletionHandler = self->_currentRetryCompletionHandler;
  self->_currentRetryCompletionHandler = v13;

  v15 = self->_retryTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100030EA8;
  handler[3] = &unk_1001329A8;
  objc_copyWeak(&v25, &location);
  v23 = v9;
  v24 = v10;
  v22 = v8;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  dispatch_source_set_event_handler(v15, handler);
  v19 = self->_retryTimer;
  v20 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  dispatch_activate(self->_retryTimer);
  dispatch_resume(self->_processUpdateQueue);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_clearRetryHandlerIsCancelling:(BOOL)a3
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    if (a3)
    {
      dispatch_suspend(self->_processUpdateQueue);
      (*(self->_currentRetryCompletionHandler + 2))();
      retryTimer = self->_retryTimer;
    }

    dispatch_source_cancel(retryTimer);
    v5 = self->_retryTimer;
    self->_retryTimer = 0;

    currentRetryCompletionHandler = self->_currentRetryCompletionHandler;
    self->_currentRetryCompletionHandler = 0;
  }
}

- (id)_sharedPresenceRecordDatabaseForTabRecordZone:(id)a3
{
  v4 = [a3 safari_isInPrivateDatabase];
  v5 = [(CloudBookmarkStore *)self->_store container];
  v6 = v5;
  if (v4)
  {
    [v5 privateCloudDatabase];
  }

  else
  {
    [v5 sharedCloudDatabase];
  }
  v7 = ;

  return v7;
}

- (id)_sharedPresenceRecordNameForUserRecordID:(id)a3
{
  v3 = [a3 recordName];
  v4 = [@"UserPresence_" stringByAppendingString:v3];

  return v4;
}

@end