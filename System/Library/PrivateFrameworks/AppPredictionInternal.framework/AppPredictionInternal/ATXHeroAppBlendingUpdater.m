@interface ATXHeroAppBlendingUpdater
+ (id)clientModelForHeroAppPredictions;
+ (id)clientModelSpecForHeroAppPredictions;
+ (id)nonBlacklistedPredictionsFrom:(id)a3;
+ (void)updateBlendingLayerWithHeroAppPredictions:(id)a3 currentLocation:(id)a4;
@end

@implementation ATXHeroAppBlendingUpdater

+ (void)updateBlendingLayerWithHeroAppPredictions:(id)a3 currentLocation:(id)a4
{
  v6 = a4;
  v7 = [a1 nonBlacklistedPredictionsFrom:a3];
  v8 = [a1 clientModelSpecForHeroAppPredictions];
  v9 = [ATXProactiveSuggestionBuilder proactiveSuggestionsForAppsWithHeroAppPredictions:v7 clientModelSpec:v8];
  v10 = [a1 clientModelForHeroAppPredictions];
  if (v6)
  {
    v11 = objc_autoreleasePoolPush();
    v15 = 0;
    v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v15];
    v13 = v15;
    objc_autoreleasePoolPop(v11);
    if (v13)
    {
      v14 = __atxlog_handle_hero();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [ATXHeroAppBlendingUpdater updateBlendingLayerWithHeroAppPredictions:v13 currentLocation:v14];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  [v10 updateSuggestions:v9 feedbackMetadata:v12];
  [ATXHeroSpotlightPOIBlendingUpdater updateBlendingLayerWithHeroAppPredictions:v7];
}

+ (id)clientModelSpecForHeroAppPredictions
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:23];
  v3 = [objc_alloc(MEMORY[0x277D42078]) initWithClientModelId:v2 clientModelVersion:@"1.0" engagementResetPolicy:0];

  return v3;
}

+ (id)nonBlacklistedPredictionsFrom:(id)a3
{
  v3 = a3;
  v4 = +[ATXAppPredictionBlacklist sharedInstance];
  v5 = [v4 disabledBundleIds];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__ATXHeroAppBlendingUpdater_nonBlacklistedPredictionsFrom___block_invoke;
  v9[3] = &unk_278598D10;
  v10 = v5;
  v6 = v5;
  v7 = [v3 _pas_filteredArrayWithTest:v9];

  return v7;
}

uint64_t __59__ATXHeroAppBlendingUpdater_nonBlacklistedPredictionsFrom___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 bundleId];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = __atxlog_handle_hero();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v3 bundleId];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "Removed blacklisted hero app prediction: %@", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 ^ 1u;
}

+ (id)clientModelForHeroAppPredictions
{
  v2 = [MEMORY[0x277D42070] clientModelIdFromClientModelType:23];
  v3 = objc_alloc(MEMORY[0x277D42070]);
  v4 = +[ATXClientModelSuggestionReceiver sharedInstance];
  v5 = [v4 blendingLayerServer];
  v6 = [v3 initWithClientModelId:v2 blendingLayerServer:v5];

  return v6;
}

+ (void)updateBlendingLayerWithHeroAppPredictions:(uint64_t)a1 currentLocation:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Error while archiving feedback metadata: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end