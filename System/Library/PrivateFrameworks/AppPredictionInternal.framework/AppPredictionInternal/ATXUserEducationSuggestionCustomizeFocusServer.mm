@interface ATXUserEducationSuggestionCustomizeFocusServer
- (ATXUserEducationSuggestionCustomizeFocusServer)initWithConnector:(id)a3;
- (void)_processModeChangeEvent:(id)a3;
- (void)dealloc;
- (void)processModeChangeEvent:(id)a3;
- (void)sendSuggestion:(id)a3 eventType:(unint64_t)a4;
@end

@implementation ATXUserEducationSuggestionCustomizeFocusServer

- (ATXUserEducationSuggestionCustomizeFocusServer)initWithConnector:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = ATXUserEducationSuggestionCustomizeFocusServer;
  v6 = [(ATXUserEducationSuggestionBaseServer *)&v13 init];
  if (v6)
  {
    v7 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v15 = "[ATXUserEducationSuggestionCustomizeFocusServer initWithConnector:]";
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: starting server", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CEB440] sharedInstance];
    modeConfigurationClient = v6->_modeConfigurationClient;
    v6->_modeConfigurationClient = v8;

    objc_storeStrong(&v6->_connector, a3);
    v10 = +[ATXUserEducationSuggestionModeChangeNotifier sharedInstance];
    [v10 registerObserver:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  v3 = +[ATXUserEducationSuggestionModeChangeNotifier sharedInstance];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = ATXUserEducationSuggestionCustomizeFocusServer;
  [(ATXUserEducationSuggestionCustomizeFocusServer *)&v4 dealloc];
}

- (void)processModeChangeEvent:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__ATXUserEducationSuggestionCustomizeFocusServer_processModeChangeEvent___block_invoke;
  v6[3] = &unk_278596C10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v6];
}

- (void)_processModeChangeEvent:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 atx_dndModeSemanticType];
  v6 = DNDModeSemanticTypeToString();
  v7 = [MEMORY[0x277CEB930] suggestionsAreSupportedForModeSemanticType:v5];
  v8 = __atxlog_handle_context_user_education_suggestions();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v9)
    {
      *buf = 136315394;
      *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: processing new userFocusComputedModeEvent: %{public}@", buf, 0x16u);
    }

    v8 = [objc_alloc(MEMORY[0x277CEB930]) initWithModeSemanticType:v5];
    v10 = [v8 suggestionWasAlreadyShown];
    v11 = [v8 suggestionWasAlreadyDismissed];
    if ([v4 starting])
    {
      if (v10)
      {
        v12 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          *&buf[12] = 2112;
          *&buf[14] = v6;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%s: Not showing user education suggestion because it was already shown in mode: %@", buf, 0x16u);
        }

LABEL_33:

        goto LABEL_54;
      }

      if ([v4 updateSource] != 1)
      {
        v12 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%s: Not showing user education suggestion because mode update source wasn't local.", buf, 0xCu);
        }

        goto LABEL_33;
      }

      v14 = objc_alloc(MEMORY[0x277CCAD78]);
      v15 = [v4 mode];
      v16 = [v14 initWithUUIDString:v15];

      if (!v16)
      {
        v18 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:];
        }

        goto LABEL_53;
      }

      v17 = [(ATXDNDModeConfigurationClient *)self->_modeConfigurationClient modeConfigurationForDNDModeWithUUID:v16 useCache:0];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 configuration];
        if ([v19 applicationConfigurationType] == 2)
        {
          v20 = [v18 configuration];
          v21 = [v20 senderConfigurationType] == 2;

          if (v21)
          {
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v45 = __Block_byref_object_copy__58;
            v46 = __Block_byref_object_dispose__58;
            v47 = 0;
            v22 = dispatch_semaphore_create(0);
            getPRSServiceClass();
            v23 = objc_opt_new();
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __74__ATXUserEducationSuggestionCustomizeFocusServer__processModeChangeEvent___block_invoke;
            v34[3] = &unk_27859DA78;
            v24 = v22;
            v35 = v24;
            v25 = v23;
            v36 = v25;
            v37 = buf;
            [v25 fetchActiveConfiguration:v34];
            if ([MEMORY[0x277D425A0] waitForSemaphore:v24 timeoutSeconds:5.0] == 1)
            {
              v26 = __atxlog_handle_context_user_education_suggestions();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                [ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:];
              }

              goto LABEL_51;
            }

            if (*(*&buf[8] + 40))
            {
              if ([v16 isEqual:?])
              {
                [(ATXUserEducationSuggestionCustomizeFocusServer *)self sendSuggestion:v8 eventType:0];
LABEL_52:

                _Block_object_dispose(buf, 8);
                goto LABEL_53;
              }

              v26 = __atxlog_handle_context_user_education_suggestions();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v32 = *(*&buf[8] + 40);
                *v38 = 136315650;
                v39 = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
                v40 = 2112;
                v41 = v16;
                v42 = 2112;
                v43 = v32;
                v29 = "%s: Not showing user education suggestion because current mode: %@ is not equal to the poster's linked mode: %@.";
                v30 = v26;
                v31 = 32;
                goto LABEL_50;
              }
            }

            else
            {
              v26 = __atxlog_handle_context_user_education_suggestions();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *v38 = 136315138;
                v39 = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
                v29 = "%s: Not showing user education suggestion because current poster is not linked to a mode.";
                v30 = v26;
                v31 = 12;
LABEL_50:
                _os_log_impl(&dword_2263AA000, v30, OS_LOG_TYPE_DEFAULT, v29, v38, v31);
              }
            }

LABEL_51:

            goto LABEL_52;
          }
        }

        else
        {
        }

        v28 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_DEFAULT, "%s: Not showing user education suggestion because current mode is not toothless.", buf, 0xCu);
        }
      }

      else
      {
        v28 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:];
        }
      }

LABEL_53:
      goto LABEL_54;
    }

    if (v11 & 1 | ((v10 & 1) == 0))
    {
      if ((v10 & 1) == 0)
      {
        v12 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          *&buf[12] = 2114;
          *&buf[14] = v6;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%s: Not dismissing suggestion for mode %{public}@ because it hasn't been shown yet.", buf, 0x16u);
        }

        goto LABEL_33;
      }

      if (v11)
      {
        v12 = __atxlog_handle_context_user_education_suggestions();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
          *&buf[12] = 2114;
          *&buf[14] = v6;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_DEFAULT, "%s: Not dismissing suggestion for mode %{public}@ because it has already been dismissed.", buf, 0x16u);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v27 = __atxlog_handle_context_user_education_suggestions();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
        *&buf[12] = 2114;
        *&buf[14] = v6;
        *&buf[22] = 2114;
        v45 = v6;
        _os_log_impl(&dword_2263AA000, v27, OS_LOG_TYPE_DEFAULT, "%s: Dismissing suggestion for mode %{public}@ because we're exiting %{public}@ mode and its been shown but not yet dismissed", buf, 0x20u);
      }

      [(ATXUserEducationSuggestionCustomizeFocusServer *)self sendSuggestion:v8 eventType:1];
    }
  }

  else if (v9)
  {
    v13 = [MEMORY[0x277CEB930] supportedModeSemanticTypeStrings];
    *buf = 136315650;
    *&buf[4] = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]";
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2114;
    v45 = v13;
    _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Not processing mode change event because mode: %{public}@ is not in the supported modes: %{public}@", buf, 0x20u);
  }

LABEL_54:

  v33 = *MEMORY[0x277D85DE8];
}

void __74__ATXUserEducationSuggestionCustomizeFocusServer__processModeChangeEvent___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __74__ATXUserEducationSuggestionCustomizeFocusServer__processModeChangeEvent___block_invoke_22;
    v9[3] = &unk_27859DA50;
    v6 = *(a1 + 40);
    v11 = *(a1 + 48);
    v10 = *(a1 + 32);
    [v6 fetchFocusUUIDForConfiguration:a2 completion:v9];
  }

  else
  {
    v7 = __atxlog_handle_context_user_education_suggestions();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[ATXUserEducationSuggestionCustomizeFocusServer _processModeChangeEvent:]_block_invoke";
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch poster configuration. Error: %{public}@", buf, 0x16u);
    }

    dispatch_semaphore_signal(*(a1 + 32));
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __74__ATXUserEducationSuggestionCustomizeFocusServer__processModeChangeEvent___block_invoke_22(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)sendSuggestion:(id)a3 eventType:(unint64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x277CEB938]) initWithUserEducationSuggestion:v6 userEducationSuggestionEventType:a4];
  v8 = __atxlog_handle_context_user_education_suggestions();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[ATXUserEducationSuggestionCustomizeFocusServer sendSuggestion:eventType:]";
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
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Timed out querying for focus mode UUID associated with the current mode: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_processModeChangeEvent:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: unable to get mode configuration for current mode uuid: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_processModeChangeEvent:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_25();
  OUTLINED_FUNCTION_1_3(&dword_2263AA000, v0, v1, "%s: Not showing suggestion. Unable to get mode uuid from event %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end