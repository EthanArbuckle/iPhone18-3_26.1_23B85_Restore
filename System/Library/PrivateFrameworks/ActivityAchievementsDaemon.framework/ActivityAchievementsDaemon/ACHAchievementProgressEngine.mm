@interface ACHAchievementProgressEngine
- (ACHAchievementProgressEngine)init;
- (ACHAchievementStoring)achievementStore;
- (BOOL)shouldPopulateProgressForAchievement:(id)a3;
- (NSHashTable)providers;
- (id)_queue_providerForTemplate:(id)a3;
- (id)providerWithIdentifier:(id)a3;
- (unint64_t)providerCount;
- (void)deregisterProgressProvider:(id)a3;
- (void)populateProgressAndGoalForAchievements:(id)a3;
- (void)processAchievementProgressUpdates:(id)a3;
- (void)registerProgressProvider:(id)a3;
- (void)requestProgressUpdateForProgressProvider:(id)a3;
@end

@implementation ACHAchievementProgressEngine

- (NSHashTable)providers
{
  v3 = [(ACHAchievementProgressEngine *)self providerQueue];
  dispatch_assert_queue_V2(v3);

  providers = self->_providers;

  return providers;
}

- (ACHAchievementProgressEngine)init
{
  v10.receiver = self;
  v10.super_class = ACHAchievementProgressEngine;
  v2 = [(ACHAchievementProgressEngine *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    providers = v2->_providers;
    v2->_providers = v3;

    v5 = HKCreateSerialDispatchQueue();
    providerQueue = v2->_providerQueue;
    v2->_providerQueue = v5;

    v7 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    providerDelayedOperations = v2->_providerDelayedOperations;
    v2->_providerDelayedOperations = v7;
  }

  return v2;
}

- (void)registerProgressProvider:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_283557160])
  {
    v5 = [(ACHAchievementProgressEngine *)self providerQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__ACHAchievementProgressEngine_registerProgressProvider___block_invoke;
    v13[3] = &unk_278490898;
    v14 = v4;
    v15 = self;
    dispatch_sync(v5, v13);

    v6 = v14;
  }

  else
  {
    v6 = ACHLogProgress();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ACHAchievementProgressEngine *)v4 registerProgressProvider:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

void __57__ACHAchievementProgressEngine_registerProgressProvider___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = ACHLogProgress();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v18 = v3;
    _os_log_impl(&dword_221DDC000, v2, OS_LOG_TYPE_DEFAULT, "Progress Engine added provider %@.", buf, 0xCu);
  }

  v4 = [*(a1 + 40) providers];
  [v4 addObject:*(a1 + 32)];

  objc_initWeak(buf, *(a1 + 40));
  objc_initWeak(&location, *(a1 + 32));
  v5 = [*(a1 + 40) overrideDelay];
  if (v5)
  {
    v6 = [*(a1 + 40) overrideDelay];
    [v6 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 60.0;
  }

  v9 = objc_alloc(MEMORY[0x277CCDD98]);
  v10 = [*(a1 + 40) providerQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__ACHAchievementProgressEngine_registerProgressProvider___block_invoke_344;
  v13[3] = &unk_2784920F0;
  objc_copyWeak(&v14, &location);
  objc_copyWeak(&v15, buf);
  v11 = [v9 initWithMode:0 queue:v10 delay:v13 block:v8];

  [*(*(a1 + 40) + 16) setObject:v11 forKey:*(a1 + 32)];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
  v12 = *MEMORY[0x277D85DE8];
}

void __57__ACHAchievementProgressEngine_registerProgressProvider___block_invoke_344(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ACHLogProgress();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 138412290;
    v9 = WeakRetained;
    _os_log_impl(&dword_221DDC000, v2, OS_LOG_TYPE_DEFAULT, "Execute delayed task for provider: %@.", &v8, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 achievementStore];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v5 requestUpdateProgressValuesForProgressProvider:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deregisterProgressProvider:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_283557160])
  {
    v5 = [(ACHAchievementProgressEngine *)self providerQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__ACHAchievementProgressEngine_deregisterProgressProvider___block_invoke;
    v13[3] = &unk_278490898;
    v13[4] = self;
    v14 = v4;
    dispatch_sync(v5, v13);
  }

  else
  {
    v6 = ACHLogProgress();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ACHAchievementProgressEngine *)v4 deregisterProgressProvider:v6, v7, v8, v9, v10, v11, v12];
    }
  }
}

void __59__ACHAchievementProgressEngine_deregisterProgressProvider___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) providers];
  v3 = [v2 containsObject:*(a1 + 40)];

  v4 = ACHLogProgress();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Progress Engine removed provider %@.", &v15, 0xCu);
    }

    v7 = [*(a1 + 32) providers];
    [v7 removeObject:*(a1 + 40)];

    v5 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
    [v5 invalidate];
    [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__ACHAchievementProgressEngine_deregisterProgressProvider___block_invoke_cold_1((a1 + 40), v5, v8, v9, v10, v11, v12, v13);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)requestProgressUpdateForProgressProvider:(id)a3
{
  v4 = a3;
  v5 = [(ACHAchievementProgressEngine *)self providerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__ACHAchievementProgressEngine_requestProgressUpdateForProgressProvider___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __73__ACHAchievementProgressEngine_requestProgressUpdateForProgressProvider___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  [v1 execute];
}

- (id)_queue_providerForTemplate:(id)a3
{
  v4 = a3;
  v5 = [(ACHAchievementProgressEngine *)self providerQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(ACHAchievementProgressEngine *)self providers];
  v7 = [v6 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__ACHAchievementProgressEngine__queue_providerForTemplate___block_invoke;
  v11[3] = &unk_278492118;
  v12 = v4;
  v8 = v4;
  v9 = [v7 hk_firstObjectPassingTest:v11];

  return v9;
}

- (BOOL)shouldPopulateProgressForAchievement:(id)a3
{
  v3 = a3;
  v4 = [v3 template];
  v5 = [v3 template];
  v6 = [v5 canonicalUnit];

  v7 = [v3 template];
  v8 = [v7 graceProgressExpression];
  if (v8)
  {
    v9 = v8;

LABEL_4:
    v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v12 = [v9 stringByTrimmingCharactersInSet:v11];
    v13 = [v12 length] == 0;

    goto LABEL_5;
  }

  v10 = [v3 template];
  v9 = [v10 progressExpression];

  if (v9)
  {
    goto LABEL_4;
  }

  v13 = 1;
LABEL_5:
  v14 = [v3 template];
  if ([v14 earnLimit])
  {
    v15 = [v3 template];
    v16 = [v15 earnLimit];
    v17 = [v3 earnedInstanceCount] >= v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = [v4 visibilityStart];
  if (v18 && (v19 = v18, [v4 visibilityEnd], v20 = objc_claimAutoreleasedReturnValue(), v20, v19, v20))
  {
    v21 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v22 = [MEMORY[0x277CBEAA8] now];
    [v4 visibilityStart];
    v23 = v35 = v6;
    v24 = [v21 dateFromComponents:v23];

    v25 = [v4 visibilityEnd];
    [v21 dateFromComponents:v25];
    v34 = v17;
    v27 = v26 = v13;

    v28 = [v21 hk_startOfDateByAddingDays:1 toDate:v27];
    v29 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v24 endDate:v28];
    v30 = [v29 containsDate:v22];

    v6 = v35;
    v13 = v26;
    v17 = v34;

    v31 = v30 ^ 1;
  }

  else
  {
    v31 = 0;
  }

  v32 = 0;
  if (v6 != 0 && !v13 && !v17 && (v31 & 1) == 0)
  {
    v32 = [v3 prerequisiteMet];
  }

  return v32;
}

- (void)populateProgressAndGoalForAchievements:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ACHLogProgress();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v12 = [v4 count];
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "populateProgressAndGoalForAchievements: %lu", buf, 0xCu);
  }

  v6 = [(ACHAchievementProgressEngine *)self providerQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__ACHAchievementProgressEngine_populateProgressAndGoalForAchievements___block_invoke;
  v9[3] = &unk_278490898;
  v9[4] = self;
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __71__ACHAchievementProgressEngine_populateProgressAndGoalForAchievements___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v2 = [*(a1 + 32) providers];
  v3 = [v2 allObjects];

  v28 = [v3 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v28)
  {
    v27 = *v38;
    *&v4 = 138412546;
    v26 = v4;
    do
    {
      v5 = 0;
      do
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(v3);
        }

        v30 = v5;
        v6 = *(*(&v37 + 1) + 8 * v5);
        v7 = MEMORY[0x277CBEB58];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __71__ACHAchievementProgressEngine_populateProgressAndGoalForAchievements___block_invoke_2;
        v36[3] = &unk_278492140;
        v9 = *(a1 + 32);
        v8 = *(a1 + 40);
        v29 = v6;
        v36[4] = v6;
        v36[5] = v9;
        v10 = [v8 hk_filter:{v36, v26}];
        v11 = [v7 setWithArray:v10];

        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v33;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v33 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v32 + 1) + 8 * i);
              v19 = *(a1 + 40);
              v31[0] = MEMORY[0x277D85DD0];
              v31[1] = 3221225472;
              v31[2] = __71__ACHAchievementProgressEngine_populateProgressAndGoalForAchievements___block_invoke_3;
              v31[3] = &unk_278492168;
              v31[4] = v18;
              v20 = [v19 hk_firstObjectPassingTest:v31];
              if (v20)
              {
                [v12 addObject:v20];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v32 objects:v45 count:16];
          }

          while (v15);
        }

        [v13 unionSet:v12];
        v21 = [v13 hk_map:&__block_literal_global_21];
        if ([v21 count])
        {
          v22 = ACHLogProgress();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v21 count];
            *buf = v26;
            v42 = v29;
            v43 = 2048;
            v44 = v23;
            _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Request Progress, provider to %@ for %lu templates", buf, 0x16u);
          }

          v24 = [v21 allObjects];
          [v29 requestAchievementProgressUpdatesForTemplates:v24];
        }

        v5 = v30 + 1;
      }

      while (v30 + 1 != v28);
      v28 = [v3 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v28);
  }

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __71__ACHAchievementProgressEngine_populateProgressAndGoalForAchievements___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 template];
  if ([v4 providesProgressForTemplate:v5])
  {
    v6 = [*(a1 + 40) shouldPopulateProgressForAchievement:v3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __71__ACHAchievementProgressEngine_populateProgressAndGoalForAchievements___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 template];
  v4 = [v3 prerequisiteTemplateName];
  v5 = [*(a1 + 32) template];
  v6 = [v5 uniqueName];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (void)processAchievementProgressUpdates:(id)a3
{
  v4 = a3;
  v5 = [(ACHAchievementProgressEngine *)self providerQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__ACHAchievementProgressEngine_processAchievementProgressUpdates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __66__ACHAchievementProgressEngine_processAchievementProgressUpdates___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 8));
    [v4 processAchievementProgressUpdates:*(a1 + 40)];
  }

  else
  {
    v3 = ACHLogProgress();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __66__ACHAchievementProgressEngine_processAchievementProgressUpdates___block_invoke_cold_1(v3);
    }
  }
}

- (id)providerWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSHashTable *)self->_providers allObjects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__ACHAchievementProgressEngine_providerWithIdentifier___block_invoke;
  v9[3] = &unk_278492118;
  v10 = v4;
  v6 = v4;
  v7 = [v5 hk_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __55__ACHAchievementProgressEngine_providerWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 providerIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (unint64_t)providerCount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(ACHAchievementProgressEngine *)self providerQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ACHAchievementProgressEngine_providerCount__block_invoke;
  v6[3] = &unk_278490FE8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __45__ACHAchievementProgressEngine_providerCount__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) providers];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

- (ACHAchievementStoring)achievementStore
{
  WeakRetained = objc_loadWeakRetained(&self->_achievementStore);

  return WeakRetained;
}

- (void)registerProgressProvider:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Progress Engine did not add provider %@ since it doesn't conform to the provider protocol.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)deregisterProgressProvider:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Progress Engine did not remove provider %@ since it doesn't conform to the provider protocol.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __59__ACHAchievementProgressEngine_deregisterProgressProvider___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0(&dword_221DDC000, a2, a3, "Progress Engine did not remove provider %@ since it was not previously registered.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end