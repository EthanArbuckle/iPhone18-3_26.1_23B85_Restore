@interface ASPeriodicUpdateManager
- (ASPeriodicUpdateManager)initWithIsWatch:(BOOL)watch;
- (ASPeriodicUpdateManagerSecureCloudDelegate)secureCloudDelegate;
- (void)_queue_handleFetchError:(id)error activity:(id)activity;
- (void)_queue_performUpdateForActivity:(id)activity cloudKitGroup:(id)group completion:(id)completion;
- (void)activitySharingManagerReady:(id)ready;
- (void)addProvider:(id)provider;
- (void)beginPeriodicUpdates;
- (void)cloudKitManager:(id)manager didUpdateAccountStatus:(int64_t)status;
- (void)endPeriodicUpdates;
- (void)removeProvider:(id)provider;
- (void)requestImmediateUpdateWithCloudKitGroup:(id)group completion:(id)completion;
@end

@implementation ASPeriodicUpdateManager

- (ASPeriodicUpdateManager)initWithIsWatch:(BOOL)watch
{
  v12.receiver = self;
  v12.super_class = ASPeriodicUpdateManager;
  v4 = [(ASPeriodicUpdateManager *)&v12 init];
  if (v4)
  {
    v5 = HKCreateSerialDispatchQueue();
    serialQueue = v4->_serialQueue;
    v4->_serialQueue = v5;

    v7 = HKCreateSerialDispatchQueue();
    providerQueue = v4->_providerQueue;
    v4->_providerQueue = v7;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    providers = v4->_providers;
    v4->_providers = weakObjectsHashTable;

    v4->_hasRegisteredForUpdates = 0;
    v4->_isWatch = watch;
  }

  return v4;
}

- (void)addProvider:(id)provider
{
  providerCopy = provider;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ASPeriodicUpdateManager_addProvider___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(providerQueue, v7);
}

- (void)removeProvider:(id)provider
{
  providerCopy = provider;
  providerQueue = self->_providerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ASPeriodicUpdateManager_removeProvider___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(providerQueue, v7);
}

- (void)activitySharingManagerReady:(id)ready
{
  readyCopy = ready;
  activityDataManager = [readyCopy activityDataManager];
  objc_storeWeak(&self->_activityDataManager, activityDataManager);

  cloudKitManager = [readyCopy cloudKitManager];
  objc_storeWeak(&self->_cloudKitManager, cloudKitManager);

  friendListManager = [readyCopy friendListManager];
  objc_storeWeak(&self->_friendListManager, friendListManager);

  relationshipManager = [readyCopy relationshipManager];

  objc_storeWeak(&self->_relationshipManager, relationshipManager);
  WeakRetained = objc_loadWeakRetained(&self->_cloudKitManager);
  [WeakRetained addObserver:self];
}

- (void)beginPeriodicUpdates
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if ((*(*(a1 + 32) + 68) & 1) == 0)
  {
    ASLoggingInitialize();
    v2 = *MEMORY[0x277CE9000];
    if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
    {
      v3 = v2;
      updated = ASShouldReducePeriodUpdateFrequency();
      v5 = &stru_2850E59E8;
      if (updated)
      {
        v5 = @" with reduced frequency";
      }

      *buf = 138412290;
      v11 = v5;
      _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager registering xpc activity%@", buf, 0xCu);
    }

    objc_initWeak(buf, *(a1 + 32));
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_309;
    v8[3] = &unk_278C4C240;
    objc_copyWeak(&v9, buf);
    v6 = *MEMORY[0x277D86238];
    v8[4] = *(a1 + 32);
    xpc_activity_register("com.apple.FitnessFriends.PeriodicUpdateActivity", v6, v8);
    *(*(a1 + 32) + 68) = 1;
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_309(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    state = xpc_activity_get_state(v3);
    ASLoggingInitialize();
    v6 = MEMORY[0x277CE9000];
    v7 = *MEMORY[0x277CE9000];
    if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = state;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager xpc activity fired, state=%zd", buf, 0xCu);
    }

    if (state)
    {
      if (!xpc_activity_set_state(v3, 4))
      {
        ASLoggingInitialize();
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_309_cold_1();
        }
      }

      v8 = *(*(a1 + 32) + 48);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_310;
      v16[3] = &unk_278C4B250;
      v16[4] = WeakRetained;
      v17 = v3;
      dispatch_async(v8, v16);
    }

    else
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      updated = ASShouldReducePeriodUpdateFrequency();
      v11 = MEMORY[0x277D862A0];
      if (!updated)
      {
        v11 = MEMORY[0x277D862B0];
      }

      v12 = *v11;
      xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86360], 1);
      xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86230], 1);
      xpc_dictionary_set_BOOL(v9, *MEMORY[0x277D86398], 1);
      xpc_dictionary_set_int64(v9, *MEMORY[0x277D86288], v12);
      xpc_dictionary_set_string(v9, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      xpc_dictionary_set_uint64(v9, *MEMORY[0x277D86358], *MEMORY[0x277D862C0]);
      v13 = xpc_activity_copy_criteria(v3);
      v14 = v13;
      if (!v13 || !xpc_equal(v13, v9))
      {
        xpc_activity_set_criteria(v3, v9);
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_310(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = ASCloudKitGroupCoreDuetTriggered();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_2;
  v5[3] = &unk_278C4C218;
  v6 = *(a1 + 40);
  [v2 _queue_performUpdateForActivity:v3 cloudKitGroup:v4 completion:v5];
}

void __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if ([v5 code] == 131 && (objc_msgSend(v5, "domain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CBBF50]), v6, v7))
  {
    if (!xpc_activity_set_state(*(a1 + 32), 3))
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_ERROR))
      {
        __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_2_cold_2();
      }
    }
  }

  else
  {
    ASLoggingInitialize();
    v8 = MEMORY[0x277CE9000];
    v9 = *MEMORY[0x277CE9000];
    if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager setting update task as done", v10, 2u);
    }

    if (!xpc_activity_set_state(*(a1 + 32), 5))
    {
      ASLoggingInitialize();
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        __47__ASPeriodicUpdateManager_beginPeriodicUpdates__block_invoke_2_cold_1();
      }
    }
  }
}

- (void)endPeriodicUpdates
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ASPeriodicUpdateManager_endPeriodicUpdates__block_invoke;
  block[3] = &unk_278C4B278;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __45__ASPeriodicUpdateManager_endPeriodicUpdates__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 68) == 1)
  {
    v6 = v1;
    v7 = v2;
    ASLoggingInitialize();
    v4 = *MEMORY[0x277CE9000];
    if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager unregistering xpc activity", v5, 2u);
    }

    xpc_activity_unregister("com.apple.FitnessFriends.PeriodicUpdateActivity");
    *(*(a1 + 32) + 68) = 0;
  }
}

- (void)requestImmediateUpdateWithCloudKitGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__ASPeriodicUpdateManager_requestImmediateUpdateWithCloudKitGroup_completion___block_invoke;
  block[3] = &unk_278C4BA30;
  block[4] = self;
  v12 = groupCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = groupCopy;
  dispatch_async(serialQueue, block);
}

uint64_t __78__ASPeriodicUpdateManager_requestImmediateUpdateWithCloudKitGroup_completion___block_invoke(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE9000];
  if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "Immediate periodic update requested.", v4, 2u);
  }

  return [*(a1 + 32) _queue_performUpdateForActivity:0 cloudKitGroup:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)_queue_performUpdateForActivity:(id)activity cloudKitGroup:(id)group completion:(id)completion
{
  activityCopy = activity;
  groupCopy = group;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_serialQueue);
  v86[0] = MEMORY[0x277D85DD0];
  v86[1] = 3221225472;
  v86[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke;
  v86[3] = &unk_278C4C178;
  v11 = completionCopy;
  v87 = v11;
  v12 = MEMORY[0x23EF0EB00](v86);
  ASLoggingInitialize();
  v13 = MEMORY[0x277CE9000];
  v14 = *MEMORY[0x277CE9000];
  if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Loading activity data if needed.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_activityDataManager);
  [WeakRetained loadLocalActivityDataIfNeeded];

  v16 = objc_loadWeakRetained(&self->_cloudKitManager);
  allObserversReady = [v16 allObserversReady];

  if (allObserversReady)
  {
    if (self->_isPushInProgress || self->_isSecureCloudPushInProgress)
    {
      ASLoggingInitialize();
      v18 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23E5E3000, v18, OS_LOG_TYPE_DEFAULT, "Push in progress, queueing another push after this one completes", buf, 2u);
      }

      self->_hasQueuedPush = 1;
      v12[2](v12, 1, 0);
    }

    else
    {
      v20 = objc_loadWeakRetained(&self->_friendListManager);
      hasLegacyFriendsToShareWith = [v20 hasLegacyFriendsToShareWith];

      if (ASSecureCloudEnabled())
      {
        v22 = objc_loadWeakRetained(&self->_friendListManager);
        hasSecureCloudFriendsToShareWith = [v22 hasSecureCloudFriendsToShareWith];
      }

      else
      {
        hasSecureCloudFriendsToShareWith = 0;
      }

      v23 = dispatch_group_create();
      v84[0] = 0;
      v84[1] = v84;
      v84[2] = 0x2020000000;
      v85 = 1;
      v82[0] = 0;
      v82[1] = v82;
      v82[2] = 0x2020000000;
      v83 = 1;
      *buf = 0;
      v77 = buf;
      v78 = 0x3032000000;
      v79 = __Block_byref_object_copy__4;
      v80 = __Block_byref_object_dispose__4;
      v81 = 0;
      v74[0] = 0;
      v74[1] = v74;
      v74[2] = 0x3032000000;
      v74[3] = __Block_byref_object_copy__4;
      v74[4] = __Block_byref_object_dispose__4;
      v75 = 0;
      v72[0] = 0;
      v72[1] = v72;
      v72[2] = 0x2020000000;
      v73 = 1;
      v70[0] = 0;
      v70[1] = v70;
      v70[2] = 0x3032000000;
      v70[3] = __Block_byref_object_copy__4;
      v70[4] = __Block_byref_object_dispose__4;
      v71 = 0;
      mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
      isStandalonePhoneFitnessMode = [mEMORY[0x277CCDD30] isStandalonePhoneFitnessMode];

      if ((self->_isWatch | isStandalonePhoneFitnessMode))
      {
        if (hasLegacyFriendsToShareWith)
        {
          ASLoggingInitialize();
          v26 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 0;
            _os_log_impl(&dword_23E5E3000, v26, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager device is a watch or standalone phone; requesting push", v69, 2u);
          }

          self->_isPushInProgress = 1;
          dispatch_group_enter(v23);
          providerQueue = self->_providerQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_315;
          block[3] = &unk_278C4C2B8;
          block[4] = self;
          v64 = activityCopy;
          v65 = groupCopy;
          v67 = v84;
          v68 = buf;
          v66 = v23;
          dispatch_async(providerQueue, block);
        }

        else
        {
          ASLoggingInitialize();
          v28 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 0;
            _os_log_impl(&dword_23E5E3000, v28, OS_LOG_TYPE_DEFAULT, "Periodic update skipped, no friends", v69, 2u);
          }
        }

        if ((ASSecureCloudEnabled() & hasSecureCloudFriendsToShareWith) == 1)
        {
          ASLoggingInitialize();
          v29 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 0;
            _os_log_impl(&dword_23E5E3000, v29, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager device is a watch or standalone phone; requesting secure cloud push", v69, 2u);
          }

          self->_isSecureCloudPushInProgress = 1;
          dispatch_group_enter(v23);
          v30 = self->_providerQueue;
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_319;
          v57[3] = &unk_278C4C2B8;
          v57[4] = self;
          v58 = groupCopy;
          v59 = activityCopy;
          v61 = v72;
          v62 = v70;
          v60 = v23;
          dispatch_async(v30, v57);
        }

        else
        {
          ASLoggingInitialize();
          v31 = *v13;
          if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
          {
            *v69 = 0;
            _os_log_impl(&dword_23E5E3000, v31, OS_LOG_TYPE_DEFAULT, "Periodic update for secure cloud skipped, no friends", v69, 2u);
          }
        }
      }

      self->_hasQueuedPush = 0;
      if ((self->_isWatch & ~isStandalonePhoneFitnessMode & 1) == 0 && ((hasLegacyFriendsToShareWith ^ 1) & 1) == 0)
      {
        ASLoggingInitialize();
        v32 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          *v69 = 0;
          _os_log_impl(&dword_23E5E3000, v32, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager device is a phone; updating supported features if necessary", v69, 2u);
        }

        dispatch_group_enter(v23);
        v33 = objc_loadWeakRetained(&self->_relationshipManager);
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_322;
        v54[3] = &unk_278C4C308;
        v55 = v23;
        selfCopy = self;
        [v33 updateRelationshipsForCurrentFeatureSupportWithActivity:activityCopy cloudKitGroup:groupCopy completion:v54];
      }

      if ((hasLegacyFriendsToShareWith | hasSecureCloudFriendsToShareWith))
      {
        ASLoggingInitialize();
        v34 = *v13;
        if (os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
        {
          *v69 = 0;
          _os_log_impl(&dword_23E5E3000, v34, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager initiating fetch changes from CloudKit", v69, 2u);
        }

        dispatch_group_enter(v23);
        if (ASAlwaysFetchOnPeriodicUpdate())
        {
          v35 = 0;
        }

        else
        {
          v35 = 900;
        }

        v36 = objc_loadWeakRetained(&self->_cloudKitManager);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_324;
        v50[3] = &unk_278C4C330;
        v52 = v82;
        v53 = v74;
        v51 = v23;
        [v36 fetchAllChangesIfTimeSinceLastFetchIsGreaterThan:v35 priority:2 activity:activityCopy group:groupCopy completion:v50];
      }

      serialQueue = self->_serialQueue;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_325;
      v42[3] = &unk_278C4C380;
      v42[4] = self;
      v46 = v74;
      v43 = activityCopy;
      v47 = buf;
      v48 = v84;
      v49 = v82;
      v44 = groupCopy;
      v45 = v12;
      dispatch_group_notify(v23, serialQueue, v42);
      if (!self->_isWatch || ([MEMORY[0x277CCDD30] sharedBehavior], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "tinkerModeEnabled"), v38, v39))
      {
        v40 = objc_loadWeakRetained(&self->_relationshipManager);
        [v40 processRetryMessages];
      }

      _Block_object_dispose(v70, 8);
      _Block_object_dispose(v72, 8);
      _Block_object_dispose(v74, 8);

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(v82, 8);
      _Block_object_dispose(v84, 8);
    }
  }

  else
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      [ASPeriodicUpdateManager _queue_performUpdateForActivity:cloudKitGroup:completion:];
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE91F8] code:0 userInfo:0];
    (v12)[2](v12, 0, v19);
  }
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_2;
    block[3] = &unk_278C4BD38;
    v8 = *(a1 + 32);
    v9 = a2;
    v7 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_315(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [*(*(a1 + 32) + 40) allObjects];
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v6 = MEMORY[0x277CBEBF8];
    v7 = MEMORY[0x277CBEBF8];
    do
    {
      v8 = 0;
      v9 = v6;
      v10 = v7;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v11 = *(*(&v25 + 1) + 8 * v8);
        v12 = [v11 recordsToSave];
        v7 = [v10 arrayByAddingObjectsFromArray:v12];

        v13 = [v11 recordIDsToDelete];
        v6 = [v9 arrayByAddingObjectsFromArray:v13];

        ++v8;
        v9 = v6;
        v10 = v7;
      }

      while (v4 != v8);
      v4 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
    v7 = MEMORY[0x277CBEBF8];
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_2_316;
  v19[3] = &unk_278C4C290;
  v19[4] = *(a1 + 32);
  v20 = v15;
  v21 = v7;
  v24 = *(a1 + 64);
  v22 = *(a1 + 56);
  v23 = *(a1 + 48);
  v17 = v7;
  [WeakRetained forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v17 recordIDsToDelete:v6 priority:2 activity:v20 group:v16 completion:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_2_316(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = *(v10 + 56);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_3;
  v20[3] = &unk_278C4C268;
  v26 = a2;
  v20[4] = v10;
  v21 = v7;
  v22 = v8;
  v12 = v9;
  v13 = *(a1 + 48);
  v25 = *(a1 + 72);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  *&v17 = v12;
  *(&v17 + 1) = v13;
  v23 = v17;
  v24 = v16;
  v18 = v8;
  v19 = v7;
  dispatch_async(v11, v20);
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_3(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(*(a1 + 32) + 40);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        if (*(a1 + 104) == 1 && !*(a1 + 40))
        {
          [v7 periodicUpdateManager:*(a1 + 32) didSaveRecords:*(a1 + 48) activity:*(a1 + 56)];
        }

        else
        {
          [v7 periodicUpdateManager:*(a1 + 32) didFailToSaveRecords:*(a1 + 64) activity:*(a1 + 56)];
        }

        ++v6;
      }

      while (v4 != v6);
      v8 = [v2 countByEnumeratingWithState:&v17 objects:v25 count:16];
      v4 = v8;
    }

    while (v8);
  }

  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE9000];
  if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 104);
    v11 = *(a1 + 40);
    *buf = 67109378;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Periodic update save completed with result: %{BOOL}d, %@", buf, 0x12u);
  }

  *(*(*(a1 + 88) + 8) + 24) = *(a1 + 104);
  objc_storeStrong((*(*(a1 + 96) + 8) + 40), *(a1 + 40));
  dispatch_group_leave(*(a1 + 72));
  v12 = *(a1 + 32);
  v13 = *(v12 + 48);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_317;
  v15[3] = &unk_278C4B250;
  v15[4] = v12;
  v16 = *(a1 + 80);
  dispatch_async(v13, v15);

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_317(uint64_t result)
{
  *(*(result + 32) + 65) = 0;
  v3 = *(result + 32);
  if ((*(v3 + 67) & 1) == 0 && *(v3 + 66) == 1)
  {
    v7 = v1;
    v8 = v2;
    v4 = result;
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE9000];
    if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Running queued push immediately", v6, 2u);
    }

    return [*(v4 + 32) _queue_performUpdateForActivity:0 cloudKitGroup:*(v4 + 40) completion:0];
  }

  return result;
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_319(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_2_320;
  v9[3] = &unk_278C4C2E0;
  v13 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  [WeakRetained periodicUpdateManager:v3 requestChangedRecordsPushWithGroup:v4 activity:v5 completion:v9];
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_2_320(uint64_t a1, int a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE9000];
  if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v17 = a2;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "Periodic update secure cloud save completed with result: %{BOOL}d, %@", buf, 0x12u);
  }

  *(*(*(a1 + 56) + 8) + 24) = a2;
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 32));
  v11 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = *(v11 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_321;
  v14[3] = &unk_278C4B250;
  v14[4] = v11;
  v15 = v10;
  dispatch_async(v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_321(uint64_t result)
{
  *(*(result + 32) + 67) = 0;
  v3 = *(result + 32);
  if ((*(v3 + 65) & 1) == 0 && *(v3 + 66) == 1)
  {
    v7 = v1;
    v8 = v2;
    v4 = result;
    ASLoggingInitialize();
    v5 = *MEMORY[0x277CE9000];
    if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Running queued push immediately for secure cloud", v6, 2u);
    }

    return [*(v4 + 32) _queue_performUpdateForActivity:0 cloudKitGroup:*(v4 + 40) completion:0];
  }

  return result;
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_322(uint64_t a1)
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE9000];
  if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager finished updating supported features", buf, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(v3 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_323;
  block[3] = &unk_278C4B278;
  block[4] = v3;
  dispatch_async(v4, block);
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_324(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE9000];
  if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager fetch changes completed", v10, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  dispatch_group_leave(*(a1 + 32));
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_325(uint64_t a1)
{
  [*(a1 + 32) _queue_handleFetchError:*(*(*(a1 + 64) + 8) + 40) activity:*(a1 + 40)];
  v2 = *(*(*(a1 + 72) + 8) + 40);
  if (!v2)
  {
    v2 = *(*(*(a1 + 64) + 8) + 40);
  }

  v3 = v2;
  if (*(*(*(a1 + 80) + 8) + 24) == 1)
  {
    v4 = *(*(*(a1 + 88) + 8) + 24);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 1;
  if (ASSecureCloudEnabled() && (WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72)), WeakRetained, WeakRetained))
  {
    ASLoggingInitialize();
    v7 = *MEMORY[0x277CE9000];
    if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v7, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager checking if any relationships can upgrade containers", buf, 2u);
    }

    v8 = dispatch_group_create();
    v9 = *(a1 + 32);
    v10 = *(v9 + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_326;
    block[3] = &unk_278C4C358;
    v13 = v8;
    v14 = v9;
    v15 = *(a1 + 48);
    v16 = *(a1 + 40);
    v18 = *(a1 + 56);
    v19 = v5;
    v17 = v3;
    v11 = v8;
    dispatch_async(v10, block);
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_326(uint64_t a1)
{
  dispatch_group_enter(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_2_327;
  v12[3] = &unk_278C4C218;
  v13 = *(a1 + 32);
  [WeakRetained periodicUpdateManager:v3 runSecureCloudTasksWithGroup:v4 activity:v5 completion:v12];

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 48);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_328;
  v8[3] = &unk_278C4BD38;
  v10 = *(a1 + 72);
  v11 = *(a1 + 80);
  v9 = *(a1 + 64);
  dispatch_group_notify(v6, v7, v8);
}

void __84__ASPeriodicUpdateManager__queue_performUpdateForActivity_cloudKitGroup_completion___block_invoke_2_327(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE9000];
  if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager completed secure cloud tasks with result: %{BOOL}d, %@", v8, 0x12u);
  }

  dispatch_group_leave(*(a1 + 32));

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_queue_handleFetchError:(id)error activity:(id)activity
{
  errorCopy = error;
  activityCopy = activity;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (ASSecureCloudEnabled())
  {
    WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);

    if (errorCopy)
    {
      if (WeakRetained)
      {
        v9 = dispatch_group_create();
        dispatch_group_enter(v9);
        providerQueue = self->_providerQueue;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __60__ASPeriodicUpdateManager__queue_handleFetchError_activity___block_invoke;
        v12[3] = &unk_278C4BB48;
        v12[4] = self;
        v13 = errorCopy;
        v14 = activityCopy;
        v15 = v9;
        v11 = v9;
        dispatch_async(providerQueue, v12);
        dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }
}

void __60__ASPeriodicUpdateManager__queue_handleFetchError_activity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ASPeriodicUpdateManager__queue_handleFetchError_activity___block_invoke_2;
  v6[3] = &unk_278C4C218;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [WeakRetained periodicUpdateManager:v3 fetchDidFailWithError:v4 activity:v5 completion:v6];
}

- (void)cloudKitManager:(id)manager didUpdateAccountStatus:(int64_t)status
{
  v10 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE9000];
  if (os_log_type_enabled(*MEMORY[0x277CE9000], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    statusCopy = status;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "PeriodicUpdateManager account status did change to %ld", &v8, 0xCu);
  }

  if ((status - 2) >= 3 && status)
  {
    if (status == 1)
    {
      [(ASPeriodicUpdateManager *)self beginPeriodicUpdates];
    }
  }

  else
  {
    [(ASPeriodicUpdateManager *)self endPeriodicUpdates];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (ASPeriodicUpdateManagerSecureCloudDelegate)secureCloudDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_secureCloudDelegate);

  return WeakRetained;
}

@end