@interface ACHDataStore
- (ACHDataStore)initWithHealthStore:(id)store assertionClient:(id)client;
- (BOOL)_forceDatabasePopulate;
- (BOOL)_queue_populateAllPropertiesFromDatabase;
- (BOOL)_queue_populateFromDatabaseForProviders:(id)providers error:(id *)error;
- (BOOL)clearAllInMemoryPropertiesWithError:(id *)error;
- (BOOL)commitAllPropertiesWithError:(id *)error;
- (BOOL)commitPropertiesForProvider:(id)provider withError:(id *)error;
- (BOOL)commitSnapshotForProvider:(id)provider withError:(id *)error;
- (BOOL)removeSnapshotForProvider:(id)provider withError:(id *)error;
- (id)_queue_allPropertyProviderKeys;
- (id)_queue_dictionaryRepresentationOfAllProviderProperties;
- (id)snapshotForProvider:(id)provider maxAgeInDays:(unint64_t)days currentDate:(id)date withError:(id *)error;
- (id)snapshotForProvider:(id)provider withError:(id *)error;
- (void)_listenForNotifications;
- (void)_protectedDataStateDidChange;
- (void)_queue_populateAllPropertiesFromDatabase;
- (void)_startUp;
- (void)_syncEntityDidReceiveValues:(id)values;
- (void)activate;
- (void)addObserver:(id)observer;
- (void)addPropertyProvider:(id)provider;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation ACHDataStore

- (ACHDataStore)initWithHealthStore:(id)store assertionClient:(id)client
{
  storeCopy = store;
  v20.receiver = self;
  v20.super_class = ACHDataStore;
  v7 = [(ACHDataStore *)&v20 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_healthStore, store);
    v9 = [objc_alloc(MEMORY[0x277CE8CC8]) initWithHealthStore:storeCopy];
    keyValueClient = v8->_keyValueClient;
    v8->_keyValueClient = v9;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    propertyProviders = v8->_propertyProviders;
    v8->_propertyProviders = weakObjectsHashTable;

    v13 = HKCreateSerialDispatchQueue();
    internalQueue = v8->_internalQueue;
    v8->_internalQueue = v13;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v8->_observers;
    v8->_observers = weakObjectsHashTable2;

    v17 = HKCreateSerialDispatchQueue();
    notificationQueue = v8->_notificationQueue;
    v8->_notificationQueue = v17;
  }

  return v8;
}

- (void)activate
{
  [(ACHDataStore *)self _listenForNotifications];

  [(ACHDataStore *)self _startUp];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  if (notify_is_valid_token(self->_syncToken))
  {
    notify_cancel(self->_syncToken);
  }

  v3.receiver = self;
  v3.super_class = ACHDataStore;
  [(ACHDataStore *)&v3 dealloc];
}

- (void)addPropertyProvider:(id)provider
{
  providerCopy = provider;
  internalQueue = [(ACHDataStore *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__ACHDataStore_addPropertyProvider___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = providerCopy;
  v6 = providerCopy;
  dispatch_async(internalQueue, v7);
}

void __36__ACHDataStore_addPropertyProvider___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) propertyProviders];
  [v2 addObject:*(a1 + 40)];

  if ([*(a1 + 32) hasCompletedFirstPopulateFromDatabase])
  {
    v3 = [*(a1 + 32) injectedError];
    v4 = *(a1 + 32);
    v9[0] = *(a1 + 40);
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    v8 = v3;
    [v4 _queue_populateFromDatabaseForProviders:v5 error:&v8];
    v6 = v8;
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_syncEntityDidReceiveValues:(id)values
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ACHDataStore__syncEntityDidReceiveValues___block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __44__ACHDataStore__syncEntityDidReceiveValues___block_invoke(uint64_t a1)
{
  v2 = ACHLogDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_221DDC000, v2, OS_LOG_TYPE_DEFAULT, "Sync entity received new dataStore values, re-populating values from data store", v4, 2u);
  }

  return [*(a1 + 32) _queue_populateAllPropertiesFromDatabase];
}

- (void)_listenForNotifications
{
  objc_initWeak(&location, self);
  uTF8String = [*MEMORY[0x277CE8C10] UTF8String];
  internalQueue = self->_internalQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39__ACHDataStore__listenForNotifications__block_invoke;
  handler[3] = &unk_2784907F8;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(uTF8String, &self->_protectedDataToken, internalQueue, handler);
  uTF8String2 = [*MEMORY[0x277CE8AF8] UTF8String];
  v6 = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__ACHDataStore__listenForNotifications__block_invoke_2;
  v7[3] = &unk_2784907F8;
  objc_copyWeak(&v8, &location);
  notify_register_dispatch(uTF8String2, &self->_syncToken, v6, v7);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __39__ACHDataStore__listenForNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _protectedDataStateDidChange];
}

void __39__ACHDataStore__listenForNotifications__block_invoke_2(uint64_t a1)
{
  v2 = ACHLogDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_221DDC000, v2, OS_LOG_TYPE_DEFAULT, "Sync entity received new dataStore values, re-populating values from data store", v8, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained keyValueClient];
  v5 = [v4 protectedDataAvailable];

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  if (v5)
  {
    [v6 _queue_populateAllPropertiesFromDatabase];
  }

  else
  {
    [v6 setNeedsPopulationWhenProtectedDataAvailable:1];
  }
}

- (void)_startUp
{
  internalQueue = [(ACHDataStore *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__ACHDataStore__startUp__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

uint64_t __24__ACHDataStore__startUp__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_populateAllPropertiesFromDatabase];
  if ((result & 1) == 0)
  {
    v3 = ACHLogDatabase();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Error populating initial values. Will repopulate when protected data is available.", v4, 2u);
    }

    return [*(a1 + 32) setNeedsPopulationWhenProtectedDataAvailable:1];
  }

  return result;
}

- (void)_protectedDataStateDidChange
{
  internalQueue = [(ACHDataStore *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ACHDataStore__protectedDataStateDidChange__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __44__ACHDataStore__protectedDataStateDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyValueClient];
  v3 = [v2 protectedDataAvailable];

  if (v3 && [*(a1 + 32) needsPopulationWhenProtectedDataAvailable])
  {
    if ([*(a1 + 32) _queue_populateAllPropertiesFromDatabase])
    {
      v4 = *(a1 + 32);

      [v4 setNeedsPopulationWhenProtectedDataAvailable:0];
    }

    else
    {
      v5 = ACHLogDatabase();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Error fetching after protected data became available", v6, 2u);
      }
    }
  }
}

- (id)snapshotForProvider:(id)provider withError:(id *)error
{
  v6 = MEMORY[0x277CBEAA8];
  providerCopy = provider;
  date = [v6 date];
  v9 = [(ACHDataStore *)self snapshotForProvider:providerCopy maxAgeInDays:14 currentDate:date withError:error];

  return v9;
}

- (id)snapshotForProvider:(id)provider maxAgeInDays:(unint64_t)days currentDate:(id)date withError:(id *)error
{
  providerCopy = provider;
  dateCopy = date;
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__18;
  v37 = __Block_byref_object_dispose__18;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__18;
  v31 = __Block_byref_object_dispose__18;
  v32 = 0;
  internalQueue2 = [(ACHDataStore *)self internalQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke;
  v21[3] = &unk_278491E50;
  v21[4] = self;
  v24 = &v33;
  v14 = providerCopy;
  v22 = v14;
  v25 = &v27;
  daysCopy = days;
  v15 = dateCopy;
  v23 = v15;
  dispatch_sync(internalQueue2, v21);

  v16 = v34[5];
  v17 = v16;
  if (v16)
  {
    if (error)
    {
      v18 = v16;
      *error = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v19 = v28[5];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);

  return v19;
}

void __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) propertyProviders];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) assertionClient];
    v47 = 0;
    v5 = [v4 acquireDatabaseAssertionWithIdentifier:&stru_283541ED8 error:&v47];
    v6 = v47;

    if (v6)
    {
      v7 = ACHLogDatabase();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_1();
      }

      v8 = *(*(a1 + 56) + 8);
      v9 = v6;
      v10 = *(v8 + 40);
      *(v8 + 40) = v9;
      goto LABEL_24;
    }

    v11 = [*(a1 + 32) keyValueClient];
    v12 = [*(a1 + 40) uniqueName];
    v46 = 0;
    v13 = [v11 dataForKey:@"snapshot" domain:v12 error:&v46];
    v10 = v46;

    if (v13)
    {
      v45 = 0;
      v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v45];
      v15 = v45;
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v14;

      if (v15)
      {
        v18 = ACHLogDatabase();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_2((a1 + 40));
        }

        v19 = *(*(a1 + 56) + 8);
        v20 = v15;
        v21 = *(v19 + 40);
        *(v19 + 40) = v20;
LABEL_11:

LABEL_12:
        v9 = 0;
        goto LABEL_22;
      }

      if ([*(*(*(a1 + 64) + 8) + 40) version] <= 0)
      {
        v41 = ACHLogDatabase();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [*(*(*(a1 + 64) + 8) + 40) version];
          *buf = 134218240;
          v49 = v42;
          v50 = 2048;
          v51 = 1;
          _os_log_impl(&dword_221DDC000, v41, OS_LOG_TYPE_DEFAULT, "Snapshot has version %ld which is lower than current version %ld, returning nil", buf, 0x16u);
        }

        v43 = *(*(a1 + 64) + 8);
        v21 = *(v43 + 40);
        *(v43 + 40) = 0;
        goto LABEL_11;
      }

      v31 = [MEMORY[0x277CBEA80] currentCalendar];
      v15 = [v31 hk_dateBySubtractingDays:*(a1 + 72) fromDate:*(a1 + 48)];

      v32 = [*(*(*(a1 + 64) + 8) + 40) snapshotDate];
      [v32 timeIntervalSinceReferenceDate];
      v34 = v33;
      [v15 timeIntervalSinceReferenceDate];
      v36 = v35;

      if (v34 <= v36)
      {
        v37 = ACHLogDatabase();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = [*(*(*(a1 + 64) + 8) + 40) snapshotDate];
          *buf = 138412546;
          v49 = v38;
          v50 = 2112;
          v51 = v15;
          _os_log_impl(&dword_221DDC000, v37, OS_LOG_TYPE_DEFAULT, "Snapshot with date (%@) older than max age (%@), returning nil", buf, 0x16u);
        }

        v39 = *(*(a1 + 64) + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = 0;

        goto LABEL_12;
      }
    }

    else
    {
      v22 = ACHLogDatabase();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_3((a1 + 40));
      }

      v23 = *(*(a1 + 56) + 8);
      v24 = v10;
      v15 = *(v23 + 40);
      *(v23 + 40) = v24;
    }

    v25 = [*(a1 + 32) assertionClient];
    v44 = 0;
    [v25 invalidateAssertionWithToken:v5 error:&v44];
    v9 = v44;

    if (!v9)
    {
LABEL_23:

LABEL_24:
      goto LABEL_25;
    }

    v26 = ACHLogDatabase();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_4();
    }

    v27 = *(*(a1 + 56) + 8);
    v28 = *(v27 + 40);
    if (!v28)
    {
      v28 = v9;
    }

    v29 = v28;
    v15 = *(v27 + 40);
    *(v27 + 40) = v29;
LABEL_22:

    goto LABEL_23;
  }

LABEL_25:
  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)clearAllInMemoryPropertiesWithError:(id *)error
{
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__18;
  v21 = __Block_byref_object_dispose__18;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  internalQueue2 = [(ACHDataStore *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke;
  block[3] = &unk_278491558;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v13;
  dispatch_sync(internalQueue2, block);

  v7 = v18[5];
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2810000000;
  v23[3] = &unk_221E74077;
  v24 = 0;
  v2 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [*(a1 + 32) propertyProviders];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v4)
  {
    v5 = *v20;
    do
    {
      v6 = 0;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v19 + 1) + 8 * v6);
        dispatch_group_enter(v2);
        v8 = dispatch_get_global_queue(17, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke_2;
        block[3] = &unk_278491EA0;
        v9 = *(a1 + 32);
        block[4] = v7;
        block[5] = v9;
        v17 = v23;
        v18 = *(a1 + 40);
        v16 = v2;
        dispatch_async(v8, block);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v4);
  }

  v10 = dispatch_time(0, 20000000000);
  if (dispatch_group_wait(v2, v10))
  {
    v11 = ACHLogDatabase();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke_cold_1(v11);
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v12 = ACHLogDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Failure in resetting in-memory values for one or more property providers.", v14, 2u);
    }
  }

  _Block_object_dispose(v23, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v4 = *(a1 + 48);
  v7 = *(a1 + 64);
  v5[2] = __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke_3;
  v5[3] = &unk_278491E78;
  v5[4] = v1;
  v3 = v4;
  v6 = v4;
  [v1 dataStoreDidClearAllProperties:v2 completion:v5];
}

void __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke_3(uint64_t a1, char a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(*(a1 + 48) + 8);
  os_unfair_lock_lock_with_options();
  if ((a2 & 1) == 0)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [*(a1 + 32) uniqueName];
    v7 = [v5 stringWithFormat:@"Error clearing in memory store for property provider: %@", v6];

    v8 = ACHLogDatabase();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke_3_cold_1();
    }

    v9 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v9 errorWithDomain:@"com.apple.ActivityAchievements" code:10 userInfo:v10];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  *(*(*(a1 + 64) + 8) + 24) &= a2;
  os_unfair_lock_unlock((*(*(a1 + 48) + 8) + 32));
  dispatch_group_leave(*(a1 + 40));
  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)commitSnapshotForProvider:(id)provider withError:(id *)error
{
  providerCopy = provider;
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__18;
  v27 = __Block_byref_object_dispose__18;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  internalQueue2 = [(ACHDataStore *)self internalQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__ACHDataStore_commitSnapshotForProvider_withError___block_invoke;
  v15[3] = &unk_278491580;
  v15[4] = self;
  v9 = providerCopy;
  v16 = v9;
  v17 = &v19;
  v18 = &v23;
  dispatch_sync(internalQueue2, v15);

  v10 = v24[5];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __52__ACHDataStore_commitSnapshotForProvider_withError___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) propertyProviders];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 40) validThroughDate];
    if (v4)
    {
      v5 = [*(a1 + 32) assertionClient];
      v39 = 0;
      v6 = [v5 acquireDatabaseAssertionWithIdentifier:&stru_283541ED8 error:&v39];
      v7 = v39;

      if (v7)
      {
        v8 = ACHLogDatabase();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_1();
        }

        *(*(*(a1 + 48) + 8) + 24) = 0;
        v9 = *(*(a1 + 56) + 8);
        v10 = v7;
        v11 = *(v9 + 40);
        *(v9 + 40) = v10;
      }

      else
      {
        v11 = [*(a1 + 40) dataStoreProperties];
        v14 = [[ACHDataStorePropertyProviderSnapshot alloc] initWithValidThroughDate:v4 version:1 properties:v11];
        v38 = 0;
        v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v38];
        v16 = v38;
        v17 = v16;
        if (v15)
        {
          v34 = v16;
          v35 = v14;
          v18 = [*(a1 + 32) keyValueClient];
          v19 = [*(a1 + 40) uniqueName];
          v37 = 0;
          v20 = [v18 setData:v15 forKey:@"snapshot" domain:v19 error:&v37];
          v21 = v37;
          v22 = v37;
          *(*(*(a1 + 48) + 8) + 24) = v20;

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v21);
          v23 = [*(a1 + 32) assertionClient];
          v36 = 0;
          [v23 invalidateAssertionWithToken:v6 error:&v36];
          v10 = v36;

          if (v10)
          {
            v24 = ACHLogDatabase();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_4();
            }

            v25 = *(*(a1 + 56) + 8);
            v28 = *(v25 + 40);
            v26 = (v25 + 40);
            v27 = v28;
            if (v28)
            {
              v29 = v27;
            }

            else
            {
              v29 = v10;
            }

            objc_storeStrong(v26, v29);
          }

          v17 = v34;
          v14 = v35;
        }

        else
        {
          v30 = ACHLogDatabase();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __52__ACHDataStore_commitSnapshotForProvider_withError___block_invoke_cold_3();
          }

          *(*(*(a1 + 48) + 8) + 24) = 0;
          v31 = *(*(a1 + 56) + 8);
          v32 = v17;
          v10 = 0;
          v22 = *(v31 + 40);
          *(v31 + 40) = v32;
        }
      }
    }

    else
    {
      v10 = ACHLogDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 40) uniqueName];
        *buf = 138543362;
        v41 = v13;
        _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Property provider %{public}@ doesn't have a valid through date, not saving a snapshot", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = ACHLogDatabase();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 40) uniqueName];
      *buf = 138543362;
      v41 = v12;
      _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "There are no property providers registered, so not committing snapshot for %{public}@.", buf, 0xCu);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeSnapshotForProvider:(id)provider withError:(id *)error
{
  providerCopy = provider;
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__18;
  v27 = __Block_byref_object_dispose__18;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  internalQueue2 = [(ACHDataStore *)self internalQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__ACHDataStore_removeSnapshotForProvider_withError___block_invoke;
  v15[3] = &unk_278491498;
  v15[4] = self;
  v17 = &v23;
  v18 = &v19;
  v9 = providerCopy;
  v16 = v9;
  dispatch_sync(internalQueue2, v15);

  v10 = v24[5];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __52__ACHDataStore_removeSnapshotForProvider_withError___block_invoke(uint64_t a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) propertyProviders];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) assertionClient];
    v26 = 0;
    v5 = [v4 acquireDatabaseAssertionWithIdentifier:&stru_283541ED8 error:&v26];
    v6 = v26;

    if (v6)
    {
      v7 = ACHLogDatabase();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __52__ACHDataStore_removeSnapshotForProvider_withError___block_invoke_cold_1();
      }

      v8 = *(*(a1 + 48) + 8);
      v9 = v6;
      v10 = *(v8 + 40);
      *(v8 + 40) = v9;
    }

    else
    {
      v11 = [*(a1 + 32) keyValueClient];
      v27[0] = @"snapshot";
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      v13 = [*(a1 + 40) uniqueName];
      v25 = 0;
      v14 = [v11 removeValuesForKeys:v12 domain:v13 error:&v25];
      v15 = v25;
      v10 = v25;
      *(*(*(a1 + 56) + 8) + 24) = v14;

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v15);
      v16 = [*(a1 + 32) assertionClient];
      v24 = 0;
      [v16 invalidateAssertionWithToken:v5 error:&v24];
      v9 = v24;

      if (v9)
      {
        v17 = ACHLogDatabase();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_4();
        }

        v18 = *(*(a1 + 48) + 8);
        v21 = *(v18 + 40);
        v19 = (v18 + 40);
        v20 = v21;
        if (v21)
        {
          v22 = v20;
        }

        else
        {
          v22 = v9;
        }

        objc_storeStrong(v19, v22);
      }
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)commitAllPropertiesWithError:(id *)error
{
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__18;
  v21 = __Block_byref_object_dispose__18;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  internalQueue2 = [(ACHDataStore *)self internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ACHDataStore_commitAllPropertiesWithError___block_invoke;
  block[3] = &unk_278491558;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v13;
  dispatch_sync(internalQueue2, block);

  v7 = v18[5];
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      *error = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __45__ACHDataStore_commitAllPropertiesWithError___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) propertyProviders];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [*(a1 + 32) assertionClient];
    v43 = 0;
    v7 = [v6 acquireDatabaseAssertionWithIdentifier:&stru_283541ED8 error:&v43];
    v8 = v43;

    if (v8)
    {
      v9 = ACHLogDatabase();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __45__ACHDataStore_commitAllPropertiesWithError___block_invoke_cold_1();
      }

      v10 = *(*(a1 + 40) + 8);
      v11 = v8;
      v12 = *(v10 + 40);
      *(v10 + 40) = v11;
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = [*(a1 + 32) propertyProviders];
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v39 + 1) + 8 * i);
            v19 = [v18 dataStoreProperties];
            v20 = [v18 uniqueName];
            [v4 setObject:v19 forKeyedSubscript:v20];

            v21 = ACHLegacyKeyValueRepresentationFromProperties();
            if (v21)
            {
              [v5 addEntriesFromDictionary:v21];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v15);
      }

      v22 = [*(a1 + 32) keyValueClient];
      v38 = 0;
      v23 = [v22 setValuesWithDomainDictionary:v4 error:&v38];
      v12 = v38;

      v24 = [*(a1 + 32) keyValueClient];
      v37 = 0;
      v25 = [v24 setLegacyValuesWithDictionary:v5 error:&v37];
      v26 = v37;

      *(*(*(a1 + 48) + 8) + 24) = v23 & v25;
      if (v12)
      {
        v27 = v12;
      }

      else
      {
        v27 = v26;
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v27);
      v28 = [*(a1 + 32) assertionClient];
      v36 = 0;
      [v28 invalidateAssertionWithToken:v7 error:&v36];
      v11 = v36;

      if (v11)
      {
        v29 = ACHLogDatabase();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          __45__ACHDataStore_commitAllPropertiesWithError___block_invoke_cold_2();
        }

        v30 = *(*(a1 + 40) + 8);
        v33 = *(v30 + 40);
        v31 = (v30 + 40);
        v32 = v33;
        if (v33)
        {
          v34 = v32;
        }

        else
        {
          v34 = v11;
        }

        objc_storeStrong(v31, v34);
      }
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (BOOL)commitPropertiesForProvider:(id)provider withError:(id *)error
{
  providerCopy = provider;
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_not_V2(internalQueue);

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__18;
  v27 = __Block_byref_object_dispose__18;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  internalQueue2 = [(ACHDataStore *)self internalQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__ACHDataStore_commitPropertiesForProvider_withError___block_invoke;
  v15[3] = &unk_278491668;
  v15[4] = self;
  v17 = &v23;
  v9 = providerCopy;
  v16 = v9;
  v18 = &v19;
  dispatch_sync(internalQueue2, v15);

  v10 = v24[5];
  v11 = v10;
  if (v10)
  {
    if (error)
    {
      v12 = v10;
      *error = v11;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v13 = *(v20 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  return v13;
}

void __54__ACHDataStore_commitPropertiesForProvider_withError___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) propertyProviders];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) assertionClient];
    v33 = 0;
    v5 = [v4 acquireDatabaseAssertionWithIdentifier:@"com.apple.activityawardsd.ACHDataStoreCommit" error:&v33];
    v6 = v33;

    if (v6)
    {
      v7 = ACHLogDatabase();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __45__ACHDataStore_commitAllPropertiesWithError___block_invoke_cold_1();
      }

      v8 = *(*(a1 + 48) + 8);
      v9 = v6;
      v10 = *(v8 + 40);
      *(v8 + 40) = v9;
    }

    else
    {
      v10 = [*(a1 + 40) dataStoreProperties];
      v11 = ACHLegacyKeyValueRepresentationFromProperties();
      v12 = ACHLogDatabase();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 40) uniqueName];
        *buf = 138412546;
        v37 = v13;
        v38 = 2112;
        v39 = v10;
        _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Commiting properties [%@]: %@", buf, 0x16u);
      }

      v14 = [*(a1 + 32) keyValueClient];
      v15 = [*(a1 + 40) uniqueName];
      v34 = v15;
      v35 = v10;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v32 = 0;
      v17 = [v14 setValuesWithDomainDictionary:v16 error:&v32];
      v18 = v32;

      v19 = [*(a1 + 32) keyValueClient];
      v31 = 0;
      LOBYTE(v16) = [v19 setLegacyValuesWithDictionary:v11 error:&v31];
      v20 = v31;

      *(*(*(a1 + 56) + 8) + 24) = v17 & v16;
      if (v18)
      {
        v21 = v18;
      }

      else
      {
        v21 = v20;
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v21);
      v22 = [*(a1 + 32) assertionClient];
      v30 = 0;
      [v22 invalidateAssertionWithToken:v5 error:&v30];
      v9 = v30;

      if (v9)
      {
        v23 = ACHLogDatabase();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __45__ACHDataStore_commitAllPropertiesWithError___block_invoke_cold_2();
        }

        v24 = *(*(a1 + 48) + 8);
        v27 = *(v24 + 40);
        v25 = (v24 + 40);
        v26 = v27;
        if (v27)
        {
          v28 = v26;
        }

        else
        {
          v28 = v9;
        }

        objc_storeStrong(v25, v28);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)_queue_populateAllPropertiesFromDatabase
{
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  injectedError = [(ACHDataStore *)self injectedError];
  propertyProviders = [(ACHDataStore *)self propertyProviders];
  allObjects = [propertyProviders allObjects];
  v14 = injectedError;
  v7 = [(ACHDataStore *)self _queue_populateFromDatabaseForProviders:allObjects error:&v14];
  v8 = v14;

  v9 = ACHLogDatabase();
  notificationQueue = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, notificationQueue, OS_LOG_TYPE_DEFAULT, "Data store population complete, notifying observers", buf, 2u);
    }

    notificationQueue = [(ACHDataStore *)self notificationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__ACHDataStore__queue_populateAllPropertiesFromDatabase__block_invoke;
    block[3] = &unk_278490870;
    block[4] = self;
    dispatch_async(notificationQueue, block);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [ACHDataStore _queue_populateAllPropertiesFromDatabase];
  }

  return v7;
}

void __56__ACHDataStore__queue_populateAllPropertiesFromDatabase__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) dataStoreDidPopulate:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_queue_dictionaryRepresentationOfAllProviderProperties
{
  v20 = *MEMORY[0x277D85DE8];
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  propertyProviders = [(ACHDataStore *)self propertyProviders];
  v5 = [propertyProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = MEMORY[0x277CBEC10];
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(propertyProviders);
        }

        dataStoreProperties = [*(*(&v15 + 1) + 8 * v9) dataStoreProperties];
        v12 = [v10 mutableCopy];
        [v12 addEntriesFromDictionary:dataStoreProperties];
        v8 = [v12 copy];

        ++v9;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [propertyProviders countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_queue_allPropertyProviderKeys
{
  v19 = *MEMORY[0x277D85DE8];
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  propertyProviders = [(ACHDataStore *)self propertyProviders];
  v5 = [propertyProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = MEMORY[0x277CBEBF8];
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(propertyProviders);
        }

        dataStorePropertyKeys = [*(*(&v14 + 1) + 8 * v9) dataStorePropertyKeys];
        v8 = [v10 arrayByAddingObjectsFromArray:dataStorePropertyKeys];

        ++v9;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [propertyProviders countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)_queue_populateFromDatabaseForProviders:(id)providers error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  providersCopy = providers;
  internalQueue = [(ACHDataStore *)self internalQueue];
  dispatch_assert_queue_V2(internalQueue);

  keyValueClient = [(ACHDataStore *)self keyValueClient];
  protectedDataAvailable = [keyValueClient protectedDataAvailable];

  if (protectedDataAvailable)
  {
    assertionClient = [(ACHDataStore *)self assertionClient];
    v44 = 0;
    v11 = [assertionClient acquireDatabaseAssertionWithIdentifier:@"Populate" error:&v44];
    v12 = v44;

    if (v12)
    {
      v13 = ACHLogXPC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [ACHDataStore _queue_populateFromDatabaseForProviders:error:];
      }

      LOBYTE(v14) = 0;
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v15 = providersCopy;
      v16 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v16)
      {
        v17 = v16;
        errorCopy = error;
        v35 = v11;
        v36 = providersCopy;
        obj = v15;
        v18 = *v41;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v41 != v18)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v40 + 1) + 8 * i);
            keyValueClient2 = [(ACHDataStore *)self keyValueClient];
            dataStorePropertyKeys = [v20 dataStorePropertyKeys];
            uniqueName = [v20 uniqueName];
            v39 = 0;
            v24 = [keyValueClient2 valuesForKeys:dataStorePropertyKeys domain:uniqueName error:&v39];
            v25 = v39;

            if (v25)
            {

              v26 = v25;
              v15 = v26;
              if (errorCopy)
              {
                v27 = v26;
                v14 = 0;
                *errorCopy = v15;
              }

              else
              {
                _HKLogDroppedError();
                v14 = 0;
              }

              v13 = v15;
              goto LABEL_21;
            }

            [v20 setDataStoreProperties:v24];
          }

          v15 = obj;
          v17 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v13 = 0;
        v14 = 1;
LABEL_21:
        v11 = v35;
        providersCopy = v36;
      }

      else
      {
        v13 = 0;
        v14 = 1;
      }

      assertionClient2 = [(ACHDataStore *)self assertionClient];
      v38 = 0;
      [assertionClient2 invalidateAssertionWithToken:v11 error:&v38];
      v12 = v38;

      if (v12)
      {
        v29 = ACHLogDatabase();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          __45__ACHDataStore_commitAllPropertiesWithError___block_invoke_cold_2();
        }
      }

      if (v14)
      {
        [(ACHDataStore *)self setHasCompletedFirstPopulateFromDatabase:1];
        populationCompleteBlock = [(ACHDataStore *)self populationCompleteBlock];

        if (populationCompleteBlock)
        {
          populationCompleteBlock2 = [(ACHDataStore *)self populationCompleteBlock];
          [(ACHDataStore *)self setPopulationCompleteBlock:0];
          populationCompleteBlock2[2](populationCompleteBlock2);
        }
      }
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_2835633E0])
  {
    notificationQueue = [(ACHDataStore *)self notificationQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__ACHDataStore_addObserver___block_invoke;
    v7[3] = &unk_278490898;
    v7[4] = self;
    v8 = observerCopy;
    dispatch_sync(notificationQueue, v7);
  }

  else
  {
    v6 = ACHLogDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ACHDataStore addObserver:];
    }
  }
}

uint64_t __28__ACHDataStore_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  result = [*(a1 + 32) hasCompletedFirstPopulateFromDatabase];
  if (result)
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 dataStoreDidPopulate:v5];
  }

  return result;
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  notificationQueue = [(ACHDataStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__ACHDataStore_removeObserver___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(notificationQueue, v7);
}

void __31__ACHDataStore_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];
  }
}

- (BOOL)_forceDatabasePopulate
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = [(ACHDataStore *)self internalQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__ACHDataStore__forceDatabasePopulate__block_invoke;
  v5[3] = &unk_278490FE8;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

uint64_t __38__ACHDataStore__forceDatabasePopulate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_populateAllPropertiesFromDatabase];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error getting assertion for snapshot commit: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_2(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 uniqueName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_221DDC000, v2, v3, "Error unarchiving snapshot for source %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_3(id *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*a1 uniqueName];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_221DDC000, v2, v3, "Error looking up snapshot for source %@: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __71__ACHDataStore_snapshotForProvider_maxAgeInDays_currentDate_withError___block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error invalidating assertion for snapshot commit: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__ACHDataStore_clearAllInMemoryPropertiesWithError___block_invoke_3_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__ACHDataStore_commitSnapshotForProvider_withError___block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error encoding snapshot: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __52__ACHDataStore_removeSnapshotForProvider_withError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error getting assertion for snapshot removal: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__ACHDataStore_commitAllPropertiesWithError___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error getting assertion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__ACHDataStore_commitAllPropertiesWithError___block_invoke_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error invalidating assertion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_populateAllPropertiesFromDatabase
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error populating data store properties: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_queue_populateFromDatabaseForProviders:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error acquiring assertion: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Data store did not add observer %@ since it doesn't conform to the observer protocol.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end