@interface ACHAchievementStore
- (ACHAchievementStore)initWithClient:(id)a3 templateStore:(id)a4 earnedInstanceStore:(id)a5 templateAssetRegistry:(id)a6 progressEngine:(id)a7;
- (BOOL)_initialFetchComplete;
- (id)_lock_ephemeralMonthlyChallengeAchievementForTemplateUniqueName:(id)a3 earnedInstance:(id)a4;
- (id)_lock_populateMostRecentEarnedInstanceAndCountForAllAchievements;
- (id)_lock_populateMostRecentEarnedInstancesAndCountsForAchievements:(id)a3;
- (id)achievementWithTemplateUniqueName:(id)a3;
- (id)achievementsForDateInterval:(id)a3;
- (id)achievementsForEarnedDateComponents:(id)a3;
- (id)achievementsForTemplateNames:(id)a3;
- (id)allAchievements;
- (id)anniversaryAchievementsForDateComponents:(id)a3 templateUniqueNames:(id)a4;
- (id)ephemeralAchievementWithTemplateUniqueName:(id)a3;
- (id)monthlyChallengeAchievementForDateComponents:(id)a3;
- (void)_handleProtectedDataAvailabilityChangeNotification;
- (void)_lock_addProgressAndGoalToAchievements:(id)a3;
- (void)_lock_addTemplatesToLocalStore:(id)a3;
- (void)_lock_notifyObserversOfInitialFetchCompletion;
- (void)_lock_populatePrerequisiteMet:(id)a3;
- (void)_lock_populatePrerequisiteMetForAchievements:(id)a3;
- (void)_lock_populatePrerequisiteMetForAllAchievements;
- (void)_lock_populateResourcesForAchievementsWithTemplateSourceName:(id)a3;
- (void)_lock_removeTemplatesFromLocalStore:(id)a3;
- (void)_notifyObserversOfNewAchievements:(id)a3;
- (void)_notifyObserversOfRemovedAchievements:(id)a3;
- (void)_notifyObserversOfUpdatedAchievements:(id)a3;
- (void)_performWithLock:(id)a3;
- (void)_updateProgressAndGoalFor:(id)a3 progressQuantity:(id)a4 goalQuantity:(id)a5;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)earnedInstanceStore:(id)a3 didAddNewEarnedInstances:(id)a4;
- (void)earnedInstanceStore:(id)a3 didRemoveEarnedInstances:(id)a4;
- (void)earnedInstanceStoreDidReceiveSyncNotification:(id)a3;
- (void)loadAllAchievementsFromDatabaseIfNecessaryWithCompletionHandler:(id)a3;
- (void)processAchievementProgressUpdates:(id)a3;
- (void)recalculateProgressForAllAchievements;
- (void)removeObserver:(id)a3;
- (void)requestUpdateProgressValuesForProgressProvider:(id)a3;
- (void)templateAssetRegistry:(id)a3 didUpdateResourcesForTemplatesWithSourceName:(id)a4;
- (void)templateStore:(id)a3 didAddNewTemplates:(id)a4;
- (void)templateStore:(id)a3 didRemoveTemplates:(id)a4;
- (void)templateStoreDidFinishInitialFetch:(id)a3;
@end

@implementation ACHAchievementStore

- (void)recalculateProgressForAllAchievements
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __60__ACHAchievementStore_recalculateProgressForAllAchievements__block_invoke;
  v2[3] = &unk_278490870;
  v2[4] = self;
  [(ACHAchievementStore *)self _performWithLock:v2];
}

void __60__ACHAchievementStore_recalculateProgressForAllAchievements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) achievementsByTemplateUniqueName];
  v5 = [v2 allValues];

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEB98] setWithArray:v5];
  [v3 _lock_addProgressAndGoalToAchievements:v4];
}

- (id)allAchievements
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__23;
  v9 = __Block_byref_object_dispose__23;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__ACHAchievementStore_allAchievements__block_invoke;
  v4[3] = &unk_278490FE8;
  v4[4] = self;
  v4[5] = &v5;
  [(ACHAchievementStore *)self _performWithLock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __38__ACHAchievementStore_allAchievements__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CBEB98];
  v7 = [*(a1 + 32) achievementsByTemplateUniqueName];
  v3 = [v7 allValues];
  v4 = [v2 setWithArray:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (ACHAchievementStore)initWithClient:(id)a3 templateStore:(id)a4 earnedInstanceStore:(id)a5 templateAssetRegistry:(id)a6 progressEngine:(id)a7
{
  v34 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v38.receiver = self;
  v38.super_class = ACHAchievementStore;
  v17 = [(ACHAchievementStore *)&v38 init];
  v18 = v17;
  if (v17)
  {
    v17->_syncLock._os_unfair_lock_opaque = 0;
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    initialFetchObserversToCall = v18->_initialFetchObserversToCall;
    v18->_initialFetchObserversToCall = v19;

    objc_storeStrong(&v18->_client, a3);
    objc_storeStrong(&v18->_templateStore, a4);
    objc_storeStrong(&v18->_earnedInstanceStore, a5);
    objc_storeStrong(&v18->_templateAssetRegistry, a6);
    objc_storeStrong(&v18->_progressEngine, a7);
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    achievementsByTemplateUniqueName = v18->_achievementsByTemplateUniqueName;
    v18->_achievementsByTemplateUniqueName = v21;

    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    achievementsByPrerequisiteTemplateName = v18->_achievementsByPrerequisiteTemplateName;
    v18->_achievementsByPrerequisiteTemplateName = v23;

    [(ACHTemplateAssetRegistry *)v18->_templateAssetRegistry setDelegate:v18];
    v25 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v18->_observers;
    v18->_observers = v25;

    v27 = HKCreateSerialDispatchQueue();
    notificationQueue = v18->_notificationQueue;
    v18->_notificationQueue = v27;

    v29 = HKCreateSerialDispatchQueue();
    internalQueue = v18->_internalQueue;
    v18->_internalQueue = v29;

    objc_initWeak(&location, v18);
    v31 = [*MEMORY[0x277CE8C10] UTF8String];
    v32 = v18->_internalQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __109__ACHAchievementStore_initWithClient_templateStore_earnedInstanceStore_templateAssetRegistry_progressEngine___block_invoke;
    handler[3] = &unk_2784907F8;
    objc_copyWeak(&v36, &location);
    notify_register_dispatch(v31, &v18->_protectedDataToken, v32, handler);
    [v13 addObserver:v18];
    [v14 addObserver:v18];
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  return v18;
}

void __109__ACHAchievementStore_initWithClient_templateStore_earnedInstanceStore_templateAssetRegistry_progressEngine___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleProtectedDataAvailabilityChangeNotification];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  v3.receiver = self;
  v3.super_class = ACHAchievementStore;
  [(ACHAchievementStore *)&v3 dealloc];
}

- (void)_handleProtectedDataAvailabilityChangeNotification
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __73__ACHAchievementStore__handleProtectedDataAvailabilityChangeNotification__block_invoke;
  v2[3] = &unk_278490870;
  v2[4] = self;
  [(ACHAchievementStore *)self _performWithLock:v2];
}

void __73__ACHAchievementStore__handleProtectedDataAvailabilityChangeNotification__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) client];
  v3 = [v2 isProtectedDataAvailable];

  v4 = ACHLogTemplates();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = v3;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Achievement store received notification of a change in protected data availability: %d", v9, 8u);
  }

  if (v3 && [*(a1 + 32) needsUpdateWhenProtectedDataAvailable])
  {
    [*(a1 + 32) setNeedsUpdateWhenProtectedDataAvailable:0];
    v5 = [*(a1 + 32) _lock_populateMostRecentEarnedInstanceAndCountForAllAchievements];
    [*(a1 + 32) _lock_populatePrerequisiteMetForAllAchievements];
    if ([v5 count])
    {
      v6 = *(a1 + 32);
      v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v5];
      [v6 _notifyObserversOfUpdatedAchievements:v7];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_performWithLock:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_syncLock);
  v4 = objc_autoreleasePoolPush();
  v5[2]();
  objc_autoreleasePoolPop(v4);
  os_unfair_lock_unlock(&self->_syncLock);
}

- (void)loadAllAchievementsFromDatabaseIfNecessaryWithCompletionHandler:(id)a3
{
  v7 = a3;
  v4 = [(ACHAchievementStore *)self templateStore];
  v5 = [v4 loadAllTemplatesFromDatabaseIfNecessary];

  v6 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v5);
    v6 = v7;
  }
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACHAchievementStore *)self notificationQueue];
  dispatch_assert_queue_not_V2(v5);

  if ([v4 conformsToProtocol:&unk_28356A0E8])
  {
    v6 = [(ACHAchievementStore *)self notificationQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__ACHAchievementStore_addObserver___block_invoke;
    v8[3] = &unk_278490898;
    v8[4] = self;
    v9 = v4;
    dispatch_sync(v6, v8);
  }

  else
  {
    v7 = ACHLogDefault();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ACHAchievementStore *)v4 addObserver:v7];
    }
  }
}

void __35__ACHAchievementStore_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];

  if ([*(a1 + 32) _initialFetchComplete])
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);

    [v3 achievementStoreDidFinishInitialFetch:v4];
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__ACHAchievementStore_addObserver___block_invoke_2;
    v6[3] = &unk_278490898;
    v6[4] = v5;
    v7 = *(a1 + 40);
    [v5 _performWithLock:v6];
  }
}

- (BOOL)_initialFetchComplete
{
  v2 = self;
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__ACHAchievementStore__initialFetchComplete__block_invoke;
  v4[3] = &unk_278490FE8;
  v4[4] = v2;
  v4[5] = &v5;
  [(ACHAchievementStore *)v2 _performWithLock:v4];
  LOBYTE(v2) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __44__ACHAchievementStore__initialFetchComplete__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) templateStoreFinishedInitialFetch];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(ACHAchievementStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__ACHAchievementStore_removeObserver___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __38__ACHAchievementStore_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  v3 = [v2 containsObject:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) observers];
    [v4 removeObject:*(a1 + 40)];

    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __38__ACHAchievementStore_removeObserver___block_invoke_2;
    v6[3] = &unk_278490898;
    v6[4] = v5;
    v7 = *(a1 + 40);
    [v5 _performWithLock:v6];
  }
}

- (id)achievementsForEarnedDateComponents:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ACHAchievementStore_achievementsForEarnedDateComponents___block_invoke;
  v8[3] = &unk_2784908E0;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(ACHAchievementStore *)self _performWithLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __59__ACHAchievementStore_achievementsForEarnedDateComponents___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) earnedInstanceStore];
  v3 = [v2 earnedInstancesForEarnedDateComponents:*(a1 + 40) error:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ACHAchievementStore_achievementsForEarnedDateComponents___block_invoke_2;
  v8[3] = &unk_2784921B0;
  v8[4] = *(a1 + 32);
  v4 = [v3 hk_map:v8];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __59__ACHAchievementStore_achievementsForEarnedDateComponents___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 achievementsByTemplateUniqueName];
  v5 = [v3 templateUniqueName];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 shallowCopyWithRelevantEarnedInstance:v3];

  return v7;
}

- (id)achievementsForDateInterval:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__23;
  v15 = __Block_byref_object_dispose__23;
  v16 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ACHAchievementStore_achievementsForDateInterval___block_invoke;
  v8[3] = &unk_2784908E0;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [(ACHAchievementStore *)self _performWithLock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __51__ACHAchievementStore_achievementsForDateInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) earnedInstanceStore];
  v3 = [v2 earnedInstancesForDateInterval:*(a1 + 40) error:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__ACHAchievementStore_achievementsForDateInterval___block_invoke_2;
  v8[3] = &unk_2784921B0;
  v8[4] = *(a1 + 32);
  v4 = [v3 hk_map:v8];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __51__ACHAchievementStore_achievementsForDateInterval___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 achievementsByTemplateUniqueName];
  v5 = [v3 templateUniqueName];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 shallowCopyWithRelevantEarnedInstance:v3];

  return v7;
}

- (id)anniversaryAchievementsForDateComponents:(id)a3 templateUniqueNames:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__23;
  v20 = __Block_byref_object_dispose__23;
  v21 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__ACHAchievementStore_anniversaryAchievementsForDateComponents_templateUniqueNames___block_invoke;
  v12[3] = &unk_2784921D8;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  [(ACHAchievementStore *)self _performWithLock:v12];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __84__ACHAchievementStore_anniversaryAchievementsForDateComponents_templateUniqueNames___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) earnedInstanceStore];
  v3 = [v2 earnedInstancesForAnniversaryWithDateComponents:*(a1 + 40) templateUnqiueNames:*(a1 + 48) error:0];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__ACHAchievementStore_anniversaryAchievementsForDateComponents_templateUniqueNames___block_invoke_2;
  v8[3] = &unk_2784921B0;
  v8[4] = *(a1 + 32);
  v4 = [v3 hk_map:v8];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v4];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

id __84__ACHAchievementStore_anniversaryAchievementsForDateComponents_templateUniqueNames___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 achievementsByTemplateUniqueName];
  v5 = [v3 templateUniqueName];
  v6 = [v4 objectForKeyedSubscript:v5];

  v7 = [v6 shallowCopyWithRelevantEarnedInstance:v3];

  return v7;
}

- (id)achievementsForTemplateNames:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__23;
  v16 = __Block_byref_object_dispose__23;
  v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ACHAchievementStore_achievementsForTemplateNames___block_invoke;
  v8[3] = &unk_2784908E0;
  v5 = v4;
  v9 = v5;
  v10 = self;
  v11 = &v12;
  [(ACHAchievementStore *)self _performWithLock:v8];
  v6 = [v13[5] copy];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __52__ACHAchievementStore_achievementsForTemplateNames___block_invoke(void *a1)
{
  v2 = a1[4];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__ACHAchievementStore_achievementsForTemplateNames___block_invoke_2;
  v4[3] = &unk_278492200;
  v4[4] = a1[5];
  v3 = [v2 hk_map:v4];
  [*(*(a1[6] + 8) + 40) addObjectsFromArray:v3];
}

id __52__ACHAchievementStore_achievementsForTemplateNames___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 achievementsByTemplateUniqueName];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

- (id)ephemeralAchievementWithTemplateUniqueName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__23;
    v16 = __Block_byref_object_dispose__23;
    v17 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __66__ACHAchievementStore_ephemeralAchievementWithTemplateUniqueName___block_invoke;
    v8[3] = &unk_278492228;
    v10 = self;
    v11 = &v12;
    v9 = v4;
    [(ACHAchievementStore *)self _performWithLock:v8];
    v6 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __66__ACHAchievementStore_ephemeralAchievementWithTemplateUniqueName___block_invoke(void *a1)
{
  v18 = objc_alloc_init(MEMORY[0x277CE8D38]);
  [v18 setTemplateUniqueName:a1[4]];
  v2 = [MEMORY[0x277CBEA80] currentCalendar];
  v3 = *MEMORY[0x277CE8B28];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 components:v3 fromDate:v4];
  [v18 setEarnedDateComponents:v5];

  v6 = a1[4];
  IsMonthlyChallenge = ACHTemplateUniqueNameIsMonthlyChallenge();
  v8 = a1[5];
  if (IsMonthlyChallenge)
  {
    v9 = [v8 _lock_ephemeralMonthlyChallengeAchievementForTemplateUniqueName:a1[4] earnedInstance:v18];
    v10 = a1 + 6;
  }

  else
  {
    v11 = [v8 achievementsByTemplateUniqueName];
    v12 = [v11 objectForKeyedSubscript:a1[4]];
    v13 = a1[6];
    v10 = a1 + 6;
    v14 = *(v13 + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v12;

    v9 = [*(*(*v10 + 8) + 40) shallowCopyWithRelevantEarnedInstance:v18];
  }

  v16 = *(*v10 + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v9;
}

- (id)monthlyChallengeAchievementForDateComponents:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04ld_%02ld", objc_msgSend(v4, "year"), objc_msgSend(v4, "month")];
  v6 = objc_alloc_init(MEMORY[0x277CCACA8]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [(ACHAchievementStore *)self achievementsByTemplateUniqueName];
  v8 = [v7 allKeys];

  v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v9)
  {
    v10 = *v33;
    v11 = *MEMORY[0x277CE8BF8];
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        if ([v13 containsString:v11] && objc_msgSend(v13, "containsString:", v5))
        {
          v14 = v13;

          v6 = v14;
          goto LABEL_12;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__23;
  v30 = __Block_byref_object_dispose__23;
  v31 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__ACHAchievementStore_monthlyChallengeAchievementForDateComponents___block_invoke;
  v23[3] = &unk_278491010;
  v25 = &v26;
  v23[4] = self;
  v15 = v6;
  v24 = v15;
  [(ACHAchievementStore *)self _performWithLock:v23];
  v16 = v27[5];
  if (!v16)
  {
    v17 = ACHLogDefault();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v4 year];
      v19 = [v4 month];
      *buf = 134218240;
      v37 = v18;
      v38 = 2048;
      v39 = v19;
      _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Achievement store did not find monthly challenge achievement for month: %ld, and year: %ld", buf, 0x16u);
    }

    v16 = v27[5];
  }

  v20 = v16;

  _Block_object_dispose(&v26, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __68__ACHAchievementStore_monthlyChallengeAchievementForDateComponents___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) achievementsByTemplateUniqueName];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)achievementWithTemplateUniqueName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__23;
    v15 = __Block_byref_object_dispose__23;
    v16 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__ACHAchievementStore_achievementWithTemplateUniqueName___block_invoke;
    v8[3] = &unk_278491010;
    v10 = &v11;
    v8[4] = self;
    v9 = v4;
    [(ACHAchievementStore *)self _performWithLock:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __57__ACHAchievementStore_achievementWithTemplateUniqueName___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) achievementsByTemplateUniqueName];
  v2 = [v5 objectForKeyedSubscript:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_lock_ephemeralMonthlyChallengeAchievementForTemplateUniqueName:(id)a3 earnedInstance:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_assert_owner(&self->_syncLock);
  ACHMonthlyChallengeTypeFromTemplateUniqueName();
  v8 = [v7 componentsSeparatedByString:@"_"];

  if ([v8 count] == 3)
  {
    v21 = [v8 objectAtIndexedSubscript:1];
    v20 = [v8 objectAtIndexedSubscript:2];
    [v21 integerValue];
    [v20 integerValue];
    v9 = ACHDateComponentsForYearMonthDay();
    v10 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v19 = [v10 dateFromComponents:v9];
    v18 = [v10 hk_startOfMonthForDate:v19 addingMonths:1];
    v11 = [v10 hk_startOfDateBySubtractingDays:1 fromDate:v18];
    v12 = [v10 components:28 fromDate:v11];
    v13 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v9 endDateComponents:v12];
    v14 = ACHMonthlyChallengeTemplate();
    [v14 setSourceName:*MEMORY[0x277CE8C90]];
    v15 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithTemplate:v14 relevantEarnedInstance:v6 earnedInstanceCount:1];
    v16 = [(ACHAchievementStore *)self templateAssetRegistry];
    [v16 populateResourcePropertiesForAchievement:v15];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)processAchievementProgressUpdates:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__ACHAchievementStore_processAchievementProgressUpdates___block_invoke;
  v6[3] = &unk_278490898;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [(ACHAchievementStore *)self _performWithLock:v6];
}

void __57__ACHAchievementStore_processAchievementProgressUpdates___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [*(a1 + 40) achievementsByTemplateUniqueName];
        v10 = [v8 templateUniqueName];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (v11)
        {
          v12 = *(a1 + 40);
          v13 = [v8 progressQuantity];
          v14 = [v8 goalQuantity];
          [v12 _updateProgressAndGoalFor:v11 progressQuantity:v13 goalQuantity:v14];

          [v2 addObject:v11];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = *(a1 + 40);
  v16 = [v2 copy];
  [v15 _notifyObserversOfUpdatedAchievements:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateProgressAndGoalFor:(id)a3 progressQuantity:(id)a4 goalQuantity:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = ACHLogDefault();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 template];
    v12 = [v11 uniqueName];
    v13 = [v8 description];
    v14 = [v9 description];
    v16 = 138412802;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v14;
    _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Progress Update: %@: [%@/%@]", &v16, 0x20u);
  }

  [v7 setGoal:v9];
  [v7 setProgress:v8];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestUpdateProgressValuesForProgressProvider:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__ACHAchievementStore_requestUpdateProgressValuesForProgressProvider___block_invoke;
  v6[3] = &unk_278490898;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ACHAchievementStore *)self _performWithLock:v6];
}

void __70__ACHAchievementStore_requestUpdateProgressValuesForProgressProvider___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) achievementsByTemplateUniqueName];
  v3 = [v2 allValues];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__ACHAchievementStore_requestUpdateProgressValuesForProgressProvider___block_invoke_2;
  v7[3] = &unk_278492168;
  v8 = *(a1 + 40);
  v4 = [v3 hk_filter:v7];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  [v5 _lock_addProgressAndGoalToAchievements:v6];
}

uint64_t __70__ACHAchievementStore_requestUpdateProgressValuesForProgressProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 template];
  v4 = [v2 providesProgressForTemplate:v3];

  return v4;
}

- (void)_lock_notifyObserversOfInitialFetchCompletion
{
  if ([(ACHAchievementStore *)self templateStoreFinishedInitialFetch])
  {
    v3 = [(ACHAchievementStore *)self notificationQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__ACHAchievementStore__lock_notifyObserversOfInitialFetchCompletion__block_invoke;
    block[3] = &unk_278490870;
    block[4] = self;
    dispatch_async(v3, block);
  }
}

uint64_t __68__ACHAchievementStore__lock_notifyObserversOfInitialFetchCompletion__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__ACHAchievementStore__lock_notifyObserversOfInitialFetchCompletion__block_invoke_2;
  v3[3] = &unk_278490870;
  v3[4] = v1;
  return [v1 _performWithLock:v3];
}

void __68__ACHAchievementStore__lock_notifyObserversOfInitialFetchCompletion__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(a1 + 32) notificationQueue];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __68__ACHAchievementStore__lock_notifyObserversOfInitialFetchCompletion__block_invoke_3;
        v13[3] = &unk_278490898;
        v9 = *(a1 + 32);
        v13[4] = v7;
        v13[5] = v9;
        dispatch_async(v8, v13);

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfNewAchievements:(id)a3
{
  v4 = a3;
  v5 = [(ACHAchievementStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ACHAchievementStore__notifyObserversOfNewAchievements___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__ACHAchievementStore__notifyObserversOfNewAchievements___block_invoke(uint64_t a1)
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

        [*(*(&v8 + 1) + 8 * v6++) achievementStore:*(a1 + 32) didAddAchievements:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfUpdatedAchievements:(id)a3
{
  v4 = a3;
  v5 = [(ACHAchievementStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ACHAchievementStore__notifyObserversOfUpdatedAchievements___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__ACHAchievementStore__notifyObserversOfUpdatedAchievements___block_invoke(uint64_t a1)
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

        [*(*(&v8 + 1) + 8 * v6++) achievementStore:*(a1 + 32) didUpdateAchievements:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notifyObserversOfRemovedAchievements:(id)a3
{
  v4 = a3;
  v5 = [(ACHAchievementStore *)self notificationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ACHAchievementStore__notifyObserversOfRemovedAchievements___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__ACHAchievementStore__notifyObserversOfRemovedAchievements___block_invoke(uint64_t a1)
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

        [*(*(&v8 + 1) + 8 * v6++) achievementStore:*(a1 + 32) didRemoveAchievements:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)templateStoreDidFinishInitialFetch:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__ACHAchievementStore_templateStoreDidFinishInitialFetch___block_invoke;
  v6[3] = &unk_278490898;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ACHAchievementStore *)self _performWithLock:v6];
}

uint64_t __58__ACHAchievementStore_templateStoreDidFinishInitialFetch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) allTemplates];
  [v2 _lock_addTemplatesToLocalStore:v3];

  [*(a1 + 32) setTemplateStoreFinishedInitialFetch:1];
  v4 = *(a1 + 32);

  return [v4 _lock_notifyObserversOfInitialFetchCompletion];
}

- (void)templateStore:(id)a3 didAddNewTemplates:(id)a4
{
  v5 = a4;
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ACHAchievementStore_templateStore_didAddNewTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(ACHAchievementStore *)self _performWithLock:v7];
}

- (void)templateStore:(id)a3 didRemoveTemplates:(id)a4
{
  v5 = a4;
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ACHAchievementStore_templateStore_didRemoveTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(ACHAchievementStore *)self _performWithLock:v7];
}

- (void)earnedInstanceStore:(id)a3 didAddNewEarnedInstances:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__ACHAchievementStore_earnedInstanceStore_didAddNewEarnedInstances___block_invoke;
  v11[3] = &unk_2784908E0;
  v8 = v7;
  v12 = v8;
  v13 = self;
  v14 = &v15;
  [(ACHAchievementStore *)self _performWithLock:v11];
  if ([v16[5] count])
  {
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = [v9 initWithArray:v16[5]];
    [(ACHAchievementStore *)self _notifyObserversOfUpdatedAchievements:v10];
  }

  _Block_object_dispose(&v15, 8);
}

void __68__ACHAchievementStore_earnedInstanceStore_didAddNewEarnedInstances___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = [*(a1 + 40) achievementsByTemplateUniqueName];
        v10 = [v8 templateUniqueName];
        v11 = [v9 objectForKeyedSubscript:v10];

        if (v11)
        {
          [v2 addObject:v11];
        }

        v12 = [*(a1 + 40) achievementsByPrerequisiteTemplateName];
        v13 = [v8 templateUniqueName];
        v14 = [v12 objectForKeyedSubscript:v13];

        if (v14)
        {
          [v2 addObject:v14];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = [*(a1 + 40) _lock_populateMostRecentEarnedInstancesAndCountsForAchievements:v2];
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  [*(a1 + 40) _lock_populatePrerequisiteMetForAchievements:v2];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)earnedInstanceStoreDidReceiveSyncNotification:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__23;
  v12 = __Block_byref_object_dispose__23;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__ACHAchievementStore_earnedInstanceStoreDidReceiveSyncNotification___block_invoke;
  v7[3] = &unk_278490FE8;
  v7[4] = self;
  v7[5] = &v8;
  [(ACHAchievementStore *)self _performWithLock:v7];
  if ([v9[5] count])
  {
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v6 = [v5 initWithArray:v9[5]];
    [(ACHAchievementStore *)self _notifyObserversOfUpdatedAchievements:v6];
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __69__ACHAchievementStore_earnedInstanceStoreDidReceiveSyncNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lock_populateMostRecentEarnedInstanceAndCountForAllAchievements];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);

  return [v5 _lock_populatePrerequisiteMetForAllAchievements];
}

- (void)earnedInstanceStore:(id)a3 didRemoveEarnedInstances:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__23;
  v19 = __Block_byref_object_dispose__23;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__ACHAchievementStore_earnedInstanceStore_didRemoveEarnedInstances___block_invoke;
  v11[3] = &unk_2784908E0;
  v8 = v7;
  v12 = v8;
  v13 = self;
  v14 = &v15;
  [(ACHAchievementStore *)self _performWithLock:v11];
  if ([v16[5] count])
  {
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = [v9 initWithArray:v16[5]];
    [(ACHAchievementStore *)self _notifyObserversOfUpdatedAchievements:v10];
  }

  _Block_object_dispose(&v15, 8);
}

void __68__ACHAchievementStore_earnedInstanceStore_didRemoveEarnedInstances___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        v7 = [*(a1 + 40) achievementsByTemplateUniqueName];
        v8 = [v6 templateUniqueName];
        v9 = [v7 objectForKeyedSubscript:v8];

        if (v9)
        {
          v10 = [v9 earnedInstanceCount];
          v11 = [v9 prerequisiteMet];
          v12 = *(a1 + 40);
          v24 = v9;
          v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
          v14 = [v12 _lock_populateMostRecentEarnedInstancesAndCountsForAchievements:v13];

          [*(a1 + 40) _lock_populatePrerequisiteMet:v9];
          if ([v9 earnedInstanceCount] != v10 || v11 != objc_msgSend(v9, "prerequisiteMet"))
          {
            [*(*(*(a1 + 48) + 8) + 40) addObject:v9];
          }

          v15 = [*(a1 + 40) achievementsByPrerequisiteTemplateName];
          v16 = [v6 templateUniqueName];
          v17 = [v15 objectForKeyedSubscript:v16];

          if (v17)
          {
            [*(a1 + 40) _lock_populatePrerequisiteMet:v17];
            [*(*(*(a1 + 48) + 8) + 40) addObject:v17];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_lock_addTemplatesToLocalStore:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_syncLock);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v37;
    do
    {
      v9 = 0;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = ACHLogDefault();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(ACHAchievementStore *)v43 _lock_addTemplatesToLocalStore:v10];
        }

        v13 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithTemplate:v10 relevantEarnedInstance:0 earnedInstanceCount:0];
        v42 = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:1];
        v15 = [(ACHAchievementStore *)self _lock_populateMostRecentEarnedInstancesAndCountsForAchievements:v14];

        v16 = [(ACHAchievementStore *)self achievementsByTemplateUniqueName];
        v17 = [v10 uniqueName];
        [v16 setObject:v13 forKeyedSubscript:v17];

        v18 = [v10 prerequisiteTemplateName];

        if (v18)
        {
          v19 = [(ACHAchievementStore *)self achievementsByPrerequisiteTemplateName];
          v20 = [v10 prerequisiteTemplateName];
          [v19 setObject:v13 forKeyedSubscript:v20];
        }

        [v5 addObject:v13];

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v7);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = v5;
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      v25 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * v25);
        v27 = ACHLogAssets();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [(ACHAchievementStore *)v40 _lock_addTemplatesToLocalStore:v26];
        }

        v28 = [(ACHAchievementStore *)self templateAssetRegistry];
        [v28 populateResourcePropertiesForAchievement:v26];

        [(ACHAchievementStore *)self _lock_populatePrerequisiteMet:v26];
        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v23);
  }

  [(ACHAchievementStore *)self _lock_addProgressAndGoalToAchievements:v21];
  if ([v21 count])
  {
    v29 = [v21 copy];
    [(ACHAchievementStore *)self _notifyObserversOfNewAchievements:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)_lock_populateMostRecentEarnedInstanceAndCountForAllAchievements
{
  v3 = [(ACHAchievementStore *)self achievementsByTemplateUniqueName];
  v4 = [v3 allValues];
  v5 = [(ACHAchievementStore *)self _lock_populateMostRecentEarnedInstancesAndCountsForAchievements:v4];

  return v5;
}

- (id)_lock_populateMostRecentEarnedInstancesAndCountsForAchievements:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_syncLock);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 hk_map:&__block_literal_global_22];
  v7 = [(ACHAchievementStore *)self earnedInstanceStore];
  v44 = 0;
  v33 = [v7 countOfEarnedInstancesForTemplateUniqueNames:v6 error:&v44];
  v8 = v44;

  v9 = [(ACHAchievementStore *)self earnedInstanceStore];
  v43 = 0;
  v36 = [v9 mostRecentEarnedInstancesForTemplateUniqueNames:v6 error:&v43];
  v10 = v43;

  if (([v8 hk_isDatabaseAccessibilityError] & 1) != 0 || objc_msgSend(v10, "hk_isDatabaseAccessibilityError"))
  {
    [(ACHAchievementStore *)self setNeedsUpdateWhenProtectedDataAvailable:1];
    goto LABEL_31;
  }

  v29 = v10;
  v30 = v8;
  v31 = v6;
  v32 = v4;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v4;
  v11 = v33;
  v37 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (!v37)
  {
    goto LABEL_30;
  }

  v35 = *v40;
  do
  {
    for (i = 0; i != v37; ++i)
    {
      if (*v40 != v35)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v39 + 1) + 8 * i);
      v14 = [v13 template];
      v15 = [v14 uniqueName];

      v16 = [v11 objectForKeyedSubscript:v15];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 unsignedIntegerValue];
        if ([v13 earnedInstanceCount] != v18)
        {
          goto LABEL_14;
        }
      }

      else if ([v13 earnedInstanceCount])
      {
        v18 = 0;
LABEL_14:
        [v13 setEarnedInstanceCount:v18];
        v19 = 1;
        goto LABEL_16;
      }

      v19 = 0;
LABEL_16:
      v20 = [v36 objectForKeyedSubscript:v15];
      v21 = [v13 relevantEarnedInstance];

      if (v20)
      {
        v38 = v19;
        v22 = [v13 relevantEarnedInstance];
        if (v22)
        {
          [v13 relevantEarnedInstance];
          v24 = v23 = v5;
          v25 = [v20 isEqual:v24] ^ 1;

          v5 = v23;
          v11 = v33;
        }

        else
        {
          v25 = 0;
        }

        v19 = v38;
        if (!v21 || (v25 & 1) != 0)
        {
LABEL_26:
          [v13 setRelevantEarnedInstance:v20];
LABEL_27:
          [v5 addObject:v13];
          goto LABEL_28;
        }
      }

      else if (v21)
      {
        goto LABEL_26;
      }

      if (v19)
      {
        goto LABEL_27;
      }

LABEL_28:
    }

    v37 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  }

  while (v37);
LABEL_30:

  v6 = v31;
  v4 = v32;
  v10 = v29;
  v8 = v30;
LABEL_31:
  v26 = [v5 copy];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id __87__ACHAchievementStore__lock_populateMostRecentEarnedInstancesAndCountsForAchievements___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 template];
  v3 = [v2 uniqueName];

  return v3;
}

- (void)_lock_removeTemplatesFromLocalStore:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_syncLock);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v26 = *v31;
    do
    {
      v9 = 0;
      v27 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = ACHLogDefault();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(ACHAchievementStore *)v38 _lock_removeTemplatesFromLocalStore:v10];
        }

        v13 = [(ACHAchievementStore *)self achievementsByTemplateUniqueName];
        v14 = [v10 uniqueName];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = [(ACHAchievementStore *)self achievementsByTemplateUniqueName];
          v17 = [v10 uniqueName];
          [v16 setObject:0 forKeyedSubscript:v17];

          [v5 addObject:v15];
          if (![v15 earnedInstanceCount])
          {
            goto LABEL_18;
          }

          v18 = v5;
          v19 = [(ACHAchievementStore *)self earnedInstanceStore];
          v20 = [v10 uniqueName];
          v29 = 0;
          v21 = [v19 removeEarnedInstancesForTemplateUniqueName:v20 error:&v29];
          v22 = v29;

          if ((v21 & 1) == 0)
          {
            v23 = ACHLogDefault();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v35 = v10;
              v36 = 2114;
              v37 = v22;
              _os_log_error_impl(&dword_221DDC000, v23, OS_LOG_TYPE_ERROR, "Unable to remove the earned instances for template: %{public}@. Reason: %{public}@", buf, 0x16u);
            }
          }

          v5 = v18;
          v8 = v26;
          v7 = v27;
        }

        else
        {
          v22 = ACHLogDefault();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v35 = v10;
            _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Achievement store unexpectedly didn't find an achievement instance for template being removed: %{public}@", buf, 0xCu);
          }
        }

LABEL_18:
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v24 = [v5 copy];
    [(ACHAchievementStore *)self _notifyObserversOfRemovedAchievements:v24];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_lock_addProgressAndGoalToAchievements:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_syncLock);
  v6 = [(ACHAchievementStore *)self progressEngine];
  v5 = [v4 allObjects];

  [v6 populateProgressAndGoalForAchievements:v5];
}

- (void)_lock_populatePrerequisiteMetForAllAchievements
{
  v4 = [(ACHAchievementStore *)self achievementsByTemplateUniqueName];
  v3 = [v4 allValues];
  [(ACHAchievementStore *)self _lock_populatePrerequisiteMetForAchievements:v3];
}

- (void)_lock_populatePrerequisiteMetForAchievements:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ACHAchievementStore *)self _lock_populatePrerequisiteMet:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_lock_populatePrerequisiteMet:(id)a3
{
  v11 = a3;
  os_unfair_lock_assert_owner(&self->_syncLock);
  [v11 setPrerequisiteMet:1];
  v4 = [v11 template];
  v5 = [v4 prerequisiteTemplateName];

  if (v5 && [v11 unearned])
  {
    v6 = [(ACHAchievementStore *)self achievementsByTemplateUniqueName];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [v11 relevantEarnedInstance];
      if (v8)
      {
        v9 = 0;
      }

      else
      {
        v10 = [v7 relevantEarnedInstance];
        v9 = v10 != 0;
      }
    }

    else
    {
      v9 = 0;
    }

    [v11 setPrerequisiteMet:v9];
  }
}

- (void)templateAssetRegistry:(id)a3 didUpdateResourcesForTemplatesWithSourceName:(id)a4
{
  v5 = a4;
  os_unfair_lock_assert_not_owner(&self->_syncLock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __90__ACHAchievementStore_templateAssetRegistry_didUpdateResourcesForTemplatesWithSourceName___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(ACHAchievementStore *)self _performWithLock:v7];
}

- (void)_lock_populateResourcesForAchievementsWithTemplateSourceName:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_syncLock);
  v5 = MEMORY[0x277CBEB98];
  v6 = [(ACHAchievementStore *)self achievementsByTemplateUniqueName];
  v7 = [v6 allValues];
  v8 = [v5 setWithArray:v7];

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __84__ACHAchievementStore__lock_populateResourcesForAchievementsWithTemplateSourceName___block_invoke;
  v34[3] = &unk_278492168;
  v9 = v4;
  v35 = v9;
  v10 = [v8 hk_filter:v34];
  if ([v10 count])
  {
    v29 = v8;
    v11 = ACHLogAssets();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 count];
      *buf = 134218242;
      v38 = v12;
      v39 = 2114;
      v40 = v9;
      _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "Achievement store updating assets for %lu templates for source with identifier %{public}@", buf, 0x16u);
    }

    v28 = v9;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v27 = v10;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v31;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v30 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          v20 = ACHLogAssets();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v18 template];
            v22 = [v21 uniqueName];
            *buf = 138543362;
            v38 = v22;
            _os_log_impl(&dword_221DDC000, v20, OS_LOG_TYPE_DEFAULT, "Achievement store updating assets for template %{public}@", buf, 0xCu);
          }

          v23 = [(ACHAchievementStore *)self templateAssetRegistry];
          [v23 populateResourcePropertiesForAchievement:v18];

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v15);
    }

    v24 = ACHLogAssets();
    v8 = v29;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Done updating assets. Notifying observers.", buf, 2u);
    }

    v25 = [v13 copy];
    [(ACHAchievementStore *)self _notifyObserversOfUpdatedAchievements:v25];

    v10 = v27;
    v9 = v28;
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __84__ACHAchievementStore__lock_populateResourcesForAchievementsWithTemplateSourceName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 template];
  v4 = [v3 sourceName];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)addObserver:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Achievement store did not add observer %@ since it doesn't conform to the observer protocol.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_lock_addTemplatesToLocalStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_2(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_1_2(&dword_221DDC000, v5, v6, "Adding new template %{public}@ to achievement store");
}

- (void)_lock_addTemplatesToLocalStore:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_2(a1 a2)];
  v5 = [v4 uniqueName];
  *v3 = 138543362;
  *v2 = v5;
  OUTLINED_FUNCTION_1_2(&dword_221DDC000, v6, v7, "Populating assets for template %{public}@ because it was newly added to achievement store");
}

- (void)_lock_removeTemplatesFromLocalStore:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_2(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_1_2(&dword_221DDC000, v5, v6, "Removing template %{public}@ from achievement store");
}

@end