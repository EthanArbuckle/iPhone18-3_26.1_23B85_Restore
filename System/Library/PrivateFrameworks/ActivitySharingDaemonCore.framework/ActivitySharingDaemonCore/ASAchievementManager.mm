@interface ASAchievementManager
- (ASAchievementManager)initWithIsWatch:(BOOL)a3;
- (NSSet)friends;
- (id)friendWithUUID:(id)a3;
- (void)_requestAwardsUpdateIfNecessary;
- (void)activitySharingManagerReady:(id)a3;
- (void)friendListDidLoadCompetitions;
- (void)removeAllTemplates;
- (void)removeAllUnusedTemplates;
- (void)removeUnusedTemplatesForFriendWithUUID:(id)a3;
- (void)requestEarnedInstanceUpdate;
- (void)requestTemplateUpdate;
@end

@implementation ASAchievementManager

- (ASAchievementManager)initWithIsWatch:(BOOL)a3
{
  v3 = a3;
  v12.receiver = self;
  v12.super_class = ASAchievementManager;
  v4 = [(ASAchievementManager *)&v12 init];
  if (v4)
  {
    v5 = [ASCompetitionAwardingSource alloc];
    if (v3)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = [(ASCompetitionAwardingSource *)v5 initForCreatorDevice:v6];
    competitionAwardingSource = v4->_competitionAwardingSource;
    v4->_competitionAwardingSource = v7;

    [(ASCompetitionAwardingSource *)v4->_competitionAwardingSource setDataProvider:v4];
    v9 = objc_alloc_init(ASCompetitionTemplateSource);
    competitionTemplateSource = v4->_competitionTemplateSource;
    v4->_competitionTemplateSource = v9;

    [(ASCompetitionTemplateSource *)v4->_competitionTemplateSource setDataProvider:v4];
    v4->_isWatch = v3;
  }

  return v4;
}

- (void)activitySharingManagerReady:(id)a3
{
  v4 = [a3 friendListManager];
  objc_storeWeak(&self->_friendListManager, v4);

  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
  [WeakRetained addObserver:self];
}

- (void)requestTemplateUpdate
{
  ASLoggingInitialize();
  v3 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v3, OS_LOG_TYPE_DEFAULT, "AchievementManager requesting template update", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE8DE0]);
  competitionTemplateSource = self->_competitionTemplateSource;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ASAchievementManager_requestTemplateUpdate__block_invoke;
  v7[3] = &unk_278C4C5A0;
  v8 = v4;
  v6 = v4;
  [(ASCompetitionTemplateSource *)competitionTemplateSource templatesWithCompletion:v7];
}

void __45__ASAchievementManager_requestTemplateUpdate__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    ASLoggingInitialize();
    if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_ERROR))
    {
      __45__ASAchievementManager_requestTemplateUpdate__block_invoke_cold_1();
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__ASAchievementManager_requestTemplateUpdate__block_invoke_297;
    v11[3] = &unk_278C4C578;
    v12 = v8;
    v13 = *(a1 + 32);
    v14 = v7;
    [v10 removeTemplates:v12 completion:v11];
  }
}

void __45__ASAchievementManager_requestTemplateUpdate__block_invoke_297(void *a1, char a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FC0];
  v7 = *MEMORY[0x277CE8FC0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[4];
      v9 = v6;
      *buf = 134217984;
      v16 = [v8 count];
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Successfully removed %lu templates during update", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __45__ASAchievementManager_requestTemplateUpdate__block_invoke_297_cold_1();
  }

  v11 = a1[5];
  v10 = a1[6];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __45__ASAchievementManager_requestTemplateUpdate__block_invoke_298;
  v13[3] = &unk_278C4C218;
  v14 = v10;
  [v11 addTemplates:v14 completion:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __45__ASAchievementManager_requestTemplateUpdate__block_invoke_298(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FC0];
  v7 = *MEMORY[0x277CE8FC0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v11 = 134217984;
      v12 = [v8 count];
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Successfully added %lu templates during update", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __45__ASAchievementManager_requestTemplateUpdate__block_invoke_298_cold_1();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestEarnedInstanceUpdate
{
  isWatch = self->_isWatch;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FC0];
  v5 = os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT);
  if (isWatch)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "AchievementManager requesting earned instance update", buf, 2u);
    }

    *buf = 0;
    v14 = buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__7;
    v17 = __Block_byref_object_dispose__7;
    v18 = os_transaction_create();
    v6 = [(ASCompetitionAwardingSource *)self->_competitionAwardingSource earnedInstancesForIncrementalInterval:0];
    v7 = objc_alloc_init(MEMORY[0x277CE8DE0]);
    v8 = [v6 allObjects];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__ASAchievementManager_requestEarnedInstanceUpdate__block_invoke;
    v10[3] = &unk_278C4C5C8;
    v9 = v6;
    v11 = v9;
    v12 = buf;
    [v7 addEarnedInstances:v8 completion:v10];

    _Block_object_dispose(buf, 8);
  }

  else if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "AchievementManager not requesting earned instance update - this device is not a watch", buf, 2u);
  }
}

void __51__ASAchievementManager_requestEarnedInstanceUpdate__block_invoke(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FC0];
  v7 = *MEMORY[0x277CE8FC0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v13 = 134217984;
      v14 = [v8 count];
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Successfully added %lu earned instances", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __51__ASAchievementManager_requestEarnedInstanceUpdate__block_invoke_cold_1();
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeAllUnusedTemplates
{
  v33 = *MEMORY[0x277D85DE8];
  ASLoggingInitialize();
  v3 = MEMORY[0x277CE8FC0];
  v4 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v4, OS_LOG_TYPE_DEFAULT, "AchievementManager removing all unused templates", buf, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [(ASAchievementManager *)self friends];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v27;
    *&v8 = 138412290;
    v23 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        if (([v12 isCompetitionActive] & 1) == 0 && objc_msgSend(v12, "hasCompetitionHistory") && !objc_msgSend(v12, "numberOfCompetitionWinsByMe"))
        {
          ASLoggingInitialize();
          v13 = *v3;
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
          {
            v14 = v13;
            v15 = [v12 displayName];
            *buf = v23;
            v31 = v15;
            _os_log_impl(&dword_23E5E3000, v14, OS_LOG_TYPE_DEFAULT, "Achievement manager found friend with competition history but no wins: %@", buf, 0xCu);
          }

          competitionTemplateSource = self->_competitionTemplateSource;
          v17 = [v12 UUID];
          v18 = [(ASCompetitionTemplateSource *)competitionTemplateSource unusedTemplateNamesForFriendWithUUID:v17];

          v19 = [v18 allObjects];
          [v5 addObjectsFromArray:v19];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v9);
  }

  v20 = objc_alloc_init(MEMORY[0x277CE8DE0]);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __48__ASAchievementManager_removeAllUnusedTemplates__block_invoke;
  v24[3] = &unk_278C4C218;
  v25 = v5;
  v21 = v5;
  [v20 removeTemplatesWithUniqueNames:v21 completion:v24];

  v22 = *MEMORY[0x277D85DE8];
}

void __48__ASAchievementManager_removeAllUnusedTemplates__block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FC0];
  v7 = *MEMORY[0x277CE8FC0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v11 = 134217984;
      v12 = [v8 count];
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Successfully removed %lu unused template names", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __48__ASAchievementManager_removeAllUnusedTemplates__block_invoke_cold_1();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeUnusedTemplatesForFriendWithUUID:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "AchievementManager removing unused templates for friend: %{public}@", buf, 0xCu);
  }

  v6 = [(ASCompetitionTemplateSource *)self->_competitionTemplateSource unusedTemplateNamesForFriendWithUUID:v4];
  v7 = objc_alloc_init(MEMORY[0x277CE8DE0]);
  v8 = [v6 allObjects];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__ASAchievementManager_removeUnusedTemplatesForFriendWithUUID___block_invoke;
  v11[3] = &unk_278C4C218;
  v12 = v6;
  v9 = v6;
  [v7 removeTemplatesWithUniqueNames:v8 completion:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __63__ASAchievementManager_removeUnusedTemplatesForFriendWithUUID___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  ASLoggingInitialize();
  v6 = *MEMORY[0x277CE8FC0];
  v7 = *MEMORY[0x277CE8FC0];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = v6;
      v11 = 134217984;
      v12 = [v8 count];
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Successfully removed %lu unused template for friend", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __63__ASAchievementManager_removeUnusedTemplatesForFriendWithUUID___block_invoke_cold_1();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeAllTemplates
{
  ASLoggingInitialize();
  v2 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23E5E3000, v2, OS_LOG_TYPE_DEFAULT, "AchievementManager removing all competition templates", v4, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x277CE8DE0]);
  [v3 removeTemplatesForSource:*MEMORY[0x277CE91D8] completion:&__block_literal_global_11];
}

void __42__ASAchievementManager_removeAllTemplates__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "AchievementManager removed templates with result: %{BOOL}d, %{public}@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (NSSet)friends
{
  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
  v3 = [WeakRetained friends];

  return v3;
}

- (id)friendWithUUID:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
  v6 = [WeakRetained friendWithUUID:v4];

  return v6;
}

- (void)friendListDidLoadCompetitions
{
  WeakRetained = objc_loadWeakRetained(&self->_friendListManager);
  [WeakRetained removeObserver:self];

  [(ASAchievementManager *)self _requestAwardsUpdateIfNecessary];
}

- (void)_requestAwardsUpdateIfNecessary
{
  v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v3 doubleForKey:@"ActivitySharingLastTemplateRefreshTimestamp"];
  v5 = v4 + 1800.0;
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  ASLoggingInitialize();
  v9 = *MEMORY[0x277CE8FC0];
  v10 = os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT);
  if (v8 >= v5)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Competition award refresh interval reached, requesting awarding update", buf, 2u);
    }

    [(ASAchievementManager *)self requestTemplateUpdate];
    [(ASAchievementManager *)self requestEarnedInstanceUpdate];
    [v3 setDouble:@"ActivitySharingLastTemplateRefreshTimestamp" forKey:v8];
  }

  else if (v10)
  {
    *v11 = 0;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Competition award refresh interval not reached yet, not requesting awarding update", v11, 2u);
  }
}

void __45__ASAchievementManager_requestTemplateUpdate__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error getting templates from source: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__ASAchievementManager_requestTemplateUpdate__block_invoke_297_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error removing templates during update: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __45__ASAchievementManager_requestTemplateUpdate__block_invoke_298_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error adding templates during update: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__ASAchievementManager_requestEarnedInstanceUpdate__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error adding earned instances: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __48__ASAchievementManager_removeAllUnusedTemplates__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error removing unused template names: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__ASAchievementManager_removeUnusedTemplatesForFriendWithUUID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_23E5E3000, v0, v1, "Error removing unused templates for friend: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end