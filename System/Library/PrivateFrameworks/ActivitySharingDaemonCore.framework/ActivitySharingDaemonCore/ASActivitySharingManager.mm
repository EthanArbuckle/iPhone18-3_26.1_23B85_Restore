@interface ASActivitySharingManager
- (ASActivitySharingManager)initWithDatabaseClient:(id)a3 isWatch:(BOOL)a4;
- (ASActivitySharingManagerSecureCloudDelegate)secureCloudDelegate;
- (BOOL)_mainQueue_shouldCompleteSetup;
- (BOOL)_mainQueue_startSubmanagerProcessingIfNeeded;
- (BOOL)_mainQueue_stopSubmanagerProcessingIfNeeded;
- (BOOL)processingStarted;
- (id)allFriends;
- (void)_activateActivitySharingManager;
- (void)_deactivateActivitySharingManager;
- (void)_mainQueue_completeSetupIfNeeded;
- (void)_mainQueue_nanoRegistryInfoChanged;
- (void)_mainQueue_notifyObserversOfActivation;
- (void)_mainQueue_notifyObserversOfDeactivation;
- (void)_mainQueue_notifySubmanagersOfManagerReady;
- (void)_updateSubmanagerProcessingStarted:(BOOL)a3;
- (void)_waitUntilSubmanagersReady;
- (void)acceptCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)acceptInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)addFriendListObserver:(id)a3;
- (void)addObserver:(id)a3;
- (void)clearFriendListWithCompletion:(id)a3;
- (void)cloudKitAccountStatusWithCompletion:(id)a3;
- (void)completeCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4;
- (void)daemonReady;
- (void)dealloc;
- (void)expireChangeTokenWithCompletion:(id)a3;
- (void)fetchAllDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 completion:(id)a4;
- (void)fetchAllDataWithCompletion:(id)a3;
- (void)fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)a3 withCompletion:(id)a4;
- (void)fetchCodableFriendWithRemoteUUID:(id)a3 completion:(id)a4;
- (void)fetchFriendWithRemoteUUID:(id)a3 completion:(id)a4;
- (void)fitnessAppsStateObserver:(id)a3 applicationInstallStateDidChangeForBundleIdentifiers:(id)a4;
- (void)fitnessAppsStateObserver:(id)a3 restrictedStateDidChange:(int64_t)a4;
- (void)handleNotificationResponse:(id)a3 completion:(id)a4;
- (void)ignoreCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)ignoreInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4;
- (void)pushActivityDataToAllFriendsWithCompletion:(id)a3;
- (void)pushFakeActivityDataToAllFriendsWithCompletion:(id)a3;
- (void)queryAppBadgeCountWithCompletion:(id)a3;
- (void)removeFriendListObserver:(id)a3;
- (void)removeFriendWithUUID:(id)a3 completion:(id)a4;
- (void)removeObserver:(id)a3;
- (void)rollCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4;
- (void)sendCompetitionRequestToFriendWithUUID:(id)a3 completion:(id)a4;
- (void)sendInviteRequestToDestination:(id)a3 callerID:(id)a4 serviceIdentifier:(id)a5 completion:(id)a6;
- (void)sendWithdrawInviteRequestToFriendWithUUID:(id)a3 completion:(id)a4;
@end

@implementation ASActivitySharingManager

- (ASActivitySharingManager)initWithDatabaseClient:(id)a3 isWatch:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v25.receiver = self;
  v25.super_class = ASActivitySharingManager;
  v8 = [(ASActivitySharingManager *)&v25 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_databaseClient, a3);
    v10 = objc_alloc_init(MEMORY[0x277D09598]);
    fitnessAppsStateObserver = v9->_fitnessAppsStateObserver;
    v9->_fitnessAppsStateObserver = v10;

    [(FIFitnessAppsStateObserver *)v9->_fitnessAppsStateObserver setDelegate:v9];
    v12 = MEMORY[0x277D09518];
    if (!v4)
    {
      v12 = MEMORY[0x277D09530];
    }

    objc_storeStrong(&v9->_appBundleIdentifier, *v12);
    v9->_appInstalled = [(FIFitnessAppsStateObserver *)v9->_fitnessAppsStateObserver installStateForBundleIdentifier:v9->_appBundleIdentifier]== 1;
    v9->_fitnessAppsRestricted = [(FIFitnessAppsStateObserver *)v9->_fitnessAppsStateObserver areFitnessAppsRestricted];
    v9->_submanagersProcessingStartedLock._os_unfair_lock_opaque = 0;
    v13 = HKCreateSerialDispatchQueue();
    readWriteQueue = v9->_readWriteQueue;
    v9->_readWriteQueue = v13;

    v15 = HKCreateConcurrentDispatchQueue();
    submanagerBarrierQueue = v9->_submanagerBarrierQueue;
    v9->_submanagerBarrierQueue = v15;

    v17 = dispatch_group_create();
    submanagerBarrierGroup = v9->_submanagerBarrierGroup;
    v9->_submanagerBarrierGroup = v17;

    dispatch_group_enter(v9->_submanagerBarrierGroup);
    v9->_isWatch = v4;
    *&v9->_submanagerInitializationComplete = 0;
    v19 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v19;

    databaseClient = v9->_databaseClient;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __59__ASActivitySharingManager_initWithDatabaseClient_isWatch___block_invoke;
    v23[3] = &unk_278C4B278;
    v24 = v9;
    [(ASDatabaseClient *)databaseClient performWhenDaemonReady:v23];
  }

  return v9;
}

- (void)dealloc
{
  if (!self->_isWatch)
  {
    if (notify_is_valid_token(self->_nanoRegistryDeviceDidPairToken))
    {
      notify_cancel(self->_nanoRegistryDeviceDidPairToken);
    }

    if (notify_is_valid_token(self->_nanoRegistryDeviceDidUnpairToken))
    {
      notify_cancel(self->_nanoRegistryDeviceDidUnpairToken);
    }

    if (notify_is_valid_token(self->_nanoRegistryDeviceDidBecomeActiveToken))
    {
      notify_cancel(self->_nanoRegistryDeviceDidBecomeActiveToken);
    }

    if (notify_is_valid_token(self->_nanoRegistryDeviceDidChangeVersionToken))
    {
      notify_cancel(self->_nanoRegistryDeviceDidChangeVersionToken);
    }
  }

  v3.receiver = self;
  v3.super_class = ASActivitySharingManager;
  [(ASActivitySharingManager *)&v3 dealloc];
}

- (void)daemonReady
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ASActivitySharingManager_daemonReady__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__ASActivitySharingManager_daemonReady__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _mainQueue_completeSetupIfNeeded];
  v2 = *(a1 + 32);
  if ((v2[80] & 1) == 0)
  {
    objc_initWeak(&location, v2);
    v3 = [*MEMORY[0x277D2BC60] UTF8String];
    v4 = *(a1 + 32);
    v5 = MEMORY[0x277D85CD0];
    v6 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __39__ASActivitySharingManager_daemonReady__block_invoke_2;
    handler[3] = &unk_278C4C3A8;
    objc_copyWeak(&v20, &location);
    notify_register_dispatch(v3, (v4 + 52), v5, handler);

    v7 = [*MEMORY[0x277D2BC70] UTF8String];
    v8 = *(a1 + 32);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __39__ASActivitySharingManager_daemonReady__block_invoke_310;
    v17[3] = &unk_278C4C3A8;
    objc_copyWeak(&v18, &location);
    notify_register_dispatch(v7, (v8 + 56), MEMORY[0x277D85CD0], v17);

    v9 = [*MEMORY[0x277D2BCB8] UTF8String];
    v10 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__ASActivitySharingManager_daemonReady__block_invoke_311;
    v15[3] = &unk_278C4C3A8;
    objc_copyWeak(&v16, &location);
    notify_register_dispatch(v9, (v10 + 60), MEMORY[0x277D85CD0], v15);

    v11 = [*MEMORY[0x277D2BCA0] UTF8String];
    v12 = *(a1 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __39__ASActivitySharingManager_daemonReady__block_invoke_312;
    v13[3] = &unk_278C4C3A8;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch(v11, (v12 + 64), MEMORY[0x277D85CD0], v13);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __39__ASActivitySharingManager_daemonReady__block_invoke_2(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Received NR pairing device did pair notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_nanoRegistryInfoChanged];
}

void __39__ASActivitySharingManager_daemonReady__block_invoke_310(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Received NR pairing device did unpair notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_nanoRegistryInfoChanged];
}

void __39__ASActivitySharingManager_daemonReady__block_invoke_311(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Received NR pairing device did become active notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_nanoRegistryInfoChanged];
}

void __39__ASActivitySharingManager_daemonReady__block_invoke_312(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Received NR pairing status changed notification", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _mainQueue_nanoRegistryInfoChanged];
}

- (BOOL)_mainQueue_shouldCompleteSetup
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CE91F8]];
  v5 = [v4 BOOLForKey:*MEMORY[0x277CE91E8]];
  if (self->_appInstalled)
  {
    v6 = (self->_fitnessAppsRestricted | v5) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (void)_mainQueue_completeSetupIfNeeded
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  if (self->_submanagerInitializationComplete || ![(ASActivitySharingManager *)self _mainQueue_shouldCompleteSetup])
  {
    ASLoggingInitialize();
    v41 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v41, OS_LOG_TYPE_DEFAULT, "Skipping friend manager setup", buf, 2u);
    }
  }

  else
  {
    ASLoggingInitialize();
    v3 = MEMORY[0x277CE8FE8];
    v4 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Running friend manager setup", buf, 2u);
    }

    self->_submanagerInitializationComplete = 1;
    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 isStandalonePhoneFitnessMode];

    if ((v6 & 1) == 0)
    {
      v7 = [[ASAchievementManager alloc] initWithIsWatch:self->_isWatch];
      achievementManager = self->_achievementManager;
      self->_achievementManager = v7;
    }

    v9 = [[ASActivityDataManager alloc] initWithDatabaseClient:self->_databaseClient isWatch:self->_isWatch];
    activityDataManager = self->_activityDataManager;
    self->_activityDataManager = v9;

    v11 = objc_alloc_init(ASCloudKitManager);
    cloudKitManager = self->_cloudKitManager;
    self->_cloudKitManager = v11;

    v13 = [[ASCompetitionManager alloc] initWithDatabaseClient:self->_databaseClient isWatch:self->_isWatch];
    competitionManager = self->_competitionManager;
    self->_competitionManager = v13;

    v15 = [[ASContactsManager alloc] initWithIsWatch:self->_isWatch];
    contactsManager = self->_contactsManager;
    self->_contactsManager = v15;

    v17 = [[ASFakingManager alloc] initWithDatabaseClient:self->_databaseClient];
    fakingManager = self->_fakingManager;
    self->_fakingManager = v17;

    v19 = [[ASFriendListManager alloc] initWithDatabaseClient:self->_databaseClient isWatch:self->_isWatch];
    friendListManager = self->_friendListManager;
    self->_friendListManager = v19;

    v21 = objc_alloc_init(ASGatewayManager);
    gatewayManager = self->_gatewayManager;
    self->_gatewayManager = v21;

    v23 = [[ASPeriodicUpdateManager alloc] initWithIsWatch:self->_isWatch];
    periodicUpdateManager = self->_periodicUpdateManager;
    self->_periodicUpdateManager = v23;

    v25 = [[ASRelationshipManager alloc] initWithIsWatch:self->_isWatch];
    relationshipManager = self->_relationshipManager;
    self->_relationshipManager = v25;

    v27 = objc_alloc_init(ASActivityDataBulletinManager);
    activityDataBulletinManager = self->_activityDataBulletinManager;
    self->_activityDataBulletinManager = v27;

    v29 = objc_alloc_init(ASCompetitionBulletinManager);
    competitionBulletinManager = self->_competitionBulletinManager;
    self->_competitionBulletinManager = v29;

    v31 = objc_alloc_init(ASFriendInviteBulletinManager);
    friendInviteBulletinManager = self->_friendInviteBulletinManager;
    self->_friendInviteBulletinManager = v31;

    v33 = objc_alloc_init(ASFakeBulletinManager);
    fakeBulletinManager = self->_fakeBulletinManager;
    self->_fakeBulletinManager = v33;

    v35 = objc_alloc_init(ASSetupManager);
    setupManager = self->_setupManager;
    self->_setupManager = v35;

    if (((self->_isWatch | v6) & 1) == 0)
    {
      goto LABEL_14;
    }

    ASLoggingInitialize();
    v37 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v37, OS_LOG_TYPE_DEFAULT, "This device is a watch or standalone phone; setting up activity data notification manager.", buf, 2u);
    }

    v38 = [[ASActivityDataNotificationManager alloc] initWithDatabaseClient:self->_databaseClient];
    activityDataNotificationManager = self->_activityDataNotificationManager;
    self->_activityDataNotificationManager = v38;

    if (self->_isWatch)
    {
      v40 = [[ASGizmoBulletinPostingManager alloc] initWithDatabaseClient:self->_databaseClient];
    }

    else
    {
LABEL_14:
      v40 = objc_alloc_init(ASCompanionBulletinPostingManager);
    }

    bulletinPostingManager = self->_bulletinPostingManager;
    self->_bulletinPostingManager = v40;

    [(ASActivitySharingManager *)self _mainQueue_notifySubmanagersOfManagerReady];
    databaseClient = self->_databaseClient;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __60__ASActivitySharingManager__mainQueue_completeSetupIfNeeded__block_invoke;
    v44[3] = &unk_278C4B278;
    v44[4] = self;
    [(ASDatabaseClient *)databaseClient performWhenDataProtectedByFirstUnlockIsAvailable:v44];
  }
}

void __60__ASActivitySharingManager__mainQueue_completeSetupIfNeeded__block_invoke(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Data protected by first unlock available", buf, 2u);
  }

  objc_initWeak(buf, *(a1 + 32));
  v3 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ASActivitySharingManager__mainQueue_completeSetupIfNeeded__block_invoke_332;
  block[3] = &unk_278C4C480;
  objc_copyWeak(&v6, buf);
  dispatch_sync(v3, block);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__ASActivitySharingManager__mainQueue_completeSetupIfNeeded__block_invoke_2;
  v4[3] = &unk_278C4B278;
  v4[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(buf);
}

void __60__ASActivitySharingManager__mainQueue_completeSetupIfNeeded__block_invoke_332(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained[12] makeASKeyValueDomainWithDomainName:@"ActivitySharing" category:3];
    v3 = v4[31];
    v4[31] = v2;

    WeakRetained = v4;
  }
}

void __60__ASActivitySharingManager__mainQueue_completeSetupIfNeeded__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _mainQueue_startSubmanagerProcessingIfNeeded];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  v3 = os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "ActivitySharingManager setup complete", buf, 2u);
    }

    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"ActivitySharingMangerProcessingStartedNotification" object:0];
  }

  else if (v3)
  {
    *v5 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "ActivitySharingManager final setup skipped", v5, 2u);
  }
}

- (BOOL)_mainQueue_startSubmanagerProcessingIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FE8];
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to start submanagers", &v16, 2u);
  }

  v5 = [(ASActivitySharingManager *)self processingStarted];
  if (self->_appInstalled)
  {
    if (self->_fitnessAppsRestricted)
    {
      ASLoggingInitialize();
      v6 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v7 = "Not starting submanagers, fitness apps are restricted";
LABEL_12:
        v10 = v6;
        v11 = 2;
        goto LABEL_13;
      }
    }

    else
    {
      if (!v5)
      {
        v15 = [MEMORY[0x277D10678] transactionWithOwner:self];
        [(ASContactsManager *)self->_contactsManager loadCachedContacts];
        [(ASCompetitionManager *)self->_competitionManager loadCachedCompetitions];
        [(ASFriendListManager *)self->_friendListManager initializeFriendListAndBeginObserving];
        [(ASCloudKitManager *)self->_cloudKitManager beginHandlingOperations];
        [(ASActivityDataManager *)self->_activityDataManager beginObservingData];
        [(ASActivityDataNotificationManager *)self->_activityDataNotificationManager beginObserving];
        [(ASRelationshipManager *)self->_relationshipManager beginReceivingMessages];
        [(ASFakeBulletinManager *)self->_fakeBulletinManager registerBulletins];
        [(ASActivitySharingManager *)self _mainQueue_notifyObserversOfActivation];
        dispatch_group_leave(self->_submanagerBarrierGroup);
        v12 = 1;
        [(ASActivitySharingManager *)self _updateSubmanagerProcessingStarted:1];
        [v15 invalidate];

        goto LABEL_15;
      }

      ASLoggingInitialize();
      v6 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        v7 = "Not starting submanagers, processing has already started";
        goto LABEL_12;
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    v8 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      appBundleIdentifier = self->_appBundleIdentifier;
      v16 = 138543362;
      v17 = appBundleIdentifier;
      v7 = "Not starting submanagers, %{public}@ is not installed";
      v10 = v8;
      v11 = 12;
LABEL_13:
      _os_log_impl(&dword_23E5E3000, v10, OS_LOG_TYPE_DEFAULT, v7, &v16, v11);
    }
  }

  v12 = 0;
LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_mainQueue_stopSubmanagerProcessingIfNeeded
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FE8];
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to stop submanagers", &v18, 2u);
  }

  v5 = [(ASActivitySharingManager *)self processingStarted];
  v6 = MEMORY[0x277D09518];
  if (!self->_isWatch)
  {
    v6 = MEMORY[0x277D09530];
  }

  v7 = *v6;
  if (self->_appInstalled && !self->_fitnessAppsRestricted)
  {
    ASLoggingInitialize();
    v14 = *v3;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      appBundleIdentifier = self->_appBundleIdentifier;
      v18 = 138543362;
      v19 = appBundleIdentifier;
      v11 = "Not stopping submanagers, %{public}@ is installed and fitness apps are not restricted";
      v12 = v14;
      v13 = 12;
      goto LABEL_15;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  ASLoggingInitialize();
  v8 = *v3;
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v9)
    {
      LOWORD(v18) = 0;
      v11 = "Not stopping submanagers, processing has not been started";
      v12 = v8;
      v13 = 2;
LABEL_15:
      _os_log_impl(&dword_23E5E3000, v12, OS_LOG_TYPE_DEFAULT, v11, &v18, v13);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  if (v9)
  {
    LOWORD(v18) = 0;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Proceeding with submanager shutdown", &v18, 2u);
  }

  [(ASFriendListManager *)self->_friendListManager endObserving];
  [(ASCloudKitManager *)self->_cloudKitManager endHandlingOperations];
  [(ASActivityDataManager *)self->_activityDataManager endObservingData];
  [(ASActivityDataNotificationManager *)self->_activityDataNotificationManager endObserving];
  [(ASFakeBulletinManager *)self->_fakeBulletinManager deregisterBulletins];
  [(ASRelationshipManager *)self->_relationshipManager endReceivingMessages];
  [(ASPeriodicUpdateManager *)self->_periodicUpdateManager endPeriodicUpdates];
  [(ASActivitySharingManager *)self _mainQueue_notifyObserversOfDeactivation];
  dispatch_group_enter(self->_submanagerBarrierGroup);
  [(ASActivitySharingManager *)self _updateSubmanagerProcessingStarted:0];
  v10 = 1;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_mainQueue_notifySubmanagersOfManagerReady
{
  v46[15] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v37 = [(ASActivitySharingManager *)self activityDataManager];
  v46[0] = v37;
  v36 = [(ASActivitySharingManager *)self cloudKitManager];
  v46[1] = v36;
  v35 = [(ASActivitySharingManager *)self competitionManager];
  v46[2] = v35;
  v34 = [(ASActivitySharingManager *)self contactsManager];
  v46[3] = v34;
  v33 = [(ASActivitySharingManager *)self fakingManager];
  v46[4] = v33;
  v32 = [(ASActivitySharingManager *)self friendListManager];
  v46[5] = v32;
  v31 = [(ASActivitySharingManager *)self gatewayManager];
  v46[6] = v31;
  v3 = [(ASActivitySharingManager *)self periodicUpdateManager];
  v46[7] = v3;
  v4 = [(ASActivitySharingManager *)self relationshipManager];
  v46[8] = v4;
  v5 = [(ASActivitySharingManager *)self activityDataBulletinManager];
  v46[9] = v5;
  v6 = [(ASActivitySharingManager *)self competitionBulletinManager];
  v46[10] = v6;
  v7 = [(ASActivitySharingManager *)self friendInviteBulletinManager];
  v46[11] = v7;
  v8 = [(ASActivitySharingManager *)self fakeBulletinManager];
  v46[12] = v8;
  v9 = [(ASActivitySharingManager *)self bulletinPostingManager];
  v46[13] = v9;
  v10 = [(ASActivitySharingManager *)self setupManager];
  v46[14] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:15];

  v12 = [(ASActivitySharingManager *)self achievementManager];

  if (v12)
  {
    v13 = [(ASActivitySharingManager *)self achievementManager];
    v45 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    v15 = [v14 arrayByAddingObjectsFromArray:v11];

    v11 = v15;
  }

  v16 = [(ASActivitySharingManager *)self activityDataNotificationManager];

  if (v16)
  {
    v17 = [(ASActivitySharingManager *)self activityDataNotificationManager];
    v18 = [v11 arrayByAddingObject:v17];

    v11 = v18;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = v11;
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    v23 = MEMORY[0x277CE8FE8];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v38 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          ASLoggingInitialize();
          v26 = *v23;
          if (os_log_type_enabled(*v23, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v26;
            v28 = objc_opt_class();
            *buf = 138543362;
            v43 = v28;
            v29 = v28;
            _os_log_impl(&dword_23E5E3000, v27, OS_LOG_TYPE_DEFAULT, "Notifying object of class %{public}@ of Activity Sharing Manager ready.", buf, 0xCu);
          }

          [v25 activitySharingManagerReady:self];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v21);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_waitUntilSubmanagersReady
{
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  submanagerBarrierQueue = self->_submanagerBarrierQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ASActivitySharingManager__waitUntilSubmanagersReady__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_sync(submanagerBarrierQueue, block);
}

intptr_t __54__ASActivitySharingManager__waitUntilSubmanagersReady__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__ASActivitySharingManager__waitUntilSubmanagersReady__block_invoke_2;
  block[3] = &unk_278C4B278;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  return dispatch_group_wait(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
}

void __54__ASActivitySharingManager__waitUntilSubmanagersReady__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((v1[32] & 1) == 0 && ([v1 _mainQueue_shouldCompleteSetup] & 1) == 0)
  {
    ASLoggingInitialize();
    v2 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
    {
      __54__ASActivitySharingManager__waitUntilSubmanagersReady__block_invoke_2_cold_1(v2);
    }
  }
}

- (BOOL)processingStarted
{
  os_unfair_lock_lock(&self->_submanagersProcessingStartedLock);
  submanagerProcessingStarted = self->_submanagerProcessingStarted;
  os_unfair_lock_unlock(&self->_submanagersProcessingStartedLock);
  return submanagerProcessingStarted;
}

- (void)_updateSubmanagerProcessingStarted:(BOOL)a3
{
  os_unfair_lock_lock(&self->_submanagersProcessingStartedLock);
  self->_submanagerProcessingStarted = a3;

  os_unfair_lock_unlock(&self->_submanagersProcessingStartedLock);
}

- (void)_mainQueue_nanoRegistryInfoChanged
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "NanoSyncManager updated status, completing setup if needed", v4, 2u);
  }

  [(ASActivitySharingManager *)self _mainQueue_completeSetupIfNeeded];
  [(ASGatewayManager *)self->_gatewayManager updateState];
}

- (void)fitnessAppsStateObserver:(id)a3 applicationInstallStateDidChangeForBundleIdentifiers:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "ActivitySharingManager applications install state changed: %{public}@", buf, 0xCu);
  }

  if ([v5 containsObject:self->_appBundleIdentifier])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __106__ASActivitySharingManager_fitnessAppsStateObserver_applicationInstallStateDidChangeForBundleIdentifiers___block_invoke;
    block[3] = &unk_278C4B278;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __106__ASActivitySharingManager_fitnessAppsStateObserver_applicationInstallStateDidChangeForBundleIdentifiers___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = [*(*(a1 + 32) + 104) installStateForBundleIdentifier:*(*(a1 + 32) + 40)] == 1;
  v2 = *(a1 + 32);
  if (v2[48] == 1)
  {

    return [v2 _activateActivitySharingManager];
  }

  else
  {

    return [v2 _deactivateActivitySharingManager];
  }
}

- (void)fitnessAppsStateObserver:(id)a3 restrictedStateDidChange:(int64_t)a4
{
  v11 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a4;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "ActivitySharingManager fitness apps restriction state changed: %ld", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ASActivitySharingManager_fitnessAppsStateObserver_restrictedStateDidChange___block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __78__ASActivitySharingManager_fitnessAppsStateObserver_restrictedStateDidChange___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 49) = [*(*(a1 + 32) + 104) areFitnessAppsRestricted];
  v2 = *(a1 + 32);
  if (v2[49] == 1)
  {

    return [v2 _deactivateActivitySharingManager];
  }

  else
  {

    return [v2 _activateActivitySharingManager];
  }
}

- (void)_activateActivitySharingManager
{
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FE8];
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "ActivitySharingManager activating after app install/restriction state changed", buf, 2u);
  }

  if ([(ASDatabaseClient *)self->_databaseClient isDataProtectedByFirstUnlockAvailable])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__ASActivitySharingManager__activateActivitySharingManager__block_invoke;
    block[3] = &unk_278C4B278;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    ASLoggingInitialize();
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "ActivitySharingManager data protected by first unlock not available, not responding to installation", buf, 2u);
    }
  }
}

void __59__ASActivitySharingManager__activateActivitySharingManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[32] == 1)
  {
    if ([v1 _mainQueue_startSubmanagerProcessingIfNeeded])
    {
      v2 = [MEMORY[0x277CCAB98] defaultCenter];
      [v2 postNotificationName:@"ActivitySharingMangerProcessingStartedNotification" object:0];
    }
  }

  else
  {

    [v1 _mainQueue_completeSetupIfNeeded];
  }
}

- (void)_deactivateActivitySharingManager
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "ActivitySharingManager deactivating after app install/restriction state changed", buf, 2u);
  }

  ASRemoveAllActivitySharingUserDefaults();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ASActivitySharingManager__deactivateActivitySharingManager__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)sendInviteRequestToDestination:(id)a3 callerID:(id)a4 serviceIdentifier:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  [(ASRelationshipManager *)self->_relationshipManager sendInviteToPersonWithDestination:v13 callerID:v12 serviceIdentifier:v11 completion:v10];
}

- (void)acceptInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  relationshipManager = self->_relationshipManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASRelationshipManager *)relationshipManager acceptInviteRequestFromFriendWithUUID:v9 completion:v6];
}

- (void)sendWithdrawInviteRequestToFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  relationshipManager = self->_relationshipManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASRelationshipManager *)relationshipManager sendWithdrawInviteRequestToFriendWithUUID:v9 completion:v6];
}

- (void)removeFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  relationshipManager = self->_relationshipManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASRelationshipManager *)relationshipManager removeFriendWithUUID:v9 completion:v6];
}

- (void)ignoreInviteRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  relationshipManager = self->_relationshipManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASRelationshipManager *)relationshipManager ignoreInviteRequestFromFriendWithUUID:v9 completion:v6];
}

- (void)sendCompetitionRequestToFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  competitionManager = self->_competitionManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASCompetitionManager *)competitionManager sendCompetitionRequestToFriendWithUUID:v9 completion:v6];
}

- (void)acceptCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  competitionManager = self->_competitionManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASCompetitionManager *)competitionManager acceptCompetitionRequestFromFriendWithUUID:v9 completion:v6];
}

- (void)ignoreCompetitionRequestFromFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  competitionManager = self->_competitionManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASCompetitionManager *)competitionManager ignoreCompetitionRequestFromFriendWithUUID:v9 completion:v6];
}

- (void)completeCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  competitionManager = self->_competitionManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASCompetitionManager *)competitionManager completeCompetitionWithFriendWithUUID:v9 completion:v6];
}

- (void)rollCompetitionWithFriendWithUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  competitionManager = self->_competitionManager;
  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [(ASCompetitionManager *)competitionManager rollCompetitionWithFriendWithUUID:v9 completion:v6];
}

- (void)pushActivityDataToAllFriendsWithCompletion:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v6 = [(ASActivitySharingManager *)self periodicUpdateManager];
  v5 = ASCloudKitGroupUserActionExplicit();
  [v6 requestImmediateUpdateWithCloudKitGroup:v5 completion:v4];
}

- (void)fetchAllDataWithCompletion:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v6 = [(ASActivitySharingManager *)self cloudKitManager];
  v5 = ASCloudKitGroupUserActionExplicit();
  [v6 fetchAllChangesWithPriority:2 activity:0 group:v5 completion:v4];
}

- (void)fetchAllDataIfTimeSinceLastFetchIsGreaterThan:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v7 = [(ASActivitySharingManager *)self activityDataManager];
  [v7 loadLocalActivityDataIfNeeded];

  v9 = [(ASActivitySharingManager *)self cloudKitManager];
  v8 = ASCloudKitGroupUserActionExplicit();
  [v9 fetchAllChangesIfTimeSinceLastFetchIsGreaterThan:a3 priority:2 activity:0 group:v8 completion:v6];
}

- (void)cloudKitAccountStatusWithCompletion:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v5 = [(ASActivitySharingManager *)self cloudKitManager];
  [v5 fetchCloudKitAccountStatusWithCompletion:v4];
}

- (void)expireChangeTokenWithCompletion:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v5 = [(ASActivitySharingManager *)self cloudKitManager];
  [v5 expireChangeTokenWithCompletion:v4];
}

- (void)fetchAreMultipleDevicesSharingDataForSnapshotIndex:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v8 = [(ASActivitySharingManager *)self activityDataManager];
  [v8 fetchAreMultipleDevicesSharingDataForSnapshotIndex:v7 withCompletion:v6];
}

- (void)pushFakeActivityDataToAllFriendsWithCompletion:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v5 = [(ASActivitySharingManager *)self fakingManager];
  [v5 pushFakeActivityDataToAllFriendsWithCompletion:v4];
}

- (void)clearFriendListWithCompletion:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v5 = [(ASActivitySharingManager *)self friendListManager];
  [v5 clearFriendListWithCompletion:v4];
}

- (id)allFriends
{
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v3 = [(ASActivitySharingManager *)self activityDataManager];
  [v3 loadLocalActivityDataIfNeeded];

  friendListManager = self->_friendListManager;

  return [(ASFriendListManager *)friendListManager friends];
}

- (void)fetchCodableFriendWithRemoteUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v9 = [(ASActivitySharingManager *)self friendListManager];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [v9 fetchCodableFriendWithRemoteUUID:v8 completion:v6];
}

- (void)fetchFriendWithRemoteUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v9 = [(ASActivitySharingManager *)self friendListManager];
  v8 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];

  [v9 fetchfriendDataWithRemoteUUID:v8 completion:v6];
}

- (void)handleNotificationResponse:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v8 = [(ASActivitySharingManager *)self bulletinPostingManager];
  [v8 handleNotificationResponse:v7 completion:v6];
}

- (void)queryAppBadgeCountWithCompletion:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v5 = [(ASActivitySharingManager *)self friendListManager];
  [v5 queryAppBadgeCountWithCompletion:v4];
}

- (void)addFriendListObserver:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v5 = [(ASActivitySharingManager *)self friendListManager];
  [v5 addObserver:v4];
}

- (void)removeFriendListObserver:(id)a3
{
  v4 = a3;
  [(ASActivitySharingManager *)self _waitUntilSubmanagersReady];
  v5 = [(ASActivitySharingManager *)self friendListManager];
  [v5 removeObserver:v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ASActivitySharingManager_addObserver___block_invoke;
  v6[3] = &unk_278C4B250;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__ASActivitySharingManager_removeObserver___block_invoke;
  v6[3] = &unk_278C4B250;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)_mainQueue_notifyObserversOfActivation
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) activitySharingManagerActivated:{self, v9}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_mainQueue_notifyObserversOfDeactivation
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) activitySharingManagerDeactivated:{self, v9}];
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (ASActivitySharingManagerSecureCloudDelegate)secureCloudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);

  return WeakRetained;
}

@end