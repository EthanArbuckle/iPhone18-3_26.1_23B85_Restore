@interface ATXSuggestedPagesGlobalModeAffinityAppDataSource
- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment;
@end

@implementation ATXSuggestedPagesGlobalModeAffinityAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)type environment:(id)environment
{
  environment = [ATXSuggestedPagesUtils modeForSuggestedPageType:type, environment];
  v5 = +[ATXGlobalAppModeAffinityModel supportedModeTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:environment];
  v7 = [v5 containsObject:v6];

  if (v7)
  {
    v8 = +[ATXModeEntityScorerServer sharedInstance];
    v9 = [v8 rankedAppsForMode:environment];
    v10 = [v9 _pas_mappedArrayWithTransform:&__block_literal_global_119];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __96__ATXSuggestedPagesGlobalModeAffinityAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 scoreMetadata];
  v4 = [v3 featureVector];

  v5 = [v4 objectForKeyedSubscript:@"correlationNumLocalOccurrences"];
  v6 = [v4 objectForKeyedSubscript:@"correlationEntitySpecificFeatures"];
  v7 = [v6 objectForKeyedSubscript:@"globalModeAffinityPrior"];

  v8 = 0;
  if (v5 && v7)
  {
    [v7 doubleValue];
    if (v9 <= 9.0 || [v5 integerValue] < 2)
    {
      v8 = 0;
    }

    else
    {
      v10 = __atxlog_handle_modes();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [v2 identifier];
        v16 = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "ATXSuggestedPagesGlobalModeAffinityAppDataSource: %@ passes threshold with score: %@", &v16, 0x16u);
      }

      v12 = objc_alloc(MEMORY[0x277CEB560]);
      v13 = [v2 identifier];
      [v7 doubleValue];
      v8 = [v12 initWithBundleId:v13 predictionSource:@"Global Mode Entity" score:?];
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

@end