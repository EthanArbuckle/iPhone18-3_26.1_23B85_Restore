@interface CloudTabGroupSyncManager
+ (id)_createOperationGroupWithName:(id)name;
- (BOOL)_accountTermsVerified;
- (BOOL)_deviceToDeviceEncryptionEnabled;
- (BOOL)_hasEntitlementForSensitiveOperation;
- (BOOL)_readyToScheduleSync;
- (BOOL)_shouldSync;
- (BOOL)shouldScheduleDiscretionarySync;
- (CloudTabGroupSyncManager)initWithConfiguration:(id)configuration container:(id)container accountStore:(id)store;
- (CloudTabGroupSyncManager)initWithConfiguration:(id)configuration container:(id)container accountStore:(id)store maintenanceActivity:(id)activity;
- (CloudTabGroupSyncManagerDelegate)delegate;
- (NSString)databasePath;
- (id)_tabRecordIDFromTabUUID:(id)d inTabCollection:(id)collection;
- (id)cloudTabGroupSyncCoordinator:(id)coordinator accountPropertiesStoreForCollection:(id)collection;
- (void)_cancelSyncTimer;
- (void)_pcsIdentitiesChangedNotification:(id)notification;
- (void)_processLocalTabOperation:(id)operation completionHandler:(id)handler;
- (void)_scheduleSyncIfNeeded;
- (void)acceptShareForURL:(id)l invitationTokenData:(id)data completionHandler:(id)handler;
- (void)addParticipants:(id)participants toShare:(id)share completionHandler:(id)handler;
- (void)addSyncObserver:(id)observer;
- (void)beginSharingTabGroupWithUUID:(id)d completionHandler:(id)handler;
- (void)clearCachedRecordZone;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator activeParticipantsDidUpdateInTabGroupWithUUID:(id)d;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator activeParticipantsDidUpdateInTabWithUUID:(id)d;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator didAddTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator didChangeBackgroundImageInTabGroupWithUUID:(id)d byParticipantWithRecordID:(id)iD;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)d byParticipantWithRecordID:(id)iD;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)d acceptedShareDate:(id)date;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator didNavigateInTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator didReceiveChangesForUnhandledRecordZoneIDs:(id)ds;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator didRemoveTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator didUpdateShareForTabGroupWithUUID:(id)d;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator participants:(id)participants didJoinSharedTabGroupWithUUID:(id)d;
- (void)cloudTabGroupSyncCoordinator:(id)coordinator participants:(id)participants didLeaveSharedTabGroupWithUUID:(id)d;
- (void)dealloc;
- (void)fetchPrivateDatabaseSubscriptionStatusInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)fetchSharedDatabaseSubscriptionStatusInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)movePresenceForParticipantToTabWithUUID:(id)d;
- (void)removeSyncObserver:(id)observer;
- (void)savePrivateDatabaseSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)saveSharedDatabaseSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler;
- (void)scheduleSyncIfNeeded;
- (void)sendSyncDidFinishNotificationWithResult:(int64_t)result;
- (void)startMigrationIfNeeded;
- (void)userDidAcceptTabGroupShareWithMetadata:(id)metadata inProfileWithIdentifier:(id)identifier completionHandler:(id)handler;
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
  configuration = [(CloudTabGroupSyncManager *)self configuration];
  storeOwner = [configuration storeOwner];

  return (storeOwner - 1) < 3;
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

- (CloudTabGroupSyncManager)initWithConfiguration:(id)configuration container:(id)container accountStore:(id)store
{
  storeCopy = store;
  containerCopy = container;
  configurationCopy = configuration;
  v11 = [[CloudTabGroupMaintenanceActivity alloc] initWithConfiguration:configurationCopy];
  [(CloudTabGroupMaintenanceActivity *)v11 setDelegate:self];
  v12 = [(CloudTabGroupSyncManager *)self initWithConfiguration:configurationCopy container:containerCopy accountStore:storeCopy maintenanceActivity:v11];

  return v12;
}

+ (id)_createOperationGroupWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(CKOperationGroup);
  v5 = objc_alloc_init(CKOperationConfiguration);
  [v5 setQualityOfService:17];
  [v5 setTimeoutIntervalForRequest:30.0];
  [v4 setName:nameCopy];

  [v4 setExpectedSendSize:1];
  [v4 setExpectedReceiveSize:1];
  [v4 setDefaultConfiguration:v5];

  return v4;
}

- (CloudTabGroupSyncManager)initWithConfiguration:(id)configuration container:(id)container accountStore:(id)store maintenanceActivity:(id)activity
{
  configurationCopy = configuration;
  containerCopy = container;
  storeCopy = store;
  activityCopy = activity;
  v54.receiver = self;
  v54.super_class = CloudTabGroupSyncManager;
  v14 = [(CloudTabGroupSyncManager *)&v54 initWithConfiguration:configurationCopy];
  if (v14)
  {
    objc_initWeak(&location, v14);
    objc_storeStrong(&v14->_accountStore, store);
    objc_storeStrong(&v14->_container, container);
    v15 = +[NSMutableSet set];
    syncObservers = v14->_syncObservers;
    v14->_syncObservers = v15;

    v17 = +[NSMapTable strongToStrongObjectsMapTable];
    syncObserversToProxyObservers = v14->_syncObserversToProxyObservers;
    v14->_syncObserversToProxyObservers = v17;

    v19 = [[CKSystemSharingUIObserver alloc] initWithContainer:containerCopy];
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
      v23 = +[CloudBookmarkDatabaseAccessProvider tabGroupDatabaseAccessorWithStoreOwner:](CloudBookmarkDatabaseAccessProvider, "tabGroupDatabaseAccessorWithStoreOwner:", [configurationCopy storeOwner]);
      databaseAccessor = v14->_databaseAccessor;
      v14->_databaseAccessor = v23;

      v25 = [[CloudBookmarkDatabaseLockArbiter alloc] initWithDatabaseAccessor:v14->_databaseAccessor];
      databaseLockArbiter = v14->_databaseLockArbiter;
      v14->_databaseLockArbiter = v25;

      [(CloudBookmarkDatabaseLockArbiter *)v14->_databaseLockArbiter setDelegate:v14];
      v27 = [CloudBookmarkStoreUserDefaultsStorage alloc];
      v28 = +[NSUserDefaults safari_cloudBookmarksDefaults];
      v46 = [(CloudBookmarkStoreUserDefaultsStorage *)v27 initWithUserDefaults:v28 type:1];

      v29 = [[CloudBookmarkStore alloc] initWithType:1 container:containerCopy localStorage:v46];
      cloudBookmarkStore = v14->_cloudBookmarkStore;
      v14->_cloudBookmarkStore = v29;

      v31 = [[CloudTabGroupSyncCoordinator alloc] initWithBookmarkStore:v14->_cloudBookmarkStore collectionConfiguration:configurationCopy accountStore:storeCopy];
      syncCoordinator = v14->_syncCoordinator;
      v14->_syncCoordinator = v31;

      [(CloudTabGroupSyncCoordinator *)v14->_syncCoordinator setDataSource:v14];
      [(CloudTabGroupSyncCoordinator *)v14->_syncCoordinator setDelegate:v14];
      v33 = [WBTabCollection alloc];
      configuration = [(CloudTabGroupSyncManager *)v14 configuration];
      v35 = [v33 initWithConfiguration:configuration openDatabase:1];

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

    objc_storeStrong(&v14->_maintenanceActivity, activity);
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
  configuration = [(CloudTabGroupSyncManager *)self configuration];
  v3 = [WBTabCollection databasePathForConfiguration:configuration];

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

- (void)fetchPrivateDatabaseSubscriptionStatusInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  cloudBookmarkStore = self->_cloudBookmarkStore;
  container = self->_container;
  handlerCopy = handler;
  groupCopy = group;
  privateCloudDatabase = [(CKContainer *)container privateCloudDatabase];
  [(CloudBookmarkStore *)cloudBookmarkStore fetchSubscriptionWithID:@"TabGroupsPrivateDatabaseSubscription" inDatabase:privateCloudDatabase operationGroup:groupCopy withCompletionHandler:handlerCopy];
}

- (void)savePrivateDatabaseSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  groupCopy = group;
  handlerCopy = handler;
  v8 = objc_alloc_init(CKNotificationInfo);
  [v8 setShouldSendContentAvailable:1];
  v9 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:@"TabGroupsPrivateDatabaseSubscription"];
  [v9 setNotificationInfo:v8];
  cloudBookmarkStore = self->_cloudBookmarkStore;
  privateCloudDatabase = [(CKContainer *)self->_container privateCloudDatabase];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100081C2C;
  v14[3] = &unk_100131FB8;
  v15 = groupCopy;
  v16 = handlerCopy;
  v14[4] = self;
  v12 = groupCopy;
  v13 = handlerCopy;
  [(CloudBookmarkStore *)cloudBookmarkStore saveSubscription:v9 inDatabase:privateCloudDatabase operationGroup:v12 withCompletionHandler:v14];
}

- (void)fetchSharedDatabaseSubscriptionStatusInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  cloudBookmarkStore = self->_cloudBookmarkStore;
  container = self->_container;
  handlerCopy = handler;
  groupCopy = group;
  sharedCloudDatabase = [(CKContainer *)container sharedCloudDatabase];
  [(CloudBookmarkStore *)cloudBookmarkStore fetchSubscriptionWithID:@"TabGroupsSharedDatabaseSubscription" inDatabase:sharedCloudDatabase operationGroup:groupCopy withCompletionHandler:handlerCopy];
}

- (void)saveSharedDatabaseSubscriptionInOperationGroup:(id)group withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  groupCopy = group;
  v11 = objc_alloc_init(CKNotificationInfo);
  [v11 setShouldSendContentAvailable:1];
  v8 = [[CKDatabaseSubscription alloc] initWithSubscriptionID:@"TabGroupsSharedDatabaseSubscription"];
  [v8 setNotificationInfo:v11];
  cloudBookmarkStore = self->_cloudBookmarkStore;
  sharedCloudDatabase = [(CKContainer *)self->_container sharedCloudDatabase];
  [(CloudBookmarkStore *)cloudBookmarkStore saveSubscription:v8 inDatabase:sharedCloudDatabase operationGroup:groupCopy withCompletionHandler:handlerCopy];
}

- (void)_pcsIdentitiesChangedNotification:(id)notification
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
      configuration = [(CloudTabGroupSyncManager *)self configuration];
      [configuration storeOwner];
      v7 = WBNSStringFromCollectionStoreOwner();
      safari_logDescription = [v3 safari_logDescription];
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = safari_logDescription;
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

- (void)sendSyncDidFinishNotificationWithResult:(int64_t)result
{
  v4 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    resultCopy = result;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending notification of tab group sync result: %{public}zu", buf, 0xCu);
  }

  wBTabGroupSyncAgentSyncResultKey = [NSNumber numberWithInteger:result, WBTabGroupSyncAgentSyncResultKey];
  v9 = wBTabGroupSyncAgentSyncResultKey;
  v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v7 = +[NSDistributedNotificationCenter defaultCenter];
  [v7 postNotificationName:WBTabGroupSyncAgentDidFinishSyncNotificationName object:0 userInfo:v6];
}

- (void)addSyncObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  WBSDispatchSyncToMainQueueWithAutoreleasePool();
}

- (void)removeSyncObserver:(id)observer
{
  observerCopy = observer;
  v3 = observerCopy;
  WBSDispatchSyncToMainQueueWithAutoreleasePool();
}

- (void)userDidAcceptTabGroupShareWithMetadata:(id)metadata inProfileWithIdentifier:(id)identifier completionHandler:(id)handler
{
  metadataCopy = metadata;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (![(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation])
  {
    v11 = sub_10000A9A4();
LABEL_6:
    v12 = v11;
    handlerCopy[2](handlerCopy, 0, v11);

    goto LABEL_7;
  }

  if (![(CloudTabGroupSyncManager *)self _deviceToDeviceEncryptionEnabled])
  {
    v11 = sub_10008323C();
    goto LABEL_6;
  }

  v15 = handlerCopy;
  v13 = metadataCopy;
  v14 = identifierCopy;
  WBSDispatchAsyncToMainQueueWithAutoreleasePool();

LABEL_7:
}

- (void)beginSharingTabGroupWithUUID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  if (![(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation])
  {
    v14 = sub_10000A9A4();
LABEL_8:
    v15 = v14;
    handlerCopy[2](handlerCopy, 0, v14);

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
    safari_logDescription = [v8 safari_logDescription];
    *buf = 138543618;
    v21 = dCopy;
    v22 = 2114;
    v23 = safari_logDescription;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "••* Will begin sharing tab group with UUID: %{public}@, with %{public}@", buf, 0x16u);
  }

  syncCoordinator = self->_syncCoordinator;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100083AF0;
  v16[3] = &unk_100135310;
  v17 = dCopy;
  v18 = v8;
  v19 = handlerCopy;
  v13 = v8;
  [(CloudTabGroupSyncCoordinator *)syncCoordinator beginSharingTabGroupWithUUID:v17 inOperationGroup:v13 completionHandler:v16];

LABEL_9:
}

- (void)movePresenceForParticipantToTabWithUUID:(id)d
{
  dCopy = d;
  if ([(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation]&& [(CloudTabGroupSyncManager *)self _deviceToDeviceEncryptionEnabled])
  {
    v5 = dCopy;
    WBSDispatchAsyncToMainQueueWithAutoreleasePool();
  }
}

- (id)_tabRecordIDFromTabUUID:(id)d inTabCollection:(id)collection
{
  dCopy = d;
  collectionCopy = collection;
  if (![dCopy length])
  {
    v9 = 0;
    goto LABEL_6;
  }

  v8 = [collectionCopy tabWithUUID:dCopy];
  if (v8)
  {
    v9 = [collectionCopy recordIDForTab:v8];
    cloudBookmarkStore = self->_cloudBookmarkStore;
    zoneID = [v9 zoneID];
    LOBYTE(cloudBookmarkStore) = [(CloudBookmarkStore *)cloudBookmarkStore isSecondaryRecordZoneID:zoneID];

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

- (void)acceptShareForURL:(id)l invitationTokenData:(id)data completionHandler:(id)handler
{
  lCopy = l;
  dataCopy = data;
  handlerCopy = handler;
  if (![(CloudTabGroupSyncManager *)self _hasEntitlementForSensitiveOperation])
  {
    v14 = sub_10000A9A4();
LABEL_8:
    v15 = v14;
    handlerCopy[2](handlerCopy, 0, v14);

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
  v17 = handlerCopy;
  [(CloudTabGroupSyncCoordinator *)syncCoordinator acceptShareForURL:lCopy invitationTokenData:dataCopy inOperationGroup:v12 completionHandler:v16];

LABEL_9:
}

- (void)addParticipants:(id)participants toShare:(id)share completionHandler:(id)handler
{
  handlerCopy = handler;
  shareCopy = share;
  participantsCopy = participants;
  v14 = [objc_opt_class() _createOperationGroupWithName:@"Cloud Tab Groups Add Participants"];
  cloudBookmarkStore = self->_cloudBookmarkStore;
  recordID = [shareCopy recordID];

  zoneID = [recordID zoneID];
  [(CloudBookmarkStore *)cloudBookmarkStore addParticipantsWithEmailAddresses:participantsCopy toShareInRecordZoneWithID:zoneID inOperationGroup:v14 completionHandler:handlerCopy];
}

- (void)_processLocalTabOperation:(id)operation completionHandler:(id)handler
{
  operationCopy = operation;
  handlerCopy = handler;
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

  isDatabaseOpen = [(CloudBookmarkDatabaseLockArbiter *)self->_databaseLockArbiter isDatabaseOpen];
  if ((isDatabaseOpen & 1) == 0 && ![(CloudBookmarkDatabaseLockArbiter *)self->_databaseLockArbiter openDatabase])
  {
    v15 = [CloudTabGroupSyncCoordinator _tabGroupsLog]_0();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100085B28(v15);
    }

    v14 = +[NSError wb_databaseOpenError];
LABEL_11:
    v10 = v14;
    handlerCopy[2](handlerCopy, 0, v14);
    goto LABEL_16;
  }

  v10 = [[WBTabCollection alloc] initWithTabCollection:{-[CloudBookmarkDatabaseLockArbiter databaseRef](self->_databaseLockArbiter, "databaseRef")}];
  v11 = operationCopy[2](operationCopy, v10);
  if (v11)
  {
    error = 0;
  }

  else
  {
    error = [v10 error];
  }

  handlerCopy[2](handlerCopy, v11, error);
  if ((isDatabaseOpen & 1) == 0)
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

- (id)cloudTabGroupSyncCoordinator:(id)coordinator accountPropertiesStoreForCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [[CloudTabGroupAccountPropertiesStore alloc] initWithAccountStore:self->_accountStore collection:collectionCopy];

  return v6;
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator didReceiveChangesForUnhandledRecordZoneIDs:(id)ds
{
  dsCopy = ds;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained cloudTabGroupSyncManager:self didFindChangesToRecordZonesWithIDs:dsCopy];
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator didUpdateShareForTabGroupWithUUID:(id)d
{
  dCopy = d;
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

        [*(*(&v11 + 1) + 8 * v10) shareDidUpdateForTabGroupWithUUID:{dCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator participants:(id)participants didJoinSharedTabGroupWithUUID:(id)d
{
  participantsCopy = participants;
  dCopy = d;
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

        [*(*(&v14 + 1) + 8 * v13) participants:participantsCopy didJoinSharedTabGroupWithUUID:{dCopy, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator participants:(id)participants didLeaveSharedTabGroupWithUUID:(id)d
{
  participantsCopy = participants;
  dCopy = d;
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

        [*(*(&v14 + 1) + 8 * v13) participants:participantsCopy didLeaveSharedTabGroupWithUUID:{dCopy, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator activeParticipantsDidUpdateInTabGroupWithUUID:(id)d
{
  dCopy = d;
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

        [*(*(&v11 + 1) + 8 * v10) activeParticipantsDidUpdateInTabGroupWithUUID:{dCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator activeParticipantsDidUpdateInTabWithUUID:(id)d
{
  dCopy = d;
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

        [*(*(&v11 + 1) + 8 * v10) activeParticipantsDidUpdateInTabWithUUID:{dCopy, v11}];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator didAddTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID
{
  dCopy = d;
  titleCopy = title;
  iDCopy = iD;
  recordIDCopy = recordID;
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

        [*(*(&v20 + 1) + 8 * v19) didAddTabWithUUID:dCopy title:titleCopy inSharedTabGroupWithUUID:iDCopy byParticipantWithRecordID:{recordIDCopy, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator didNavigateInTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID
{
  dCopy = d;
  titleCopy = title;
  iDCopy = iD;
  recordIDCopy = recordID;
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

        [*(*(&v20 + 1) + 8 * v19) didNavigateInTabWithUUID:dCopy title:titleCopy inSharedTabGroupWithUUID:iDCopy byParticipantWithRecordID:{recordIDCopy, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator didRemoveTabWithUUID:(id)d title:(id)title inSharedTabGroupWithUUID:(id)iD byParticipantWithRecordID:(id)recordID
{
  dCopy = d;
  titleCopy = title;
  iDCopy = iD;
  recordIDCopy = recordID;
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

        [*(*(&v20 + 1) + 8 * v19) didRemoveTabWithUUID:dCopy title:titleCopy inSharedTabGroupWithUUID:iDCopy byParticipantWithRecordID:{recordIDCopy, v20}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v17);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator didChangeScopedFavoritesInSharedTabGroupWithUUID:(id)d byParticipantWithRecordID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
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

        [*(*(&v14 + 1) + 8 * v13) didChangeScopedFavoritesInSharedTabGroupWithUUID:dCopy byParticipantWithRecordID:{iDCopy, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator didChangeBackgroundImageInTabGroupWithUUID:(id)d byParticipantWithRecordID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
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

        [*(*(&v14 + 1) + 8 * v13) didChangeBackgroundImageInSharedTabGroupWithUUID:dCopy byParticipantWithRecordID:{iDCopy, v14}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)cloudTabGroupSyncCoordinator:(id)coordinator didFetchRecentlyAcceptedSharedTabGroupWithUUID:(id)d acceptedShareDate:(id)date
{
  dCopy = d;
  dateCopy = date;
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

        [*(*(&v14 + 1) + 8 * v13) didFetchRecentlyAcceptedSharedTabGroupWithUUID:dCopy acceptedShareDate:{dateCopy, v14}];
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