@interface ATXSuggestedPagesModeAffinityAppDataSource
- (id)provideAppsForSuggestedPageType:(int64_t)a3 environment:(id)a4;
@end

@implementation ATXSuggestedPagesModeAffinityAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)a3 environment:(id)a4
{
  v5 = a4;
  if ((a3 - 3) < 9 && ((0x143u >> (a3 - 3)) & 1) != 0 || (v6 = [ATXSuggestedPagesUtils modeForSuggestedPageType:a3], v6 == 16))
  {
    v7 = 0;
  }

  else
  {
    v8 = v6;
    v9 = +[ATXModeEntityScorerServer sharedInstance];
    v10 = [v9 rankedAppsForMode:v8];
    v7 = [v10 _pas_mappedArrayWithTransform:&__block_literal_global_220];
  }

  return v7;
}

id __90__ATXSuggestedPagesModeAffinityAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 scoreMetadata];
  [v3 score];
  v5 = v4;
  v6 = objc_alloc(MEMORY[0x277CBEBD0]);
  v7 = [v6 initWithSuiteName:*MEMORY[0x277CEBD00]];
  v8 = objc_opt_new();
  v9 = [v7 objectForKey:*MEMORY[0x277CEBB70]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 doubleValue];
  }

  else
  {
    [v8 suggestedPagesModeAffinityAppDataSourceScoreThreshold];
  }

  v11 = v10;

  if (v5 <= v11)
  {
    v16 = 0;
  }

  else
  {
    v12 = __atxlog_handle_modes();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __90__ATXSuggestedPagesModeAffinityAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke_cold_1(v2, v12);
    }

    v13 = objc_alloc(MEMORY[0x277CEB560]);
    v14 = [v2 bundleId];
    v15 = [v2 scoreMetadata];
    [v15 score];
    v16 = [v13 initWithBundleId:v14 predictionSource:@"Mode Entity" score:?];
  }

  return v16;
}

void __90__ATXSuggestedPagesModeAffinityAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a1 bundleId];
  v5 = [a1 scoreMetadata];
  [v5 score];
  v8 = 138412546;
  v9 = v4;
  v10 = 2048;
  v11 = v6;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXSuggestedPagesModeAffinityAppDataSource: %@ passes threshold with score: %f", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end