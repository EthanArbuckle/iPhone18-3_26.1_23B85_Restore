@interface ASDatabaseClient
- (ASDatabaseClient)initWithHealthStore:(id)store;
- (ASDatabaseClient)initWithHealthStore:(id)store profile:(id)profile;
- (ASDatabaseClient)initWithProfile:(id)profile;
- (BOOL)deleteDataObjectsOfType:(id)type predicate:(id)predicate limit:(unint64_t)limit deletedSampleCount:(unint64_t *)count notifyObservers:(BOOL)observers generateDeletedObjects:(BOOL)objects error:(id *)error;
- (BOOL)enumerateActivitySharingAchievementsWithPredicate:(id)predicate anchor:(id *)anchor error:(id *)error handler:(id)handler;
- (BOOL)enumerateActivitySharingSnapshotsWithPredicate:(id)predicate anchor:(id *)anchor error:(id *)error handler:(id)handler;
- (BOOL)enumerateActivitySharingWorkoutsWithPredicate:(id)predicate anchor:(id *)anchor error:(id *)error handler:(id)handler;
- (BOOL)enumerateAllActivitySharingSamplesWithPredicate:(id)predicate error:(id *)error handler:(id)handler;
- (BOOL)insertDataObjects:(id)objects error:(id *)error;
- (BOOL)isDataProtectedByFirstUnlockAvailable;
- (BOOL)isProtectedDataAvailable;
- (BOOL)performDatabaseCompetitionWriteTransactionBlock:(id)block error:(id *)error;
- (BOOL)removeAllCodableDatabaseCompetitionListsWithError:(id *)error;
- (BOOL)removeAllCodableDatabaseCompetitionsWithError:(id *)error;
- (BOOL)removeCodableDatabaseCompetitionsWithFriendUUID:(id)d type:(int64_t)type error:(id *)error;
- (BOOL)saveCodableDatabaseCompetitionListEntry:(id)entry error:(id *)error;
- (BOOL)saveCodableDatabaseCompetitions:(id)competitions error:(id *)error;
- (id)activeDeviceUUIDWithError:(id *)error;
- (id)allCodableDatabaseCompetitionListEntriesWithError:(id *)error;
- (id)allCodableDatabaseCompetitionsWithError:(id *)error;
- (id)deletedHealthKitWorkoutsWithinLastNumberOfDays:(unint64_t)days maxBatchSize:(unint64_t)size anchor:(id *)anchor error:(id *)error;
- (id)healthKitWorkoutsWithPredicate:(id)predicate anchor:(id *)anchor error:(id *)error;
- (id)localSourceUUIDWithError:(id *)error;
- (id)makeASKeyValueDomainWithDomainName:(id)name category:(int64_t)category;
- (id)todayActivitySummary;
- (id)yesterdayActivitySummary;
- (void)_handleCurrentActivitySummary:(id)summary;
- (void)_handleNanoAlertSuppressionInvalidatedNotification:(id)notification;
- (void)_handleProtectedDataAvailabilityDidChangeNotification:(id)notification;
- (void)_observerQueue_handleYesterdayActivitySummaryUpdate;
- (void)addActivitySummaryObserver:(id)observer;
- (void)addNanoAlertSuppressionObserver:(id)observer;
- (void)addProtectedDataObserver:(id)observer;
- (void)addSampleObserver:(id)observer sampleTypes:(id)types;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)isActivityAlertSuppressionEnabledWithCompletion:(id)completion;
- (void)performWhenDaemonReady:(id)ready;
- (void)performWhenDataProtectedByFirstUnlockIsAvailable:(id)available;
- (void)registerFitnessAppBadgeProvider;
- (void)removeActivitySummaryObserver:(id)observer;
- (void)removeNanoAlertSuppressionObserver:(id)observer;
- (void)removeProtectedDataObserver:(id)observer;
- (void)removeSampleObserver:(id)observer sampleTypes:(id)types;
- (void)updateFitnessAppBadgeCount:(unint64_t)count;
@end

@implementation ASDatabaseClient

- (ASDatabaseClient)initWithHealthStore:(id)store
{
  storeCopy = store;
  v5 = [(ASDatabaseClient *)self initWithHealthStore:storeCopy profile:0];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CCDAA0]);
    v7 = ASDatabaseServerTaskIdentifier();
    uUID = [MEMORY[0x277CCAD78] UUID];
    v9 = [v6 initWithHealthStore:storeCopy taskIdentifier:v7 exportedObject:v5 taskUUID:uUID];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v9;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    protectedDataAvailableObservers = v5->_protectedDataAvailableObservers;
    v5->_protectedDataAvailableObservers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    activitySummaryObservers = v5->_activitySummaryObservers;
    v5->_activitySummaryObservers = weakObjectsHashTable2;

    weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    nanoAlertSuppressionObservers = v5->_nanoAlertSuppressionObservers;
    v5->_nanoAlertSuppressionObservers = weakObjectsHashTable3;

    objc_initWeak(&location, v5);
    v17 = objc_alloc(MEMORY[0x277CCDD58]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __40__ASDatabaseClient_initWithHealthStore___block_invoke;
    v30[3] = &unk_278C4B110;
    objc_copyWeak(&v31, &location);
    v18 = [v17 initWithUpdateHandler:v30];
    currentActivitySummaryQuery = v5->_currentActivitySummaryQuery;
    v5->_currentActivitySummaryQuery = v18;

    [storeCopy executeQuery:v5->_currentActivitySummaryQuery];
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    observerAnchoredObjectQueryMap = v5->_observerAnchoredObjectQueryMap;
    v5->_observerAnchoredObjectQueryMap = v20;

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__handleProtectedDataAvailabilityDidChangeNotification_ name:*MEMORY[0x277CE92B0] object:0];

    defaultCenter2 = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__handleNanoAlertSuppressionInvalidatedNotification_ name:*MEMORY[0x277D095F8] object:0];

    uTF8String = [*MEMORY[0x277CE9188] UTF8String];
    observerQueue = v5->_observerQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __40__ASDatabaseClient_initWithHealthStore___block_invoke_2;
    v27[3] = &unk_278C4B138;
    v28 = v5;
    objc_copyWeak(&v29, &location);
    notify_register_dispatch(uTF8String, &v5->_yesterdaySummaryDidUpdateToken, observerQueue, v27);
    objc_destroyWeak(&v29);

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __40__ASDatabaseClient_initWithHealthStore___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleCurrentActivitySummary:v4];
}

void __40__ASDatabaseClient_initWithHealthStore___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Received yesterday summary updated notification", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _observerQueue_handleYesterdayActivitySummaryUpdate];

  v8 = *MEMORY[0x277D85DE8];
}

- (ASDatabaseClient)initWithProfile:(id)profile
{
  v3 = [(ASDatabaseClient *)self initWithHealthStore:0 profile:profile];
  v4 = v3;
  if (v3)
  {
    daemon = [(HDProfile *)v3->_profile daemon];
    [daemon registerDaemonReadyObserver:v4 queue:v4->_queue];
  }

  return v4;
}

- (ASDatabaseClient)initWithHealthStore:(id)store profile:(id)profile
{
  storeCopy = store;
  profileCopy = profile;
  v20.receiver = self;
  v20.super_class = ASDatabaseClient;
  v9 = [(ASDatabaseClient *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, store);
    objc_storeStrong(&v10->_profile, profile);
    v10->_isDaemonReady = 0;
    v10->_fitnessAppBadgeCount = 0;
    v11 = HKCreateSerialDispatchQueue();
    queue = v10->_queue;
    v10->_queue = v11;

    v13 = HKCreateSerialDispatchQueue();
    observerQueue = v10->_observerQueue;
    v10->_observerQueue = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queue_performWhenDaemonReadyBlocks = v10->_queue_performWhenDaemonReadyBlocks;
    v10->_queue_performWhenDaemonReadyBlocks = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    queue_performWhenProtectedDataDidBecomeAvailableBlocks = v10->_queue_performWhenProtectedDataDidBecomeAvailableBlocks;
    v10->_queue_performWhenProtectedDataDidBecomeAvailableBlocks = v17;
  }

  return v10;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  [(HKHealthStore *)self->_healthStore stopQuery:self->_currentActivitySummaryQuery];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_observerAnchoredObjectQueryMap allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [(HKHealthStore *)self->_healthStore stopQuery:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (notify_is_valid_token(self->_yesterdaySummaryDidUpdateToken))
  {
    notify_cancel(self->_yesterdaySummaryDidUpdateToken);
  }

  v9.receiver = self;
  v9.super_class = ASDatabaseClient;
  [(ASDatabaseClient *)&v9 dealloc];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)performWhenDaemonReady:(id)ready
{
  readyCopy = ready;
  v5 = readyCopy;
  if (self->_profile)
  {
    queue = self->_queue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_317;
    v9[3] = &unk_278C4B1B0;
    v9[4] = self;
    v10 = readyCopy;
    dispatch_async(queue, v9);
    v7 = v10;
  }

  else
  {
    proxyProvider = self->_proxyProvider;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__ASDatabaseClient_performWhenDaemonReady___block_invoke;
    v12[3] = &unk_278C4B160;
    v13 = readyCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2;
    v11[3] = &unk_278C4B188;
    v11[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
    v7 = v13;
  }
}

void __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

void __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_317(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    v4 = *(v2 + 56);
    v5 = MEMORY[0x23EF0EB00](*(a1 + 40));
    [v4 addObject:v5];
  }
}

- (BOOL)isDataProtectedByFirstUnlockAvailable
{
  if (self->_profile)
  {
    database = [(HDProfile *)self->_profile database];
    isDataProtectedByFirstUnlockAvailable = [database isDataProtectedByFirstUnlockAvailable];

    return isDataProtectedByFirstUnlockAvailable;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    proxyProvider = self->_proxyProvider;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__ASDatabaseClient_isDataProtectedByFirstUnlockAvailable__block_invoke;
    v8[3] = &unk_278C4B200;
    v8[4] = &v9;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __57__ASDatabaseClient_isDataProtectedByFirstUnlockAvailable__block_invoke_3;
    v7[3] = &unk_278C4B188;
    v7[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v8 errorHandler:v7];
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
    return v6;
  }
}

uint64_t __57__ASDatabaseClient_isDataProtectedByFirstUnlockAvailable__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__ASDatabaseClient_isDataProtectedByFirstUnlockAvailable__block_invoke_2;
  v3[3] = &unk_278C4B1D8;
  v3[4] = *(a1 + 32);
  return [a2 remote_isDataProtectedByFirstUnlockAvailableWithCompletion:v3];
}

void __57__ASDatabaseClient_isDataProtectedByFirstUnlockAvailable__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

- (void)performWhenDataProtectedByFirstUnlockIsAvailable:(id)available
{
  availableCopy = available;
  profile = self->_profile;
  if (profile)
  {
    database = [(HDProfile *)profile database];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __69__ASDatabaseClient_performWhenDataProtectedByFirstUnlockIsAvailable___block_invoke_320;
    v9[3] = &unk_278C4B228;
    v7 = &v10;
    v10 = availableCopy;
    [database performWhenDataProtectedByFirstUnlockIsAvailable:v9];
  }

  else
  {
    proxyProvider = self->_proxyProvider;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __69__ASDatabaseClient_performWhenDataProtectedByFirstUnlockIsAvailable___block_invoke;
    v12[3] = &unk_278C4B160;
    v7 = &v13;
    v13 = availableCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__ASDatabaseClient_performWhenDataProtectedByFirstUnlockIsAvailable___block_invoke_2;
    v11[3] = &unk_278C4B188;
    v11[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
  }
}

void __69__ASDatabaseClient_performWhenDataProtectedByFirstUnlockIsAvailable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

- (BOOL)isProtectedDataAvailable
{
  if (self->_profile)
  {
    database = [(HDProfile *)self->_profile database];
    isProtectedDataAvailable = [database isProtectedDataAvailable];

    return isProtectedDataAvailable;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    proxyProvider = self->_proxyProvider;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __44__ASDatabaseClient_isProtectedDataAvailable__block_invoke;
    v8[3] = &unk_278C4B200;
    v8[4] = &v9;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__ASDatabaseClient_isProtectedDataAvailable__block_invoke_3;
    v7[3] = &unk_278C4B188;
    v7[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v8 errorHandler:v7];
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
    return v6;
  }
}

uint64_t __44__ASDatabaseClient_isProtectedDataAvailable__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__ASDatabaseClient_isProtectedDataAvailable__block_invoke_2;
  v3[3] = &unk_278C4B1D8;
  v3[4] = *(a1 + 32);
  return [a2 remote_isProtectedDataAvailableWithCompletion:v3];
}

void __44__ASDatabaseClient_isProtectedDataAvailable__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

- (void)addProtectedDataObserver:(id)observer
{
  observerCopy = observer;
  profile = self->_profile;
  if (profile)
  {
    database = [(HDProfile *)profile database];
    [database addProtectedDataObserver:observerCopy];
  }

  else
  {
    observerQueue = self->_observerQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__ASDatabaseClient_addProtectedDataObserver___block_invoke;
    v8[3] = &unk_278C4B250;
    v8[4] = self;
    v9 = observerCopy;
    dispatch_async(observerQueue, v8);
  }
}

- (void)removeProtectedDataObserver:(id)observer
{
  observerCopy = observer;
  profile = self->_profile;
  if (profile)
  {
    database = [(HDProfile *)profile database];
    [database removeProtectedDataObserver:observerCopy];
  }

  else
  {
    observerQueue = self->_observerQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__ASDatabaseClient_removeProtectedDataObserver___block_invoke;
    v8[3] = &unk_278C4B250;
    v8[4] = self;
    v9 = observerCopy;
    dispatch_async(observerQueue, v8);
  }
}

- (void)_handleProtectedDataAvailabilityDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CE92B8]];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__ASDatabaseClient__handleProtectedDataAvailabilityDidChangeNotification___block_invoke;
    block[3] = &unk_278C4B278;
    block[4] = self;
    dispatch_async(queue, block);
  }

  observerQueue = self->_observerQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__ASDatabaseClient__handleProtectedDataAvailabilityDidChangeNotification___block_invoke_2;
  v9[3] = &unk_278C4B2A0;
  v9[4] = self;
  v10 = bOOLValue;
  dispatch_async(observerQueue, v9);
}

uint64_t __74__ASDatabaseClient__handleProtectedDataAvailabilityDidChangeNotification___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [*(*(a1 + 32) + 64) removeAllObjects];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void __74__ASDatabaseClient__handleProtectedDataAvailabilityDidChangeNotification___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 72);
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

        [*(*(&v8 + 1) + 8 * v6++) database:0 protectedDataDidBecomeAvailable:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)yesterdayActivitySummary
{
  if (self->_profile)
  {
    currentActivitySummaryHelper = [(HDProfile *)self->_profile currentActivitySummaryHelper];
    yesterdayActivitySummary = [currentActivitySummaryHelper yesterdayActivitySummary];
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    proxyProvider = self->_proxyProvider;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __44__ASDatabaseClient_yesterdayActivitySummary__block_invoke;
    v7[3] = &unk_278C4B200;
    v7[4] = &v8;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__ASDatabaseClient_yesterdayActivitySummary__block_invoke_3;
    v6[3] = &unk_278C4B188;
    v6[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v7 errorHandler:v6];
    yesterdayActivitySummary = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return yesterdayActivitySummary;
}

uint64_t __44__ASDatabaseClient_yesterdayActivitySummary__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__ASDatabaseClient_yesterdayActivitySummary__block_invoke_2;
  v3[3] = &unk_278C4B2C8;
  v3[4] = *(a1 + 32);
  return [a2 remote_yesterdayActivitySummaryWithCompletion:v3];
}

void __44__ASDatabaseClient_yesterdayActivitySummary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

- (id)todayActivitySummary
{
  if (self->_profile)
  {
    currentActivitySummaryHelper = [(HDProfile *)self->_profile currentActivitySummaryHelper];
    todayActivitySummary = [currentActivitySummaryHelper todayActivitySummary];
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy_;
    v12 = __Block_byref_object_dispose_;
    v13 = 0;
    proxyProvider = self->_proxyProvider;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__ASDatabaseClient_todayActivitySummary__block_invoke;
    v7[3] = &unk_278C4B200;
    v7[4] = &v8;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__ASDatabaseClient_todayActivitySummary__block_invoke_3;
    v6[3] = &unk_278C4B188;
    v6[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v7 errorHandler:v6];
    todayActivitySummary = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  return todayActivitySummary;
}

uint64_t __40__ASDatabaseClient_todayActivitySummary__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__ASDatabaseClient_todayActivitySummary__block_invoke_2;
  v3[3] = &unk_278C4B2C8;
  v3[4] = *(a1 + 32);
  return [a2 remote_todayActivitySummaryWithCompletion:v3];
}

void __40__ASDatabaseClient_todayActivitySummary__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

- (void)addActivitySummaryObserver:(id)observer
{
  observerCopy = observer;
  profile = self->_profile;
  if (profile)
  {
    currentActivitySummaryHelper = [(HDProfile *)profile currentActivitySummaryHelper];
    [currentActivitySummaryHelper addObserver:observerCopy];
  }

  else
  {
    todayActivitySummary = [(ASDatabaseClient *)self todayActivitySummary];
    [observerCopy currentActivitySummaryHelper:0 didUpdateTodayActivitySummary:todayActivitySummary changedFields:-1];

    yesterdayActivitySummary = [(ASDatabaseClient *)self yesterdayActivitySummary];
    [observerCopy currentActivitySummaryHelper:0 didUpdateYesterdayActivitySummary:yesterdayActivitySummary changedFields:-1];

    observerQueue = self->_observerQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__ASDatabaseClient_addActivitySummaryObserver___block_invoke;
    v10[3] = &unk_278C4B250;
    v10[4] = self;
    v11 = observerCopy;
    dispatch_async(observerQueue, v10);
  }
}

- (void)removeActivitySummaryObserver:(id)observer
{
  observerCopy = observer;
  profile = self->_profile;
  if (profile)
  {
    currentActivitySummaryHelper = [(HDProfile *)profile currentActivitySummaryHelper];
    [currentActivitySummaryHelper removeObserver:observerCopy];
  }

  else
  {
    observerQueue = self->_observerQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__ASDatabaseClient_removeActivitySummaryObserver___block_invoke;
    v8[3] = &unk_278C4B250;
    v8[4] = self;
    v9 = observerCopy;
    dispatch_async(observerQueue, v8);
  }
}

- (void)_handleCurrentActivitySummary:(id)summary
{
  summaryCopy = summary;
  observerQueue = self->_observerQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ASDatabaseClient__handleCurrentActivitySummary___block_invoke;
  v7[3] = &unk_278C4B250;
  v7[4] = self;
  v8 = summaryCopy;
  v6 = summaryCopy;
  dispatch_async(observerQueue, v7);
}

void __50__ASDatabaseClient__handleCurrentActivitySummary___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(a1 + 32) + 80);
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

        [*(*(&v8 + 1) + 8 * v6++) currentActivitySummaryHelper:0 didUpdateTodayActivitySummary:*(a1 + 40) changedFields:{-1, v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_observerQueue_handleYesterdayActivitySummaryUpdate
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_observerQueue);
  yesterdayActivitySummary = [(ASDatabaseClient *)self yesterdayActivitySummary];
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = yesterdayActivitySummary;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Notifying observers of yesterday summary update: %@", buf, 0x16u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_activitySummaryObservers;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * v12++) currentActivitySummaryHelper:0 didUpdateYesterdayActivitySummary:yesterdayActivitySummary changedFields:{-1, v14}];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)healthKitWorkoutsWithPredicate:(id)predicate anchor:(id *)anchor error:(id *)error
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (self->_profile)
  {
    v8 = MEMORY[0x277D10980];
    v9 = MEMORY[0x277CCD720];
    predicateCopy = predicate;
    workoutType = [v9 workoutType];
    profile = self->_profile;
    healthDaemonPredicate = [predicateCopy healthDaemonPredicate];

    v14 = [v8 samplesWithType:workoutType profile:profile encodingOptions:0 predicate:healthDaemonPredicate limit:0 anchor:anchor error:error];
  }

  else
  {
    v15 = MEMORY[0x277CCD8D8];
    predicateCopy2 = predicate;
    workoutType = [v15 workoutType];
    v20[0] = workoutType;
    healthDaemonPredicate = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    healthKitPredicate = [predicateCopy2 healthKitPredicate];

    v14 = [ASDatabaseSampleEntity samplesOfTypes:healthDaemonPredicate predicate:healthKitPredicate healthStore:self->_healthStore anchor:anchor error:error];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)deletedHealthKitWorkoutsWithinLastNumberOfDays:(unint64_t)days maxBatchSize:(unint64_t)size anchor:(id *)anchor error:(id *)error
{
  v51[2] = *MEMORY[0x277D85DE8];
  if (self->_profile)
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    date = [MEMORY[0x277CBEAA8] date];
    v13 = [currentCalendar dateByAddingUnit:16 value:-days toDate:date options:0];

    v14 = [MEMORY[0x277D10B18] predicateWithProperty:*MEMORY[0x277D10408] greaterThanOrEqualToValue:v13];
    v15 = HDDataEntityPredicateForType();
    v16 = MEMORY[0x277D10B20];
    v51[0] = v14;
    v51[1] = v15;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v18 = [v16 predicateMatchingAllPredicates:v17];

    v19 = MEMORY[0x277D10848];
    workoutType = [MEMORY[0x277CCD720] workoutType];
    v21 = [v19 entityEnumeratorWithType:workoutType profile:self->_profile];

    [v21 setPredicate:v18];
    [v21 setAnchor:*anchor];
    [v21 setLimitCount:size];
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy_;
    v49 = __Block_byref_object_dispose_;
    v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    longValue = [*anchor longValue];
    v29[5] = &v39;
    v30 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __93__ASDatabaseClient_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_error___block_invoke_333;
    v29[3] = &unk_278C4B368;
    v29[4] = &v45;
    [v21 enumerateIncludingDeletedObjects:1 error:&v30 handler:v29];
    v22 = v30;
    *anchor = [MEMORY[0x277CCABB0] numberWithLongLong:v40[3]];
    v23 = v22;
    *error = v22;
    v24 = v46[5];

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy_;
    v49 = __Block_byref_object_dispose_;
    v50 = MEMORY[0x277CBEBF8];
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    longValue = __Block_byref_object_copy_;
    v43 = __Block_byref_object_dispose_;
    if (anchor)
    {
      v25 = *anchor;
    }

    else
    {
      v25 = 0;
    }

    v44 = v25;
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy_;
    v37 = __Block_byref_object_dispose_;
    v38 = 0;
    proxyProvider = self->_proxyProvider;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __93__ASDatabaseClient_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_error___block_invoke;
    v32[3] = &unk_278C4B318;
    v32[7] = days;
    v32[8] = size;
    v32[4] = &v39;
    v32[5] = &v45;
    v32[6] = &v33;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __93__ASDatabaseClient_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_error___block_invoke_3;
    v31[3] = &unk_278C4B340;
    v31[4] = self;
    v31[5] = &v33;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v32 errorHandler:v31];
    if (anchor)
    {
      *anchor = v40[5];
    }

    *error = v34[5];
    v24 = v46[5];
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __93__ASDatabaseClient_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_error___block_invoke(int8x16_t *a1, void *a2)
{
  v2 = a1[3].i64[1];
  v3 = a1[4].i64[0];
  v7[0] = MEMORY[0x277D85DD0];
  v4 = vextq_s8(a1[2], a1[2], 8uLL);
  v5 = *(*(a1[2].i64[0] + 8) + 40);
  v7[1] = 3221225472;
  v7[2] = __93__ASDatabaseClient_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_error___block_invoke_2;
  v7[3] = &unk_278C4B2F0;
  v8 = v4;
  v9 = a1[3].i64[0];
  return [a2 remote_deletedHealthKitWorkoutsWithinLastNumberOfDays:v2 maxBatchSize:v3 anchor:v5 completion:v7];
}

void __93__ASDatabaseClient_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_error___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1[4] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v17 = v7;

  v12 = *(a1[5] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v9;
}

void __93__ASDatabaseClient_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

uint64_t __93__ASDatabaseClient_deletedHealthKitWorkoutsWithinLastNumberOfDays_maxBatchSize_anchor_error___block_invoke_333(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:?];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 24);
    if (v7 <= a4)
    {
      v7 = a4;
    }

    *(v6 + 24) = v7;
  }

  return 1;
}

- (BOOL)enumerateActivitySharingSnapshotsWithPredicate:(id)predicate anchor:(id *)anchor error:(id *)error handler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_profile)
  {
    v11 = MEMORY[0x277D10700];
    predicateCopy = predicate;
    healthDaemonPredicate = [predicateCopy healthDaemonPredicate];

    v14 = [v11 enumerateSnapshotsWithPredicate:healthDaemonPredicate anchor:anchor profile:self->_profile error:error handler:handlerCopy];
  }

  else
  {
    v15 = MEMORY[0x277CCD8D8];
    predicateCopy2 = predicate;
    fitnessFriendActivitySnapshotType = [v15 fitnessFriendActivitySnapshotType];
    v25[0] = fitnessFriendActivitySnapshotType;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    healthKitPredicate = [predicateCopy2 healthKitPredicate];

    healthStore = self->_healthStore;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __88__ASDatabaseClient_enumerateActivitySharingSnapshotsWithPredicate_anchor_error_handler___block_invoke;
    v23[3] = &unk_278C4B390;
    v24 = handlerCopy;
    v14 = [ASDatabaseSampleEntity enumerateSamplesOfTypes:v18 predicate:healthKitPredicate healthStore:healthStore anchor:anchor error:error handler:v23];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)enumerateActivitySharingWorkoutsWithPredicate:(id)predicate anchor:(id *)anchor error:(id *)error handler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_profile)
  {
    v11 = MEMORY[0x277D10708];
    predicateCopy = predicate;
    healthDaemonPredicate = [predicateCopy healthDaemonPredicate];

    v14 = [v11 enumerateWorkoutsWithPredicate:healthDaemonPredicate anchor:anchor profile:self->_profile error:error handler:handlerCopy];
  }

  else
  {
    v15 = MEMORY[0x277CCD8D8];
    predicateCopy2 = predicate;
    fitnessFriendWorkoutType = [v15 fitnessFriendWorkoutType];
    v25[0] = fitnessFriendWorkoutType;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    healthKitPredicate = [predicateCopy2 healthKitPredicate];

    healthStore = self->_healthStore;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __87__ASDatabaseClient_enumerateActivitySharingWorkoutsWithPredicate_anchor_error_handler___block_invoke;
    v23[3] = &unk_278C4B3B8;
    v24 = handlerCopy;
    v14 = [ASDatabaseSampleEntity enumerateSamplesOfTypes:v18 predicate:healthKitPredicate healthStore:healthStore anchor:anchor error:error handler:v23];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)enumerateActivitySharingAchievementsWithPredicate:(id)predicate anchor:(id *)anchor error:(id *)error handler:(id)handler
{
  v25[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (self->_profile)
  {
    v11 = MEMORY[0x277D106F8];
    predicateCopy = predicate;
    healthDaemonPredicate = [predicateCopy healthDaemonPredicate];

    v14 = [v11 enumerateAchievementsWithPredicate:healthDaemonPredicate anchor:anchor profile:self->_profile error:error handler:handlerCopy];
  }

  else
  {
    v15 = MEMORY[0x277CCD8D8];
    predicateCopy2 = predicate;
    fitnessFriendAchievementType = [v15 fitnessFriendAchievementType];
    v25[0] = fitnessFriendAchievementType;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
    healthKitPredicate = [predicateCopy2 healthKitPredicate];

    healthStore = self->_healthStore;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __91__ASDatabaseClient_enumerateActivitySharingAchievementsWithPredicate_anchor_error_handler___block_invoke;
    v23[3] = &unk_278C4B3E0;
    v24 = handlerCopy;
    v14 = [ASDatabaseSampleEntity enumerateSamplesOfTypes:v18 predicate:healthKitPredicate healthStore:healthStore anchor:anchor error:error handler:v23];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)enumerateAllActivitySharingSamplesWithPredicate:(id)predicate error:(id *)error handler:(id)handler
{
  v22[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v9 = MEMORY[0x277CCD8D8];
  predicateCopy = predicate;
  fitnessFriendActivitySnapshotType = [v9 fitnessFriendActivitySnapshotType];
  v22[0] = fitnessFriendActivitySnapshotType;
  fitnessFriendWorkoutType = [MEMORY[0x277CCD8D8] fitnessFriendWorkoutType];
  v22[1] = fitnessFriendWorkoutType;
  fitnessFriendAchievementType = [MEMORY[0x277CCD8D8] fitnessFriendAchievementType];
  v22[2] = fitnessFriendAchievementType;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];

  healthKitPredicate = [predicateCopy healthKitPredicate];

  healthStore = self->_healthStore;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __82__ASDatabaseClient_enumerateAllActivitySharingSamplesWithPredicate_error_handler___block_invoke;
  v20[3] = &unk_278C4B408;
  v21 = handlerCopy;
  v17 = handlerCopy;
  LOBYTE(error) = [ASDatabaseSampleEntity enumerateSamplesOfTypes:v14 predicate:healthKitPredicate healthStore:healthStore anchor:0 error:error handler:v20];

  v18 = *MEMORY[0x277D85DE8];
  return error;
}

- (void)addSampleObserver:(id)observer sampleTypes:(id)types
{
  v36 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  typesCopy = types;
  v8 = typesCopy;
  if (self->_profile)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [typesCopy countByEnumeratingWithState:&v26 objects:v35 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          dataManager = [(HDProfile *)self->_profile dataManager];
          [dataManager addObserver:observerCopy forDataType:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v35 count:16];
      }

      while (v9);
    }
  }

  else
  {
    observerAnchoredObjectQueryMap = self->_observerAnchoredObjectQueryMap;
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(observerCopy, "hash")}];
    v16 = [(NSMutableDictionary *)observerAnchoredObjectQueryMap objectForKeyedSubscript:v15];

    [(HKHealthStore *)self->_healthStore stopQuery:v16];
    v17 = [v8 hk_map:&__block_literal_global];
    objc_initWeak(&location, self);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __50__ASDatabaseClient_addSampleObserver_sampleTypes___block_invoke_2;
    v30[3] = &unk_278C4B478;
    objc_copyWeak(&v33, &location);
    v18 = observerCopy;
    v31 = v18;
    v32 = v8;
    v19 = MEMORY[0x23EF0EB00](v30);
    v20 = objc_alloc(MEMORY[0x277CCCFF0]);
    latestAnchor = [MEMORY[0x277CCD840] latestAnchor];
    v22 = [v20 initWithQueryDescriptors:v17 anchor:latestAnchor limit:0 resultsHandler:v19];

    [v22 setUpdateHandler:v19];
    [(HKHealthStore *)self->_healthStore executeQuery:v22];
    v23 = self->_observerAnchoredObjectQueryMap;
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "hash")}];
    [(NSMutableDictionary *)v23 setObject:v22 forKeyedSubscript:v24];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __50__ASDatabaseClient_addSampleObserver_sampleTypes___block_invoke_2(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    ASLoggingInitialize();
    v16 = *MEMORY[0x277CE8FE8];
    if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
    {
      __50__ASDatabaseClient_addSampleObserver_sampleTypes___block_invoke_2_cold_1(a1, v16, v15);
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __50__ASDatabaseClient_addSampleObserver_sampleTypes___block_invoke_345;
    v25[3] = &unk_278C4B450;
    objc_copyWeak(&v28, a1 + 6);
    v26 = a1[4];
    v27 = a1[5];
    v17 = MEMORY[0x23EF0EB00](v25);
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    if (!WeakRetained)
    {

      objc_destroyWeak(&v28);
      goto LABEL_12;
    }

    v19 = WeakRetained;
    v20 = WeakRetained[4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__ASDatabaseClient_addSampleObserver_sampleTypes___block_invoke_346;
    block[3] = &unk_278C4B1B0;
    block[4] = WeakRetained;
    v24 = v17;
    v21 = v17;
    dispatch_async(v20, block);

    objc_destroyWeak(&v28);
  }

  if ([v13 count])
  {
    v22 = a1[4];
    if (objc_opt_respondsToSelector())
    {
      [a1[4] samplesOfTypesWereRemoved:v13 anchor:0];
    }
  }

  if ([v12 count])
  {
    [a1[4] samplesAdded:v12 anchor:&unk_2850F4FE8];
  }

LABEL_12:
}

void __50__ASDatabaseClient_addSampleObserver_sampleTypes___block_invoke_345(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = 138543874;
    v12 = v6;
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ retry create anchored object query; observer %{public}@ sampleTypes %{public}@", &v11, 0x20u);
  }

  v9 = objc_loadWeakRetained((a1 + 48));
  [v9 addSampleObserver:*(a1 + 32) sampleTypes:*(a1 + 40)];

  v10 = *MEMORY[0x277D85DE8];
}

void __50__ASDatabaseClient_addSampleObserver_sampleTypes___block_invoke_346(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 64);
  v2 = MEMORY[0x23EF0EB00](*(a1 + 40));
  [v1 addObject:v2];
}

- (void)removeSampleObserver:(id)observer sampleTypes:(id)types
{
  v26 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  typesCopy = types;
  v8 = typesCopy;
  if (self->_profile)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [typesCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          dataManager = [(HDProfile *)self->_profile dataManager];
          [dataManager removeObserver:observerCopy forDataType:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }
  }

  else
  {
    observerAnchoredObjectQueryMap = self->_observerAnchoredObjectQueryMap;
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(observerCopy, "hash")}];
    v17 = [(NSMutableDictionary *)observerAnchoredObjectQueryMap objectForKeyedSubscript:v16];

    [(HKHealthStore *)self->_healthStore stopQuery:v17];
    v18 = self->_observerAnchoredObjectQueryMap;
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(observerCopy, "hash")}];
    [(NSMutableDictionary *)v18 setObject:0 forKeyedSubscript:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)insertDataObjects:(id)objects error:(id *)error
{
  objectsCopy = objects;
  profile = self->_profile;
  if (profile)
  {
    dataManager = [(HDProfile *)profile dataManager];
    dataProvenanceManager = [(HDProfile *)self->_profile dataProvenanceManager];
    defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];
    v11 = [dataManager insertDataObjects:objectsCopy withProvenance:defaultLocalDataProvenance creationDate:1 skipInsertionFilter:error error:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x2020000000;
    v28 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    proxyProvider = self->_proxyProvider;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__ASDatabaseClient_insertDataObjects_error___block_invoke;
    v15[3] = &unk_278C4B4C8;
    v16 = objectsCopy;
    v17 = &v25;
    v18 = &v19;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__ASDatabaseClient_insertDataObjects_error___block_invoke_3;
    v14[3] = &unk_278C4B340;
    v14[4] = self;
    v14[5] = &v19;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v15 errorHandler:v14];
    *error = v20[5];
    v11 = *(v26 + 24);

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v25, 8);
  }

  return v11 & 1;
}

uint64_t __44__ASDatabaseClient_insertDataObjects_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ASDatabaseClient_insertDataObjects_error___block_invoke_2;
  v4[3] = &unk_278C4B4A0;
  v5 = *(a1 + 40);
  return [a2 remote_insertDataObjects:v2 completion:v4];
}

void __44__ASDatabaseClient_insertDataObjects_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)deleteDataObjectsOfType:(id)type predicate:(id)predicate limit:(unint64_t)limit deletedSampleCount:(unint64_t *)count notifyObservers:(BOOL)observers generateDeletedObjects:(BOOL)objects error:(id *)error
{
  objectsCopy = objects;
  observersCopy = observers;
  typeCopy = type;
  predicateCopy = predicate;
  v17 = predicateCopy;
  if (!self->_profile)
  {
    healthKitPredicate = [predicateCopy healthKitPredicate];
    v27 = [ASDatabaseSampleEntity deleteSamplesOfType:typeCopy predicate:healthKitPredicate healthStore:self->_healthStore deletedSampleCount:count error:error];
LABEL_11:

    goto LABEL_12;
  }

  v34 = objectsCopy;
  identifier = [typeCopy identifier];
  fitnessFriendAchievementType = [MEMORY[0x277CCD8D8] fitnessFriendAchievementType];
  identifier2 = [fitnessFriendAchievementType identifier];

  if (identifier == identifier2)
  {
    v29 = 0x277D106F8;
LABEL_10:
    v30 = *v29;
    v31 = objc_opt_class();
    healthKitPredicate = [(HDProfile *)self->_profile dataManager];
    healthDaemonPredicate = [v17 healthDaemonPredicate];
    v27 = [healthKitPredicate deleteDataObjectsOfClass:v31 predicate:healthDaemonPredicate limit:limit deletedSampleCount:count notifyObservers:observersCopy generateDeletedObjects:v34 recursiveDeleteAuthorizationBlock:0 error:error];

    goto LABEL_11;
  }

  identifier3 = [typeCopy identifier];
  fitnessFriendActivitySnapshotType = [MEMORY[0x277CCD8D8] fitnessFriendActivitySnapshotType];
  identifier4 = [fitnessFriendActivitySnapshotType identifier];

  if (identifier3 == identifier4)
  {
    v29 = 0x277D10700;
    goto LABEL_10;
  }

  identifier5 = [typeCopy identifier];
  fitnessFriendWorkoutType = [MEMORY[0x277CCD8D8] fitnessFriendWorkoutType];
  identifier6 = [fitnessFriendWorkoutType identifier];

  if (identifier5 == identifier6)
  {
    v29 = 0x277D10708;
    goto LABEL_10;
  }

  v27 = 0;
LABEL_12:

  return v27;
}

- (id)allCodableDatabaseCompetitionsWithError:(id *)error
{
  profile = self->_profile;
  if (profile)
  {
    v5 = [ASDatabaseCompetitionEntity allDatabaseCompetitionsWithProfile:profile withError:error];
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = MEMORY[0x277CBEBF8];
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy_;
    v14 = __Block_byref_object_dispose_;
    v15 = 0;
    proxyProvider = self->_proxyProvider;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__ASDatabaseClient_allCodableDatabaseCompetitionsWithError___block_invoke;
    v9[3] = &unk_278C4B518;
    v9[4] = &v16;
    v9[5] = &v10;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__ASDatabaseClient_allCodableDatabaseCompetitionsWithError___block_invoke_3;
    v8[3] = &unk_278C4B340;
    v8[4] = self;
    v8[5] = &v10;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v9 errorHandler:v8];
    *error = v11[5];
    v5 = v17[5];
    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
  }

  return v5;
}

uint64_t __60__ASDatabaseClient_allCodableDatabaseCompetitionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__ASDatabaseClient_allCodableDatabaseCompetitionsWithError___block_invoke_2;
  v3[3] = &unk_278C4B4F0;
  v4 = *(a1 + 32);
  return [a2 remote_allCodableDatabaseCompetitionsWithCompletion:v3];
}

void __60__ASDatabaseClient_allCodableDatabaseCompetitionsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __60__ASDatabaseClient_allCodableDatabaseCompetitionsWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)saveCodableDatabaseCompetitions:(id)competitions error:(id *)error
{
  competitionsCopy = competitions;
  v7 = competitionsCopy;
  profile = self->_profile;
  if (profile)
  {
    v9 = [ASDatabaseCompetitionEntity saveCompetitions:competitionsCopy profile:profile withError:error];
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    proxyProvider = self->_proxyProvider;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__ASDatabaseClient_saveCodableDatabaseCompetitions_error___block_invoke;
    v13[3] = &unk_278C4B4C8;
    v14 = competitionsCopy;
    v15 = &v23;
    v16 = &v17;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__ASDatabaseClient_saveCodableDatabaseCompetitions_error___block_invoke_3;
    v12[3] = &unk_278C4B340;
    v12[4] = self;
    v12[5] = &v17;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v13 errorHandler:v12];
    *error = v18[5];
    v9 = *(v24 + 24);

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v9 & 1;
}

uint64_t __58__ASDatabaseClient_saveCodableDatabaseCompetitions_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__ASDatabaseClient_saveCodableDatabaseCompetitions_error___block_invoke_2;
  v4[3] = &unk_278C4B4A0;
  v5 = *(a1 + 40);
  return [a2 remote_saveCodableDatabaseCompetitions:v2 completion:v4];
}

void __58__ASDatabaseClient_saveCodableDatabaseCompetitions_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)removeCodableDatabaseCompetitionsWithFriendUUID:(id)d type:(int64_t)type error:(id *)error
{
  dCopy = d;
  v9 = dCopy;
  profile = self->_profile;
  if (profile)
  {
    v11 = [ASDatabaseCompetitionEntity removeCompetitionsForFriendUUID:dCopy type:type profile:profile withError:error];
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    proxyProvider = self->_proxyProvider;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __79__ASDatabaseClient_removeCodableDatabaseCompetitionsWithFriendUUID_type_error___block_invoke;
    v15[3] = &unk_278C4B540;
    v16 = dCopy;
    v17 = &v26;
    v18 = &v20;
    typeCopy = type;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __79__ASDatabaseClient_removeCodableDatabaseCompetitionsWithFriendUUID_type_error___block_invoke_3;
    v14[3] = &unk_278C4B340;
    v14[4] = self;
    v14[5] = &v20;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v15 errorHandler:v14];
    *error = v21[5];
    v11 = *(v27 + 24);

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  return v11 & 1;
}

uint64_t __79__ASDatabaseClient_removeCodableDatabaseCompetitionsWithFriendUUID_type_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__ASDatabaseClient_removeCodableDatabaseCompetitionsWithFriendUUID_type_error___block_invoke_2;
  v5[3] = &unk_278C4B4A0;
  v6 = *(a1 + 40);
  return [a2 remote_removeCodableDatabaseCompetitionsWithFriendUUID:v2 type:v3 completion:v5];
}

void __79__ASDatabaseClient_removeCodableDatabaseCompetitionsWithFriendUUID_type_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)removeAllCodableDatabaseCompetitionsWithError:(id *)error
{
  if (self->_profile)
  {

    return [ASDatabaseCompetitionEntity removeAllCompetitionsWithProfile:"removeAllCompetitionsWithProfile:error:" error:?];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    proxyProvider = self->_proxyProvider;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__ASDatabaseClient_removeAllCodableDatabaseCompetitionsWithError___block_invoke;
    v8[3] = &unk_278C4B518;
    v8[4] = &v15;
    v8[5] = &v9;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __66__ASDatabaseClient_removeAllCodableDatabaseCompetitionsWithError___block_invoke_3;
    v7[3] = &unk_278C4B340;
    v7[4] = self;
    v7[5] = &v9;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v8 errorHandler:v7];
    *error = v10[5];
    v6 = *(v16 + 24);
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v15, 8);
    return v6;
  }
}

uint64_t __66__ASDatabaseClient_removeAllCodableDatabaseCompetitionsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__ASDatabaseClient_removeAllCodableDatabaseCompetitionsWithError___block_invoke_2;
  v3[3] = &unk_278C4B4A0;
  v4 = *(a1 + 32);
  return [a2 remote_removeAllCodableDatabaseCompetitionsWithCompletion:v3];
}

void __66__ASDatabaseClient_removeAllCodableDatabaseCompetitionsWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)performDatabaseCompetitionWriteTransactionBlock:(id)block error:(id *)error
{
  blockCopy = block;
  profile = self->_profile;
  if (profile)
  {
    database = [(HDProfile *)profile database];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__ASDatabaseClient_performDatabaseCompetitionWriteTransactionBlock_error___block_invoke;
    v13[3] = &unk_278C4B568;
    v14 = blockCopy;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __74__ASDatabaseClient_performDatabaseCompetitionWriteTransactionBlock_error___block_invoke_2;
    v11[3] = &unk_278C4B590;
    v12 = v14;
    v9 = [(HDHealthEntity *)ASDatabaseCompetitionEntity performWriteTransactionWithHealthDatabase:database error:error block:v13 inaccessibilityHandler:v11];
  }

  else
  {
    v9 = (*(blockCopy + 2))(blockCopy, error);
  }

  return v9;
}

- (id)allCodableDatabaseCompetitionListEntriesWithError:(id *)error
{
  if (self->_profile)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    profile = self->_profile;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__ASDatabaseClient_allCodableDatabaseCompetitionListEntriesWithError___block_invoke_359;
    v11[3] = &unk_278C4B5B8;
    v7 = v5;
    v12 = v7;
    [ASDatabaseCompetitionListEntryEntity enumerateAllCompetitionListsWithProfile:profile error:error handler:v11];
    v8 = v12;
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy_;
    v25 = __Block_byref_object_dispose_;
    v26 = MEMORY[0x277CBEBF8];
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy_;
    v19 = __Block_byref_object_dispose_;
    v20 = 0;
    proxyProvider = self->_proxyProvider;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__ASDatabaseClient_allCodableDatabaseCompetitionListEntriesWithError___block_invoke;
    v14[3] = &unk_278C4B518;
    v14[4] = &v21;
    v14[5] = &v15;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__ASDatabaseClient_allCodableDatabaseCompetitionListEntriesWithError___block_invoke_3;
    v13[3] = &unk_278C4B340;
    v13[4] = self;
    v13[5] = &v15;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v14 errorHandler:v13];
    *error = v16[5];
    v7 = v22[5];
    _Block_object_dispose(&v15, 8);

    _Block_object_dispose(&v21, 8);
    v8 = v26;
  }

  return v7;
}

uint64_t __70__ASDatabaseClient_allCodableDatabaseCompetitionListEntriesWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__ASDatabaseClient_allCodableDatabaseCompetitionListEntriesWithError___block_invoke_2;
  v3[3] = &unk_278C4B4F0;
  v4 = *(a1 + 32);
  return [a2 remote_allCodableDatabaseCompetitionListEntriesWithCompletion:v3];
}

void __70__ASDatabaseClient_allCodableDatabaseCompetitionListEntriesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __70__ASDatabaseClient_allCodableDatabaseCompetitionListEntriesWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)saveCodableDatabaseCompetitionListEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  v7 = entryCopy;
  profile = self->_profile;
  if (profile)
  {
    v9 = [ASDatabaseCompetitionListEntryEntity saveCompetitionList:entryCopy profile:profile withError:error];
  }

  else
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy_;
    v21 = __Block_byref_object_dispose_;
    v22 = 0;
    proxyProvider = self->_proxyProvider;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__ASDatabaseClient_saveCodableDatabaseCompetitionListEntry_error___block_invoke;
    v13[3] = &unk_278C4B4C8;
    v14 = entryCopy;
    v15 = &v23;
    v16 = &v17;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__ASDatabaseClient_saveCodableDatabaseCompetitionListEntry_error___block_invoke_3;
    v12[3] = &unk_278C4B340;
    v12[4] = self;
    v12[5] = &v17;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v13 errorHandler:v12];
    *error = v18[5];
    v9 = *(v24 + 24);

    _Block_object_dispose(&v17, 8);
    _Block_object_dispose(&v23, 8);
  }

  return v9 & 1;
}

uint64_t __66__ASDatabaseClient_saveCodableDatabaseCompetitionListEntry_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__ASDatabaseClient_saveCodableDatabaseCompetitionListEntry_error___block_invoke_2;
  v4[3] = &unk_278C4B4A0;
  v5 = *(a1 + 40);
  return [a2 remote_saveCodableDatabaseCompetitionListEntry:v2 completion:v4];
}

void __66__ASDatabaseClient_saveCodableDatabaseCompetitionListEntry_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (BOOL)removeAllCodableDatabaseCompetitionListsWithError:(id *)error
{
  if (self->_profile)
  {

    return [ASDatabaseCompetitionListEntryEntity removeAllCompetitionListsWithProfile:"removeAllCompetitionListsWithProfile:error:" error:?];
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy_;
    v13 = __Block_byref_object_dispose_;
    v14 = 0;
    proxyProvider = self->_proxyProvider;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__ASDatabaseClient_removeAllCodableDatabaseCompetitionListsWithError___block_invoke;
    v8[3] = &unk_278C4B518;
    v8[4] = &v15;
    v8[5] = &v9;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __70__ASDatabaseClient_removeAllCodableDatabaseCompetitionListsWithError___block_invoke_3;
    v7[3] = &unk_278C4B340;
    v7[4] = self;
    v7[5] = &v9;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v8 errorHandler:v7];
    *error = v10[5];
    v6 = *(v16 + 24);
    _Block_object_dispose(&v9, 8);

    _Block_object_dispose(&v15, 8);
    return v6;
  }
}

uint64_t __70__ASDatabaseClient_removeAllCodableDatabaseCompetitionListsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __70__ASDatabaseClient_removeAllCodableDatabaseCompetitionListsWithError___block_invoke_2;
  v3[3] = &unk_278C4B4A0;
  v4 = *(a1 + 32);
  return [a2 remote_removeAllCodableDatabaseCompetitionListsWithCompletion:v3];
}

void __70__ASDatabaseClient_removeAllCodableDatabaseCompetitionListsWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)localSourceUUIDWithError:(id *)error
{
  profile = self->_profile;
  if (profile)
  {
    sourceManager = [(HDProfile *)profile sourceManager];
    v7 = [sourceManager localDeviceSourceWithError:error];

    v8 = [v7 sourceUUIDWithProfile:self->_profile error:error];
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy_;
    v23 = __Block_byref_object_dispose_;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    proxyProvider = self->_proxyProvider;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__ASDatabaseClient_localSourceUUIDWithError___block_invoke;
    v12[3] = &unk_278C4B518;
    v12[4] = &v19;
    v12[5] = &v13;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__ASDatabaseClient_localSourceUUIDWithError___block_invoke_3;
    v11[3] = &unk_278C4B340;
    v11[4] = self;
    v11[5] = &v13;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v12 errorHandler:v11];
    *error = v14[5];
    v8 = v20[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(&v19, 8);
  }

  return v8;
}

uint64_t __45__ASDatabaseClient_localSourceUUIDWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__ASDatabaseClient_localSourceUUIDWithError___block_invoke_2;
  v3[3] = &unk_278C4B5E0;
  v4 = *(a1 + 32);
  return [a2 remote_localSourceUUIDWithCompletion:v3];
}

void __45__ASDatabaseClient_localSourceUUIDWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __45__ASDatabaseClient_localSourceUUIDWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)activeDeviceUUIDWithError:(id *)error
{
  profile = self->_profile;
  if (profile)
  {
    nanoSyncManager = [(HDProfile *)profile nanoSyncManager];
    pairedDevicesSnapshot = [nanoSyncManager pairedDevicesSnapshot];
    activeDeviceInfo = [pairedDevicesSnapshot activeDeviceInfo];
    sourceBundleIdentifier = [activeDeviceInfo sourceBundleIdentifier];

    sourceManager = [(HDProfile *)self->_profile sourceManager];
    v11 = [sourceManager sourceUUIDForBundleIdentifier:sourceBundleIdentifier error:error];
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy_;
    v26 = __Block_byref_object_dispose_;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    proxyProvider = self->_proxyProvider;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__ASDatabaseClient_activeDeviceUUIDWithError___block_invoke;
    v15[3] = &unk_278C4B518;
    v15[4] = &v22;
    v15[5] = &v16;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__ASDatabaseClient_activeDeviceUUIDWithError___block_invoke_3;
    v14[3] = &unk_278C4B340;
    v14[4] = self;
    v14[5] = &v16;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v15 errorHandler:v14];
    *error = v17[5];
    v11 = v23[5];
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v22, 8);
  }

  return v11;
}

uint64_t __46__ASDatabaseClient_activeDeviceUUIDWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__ASDatabaseClient_activeDeviceUUIDWithError___block_invoke_2;
  v3[3] = &unk_278C4B5E0;
  v4 = *(a1 + 32);
  return [a2 remote_activeDeviceUUIDWithCompletion:v3];
}

void __46__ASDatabaseClient_activeDeviceUUIDWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __46__ASDatabaseClient_activeDeviceUUIDWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)isActivityAlertSuppressionEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  profile = self->_profile;
  if (profile)
  {
    daemon = [(HDProfile *)profile daemon];
    alertSuppressionService = [daemon alertSuppressionService];
    [alertSuppressionService fetchActivityAlertSuppressionStateWithCompletion:completionCopy];
  }

  else
  {
    proxyProvider = self->_proxyProvider;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__ASDatabaseClient_isActivityAlertSuppressionEnabledWithCompletion___block_invoke;
    v10[3] = &unk_278C4B160;
    v11 = completionCopy;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __68__ASDatabaseClient_isActivityAlertSuppressionEnabledWithCompletion___block_invoke_2;
    v9[3] = &unk_278C4B188;
    v9[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v10 errorHandler:v9];
  }
}

void __68__ASDatabaseClient_isActivityAlertSuppressionEnabledWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

- (void)addNanoAlertSuppressionObserver:(id)observer
{
  observerCopy = observer;
  profile = self->_profile;
  if (profile)
  {
    daemon = [(HDProfile *)profile daemon];
    alertSuppressionService = [daemon alertSuppressionService];
    [alertSuppressionService registerAlertSuppressionObserver:observerCopy];
  }

  else
  {
    observerQueue = self->_observerQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__ASDatabaseClient_addNanoAlertSuppressionObserver___block_invoke;
    v9[3] = &unk_278C4B250;
    v9[4] = self;
    v10 = observerCopy;
    dispatch_async(observerQueue, v9);
  }
}

- (void)removeNanoAlertSuppressionObserver:(id)observer
{
  observerCopy = observer;
  profile = self->_profile;
  if (profile)
  {
    daemon = [(HDProfile *)profile daemon];
    alertSuppressionService = [daemon alertSuppressionService];
    [alertSuppressionService unregisterAlertSuppressionObserver:observerCopy];
  }

  else
  {
    observerQueue = self->_observerQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__ASDatabaseClient_removeNanoAlertSuppressionObserver___block_invoke;
    v9[3] = &unk_278C4B250;
    v9[4] = self;
    v10 = observerCopy;
    dispatch_async(observerQueue, v9);
  }
}

- (void)_handleNanoAlertSuppressionInvalidatedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D09608]];

  userInfo2 = [notificationCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277D09600]];
  intValue = [v8 intValue];

  observerQueue = self->_observerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ASDatabaseClient__handleNanoAlertSuppressionInvalidatedNotification___block_invoke;
  block[3] = &unk_278C4B608;
  block[4] = self;
  v13 = v6;
  v14 = intValue;
  v11 = v6;
  dispatch_async(observerQueue, block);
}

void __71__ASDatabaseClient__handleNanoAlertSuppressionInvalidatedNotification___block_invoke(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 104);
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

        [*(*(&v8 + 1) + 8 * v6++) alertSuppressionInvalidatedForSuppressionId:a1[5] reason:{a1[6], v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)registerFitnessAppBadgeProvider
{
  if (self->_profile)
  {
    v4 = CHProfileExtensionForProfile();
    [v4 registerFitnessAppBadgeCountProvider:self];
  }

  else
  {
    proxyProvider = self->_proxyProvider;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __51__ASDatabaseClient_registerFitnessAppBadgeProvider__block_invoke_2;
    v5[3] = &unk_278C4B188;
    v5[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:&__block_literal_global_363 errorHandler:v5];
  }
}

void __51__ASDatabaseClient_registerFitnessAppBadgeProvider__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

- (void)updateFitnessAppBadgeCount:(unint64_t)count
{
  if (self->_profile)
  {
    self->_fitnessAppBadgeCount = count;
    v4 = CHProfileExtensionForProfile();
    [v4 requestFitnessAppBadgeCountUpdate];
  }

  else
  {
    proxyProvider = self->_proxyProvider;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__ASDatabaseClient_updateFitnessAppBadgeCount___block_invoke;
    v6[3] = &__block_descriptor_40_e37_v16__0___ASDatabaseServerInterface__8l;
    v6[4] = count;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__ASDatabaseClient_updateFitnessAppBadgeCount___block_invoke_2;
    v5[3] = &unk_278C4B188;
    v5[4] = self;
    [(HKProxyProvider *)proxyProvider getSynchronousProxyWithHandler:v6 errorHandler:v5];
  }
}

void __47__ASDatabaseClient_updateFitnessAppBadgeCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE8];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE8], OS_LOG_TYPE_ERROR))
  {
    __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(a1, v4);
  }
}

- (id)makeASKeyValueDomainWithDomainName:(id)name category:(int64_t)category
{
  if (self->_profile)
  {
    v5 = [objc_alloc(MEMORY[0x277D10718]) initWithCategory:category == 4 domainName:name profile:self->_profile];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCD570]) initWithCategory:category domainName:name healthStore:self->_healthStore];
  }

  v6 = v5;

  return v6;
}

- (void)daemonReady:(id)ready
{
  v23 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FE0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FE0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138412546;
    v20 = v7;
    v21 = 2080;
    v22 = "[ASDatabaseClient daemonReady:]";
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "%@ received %s", buf, 0x16u);
  }

  self->_isDaemonReady = 1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_queue_performWhenDaemonReadyBlocks;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  [(NSMutableArray *)self->_queue_performWhenDaemonReadyBlocks removeAllObjects];
  v13 = *MEMORY[0x277D85DE8];
}

void __43__ASDatabaseClient_performWhenDaemonReady___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2(a1, a2);
  v4 = OUTLINED_FUNCTION_3();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23E5E3000, v6, v7, "%{public}@ failed to get proxy: %{public}@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __50__ASDatabaseClient_addSampleObserver_sampleTypes___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = 138544130;
  v13 = v8;
  v14 = 2114;
  v15 = v9;
  v16 = 2114;
  v17 = v10;
  v18 = 2114;
  v19 = a3;
  _os_log_error_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_ERROR, "%{public}@ failed to create anchored object query; observer %{public}@ sampleTypes %{public}@ error %{public}@", &v12, 0x2Au);

  v11 = *MEMORY[0x277D85DE8];
}

@end