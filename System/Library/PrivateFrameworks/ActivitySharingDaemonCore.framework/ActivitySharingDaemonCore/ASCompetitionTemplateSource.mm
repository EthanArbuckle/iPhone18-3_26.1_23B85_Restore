@interface ASCompetitionTemplateSource
- (ASCompetitionTemplateSourceDataProvider)dataProvider;
- (id)unusedTemplateNamesForFriendWithUUID:(id)a3;
- (void)templatesWithCompletion:(id)a3;
@end

@implementation ASCompetitionTemplateSource

- (void)templatesWithCompletion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  ASLoggingInitialize();
  v5 = MEMORY[0x277CE8FC0];
  v6 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v6, OS_LOG_TYPE_DEFAULT, "CompetitionsTemplateSource collecting templates", buf, 2u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  ASLoggingInitialize();
  v8 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEFAULT, "Adding participation template", buf, 2u);
  }

  v9 = ASCompetitionParticipationTemplate();
  [v7 addObject:v9];
  ASLoggingInitialize();
  v10 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
  {
    [ASCompetitionTemplateSource templatesWithCompletion:v10];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
  v12 = [WeakRetained friends];
  v13 = [v12 hk_filter:&__block_literal_global_5];

  v14 = [v13 allObjects];
  v15 = ASFriendsSortedByEarliestCompetitionVictoryOrPotentialVictoryDate();

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __55__ASCompetitionTemplateSource_templatesWithCompletion___block_invoke_293;
  v26[3] = &unk_278C4C1E8;
  v16 = v7;
  v27 = v16;
  [v15 enumerateObjectsUsingBlock:v26];
  if ([v15 count])
  {
    v17 = [objc_alloc(MEMORY[0x277CF1938]) initWithIdentifier:@"com.apple.ActivityMonitorApp.activity-competition-participated" bundleID:@"com.apple.ActivityMonitorApp" context:0];
    v18 = [MEMORY[0x277CF1B58] discoverabilitySignal];
    v19 = [v18 source];
    [v19 sendEvent:v17];
  }

  ASLoggingInitialize();
  v20 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = MEMORY[0x277CCABB0];
    v22 = v20;
    v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
    *buf = 138412290;
    v29 = v23;
    _os_log_impl(&dword_23E5E3000, v22, OS_LOG_TYPE_DEFAULT, "Returning templates: %@", buf, 0xCu);
  }

  v24 = [v16 copy];
  (*(v4 + 2))(v4, v24, 0, 0);

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __55__ASCompetitionTemplateSource_templatesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = a2;
  LODWORD(v3) = [v2 isCompetitionActive];
  v4 = [v2 numberOfCompetitionWinsByMe];
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEBUG))
  {
    v8 = v5;
    v9 = [v2 UUID];
    v10 = 138412802;
    v11 = v9;
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = v4 != 0;
    _os_log_debug_impl(&dword_23E5E3000, v8, OS_LOG_TYPE_DEBUG, "For friend %@ isCompetitionActive: %d hasCompetitionWonByMe %d", &v10, 0x18u);
  }

  if (v4)
  {
    v3 = 1;
  }

  else
  {
    v3 = v3;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

void __55__ASCompetitionTemplateSource_templatesWithCompletion___block_invoke_293(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  ASLoggingInitialize();
  v4 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 UUID];
    v7 = [v3 displayName];
    v11 = 138543618;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Adding victory template for friend: %{public}@ - %@", &v11, 0x16u);
  }

  v8 = [v3 UUID];
  v9 = ASCompetitionVictoryTemplateForFriend();

  [*(a1 + 32) addObject:v9];
  v10 = *MEMORY[0x277D85DE8];
}

- (id)unusedTemplateNamesForFriendWithUUID:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] set];
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
  v7 = [WeakRetained friendWithUUID:v4];

  ASLoggingInitialize();
  v8 = MEMORY[0x277CE8FC0];
  v9 = *MEMORY[0x277CE8FC0];
  v10 = os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      v11 = v9;
      v12 = [v7 displayName];
      v20 = 138543618;
      v21 = v4;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Competition template source building unused template names for friend: %{public}@ - %@", &v20, 0x16u);
    }

    if (![v7 numberOfCompetitionWinsByMe] && (objc_msgSend(v7, "isCompetitionActive") & 1) == 0)
    {
      ASLoggingInitialize();
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_23E5E3000, v13, OS_LOG_TYPE_DEFAULT, "No wins against this friend and competition isn't active, victory template is now unused", &v20, 2u);
      }

      v14 = [v7 UUID];
      v15 = ASCompetitionVictoryTemplateNameForFriend();

      v16 = [v5 setByAddingObject:v15];

      v5 = v16;
    }
  }

  else if (v10)
  {
    v20 = 138543362;
    v21 = v4;
    _os_log_impl(&dword_23E5E3000, v9, OS_LOG_TYPE_DEFAULT, "Competition template source couldn't find friend: %{public}@", &v20, 0xCu);
  }

  v17 = v5;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (ASCompetitionTemplateSourceDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

@end