@interface ASCloudKitManager
+ (id)_activityDataShareRecordID;
+ (id)activityDataRecordZoneID;
+ (id)activityDataRootRecordID;
+ (id)relationshipZone;
- (ASCloudKitManager)init;
- (ASCloudKitManagerSecureCloudDelegate)secureCloudDelegate;
- (BOOL)_queue_isLastCloudKitAddressDifferentFromNewCloudKitAddress:(id)a3;
- (BOOL)allObserversReady;
- (BOOL)hasCompletedFirstFetch;
- (id)_observerQueue_friendUUIDForActivityDataShareRecordZoneID:(id)a3;
- (id)_queue_apsEnvironmentString;
- (id)additionalZoneIDsToFetchWithServerChangeTokenChange:(id)a3;
- (id)currentAccountInfo;
- (id)currentCloudKitAddress;
- (id)secureCloudPrivateDatabaseFetchConfigurations;
- (void)_cancelNewAccountTasksTimer;
- (void)_cloudKitAccountStatusChanged:(id)a3;
- (void)_createActivityDataShareWithCompletion:(id)a3;
- (void)_createNotificationSteps;
- (void)_fetchAllChangesWithPriority:(int64_t)a3 activity:(id)a4 group:(id)a5;
- (void)_fetchAllChangesWithPriority:(int64_t)a3 activity:(id)a4 group:(id)a5 completion:(id)a6;
- (void)_fetchCloudKitAccountStatusAndNotifyOfChanges;
- (void)_fetchCloudKitAddressWithCompletion:(id)a3;
- (void)_handleAccountStatusChange:(int64_t)a3;
- (void)_handleIncomingNotification:(id)a3;
- (void)_handleNewPrivateDatabaseRecordChanges:(id)a3 sharedDatabaseRecordChanges:(id)a4 privateDatabaseDeletedRecordIDs:(id)a5 sharedDatabaseDeletedRecordIDs:(id)a6 fetchType:(int64_t)a7 activity:(id)a8 cloudKitGroup:(id)a9;
- (void)_handleSecureCloudServerPush:(id)a3;
- (void)_observerQueue_clearFriendUUIDByZoneIDCache;
- (void)_observerQueue_notifyObserversOfBeginUpdatesForFetchWithType:(int64_t)a3;
- (void)_observerQueue_notifyObserversOfEndUpdatesForFetchWithType:(int64_t)a3 activity:(id)a4 cloudKitGroup:(id)a5;
- (void)_observerQueue_notifyObserversOfServerPushHandledWithCloudKitGroup:(id)a3;
- (void)_observerQueue_notifyOfPrivateDatabaseDeletedRecordIDs:(id)a3 sharedDatabaseDeletedRecordIDs:(id)a4;
- (void)_observerQueue_performNotificationStep:(id)a3 onRecords:(id)a4 dispatchGroup:(id)a5 activity:(id)a6 cloudKitGroup:(id)a7;
- (void)_performAndRetryNewAccountTasksIfNecessaryWithShouldCreateSubscriptions:(BOOL)a3 shouldFetch:(BOOL)a4;
- (void)_performNewAccountTasksCreatingSubscriptions:(BOOL)a3 fetching:(BOOL)a4 completion:(id)a5;
- (void)_queue_callFetchCompletionBlocksWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_queue_cancelAllExecutingFetches;
- (void)_queue_clearChangeTokenCacheAndFriendListWithCompletion:(id)a3;
- (void)_queue_clearChangeTokenCaches;
- (void)_queue_notifyObserversOfStatusChanged:(int64_t)a3;
- (void)_queue_pushDisable;
- (void)_queue_pushEnable;
- (void)_queue_setHasCompletedFirstFetch:(BOOL)a3;
- (void)_queue_startFetchAllChangesOperationWithPriority:(int64_t)a3 activity:(id)a4 changeTokenCache:(id)a5 secureCloudChangeTokenCache:(id)a6 group:(id)a7 completion:(id)a8;
- (void)_saveCloudKitAddressToKeyValueStore;
- (void)_subscribeToChangesInDatabase:(id)a3 subscriptionPrefix:(id)a4 recordTypes:(id)a5 zoneNames:(id)a6 recordTypesToDelete:(id)a7 completion:(id)a8;
- (void)_subscribeToChangesInPrivateDatabaseWithCompletion:(id)a3;
- (void)_subscribeToChangesInSharedDatabaseWithCompletion:(id)a3;
- (void)_verifyOrCreateSubscriptionsWithCompletion:(id)a3;
- (void)acceptSharesWithURLs:(id)a3 cloudKitGroup:(id)a4 completion:(id)a5;
- (void)activitySharingManagerReady:(id)a3;
- (void)addObserver:(id)a3;
- (void)addParticipant:(id)a3 toShares:(id)a4 group:(id)a5 completion:(id)a6;
- (void)addParticipantWithCloudKitAddress:(id)a3 toShares:(id)a4 group:(id)a5 completion:(id)a6;
- (void)beginHandlingOperations;
- (void)clearChangeTokenCacheAndFriendListWithCompletion:(id)a3;
- (void)clearChangeTokenCachesWithCompletion:(id)a3;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)createShareWithRootRecord:(id)a3 otherRecordsToSave:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)endHandlingOperations;
- (void)expireChangeTokenWithCompletion:(id)a3;
- (void)fetchAllChangesIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 priority:(int64_t)a4 activity:(id)a5 group:(id)a6 completion:(id)a7;
- (void)fetchAllChangesWithPriority:(int64_t)a3 activity:(id)a4 group:(id)a5 completion:(id)a6;
- (void)fetchCloudKitAccountInfoWithCompletion:(id)a3;
- (void)fetchCloudKitAccountStatusWithCompletion:(id)a3;
- (void)fetchCloudKitAddressWithCompletion:(id)a3;
- (void)fetchOrCreateActivityDataShareWithGroup:(id)a3 activity:(id)a4 completion:(id)a5;
- (void)fetchShareParticipantForIdentifier:(id)a3 group:(id)a4 completion:(id)a5;
- (void)fetchShareParticipantWithCloudKitAddress:(id)a3 group:(id)a4 completion:(id)a5;
- (void)fetchShareWithShareRecordID:(id)a3 activity:(id)a4 group:(id)a5 completion:(id)a6;
- (void)forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:(id)a3 recordIDsToDelete:(id)a4 priority:(int64_t)a5 activity:(id)a6 group:(id)a7 completion:(id)a8;
- (void)notifyOfCloudKitAccountStatusUpdate:(int64_t)a3;
- (void)observerDidBecomeReadyToProcessChanges:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeParticipantWithCloudKitAddress:(id)a3 fromShares:(id)a4 group:(id)a5 completion:(id)a6;
- (void)saveRecordsIntoPrivateDatabase:(id)a3 recordIDsToDelete:(id)a4 priority:(int64_t)a5 activity:(id)a6 group:(id)a7 completion:(id)a8;
- (void)setHasCompletedFirstFetch:(BOOL)a3;
- (void)subscribeToCloudKitDatabaseChangesWithCompletion:(id)a3;
- (void)updateCloudKitAddress;
- (void)updateCurrentAccountInfo:(id)a3;
@end

@implementation ASCloudKitManager

- (ASCloudKitManager)init
{
  v18.receiver = self;
  v18.super_class = ASCloudKitManager;
  v2 = [(ASCloudKitManager *)&v18 init];
  v3 = v2;
  if (v2)
  {
    [(ASCloudKitManager *)v2 setReadyForOperations:0];
    v4 = HKCreateSerialDispatchQueue();
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v4;

    v6 = HKCreateSerialDispatchQueue();
    observerQueue = v3->_observerQueue;
    v3->_observerQueue = v6;

    v8 = HKCreateSerialDispatchQueue();
    changeTokenQueue = v3->_changeTokenQueue;
    v3->_changeTokenQueue = v8;

    v10 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v3->_observers;
    v3->_observers = v10;

    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observersNotReady = v3->_observersNotReady;
    v3->_observersNotReady = v12;

    v14 = dispatch_group_create();
    observersNotReadyGroup = v3->_observersNotReadyGroup;
    v3->_observersNotReadyGroup = v14;

    v3->_currentFetchPriority = 0;
    blocksWaitingOnFetch = v3->_blocksWaitingOnFetch;
    v3->_blocksWaitingOnFetch = MEMORY[0x277CBEBF8];

    v3->_cloudKitAccountStatus = 0;
    [(ASCloudKitManager *)v3 _createNotificationSteps];
  }

  return v3;
}

- (void)dealloc
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ASCloudKitManager_dealloc__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  [(HDDaemonTransaction *)self->_fetchTransaction invalidate];
  v4.receiver = self;
  v4.super_class = ASCloudKitManager;
  [(ASCloudKitManager *)&v4 dealloc];
}

- (void)activitySharingManagerReady:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_activitySharingManager, v4);
  obj = [v4 contactsManager];

  objc_storeWeak(&self->_contactsManager, obj);
}

- (void)beginHandlingOperations
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ASCloudKitManager_beginHandlingOperations__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

void __44__ASCloudKitManager_beginHandlingOperations__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (ASUseLegacyDevelopmentContainer())
  {
    v2 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.ActivitySharing" environment:2];
    v3 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v2];
    [*(a1 + 32) setContainer:v3];
  }

  else
  {
    v2 = [MEMORY[0x277CBC218] containerWithIdentifier:@"com.apple.ActivitySharing"];
    [*(a1 + 32) setContainer:v2];
  }

  v4 = [*(a1 + 32) container];

  if (v4)
  {
    v5 = [*(a1 + 32) container];
    [v5 setSourceApplicationBundleIdentifier:@"com.apple.Fitness"];

    v6 = [ASCloudKitUtility alloc];
    v7 = [*(a1 + 32) container];
    v8 = [(ASCloudKitUtility *)v6 initWithContainer:v7];
    [*(a1 + 32) setCloudKitUtility:v8];
  }

  else
  {
    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __44__ASCloudKitManager_beginHandlingOperations__block_invoke_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
    }
  }

  if ((ASSecureCloudEnabled() & 1) == 0)
  {
    ASLoggingInitialize();
    v17 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Legacy account monitoring enabled", buf, 2u);
    }

    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:*(a1 + 32) selector:sel__cloudKitAccountStatusChanged_ name:*MEMORY[0x277CBBF00] object:0];

    [*(a1 + 32) _fetchCloudKitAccountStatusAndNotifyOfChanges];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v20 = [WeakRetained deviceLocalActivitySharingKeyValueDomain];

  v31 = 0;
  v21 = [v20 numberForKey:@"ActivitySharingHasCompletedFirstCloudKitFetchKeyVersion2" error:&v31];
  v22 = v31;
  *(*(a1 + 32) + 264) = [v21 BOOLValue];

  if (v22)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __44__ASCloudKitManager_beginHandlingOperations__block_invoke_cold_3();
    }
  }

  ASLoggingInitialize();
  v23 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(*(a1 + 32) + 264);
    *buf = 67109120;
    v33 = v24;
    _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "hasCompletedFirstFetch initialized to: %d", buf, 8u);
  }

  v26 = *(a1 + 32);
  v25 = (a1 + 32);
  [v26 _queue_pushEnable];
  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:*v25 selector:sel__handleSecureCloudServerPush_ name:*MEMORY[0x277CE9308] object:0];

  v28 = [ASCloudKitServerChangeTokenCache changeTokenCacheFromUserDefaultsWithSerialQueue:*(*v25 + 5)];
  v29 = *(*v25 + 26);
  *(*v25 + 26) = v28;

  [*v25 setReadyForOperations:1];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)endHandlingOperations
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASCloudKitManager_endHandlingOperations__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __42__ASCloudKitManager_endHandlingOperations__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCloudKitUtility:0];
  [*(a1 + 32) setContainer:0];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32)];

  *(*(a1 + 32) + 264) = 0;
  [*(a1 + 32) _queue_pushDisable];
  v3 = *(a1 + 32);

  return [v3 setReadyForOperations:0];
}

+ (id)activityDataRecordZoneID
{
  v2 = objc_alloc(MEMORY[0x277CBC5F8]);
  v3 = [v2 initWithZoneName:@"ActivityDataZone" ownerName:*MEMORY[0x277CBBF28]];

  return v3;
}

+ (id)activityDataRootRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  v4 = *MEMORY[0x277CE8EC0];
  v5 = [a1 activityDataRecordZoneID];
  v6 = [v3 initWithRecordName:v4 zoneID:v5];

  return v6;
}

+ (id)_activityDataShareRecordID
{
  v3 = objc_alloc(MEMORY[0x277CBC5D0]);
  v4 = [a1 activityDataRecordZoneID];
  v5 = [v3 initWithRecordName:@"ActivityDataZone" zoneID:v4];

  return v5;
}

- (void)_createActivityDataShareWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() activityDataRootRecordID];
  v6 = _ASCreateActivityDataRootRecordWithID();

  v7 = [(ASCloudKitManager *)self cloudKitUtility];
  v8 = [objc_opt_class() _activityDataShareRecordID];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__ASCloudKitManager__createActivityDataShareWithCompletion___block_invoke;
  v10[3] = &unk_278C4C640;
  v11 = v4;
  v9 = v4;
  [v7 createShareAndAssociatedZoneWithShareRecordID:v8 rootRecord:v6 otherRecordsToSave:0 completion:v10];
}

- (void)fetchOrCreateActivityDataShareWithGroup:(id)a3 activity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    objc_initWeak(&location, self);
    serialQueue = self->_serialQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __81__ASCloudKitManager_fetchOrCreateActivityDataShareWithGroup_activity_completion___block_invoke;
    v13[3] = &unk_278C4C6B8;
    objc_copyWeak(&v17, &location);
    v13[4] = self;
    v14 = v9;
    v15 = v8;
    v16 = v10;
    dispatch_async(serialQueue, v13);

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  else
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v10 + 2))(v10, 0, v12, 0);
  }
}

void __81__ASCloudKitManager_fetchOrCreateActivityDataShareWithGroup_activity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained cloudKitUtility];
    v5 = *(a1 + 32);
    v6 = [objc_opt_class() _activityDataShareRecordID];
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __81__ASCloudKitManager_fetchOrCreateActivityDataShareWithGroup_activity_completion___block_invoke_2;
    v9[3] = &unk_278C4C690;
    v10 = *(a1 + 56);
    objc_copyWeak(&v11, (a1 + 64));
    [v4 fetchShareWithShareRecordID:v6 activity:v7 group:v8 completion:v9];

    objc_destroyWeak(&v11);
  }
}

void __81__ASCloudKitManager_fetchOrCreateActivityDataShareWithGroup_activity_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __81__ASCloudKitManager_fetchOrCreateActivityDataShareWithGroup_activity_completion___block_invoke_3;
      v8[3] = &unk_278C4C668;
      v9 = *(a1 + 32);
      [WeakRetained _createActivityDataShareWithCompletion:v8];
    }
  }
}

+ (id)relationshipZone
{
  if (relationshipZone_onceToken != -1)
  {
    +[ASCloudKitManager relationshipZone];
  }

  v3 = relationshipZone_relationshipZone;

  return v3;
}

uint64_t __37__ASCloudKitManager_relationshipZone__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBC5F8]);
  relationshipZone_relationshipZone = [v0 initWithZoneName:@"RelationshipZone" ownerName:*MEMORY[0x277CBBF28]];

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_cancelAllExecutingFetches
{
  dispatch_assert_queue_V2(self->_serialQueue);
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling all executing fetches", buf, 2u);
  }

  v4 = [(ASCloudKitManager *)self cloudKitUtility];
  [v4 cancelAllExecutingFetches];

  self->_currentFetchPriority = 0;
  [(HDDaemonTransaction *)self->_fetchTransaction invalidate];
  fetchTransaction = self->_fetchTransaction;
  self->_fetchTransaction = 0;

  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ASCloudKitManager__queue_cancelAllExecutingFetches__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_sync(observerQueue, block);
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:1 userInfo:0];
  [(ASCloudKitManager *)self _queue_callFetchCompletionBlocksWithSuccess:0 error:v7];
}

void __53__ASCloudKitManager__queue_cancelAllExecutingFetches__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v3 = *(a1 + 32);
  v4 = *(v3 + 248);
  *(v3 + 248) = v2;

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(*(a1 + 32) + 64);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(a1 + 32) + 240) containsObject:{*(*(&v11 + 1) + 8 * v9), v11}])
        {
          dispatch_group_enter(*(*(a1 + 32) + 248));
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_queue_startFetchAllChangesOperationWithPriority:(int64_t)a3 activity:(id)a4 changeTokenCache:(id)a5 secureCloudChangeTokenCache:(id)a6 group:(id)a7 completion:(id)a8
{
  v37 = a4;
  v14 = a5;
  v34 = a6;
  v15 = a7;
  v33 = a8;
  dispatch_assert_queue_V2(self->_serialQueue);
  v16 = dispatch_group_create();
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x3032000000;
  v86[3] = __Block_byref_object_copy__8;
  v86[4] = __Block_byref_object_dispose__8;
  v87 = 0;
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__8;
  v84[4] = __Block_byref_object_dispose__8;
  v85 = 0;
  v82[0] = 0;
  v82[1] = v82;
  v82[2] = 0x3032000000;
  v82[3] = __Block_byref_object_copy__8;
  v82[4] = __Block_byref_object_dispose__8;
  v83 = 0;
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x3032000000;
  v80[3] = __Block_byref_object_copy__8;
  v80[4] = __Block_byref_object_dispose__8;
  v81 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = __Block_byref_object_copy__8;
  v78[4] = __Block_byref_object_dispose__8;
  v79 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__8;
  v76[4] = __Block_byref_object_dispose__8;
  v77 = 0;
  v17 = [(ASCloudKitManager *)self additionalZoneIDsToFetchWithServerChangeTokenChange:v14];
  v18 = v17;
  v19 = MEMORY[0x277CBEBF8];
  if (v17)
  {
    v19 = v17;
  }

  v36 = v19;
  v20 = [(ASCloudKitManager *)self secureCloudDelegate];
  v35 = [v20 sharedLegacyZoneIDsToSkip];

  dispatch_group_enter(v16);
  v21 = [(ASCloudKitManager *)self cloudKitUtility];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke;
  v71[3] = &unk_278C4C6E0;
  v73 = v86;
  v74 = v78;
  v75 = v84;
  v22 = v16;
  v72 = v22;
  v23 = MEMORY[0x277CBEC10];
  [v21 fetchChangesInPrivateDatabaseWithServerChangeTokenCache:v14 priority:a3 activity:v37 group:v15 additionalZoneIDs:v36 zoneIDsToSkip:MEMORY[0x277CBEBF8] fetchConfigurations:MEMORY[0x277CBEC10] completion:v71];

  dispatch_group_enter(v22);
  v24 = [(ASCloudKitManager *)self cloudKitUtility];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_416;
  v66[3] = &unk_278C4C6E0;
  v68 = v82;
  v69 = v76;
  v70 = v80;
  v25 = v22;
  v67 = v25;
  [v24 fetchChangesInSharedDatabaseWithServerChangeTokenCache:v14 priority:a3 activity:v37 group:v15 additionalZoneIDs:MEMORY[0x277CBEBF8] zoneIDsToSkip:v35 fetchConfigurations:v23 completion:v66];

  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__8;
  v64[4] = __Block_byref_object_dispose__8;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__8;
  v62[4] = __Block_byref_object_dispose__8;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x3032000000;
  v60[3] = __Block_byref_object_copy__8;
  v60[4] = __Block_byref_object_dispose__8;
  v61 = 0;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__8;
  v58[4] = __Block_byref_object_dispose__8;
  v59 = 0;
  if (ASSecureCloudEnabled())
  {
    v26 = [(ASCloudKitManager *)self secureCloudDelegate];

    if (v26)
    {
      dispatch_group_enter(v25);
      v27 = [(ASCloudKitManager *)self secureCloudDelegate];
      v28 = [(ASCloudKitManager *)self secureCloudPrivateDatabaseFetchConfigurations];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_417;
      v54[3] = &unk_278C4C708;
      v56 = v64;
      v57 = v62;
      v29 = v25;
      v55 = v29;
      [v27 cloudKitManager:self fetchPrivateDatabaseChangesWithCache:v34 priority:a3 activity:v37 group:v15 fetchConfigurations:v28 completion:v54];

      dispatch_group_enter(v29);
      v30 = [(ASCloudKitManager *)self secureCloudDelegate];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_419;
      v50[3] = &unk_278C4C708;
      v52 = v60;
      v53 = v58;
      v51 = v29;
      [v30 cloudKitManager:self fetchSharedDatabaseChangesWithCache:v34 priority:a3 activity:v37 group:v15 completion:v50];
    }
  }

  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_420;
  block[3] = &unk_278C4C730;
  v41 = v80;
  v42 = v86;
  v43 = v64;
  v44 = v82;
  v45 = v60;
  v46 = v62;
  v39 = v33;
  v40 = v84;
  v47 = v58;
  v48 = v78;
  v49 = v76;
  v32 = v33;
  dispatch_group_notify(v25, serialQueue, block);

  _Block_object_dispose(v58, 8);
  _Block_object_dispose(v60, 8);

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(v78, 8);

  _Block_object_dispose(v80, 8);
  _Block_object_dispose(v82, 8);

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(v86, 8);
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  ASLoggingInitialize();
  v12 = *MEMORY[0x277CE8FD0];
  v13 = *MEMORY[0x277CE8FD0];
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Fetched changes in private database successfully.", v14, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_416(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  ASLoggingInitialize();
  v12 = *MEMORY[0x277CE8FD0];
  v13 = *MEMORY[0x277CE8FD0];
  if (v9)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_416_cold_1();
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Fetched changes in shared database successfully.", v14, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_417(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  v10 = *MEMORY[0x277CE8FD0];
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_417_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Fetched changes in secure cloud private database successfully.", v11, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_419(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  v10 = *MEMORY[0x277CE8FD0];
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_419_cold_1();
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Fetched changes in secure cloud shared database successfully.", v11, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_420(void *a1)
{
  v2 = *(*(a1[5] + 8) + 40);
  if (v2)
  {
    v3 = 0;
  }

  else
  {
    v2 = *(*(a1[6] + 8) + 40);
    v3 = v2 == 0;
  }

  v4 = v2;
  if (!ASSecureCloudEnabled())
  {
    v11 = a1[4];
    if (!v3)
    {
      v27 = v4;
      (*(v11 + 16))(v11, 0, v4, 0, 0, 0, 0);
      goto LABEL_27;
    }

    v27 = v4;
    goto LABEL_24;
  }

  v5 = *(a1[7] + 8);
  v6 = *(v5 + 40);
  v7 = *(*(a1[8] + 8) + 40);
  if (v6)
  {
    v8 = [v6 arrayByAddingObjectsFromArray:v7];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v12 = v7;
    v10 = *(v5 + 40);
    *(v5 + 40) = v12;
  }

  v13 = *(a1[9] + 8);
  v14 = *(v13 + 40);
  v15 = *(*(a1[10] + 8) + 40);
  if (v14)
  {
    v16 = [v14 arrayByAddingObjectsFromArray:v15];
    v17 = *(a1[9] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    v19 = v15;
    v18 = *(v13 + 40);
    *(v13 + 40) = v19;
  }

  v20 = *(*(a1[11] + 8) + 40);
  if (v3)
  {
    if (v20)
    {
      LOBYTE(v3) = 0;
      goto LABEL_21;
    }

    v21 = *(*(a1[12] + 8) + 40) == 0;
  }

  else
  {
    v21 = 0;
    if (v20)
    {
      goto LABEL_21;
    }
  }

  v20 = *(*(a1[12] + 8) + 40);
  LOBYTE(v3) = v21;
LABEL_21:
  if (v4)
  {
    v20 = v4;
  }

  v27 = v20;

  v11 = a1[4];
  if (!v3)
  {
    v24 = 0;
    v22 = 0;
    v26 = 0;
    v23 = 0;
    v25 = 0;
    goto LABEL_26;
  }

LABEL_24:
  v22 = *(*(a1[7] + 8) + 40);
  v23 = *(*(a1[9] + 8) + 40);
  v24 = *(*(a1[13] + 8) + 40);
  v25 = *(*(a1[14] + 8) + 40);
  v26 = 1;
LABEL_26:
  (*(v11 + 16))(v11, v26, v27, v22, v23, v24, v25);
LABEL_27:
}

- (void)_queue_callFetchCompletionBlocksWithSuccess:(BOOL)a3 error:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_serialQueue);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self;
  v7 = self->_blocksWaitingOnFetch;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    v11 = MEMORY[0x277D85CD0];
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__ASCloudKitManager__queue_callFetchCompletionBlocksWithSuccess_error___block_invoke;
        block[3] = &unk_278C4BD38;
        v19 = v13;
        v20 = a3;
        v18 = v6;
        dispatch_async(v11, block);

        ++v12;
      }

      while (v9 != v12);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  blocksWaitingOnFetch = v16->_blocksWaitingOnFetch;
  v16->_blocksWaitingOnFetch = MEMORY[0x277CBEBF8];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_fetchAllChangesWithPriority:(int64_t)a3 activity:(id)a4 group:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke;
  v12[3] = &unk_278C4C7D0;
  v12[4] = self;
  v13 = v8;
  v14 = v9;
  v15 = a3;
  v10 = v9;
  v11 = v8;
  [(ASCloudKitManager *)self _performBlockWhenAllObserversBecomeReady:v12];
}

void __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke(void *a1)
{
  dispatch_assert_queue_V2(*(a1[4] + 24));
  v2 = [MEMORY[0x277D10678] transactionWithOwner:a1[4] activityName:@"ASCloudKitFetch"];
  v3 = a1[4];
  v4 = *(v3 + 256);
  *(v3 + 256) = v2;

  if (ASSecureCloudEnabled())
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 272));
    v6 = [WeakRetained copySecureCloudChangeTokenCache];
  }

  else
  {
    v6 = 0;
  }

  if (([*(a1[4] + 208) isExpired] & 1) != 0 || objc_msgSend(v6, "isExpired"))
  {
    ASLoggingInitialize();
    v7 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Change token cache is expired, doing full fetch", buf, 2u);
    }

    v8 = [[ASCloudKitServerChangeTokenCache alloc] initWithSerialQueue:*(a1[4] + 40) cloudType:0];
    v9 = [[ASCloudKitServerChangeTokenCache alloc] initWithSerialQueue:*(a1[4] + 40) cloudType:1];
    v10 = 0;
  }

  else
  {
    ASLoggingInitialize();
    v11 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Change token cache is still valid, copying", buf, 2u);
    }

    v8 = [*(a1[4] + 208) copy];
    v9 = [v6 copy];
    v10 = 1;
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_422;
  v19[3] = &unk_278C4C7A8;
  v19[4] = v13;
  v24 = v10;
  v20 = v12;
  v21 = a1[6];
  v22 = v8;
  v16 = a1[7];
  v23 = v9;
  v25 = v16;
  v17 = v9;
  v18 = v8;
  [v13 _queue_startFetchAllChangesOperationWithPriority:v15 activity:v20 changeTokenCache:v18 secureCloudChangeTokenCache:v17 group:v14 completion:v19];
}

void __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_422(uint64_t a1, char a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = *(a1 + 32);
  v19 = *(v18 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_2;
  block[3] = &unk_278C4C780;
  block[4] = v18;
  v32 = v14;
  v41 = a2;
  v33 = v15;
  v34 = v13;
  v35 = v16;
  v36 = v17;
  v39 = *(a1 + 72);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  *&v24 = v22;
  *(&v24 + 1) = v23;
  *&v25 = v20;
  *(&v25 + 1) = v21;
  v37 = v25;
  v38 = v24;
  v40 = *(a1 + 80);
  v26 = v17;
  v27 = v16;
  v28 = v13;
  v29 = v15;
  v30 = v14;
  dispatch_async(v19, block);
}

void __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 184) = 0;
  v2 = [*(a1 + 40) count];
  v3 = [*(a1 + 48) count];
  v4 = *(a1 + 128) == 1 && *(a1 + 56) == 0;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FD0];
  v6 = *MEMORY[0x277CE8FD0];
  v7 = os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT);
  if (!v4 && v2 == -v3)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Not handling changes because we found zero changed records.", buf, 2u);
    }

    if (v4)
    {
      goto LABEL_9;
    }

LABEL_20:
    v26 = *(*(a1 + 32) + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_426;
    block[3] = &unk_278C4C758;
    v27 = *(a1 + 56);
    v28 = *(a1 + 32);
    v33 = v27;
    v34 = v28;
    v35 = *(a1 + 128);
    dispatch_async(v26, block);
    v29 = v33;
LABEL_22:

    goto LABEL_23;
  }

  if (v7)
  {
    v17 = *(a1 + 40);
    v18 = v6;
    v19 = [v17 count];
    v20 = [*(a1 + 48) count];
    *buf = 134218240;
    v40 = v19;
    v41 = 2048;
    v42 = v20;
    _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "Fetched changes: %ld private, %ld shared changed records.", buf, 0x16u);
  }

  ASLoggingInitialize();
  v21 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 64);
    v23 = v21;
    v24 = [v22 count];
    v25 = [*(a1 + 72) count];
    *buf = 134218240;
    v40 = v24;
    v41 = 2048;
    v42 = v25;
    _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "Fetched deletions: %ld private, %ld shared changed records.", buf, 0x16u);
  }

  [*(a1 + 32) _handleNewPrivateDatabaseRecordChanges:*(a1 + 40) sharedDatabaseRecordChanges:*(a1 + 48) privateDatabaseDeletedRecordIDs:*(a1 + 64) sharedDatabaseDeletedRecordIDs:*(a1 + 72) fetchType:*(a1 + 112) activity:*(a1 + 80) cloudKitGroup:*(a1 + 88)];
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_9:
  v8 = [*(a1 + 96) copy];
  v9 = *(a1 + 32);
  v10 = *(v9 + 208);
  *(v9 + 208) = v8;

  if (ASSecureCloudEnabled())
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
    v12 = [*(a1 + 104) copy];
    [WeakRetained updateSecureCloudChangeTokenCache:v12];
  }

  v13 = *(a1 + 32);
  if (*(v13 + 192) != 1)
  {
    v30 = *(v13 + 32);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_423;
    v36[3] = &unk_278C4C758;
    v36[4] = v13;
    v38 = *(a1 + 128);
    v37 = *(a1 + 56);
    dispatch_async(v30, v36);
    v29 = v37;
    goto LABEL_22;
  }

  ASLoggingInitialize();
  v14 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "A subscription notification came in during the last fetch, running another fetch now.", buf, 2u);
  }

  *(*(a1 + 32) + 192) = 0;
  [*(*(a1 + 32) + 256) invalidate];
  v15 = *(a1 + 32);
  v16 = *(v15 + 256);
  *(v15 + 256) = 0;

  [*(a1 + 32) _fetchAllChangesWithPriority:*(a1 + 120) activity:*(a1 + 80) group:*(a1 + 88)];
LABEL_23:
  v31 = *MEMORY[0x277D85DE8];
}

void __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_423(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_2_424;
  block[3] = &unk_278C4C758;
  block[4] = v1;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_2_424(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Fetched changes successfully, calling completions.", v7, 2u);
  }

  [*(a1 + 32) _queue_setHasCompletedFirstFetch:1];
  v3 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setDateOfLastSuccessfulFetch:v3];

  [*(a1 + 32) _queue_callFetchCompletionBlocksWithSuccess:*(a1 + 48) error:*(a1 + 40)];
  [*(*(a1 + 32) + 208) persistToUserDefaults];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
  [WeakRetained persistCurrentSecureCloudChangeTokenCache];

  [*(*(a1 + 32) + 256) invalidate];
  v5 = *(a1 + 32);
  v6 = *(v5 + 256);
  *(v5 + 256) = 0;
}

void __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_426(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
  {
    __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_426_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_427;
  block[3] = &unk_278C4C758;
  block[4] = v9;
  v13 = *(a1 + 48);
  v12 = *(a1 + 32);
  dispatch_async(v10, block);
}

uint64_t __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_427(uint64_t a1)
{
  [*(*(a1 + 32) + 256) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 256);
  *(v2 + 256) = 0;

  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _queue_callFetchCompletionBlocksWithSuccess:v4 error:v6];
}

- (void)_fetchAllChangesWithPriority:(int64_t)a3 activity:(id)a4 group:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__ASCloudKitManager__fetchAllChangesWithPriority_activity_group_completion___block_invoke;
  block[3] = &unk_278C4C7F8;
  v20 = v12;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v11;
  v15 = v10;
  v16 = v12;
  dispatch_async(serialQueue, block);
}

void __76__ASCloudKitManager__fetchAllChangesWithPriority_activity_group_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(*(a1 + 32) + 200);
    v4 = [v2 copy];
    v5 = MEMORY[0x23EF0EB00]();
    v6 = [v3 arrayByAddingObject:v5];
    v7 = *(a1 + 32);
    v8 = *(v7 + 200);
    *(v7 + 200) = v6;
  }

  v9 = *(*(a1 + 32) + 184);
  if (v9 >= *(a1 + 64))
  {
    ASLoggingInitialize();
    v17 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(*(a1 + 32) + 184);
      v19 = *(a1 + 64);
      v21 = 134218240;
      v22 = v18;
      v23 = 2048;
      v24 = v19;
      _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "A same or higher priority fetch is executing, adding completion to pending completion block list; current priority: %lu, requested priority: %lu", &v21, 0x16u);
    }
  }

  else
  {
    if (v9)
    {
      ASLoggingInitialize();
      v10 = *MEMORY[0x277CE8FD0];
      if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(*(a1 + 32) + 184);
        v12 = *(a1 + 64);
        v21 = 134218240;
        v22 = v11;
        v23 = 2048;
        v24 = v12;
        _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Lower priority fetches are executing, cancelling all fetches before running higher priority fetch; current priority: %lu, requested priority: %lu", &v21, 0x16u);
      }

      [*(a1 + 32) _queue_cancelAllExecutingFetches];
    }

    ASLoggingInitialize();
    v13 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 64);
      v21 = 134217984;
      v22 = v14;
      _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Running fetch with priority %lu now.", &v21, 0xCu);
    }

    *(*(a1 + 32) + 184) = *(a1 + 64);
    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    [*(a1 + 32) _fetchAllChangesWithPriority:? activity:? group:?];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllChangesWithPriority:(int64_t)a3 activity:(id)a4 group:(id)a5 completion:(id)a6
{
  v13 = a4;
  v10 = a5;
  v11 = a6;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    [(ASCloudKitManager *)self _fetchAllChangesWithPriority:a3 activity:v13 group:v10 completion:v11];
  }

  else if (v11)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    v11[2](v11, 0, v12);
  }
}

- (void)fetchAllChangesIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 priority:(int64_t)a4 activity:(id)a5 group:(id)a6 completion:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    serialQueue = self->_serialQueue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __105__ASCloudKitManager_fetchAllChangesIfTimeSinceLastFetchIsGreaterThan_priority_activity_group_completion___block_invoke;
    v17[3] = &unk_278C4C820;
    v17[4] = self;
    v21 = a3;
    v22 = a4;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    dispatch_async(serialQueue, v17);
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v14 + 2))(v14, 0, v16);
  }
}

void __105__ASCloudKitManager_fetchAllChangesIfTimeSinceLastFetchIsGreaterThan_priority_activity_group_completion___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [*(a1 + 32) dateOfLastSuccessfulFetch];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v4 - v6;

  v8 = [*(a1 + 32) dateOfLastSuccessfulFetch];

  ASLoggingInitialize();
  v9 = MEMORY[0x277CE8FD0];
  v10 = *MEMORY[0x277CE8FD0];
  v11 = os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v11)
    {
      v12 = *(a1 + 64);
      *v23 = 134218240;
      *&v23[4] = v12;
      *&v23[12] = 2048;
      *&v23[14] = v7;
      v13 = "Fetch requested if no fetch performed within last %lu seconds, last fetch was %lf seconds ago";
      v14 = v10;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, v13, v23, v15);
    }
  }

  else if (v11)
  {
    v16 = *(a1 + 64);
    *v23 = 134217984;
    *&v23[4] = v16;
    v13 = "Fetch requested if no fetch performed within last %lu seconds, no successful fetch performed yet";
    v14 = v10;
    v15 = 12;
    goto LABEL_6;
  }

  v17 = [*(a1 + 32) dateOfLastSuccessfulFetch];
  if (!v17)
  {
    goto LABEL_11;
  }

  if (v7 < 0.0)
  {
    v7 = -v7;
  }

  v18 = *(a1 + 64);

  if (v7 <= v18)
  {
    ASLoggingInitialize();
    v19 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_23E5E3000, v19, OS_LOG_TYPE_DEFAULT, "Last fetch is too recent, not fetching.", v23, 2u);
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:3 userInfo:0];
      (*(v20 + 16))(v20, 0, v21);
    }
  }

  else
  {
LABEL_11:
    [*(a1 + 32) _fetchAllChangesWithPriority:*(a1 + 72) activity:*(a1 + 40) group:*(a1 + 48) completion:*(a1 + 56)];
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCompletedFirstFetch
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ASCloudKitManager_hasCompletedFirstFetch__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setHasCompletedFirstFetch:(BOOL)a3
{
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__ASCloudKitManager_setHasCompletedFirstFetch___block_invoke;
  v4[3] = &unk_278C4B2A0;
  v4[4] = self;
  v5 = a3;
  dispatch_sync(serialQueue, v4);
}

- (void)_queue_setHasCompletedFirstFetch:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_hasCompletedFirstFetch != v3)
  {
    self->_hasCompletedFirstFetch = v3;
    WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);
    v6 = [WeakRetained deviceLocalActivitySharingKeyValueDomain];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasCompletedFirstFetch];
    v13 = 0;
    [v6 setNumber:v7 forKey:@"ActivitySharingHasCompletedFirstCloudKitFetchKeyVersion2" error:&v13];
    v8 = v13;

    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE8FD0];
    v10 = *MEMORY[0x277CE8FD0];
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ASCloudKitManager _queue_setHasCompletedFirstFetch:];
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      hasCompletedFirstFetch = self->_hasCompletedFirstFetch;
      *buf = 67109120;
      v15 = hasCompletedFirstFetch;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Updated has completed first fetch: %d", buf, 8u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)expireChangeTokenWithCompletion:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__ASCloudKitManager_expireChangeTokenWithCompletion___block_invoke;
  v7[3] = &unk_278C4B1B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

uint64_t __53__ASCloudKitManager_expireChangeTokenWithCompletion___block_invoke(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling all fetches and expiring change token immediately", v4, 2u);
  }

  [*(a1 + 32) _queue_cancelAllExecutingFetches];
  [*(*(a1 + 32) + 208) setExpired:1];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (id)additionalZoneIDsToFetchWithServerChangeTokenChange:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _MetadataZoneID();
  v5 = [v3 fetchDateForRecordZoneID:v4];

  if (v5 && ([MEMORY[0x277CBEA80] currentCalendar], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEAA8], "date"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isDate:inSameDayAsDate:", v5, v7), v7, v6, v8))
  {
    ASLoggingInitialize();
    v9 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Skipping fetch of metadata_zone", v13, 2u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v14[0] = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)secureCloudPrivateDatabaseFetchConfigurations
{
  v17[4] = *MEMORY[0x277D85DE8];
  v13 = *MEMORY[0x277CE8EB8];
  v2 = [[ASCloudKitFetchConfiguration alloc] initWithRecordType:v13 shouldSkip:1];
  v17[0] = v2;
  v14 = *MEMORY[0x277CE8EF0];
  v3 = [[ASCloudKitFetchConfiguration alloc] initWithRecordType:v14 shouldSkip:1];
  v17[1] = v3;
  v15 = *MEMORY[0x277CE8F08];
  v4 = [[ASCloudKitFetchConfiguration alloc] initWithRecordType:v15 shouldSkip:1];
  v17[2] = v4;
  v16 = *MEMORY[0x277CE8EC8];
  v5 = [ASCloudKitFetchConfiguration alloc];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 dateByAddingUnit:16 value:-4 toDate:v7 options:0];
  v9 = [(ASCloudKitFetchConfiguration *)v5 initWithRecordType:v16 shouldSkip:0 shouldCoalesce:1 oldestAllowedModificationDate:v8];
  v17[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v13 count:4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)subscribeToCloudKitDatabaseChangesWithCompletion:(id)a3
{
  v4 = a3;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    serialQueue = self->_serialQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__ASCloudKitManager_subscribeToCloudKitDatabaseChangesWithCompletion___block_invoke;
    v7[3] = &unk_278C4B1B0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(serialQueue, v7);
  }

  else if (v4)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v4 + 2))(v4, 0, v6);
  }
}

- (void)_subscribeToChangesInDatabase:(id)a3 subscriptionPrefix:(id)a4 recordTypes:(id)a5 zoneNames:(id)a6 recordTypesToDelete:(id)a7 completion:(id)a8
{
  v78 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v52 = a6;
  v53 = a7;
  v17 = a8;
  if ([v16 count] || objc_msgSend(v53, "count"))
  {
    v49 = self;
    v50 = v17;
    v18 = [MEMORY[0x277CBEB58] set];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v51 = v16;
    obj = v16;
    v19 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v68;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v68 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v67 + 1) + 8 * i);
          ASLoggingInitialize();
          v24 = *MEMORY[0x277CE8FD0];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            [v14 databaseScope];
            v26 = CKDatabaseScopeString();
            *buf = 138543618;
            v74 = v23;
            v75 = 2114;
            v76 = v26;
            _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "Creating subscription to records with type %{public}@ in database %{public}@", buf, 0x16u);
          }

          v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v15, v23];
          v28 = _CreateSubscription(v27, v23, 1);

          [v18 addObject:v28];
        }

        v20 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v20);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    obja = v52;
    v29 = [obja countByEnumeratingWithState:&v63 objects:v72 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v64;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v64 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v63 + 1) + 8 * j);
          ASLoggingInitialize();
          v34 = *MEMORY[0x277CE8FD0];
          if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
          {
            v35 = v34;
            [v14 databaseScope];
            v36 = CKDatabaseScopeString();
            *buf = 138543618;
            v74 = v33;
            v75 = 2114;
            v76 = v36;
            _os_log_impl(&dword_23E5E3000, v35, OS_LOG_TYPE_DEFAULT, "Creating subscription to zone with name %{public}@ in database %{public}@", buf, 0x16u);
          }

          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v15, v33];
          v39 = _CreateZoneSubscription(v37, v38, 1);

          [v18 addObject:v39];
        }

        v30 = [obja countByEnumeratingWithState:&v63 objects:v72 count:16];
      }

      while (v30);
    }

    v40 = [MEMORY[0x277CBEB58] set];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v41 = v53;
    v42 = [v41 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v60;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v60 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v15, *(*(&v59 + 1) + 8 * k)];
          [v40 addObject:v46];
        }

        v43 = [v41 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v43);
    }

    v47 = [(ASCloudKitManager *)v49 cloudKitUtility];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __123__ASCloudKitManager__subscribeToChangesInDatabase_subscriptionPrefix_recordTypes_zoneNames_recordTypesToDelete_completion___block_invoke;
    v56[3] = &unk_278C4C848;
    v57 = v14;
    v17 = v50;
    v58 = v50;
    [v47 saveSubscriptions:v18 andDeleteSubscriptionsWithIdentifiers:v40 inDatabase:v57 completion:v56];

    v16 = v51;
  }

  else if (v17)
  {
    (*(v17 + 2))(v17, 1, 0);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __123__ASCloudKitManager__subscribeToChangesInDatabase_subscriptionPrefix_recordTypes_zoneNames_recordTypesToDelete_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FD0];
  if (v7 || !a2)
  {
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __123__ASCloudKitManager__subscribeToChangesInDatabase_subscriptionPrefix_recordTypes_zoneNames_recordTypesToDelete_completion___block_invoke_cold_1(a1, v9, v7);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [v8 count];
    [*(a1 + 32) databaseScope];
    v12 = CKDatabaseScopeString();
    v15 = 134218242;
    v16 = v11;
    v17 = 2114;
    v18 = v12;
    _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Saved %lu subscriptions into database %{public}@.", &v15, 0x16u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, a2, v7);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToChangesInSharedDatabaseWithCompletion:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASCloudKitManager *)self container];
  v6 = [v5 sharedCloudDatabase];
  v7 = *MEMORY[0x277CE8F00];
  v10[0] = *MEMORY[0x277CE8EF0];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [(ASCloudKitManager *)self _subscribeToChangesInDatabase:v6 subscriptionPrefix:@"ActivitySharingSharedDataSubscription" recordTypes:v8 zoneNames:MEMORY[0x277CBEBF8] recordTypesToDelete:&unk_2850F51C8 completion:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_subscribeToChangesInPrivateDatabaseWithCompletion:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASCloudKitManager *)self container];
  v6 = [v5 privateCloudDatabase];
  v11[0] = *MEMORY[0x277CE8F00];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = *MEMORY[0x277CE8EE0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(ASCloudKitManager *)self _subscribeToChangesInDatabase:v6 subscriptionPrefix:@"ActivitySharingPrivateDataSubscription" recordTypes:v7 zoneNames:v8 recordTypesToDelete:&unk_2850F51E0 completion:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleSecureCloudServerPush:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CE9300]];

  [(ASCloudKitManager *)self _handleIncomingNotification:v5];
}

- (void)_handleIncomingNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FD0];
  v6 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 subscriptionID];
    *buf = 138543362;
    v16 = v8;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Received CloudKit push notification for subscription with id: %{public}@", buf, 0xCu);
  }

  v9 = [v4 alertBody];

  if (v9)
  {
    serialQueue = self->_serialQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__ASCloudKitManager__handleIncomingNotification___block_invoke;
    v13[3] = &unk_278C4B250;
    v13[4] = self;
    v14 = v4;
    dispatch_async(serialQueue, v13);
  }

  else
  {
    ASLoggingInitialize();
    v11 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Push notification is low-priority, not fetching.", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __49__ASCloudKitManager__handleIncomingNotification___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 176);
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FD0];
  v4 = *MEMORY[0x277CE8FD0];
  v5 = os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "CloudKit push received during coalescing period, ignoring.", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 134217984;
      v18 = 0x4000000000000000;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Push notification coalescing interval starting, will take %lf seconds.", buf, 0xCu);
    }

    *(*(a1 + 32) + 176) = 1;
    v6 = dispatch_time(0, 2000000000);
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__ASCloudKitManager__handleIncomingNotification___block_invoke_454;
    block[3] = &unk_278C4B278;
    block[4] = v7;
    dispatch_after(v6, v8, block);
  }

  v9 = [*(a1 + 40) subscriptionID];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"ActivitySharingPrivateDataSubscription", *MEMORY[0x277CE8EE0]];
  v11 = [v9 isEqualToString:v10];

  if (v11)
  {
    ASLoggingInitialize();
    v12 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "CloudKit push received for metadata_zone, clearing fetch date.", buf, 2u);
    }

    v13 = *(*(a1 + 32) + 208);
    v14 = _MetadataZoneID();
    [v13 setFetchDate:0 forRecordZoneID:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __49__ASCloudKitManager__handleIncomingNotification___block_invoke_454(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FD0];
  v3 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Push notification coalescing interval finished, fetching changes.", buf, 2u);
  }

  *(*(a1 + 32) + 176) = 0;
  if (*(*(a1 + 32) + 184) < 2uLL)
  {
    v5 = ASCloudKitGroupPushTriggered();
    v6 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__ASCloudKitManager__handleIncomingNotification___block_invoke_455;
    v8[3] = &unk_278C4C308;
    v8[4] = v6;
    v9 = v5;
    v7 = v5;
    [v6 fetchAllChangesWithPriority:2 activity:0 group:v7 completion:v8];
  }

  else
  {
    ASLoggingInitialize();
    v4 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Push notification received during a fetch, fetching again after current fetch completes.", buf, 2u);
    }

    *(*(a1 + 32) + 192) = 1;
  }
}

void __49__ASCloudKitManager__handleIncomingNotification___block_invoke_455(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__ASCloudKitManager__handleIncomingNotification___block_invoke_2;
    v5[3] = &unk_278C4B250;
    v5[4] = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

- (void)_verifyOrCreateSubscriptionsWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__ASCloudKitManager__verifyOrCreateSubscriptionsWithCompletion___block_invoke;
  v7[3] = &unk_278C4BA08;
  v7[4] = self;
  v8 = v4;
  v5 = v4;
  v6 = self;
  [(ASCloudKitManager *)v6 _subscribeToChangesInPrivateDatabaseWithCompletion:v7];
}

uint64_t __64__ASCloudKitManager__verifyOrCreateSubscriptionsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3 || !a2)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, a2);
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      [v5 _subscribeToChangesInSharedDatabaseWithCompletion:*(a1 + 40)];
    }
  }

  return MEMORY[0x2821F9730]();
}

- (id)_queue_apsEnvironmentString
{
  v28 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  if (_queue_apsEnvironmentString_onceToken != -1)
  {
    [ASCloudKitManager _queue_apsEnvironmentString];
  }

  v3 = xpc_copy_entitlement_for_token();
  v4 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v3)];
  }

  else
  {
    v5 = 0;
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = *MEMORY[0x277CEE9F0];
  v6 = MEMORY[0x277CE8FD0];
  if (v5 && ![v5 compare:*MEMORY[0x277CBBFB8] options:1])
  {
    v7 = dispatch_semaphore_create(0);
    v8 = [(ASCloudKitManager *)self container];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__ASCloudKitManager__queue_apsEnvironmentString__block_invoke_2;
    v17[3] = &unk_278C4C870;
    v19 = &v20;
    v9 = v7;
    v18 = v9;
    [v8 serverPreferredPushEnvironmentWithCompletionHandler:v17];

    v10 = dispatch_time(0, 10000000000);
    if (dispatch_semaphore_wait(v9, v10))
    {
      ASLoggingInitialize();
      v11 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Timeout getting server preferred APS push environment", buf, 2u);
      }
    }
  }

  ASLoggingInitialize();
  v12 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v21[5];
    *buf = 138543362;
    v27 = v13;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Using APS push environment: %{public}@", buf, 0xCu);
  }

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __48__ASCloudKitManager__queue_apsEnvironmentString__block_invoke()
{
  v0 = getpid();

  return MEMORY[0x282205A80](v0, &_queue_apsEnvironmentString_auditToken);
}

void __48__ASCloudKitManager__queue_apsEnvironmentString__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    ASLoggingInitialize();
    v8 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = v7;
      _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Error getting server APS preferred push environment: %{public}@", &v10, 0xCu);
    }
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));

  v9 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  ASLoggingInitialize();
  v7 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "Received public token %@ on connection %p", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  ASLoggingInitialize();
  v13 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138413058;
    v16 = v10;
    v17 = 2114;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Received per-topic push token %@ for topic %{public}@ identifier %@ on connection %p", &v15, 0x2Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 userInfo];
  v7 = [MEMORY[0x277CBC4C0] notificationFromRemoteNotificationDictionary:v6];
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v5 topic];
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "APS push recieved: %@ %@", &v12, 0x16u);
  }

  [(ASCloudKitManager *)self _handleIncomingNotification:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_pushEnable
{
  v21 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_serialQueue);
  if (self->_apsConnection)
  {
    ASLoggingInitialize();
    v3 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "APS connection is already created", buf, 2u);
    }
  }

  else
  {
    v4 = [(ASCloudKitManager *)self _queue_apsEnvironmentString];
    if (v4)
    {
      v5 = [@"com.apple.icloud-container." stringByAppendingString:@"com.apple.Fitness"];
      v6 = objc_alloc(MEMORY[0x277CEEA10]);
      v7 = *MEMORY[0x277CE92C0];
      v8 = dispatch_get_global_queue(0, 0);
      v9 = [v6 initWithEnvironmentName:v4 namedDelegatePort:v7 queue:v8];
      apsConnection = self->_apsConnection;
      self->_apsConnection = v9;

      [(APSConnection *)self->_apsConnection setDelegate:self];
      v11 = self->_apsConnection;
      ASLoggingInitialize();
      v12 = *MEMORY[0x277CE8FD0];
      v13 = *MEMORY[0x277CE8FD0];
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = self->_apsConnection;
          *buf = 134217984;
          v20 = v14;
          _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Created APS connection %p", buf, 0xCu);
        }

        v15 = self->_apsConnection;
        v18 = v5;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
        [(APSConnection *)v15 setEnabledTopics:v16];
      }

      else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ASCloudKitManager _queue_pushEnable];
      }
    }

    else
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
      {
        [ASCloudKitManager _queue_pushEnable];
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_pushDisable
{
  dispatch_assert_queue_V2(self->_serialQueue);
  apsConnection = self->_apsConnection;
  if (apsConnection)
  {
    v4 = [(APSConnection *)apsConnection enabledTopics];
    v5 = [v4 count];

    if (v5)
    {
      [(APSConnection *)self->_apsConnection setEnabledTopics:0];
    }

    v6 = self->_apsConnection;
    self->_apsConnection = 0;
  }
}

- (void)forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:(id)a3 recordIDsToDelete:(id)a4 priority:(int64_t)a5 activity:(id)a6 group:(id)a7 completion:(id)a8
{
  v19 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v18 = [(ASCloudKitManager *)self cloudKitUtility];
    [v18 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v19 recordIDsToDelete:v14 priority:a5 activity:v15 group:v16 completion:v17];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v17 + 2))(v17, 0, v18, 0);
  }
}

- (void)saveRecordsIntoPrivateDatabase:(id)a3 recordIDsToDelete:(id)a4 priority:(int64_t)a5 activity:(id)a6 group:(id)a7 completion:(id)a8
{
  v19 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v18 = [(ASCloudKitManager *)self cloudKitUtility];
    [v18 saveRecordsIntoPrivateDatabase:v19 recordIDsToDelete:v14 priority:a5 activity:v15 group:v16 completion:v17];
  }

  else
  {
    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v17 + 2))(v17, 0, v18, 0);
  }
}

- (void)_cloudKitAccountStatusChanged:(id)a3
{
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Recieved local notification of CloudKit account status changes; fetching ", v5, 2u);
  }

  [(ASCloudKitManager *)self _fetchCloudKitAccountStatusAndNotifyOfChanges];
}

- (void)clearChangeTokenCacheAndFriendListWithCompletion:(id)a3
{
  v4 = a3;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    serialQueue = self->_serialQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__ASCloudKitManager_clearChangeTokenCacheAndFriendListWithCompletion___block_invoke;
    v7[3] = &unk_278C4B1B0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(serialQueue, v7);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v4 + 2))(v4, 0, v6);
  }
}

- (void)clearChangeTokenCachesWithCompletion:(id)a3
{
  v4 = a3;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    serialQueue = self->_serialQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__ASCloudKitManager_clearChangeTokenCachesWithCompletion___block_invoke;
    v7[3] = &unk_278C4B1B0;
    v7[4] = self;
    v8 = v4;
    dispatch_async(serialQueue, v7);
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v4 + 2))(v4, 0, v6);
  }
}

uint64_t __58__ASCloudKitManager_clearChangeTokenCachesWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queue_clearChangeTokenCaches];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_queue_clearChangeTokenCacheAndFriendListWithCompletion:(id)a3
{
  serialQueue = self->_serialQueue;
  v5 = a3;
  dispatch_assert_queue_V2(serialQueue);
  [(ASCloudKitManager *)self _queue_clearChangeTokenCaches];
  [(ASCloudKitManager *)self _queue_cancelAllExecutingFetches];
  [(ASCloudKitManager *)self _queue_setHasCompletedFirstFetch:0];
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);
  [WeakRetained clearFriendListWithCompletion:v5];
}

- (void)_queue_clearChangeTokenCaches
{
  v3 = [[ASCloudKitServerChangeTokenCache alloc] initWithSerialQueue:self->_changeTokenQueue];
  serverChangeTokenCache = self->_serverChangeTokenCache;
  self->_serverChangeTokenCache = v3;

  [(ASCloudKitServerChangeTokenCache *)self->_serverChangeTokenCache persistToUserDefaults];
  if (ASSecureCloudEnabled())
  {
    WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);
    [WeakRetained cloudKitManagerDidClearServerChangeToken:self];
  }
}

- (void)_performNewAccountTasksCreatingSubscriptions:(BOOL)a3 fetching:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = dispatch_group_create();
  ASLoggingInitialize();
  v10 = MEMORY[0x277CE8FD0];
  v11 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "New CloudKit account is now active, performing setup tasks.", buf, 2u);
  }

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 1;
  *buf = 0;
  v41 = buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__8;
  v44 = __Block_byref_object_dispose__8;
  v45 = 0;
  if (v6)
  {
    dispatch_group_enter(v9);
    ASLoggingInitialize();
    v12 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *v28 = 0;
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Creating subscriptions.", v28, 2u);
    }

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __86__ASCloudKitManager__performNewAccountTasksCreatingSubscriptions_fetching_completion___block_invoke;
    v36[3] = &unk_278C4C330;
    v38 = v46;
    v39 = buf;
    v37 = v9;
    [(ASCloudKitManager *)self _verifyOrCreateSubscriptionsWithCompletion:v36];
  }

  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 1;
  *v28 = 0;
  v29 = v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__8;
  v32 = __Block_byref_object_dispose__8;
  v33 = 0;
  if (v5)
  {
    dispatch_group_enter(v9);
    ASLoggingInitialize();
    v13 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "Fetching changes.", v27, 2u);
    }

    v14 = ASCloudKitGroupInitialDownload();
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __86__ASCloudKitManager__performNewAccountTasksCreatingSubscriptions_fetching_completion___block_invoke_466;
    v23[3] = &unk_278C4C330;
    v25 = v34;
    v26 = v28;
    v24 = v9;
    [(ASCloudKitManager *)self fetchAllChangesWithPriority:2 activity:0 group:v14 completion:v23];
  }

  serialQueue = self->_serialQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__ASCloudKitManager__performNewAccountTasksCreatingSubscriptions_fetching_completion___block_invoke_2;
  v17[3] = &unk_278C4C898;
  v20 = v34;
  v21 = buf;
  v22 = v28;
  v18 = v8;
  v19 = v46;
  v16 = v8;
  dispatch_group_notify(v9, serialQueue, v17);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v34, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v46, 8);
}

void __86__ASCloudKitManager__performNewAccountTasksCreatingSubscriptions_fetching_completion___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __86__ASCloudKitManager__performNewAccountTasksCreatingSubscriptions_fetching_completion___block_invoke_466(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_group_leave(*(a1 + 32));
}

void __86__ASCloudKitManager__performNewAccountTasksCreatingSubscriptions_fetching_completion___block_invoke_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v2 = *(*(a1[6] + 8) + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(*(a1[7] + 8) + 40);
  if (!v3)
  {
    v3 = *(*(a1[8] + 8) + 40);
  }

  v4 = v3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = v2 & 1;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Setup tasks complete, success: %{BOOL}d, error: %@", v8, 0x12u);
  }

  v6 = a1[4];
  if (v6)
  {
    (*(v6 + 16))(v6, v2 & 1, v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_cancelNewAccountTasksTimer
{
  newAccountTasksTimer = self->_newAccountTasksTimer;
  if (newAccountTasksTimer)
  {
    dispatch_source_cancel(newAccountTasksTimer);
    v4 = self->_newAccountTasksTimer;
    self->_newAccountTasksTimer = 0;
  }
}

void __108__ASCloudKitManager__performAndRetryNewAccountTasksWithRetryInterval_shouldCreateSubscriptions_shouldFetch___block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __108__ASCloudKitManager__performAndRetryNewAccountTasksWithRetryInterval_shouldCreateSubscriptions_shouldFetch___block_invoke_2;
  block[3] = &unk_278C4C8E8;
  v5 = a2;
  block[4] = v2;
  block[5] = *(a1 + 40);
  v6 = *(a1 + 48);
  dispatch_async(v3, block);
}

void __108__ASCloudKitManager__performAndRetryNewAccountTasksWithRetryInterval_shouldCreateSubscriptions_shouldFetch___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FD0];
  v4 = os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "New account tasks are complete, not scheduling a retry.", buf, 2u);
    }

    [*(a1 + 32) _saveCloudKitAddressToKeyValueStore];
  }

  else
  {
    if (v4)
    {
      v5 = *(a1 + 40);
      *buf = 134217984;
      v19 = v5;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "New account tasks failed, scheduling a retry for %lf seconds from now", buf, 0xCu);
    }

    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 24));
    v7 = *(a1 + 32);
    v8 = *(v7 + 224);
    *(v7 + 224) = v6;

    v9 = (*(a1 + 40) * 1000000000.0);
    v10 = v9 / 0xA;
    v11 = dispatch_time(0, v9);
    dispatch_source_set_timer(*(*(a1 + 32) + 224), v11, 0xFFFFFFFFFFFFFFFFLL, v10);
    v12 = *(a1 + 40) + *(a1 + 40);
    if (v12 > 86400.0)
    {
      v12 = 86400.0;
    }

    v13 = *(a1 + 32);
    v14 = *(v13 + 224);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __108__ASCloudKitManager__performAndRetryNewAccountTasksWithRetryInterval_shouldCreateSubscriptions_shouldFetch___block_invoke_467;
    handler[3] = &unk_278C4C8C0;
    handler[4] = v13;
    *&handler[5] = v12;
    v17 = *(a1 + 49);
    dispatch_source_set_event_handler(v14, handler);
    dispatch_resume(*(*(a1 + 32) + 224));
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_performAndRetryNewAccountTasksIfNecessaryWithShouldCreateSubscriptions:(BOOL)a3 shouldFetch:(BOOL)a4
{
  if (a3 || a4)
  {
    [ASCloudKitManager _performAndRetryNewAccountTasksWithRetryInterval:"_performAndRetryNewAccountTasksWithRetryInterval:shouldCreateSubscriptions:shouldFetch:" shouldCreateSubscriptions:120.0 shouldFetch:?];
  }
}

- (void)_saveCloudKitAddressToKeyValueStore
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__ASCloudKitManager__saveCloudKitAddressToKeyValueStore__block_invoke;
  v2[3] = &unk_278C4C938;
  v2[4] = self;
  [(ASCloudKitManager *)self _fetchCloudKitAddressWithCompletion:v2];
}

void __56__ASCloudKitManager__saveCloudKitAddressToKeyValueStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ASCloudKitManager__saveCloudKitAddressToKeyValueStore__block_invoke_2;
  v7[3] = &unk_278C4B250;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __56__ASCloudKitManager__saveCloudKitAddressToKeyValueStore__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained deviceLocalActivitySharingKeyValueDomain];

  v4 = *(a1 + 40);
  v10 = 0;
  [v3 setString:v4 forKey:@"ActivitySharingCloudKitAccountKey" error:&v10];
  v5 = v10;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FD0];
  v7 = *MEMORY[0x277CE8FD0];
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __56__ASCloudKitManager__saveCloudKitAddressToKeyValueStore__block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Set %@ as CloudKit address in key value domain.", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_isLastCloudKitAddressDifferentFromNewCloudKitAddress:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_serialQueue);
  WeakRetained = objc_loadWeakRetained(&self->_activitySharingManager);
  v6 = [WeakRetained deviceLocalActivitySharingKeyValueDomain];
  v14 = 0;
  v7 = [v6 stringForKey:@"ActivitySharingCloudKitAccountKey" error:&v14];
  v8 = v14;

  v9 = MEMORY[0x277CE8FD0];
  if (v8)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      [ASCloudKitManager _queue_isLastCloudKitAddressDifferentFromNewCloudKitAddress:];
    }
  }

  if (v7 == v4 || v7 && ([v4 isEqualToString:v7] & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    ASLoggingInitialize();
    v11 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "CloudKit address (%@) does not match previous CloudKit address (%@)", buf, 0x16u);
    }

    v10 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_fetchCloudKitAccountStatusAndNotifyOfChanges
{
  objc_initWeak(&location, self);
  v3 = [(ASCloudKitManager *)self container];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__ASCloudKitManager__fetchCloudKitAccountStatusAndNotifyOfChanges__block_invoke;
  v4[3] = &unk_278C4C960;
  objc_copyWeak(&v5, &location);
  [v3 accountStatusWithCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __66__ASCloudKitManager__fetchCloudKitAccountStatusAndNotifyOfChanges__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      __66__ASCloudKitManager__fetchCloudKitAccountStatusAndNotifyOfChanges__block_invoke_cold_1();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained _handleAccountStatusChange:a2];
    }
  }
}

- (void)_handleAccountStatusChange:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __48__ASCloudKitManager__handleAccountStatusChange___block_invoke;
  v3[3] = &unk_278C4C9D8;
  v3[4] = self;
  v3[5] = a3;
  [(ASCloudKitManager *)self _fetchCloudKitAddressWithCompletion:v3];
}

void __48__ASCloudKitManager__handleAccountStatusChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__ASCloudKitManager__handleAccountStatusChange___block_invoke_2;
  v12[3] = &unk_278C4C7D0;
  v9 = *(a1 + 40);
  v12[4] = v7;
  v13 = v6;
  v14 = v5;
  v15 = v9;
  v10 = v5;
  v11 = v6;
  dispatch_async(v8, v12);
}

void __48__ASCloudKitManager__handleAccountStatusChange___block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FD0];
  v3 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    v5 = v3;
    v6 = CKStringFromAccountStatus();
    *buf = 138543362;
    v35 = v6;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Fetched CloudKit account status: %{public}@", buf, 0xCu);
  }

  if (*(a1 + 56) != *(*(a1 + 32) + 216))
  {
    ASLoggingInitialize();
    v7 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "CloudKit account status changed, handling", buf, 2u);
    }

    ASLoggingInitialize();
    v8 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(*(a1 + 32) + 216);
      v10 = v8;
      v11 = CKStringFromAccountStatus();
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Previous account status: %{public}@", buf, 0xCu);
    }

    v12 = *(a1 + 56);
    if (v12 == 1)
    {
      v13 = *(a1 + 32);
      v14 = v13[27] == 3;
      if (!*(a1 + 40))
      {
        v15 = [v13 _queue_isLastCloudKitAddressDifferentFromNewCloudKitAddress:*(a1 + 48)];
LABEL_13:
        ASLoggingInitialize();
        v16 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v35) = v12 == 3;
          _os_log_impl(&dword_23E5E3000, v16, OS_LOG_TYPE_DEFAULT, "isSignedOut=%d", buf, 8u);
        }

        ASLoggingInitialize();
        v17 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v35) = v14;
          _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "isSignedInAfterBeingSignedOut=%d", buf, 8u);
        }

        ASLoggingInitialize();
        v18 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v35) = v15 & 1;
          _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "isSignedInToNewAccount=%d", buf, 8u);
        }

        v19 = v15 | v14;
        ASLoggingInitialize();
        v20 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v35) = (v12 == 3) | v15 & 1;
          _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "shouldClearStateAndEraseFriendList=%d", buf, 8u);
        }

        v21 = v19 & 1;
        ASLoggingInitialize();
        v22 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v35) = v15 & 1;
          _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "shouldCreateSubscriptions=%d", buf, 8u);
        }

        ASLoggingInitialize();
        v23 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          LODWORD(v35) = v21;
          _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "shouldPerformFetch=%d", buf, 8u);
        }

        *(*(a1 + 32) + 216) = *(a1 + 56);
        [*(a1 + 32) _queue_pushEnable];
        v24 = *(a1 + 32);
        if ((v12 == 3) | v15 & 1)
        {
          [v24 _cancelNewAccountTasksTimer];
          v25 = *(a1 + 32);
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __48__ASCloudKitManager__handleAccountStatusChange___block_invoke_469;
          v31[3] = &unk_278C4C988;
          v31[4] = v25;
          v32 = v15;
          v33 = v21;
          [v25 _queue_clearChangeTokenCacheAndFriendListWithCompletion:v31];
        }

        else
        {
          [v24 _performAndRetryNewAccountTasksIfNecessaryWithShouldCreateSubscriptions:0 shouldFetch:v21];
        }

        v26 = *(a1 + 32);
        v27 = *(v26 + 32);
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __48__ASCloudKitManager__handleAccountStatusChange___block_invoke_2_470;
        v30[3] = &unk_278C4C9B0;
        v28 = *(a1 + 56);
        v30[4] = v26;
        v30[5] = v28;
        dispatch_async(v27, v30);
        dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_472);
        goto LABEL_29;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    goto LABEL_13;
  }

LABEL_29:
  v29 = *MEMORY[0x277D85DE8];
}

void __48__ASCloudKitManager__handleAccountStatusChange___block_invoke_3()
{
  notify_post(*MEMORY[0x277CE91C8]);
  ASLoggingInitialize();
  v0 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23E5E3000, v0, OS_LOG_TYPE_DEFAULT, "Posted notification of CloudKit account status change", v1, 2u);
  }
}

- (void)fetchCloudKitAccountStatusWithCompletion:(id)a3
{
  v4 = a3;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v5 = [(ASCloudKitManager *)self container];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__ASCloudKitManager_fetchCloudKitAccountStatusWithCompletion___block_invoke;
    v7[3] = &unk_278C4CA00;
    v8 = v4;
    [v5 accountStatusWithCompletionHandler:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v4 + 2))(v4, 0, 0, v6);
  }
}

void __62__ASCloudKitManager_fetchCloudKitAccountStatusWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = objc_alloc_init(MEMORY[0x277CB8F48]);
    v7 = [v6 aa_primaryAppleAccount];
    v8 = v7;
    v9 = a2 == 1;
    if (v7)
    {
      if ([v7 aa_isManagedAppleID])
      {
        ASLoggingInitialize();
        v10 = *MEMORY[0x277CE8FD0];
        v9 = 0;
        if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
        {
          *v11 = 0;
          _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, "Apple ID is a managed account, reverting to unsigned-in behavior", v11, 2u);
          v9 = 0;
        }
      }
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), v9, v5 == 0, v5);
  }
}

- (void)fetchCloudKitAddressWithCompletion:(id)a3
{
  v5 = a3;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    [(ASCloudKitManager *)self _fetchCloudKitAddressWithCompletion:v5];
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    v5[2](v5, 0, v4);
  }
}

- (void)_fetchCloudKitAddressWithCompletion:(id)a3
{
  v4 = a3;
  ASLoggingInitialize();
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEBUG))
  {
    [ASCloudKitManager _fetchCloudKitAddressWithCompletion:];
  }

  v5 = [(ASCloudKitManager *)self container];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ASCloudKitManager__fetchCloudKitAddressWithCompletion___block_invoke;
  v7[3] = &unk_278C4CA28;
  v8 = v4;
  v6 = v4;
  [v5 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler:v7];
}

void __57__ASCloudKitManager__fetchCloudKitAddressWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD0];
  v9 = *MEMORY[0x277CE8FD0];
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __57__ASCloudKitManager__fetchCloudKitAddressWithCompletion___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Fetched CloudKit address: %@", &v11, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)createShareWithRootRecord:(id)a3 otherRecordsToSave:(id)a4 completion:(id)a5
{
  v17 = a3;
  v8 = a4;
  v9 = a5;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v10 = objc_alloc(MEMORY[0x277CBC5D0]);
    v11 = [MEMORY[0x277CCAD78] UUID];
    v12 = [v11 UUIDString];
    v13 = [v17 recordID];
    v14 = [v13 zoneID];
    v15 = [v10 initWithRecordName:v12 zoneID:v14];

    v16 = [(ASCloudKitManager *)self cloudKitUtility];
    [v16 createShareAndAssociatedZoneWithShareRecordID:v15 rootRecord:v17 otherRecordsToSave:v8 completion:v9];

    v9 = v16;
  }

  else
  {
    v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v9 + 2))(v9, 0, v15, 0, 0, 0);
  }
}

- (void)fetchShareWithShareRecordID:(id)a3 activity:(id)a4 group:(id)a5 completion:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v13 = [(ASCloudKitManager *)self cloudKitUtility];
    [v13 fetchShareWithShareRecordID:v14 activity:v10 group:v11 completion:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v12 + 2))(v12, 0, v13, 0);
  }
}

- (void)acceptSharesWithURLs:(id)a3 cloudKitGroup:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v10 = [(ASCloudKitManager *)self cloudKitUtility];
    [v10 acceptSharesWithURLs:v11 cloudKitGroup:v8 completion:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v9 + 2))(v9, 0, v10, 0);
  }
}

- (void)addParticipantWithCloudKitAddress:(id)a3 toShares:(id)a4 group:(id)a5 completion:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v13 = [(ASCloudKitManager *)self cloudKitUtility];
    [v13 addParticipantWithCloudKitAddress:v14 toShares:v10 group:v11 completion:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    v12[2](v12, 0, v13);
  }
}

- (void)addParticipant:(id)a3 toShares:(id)a4 group:(id)a5 completion:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v13 = [(ASCloudKitManager *)self cloudKitUtility];
    [v13 addParticipant:v14 toShares:v10 group:v11 completion:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    v12[2](v12, 0, v13);
  }
}

- (void)removeParticipantWithCloudKitAddress:(id)a3 fromShares:(id)a4 group:(id)a5 completion:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v13 = [(ASCloudKitManager *)self cloudKitUtility];
    [v13 removeParticipantWithCloudKitAddress:v14 fromShares:v10 group:v11 completion:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    v12[2](v12, 0, v13);
  }
}

- (void)fetchShareParticipantWithCloudKitAddress:(id)a3 group:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v10 = [(ASCloudKitManager *)self cloudKitUtility];
    [v10 fetchShareParticipantForEmailAddress:v11 group:v8 completion:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v9 + 2))(v9, 0, v10, 0);
  }
}

- (void)fetchShareParticipantForIdentifier:(id)a3 group:(id)a4 completion:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v10 = [(ASCloudKitManager *)self cloudKitUtility];
    [v10 fetchShareParticipantForIdentifier:v11 group:v8 completion:v9];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    (*(v9 + 2))(v9, 0, v10, 0);
  }
}

- (void)_createNotificationSteps
{
  v48[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(ASNotificationStep);
  relationshipNotificationStep = self->_relationshipNotificationStep;
  self->_relationshipNotificationStep = v3;

  v5 = MEMORY[0x277CBEB98];
  v6 = *MEMORY[0x277CE8EF8];
  v48[0] = *MEMORY[0x277CE8F00];
  v48[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v8 = [v5 setWithArray:v7];
  [(ASNotificationStep *)self->_relationshipNotificationStep setRecordTypes:v8];

  [(ASNotificationStep *)self->_relationshipNotificationStep setObjectsTransformationBlock:&__block_literal_global_480];
  [(ASNotificationStep *)self->_relationshipNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_484];
  [(ASNotificationStep *)self->_relationshipNotificationStep setNotifyObserverBlock:&__block_literal_global_489];
  v9 = objc_alloc_init(ASNotificationStep);
  remoteRelationshipNotificationStep = self->_remoteRelationshipNotificationStep;
  self->_remoteRelationshipNotificationStep = v9;

  v11 = [(ASNotificationStep *)self->_relationshipNotificationStep recordTypes];
  v12 = [v11 copy];
  [(ASNotificationStep *)self->_remoteRelationshipNotificationStep setRecordTypes:v12];

  v13 = [(ASNotificationStep *)self->_relationshipNotificationStep objectsTransformationBlock];
  [(ASNotificationStep *)self->_remoteRelationshipNotificationStep setObjectsTransformationBlock:v13];

  [(ASNotificationStep *)self->_remoteRelationshipNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_491];
  [(ASNotificationStep *)self->_remoteRelationshipNotificationStep setNotifyObserverBlock:&__block_literal_global_495];
  v14 = objc_alloc_init(ASNotificationStep);
  privateDatabaseActivitySnapshotNotificationStep = self->_privateDatabaseActivitySnapshotNotificationStep;
  self->_privateDatabaseActivitySnapshotNotificationStep = v14;

  v16 = *MEMORY[0x277CE8EC8];
  v17 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CE8EC8]];
  [(ASNotificationStep *)self->_privateDatabaseActivitySnapshotNotificationStep setRecordTypes:v17];

  [(ASNotificationStep *)self->_privateDatabaseActivitySnapshotNotificationStep setObjectTransformationBlock:&__block_literal_global_498];
  [(ASNotificationStep *)self->_privateDatabaseActivitySnapshotNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_501];
  [(ASNotificationStep *)self->_privateDatabaseActivitySnapshotNotificationStep setNotifyObserverBlock:&__block_literal_global_505];
  v18 = objc_alloc_init(ASNotificationStep);
  activitySnapshotNotificationStep = self->_activitySnapshotNotificationStep;
  self->_activitySnapshotNotificationStep = v18;

  v20 = [MEMORY[0x277CBEB98] setWithObject:v16];
  [(ASNotificationStep *)self->_activitySnapshotNotificationStep setRecordTypes:v20];

  [(ASNotificationStep *)self->_activitySnapshotNotificationStep setObjectTransformationBlock:&__block_literal_global_507];
  [(ASNotificationStep *)self->_activitySnapshotNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_509];
  [(ASNotificationStep *)self->_activitySnapshotNotificationStep setNotifyObserverBlock:&__block_literal_global_513];
  v21 = objc_alloc_init(ASNotificationStep);
  workoutNotificationStep = self->_workoutNotificationStep;
  self->_workoutNotificationStep = v21;

  v23 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CE8F08]];
  [(ASNotificationStep *)self->_workoutNotificationStep setRecordTypes:v23];

  [(ASNotificationStep *)self->_workoutNotificationStep setObjectTransformationBlock:&__block_literal_global_516];
  [(ASNotificationStep *)self->_workoutNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_519];
  [(ASNotificationStep *)self->_workoutNotificationStep setNotifyObserverBlock:&__block_literal_global_523];
  v24 = objc_alloc_init(ASNotificationStep);
  achievementNotificationStep = self->_achievementNotificationStep;
  self->_achievementNotificationStep = v24;

  v26 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CE8EB8]];
  [(ASNotificationStep *)self->_achievementNotificationStep setRecordTypes:v26];

  [(ASNotificationStep *)self->_achievementNotificationStep setObjectTransformationBlock:&__block_literal_global_526];
  [(ASNotificationStep *)self->_achievementNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_529];
  [(ASNotificationStep *)self->_achievementNotificationStep setNotifyObserverBlock:&__block_literal_global_533];
  v27 = objc_alloc_init(ASNotificationStep);
  notificationEventNotificationStep = self->_notificationEventNotificationStep;
  self->_notificationEventNotificationStep = v27;

  v29 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CE8EF0]];
  [(ASNotificationStep *)self->_notificationEventNotificationStep setRecordTypes:v29];

  [(ASNotificationStep *)self->_notificationEventNotificationStep setObjectTransformationBlock:&__block_literal_global_536];
  [(ASNotificationStep *)self->_notificationEventNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_539];
  [(ASNotificationStep *)self->_notificationEventNotificationStep setNotifyObserverBlock:&__block_literal_global_543];
  v30 = objc_alloc_init(ASNotificationStep);
  privateDatabaseCompetitionNotificationStep = self->_privateDatabaseCompetitionNotificationStep;
  self->_privateDatabaseCompetitionNotificationStep = v30;

  v32 = *MEMORY[0x277CE8ED8];
  v33 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CE8ED8]];
  [(ASNotificationStep *)self->_privateDatabaseCompetitionNotificationStep setRecordTypes:v33];

  [(ASNotificationStep *)self->_privateDatabaseCompetitionNotificationStep setObjectTransformationBlock:&__block_literal_global_546];
  [(ASNotificationStep *)self->_privateDatabaseCompetitionNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_549];
  [(ASNotificationStep *)self->_privateDatabaseCompetitionNotificationStep setNotifyObserverBlock:&__block_literal_global_553];
  v34 = objc_alloc_init(ASNotificationStep);
  competitionNotificationStep = self->_competitionNotificationStep;
  self->_competitionNotificationStep = v34;

  v36 = [MEMORY[0x277CBEB98] setWithObject:v32];
  [(ASNotificationStep *)self->_competitionNotificationStep setRecordTypes:v36];

  [(ASNotificationStep *)self->_competitionNotificationStep setObjectTransformationBlock:&__block_literal_global_555];
  [(ASNotificationStep *)self->_competitionNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_557];
  [(ASNotificationStep *)self->_competitionNotificationStep setNotifyObserverBlock:&__block_literal_global_561];
  v37 = objc_alloc_init(ASNotificationStep);
  cloudDeviceNotificationStep = self->_cloudDeviceNotificationStep;
  self->_cloudDeviceNotificationStep = v37;

  v39 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CE8ED0]];
  [(ASNotificationStep *)self->_cloudDeviceNotificationStep setRecordTypes:v39];

  [(ASNotificationStep *)self->_cloudDeviceNotificationStep setObjectTransformationBlock:&__block_literal_global_564];
  [(ASNotificationStep *)self->_cloudDeviceNotificationStep setShouldNotifyObserverBlock:&__block_literal_global_567];
  [(ASNotificationStep *)self->_cloudDeviceNotificationStep setNotifyObserverBlock:&__block_literal_global_571];
  v40 = objc_alloc_init(ASNotificationStep);
  privateDatabaseMigrationAvailableItemStep = self->_privateDatabaseMigrationAvailableItemStep;
  self->_privateDatabaseMigrationAvailableItemStep = v40;

  v42 = *MEMORY[0x277CE8EE8];
  v43 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CE8EE8]];
  [(ASNotificationStep *)self->_privateDatabaseMigrationAvailableItemStep setRecordTypes:v43];

  [(ASNotificationStep *)self->_privateDatabaseMigrationAvailableItemStep setObjectTransformationBlock:&__block_literal_global_574];
  [(ASNotificationStep *)self->_privateDatabaseMigrationAvailableItemStep setShouldNotifyObserverBlock:&__block_literal_global_577];
  [(ASNotificationStep *)self->_privateDatabaseMigrationAvailableItemStep setNotifyObserverBlock:&__block_literal_global_581];
  v44 = objc_alloc_init(ASNotificationStep);
  migrationAvailableItemStep = self->_migrationAvailableItemStep;
  self->_migrationAvailableItemStep = v44;

  v46 = [MEMORY[0x277CBEB98] setWithObject:v42];
  [(ASNotificationStep *)self->_migrationAvailableItemStep setRecordTypes:v46];

  [(ASNotificationStep *)self->_migrationAvailableItemStep setObjectTransformationBlock:&__block_literal_global_583];
  [(ASNotificationStep *)self->_migrationAvailableItemStep setShouldNotifyObserverBlock:&__block_literal_global_585];
  [(ASNotificationStep *)self->_migrationAvailableItemStep setNotifyObserverBlock:&__block_literal_global_589];
  v47 = *MEMORY[0x277D85DE8];
}

id __45__ASCloudKitManager__createNotificationSteps__block_invoke()
{
  v0 = MEMORY[0x277CE9118];
  v1 = [MEMORY[0x277CBEB98] setWithArray:?];
  v2 = [v0 relationshipsWithRelationshipAndEventRecords:v1];

  return v2;
}

id __45__ASCloudKitManager__createNotificationSteps__block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 recordID];
  v7 = [v6 zoneID];
  v8 = [v5 _observerQueue_friendUUIDForActivityDataShareRecordZoneID:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCDDC8] fitnessFriendActivitySnapshotWithRecord:v4 friendUUID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __45__ASCloudKitManager__createNotificationSteps__block_invoke_12(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 recordID];
  v7 = [v6 zoneID];
  v8 = [v5 _observerQueue_friendUUIDForActivityDataShareRecordZoneID:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCDDD0] fitnessFriendWorkoutWithRecord:v4 friendUUID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __45__ASCloudKitManager__createNotificationSteps__block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 recordID];
  v7 = [v6 zoneID];
  v8 = [v5 _observerQueue_friendUUIDForActivityDataShareRecordZoneID:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCDDC0] fitnessFriendAchievementWithRecord:v4 friendUUID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __45__ASCloudKitManager__createNotificationSteps__block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v4 recordID];
  v7 = [v6 zoneID];
  v8 = [v5 _observerQueue_friendUUIDForActivityDataShareRecordZoneID:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CE9110] notificationEventWithRecord:v4 friendUUID:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ASCloudKitManager_addObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

void __33__ASCloudKitManager_addObserver___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
  if (([*(a1 + 40) isReadyToProcessChanges] & 1) == 0)
  {
    ASLoggingInitialize();
    v2 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CloudKitManager added observer not yet ready to process changes: %@", &v5, 0xCu);
    }

    [*(*(a1 + 32) + 240) addObject:*(a1 + 40)];
    dispatch_group_enter(*(*(a1 + 32) + 248));
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ASCloudKitManager_removeObserver___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(observerQueue, v7);
}

void __36__ASCloudKitManager_removeObserver___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
  if ([*(*(a1 + 32) + 240) containsObject:*(a1 + 40)])
  {
    ASLoggingInitialize();
    v2 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CloudKitManager removing observer not yet ready to process changes: %@", &v5, 0xCu);
    }

    [*(*(a1 + 32) + 240) removeObject:*(a1 + 40)];
    dispatch_group_leave(*(*(a1 + 32) + 248));
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)observerDidBecomeReadyToProcessChanges:(id)a3
{
  v4 = a3;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ASCloudKitManager_observerDidBecomeReadyToProcessChanges___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(observerQueue, v7);
}

void __60__ASCloudKitManager_observerDidBecomeReadyToProcessChanges___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ([*(*(a1 + 32) + 240) containsObject:*(a1 + 40)])
  {
    ASLoggingInitialize();
    v2 = *MEMORY[0x277CE8FD0];
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "CloudKitManager observer did become ready to process changes: %@", &v5, 0xCu);
    }

    [*(*(a1 + 32) + 240) removeObject:*(a1 + 40)];
    dispatch_group_leave(*(*(a1 + 32) + 248));
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)allObserversReady
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  observerQueue = self->_observerQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ASCloudKitManager_allObserversReady__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(observerQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __38__ASCloudKitManager_allObserversReady__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 240) count];
  *(*(*(a1 + 40) + 8) + 24) = result == 0;
  return result;
}

- (void)_observerQueue_performNotificationStep:(id)a3 onRecords:(id)a4 dispatchGroup:(id)a5 activity:(id)a6 cloudKitGroup:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  dispatch_assert_queue_V2(self->_observerQueue);
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  v20 = v13;
  v21 = v12;
  HKWithAutoreleasePool();
}

uint64_t __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 recordTypes];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Notifying observers of changes with types: %{public}@", &buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v35 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  v7 = *(a1 + 40);
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v8)
  {
    v9 = *v33;
    do
    {
      v10 = 0;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        v12 = [*(a1 + 32) recordTypes];
        v13 = [v11 recordType];
        v14 = [v12 containsObject:v13];

        if (v14)
        {
          v15 = [v11 recordID];
          v16 = [v15 zoneID];

          v17 = [v6 objectForKeyedSubscript:v16];
          if (!v17)
          {
            v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [v6 setObject:v17 forKeyedSubscript:v16];
          }

          [v17 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v8);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v37 = 0x2020000000;
  v38 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_592;
  v24[3] = &unk_278C4CBB8;
  v18 = *(a1 + 32);
  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  v25 = v18;
  v26 = v19;
  v27 = v20;
  p_buf = &buf;
  v21 = v6;
  v28 = v21;
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  [v21 enumerateKeysAndObjectsUsingBlock:v24];

  _Block_object_dispose(&buf, 8);
  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

void __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_592(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v17 = *(a1 + 80);
  v13 = *(a1 + 56);
  v14 = v5;
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v7 = v5;
  v8 = v6;
  HKWithAutoreleasePool();
  ++*(*(*(a1 + 80) + 8) + 24);
}

uint64_t __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v23 = [*(a1 + 32) objectsTransformedFromRecords:*(a1 + 40) cloudKitManager:*(a1 + 48)];
  if ([v23 count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(*(a1 + 48) + 64);
    v2 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v30;
      v21 = v27;
      v5 = MEMORY[0x277CE8FD0];
      v22 = *v30;
      do
      {
        v6 = 0;
        v24 = v3;
        do
        {
          if (*v30 != v4)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v29 + 1) + 8 * v6);
          ASLoggingInitialize();
          v8 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
          {
            __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_2_cold_1(&v35, v8, v7, &v36);
          }

          v9 = [*(a1 + 32) shouldNotifyObserverBlock];
          v10 = v9[2](v9, v7);

          if (v10)
          {
            ASLoggingInitialize();
            v11 = *v5;
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
            {
              __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_2_cold_2(&v33, v11, v7, &v34);
            }

            dispatch_group_enter(*(a1 + 56));
            v12 = *(*(*(a1 + 96) + 8) + 24) + 1;
            v13 = v12 < [*(a1 + 64) count];
            v14 = [*(a1 + 32) notifyObserverBlock];
            v15 = *(a1 + 72);
            v16 = *(a1 + 80);
            v17 = *(a1 + 88);
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v27[0] = __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_593;
            v27[1] = &unk_278C4B250;
            v27[2] = v7;
            v18 = *(a1 + 48);
            v28 = *(a1 + 56);
            (v14)[2](v14, v18, v7, v15, v13, v23, v16, v17, v26, v21);

            v4 = v22;
            v3 = v24;
            v5 = MEMORY[0x277CE8FD0];
          }

          ++v6;
        }

        while (v3 != v6);
        v3 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v3);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

void __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_593(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEBUG))
  {
    __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_593_cold_1(a1, v2);
  }

  dispatch_group_leave(*(a1 + 40));
}

- (void)_observerQueue_notifyOfPrivateDatabaseDeletedRecordIDs:(id)a3 sharedDatabaseDeletedRecordIDs:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v14 = a4;
  dispatch_assert_queue_V2(self->_observerQueue);
  v6 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_observers;
  v7 = [(NSHashTable *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    v13 = v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v6);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v20[0] = __107__ASCloudKitManager__observerQueue_notifyOfPrivateDatabaseDeletedRecordIDs_sharedDatabaseDeletedRecordIDs___block_invoke;
          v20[1] = &unk_278C4B278;
          v21 = v6;
          [v11 cloudKitManager:self didDeleteRecordIDsForSelf:v15 changesProcessedHandler:{v19, v13}];
        }

        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v6);
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __107__ASCloudKitManager__observerQueue_notifyOfPrivateDatabaseDeletedRecordIDs_sharedDatabaseDeletedRecordIDs___block_invoke_2;
          v17[3] = &unk_278C4B278;
          v18 = v6;
          [v11 cloudKitManager:self didDeleteRecordIDs:v14 changesProcessedHandler:v17];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)_observerQueue_notifyObserversOfBeginUpdatesForFetchWithType:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_observerQueue);
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CloudKit Manager beginning update transaction.", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 cloudKitManager:self didBeginUpdatesForFetchWithType:{a3, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_queue_notifyObserversOfStatusChanged:(int64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CloudKit Manager status changed. Notifying observers", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 cloudKitManager:self didUpdateAccountStatus:{a3, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_observerQueue_notifyObserversOfEndUpdatesForFetchWithType:(int64_t)a3 activity:(id)a4 cloudKitGroup:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = a4;
  v17 = a5;
  dispatch_assert_queue_V2(self->_observerQueue);
  ASLoggingInitialize();
  v8 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "CloudKit Manager ending update transaction.", buf, 2u);
  }

  v9 = dispatch_group_create();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          dispatch_group_enter(v9);
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = __103__ASCloudKitManager__observerQueue_notifyObserversOfEndUpdatesForFetchWithType_activity_cloudKitGroup___block_invoke;
          v19[3] = &unk_278C4B278;
          v20 = v9;
          [v15 cloudKitManager:self didEndUpdatesForFetchWithType:a3 activity:v18 cloudKitGroup:v17 changesProcessedHandler:v19];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v12);
  }

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_observerQueue_notifyObserversOfServerPushHandledWithCloudKitGroup:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_observerQueue);
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "CloudKit Manager handled server push.", buf, 2u);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_observers;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 cloudKitManager:self didHandleServerPushWithCloudKitGroup:{v4, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_handleNewPrivateDatabaseRecordChanges:(id)a3 sharedDatabaseRecordChanges:(id)a4 privateDatabaseDeletedRecordIDs:(id)a5 sharedDatabaseDeletedRecordIDs:(id)a6 fetchType:(int64_t)a7 activity:(id)a8 cloudKitGroup:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  observerQueue = self->_observerQueue;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __184__ASCloudKitManager__handleNewPrivateDatabaseRecordChanges_sharedDatabaseRecordChanges_privateDatabaseDeletedRecordIDs_sharedDatabaseDeletedRecordIDs_fetchType_activity_cloudKitGroup___block_invoke;
  v28[3] = &unk_278C4CC08;
  v28[4] = self;
  v29 = v15;
  v30 = v19;
  v31 = v20;
  v32 = v16;
  v33 = v17;
  v34 = v18;
  v35 = a7;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v20;
  v26 = v19;
  v27 = v15;
  dispatch_async(observerQueue, v28);
}

void __184__ASCloudKitManager__handleNewPrivateDatabaseRecordChanges_sharedDatabaseRecordChanges_privateDatabaseDeletedRecordIDs_sharedDatabaseDeletedRecordIDs_fetchType_activity_cloudKitGroup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _observerQueue_notifyObserversOfBeginUpdatesForFetchWithType:*(a1 + 88)];
  [*(a1 + 32) _observerQueue_clearFriendUUIDByZoneIDCache];
  ASLoggingInitialize();
  v2 = MEMORY[0x277CE8FD0];
  v3 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "Notifying observers of [non-remote] relationship changes", buf, 2u);
  }

  v4 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 72) onRecords:*(a1 + 40) dispatchGroup:v4 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  v37 = v4;
  dispatch_group_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v5 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Notified observers of [non-remote] relationship changes.", buf, 2u);
  }

  ASLoggingInitialize();
  v6 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Notifying observers of [non-remote] activity data changes", buf, 2u);
  }

  v7 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 88) onRecords:*(a1 + 40) dispatchGroup:v7 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  v36 = v7;
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v8 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Notified observers of [non-remote] activity data changes.", buf, 2u);
  }

  ASLoggingInitialize();
  v9 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Notifying observers of [remote] relationship changes", buf, 2u);
  }

  v10 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 80) onRecords:*(a1 + 64) dispatchGroup:v10 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  v35 = v10;
  dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v11 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Notified observers of [remote] relationship changes.", buf, 2u);
  }

  ASLoggingInitialize();
  v12 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, "Notifying observers of activity data changes", buf, 2u);
  }

  v13 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 96) onRecords:*(a1 + 64) dispatchGroup:v13 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 104) onRecords:*(a1 + 64) dispatchGroup:v13 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 112) onRecords:*(a1 + 64) dispatchGroup:v13 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  dispatch_group_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v14 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Notified observers of activity data changes.", buf, 2u);
  }

  ASLoggingInitialize();
  v15 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v15, OS_LOG_TYPE_DEFAULT, "Notifying observers of notification event changes", buf, 2u);
  }

  v16 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 120) onRecords:*(a1 + 64) dispatchGroup:v16 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v17 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Notified observers of notification event changes.", buf, 2u);
  }

  ASLoggingInitialize();
  v18 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "Notifying observers of [non-remote] competition changes", buf, 2u);
  }

  v19 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 128) onRecords:*(a1 + 40) dispatchGroup:v19 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  dispatch_group_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v20 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v20, OS_LOG_TYPE_DEFAULT, "Notified observers of [non-remote] competition changes", buf, 2u);
  }

  ASLoggingInitialize();
  v21 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v21, OS_LOG_TYPE_DEFAULT, "Notifying observers of [remote] competition changes", buf, 2u);
  }

  v22 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 136) onRecords:*(a1 + 64) dispatchGroup:v22 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v23 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v23, OS_LOG_TYPE_DEFAULT, "Notified observers of [remote] competition changes", buf, 2u);
  }

  ASLoggingInitialize();
  v24 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v24, OS_LOG_TYPE_DEFAULT, "Notifying observers of cloud device changes", buf, 2u);
  }

  v25 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 144) onRecords:*(a1 + 40) dispatchGroup:v25 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v26 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "Notified observers of cloud device changes", buf, 2u);
  }

  ASLoggingInitialize();
  v27 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "Notifying observers of [non-remote] migration available item changes", buf, 2u);
  }

  v28 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 152) onRecords:*(a1 + 40) dispatchGroup:v28 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v29 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v29, OS_LOG_TYPE_DEFAULT, "Notified observers of [non-remote] migration available item changes", buf, 2u);
  }

  ASLoggingInitialize();
  v30 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v30, OS_LOG_TYPE_DEFAULT, "Notifying observers of [remote] migration available item changes", buf, 2u);
  }

  v31 = dispatch_group_create();
  [*(a1 + 32) _observerQueue_performNotificationStep:*(*(a1 + 32) + 160) onRecords:*(a1 + 64) dispatchGroup:v31 activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
  dispatch_group_wait(v31, 0xFFFFFFFFFFFFFFFFLL);
  ASLoggingInitialize();
  v32 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v32, OS_LOG_TYPE_DEFAULT, "Notified observers of [remote] migration available item changes", buf, 2u);
  }

  ASLoggingInitialize();
  v33 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v33, OS_LOG_TYPE_DEFAULT, "Notifying observers of private and shared database deleted records", buf, 2u);
  }

  [*(a1 + 32) _observerQueue_notifyOfPrivateDatabaseDeletedRecordIDs:*(a1 + 72) sharedDatabaseDeletedRecordIDs:*(a1 + 80)];
  ASLoggingInitialize();
  v34 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v34, OS_LOG_TYPE_DEFAULT, "Notified observers of private and shared database deleted records", buf, 2u);
  }

  [*(a1 + 32) _observerQueue_clearFriendUUIDByZoneIDCache];
  [*(a1 + 32) _observerQueue_notifyObserversOfEndUpdatesForFetchWithType:*(a1 + 88) activity:*(a1 + 48) cloudKitGroup:*(a1 + 56)];
}

- (id)_observerQueue_friendUUIDForActivityDataShareRecordZoneID:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_observerQueue);
  v5 = [(NSDictionary *)self->_friendUUIDsByZoneID objectForKeyedSubscript:v4];

  if (!v5)
  {
    v6 = ASSecureCloudEnabled();
    WeakRetained = objc_loadWeakRetained(&self->_contactsManager);
    if (v6)
    {
      v8 = v23;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v9 = __79__ASCloudKitManager__observerQueue_friendUUIDForActivityDataShareRecordZoneID___block_invoke;
    }

    else
    {
      v8 = &v21;
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v9 = __79__ASCloudKitManager__observerQueue_friendUUIDForActivityDataShareRecordZoneID___block_invoke_2;
    }

    v8[2] = v9;
    v8[3] = &unk_278C4B6B8;
    v10 = v4;
    v8[4] = v10;
    v11 = [WeakRetained contactMatchingCriteriaBlock:v8];

    v12 = [(NSDictionary *)self->_friendUUIDsByZoneID mutableCopy];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    }

    v15 = v14;

    v16 = [v11 UUID];
    [v15 setObject:v16 forKeyedSubscript:v10];

    v17 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v15];
    friendUUIDsByZoneID = self->_friendUUIDsByZoneID;
    self->_friendUUIDsByZoneID = v17;
  }

  v19 = [(NSDictionary *)self->_friendUUIDsByZoneID objectForKeyedSubscript:v4, v21, v22];

  return v19;
}

uint64_t __79__ASCloudKitManager__observerQueue_friendUUIDForActivityDataShareRecordZoneID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 relationshipStorage];
  v5 = [v4 secureCloudRemoteRelationship];
  v6 = [v5 secureCloudZoneName];

  v7 = [v3 relationshipStorage];

  v8 = [v7 legacyRelationship];
  v9 = [v8 remoteActivityDataShareID];

  v10 = [v9 zoneID];
  if ([v10 isEqual:*(a1 + 32)])
  {
    v11 = 1;
  }

  else
  {
    v12 = [*(a1 + 32) zoneName];
    v11 = [v6 isEqual:v12];
  }

  return v11;
}

uint64_t __79__ASCloudKitManager__observerQueue_friendUUIDForActivityDataShareRecordZoneID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 relationshipStorage];
  v4 = [v3 legacyRelationship];
  v5 = [v4 remoteActivityDataShareID];

  v6 = [v5 zoneID];
  v7 = [v6 isEqual:*(a1 + 32)];

  return v7;
}

- (void)_observerQueue_clearFriendUUIDByZoneIDCache
{
  dispatch_assert_queue_V2(self->_observerQueue);
  friendUUIDsByZoneID = self->_friendUUIDsByZoneID;
  self->_friendUUIDsByZoneID = 0;
}

- (void)fetchCloudKitAccountInfoWithCompletion:(id)a3
{
  v4 = a3;
  if ([(ASCloudKitManager *)self readyForOperations])
  {
    v5 = [(ASCloudKitManager *)self container];
    [v5 accountInfoWithCompletionHandler:v4];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.ActivitySharing.CloudKitManager" code:0 userInfo:0];
    v4[2](v4, 0);
  }
}

- (id)currentAccountInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__ASCloudKitManager_currentAccountInfo__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)currentCloudKitAddress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__8;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__ASCloudKitManager_currentCloudKitAddress__block_invoke;
  v5[3] = &unk_278C4BA58;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __43__ASCloudKitManager_currentCloudKitAddress__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = [WeakRetained deviceLocalActivitySharingKeyValueDomain];
  v8 = 0;
  v4 = [v3 stringForKey:@"ActivitySharingCloudKitAccountKey" error:&v8];
  v5 = v8;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v4;

  if (v5)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_ERROR))
    {
      [ASCloudKitManager _queue_isLastCloudKitAddressDifferentFromNewCloudKitAddress:];
    }
  }
}

- (void)updateCurrentAccountInfo:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__ASCloudKitManager_updateCurrentAccountInfo___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(serialQueue, v7);
}

- (void)updateCloudKitAddress
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__ASCloudKitManager_updateCloudKitAddress__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)notifyOfCloudKitAccountStatusUpdate:(int64_t)a3
{
  observerQueue = self->_observerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__ASCloudKitManager_notifyOfCloudKitAccountStatusUpdate___block_invoke;
  v4[3] = &unk_278C4C9B0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(observerQueue, v4);
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_610);
}

void __57__ASCloudKitManager_notifyOfCloudKitAccountStatusUpdate___block_invoke_2()
{
  notify_post(*MEMORY[0x277CE91C8]);
  ASLoggingInitialize();
  v0 = *MEMORY[0x277CE8FD0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FD0], OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_23E5E3000, v0, OS_LOG_TYPE_DEFAULT, "Posted notification of CloudKit account status change", v1, 2u);
  }
}

- (ASCloudKitManagerSecureCloudDelegate)secureCloudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);

  return WeakRetained;
}

void __44__ASCloudKitManager_beginHandlingOperations__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_23E5E3000, log, OS_LOG_TYPE_ERROR, "Failed to create container with exception %{public}@", buf, 0xCu);
}

void __44__ASCloudKitManager_beginHandlingOperations__block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a1, a3, "Failed to get CloudKit container with identifier %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __44__ASCloudKitManager_beginHandlingOperations__block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error initializing hasCompletedFirstFetch from key value domain: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Fetching changes in private database failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_416_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Fetching changes in shared database failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_417_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Fetching changes in secure cloud private database failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __141__ASCloudKitManager__queue_startFetchAllChangesOperationWithPriority_activity_changeTokenCache_secureCloudChangeTokenCache_group_completion___block_invoke_419_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Fetching changes in secure cloud shared database failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __65__ASCloudKitManager__fetchAllChangesWithPriority_activity_group___block_invoke_426_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, a2, a3, "Failed to fetch changes with error %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_queue_setHasCompletedFirstFetch:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error updating key value domain with completed first fetch: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __123__ASCloudKitManager__subscribeToChangesInDatabase_subscriptionPrefix_recordTypes_zoneNames_recordTypesToDelete_completion___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 databaseScope];
  v6 = CKDatabaseScopeString();
  OUTLINED_FUNCTION_1_0();
  v9 = 2114;
  v10 = a3;
  _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "Failed to save subscriptions into database %{public}@ with error: %{public}@", v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

void __56__ASCloudKitManager__saveCloudKitAddressToKeyValueStore__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error setting new CloudKit address in key value domain: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_isLastCloudKitAddressDifferentFromNewCloudKitAddress:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error reading previous CloudKit address from key value domain: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__ASCloudKitManager__fetchCloudKitAccountStatusAndNotifyOfChanges__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error getting CloudKit account status: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__ASCloudKitManager__fetchCloudKitAddressWithCompletion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error fetching CloudKit address: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_2_cold_1(_DWORD *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  *a1 = 138412290;
  *a4 = v7;
  v8 = v7;
  OUTLINED_FUNCTION_4_0(&dword_23E5E3000, v9, v10, "Evaluating shouldNotifyObserverBlock for observer of class %@");
}

void __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_2_cold_2(_DWORD *a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = objc_opt_class();
  *a1 = 138412290;
  *a4 = v7;
  v8 = v7;
  OUTLINED_FUNCTION_4_0(&dword_23E5E3000, v9, v10, "Notifying observer of class %@");
}

void __107__ASCloudKitManager__observerQueue_performNotificationStep_onRecords_dispatchGroup_activity_cloudKitGroup___block_invoke_593_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  objc_opt_class();
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  _os_log_debug_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEBUG, "Finished notifying observer of class %@", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end