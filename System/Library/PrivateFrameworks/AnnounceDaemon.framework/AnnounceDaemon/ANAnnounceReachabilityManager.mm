@interface ANAnnounceReachabilityManager
- (ANAnnounceReachabilityManager)init;
- (ANAnnounceReachabilityManagerDelegate)delegate;
- (NSArray)monitoredHomes;
- (id)monitoredRoomsForHome:(id)a3;
- (unint64_t)_filteredReachabilityLevelFromReachabilityLevel:(unint64_t)a3 forHome:(id)a4;
- (unint64_t)_reachabilityForHome:(id)a3;
- (unint64_t)_reachabilityForRoom:(id)a3 inHome:(id)a4;
- (unint64_t)reachabilityForHome:(id)a3;
- (unint64_t)reachabilityForRoom:(id)a3 inHome:(id)a4;
- (void)_initializeReachabilityStatus;
- (void)_notifyClientsReachabilityChangeForHome:(id)a3 toLevel:(unint64_t)a4;
- (void)_notifyClientsReachabilityChangeForRoom:(id)a3 inHome:(id)a4 toLevel:(unint64_t)a5;
- (void)_rapportActivationHandler:(id)a3;
- (void)_reevaluateHomeKitReachabilityForHome:(id)a3;
- (void)_updateReachabilityLevelWithReachabilityLevel:(unint64_t)a3 forAccessory:(id)a4 operation:(unint64_t)a5;
- (void)accessoryDidUpdateControllable:(id)a3;
- (void)connection:(id)a3 didFindDevice:(id)a4;
- (void)connection:(id)a3 didLoseDevice:(id)a4;
- (void)didAddHome:(id)a3;
- (void)didRemoveHome:(id)a3;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)startWithCompletionHandler:(id)a3;
- (void)stop;
@end

@implementation ANAnnounceReachabilityManager

- (ANAnnounceReachabilityManager)init
{
  v13.receiver = self;
  v13.super_class = ANAnnounceReachabilityManager;
  v2 = [(ANAnnounceReachabilityManager *)&v13 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.announce", "ReachabilityMgr");
    log = v2->_log;
    v2->_log = v3;

    v5 = dispatch_queue_create("com.apple.announce.reachability-queue", 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = objc_opt_new();
    homeReachability = v2->_homeReachability;
    v2->_homeReachability = v7;

    v9 = +[ANRapportConnection sharedConnection];
    rapportConnection = v2->_rapportConnection;
    v2->_rapportConnection = v9;

    v2->_started = 0;
    v11 = +[ANHomeManager shared];
    [v11 registerDelegate:v2 queue:v2->_serialQueue];

    [(ANAnnounceReachabilityManager *)v2 _initializeReachabilityStatus];
  }

  return v2;
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnounceReachabilityManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C86840;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) started])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_2;
    block[3] = &unk_278C86898;
    v8 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    [*(a1 + 32) setStarted:1];
    objc_initWeak(&location, *(a1 + 32));
    v2 = [*(a1 + 32) rapportConnection];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_3;
    v3[3] = &unk_278C868E8;
    v3[4] = *(a1 + 32);
    objc_copyWeak(&v5, &location);
    v4 = *(a1 + 40);
    [v2 activateLinkWithOptions:7 completion:v3];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

uint64_t __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_4;
  block[3] = &unk_278C868C0;
  objc_copyWeak(&v10, a1 + 6);
  v9 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_5;
  v6[3] = &unk_278C86898;
  v7 = a1[5];
  dispatch_async(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v10);
}

void __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _rapportActivationHandler:*(a1 + 32)];
}

uint64_t __60__ANAnnounceReachabilityManager_startWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stop
{
  v3 = [(ANAnnounceReachabilityManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ANAnnounceReachabilityManager_stop__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_async(v3, block);
}

void __37__ANAnnounceReachabilityManager_stop__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CEABF0] sharedManager];
  [v2 transaction:*MEMORY[0x277CEAB10] setActive:0];

  if ([*(a1 + 32) started])
  {
    [*(a1 + 32) setStarted:0];
    v3 = [*(a1 + 32) rapportConnection];
    [v3 deactivateLinkWithOptions:2];
  }
}

- (unint64_t)reachabilityForHome:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(ANAnnounceReachabilityManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__ANAnnounceReachabilityManager_reachabilityForHome___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v7;
}

uint64_t __53__ANAnnounceReachabilityManager_reachabilityForHome___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reevaluateHomeKitReachabilityForHome:*(a1 + 40)];
  result = [*(a1 + 32) _reachabilityForHome:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (unint64_t)reachabilityForRoom:(id)a3 inHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [(ANAnnounceReachabilityManager *)self serialQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__ANAnnounceReachabilityManager_reachabilityForRoom_inHome___block_invoke;
  v13[3] = &unk_278C86938;
  v13[4] = self;
  v14 = v7;
  v15 = v6;
  v16 = &v17;
  v9 = v6;
  v10 = v7;
  dispatch_sync(v8, v13);

  v11 = v18[3];
  _Block_object_dispose(&v17, 8);
  return v11;
}

uint64_t __60__ANAnnounceReachabilityManager_reachabilityForRoom_inHome___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reevaluateHomeKitReachabilityForHome:*(a1 + 40)];
  result = [*(a1 + 32) _reachabilityForRoom:*(a1 + 48) inHome:*(a1 + 40)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (id)monitoredRoomsForHome:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = objc_opt_new();
  v5 = [(ANAnnounceReachabilityManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ANAnnounceReachabilityManager_monitoredRoomsForHome___block_invoke;
  block[3] = &unk_278C86640;
  block[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  dispatch_sync(v5, block);

  v7 = [v13[5] allObjects];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__ANAnnounceReachabilityManager_monitoredRoomsForHome___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeReachability];
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [v4 allKeys];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(a1 + 40) accessoryWithUniqueIdentifier:*(*(&v13 + 1) + 8 * v9)];
          v11 = [v10 room];

          if (v11)
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v11];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSArray)monitoredHomes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = objc_opt_new();
  v3 = [(ANAnnounceReachabilityManager *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__ANAnnounceReachabilityManager_monitoredHomes__block_invoke;
  v6[3] = &unk_278C86618;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = [v8[5] allObjects];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __47__ANAnnounceReachabilityManager_monitoredHomes__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeReachability];
  v3 = [v2 allKeys];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = +[ANHomeManager shared];
        v11 = [v10 homeForID:v9];

        if (v11)
        {
          [*(*(*(a1 + 40) + 8) + 40) addObject:v11];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unint64_t)_filteredReachabilityLevelFromReachabilityLevel:(unint64_t)a3 forHome:(id)a4
{
  v5 = a4;
  v6 = +[ANHomeManager shared];
  v7 = [v6 currentAccessory];
  if (v7)
  {
  }

  else
  {
    v8 = [v5 hmu_isRemoteAccessAllowedForCurrentUser];

    if (!v8)
    {
      a3 &= ~2uLL;
    }
  }

  return a3;
}

- (void)_initializeReachabilityStatus
{
  v3 = [MEMORY[0x277CEABF0] sharedManager];
  [v3 transaction:*MEMORY[0x277CEAB10] setActive:1];

  v4 = [(ANAnnounceReachabilityManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ANAnnounceReachabilityManager__initializeReachabilityStatus__block_invoke;
  block[3] = &unk_278C86910;
  block[4] = self;
  dispatch_sync(v4, block);
}

void __62__ANAnnounceReachabilityManager__initializeReachabilityStatus__block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23F525000, v2, OS_LOG_TYPE_DEFAULT, "Initializing Reachability Status", buf, 2u);
  }

  v3 = +[ANHomeManager shared];
  v4 = [v3 allHomes];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v4;
  v41 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v41)
  {
    v40 = *v54;
    *&v5 = 138412546;
    v38 = v5;
    do
    {
      v6 = 0;
      do
      {
        if (*v54 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v6;
        v7 = *(*(&v53 + 1) + 8 * v6);
        v8 = objc_opt_new();
        v9 = [*(a1 + 32) homeReachability];
        v10 = [v7 uniqueIdentifier];
        v44 = v8;
        [v9 setObject:v8 forKeyedSubscript:v10];

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v11 = MEMORY[0x277CD1650];
        v12 = [v7 accessories];
        v13 = [v11 announceAccessoriesWithAnnounceEnabledFromAccessories:v12];

        v14 = [v13 countByEnumeratingWithState:&v49 objects:v64 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v50;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v50 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v49 + 1) + 8 * i);
              v19 = [v18 settings];
              if ([v19 isControllable])
              {
                v20 = 2;
              }

              else
              {
                v20 = 0;
              }

              v21 = [*(a1 + 32) _filteredReachabilityLevelFromReachabilityLevel:v20 forHome:v7];
              v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
              v23 = [v18 uniqueIdentifier];
              [v44 setObject:v22 forKeyedSubscript:v23];
            }

            v15 = [v13 countByEnumeratingWithState:&v49 objects:v64 count:16];
          }

          while (v15);
        }

        v24 = [*(a1 + 32) log];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v7 name];
          v26 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:{objc_msgSend(*(a1 + 32), "_reachabilityForHome:", v7)}];
          *buf = v38;
          v58 = v25;
          v59 = 2112;
          v60 = v26;
          _os_log_impl(&dword_23F525000, v24, OS_LOG_TYPE_DEFAULT, "Initial Reachability [Home = %@]: %@", buf, 0x16u);
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = [v7 rooms];
        v27 = [v43 countByEnumeratingWithState:&v45 objects:v63 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v46;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v46 != v29)
              {
                objc_enumerationMutation(v43);
              }

              v31 = *(*(&v45 + 1) + 8 * j);
              v32 = [*(a1 + 32) log];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                v33 = [v7 name];
                v34 = [v31 name];
                v35 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:{objc_msgSend(*(a1 + 32), "_reachabilityForRoom:inHome:", v31, v7)}];
                *buf = 138412802;
                v58 = v33;
                v59 = 2112;
                v60 = v34;
                v61 = 2112;
                v62 = v35;
                _os_log_impl(&dword_23F525000, v32, OS_LOG_TYPE_DEFAULT, "Initial Reachability [Home = %@, Room = %@]: %@", buf, 0x20u);
              }
            }

            v28 = [v43 countByEnumeratingWithState:&v45 objects:v63 count:16];
          }

          while (v28);
        }

        v6 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v41);
  }

  v36 = [*(a1 + 32) log];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23F525000, v36, OS_LOG_TYPE_DEFAULT, "Finished Setting Reachability Status", buf, 2u);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_reevaluateHomeKitReachabilityForHome:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = MEMORY[0x277CD1650];
  v23 = v4;
  v7 = [v4 accessories];
  v8 = [v6 announceAccessoriesWithAnnounceEnabledFromAccessories:v7];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [(ANAnnounceReachabilityManager *)self log];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 home];
          v16 = [v15 name];
          v17 = [v13 name];
          v18 = [v13 settings];
          v19 = [v18 isControllable];
          *buf = 138412802;
          v30 = v16;
          v31 = 2112;
          v32 = v17;
          v33 = 1024;
          v34 = v19;
          _os_log_impl(&dword_23F525000, v14, OS_LOG_TYPE_DEFAULT, "Re-evaluating Reachability for Accessory [Home = %@]: %@, Controllable = %d", buf, 0x1Cu);
        }

        v20 = [v13 settings];
        v21 = [v20 isControllable] ^ 1;

        [(ANAnnounceReachabilityManager *)self _updateReachabilityLevelWithReachabilityLevel:2 forAccessory:v13 operation:v21];
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v10);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_rapportActivationHandler:(id)a3
{
  v4 = a3;
  v5 = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  if (v4)
  {
    [(ANAnnounceReachabilityManager *)self setStarted:0];
    v6 = [(ANAnnounceReachabilityManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ANAnnounceReachabilityManager *)v4 _rapportActivationHandler:v6];
    }
  }

  else
  {
    v7 = [(ANAnnounceReachabilityManager *)self rapportConnection];
    v8 = [(ANAnnounceReachabilityManager *)self serialQueue];
    [v7 addDeviceDelegate:self queue:v8];
  }
}

- (unint64_t)_reachabilityForHome:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ANAnnounceReachabilityManager *)self homeReachability];
  v7 = [v4 uniqueIdentifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [v9 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
          v12 |= [v15 unsignedIntegerValue];
        }

        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (unint64_t)_reachabilityForRoom:(id)a3 inHome:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v6 = a4;
  v7 = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [(ANAnnounceReachabilityManager *)self homeReachability];
  v30 = v6;
  v9 = [v6 uniqueIdentifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v10;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v28 = 0;
      v14 = *v32;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v30 accessoryWithUniqueIdentifier:{v16, v27}];
          v18 = v17;
          if (v17)
          {
            v19 = [v17 room];
            v20 = [v19 uniqueIdentifier];
            v21 = [v29 uniqueIdentifier];
            v22 = [v20 isEqual:v21];

            if (v22)
            {
              v23 = [v11 objectForKeyedSubscript:v16];
              v28 |= [v23 unsignedIntegerValue];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v13);
    }

    else
    {
      v28 = 0;
    }

    v10 = v27;
    v24 = v28;
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)_updateReachabilityLevelWithReachabilityLevel:(unint64_t)a3 forAccessory:(id)a4 operation:(unint64_t)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [(ANAnnounceReachabilityManager *)self serialQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [(ANAnnounceReachabilityManager *)self homeReachability];
  v11 = [v8 home];
  v12 = [v11 uniqueIdentifier];
  v13 = [v10 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [v8 uniqueIdentifier];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (v15)
    {
      v16 = [v8 home];
      v17 = [v8 room];
      v18 = [(ANAnnounceReachabilityManager *)self _reachabilityForRoom:v17 inHome:v16];
      v37 = [(ANAnnounceReachabilityManager *)self _reachabilityForHome:v16];
      v19 = [v15 unsignedIntegerValue];
      v20 = v19;
      v21 = v19 | a3;
      if (a5)
      {
        v21 = v19;
      }

      if (a5 == 1)
      {
        v22 = v19 & ~a3;
      }

      else
      {
        v22 = v21;
      }

      v23 = [(ANAnnounceReachabilityManager *)self _filteredReachabilityLevelFromReachabilityLevel:v22 forHome:v16];
      if (v23 != v20)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
        v25 = [v8 uniqueIdentifier];
        [v13 setObject:v24 forKeyedSubscript:v25];
      }

      v26 = [(ANAnnounceReachabilityManager *)self _reachabilityForRoom:v17 inHome:v16];
      v27 = [(ANAnnounceReachabilityManager *)self _reachabilityForHome:v16];
      if (v26 != v18)
      {
        v36 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v18];
        v35 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v26];
        v28 = [(ANAnnounceReachabilityManager *)self log];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v16 name];
          [v17 name];
          *buf = 138413058;
          v40 = v34;
          v42 = v41 = 2112;
          v29 = v42;
          v43 = 2112;
          v44 = v36;
          v45 = 2112;
          v46 = v35;
          _os_log_impl(&dword_23F525000, v28, OS_LOG_TYPE_DEFAULT, "Reachability Changed [Home = %@, Room = %@]: %@ -> %@", buf, 0x2Au);
        }

        [(ANAnnounceReachabilityManager *)self _notifyClientsReachabilityChangeForRoom:v17 inHome:v16 toLevel:v26];
      }

      if (v27 != v37)
      {
        v38 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:?];
        v30 = [MEMORY[0x277CEAB40] stringForAnnounceReachabilityLevel:v27];
        v31 = [(ANAnnounceReachabilityManager *)self log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [v16 name];
          *buf = 138412802;
          v40 = v32;
          v41 = 2112;
          v42 = v38;
          v43 = 2112;
          v44 = v30;
          _os_log_impl(&dword_23F525000, v31, OS_LOG_TYPE_DEFAULT, "Reachability Changed [Home = %@]: %@ -> %@", buf, 0x20u);
        }

        [(ANAnnounceReachabilityManager *)self _notifyClientsReachabilityChangeForHome:v16 toLevel:v27];
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_notifyClientsReachabilityChangeForRoom:(id)a3 inHome:(id)a4 toLevel:(unint64_t)a5
{
  v11 = a3;
  v8 = a4;
  v9 = [(ANAnnounceReachabilityManager *)self delegate];

  if (v9)
  {
    v10 = [(ANAnnounceReachabilityManager *)self delegate];
    [v10 reachabilityLevel:a5 didChangeForRoom:v11 inHome:v8];
  }
}

- (void)_notifyClientsReachabilityChangeForHome:(id)a3 toLevel:(unint64_t)a4
{
  v8 = a3;
  v6 = [(ANAnnounceReachabilityManager *)self delegate];

  if (v6)
  {
    v7 = [(ANAnnounceReachabilityManager *)self delegate];
    [v7 reachabilityLevel:a4 didChangeForHome:v8];
  }
}

- (ANAnnounceReachabilityManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didAddHome:(id)a3
{
  v10 = a3;
  v4 = [(ANAnnounceReachabilityManager *)self homeReachability];
  v5 = [v10 uniqueIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_opt_new();
    v8 = [(ANAnnounceReachabilityManager *)self homeReachability];
    v9 = [v10 uniqueIdentifier];
    [v8 setObject:v7 forKeyedSubscript:v9];
  }
}

- (void)didRemoveHome:(id)a3
{
  v4 = a3;
  v6 = [(ANAnnounceReachabilityManager *)self homeReachability];
  v5 = [v4 uniqueIdentifier];

  [v6 setObject:0 forKeyedSubscript:v5];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v14 = a3;
  v6 = a4;
  if ([v6 hmu_isHomePod] && objc_msgSend(v6, "an_supportsAnnounce"))
  {
    v7 = [(ANAnnounceReachabilityManager *)self homeReachability];
    v8 = [v14 uniqueIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = [v6 settings];
      if ([v10 isControllable])
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
      v13 = [v6 uniqueIdentifier];
      [v9 setObject:v12 forKeyedSubscript:v13];

      [(ANAnnounceReachabilityManager *)self _updateReachabilityLevelWithReachabilityLevel:v11 forAccessory:v6 operation:0];
    }
  }
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v6 hmu_isHomePod])
  {
    v7 = [(ANAnnounceReachabilityManager *)self homeReachability];
    v8 = [v11 uniqueIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      [(ANAnnounceReachabilityManager *)self _updateReachabilityLevelWithReachabilityLevel:3 forAccessory:v6 operation:1];
      v10 = [v6 uniqueIdentifier];
      [v9 setObject:0 forKeyedSubscript:v10];
    }
  }
}

- (void)accessoryDidUpdateControllable:(id)a3
{
  v6 = a3;
  if ([v6 hmu_isHomePod])
  {
    v4 = [v6 settings];
    v5 = [v4 isControllable] ^ 1;

    [(ANAnnounceReachabilityManager *)self _updateReachabilityLevelWithReachabilityLevel:2 forAccessory:v6 operation:v5];
  }
}

- (void)connection:(id)a3 didFindDevice:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 isAccessory])
  {
    v6 = [(ANAnnounceReachabilityManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Rapport Did Find Accessory Device: %@", buf, 0xCu);
    }

    v7 = +[ANHomeManager shared];
    v8 = [v7 allHomes];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v8;
    v25 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v10 = *v32;
      v23 = *v32;
      v24 = self;
      v26 = v9;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v13 = [v12 accessories];
          v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v27 + 1) + 8 * j);
                v19 = [v18 uniqueIdentifier];
                v20 = [v5 homeKitIdentifier];
                v21 = [v19 isEqual:v20];

                if (v21)
                {
                  [(ANAnnounceReachabilityManager *)v24 _updateReachabilityLevelWithReachabilityLevel:1 forAccessory:v18 operation:0];

                  v9 = v26;
                  goto LABEL_21;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v26;
          v10 = v23;
        }

        v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }

LABEL_21:
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)connection:(id)a3 didLoseDevice:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if ([v5 isAccessory])
  {
    v6 = [(ANAnnounceReachabilityManager *)self log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v5;
      _os_log_impl(&dword_23F525000, v6, OS_LOG_TYPE_DEFAULT, "Rapport Did Lose Accessory Device: %@", buf, 0xCu);
    }

    v7 = +[ANHomeManager shared];
    v8 = [v7 allHomes];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v9 = v8;
    v25 = [v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      v10 = *v32;
      v23 = *v32;
      v24 = self;
      v26 = v9;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v9);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v13 = [v12 accessories];
          v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v28;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v28 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v27 + 1) + 8 * j);
                v19 = [v18 uniqueIdentifier];
                v20 = [v5 homeKitIdentifier];
                v21 = [v19 isEqual:v20];

                if (v21)
                {
                  [(ANAnnounceReachabilityManager *)v24 _updateReachabilityLevelWithReachabilityLevel:1 forAccessory:v18 operation:1];

                  v9 = v26;
                  goto LABEL_21;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v26;
          v10 = v23;
        }

        v25 = [v26 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }

LABEL_21:
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_rapportActivationHandler:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F525000, a2, OS_LOG_TYPE_ERROR, "Rapport activation failed %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end