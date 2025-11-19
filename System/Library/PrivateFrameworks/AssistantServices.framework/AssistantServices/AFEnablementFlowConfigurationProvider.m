@interface AFEnablementFlowConfigurationProvider
+ (id)_createConfigurationForParameters:(id)a3;
+ (void)_emitEnablementFlowLoggingForConfigurationParameters:(id)a3 didEnable:(BOOL)a4;
- (AFEnablementFlowConfigurationProvider)init;
- (id)_storedRecognitionLanguageCode;
- (id)_storedVoiceInfo;
- (void)_resolveIfNewUserWithParameters:(id)a3 forRecognitionLanguages:(id)a4 completion:(id)a5;
- (void)_resolveVoiceSelection:(id)a3 forRecognitionLanguages:(id)a4 completion:(id)a5;
- (void)configurationForEnablementFlow:(int64_t)a3 recognitionLanguageCodes:(id)a4 completion:(id)a5;
@end

@implementation AFEnablementFlowConfigurationProvider

- (id)_storedVoiceInfo
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 _outputVoiceWithFallback:0];

  return v3;
}

- (id)_storedRecognitionLanguageCode
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 _languageCodeWithFallback:0];

  return v3;
}

- (void)_resolveVoiceSelection:(id)a3 forRecognitionLanguages:(id)a4 completion:(id)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v33 = a5;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__35499;
  v50 = __Block_byref_object_dispose__35500;
  v31 = v7;
  v51 = v31;
  v9 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v53 = "[AFEnablementFlowConfigurationProvider _resolveVoiceSelection:forRecognitionLanguages:completion:]";
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v35 = [MEMORY[0x1E695DF70] array];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v42 objects:v60 count:16];
  if (v10)
  {
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v42 + 1) + 8 * i);
        v14 = AFOutputVoiceLanguageForRecognitionLanguage(v13);
        v15 = MEMORY[0x1E695DEC8];
        v16 = [AFVoiceInfo allVoicesForSiriSessionLanguage:v14];
        v17 = [v15 arrayWithArray:v16];

        v18 = MEMORY[0x1E696AE18];
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __99__AFEnablementFlowConfigurationProvider__resolveVoiceSelection_forRecognitionLanguages_completion___block_invoke;
        v40[3] = &unk_1E73473C0;
        v19 = v14;
        v41 = v19;
        v20 = [v18 predicateWithBlock:v40];
        v21 = [v17 filteredArrayUsingPredicate:v20];

        v22 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 136315906;
          v53 = "[AFEnablementFlowConfigurationProvider _resolveVoiceSelection:forRecognitionLanguages:completion:]";
          v54 = 2112;
          v55 = v21;
          v56 = 2112;
          v57 = v19;
          v58 = 2112;
          v59 = v13;
          _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s Output voices %@ for default output language %@ for recognition language %@", buf, 0x2Au);
        }

        if (v21)
        {
          [v35 addObjectsFromArray:v21];
        }

        if ([v21 count] >= 2)
        {
          v23 = [v47[5] mutatedCopyWithMutator:&__block_literal_global_82_35507];
          v24 = v47[5];
          v47[5] = v23;
        }

        v25 = v47[5];
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __99__AFEnablementFlowConfigurationProvider__resolveVoiceSelection_forRecognitionLanguages_completion___block_invoke_2;
        v36[3] = &unk_1E73473E8;
        v39 = &v46;
        v26 = v21;
        v37 = v26;
        v38 = v13;
        v27 = [v25 mutatedCopyWithMutator:v36];
        v28 = v47[5];
        v47[5] = v27;
      }

      v10 = [obj countByEnumeratingWithState:&v42 objects:v60 count:16];
    }

    while (v10);
  }

  v29 = [AFEnablementFlowConfigurationProvider _createConfigurationForParameters:v47[5]];
  v33[2](v33, v29);

  _Block_object_dispose(&v46, 8);
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __99__AFEnablementFlowConfigurationProvider__resolveVoiceSelection_forRecognitionLanguages_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 languageCode];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __99__AFEnablementFlowConfigurationProvider__resolveVoiceSelection_forRecognitionLanguages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = a2;
  v6 = [v4 outputVoiceCountForRecognitionLanguage];
  v8 = [v3 dictionaryWithDictionary:v6];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "count")}];
  [v8 setObject:v7 forKey:*(a1 + 40)];

  [v5 setOutputVoiceCountForRecognitionLanguage:v8];
}

- (void)_resolveIfNewUserWithParameters:(id)a3 forRecognitionLanguages:(id)a4 completion:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__35499;
  v36 = __Block_byref_object_dispose__35500;
  v11 = v8;
  v37 = v11;
  v12 = [v11 mutatedCopyWithMutator:&__block_literal_global_35514];
  v13 = v33[5];
  v33[5] = v12;

  if ([v33[5] enablementFlow] == 9)
  {
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v39 = "[AFEnablementFlowConfigurationProvider _resolveIfNewUserWithParameters:forRecognitionLanguages:completion:]";
      _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s Tinker Enablement flow, treat as new user", buf, 0xCu);
    }

    v15 = [v33[5] mutatedCopyWithMutator:&__block_literal_global_60_35516];
    v16 = v33[5];
    v33[5] = v15;

    [(AFEnablementFlowConfigurationProvider *)self _resolveVoiceSelection:v33[5] forRecognitionLanguages:v9 completion:v10];
  }

  else
  {
    v17 = [(AFEnablementFlowConfigurationProvider *)self _storedRecognitionLanguageCode];
    v18 = [(AFEnablementFlowConfigurationProvider *)self _storedVoiceInfo];
    if (v17 | v18)
    {
      v19 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v39 = "[AFEnablementFlowConfigurationProvider _resolveIfNewUserWithParameters:forRecognitionLanguages:completion:]";
        v40 = 2112;
        v41 = v17;
        v42 = 2112;
        v43 = v18;
        _os_log_impl(&dword_1912FE000, v19, OS_LOG_TYPE_INFO, "%s Not a new user. Language Stored: %@, outputVoice stored: %@", buf, 0x20u);
      }

      v20 = [v33[5] mutatedCopyWithMutator:&__block_literal_global_63_35518];
      v21 = v33[5];
      v33[5] = v20;

      v22 = [AFEnablementFlowConfigurationProvider _createConfigurationForParameters:v33[5]];
      v10[2](v10, v22);
    }

    else
    {
      objc_initWeak(&location, self);
      v23 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v39 = "[AFEnablementFlowConfigurationProvider _resolveIfNewUserWithParameters:forRecognitionLanguages:completion:]";
        _os_log_impl(&dword_1912FE000, v23, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
      }

      settingsConnection = self->_settingsConnection;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_65;
      v26[3] = &unk_1E7347398;
      objc_copyWeak(&v30, &location);
      v29 = &v32;
      v28 = v10;
      v27 = v9;
      [(AFSettingsConnection *)settingsConnection hasEverSetLanguageCodeWithCompletion:v26];

      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }
  }

  _Block_object_dispose(&v32, 8);

  v25 = *MEMORY[0x1E69E9840];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_65(uint64_t a1, int a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v29 = "[AFEnablementFlowConfigurationProvider _resolveIfNewUserWithParameters:forRecognitionLanguages:completion:]_block_invoke";
    v30 = 1024;
    v31 = a2;
    v32 = 2112;
    v33 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s hasEverSetLanguageCode: %d, error:%@", buf, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = [*(*(*(a1 + 48) + 8) + 40) mutatedCopyWithMutator:&__block_literal_global_68_35522];
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (!WeakRetained)
  {
    v17 = [*(*(*(a1 + 48) + 8) + 40) mutatedCopyWithMutator:&__block_literal_global_70];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

LABEL_8:
    v20 = *(a1 + 40);
    v21 = [AFEnablementFlowConfigurationProvider _createConfigurationForParameters:*(*(*(a1 + 48) + 8) + 40)];
    (*(v20 + 16))(v20, v21);

    goto LABEL_9;
  }

  if (!v5)
  {
    if (!a2)
    {
      v23 = [*(*(*(a1 + 48) + 8) + 40) mutatedCopyWithMutator:&__block_literal_global_73];
      v24 = *(*(a1 + 48) + 8);
      v25 = *(v24 + 40);
      *(v24 + 40) = v23;

      [WeakRetained _resolveVoiceSelection:*(*(*(a1 + 48) + 8) + 40) forRecognitionLanguages:*(a1 + 32) completion:*(a1 + 40)];
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_3;
  v26[3] = &unk_1E7347370;
  v27 = v5;
  v12 = [v11 mutatedCopyWithMutator:v26];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = *(a1 + 40);
  v16 = [AFEnablementFlowConfigurationProvider _createConfigurationForParameters:*(*(*(a1 + 48) + 8) + 40)];
  (*(v15 + 16))(v15, v16);

LABEL_9:
  v22 = *MEMORY[0x1E69E9840];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [AFError errorWithCode:41];
  [v2 setUserStatusFetchError:v3];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_66(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 now];
  [v3 setDateEndedResolvingUserStatus:v4];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_61(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 now];
  [v3 setDateEndedResolvingUserStatus:v4];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke_58(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v4 = a2;
  v3 = [v2 now];
  [v4 setDateEndedResolvingUserStatus:v3];

  [v4 setNewUser:1];
}

void __108__AFEnablementFlowConfigurationProvider__resolveIfNewUserWithParameters_forRecognitionLanguages_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DF00];
  v3 = a2;
  v4 = [v2 now];
  [v3 setDateStartedResolvingUserStatus:v4];
}

- (void)configurationForEnablementFlow:(int64_t)a3 recognitionLanguageCodes:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [AFEnablementConfigurationProviderParameters alloc];
  v11 = [MEMORY[0x1E695DF20] dictionary];
  LOBYTE(v12) = 0;
  v13 = [(AFEnablementConfigurationProviderParameters *)v10 initWithEnablementFlow:a3 newUser:0 userStatusFetchError:0 dateStartedResolvingUserStatus:0 dateEndedResolvingUserStatus:0 experiment:0 experimentFetchError:0 dateStartedResolvingExperiment:0 dateEndedResolvingExperiment:0 outputVoiceCountForRecognitionLanguage:v11 recognitionLanguageWithMultipleOutputVoicesExists:v12];

  [(AFEnablementFlowConfigurationProvider *)self _resolveIfNewUserWithParameters:v13 forRecognitionLanguages:v9 completion:v8];
}

- (AFEnablementFlowConfigurationProvider)init
{
  v6.receiver = self;
  v6.super_class = AFEnablementFlowConfigurationProvider;
  v2 = [(AFEnablementFlowConfigurationProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AFSettingsConnection);
    settingsConnection = v2->_settingsConnection;
    v2->_settingsConnection = v3;
  }

  return v2;
}

+ (void)_emitEnablementFlowLoggingForConfigurationParameters:(id)a3 didEnable:(BOOL)a4
{
  v4 = a3;
  v5 = [v4 userStatusFetchError];
  [v4 enablementFlow];
  v8 = v4;
  v6 = v5;
  v7 = v4;
  AnalyticsSendEventLazy();
}

id __104__AFEnablementFlowConfigurationProvider__emitEnablementFlowLoggingForConfigurationParameters_didEnable___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *(a1 + 48);
  if (v3 > 9)
  {
    v4 = @"(unknown)";
  }

  else
  {
    v4 = off_1E73465B0[v3];
  }

  v5 = v4;
  [v2 setObject:v5 forKey:@"flow"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "newUser")}];
  [v2 setObject:v6 forKey:@"newUser"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [v2 setObject:v7 forKey:@"didEnable"];

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v8, "code")];
    [v2 setObject:v9 forKey:@"errorCode"];
  }

  return v2;
}

+ (id)_createConfigurationForParameters:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v21 = "+[AFEnablementFlowConfigurationProvider _createConfigurationForParameters:]";
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  v5 = [v3 userStatusFetchError];
  if (v5)
  {

LABEL_9:
    v7 = 0;
    v8 = 0;
    goto LABEL_10;
  }

  v6 = [v3 experimentFetchError];

  if (v6 || ![v3 recognitionLanguageWithMultipleOutputVoicesExists])
  {
    goto LABEL_9;
  }

  if ([v3 newUser])
  {
    v7 = +[AFEnablementFlowConfigurationProvider _shouldAllowRandomVoiceSelectionForEnablementFlow:](AFEnablementFlowConfigurationProvider, "_shouldAllowRandomVoiceSelectionForEnablementFlow:", [v3 enablementFlow]);
    v8 = 1;
  }

  else
  {
    v16 = +[AFPreferences sharedPreferences];
    v17 = [v16 shouldSkipIntelligenceVoiceSelectionUpsell];

    v7 = v17 ^ 1u;
    v8 = v7;
  }

LABEL_10:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __75__AFEnablementFlowConfigurationProvider__createConfigurationForParameters___block_invoke;
  v18[3] = &unk_1E7347818;
  v19 = v3;
  v9 = v3;
  v10 = MEMORY[0x193AFB7B0](v18);
  v11 = [AFEnablementConfiguration alloc];
  v12 = [v9 outputVoiceCountForRecognitionLanguage];
  v13 = [(AFEnablementConfiguration *)v11 initWithRequiresVoiceSelection:v8 voiceSelectionAllowsChooseForMe:v7 voiceCountForRecognitionLanguage:v12 completionLoggingBlock:v10];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end