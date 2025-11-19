@interface ATXMagicalMomentsBlendingUpdater
+ (id)clientModelForMagicalMomentsPredictions;
+ (id)clientModelSpecForMagicalMomentsPredictions;
+ (id)feedbackMetadataForMmMap:(id)a3;
+ (void)updateBlendingLayerWithMagicalMomentsMap:(id)a3;
@end

@implementation ATXMagicalMomentsBlendingUpdater

+ (void)updateBlendingLayerWithMagicalMomentsMap:(id)a3
{
  v4 = a3;
  v5 = +[ATXAppPredictionBlacklist sharedInstance];
  v6 = [v5 disabledBundleIds];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __77__ATXMagicalMomentsBlendingUpdater_updateBlendingLayerWithMagicalMomentsMap___block_invoke;
  v19 = &unk_2785A19B8;
  v7 = v6;
  v20 = v7;
  v21 = &v22;
  v8 = [v4 keysOfEntriesPassingTest:&v16];
  v9 = v8;
  if (*(v23 + 24) == 1)
  {
    v10 = [v8 allObjects];
    v11 = [v4 dictionaryWithValuesForKeys:v10];

    v4 = v11;
  }

  v12 = [a1 clientModelSpecForMagicalMomentsPredictions];
  v13 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForAppsWithMagicalMomentsMap:v4 clientModelSpec:v12];
  v14 = [a1 clientModelForMagicalMomentsPredictions];
  v15 = [a1 feedbackMetadataForMmMap:v4];
  if (v15)
  {
    [v14 updateSuggestions:v13 feedbackMetadata:v15];
  }

  _Block_object_dispose(&v22, 8);
}

uint64_t __77__ATXMagicalMomentsBlendingUpdater_updateBlendingLayerWithMagicalMomentsMap___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if (v4)
  {
    v5 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "Removing blacklisted bundle id: %@", &v8, 0xCu);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

+ (id)feedbackMetadataForMmMap:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        v11 = MEMORY[0x277CCABB0];
        v12 = [v5 objectForKeyedSubscript:v10];
        v13 = [v11 numberWithInteger:{objc_msgSend(v12, "anchorType")}];
        [v4 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v14 = objc_autoreleasePoolPush();
  v21 = 0;
  v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v21];
  v16 = v21;
  objc_autoreleasePoolPop(v14);
  if (v16)
  {
    v17 = __atxlog_handle_pmm();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(ATXMagicalMomentsBlendingUpdater *)v16 feedbackMetadataForMmMap:v17];
    }

    v18 = 0;
  }

  else
  {
    v18 = v15;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)clientModelSpecForMagicalMomentsPredictions
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:24];
  v3 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v2 clientModelVersion:@"1.0" engagementResetPolicy:0];

  return v3;
}

+ (id)clientModelForMagicalMomentsPredictions
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:24];
  v3 = objc_alloc(MEMORY[0x277D42070]);
  v4 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v5 = [v4 blendingLayerServer];
  v6 = [v3 initWithClientModelId:v2 blendingLayerServer:v5];

  return v6;
}

+ (void)feedbackMetadataForMmMap:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error while archiving feedback metadata: %@. Not updating blending with mm predictions.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end