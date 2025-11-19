@interface CloudTabGroupSyncManager
+ (id)_createOperationGroupWithName:(id)a3;
- (BOOL)_accountTermsVerified;
- (BOOL)_deviceToDeviceEncryptionEnabled;
- (BOOL)_hasEntitlementForSensitiveOperation;
- (BOOL)_readyToScheduleSync;
- (BOOL)_shouldSync;
- (BOOL)shouldScheduleDiscretionarySync;
- (CloudTabGroupSyncManager)initWithConfiguration:(id)a3 container:(id)a4 accountStore:(id)a5;
- (CloudTabGroupSyncManager)initWithConfiguration:(id)a3 container:(id)a4 accountStore:(id)a5 maintenanceActivity:(id)a6;
- (CloudTabGroupSyncManagerDelegate)delegate;
- (NSString)databasePath;
- (id)_tabRecordIDFromTabUUID:(id)a3 inTabCollection:(id)a4;
- (id)cloudTabGroupSyncCoordinator:(id)a3 accountPropertiesStoreForCollection:(id)a4;
- (void)_cancelSyncTimer;
- (void)_pcsIdentitiesChangedNotification:(id)a3;
- (void)_processLocalTabOperation:(id)a3 completionHandler:(id)a4;
- (void)_scheduleSyncIfNeeded;
- (void)acceptShareForURL:(id)a3 invitationTokenData:(id)a4 completionHandler:(id)a5;
- (void)addParticipants:(id)a3 toShare:(id)a4 completionHandler:(id)a5;
- (void)addSyncObserver:(id)a3;
- (void)beginSharingTabGroupWithUUID:(id)a3 completionHandler:(id)a4;
- (void)clearCachedRecordZone;
- (void)cloudTabGroupSyncCoordinator:(id)a3 activeParticipantsDidUpdateInTabGroupWithUUID:(id)a4;
- (void)cloudTabGroupSyncCoordinator:(id)a3 activeParticipantsDidUpdateInTabWithUUID:(id)a4;
- (void)cloudTabGroupSyncCoordinator:(id)a3 didAddTabWithUUID:(id)a4 title:(id)a5 inSharedTabGroupWithUUID:(id)a6 byParticipantWithRecordID:(id)a7;
- (void)cloudTabGroupSyncCoordinator:(id)a3 didChangeBackgroundImageInTabGroupWithUUID:(id)a4 byParticipantWithRecordID:(id)a5;
- (void)cloudTabGroupSyncCoordinator:(id)a3 didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)a4 byParticipantWithRecordID:(id)a5;
- (void)cloudTabGroupSyncCoordinator:(id)a3 didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)a4 acceptedShareDate:(id)a5;
- (void)cloudTabGroupSyncCoordinator:(id)a3 didNavigateInTabWithUUID:(id)a4 title:(id)a5 inSharedTabGroupWithUUID:(id)a6 byParticipantWithRecordID:(id)a7;
- (void)cloudTabGroupSyncCoordinator:(id)a3 didReceiveChangesForUnhandledRecordZoneIDs:(id)a4;
- (void)cloudTabGroupSyncCoordinator:(id)a3 didRemoveTabWithUUID:(id)a4 title:(id)a5 inSharedTabGroupWithUUID:(id)a6 byParticipantWithRecordID:(id)a7;
- (void)cloudTabGroupSyncCoordinator:(id)a3 didUpdateShareForTabGroupWithUUID:(id)a4;
- (void)cloudTabGroupSyncCoordinator:(id)a3 participants:(id)a4 didJoinSharedTabGroupWithUUID:(id)a5;
- (void)cloudTabGroupSyncCoordinator:(id)a3 participants:(id)a4 didLeaveSharedTabGroupWithUUID:(id)a5;
- (void)dealloc;
- (void)fetchPrivateDatabaseSubscriptionStatusInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)fetchSharedDatabaseSubscriptionStatusInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)movePresenceForParticipantToTabWithUUID:(id)a3;
- (void)removeSyncObserver:(id)a3;
- (void)savePrivateDatabaseSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)saveSharedDatabaseSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4;
- (void)scheduleSyncIfNeeded;
- (void)sendSyncDidFinishNotificationWithResult:(int64_t)a3;
- (void)startMigrationIfNeeded;
- (void)userDidAcceptTabGroupShareWithMetadata:(id)a3 inProfileWithIdentifier:(id)a4 completionHandler:(id)a5;
@end

@implementation CloudTabGroupSyncManager

- (void)scheduleSyncIfNeeded
{
  if ([(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation])
  {
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }

  else
  {
    v2 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Not scheduling a sync because entitlement is missing", buf, 2u);
    }
  }
}

- (BOOL)_hasEntitlementForSensitiveOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained hasEntitlementForSensitiveOperationInCloudTabGroupSyncManager:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_scheduleSyncIfNeeded
{
  if ([(CloudTabGroupSyncManager *)self _readyToScheduleSync])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Scheduling a tab group sync operation", buf, 2u);
      }

      [(CloudTabGroupSyncManager *)self _cancelSyncTimer];
      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
      scheduledSyncTimer = self->_scheduledSyncTimer;
      self->_scheduledSyncTimer = v6;

      objc_initWeak(buf, self);
      v8 = self->_scheduledSyncTimer;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10008451C;
      handler[3] = &unk_1001324E8;
      objc_copyWeak(&v12, buf);
      dispatch_source_set_event_handler(v8, handler);
      v9 = self->_scheduledSyncTimer;
      v10 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
      dispatch_activate(self->_scheduledSyncTimer);
      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }
  }
}

- (BOOL)_readyToScheduleSync
{
  if ([(CloudTabGroupSyncManager *)self _shouldSync])
  {
    if (self->_isMigrating)
    {
      v3 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
      if (v4)
      {
        v10 = 0;
        v5 = "Not scheduling a sync being we are currently migrating";
        v6 = &v10;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, v5, v6, 2u);
        LOBYTE(v4) = 0;
      }
    }

    else
    {
      if (![(CloudTabGroupSyncManager *)self _deviceToDeviceEncryptionEnabled])
      {
        v3 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
        v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
        if (!v4)
        {
          return v4;
        }

        v9 = 0;
        v5 = "Not scheduling a sync because manatee is not available";
        v6 = &v9;
        goto LABEL_7;
      }

      if (![(CloudTabGroupSyncManager *)self _accountTermsVerified])
      {
        v3 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
        v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
        if (!v4)
        {
          return v4;
        }

        v8 = 0;
        v5 = "Not scheduling a sync because user did not accept terms and conditions on their account.";
        v6 = &v8;
        goto LABEL_7;
      }

      LOBYTE(v4) = 1;
    }
  }

  else
  {
    v3 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (v4)
    {
      *buf = 0;
      v5 = "Not scheduling a sync being syncing is not enabled for this platform";
      v6 = buf;
      goto LABEL_7;
    }
  }

  return v4;
}

- (BOOL)_shouldSync
{
  v2 = [(CloudTabGroupSyncManager *)self configuration];
  v3 = [v2 storeOwner];

  return (v3 - 1) < 3;
}

- (BOOL)_deviceToDeviceEncryptionEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained isDeviceToDeviceEncryptionEnabledForCloudTabGroupSyncManager:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (CloudTabGroupSyncManager)initWithConfiguration:(id)a3 container:(id)a4 accountStore:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[CloudTabGroupMaintenanceActivity alloc] initWithConfiguration:v10];
  [(CloudTabGroupMaintenanceActivity *)v11 setDelegate:self];
  v12 = [(CloudTabGroupSyncManager *)self initWithConfiguration:v10 container:v9 accountStore:v8 maintenanceActivity:v11];

  return v12;
}

+ (id)_createOperationGroupWithName:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKOperationGroup);
  v5 = objc_alloc_init(CKOperationConfiguration);
  [v5 setQualityOfService:17];
  [v5 setTimeoutIntervalForRequest:30.0];
  [v4 setName:v3];

  [v4 setExpectedSendSize:1];
  [v4 setExpectedReceiveSize:1];
  [v4 setDefaultConfiguration:v5];

  return v4;
}

- (CloudTabGroupSyncManager)initWithConfiguration:(id)a3 container:(id)a4 accountStore:(id)a5 maintenanceActivity:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v54.receiver = self;
  v54.super_class = CloudTabGroupSyncManager;
  v14 = [(CloudTabGroupSyncManager *)&v54 initWithConfiguration:v10];
  if (v14)
  {
    objc_initWeak(&location, v14);
    objc_storeStrong(&v14->_accountStore, a5);
    objc_storeStrong(&v14->_container, a4);
    v15 = +[NSMutableSet set];
    syncObservers = v14->_syncObservers;
    v14->_syncObservers = v15;

    v17 = +[NSMapTable strongToStrongObjectsMapTable];
    syncObserversToProxyObservers = v14->_syncObserversToProxyObservers;
    v14->_syncObserversToProxyObservers = v17;

    v19 = [[CKSystemSharingUIObserver alloc] initWithContainer:v11];
    sharedTabGroupsObserver = v14->_sharedTabGroupsObserver;
    v14->_sharedTabGroupsObserver = v19;

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100081448;
    v51[3] = &unk_1001351F8;
    objc_copyWeak(&v52, &location);
    v21 = objc_retainBlock(v51);
    [(CKSystemSharingUIObserver *)v14->_sharedTabGroupsObserver setSystemSharingUIDidStopSharingBlock:v21];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_100081550;
    v49[3] = &unk_100135220;
    v22 = v21;
    v50 = v22;
    [(CKSystemSharingUIObserver *)v14->_sharedTabGroupsObserver setSystemSharingUIDidSaveShareBlock:v49];
    if ([(CloudTabGroupSyncManager *)v14 _shouldSync])
    {
      v23 = +[CloudBookmarkDatabaseAccessProvider tabGroupDatabaseAccessorWithStoreOwner:](CloudBookmarkDatabaseAccessProvider, "tabGroupDatabaseAccessorWithStoreOwner:", [v10 storeOwner]);
      databaseAccessor = v14->_databaseAccessor;
      v14->_databaseAccessor = v23;

      v25 = [[CloudBookmarkDatabaseLockArbiter alloc] initWithDatabaseAccessor:v14->_databaseAccessor];
      databaseLockArbiter = v14->_databaseLockArbiter;
      v14->_databaseLockArbiter = v25;

      [(CloudBookmarkDatabaseLockArbiter *)v14->_databaseLockArbiter setDelegate:v14];
      v27 = [CloudBookmarkStoreUserDefaultsStorage alloc];
      v28 = +[NSUserDefaults safari_cloudBookmarksDefaults];
      v46 = [(CloudBookmarkStoreUserDefaultsStorage *)v27 initWithUserDefaults:v28 type:1];

      v29 = [[CloudBookmarkStore alloc] initWithType:1 container:v11 localStorage:v46];
      cloudBookmarkStore = v14->_cloudBookmarkStore;
      v14->_cloudBookmarkStore = v29;

      v31 = [[CloudTabGroupSyncCoordinator alloc] initWithBookmarkStore:v14->_cloudBookmarkStore collectionConfiguration:v10 accountStore:v12];
      syncCoordinator = v14->_syncCoordinator;
      v14->_syncCoordinator = v31;

      [(CloudTabGroupSyncCoordinator *)v14->_syncCoordinator setDataSource:v14];
      [(CloudTabGroupSyncCoordinator *)v14->_syncCoordinator setDelegate:v14];
      v33 = [WBTabCollection alloc];
      v34 = [(CloudTabGroupSyncManager *)v14 configuration];
      v35 = [v33 initWithConfiguration:v34 openDatabase:1];

      v36 = [[CloudTabGroupSyncObserver alloc] initWithProfileProvider:v35];
      tabGroupSyncObserver = v14->_tabGroupSyncObserver;
      v14->_tabGroupSyncObserver = v36;

      [(CloudTabGroupSyncCoordinator *)v14->_syncCoordinator registerSyncObserver:v14->_tabGroupSyncObserver];
      v38 = [[CloudTabGroupPresenceUpdater alloc] initWithCloudBookmarkStore:v14->_cloudBookmarkStore];
      tabGroupPresenceUpdater = v14->_tabGroupPresenceUpdater;
      v14->_tabGroupPresenceUpdater = v38;

      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100081564;
      v47[3] = &unk_100135270;
      objc_copyWeak(&v48, &location);
      v40 = [RBSProcessMonitor monitorWithConfiguration:v47];
      processMonitor = v14->_processMonitor;
      v14->_processMonitor = v40;

      if (+[CloudTabGroupSyncDebugger isEnabled])
      {
        v42 = objc_alloc_init(CloudTabGroupSyncDebugger);
        syncDebugger = v14->_syncDebugger;
        v14->_syncDebugger = v42;

        [(CloudTabGroupSyncCoordinator *)v14->_syncCoordinator registerSyncObserver:v14->_syncDebugger];
      }

      objc_destroyWeak(&v48);
    }

    objc_storeStrong(&v14->_maintenanceActivity, a6);
    [(CloudTabGroupMaintenanceActivity *)v14->_maintenanceActivity registerActivity];
    v44 = v14;

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (void)dealloc
{
  [(RBSProcessMonitor *)self->_processMonitor invalidate];
  v3.receiver = self;
  v3.super_class = CloudTabGroupSyncManager;
  [(CloudTabGroupSyncManager *)&v3 dealloc];
}

- (NSString)databasePath
{
  v2 = [(CloudTabGroupSyncManager *)self configuration];
  v3 = [WBTabCollection databasePathForConfiguration:v2];

  return v3;
}

- (BOOL)shouldScheduleDiscretionarySync
{
  if (!self->_canUseDiscretionarySync)
  {
    return 0;
  }

  dateToUseDiscrectionarySync = self->_dateToUseDiscrectionarySync;
  if (!dateToUseDiscrectionarySync)
  {
    return 1;
  }

  [(NSDate *)dateToUseDiscrectionarySync timeIntervalSinceNow:v2];
  return v5 > 0.0;
}

- (void)clearCachedRecordZone
{
  if ([(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation])
  {
    cloudBookmarkStore = self->_cloudBookmarkStore;

    [(CloudBookmarkStore *)cloudBookmarkStore clearCachedRecordZone];
  }
}

- (void)fetchPrivateDatabaseSubscriptionStatusInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  cloudBookmarkStore = self->_cloudBookmarkStore;
  container = self->_container;
  v7 = a4;
  v8 = a3;
  v9 = [(CKContainer *)container privateCloudDatabase];
  [(CloudBookmarkStore *)cloudBookmarkStore fetchSubscriptionWithID:@"TabGroupsPrivateDatabaseSubscription" inDatabase:v9 operationGroup:v8 withCompletionHandler:v7];
}

- (void)savePrivateDatabaseSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(CKNotificationInfo);
  [v8 setShouldSendContentAvailable:1];
  v9 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:@"TabGroupsPrivateDatabaseSubscription"];
  [v9 setNotificationInfo:v8];
  cloudBookmarkStore = self->_cloudBookmarkStore;
  v11 = [(CKContainer *)self->_container privateCloudDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100081C2C;
  v14[3] = &unk_100131FB8;
  v15 = v6;
  v16 = v7;
  v14[4] = self;
  v12 = v6;
  v13 = v7;
  [(CloudBookmarkStore *)cloudBookmarkStore saveSubscription:v9 inDatabase:v11 operationGroup:v12 withCompletionHandler:v14];
}

- (void)fetchSharedDatabaseSubscriptionStatusInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  cloudBookmarkStore = self->_cloudBookmarkStore;
  container = self->_container;
  v7 = a4;
  v8 = a3;
  v9 = [(CKContainer *)container sharedCloudDatabase];
  [(CloudBookmarkStore *)cloudBookmarkStore fetchSubscriptionWithID:@"TabGroupsSharedDatabaseSubscription" inDatabase:v9 operationGroup:v8 withCompletionHandler:v7];
}

- (void)saveSharedDatabaseSubscriptionInOperationGroup:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = objc_alloc_init(CKNotificationInfo);
  [v11 setShouldSendContentAvailable:1];
  v8 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:@"TabGroupsSharedDatabaseSubscription"];
  [v8 setNotificationInfo:v11];
  cloudBookmarkStore = self->_cloudBookmarkStore;
  v10 = [(CKContainer *)self->_container sharedCloudDatabase];
  [(CloudBookmarkStore *)cloudBookmarkStore saveSubscription:v8 inDatabase:v10 operationGroup:v7 withCompletionHandler:v6];
}

- (void)_pcsIdentitiesChangedNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082694;
  block[3] = &unk_100131408;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)startMigrationIfNeeded
{
  if (!self->_isMigrating)
  {
    self->_isMigrating = 1;
    v3 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Tab Groups Migration"];
    v4 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [(CloudTabGroupSyncManager *)self configuration];
      [v6 storeOwner];
      v7 = WBNSStringFromCollectionStoreOwner();
      v8 = [v3 safari_logDescription];
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "*•• Starting TabGroups migration for manager %{public}@ with %{public}@", buf, 0x16u);
    }

    syncCoordinator = self->_syncCoordinator;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008297C;
    v11[3] = &unk_100135298;
    v11[4] = self;
    v12 = v3;
    v10 = v3;
    [(CloudTabGroupSyncCoordinator *)syncCoordinator beginMigrationWithOperationGroup:v10 completionHandler:v11];
  }
}

- (void)sendSyncDidFinishNotificationWithResult:(int64_t)a3
{
  v4 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending notification of tab group sync result: %{public}zu", buf, 0xCu);
  }

  v5 = [NSNumber numberWithInteger:a3, WBTabGroupSyncAgentSyncResultKey];
  v9 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 postNotificationName:WBTabGroupSyncAgentDidFinishSyncNotificationName object:0 userInfo:v6];
}

- (void)addSyncObserver:(id)a3
{
  v4 = a3;
  v3 = v4;
  WBSDispatchSyncToMainQueueWithAutoreleasePool();
}

- (void)removeSyncObserver:(id)a3
{
  v4 = a3;
  v3 = v4;
  WBSDispatchSyncToMainQueueWithAutoreleasePool();
}

- (void)userDidAcceptTabGroupShareWithMetadata:(id)a3 inProfileWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation])
  {
    v11 = sub_10000A9A4();
LABEL_6:
    v12 = v11;
    v10[2](v10, 0, v11);

    goto LABEL_7;
  }

  if (![(CloudTabGroupSyncManager *)self _deviceToDeviceEncryptionEnabled])
  {
    v11 = sub_10008323C();
    goto LABEL_6;
  }

  v15 = v10;
  v13 = v8;
  v14 = v9;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

LABEL_7:
}

- (void)beginSharingTabGroupWithUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation])
  {
    v14 = sub_10000A9A4();
LABEL_8:
    v15 = v14;
    v7[2](v7, 0, v14);

    goto LABEL_9;
  }

  if (![(CloudTabGroupSyncManager *)self _deviceToDeviceEncryptionEnabled])
  {
    v14 = sub_10008323C();
    goto LABEL_8;
  }

  v8 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Tab Groups Setup Shared Tab Group"];
  v9 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 safari_logDescription];
    *buf = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "••* Will begin sharing tab group with UUID: %{public}@, with %{public}@", buf, 0x16u);
  }

  syncCoordinator = self->_syncCoordinator;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100083AF0;
  v16[3] = &unk_100135310;
  v17 = v6;
  v18 = v8;
  v19 = v7;
  v13 = v8;
  [(CloudTabGroupSyncCoordinator *)syncCoordinator beginSharingTabGroupWithUUID:v17 inOperationGroup:v13 completionHandler:v16];

LABEL_9:
}

- (void)movePresenceForParticipantToTabWithUUID:(id)a3
{
  v4 = a3;
  if ([(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation]&& [(CloudTabGroupSyncManager *)self _deviceToDeviceEncryptionEnabled])
  {
    v5 = v4;
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }
}

- (id)_tabRecordIDFromTabUUID:(id)a3 inTabCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![v6 length])
  {
    v9 = 0;
    goto LABEL_6;
  }

  v8 = [v7 tabWithUUID:v6];
  if (v8)
  {
    v9 = [v7 recordIDForTab:v8];
    cloudBookmarkStore = self->_cloudBookmarkStore;
    v11 = [v9 zoneID];
    LOBYTE(cloudBookmarkStore) = [(CloudBookmarkStore *)cloudBookmarkStore isSecondaryRecordZoneID:v11];

    if (cloudBookmarkStore)
    {

LABEL_6:
      v9 = v9;
      v12 = v9;
      goto LABEL_13;
    }

    v14 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1000859EC();
    }
  }

  else
  {
    v13 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100085A70();
    }

    v9 = 0;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (void)acceptShareForURL:(id)a3 invitationTokenData:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation])
  {
    v14 = sub_10000A9A4();
LABEL_8:
    v15 = v14;
    v10[2](v10, 0, v14);

    goto LABEL_9;
  }

  if (![(CloudTabGroupSyncManager *)self _deviceToDeviceEncryptionEnabled])
  {
    v14 = sub_10008323C();
    goto LABEL_8;
  }

  v11 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Will begin accepting share", buf, 2u);
  }

  v12 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Tab Groups Accept Share"];
  syncCoordinator = self->_syncCoordinator;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100084234;
  v16[3] = &unk_100135358;
  v17 = v10;
  [(CloudTabGroupSyncCoordinator *)syncCoordinator acceptShareForURL:v8 invitationTokenData:v9 inOperationGroup:v12 completionHandler:v16];

LABEL_9:
}

- (void)addParticipants:(id)a3 toShare:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Tab Groups Add Participants"];
  cloudBookmarkStore = self->_cloudBookmarkStore;
  v12 = [v9 recordID];

  v13 = [v12 zoneID];
  [(CloudBookmarkStore *)cloudBookmarkStore addParticipantsWithEmailAddresses:v10 toShareInRecordZoneWithID:v13 inOperationGroup:v14 completionHandler:v8];
}

- (void)_processLocalTabOperation:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16[0] = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Processing local tab operation", v16, 2u);
  }

  if (![(CloudBookmarkDatabaseLockArbiter *)self->_databaseLockArbiter lockForClient:@"Sync Manager"])
  {
    v13 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100085AE4(v13);
    }

    v14 = +[NSError wb_lockError];
    goto LABEL_11;
  }

  v9 = [(CloudBookmarkDatabaseLockArbiter *)self->_databaseLockArbiter isDatabaseOpen];
  if ((v9 & 1) == 0 && ![(CloudBookmarkDatabaseLockArbiter *)self->_databaseLockArbiter openDatabase])
  {
    v15 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100085B28(v15);
    }

    v14 = +[NSError wb_databaseOpenError];
LABEL_11:
    v10 = v14;
    v7[2](v7, 0, v14);
    goto LABEL_16;
  }

  v10 = [[WBTabCollection alloc] initWithTabCollection:{-[CloudBookmarkDatabaseLockArbiter databaseRef](self->_databaseLockArbiter, "databaseRef")}];
  v11 = v6[2](v6, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = [v10 error];
  }

  v7[2](v7, v11, v12);
  if ((v9 & 1) == 0)
  {
    [(CloudBookmarkDatabaseLockArbiter *)self->_databaseLockArbiter closeDatabaseAndSave:1];
  }

  [(CloudBookmarkDatabaseLockArbiter *)self->_databaseLockArbiter unlockForClient:@"Sync Manager"];

LABEL_16:
}

- (void)_cancelSyncTimer
{
  scheduledSyncTimer = self->_scheduledSyncTimer;
  if (scheduledSyncTimer)
  {
    dispatch_source_cancel(scheduledSyncTimer);
    v4 = self->_scheduledSyncTimer;
    self->_scheduledSyncTimer = 0;
  }
}

- (BOOL)_accountTermsVerified
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [WeakRetained areAccountTermsVerifiedForCloudTabGroupSyncManager:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)cloudTabGroupSyncCoordinator:(id)a3 accountPropertiesStoreForCollection:(id)a4
{
  v5 = a4;
  v6 = [[CloudTabGroupAccountPropertiesStore alloc] initWithAccountStore:self->_accountStore collection:v5];

  return v6;
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 didReceiveChangesForUnhandledRecordZoneIDs:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained cloudTabGroupSyncManager:self didFindChangesToRecordZonesWithIDs:v6];
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 didUpdateShareForTabGroupWithUUID:(id)a4
{
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_syncObservers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) shareDidUpdateForTabGroupWithUUID:{v5, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 participants:(id)a4 didJoinSharedTabGroupWithUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_syncObservers;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) participants:v7 didJoinSharedTabGroupWithUUID:{v8, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 participants:(id)a4 didLeaveSharedTabGroupWithUUID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_syncObservers;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) participants:v7 didLeaveSharedTabGroupWithUUID:{v8, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 activeParticipantsDidUpdateInTabGroupWithUUID:(id)a4
{
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_syncObservers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) activeParticipantsDidUpdateInTabGroupWithUUID:{v5, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 activeParticipantsDidUpdateInTabWithUUID:(id)a4
{
  v5 = a4;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_syncObservers;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) activeParticipantsDidUpdateInTabWithUUID:{v5, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 didAddTabWithUUID:(id)a4 title:(id)a5 inSharedTabGroupWithUUID:(id)a6 byParticipantWithRecordID:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_syncObservers;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) didAddTabWithUUID:v11 title:v12 inSharedTabGroupWithUUID:v13 byParticipantWithRecordID:{v14, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 didNavigateInTabWithUUID:(id)a4 title:(id)a5 inSharedTabGroupWithUUID:(id)a6 byParticipantWithRecordID:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_syncObservers;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) didNavigateInTabWithUUID:v11 title:v12 inSharedTabGroupWithUUID:v13 byParticipantWithRecordID:{v14, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 didRemoveTabWithUUID:(id)a4 title:(id)a5 inSharedTabGroupWithUUID:(id)a6 byParticipantWithRecordID:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = self->_syncObservers;
  v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v20 + 1) + 8 * v19) didRemoveTabWithUUID:v11 title:v12 inSharedTabGroupWithUUID:v13 byParticipantWithRecordID:{v14, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)a4 byParticipantWithRecordID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_syncObservers;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) didChangeScopedFavoritesInSharedTabGroupWithUUID:v7 byParticipantWithRecordID:{v8, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 didChangeBackgroundImageInTabGroupWithUUID:(id)a4 byParticipantWithRecordID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_syncObservers;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) didChangeBackgroundImageInSharedTabGroupWithUUID:v7 byParticipantWithRecordID:{v8, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)a3 didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)a4 acceptedShareDate:(id)a5
{
  v7 = a4;
  v8 = a5;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_syncObservers;
  v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v14 + 1) + 8 * v13) didFetchRecentlyAcceptedSharedTabGroupWithUUID:v7 acceptedShareDate:{v8, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (CloudTabGroupSyncManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end