@interface ATXSuggestedPagesEnterpriseAppDataSource
- (id)provideAppsForSuggestedPageType:(int64_t)a3 environment:(id)a4;
@end

@implementation ATXSuggestedPagesEnterpriseAppDataSource

- (id)provideAppsForSuggestedPageType:(int64_t)a3 environment:(id)a4
{
  v5 = a4;
  if (a3 == 7)
  {
    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v6 managedAppIDs];
    v8 = v7;
    v9 = MEMORY[0x277CBEBF8];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    v11 = __atxlog_handle_modes();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [ATXSuggestedPagesEnterpriseAppDataSource provideAppsForSuggestedPageType:v10 environment:v11];
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__ATXSuggestedPagesEnterpriseAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke;
    v14[3] = &unk_278598578;
    v15 = v5;
    v12 = [v10 _pas_mappedArrayWithTransform:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __88__ATXSuggestedPagesEnterpriseAppDataSource_provideAppsForSuggestedPageType_environment___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([MEMORY[0x277CEB3B8] isBetaAppForBundle:v3])
  {
    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v3;
      v5 = "ATXSuggestedPagesEnterpriseAppDataSource: not considering beta app: %@";
LABEL_8:
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, v5, &v12, 0xCu);
    }
  }

  else
  {
    v6 = [*(a1 + 32) appLaunchCounts];
    v7 = [v6 objectForKeyedSubscript:v3];
    v8 = [v7 rawLaunchCount];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CEB560]) initWithBundleId:v3 predictionSource:@"Enterprise"];
      goto LABEL_10;
    }

    v4 = __atxlog_handle_modes();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v3;
      v5 = "ATXSuggestedPagesEnterpriseAppDataSource: not considering app that was not launched: %@";
      goto LABEL_8;
    }
  }

  v9 = 0;
LABEL_10:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)provideAppsForSuggestedPageType:(uint64_t)a1 environment:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "ATXSuggestedPagesEnterpriseAppDataSource: suggested enterprise apps: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end