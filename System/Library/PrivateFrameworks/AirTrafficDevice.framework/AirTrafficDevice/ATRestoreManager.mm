@interface ATRestoreManager
+ (id)sharedManager;
- (ATRestoreManager)init;
- (BOOL)_iCloudPhotoLibraryEnabled;
- (id)_dataClasses;
- (void)_checkActiveRestoreStateWithCompletion:(id)completion;
- (void)_start;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)restoreAssetLinkDidCancelRestore:(id)restore;
- (void)restoreAssetLinkNetworkPolicyDidChange:(id)change;
- (void)restoreSessionActiveWithCompletion:(id)completion;
- (void)resume;
- (void)sessionDidFinish:(id)finish;
- (void)setRestoreInProgress:(BOOL)progress;
@end

@implementation ATRestoreManager

- (void)_checkActiveRestoreStateWithCompletion:(id)completion
{
  completionCopy = completion;
  checkRestoreStatusQueue = self->_checkRestoreStatusQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ATRestoreManager__checkActiveRestoreStateWithCompletion___block_invoke;
  v7[3] = &unk_2784E4E80;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(checkRestoreStatusQueue, v7);
}

uint64_t __59__ATRestoreManager__checkActiveRestoreStateWithCompletion___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 49) = [*(*(a1 + 32) + 64) activeRestoreType] == 2;
  *(*(a1 + 32) + 51) = [*(*(a1 + 32) + 64) activeRestoreType] == 3;
  v2 = *(a1 + 32);
  if ((*(v2 + 49) & 1) == 0 && (*(v2 + 51) & 1) == 0)
  {
    v3 = 0;
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    *v38 = 0;
    *&v38[8] = v38;
    *&v38[16] = 0x3032000000;
    v39 = __Block_byref_object_copy__2324;
    v40 = __Block_byref_object_dispose__2325;
    v41 = 0;
    v4 = MEMORY[0x277D85DD0];
    do
    {
      v5 = _ATLogCategoryRestore();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v7 = *(v6 + 8);
        *buf = 138543874;
        v33 = v6;
        v34 = 2048;
        v35 = v3;
        v36 = 2114;
        v37 = v7;
        _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ start checking if iCloudRestore is active in %llu (seconds), restoreLink %{public}@", buf, 0x20u);
      }

      v8 = dispatch_semaphore_create(0);
      v9 = dispatch_time(0, 1000000000 * v3);
      v10 = dispatch_get_global_queue(0, 0);
      block[0] = v4;
      block[1] = 3221225472;
      block[2] = __59__ATRestoreManager__checkActiveRestoreStateWithCompletion___block_invoke_63;
      block[3] = &unk_2784E4E58;
      block[4] = *(a1 + 32);
      v26 = v38;
      v27 = &v28;
      v11 = v8;
      v25 = v11;
      dispatch_after(v9, v10, block);

      dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
      v12 = *(*&v38[8] + 40);
      if (v12)
      {
        *(v29 + 24) = 0;
        if (v3 > 0x3B)
        {
          v3 = 60;
        }

        else
        {
          v3 = 2 * v3 + 2;
        }
      }

      v13 = v12 == 0;
    }

    while (!v13);
    *(*(a1 + 32) + 50) = *(v29 + 24);
    _Block_object_dispose(v38, 8);

    _Block_object_dispose(&v28, 8);
  }

  v14 = _ATLogCategoryRestore();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 32);
    v16 = v15[50];
    v17 = v15[49];
    v18 = v15[51];
    *v38 = 138544130;
    *&v38[4] = v15;
    *&v38[12] = 1024;
    *&v38[14] = v16;
    *&v38[18] = 1024;
    *&v38[20] = v17;
    LOWORD(v39) = 1024;
    *(&v39 + 2) = v18;
    _os_log_impl(&dword_223819000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ iCloudRestoreActive %d iTunesRestoreActive %d deviceRestoreActive %d.", v38, 0x1Eu);
  }

  v19 = *(a1 + 32);
  if ((*(v19 + 50) & 1) == 0 && (*(v19 + 49) & 1) == 0 && (*(v19 + 51) & 1) == 0 && [*(v19 + 64) activeRestoreType])
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CEA3C8], 0, 0, 1u);
    [*(*(a1 + 32) + 64) setActiveRestoreType:0];
    v21 = _ATLogCategoryRestore();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 32);
      *v38 = 138543618;
      *&v38[4] = v22;
      *&v38[12] = 1024;
      *&v38[14] = 0;
      _os_log_impl(&dword_223819000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ No active restore - setting activeRestoreType to %d.", v38, 0x12u);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __59__ATRestoreManager__checkActiveRestoreStateWithCompletion___block_invoke_63(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__ATRestoreManager__checkActiveRestoreStateWithCompletion___block_invoke_2;
  v4[3] = &unk_2784E4E30;
  v6 = *(a1 + 56);
  v3 = *(a1 + 40);
  v2 = v3;
  v5 = v3;
  [v1 restoreSessionActiveWithCompletion:v4];
}

void __59__ATRestoreManager__checkActiveRestoreStateWithCompletion___block_invoke_2(uint64_t a1, char a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v6 = obj;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_iCloudPhotoLibraryEnabled
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = dispatch_semaphore_create(0);
  ic_sharedAccountStore = [MEMORY[0x277CB8F48] ic_sharedAccountStore];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ATRestoreManager__iCloudPhotoLibraryEnabled__block_invoke;
  v6[3] = &unk_2784E4E08;
  v8 = &v9;
  v4 = v2;
  v7 = v4;
  [ic_sharedAccountStore ic_primaryAppleAccountWithCompletion:v6];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(ic_sharedAccountStore) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return ic_sharedAccountStore;
}

intptr_t __46__ATRestoreManager__iCloudPhotoLibraryEnabled__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 isEnabledForDataclass:*MEMORY[0x277CB9100]];
  }

  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (void)setRestoreInProgress:(BOOL)progress
{
  progressCopy = progress;
  v13 = *MEMORY[0x277D85DE8];
  v5 = _ATLogCategoryRestore();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    selfCopy = self;
    v11 = 1024;
    v12 = progressCopy;
    _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ notifying restore progress: %d", &v9, 0x12u);
  }

  userContext = [MEMORY[0x277CFE318] userContext];
  v7 = [MEMORY[0x277CFE358] keyPathWithKey:@"/restore/inProgress"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:progressCopy];
  [userContext setObject:v8 forKeyedSubscript:v7];
}

- (void)_start
{
  v27 = *MEMORY[0x277D85DE8];
  if (([(MSVXPCTransaction *)self->_xpcTransaction isActive]& 1) == 0)
  {
    [(MSVXPCTransaction *)self->_xpcTransaction beginTransaction];
  }

  activeRestoreType = [(ATDeviceSettings *)self->_settings activeRestoreType];
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  _dataClasses = [(ATRestoreManager *)self _dataClasses];
  v6 = [_dataClasses countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    v9 = activeRestoreType & 0xFFFFFFFE;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(_dataClasses);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        if (v9 == 2 && [*(*(&v20 + 1) + 8 * i) isEqualToString:@"Photo"] && -[ATRestoreManager _iCloudPhotoLibraryEnabled](selfCopy, "_iCloudPhotoLibraryEnabled"))
        {
          v12 = _ATLogCategoryRestore();
          if (os_log_type_enabled(&v12->super.super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v25 = selfCopy;
            _os_log_impl(&dword_223819000, &v12->super.super, OS_LOG_TYPE_DEFAULT, "%{public}@ skipping photos restore from iTunes because iCPL is enabled", buf, 0xCu);
          }
        }

        else
        {
          v12 = [[ATAssetSessionTask alloc] initWithDataClass:v11];
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ restore", v11];
          [(ATSessionTask *)v12 setLocalizedDescription:v13];

          v14 = [MEMORY[0x277CCAC30] predicateWithFormat:@"(isRestore = YES) AND NOT (dataclass = %@)", @"Media"];
          [(ATAssetSessionTask *)v12 setFilterPredicate:v14];

          [(ATAssetSessionTask *)v12 setRetryUntilFinished:1];
          [(ATAssetSessionTask *)v12 setShouldRetryAssetBlock:&__block_literal_global_52];
          [array addObject:v12];
        }
      }

      v7 = [_dataClasses countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v7);
  }

  [(ATRestoreManager *)selfCopy setRestoreInProgress:1];
  v15 = objc_alloc(MEMORY[0x277CEA468]);
  v16 = [v15 initWithSessionTypeIdentifier:*MEMORY[0x277CEA410]];
  restoreSession = selfCopy->_restoreSession;
  selfCopy->_restoreSession = v16;

  [(ATSession *)selfCopy->_restoreSession addSessionTasks:array];
  [(ATSession *)selfCopy->_restoreSession addObserver:selfCopy];
  mEMORY[0x277CE5430] = [MEMORY[0x277CE5430] sharedSessionServer];
  [mEMORY[0x277CE5430] addSession:selfCopy->_restoreSession];

  [(ATSession *)selfCopy->_restoreSession start];
}

BOOL __26__ATRestoreManager__start__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];
  if ([v3 code] == 16)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 error];
    v4 = [v5 code] == 3;
  }

  return v4;
}

- (id)_dataClasses
{
  if (_dataClasses_onceToken != -1)
  {
    dispatch_once(&_dataClasses_onceToken, &__block_literal_global_37);
  }

  v2 = [_dataClasses_dataClassesArray copy];

  return v2;
}

void __32__ATRestoreManager__dataClasses__block_invoke()
{
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Application", @"Book", @"Media", 0}];
  v1 = [v0 mutableCopy];
  v2 = _dataClasses_dataClassesArray;
  _dataClasses_dataClassesArray = v1;

  v3 = _dataClasses_dataClassesArray;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Photo", @"MessagePart", @"Book", @"VoiceMemo", @"File", 0}];
  [v3 removeObjectsInArray:v4];

  v5 = _dataClasses_dataClassesArray;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Photo", @"MessagePart", @"Book", @"VoiceMemo", @"File", 0}];
  [v5 addObjectsFromArray:v6];
}

- (void)restoreAssetLinkNetworkPolicyDidChange:(id)change
{
  mEMORY[0x277D7FA90] = [MEMORY[0x277D7FA90] sharedMonitor];
  [(ATRestoreManager *)self environmentMonitorDidChangeNetworkReachability:mEMORY[0x277D7FA90]];
}

- (void)restoreAssetLinkDidCancelRestore:(id)restore
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ATRestoreManager_restoreAssetLinkDidCancelRestore___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

void __53__ATRestoreManager_restoreAssetLinkDidCancelRestore___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 48) = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [*(*(a1 + 32) + 72) sessionTasks];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v7 + 1) + 8 * v5);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v6 cancelAllAssets];
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

- (void)sessionDidFinish:(id)finish
{
  finishCopy = finish;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__ATRestoreManager_sessionDidFinish___block_invoke;
  v7[3] = &unk_2784E5960;
  v8 = finishCopy;
  selfCopy = self;
  v6 = finishCopy;
  dispatch_async(queue, v7);
}

void __37__ATRestoreManager_sessionDidFinish___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) removeObserver:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = _ATLogCategoryRestore();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138543362;
    v22 = v5;
    _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ finishing restore", buf, 0xCu);
  }

  [*(*(a1 + 40) + 8) finishRestore];
  [*(a1 + 40) setRestoreInProgress:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277CEA3C8], 0, 0, 1u);
  v7 = +[ATDeviceSettings sharedInstance];
  [v7 setActiveRestoreType:0];

  [*(*(a1 + 40) + 56) endTransaction];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = +[ATClientController sharedInstance];
  v9 = [v8 allClients];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __37__ATRestoreManager_sessionDidFinish___block_invoke_34;
          v15[3] = &unk_2784E5938;
          v15[4] = v14;
          dispatch_client_async(v14, v15);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ATRestoreManager_environmentMonitorDidChangeNetworkReachability___block_invoke;
  block[3] = &unk_2784E5938;
  block[4] = self;
  dispatch_async(queue, block);
}

void __67__ATRestoreManager_environmentMonitorDidChangeNetworkReachability___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hasProperNetworkConditions];
  v3 = *(a1 + 32);
  if (v2)
  {

    [v3 resume];
  }

  else
  {
    v4 = [v3[9] sessionTasks];
    v5 = _ATLogCategoryRestore();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543618;
      v18 = v6;
      v19 = 2048;
      v20 = [v4 count];
      _os_log_impl(&dword_223819000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ suspending %lu restore tasks because wifi is not available", buf, 0x16u);
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * i) suspend];
        }

        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }
}

- (void)resume
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __26__ATRestoreManager_resume__block_invoke;
  v2[3] = &unk_2784E4DC0;
  v2[4] = self;
  [(ATRestoreManager *)self restoreSessionActiveWithCompletion:v2];
}

void __26__ATRestoreManager_resume__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __26__ATRestoreManager_resume__block_invoke_2;
  v4[3] = &unk_2784E4D98;
  v5 = a2;
  v4[4] = v2;
  dispatch_async(v3, v4);
}

void __26__ATRestoreManager_resume__block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = _ATLogCategoryRestore();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(v5 + 72);
      *buf = 138543618;
      v30 = v5;
      v31 = 2114;
      v32 = v6;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Resuming restore _restoreSession %{public}@.", buf, 0x16u);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 72);
    if (v8)
    {
      v9 = [v8 sessionTasks];
      v10 = _ATLogCategoryRestore();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        v12 = [v9 count];
        *buf = 138543618;
        v30 = v11;
        v31 = 2048;
        v32 = v12;
        _os_log_impl(&dword_223819000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming %lu restore tasks", buf, 0x16u);
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = v9;
      v14 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v24;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v13);
            }

            [*(*(&v23 + 1) + 8 * i) resume];
          }

          v15 = [v13 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v15);
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __26__ATRestoreManager_resume__block_invoke_8;
      block[3] = &unk_2784E5938;
      block[4] = v7;
      if (_block_invoke_onceToken != -1)
      {
        dispatch_once(&_block_invoke_onceToken, block);
      }

      v19 = +[ATDeviceSettings sharedInstance];
      v20 = [v19 hasCompletedDataMigration];

      v21 = _ATLogCategoryRestore();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 32);
        *buf = 138543618;
        v30 = v22;
        v31 = 1024;
        LODWORD(v32) = v20;
        _os_log_impl(&dword_223819000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ hasCompletedDataMigration = %d", buf, 0x12u);
      }

      if (v20)
      {
        [*(a1 + 32) _start];
      }
    }
  }

  else
  {
    if (v4)
    {
      v18 = *(a1 + 32);
      *buf = 138543362;
      v30 = v18;
      _os_log_impl(&dword_223819000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ No active restore session.", buf, 0xCu);
    }
  }
}

void __26__ATRestoreManager_resume__block_invoke_8(uint64_t a1)
{
  if (*(*(a1 + 32) + 50) == 1)
  {
    v2 = [MEMORY[0x277CE53F0] sharedInstance];
    [v2 addAssetLink:*(*(a1 + 32) + 8)];

    [*(*(a1 + 32) + 8) setRestoreDelegate:?];
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Photo", @"MessagePart", @"Book", @"VoiceMemo", @"File", 0}];
    [*(*(a1 + 32) + 8) setAllowedDataClasses:v3];

    [*(*(a1 + 32) + 8) open];
    v4 = [MEMORY[0x277CE53F0] sharedInstance];
    [v4 addAssetLink:*(*(a1 + 32) + 16)];

    [*(*(a1 + 32) + 16) setAllowedDataClasses:&unk_2836F5320];
    [*(*(a1 + 32) + 16) open];
  }

  v5 = [MEMORY[0x277D7FA90] sharedMonitor];
  [v5 registerObserver:*(a1 + 32)];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = *(a1 + 32);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _CFNotificationCallback, @"ATHasCompletedMigrationNotificationName", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)restoreSessionActiveWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__ATRestoreManager_restoreSessionActiveWithCompletion___block_invoke;
  v6[3] = &unk_2784E4E80;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(ATRestoreManager *)self _checkActiveRestoreStateWithCompletion:v6];
}

void __55__ATRestoreManager_restoreSessionActiveWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = *(*(a1 + 32) + 32);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__ATRestoreManager_restoreSessionActiveWithCompletion___block_invoke_2;
    v5[3] = &unk_2784E4E80;
    v4 = v1;
    v5[4] = *(a1 + 32);
    v6 = v4;
    dispatch_async(v3, v5);
  }
}

uint64_t __55__ATRestoreManager_restoreSessionActiveWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  if (v3[49] & 1) != 0 || (v3[50])
  {
    v4 = 1;
  }

  else
  {
    v4 = v3[51];
  }

  return (*(v2 + 16))(v2, v4 & 1);
}

- (ATRestoreManager)init
{
  v18.receiver = self;
  v18.super_class = ATRestoreManager;
  v2 = [(ATRestoreManager *)&v18 init];
  if (v2)
  {
    v3 = +[ATDeviceSettings sharedInstance];
    v4 = *(v2 + 8);
    *(v2 + 8) = v3;

    v5 = objc_alloc_init(ATRestoreAssetLink);
    v6 = *(v2 + 1);
    *(v2 + 1) = v5;

    v7 = objc_alloc_init(ATRestoreAssetLink);
    v8 = *(v2 + 2);
    *(v2 + 2) = v7;

    *(v2 + 49) = 0;
    v2[51] = 0;
    v9 = dispatch_queue_create("com.apple.amp.AirTraffic.ATRestoreManager.queue", 0);
    v10 = *(v2 + 3);
    *(v2 + 3) = v9;

    v11 = dispatch_queue_create("com.apple.amp.AirTraffic.ATRestoreManager.callBackQueue", MEMORY[0x277D85CD8]);
    v12 = *(v2 + 4);
    *(v2 + 4) = v11;

    v13 = dispatch_queue_create("com.apple.amp.AirTraffic.ATRestoreManager.checkRestoreStatusQueue", 0);
    v14 = *(v2 + 5);
    *(v2 + 5) = v13;

    v15 = [objc_alloc(MEMORY[0x277D27F58]) initWithName:@"com.apple.atc.restore"];
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;
  }

  return v2;
}

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, &__block_literal_global_2400);
  }

  v3 = sharedManager_restoreManager;

  return v3;
}

uint64_t __33__ATRestoreManager_sharedManager__block_invoke()
{
  sharedManager_restoreManager = objc_alloc_init(ATRestoreManager);

  return MEMORY[0x2821F96F8]();
}

@end