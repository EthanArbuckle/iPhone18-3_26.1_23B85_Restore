@interface ATXSuggestedPagesContactsWidgetDataSource
- (ATXSuggestedPagesContactsWidgetDataSource)init;
- (id)_createMediumContactsWidgetForPeople:(id)a3 entities:(id)a4;
- (id)_createSmallContactsWidgetForPeople:(id)a3;
- (id)provideWidgetsForPageType:(int64_t)a3 environment:(id)a4;
@end

@implementation ATXSuggestedPagesContactsWidgetDataSource

- (ATXSuggestedPagesContactsWidgetDataSource)init
{
  v6.receiver = self;
  v6.super_class = ATXSuggestedPagesContactsWidgetDataSource;
  v2 = [(ATXSuggestedPagesContactsWidgetDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    suggestedPagesTunableConstants = v2->_suggestedPagesTunableConstants;
    v2->_suggestedPagesTunableConstants = v3;
  }

  return v2;
}

- (id)provideWidgetsForPageType:(int64_t)a3 environment:(id)a4
{
  v6 = a4;
  if ((a3 - 3) < 9 && ((0x143u >> (a3 - 3)) & 1) != 0 || (v7 = [ATXSuggestedPagesUtils modeForSuggestedPageType:a3], v7 == 16))
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [ATXSuggestedPagesUtils semanticTypeForSuggestedPageType:a3];
    v11 = v10;
    if (v10 && [v10 integerValue] != 8)
    {
      v13 = [MEMORY[0x277CEB440] sharedInstance];
      v12 = [v13 iOSContactAllowListForMode:{objc_msgSend(v11, "integerValue")}];
    }

    else
    {
      v12 = 0;
    }

    v14 = +[ATXModeEntityScorerServer sharedInstance];
    v15 = [v14 rankedContactsForMode:v9];
    v16 = objc_opt_new();
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __83__ATXSuggestedPagesContactsWidgetDataSource_provideWidgetsForPageType_environment___block_invoke;
    v25[3] = &unk_27859EB70;
    v25[4] = self;
    v28 = a3;
    v17 = v12;
    v26 = v17;
    v18 = v16;
    v27 = v18;
    v19 = [v15 _pas_mappedArrayWithTransform:v25];
    if ([v19 count])
    {
      v24 = v14;
      v8 = objc_opt_new();
      v20 = [(ATXSuggestedPagesContactsWidgetDataSource *)self _createSmallContactsWidgetForPeople:v19];
      if (v20)
      {
        [v8 addObject:v20];
      }

      v21 = [v19 count];
      if (v21 >= [(ATXSuggestedPagesTunableConstants *)self->_suggestedPagesTunableConstants numberOfContactsForMediumWidget])
      {
        v22 = [(ATXSuggestedPagesContactsWidgetDataSource *)self _createMediumContactsWidgetForPeople:v19 entities:v18];
        if (v22)
        {
          [v8 addObject:v22];
        }
      }

      v14 = v24;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

id __83__ATXSuggestedPagesContactsWidgetDataSource_provideWidgetsForPageType_environment___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 displayName];
  v5 = [v4 length];

  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [v3 cnContactId];
  v7 = [v6 length];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [v3 scoreMetadata];
  [v8 score];
  v10 = v9;
  [*(*(a1 + 32) + 8) minScoreForModeAffinityContactsWidgetSuggestions];
  v12 = v11;

  if (v10 >= v12)
  {
    if (*(a1 + 56) == 8 || (v16 = *(a1 + 40), [v3 cnContactId], v17 = objc_claimAutoreleasedReturnValue(), LOBYTE(v16) = objc_msgSend(v16, "containsObject:", v17), v17, (v16 & 1) != 0))
    {
      [*(a1 + 48) addObject:v3];
      v18 = [v3 displayName];
      v21[1] = @"identifier";
      v22[0] = v18;
      v19 = [v3 cnContactId];
      v22[1] = v19;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    }

    else
    {
      v18 = __atxlog_handle_modes();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v3 cnContactId];
        *buf = 138412290;
        v24 = v20;
        _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "Skipping contact not on allow list: %@", buf, 0xCu);
      }

      v13 = 0;
    }
  }

  else
  {
LABEL_4:
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_createMediumContactsWidgetForPeople:(id)a3 entities:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a3;
  v9 = [v8 count];
  if (v9 < [(ATXSuggestedPagesTunableConstants *)self->_suggestedPagesTunableConstants numberOfContactsForMediumWidget])
  {
    [ATXSuggestedPagesContactsWidgetDataSource _createMediumContactsWidgetForPeople:a2 entities:self];
  }

  v10 = [v7 count];
  if (v10 < [(ATXSuggestedPagesTunableConstants *)self->_suggestedPagesTunableConstants numberOfContactsForMediumWidget])
  {
    [ATXSuggestedPagesContactsWidgetDataSource _createMediumContactsWidgetForPeople:a2 entities:self];
  }

  v11 = [v8 subarrayWithRange:{0, -[ATXSuggestedPagesTunableConstants numberOfContactsForMediumWidget](self->_suggestedPagesTunableConstants, "numberOfContactsForMediumWidget")}];

  v12 = objc_alloc(MEMORY[0x277D42030]);
  v20 = @"people";
  v21[0] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v14 = [v12 initWithTypeName:@"com.apple.PeopleViewService.SelectPerson-iOS.SelectPeopleIntent" parameters:v13];

  v15 = [v14 createIntent];
  if (v15)
  {
    v16 = objc_alloc_init(MEMORY[0x277CEB5B0]);
    [v16 setIntent:v15];
    [v16 setSize:1];
    [v16 setWidgetKind:@"MultipleContactWidget_iOS"];
    [v16 setExtensionBundleId:@"com.apple.PeopleViewService.PeopleWidget-iOS"];
    [v16 setAppBundleId:@"com.apple.PeopleViewService"];
    [v16 setScore:0.5];
    [v16 setPredictionSource:@"Contacts Heuristic"];
    [v16 setRequiresAppLaunch:0];
  }

  else
  {
    v17 = __atxlog_handle_modes();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestedPagesContactsWidgetDataSource _createMediumContactsWidgetForPeople:v17 entities:?];
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_createSmallContactsWidgetForPeople:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 count];
  if (v6 < [(ATXSuggestedPagesTunableConstants *)self->_suggestedPagesTunableConstants numberOfContactsForSmallWidget])
  {
    [(ATXSuggestedPagesContactsWidgetDataSource *)a2 _createSmallContactsWidgetForPeople:?];
  }

  v7 = [v5 firstObject];
  v8 = objc_alloc(MEMORY[0x277CD3A70]);
  v15 = @"person";
  v16[0] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v8 initWithAppBundleIdentifier:@"com.apple.PeopleViewService" appIntentIdentifier:@"SelectPersonIntent" serializedParameters:v9];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CEB5B0]);
    [v11 setIntent:v10];
    [v11 setSize:0];
    [v11 setWidgetKind:@"SingleContactWidget_iOS"];
    [v11 setExtensionBundleId:@"com.apple.PeopleViewService.PeopleWidget-iOS"];
    [v11 setAppBundleId:@"com.apple.PeopleViewService"];
    [v11 setScore:0.5];
    [v11 setPredictionSource:@"Contacts Heuristic"];
  }

  else
  {
    v12 = __atxlog_handle_modes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestedPagesContactsWidgetDataSource _createMediumContactsWidgetForPeople:v12 entities:?];
    }

    v11 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_createMediumContactsWidgetForPeople:(uint64_t)a1 entities:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesContactsWidgetDataSource.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"people.count >= _suggestedPagesTunableConstants.numberOfContactsForMediumWidget"}];
}

- (void)_createMediumContactsWidgetForPeople:(uint64_t)a1 entities:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesContactsWidgetDataSource.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"entities.count >= _suggestedPagesTunableConstants.numberOfContactsForMediumWidget"}];
}

- (void)_createSmallContactsWidgetForPeople:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesContactsWidgetDataSource.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"people.count >= _suggestedPagesTunableConstants.numberOfContactsForSmallWidget"}];
}

@end