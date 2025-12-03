@interface CloudTabGroupPresenceUpdater
- (CloudTabGroupPresenceUpdater)initWithCloudBookmarkStore:(id)store;
- (id)_sharedPresenceRecordDatabaseForTabRecordZone:(id)zone;
- (id)_sharedPresenceRecordNameForUserRecordID:(id)d;
- (void)_acquireLockUsingPrivatePresenceRecord:(id)record toSetPresenceInTabWithRecordID:(id)d previousPrivatePresenceRecord:(id)presenceRecord inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)_cacheUserRecordIDIfNeededInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)_checkPrivatePresenceLockValidityWithRecord:(id)record toUpdatePresenceInTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_clearRetryHandlerIsCancelling:(BOOL)cancelling;
- (void)_createSharedPresenceRecordWithTabRecordID:(id)d currentPrivatePresenceRecord:(id)record inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)_performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_releaseLockForPrivatePresenceRecord:(id)record inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_replaceSharedPresenceRecordWithTabRecordID:(id)d currentPrivatePresenceRecord:(id)record previousPrivatePresenceRecord:(id)presenceRecord inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)_setUpRetryTimerToSetPresenceInTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
- (void)_updatePresenceInTabIfNeededWithRecordID:(id)d inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler;
- (void)setPresenceToTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler;
@end

@implementation CloudTabGroupPresenceUpdater

- (CloudTabGroupPresenceUpdater)initWithCloudBookmarkStore:(id)store
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = CloudTabGroupPresenceUpdater;
  v6 = [(CloudTabGroupPresenceUpdater *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v7->_lastScheduledUpdateLock._os_unfair_lock_opaque = 0;
    v8 = [CKRecordID alloc];
    bookmarksRecordZoneID = [(CloudBookmarkStore *)v7->_store bookmarksRecordZoneID];
    v10 = [v8 initWithRecordName:@"UserTabGroupPresence" zoneID:bookmarksRecordZoneID];
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

- (void)setPresenceToTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(location, self);
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_10002E508;
  v50[3] = &unk_100132700;
  v11 = dCopy;
  v51 = v11;
  v12 = groupCopy;
  v52 = v12;
  v13 = handlerCopy;
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
  selfCopy = self;
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

- (void)_cacheUserRecordIDIfNeededInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = handlerCopy;
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
    v11 = handlerCopy;
    [(CloudBookmarkStore *)store fetchUserIdentityInOperationGroup:group withCompletionHandler:v10];
  }
}

- (void)_updatePresenceInTabIfNeededWithRecordID:(id)d inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  store = self->_store;
  privatePresenceRecordID = self->_privatePresenceRecordID;
  container = [(CloudBookmarkStore *)store container];
  privateCloudDatabase = [container privateCloudDatabase];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002F25C;
  v20[3] = &unk_100132890;
  objc_copyWeak(&v24, &location);
  v17 = handlerCopy;
  v23 = v17;
  v18 = dCopy;
  v21 = v18;
  v19 = groupCopy;
  v22 = v19;
  retryCopy = retry;
  [(CloudBookmarkStore *)store fetchRecordWithID:privatePresenceRecordID inDatabase:privateCloudDatabase operationGroup:v19 completionHandler:v20];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    ckShortDescription = [dCopy ckShortDescription];
    *buf = 138543362;
    v29 = ckShortDescription;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Will fetch shared presence for heartbeat update for tabRecordID: %{public}@", buf, 0xCu);
  }

  zoneID = [dCopy zoneID];
  v14 = [[CKRecordID alloc] initWithRecordName:self->_cachedSharedPresenceRecordName zoneID:zoneID];
  v15 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:zoneID];
  store = self->_store;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10002F74C;
  v21[3] = &unk_1001328E0;
  objc_copyWeak(&v26, &location);
  v17 = handlerCopy;
  v25 = v17;
  v18 = v15;
  v22 = v18;
  v19 = groupCopy;
  v23 = v19;
  v20 = dCopy;
  v24 = v20;
  [(CloudBookmarkStore *)store fetchRecordWithID:v14 inDatabase:v18 operationGroup:v19 completionHandler:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

- (void)_acquireLockUsingPrivatePresenceRecord:(id)record toSetPresenceInTabWithRecordID:(id)d previousPrivatePresenceRecord:(id)presenceRecord inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  recordCopy = record;
  dCopy = d;
  presenceRecordCopy = presenceRecord;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v18 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    recordID = [recordCopy recordID];
    *buf = 138543362;
    v38 = recordID;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Attempting to acquire update presence lock with ID: %{public}@", buf, 0xCu);
  }

  if (dCopy)
  {
    v20 = [[CKReference alloc] initWithRecordID:dCopy action:0];
  }

  else
  {
    v20 = 0;
  }

  [recordCopy setObject:v20 forKeyedSubscript:@"TabGroupTab"];
  [recordCopy setObject:&off_10013C338 forKeyedSubscript:@"Lock"];
  [recordCopy setExpirationAfterTimeInterval:&off_10013C2C0];
  store = self->_store;
  container = [(CloudBookmarkStore *)store container];
  privateCloudDatabase = [container privateCloudDatabase];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10002FE00;
  v29[3] = &unk_100132908;
  objc_copyWeak(&v34, &location);
  v24 = handlerCopy;
  v33 = v24;
  v25 = presenceRecordCopy;
  v30 = v25;
  v26 = dCopy;
  v31 = v26;
  v27 = groupCopy;
  v32 = v27;
  retryCopy = retry;
  [(CloudBookmarkStore *)store saveOrLoadRecord:recordCopy inDatabase:privateCloudDatabase operationGroup:v27 completionHandler:v29];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)_checkPrivatePresenceLockValidityWithRecord:(id)record toUpdatePresenceInTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  recordCopy = record;
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  modificationDate = [recordCopy modificationDate];
  [modificationDate timeIntervalSinceNow];
  v16 = v15;

  if (v16 >= -60.0)
  {
    [(CloudTabGroupPresenceUpdater *)self _setUpRetryTimerToSetPresenceInTabWithRecordID:dCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
  }

  else
  {
    v17 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "The presence lock is too old, we are going to try to steal it.", v19, 2u);
    }

    v18 = [recordCopy copy];
    [(CloudTabGroupPresenceUpdater *)self _acquireLockUsingPrivatePresenceRecord:recordCopy toSetPresenceInTabWithRecordID:dCopy previousPrivatePresenceRecord:v18 inOperationGroup:groupCopy isRetry:0 completionHandler:handlerCopy];
  }
}

- (void)_replaceSharedPresenceRecordWithTabRecordID:(id)d currentPrivatePresenceRecord:(id)record previousPrivatePresenceRecord:(id)presenceRecord inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  retryCopy = retry;
  dCopy = d;
  recordCopy = record;
  presenceRecordCopy = presenceRecord;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v16 = [presenceRecordCopy objectForKeyedSubscript:@"TabGroupTab"];
  v17 = v16;
  if (v16)
  {
    recordID = [v16 recordID];
    zoneID = [recordID zoneID];
    v27 = [[CKRecordID alloc] initWithRecordName:self->_cachedSharedPresenceRecordName zoneID:zoneID];
    v25 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:zoneID];
    if ([recordID isEqual:dCopy])
    {
      v38[0] = _NSConcreteStackBlock;
      v38[1] = 3221225472;
      v38[2] = sub_100030560;
      v38[3] = &unk_100132930;
      v38[4] = self;
      v39 = recordCopy;
      v40 = groupCopy;
      v41 = handlerCopy;
      [(CloudTabGroupPresenceUpdater *)self _performSharedPresenceInTabHeartbeatUpdateIfNeededWithRecordID:dCopy inOperationGroup:v40 completionHandler:v38];
    }

    else
    {
      v21 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        ckShortDescription = [v27 ckShortDescription];
        ckShortDescription2 = [recordID ckShortDescription];
        *buf = 138543618;
        v44 = ckShortDescription;
        v45 = 2114;
        v46 = ckShortDescription2;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Deleting previous presence record with ID: %{public}@ to tab: %{public}@", buf, 0x16u);
      }

      store = self->_store;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100030570;
      v30[3] = &unk_100132958;
      objc_copyWeak(&v36, &location);
      v35 = handlerCopy;
      v31 = v27;
      v32 = dCopy;
      v33 = recordCopy;
      v34 = groupCopy;
      v37 = retryCopy;
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

    [(CloudTabGroupPresenceUpdater *)self _createSharedPresenceRecordWithTabRecordID:dCopy currentPrivatePresenceRecord:recordCopy inOperationGroup:groupCopy isRetry:retryCopy completionHandler:handlerCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_createSharedPresenceRecordWithTabRecordID:(id)d currentPrivatePresenceRecord:(id)record inOperationGroup:(id)group isRetry:(BOOL)retry completionHandler:(id)handler
{
  dCopy = d;
  recordCopy = record;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  if (dCopy)
  {
    v15 = [CKRecordID alloc];
    cachedSharedPresenceRecordName = self->_cachedSharedPresenceRecordName;
    zoneID = [dCopy zoneID];
    v18 = [v15 initWithRecordName:cachedSharedPresenceRecordName zoneID:zoneID];

    v19 = [[CKRecord alloc] initWithRecordType:@"TabGroupTabParticipantPresence" recordID:v18];
    v20 = [[CKReference alloc] initWithRecordID:self->_cachedUserRecordID action:0];
    [v19 setObject:v20 forKeyedSubscript:@"Participant"];

    v21 = [[CKReference alloc] initWithRecordID:dCopy action:1];
    [v19 setObject:v21 forKeyedSubscript:@"TabGroupTab"];

    [v19 setExpirationAfterTimeInterval:&off_10013C2B0];
    zoneID2 = [dCopy zoneID];
    v23 = [(CloudTabGroupPresenceUpdater *)self _sharedPresenceRecordDatabaseForTabRecordZone:zoneID2];

    store = self->_store;
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_100030954;
    v26[3] = &unk_100132980;
    objc_copyWeak(&v30, &location);
    v29 = handlerCopy;
    v27 = recordCopy;
    v28 = groupCopy;
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

    [(CloudTabGroupPresenceUpdater *)self _releaseLockForPrivatePresenceRecord:recordCopy inOperationGroup:groupCopy completionHandler:handlerCopy];
  }

  objc_destroyWeak(&location);
}

- (void)_releaseLockForPrivatePresenceRecord:(id)record inOperationGroup:(id)group completionHandler:(id)handler
{
  recordCopy = record;
  handlerCopy = handler;
  groupCopy = group;
  v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    recordID = [recordCopy recordID];
    *buf = 138543362;
    v21 = recordID;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Releasing update presence lock with ID: %{public}@", buf, 0xCu);
  }

  [recordCopy setObject:&off_10013C350 forKeyedSubscript:@"Lock"];
  [recordCopy setExpirationAfterTimeInterval:&off_10013C2C0];
  store = self->_store;
  container = [(CloudBookmarkStore *)store container];
  privateCloudDatabase = [container privateCloudDatabase];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100030C18;
  v18[3] = &unk_1001328B8;
  v18[4] = self;
  v19 = handlerCopy;
  v17 = handlerCopy;
  [(CloudBookmarkStore *)store saveOrLoadRecord:recordCopy inDatabase:privateCloudDatabase operationGroup:groupCopy completionHandler:v18];
}

- (void)_setUpRetryTimerToSetPresenceInTabWithRecordID:(id)d inOperationGroup:(id)group completionHandler:(id)handler
{
  dCopy = d;
  groupCopy = group;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_processUpdateQueue);
  retryTimer = self->_retryTimer;
  self->_retryTimer = v11;

  v13 = objc_retainBlock(handlerCopy);
  currentRetryCompletionHandler = self->_currentRetryCompletionHandler;
  self->_currentRetryCompletionHandler = v13;

  v15 = self->_retryTimer;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100030EA8;
  handler[3] = &unk_1001329A8;
  objc_copyWeak(&v25, &location);
  v23 = groupCopy;
  v24 = handlerCopy;
  v22 = dCopy;
  v16 = groupCopy;
  v17 = dCopy;
  v18 = handlerCopy;
  dispatch_source_set_event_handler(v15, handler);
  v19 = self->_retryTimer;
  v20 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
  dispatch_activate(self->_retryTimer);
  dispatch_resume(self->_processUpdateQueue);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);
}

- (void)_clearRetryHandlerIsCancelling:(BOOL)cancelling
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    if (cancelling)
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

- (id)_sharedPresenceRecordDatabaseForTabRecordZone:(id)zone
{
  safari_isInPrivateDatabase = [zone safari_isInPrivateDatabase];
  container = [(CloudBookmarkStore *)self->_store container];
  v6 = container;
  if (safari_isInPrivateDatabase)
  {
    [container privateCloudDatabase];
  }

  else
  {
    [container sharedCloudDatabase];
  }
  v7 = ;

  return v7;
}

- (id)_sharedPresenceRecordNameForUserRecordID:(id)d
{
  recordName = [d recordName];
  v4 = [@"UserPresence_" stringByAppendingString:recordName];

  return v4;
}

@end