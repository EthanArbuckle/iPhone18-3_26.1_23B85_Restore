@interface ATXUserEducationSuggestionSleepMigrationServer
- (ATXUserEducationSuggestionSleepMigrationServer)initWithConnector:(id)a3;
- (void)_processModeChangeEvent:(id)a3;
- (void)dealloc;
- (void)processModeChangeEvent:(id)a3;
- (void)sendSuggestion:(id)a3 withEventType:(unint64_t)a4;
@end

@implementation ATXUserEducationSuggestionSleepMigrationServer

- (ATXUserEducationSuggestionSleepMigrationServer)initWithConnector:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15.receiver = self;
  v15.super_class = ATXUserEducationSuggestionSleepMigrationServer;
  v6 = [(ATXUserEducationSuggestionBaseServer *)&v15 init];
  if (v6)
  {
    v7 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[ATXUserEducationSuggestionSleepMigrationServer initWithConnector:]";
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: starting server", buf, 0xCu);
    }

    v8 = objc_alloc_init(MEMORY[0x277CEB568]);
    homeScreenConfigCache = v6->_homeScreenConfigCache;
    v6->_homeScreenConfigCache = v8;

    v10 = objc_alloc_init(MEMORY[0x277CEB5D0]);
    installedSuggestedPagesTracker = v6->_installedSuggestedPagesTracker;
    v6->_installedSuggestedPagesTracker = v10;

    objc_storeStrong(&v6->_connector, a3);
    v12 = +[ATXUserEducationSuggestionModeChangeNotifier sharedInstance];
    [v12 registerObserver:v6];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v3 = +[ATXUserEducationSuggestionModeChangeNotifier sharedInstance];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = ATXUserEducationSuggestionSleepMigrationServer;
  [(ATXUserEducationSuggestionSleepMigrationServer *)&v4 dealloc];
}

- (void)processModeChangeEvent:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__ATXUserEducationSuggestionSleepMigrationServer_processModeChangeEvent___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v6];
}

- (void)_processModeChangeEvent:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 semanticType];
  v6 = __atxlog_handle_context_user_education_suggestions();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 3)
  {
    if (v7)
    {
      *buf = 136315394;
      v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
      v39 = 2114;
      v40 = v4;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s: processing new userFocusComputedModeEvent: %{public}@", buf, 0x16u);
    }

    v6 = [objc_alloc(MEMORY[0x277CEB950]) initWithRandomUUID];
    v8 = [v6 suggestionWasAlreadyShown];
    v9 = [v6 suggestionWasAlreadyDismissed];
    if (([v4 starting]& 1) != 0)
    {
      if (v8)
      {
        v10 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
          v11 = "%s: Not showing user education suggestion because it was already shown";
LABEL_28:
          v12 = v10;
          v13 = 12;
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      v14 = ATXSleepSuggestedHomePageWasCreatedDuringMigration();
      v15 = v14;
      if (v14)
      {
        if ([v14 BOOLValue])
        {

          v16 = objc_alloc(MEMORY[0x277CCAD78]);
          v17 = [v4 mode];
          v15 = [v16 initWithUUIDString:v17];

          if (!v15)
          {
            v21 = __atxlog_handle_context_user_education_suggestions();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:];
            }

            goto LABEL_49;
          }

          homeScreenConfigCache = self->_homeScreenConfigCache;
          v36 = 0;
          v19 = [(ATXHomeScreenConfigCache *)homeScreenConfigCache loadHomeScreenPageConfigurationsIncludingHidden:1 error:&v36];
          v20 = v36;
          v21 = v20;
          if (!v19 || v20)
          {
            v23 = __atxlog_handle_context_user_education_suggestions();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:];
            }

            goto LABEL_48;
          }

          v22 = objc_opt_new();
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __74__ATXUserEducationSuggestionSleepMigrationServer__processModeChangeEvent___block_invoke;
          v33[3] = &unk_2785A0718;
          v34 = v15;
          v23 = v22;
          v35 = v23;
          [v19 enumerateObjectsUsingBlock:v33];
          if ([v23 count]>= 2)
          {
            v24 = __atxlog_handle_context_user_education_suggestions();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
              _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_DEFAULT, "%s: Not showing suggestion because there's more than 1 home page associated with sleep. This would be an indication that the user has customized their sleep pages, therefore doesn't qualify for the discovery platter.", buf, 0xCu);
            }

            goto LABEL_47;
          }

          v24 = [v23 firstObject];
          v27 = [v24 uniqueIdentifier];
          if ([v27 length])
          {
            installedSuggestedPagesTracker = self->_installedSuggestedPagesTracker;
            v28 = [v24 uniqueIdentifier];
            v32 = [(ATXInstalledSuggestedPagesTracker *)installedSuggestedPagesTracker suggestedPageTypeWithIdentifier:v28];

            if (v32 == 4)
            {
              [(ATXUserEducationSuggestionSleepMigrationServer *)self sendSuggestion:v6 withEventType:0];
LABEL_47:

LABEL_48:
LABEL_49:

              goto LABEL_50;
            }
          }

          else
          {
          }

          v29 = __atxlog_handle_context_user_education_suggestions();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
            _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "%s: Not showing suggestion because there aren't any installed suggested pages for sleep", buf, 0xCu);
          }

          goto LABEL_47;
        }

        v26 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
          _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "%s: Not showing user education suggestion because a suggested page was not created as part of the sleep migration flow, or the sleep migration didn't happen.", buf, 0xCu);
        }
      }

      else
      {
        v26 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:v26];
        }
      }

LABEL_50:
      goto LABEL_51;
    }

    if (v9 & 1 | ((v8 & 1) == 0))
    {
      if ((v8 & 1) == 0)
      {
        v10 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
          v11 = "%s: Not dismissing suggestion because it hasn't been shown yet.";
          goto LABEL_28;
        }

        goto LABEL_30;
      }

      if (v9)
      {
        v10 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
          v11 = "%s: Not dismissing suggestion because it has already been dismissed.";
          goto LABEL_28;
        }

LABEL_30:
      }
    }

    else
    {
      v25 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
        _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "%s: Dismissing suggestion because we're exiting Sleep mode and its been shown but not yet dismissed", buf, 0xCu);
      }

      [(ATXUserEducationSuggestionSleepMigrationServer *)self sendSuggestion:v6 withEventType:1];
    }
  }

  else if (v7)
  {
    [v4 atx_dndModeSemanticType];
    v10 = DNDModeSemanticTypeToString();
    *buf = 136315394;
    v38 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
    v39 = 2114;
    v40 = v10;
    v11 = "%s: Not processing mode change event because mode: %{public}@ is not Sleep";
    v12 = v6;
    v13 = 22;
LABEL_29:
    _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
    goto LABEL_30;
  }

LABEL_51:

  v30 = *MEMORY[0x277D85DE8];
}

void __74__ATXUserEducationSuggestionSleepMigrationServer__processModeChangeEvent___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 associatedModeUUIDs];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 containsObject:v4];

  if (v5)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)sendSuggestion:(id)a3 withEventType:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CEB938]) initWithUserEducationSuggestion:v6 userEducationSuggestionEventType:a4];
  v8 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[ATXUserEducationSuggestionSleepMigrationServer sendSuggestion:withEventType:]";
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Sending suggestion: %{public}@", &v11, 0x16u);
  }

  v9 = [(ATXUserEducationSuggestionConnector *)self->_connector remoteObjectProxy];
  [v9 didReceiveUserEducationSuggestionEvent:v7];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_processModeChangeEvent:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_25();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%s: Not showing suggestion because was unable to get configured home screen pages. Error: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_processModeChangeEvent:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_25();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "%s: Not showing suggestion. Unable to get mode uuid from event %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_processModeChangeEvent:(os_log_t)log .cold.3(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ATXUserEducationSuggestionSleepMigrationServer _processModeChangeEvent:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: Not showing user education suggestion because there was an error while trying to determine whether a suggested page was created during sleep migration.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end