@interface ATXSuggestedPagesAppAggregator
- (ATXSuggestedPagesAppAggregator)init;
- (ATXSuggestedPagesAppAggregator)initWithSources:(id)a3;
- (id)_dockedApps;
- (id)_sortedApps:(id)a3 sortedFirstPageApps:(id)a4 appLaunchCounts:(id)a5;
- (id)_sortedAppsOnFirstHomeScreenPage;
- (id)provideAppsForSuggestedPageType:(int64_t)a3 candidateApps:(id)a4 environment:(id)a5;
- (int64_t)_sortApp1:(id)a3 app2:(id)a4 appLaunchCounts:(id)a5;
- (void)_dockedApps;
- (void)_sortedAppsOnFirstHomeScreenPage;
- (void)_validateApps:(id)a3 pageType:(int64_t)a4;
- (void)_validateApps:(id)a3 withAppLaunchCounts:(id)a4;
@end

@implementation ATXSuggestedPagesAppAggregator

- (ATXSuggestedPagesAppAggregator)init
{
  v14[7] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v14[0] = v3;
  v14[1] = v4;
  v14[2] = v5;
  v14[3] = v6;
  v14[4] = v7;
  v14[5] = v8;
  v14[6] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:7];
  v11 = [(ATXSuggestedPagesAppAggregator *)self initWithSources:v10];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (ATXSuggestedPagesAppAggregator)initWithSources:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ATXSuggestedPagesAppAggregator;
  v5 = [(ATXSuggestedPagesAppAggregator *)&v12 init];
  if (v5)
  {
    v6 = [v4 copy];
    sources = v5->_sources;
    v5->_sources = v6;

    v8 = objc_opt_new();
    suggestedPagesTunableConstants = v5->_suggestedPagesTunableConstants;
    v5->_suggestedPagesTunableConstants = v8;

    v10 = v5;
  }

  return v5;
}

- (id)provideAppsForSuggestedPageType:(int64_t)a3 candidateApps:(id)a4 environment:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v34 = a4;
  v8 = a5;
  v9 = objc_opt_new();
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v33 = self;
  v10 = self->_sources;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v40;
    v14 = MEMORY[0x277CBEBF8];
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [*(*(&v39 + 1) + 8 * i) provideAppsForSuggestedPageType:a3 environment:{v8, v33}];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v14;
        }

        v19 = v18;

        [v9 addObjectsFromArray:v19];
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v12);
  }

  if ([v34 count])
  {
    [v9 intersectSet:v34];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v34;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v36;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [*(*(&v35 + 1) + 8 * j) setPredictionSource:{@"User", v33}];
        }

        v22 = [v20 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v22);
    }

    [v9 unionSet:v20];
  }

  v25 = v33;
  [(ATXSuggestedPagesAppAggregator *)v33 _validateApps:v9 pageType:a3, v33];
  v26 = [v8 appLaunchCounts];
  [(ATXSuggestedPagesAppAggregator *)v25 _validateApps:v9 withAppLaunchCounts:v26];

  v27 = [v9 array];
  v28 = [(ATXSuggestedPagesAppAggregator *)v25 _sortedAppsOnFirstHomeScreenPage];
  v29 = [v8 appLaunchCounts];
  v30 = [(ATXSuggestedPagesAppAggregator *)v25 _sortedApps:v27 sortedFirstPageApps:v28 appLaunchCounts:v29];

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)_validateApps:(id)a3 pageType:(int64_t)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_opt_new();
  v40 = [(ATXSuggestedPagesAppAggregator *)self _dockedApps];
  v8 = [ATXSuggestedPagesUtils semanticTypeForSuggestedPageType:a4];
  v36 = v8;
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CEB440] sharedInstance];
    v11 = [v10 iOSAppDenyListForMode:{objc_msgSend(v9, "integerValue")}];

    if ([v11 count])
    {
      v39 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v11];
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v42;
    v38 = *MEMORY[0x277CBF040];
    v37 = *MEMORY[0x277CBF010];
    do
    {
      v16 = 0;
      do
      {
        if (*v42 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v41 + 1) + 8 * v16);
        v18 = MEMORY[0x277CEB3B8];
        v19 = [v17 bundleId];
        LOBYTE(v18) = [v18 isInstalledAndNotRestrictedForBundle:v19];

        if ((v18 & 1) == 0)
        {
          v22 = __atxlog_handle_modes();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            v23 = v22;
            v24 = "ATXSuggestedPagesAppAggregator: app (%@) is not installed or restricted";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v20 = MEMORY[0x277CEB3B8];
        v21 = [v17 bundleId];
        LODWORD(v20) = [v20 isHiddenFromSpringBoardWithBundleId:v21];

        if (v20)
        {
          v22 = __atxlog_handle_modes();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            v23 = v22;
            v24 = "ATXSuggestedPagesAppAggregator: app (%@) is hidden from SpringBoard";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v25 = [v17 bundleId];
        v26 = [v40 containsObject:v25];

        if (v26)
        {
          v22 = __atxlog_handle_modes();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            v23 = v22;
            v24 = "ATXSuggestedPagesAppAggregator: app (%@) is already in the Dock";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v27 = [v17 bundleId];
        v28 = [v39 containsObject:v27];

        if (v28)
        {
          v22 = __atxlog_handle_modes();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            v23 = v22;
            v24 = "ATXSuggestedPagesAppAggregator: app (%@) is on silence list in Focus settings";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v29 = [v17 bundleId];
        v30 = CFPreferencesCopyValue(@"SBSearchSuggestAppDisabled", @"com.apple.spotlightui", v38, v37);
        v31 = [v30 containsObject:v29];

        if (v31)
        {
          v22 = __atxlog_handle_modes();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            v23 = v22;
            v24 = "ATXSuggestedPagesAppAggregator: app (%@) is turned off in Siri settings";
            goto LABEL_18;
          }

          goto LABEL_19;
        }

        v32 = MEMORY[0x277CEB3B8];
        v33 = [v17 bundleId];
        LODWORD(v32) = [v32 isInternalAppForBundleId:v33];

        if (v32)
        {
          v22 = __atxlog_handle_modes();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v46 = v17;
            v23 = v22;
            v24 = "ATXSuggestedPagesAppAggregator: app (%@) is an internal app";
LABEL_18:
            _os_log_impl(&dword_2263AA000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
          }

LABEL_19:

          [v7 addObject:v17];
        }

        ++v16;
      }

      while (v14 != v16);
      v34 = [v12 countByEnumeratingWithState:&v41 objects:v47 count:16];
      v14 = v34;
    }

    while (v34);
  }

  if ([v7 count])
  {
    [v12 minusSet:v7];
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_validateApps:(id)a3 withAppLaunchCounts:(id)a4
{
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v28 = objc_opt_new();
  v37 = @"com.apple.Preferences";
  v7 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:15 uniqueDaysLaunched:10];
  v38[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v31;
    *&v11 = 138412290;
    v27 = v11;
    obj = v9;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * i);
        v16 = [v15 bundleId];
        v17 = [v8 objectForKeyedSubscript:v16];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:0 uniqueDaysLaunched:0];
        }

        v20 = v19;

        v21 = [v6 objectForKeyedSubscript:v16];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = [objc_alloc(MEMORY[0x277CEB340]) initWithRawLaunchCount:0 uniqueDaysLaunched:0];
        }

        v24 = v23;

        if (([v24 isGreaterThanOrEqualToData:v20] & 1) == 0)
        {
          v25 = __atxlog_handle_modes();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v35 = v15;
            _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ATXSuggestedPagesAppAggregator: app (%@) does not meet launch count threshold", buf, 0xCu);
          }

          [v28 addObject:v15];
        }
      }

      v9 = obj;
      v12 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v12);
  }

  if ([v28 count])
  {
    [v9 minusSet:v28];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)_dockedApps
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CEB568]);
  v8 = 0;
  v4 = [v3 loadDockAppListWithError:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = __atxlog_handle_modes();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXSuggestedPagesAppAggregator *)v5 _dockedApps];
    }
  }

  objc_autoreleasePoolPop(v2);

  return v4;
}

- (id)_sortedAppsOnFirstHomeScreenPage
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CEB568]);
  v13 = 0;
  v4 = [v3 loadHomeScreenPageConfigurationsWithError:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = __atxlog_handle_modes();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXSuggestedPagesAppAggregator *)v5 _sortedAppsOnFirstHomeScreenPage];
    }

    v7 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = objc_opt_new();
    v9 = [v4 firstObject];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __66__ATXSuggestedPagesAppAggregator__sortedAppsOnFirstHomeScreenPage__block_invoke;
    v11[3] = &unk_278597D68;
    v7 = v8;
    v12 = v7;
    [v9 enumerateAppsConsideringFolders:0 block:v11];

    v6 = v12;
  }

  objc_autoreleasePoolPop(v2);

  return v7;
}

void __66__ATXSuggestedPagesAppAggregator__sortedAppsOnFirstHomeScreenPage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleId];
  [v2 addObject:v3];
}

- (id)_sortedApps:(id)a3 sortedFirstPageApps:(id)a4 appLaunchCounts:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 _pas_filteredArrayWithTest:&__block_literal_global_19];
  v12 = [v11 count];

  if ([v9 count] && (v13 = v12 / objc_msgSend(v9, "count"), -[ATXSuggestedPagesTunableConstants maxRatioOfAppleAppsForFirstPageSorting](self->_suggestedPagesTunableConstants, "maxRatioOfAppleAppsForFirstPageSorting"), v13 <= v14))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __82__ATXSuggestedPagesAppAggregator__sortedApps_sortedFirstPageApps_appLaunchCounts___block_invoke_3;
    v20[3] = &unk_278597DD8;
    v21 = v9;
    v22 = self;
    v23 = v10;
    v18 = v10;
    v16 = [v8 sortedArrayUsingComparator:v20];

    v17 = v21;
  }

  else
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __82__ATXSuggestedPagesAppAggregator__sortedApps_sortedFirstPageApps_appLaunchCounts___block_invoke_2;
    v24[3] = &unk_278597DB0;
    v24[4] = self;
    v25 = v10;
    v15 = v10;
    v16 = [v8 sortedArrayUsingComparator:v24];
    v17 = v25;
  }

  return v16;
}

uint64_t __82__ATXSuggestedPagesAppAggregator__sortedApps_sortedFirstPageApps_appLaunchCounts___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 bundleId];
  v9 = [v7 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 bundleId];
  v12 = [v10 indexOfObject:v11];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = v9 == 0x7FFFFFFFFFFFFFFFLL;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }

    if (v14 && v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [*(a1 + 40) _sortApp1:v5 app2:v6 appLaunchCounts:*(a1 + 48)];
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v12];
    v17 = [v15 compare:v16];
  }

  return v17;
}

- (int64_t)_sortApp1:(id)a3 app2:(id)a4 appLaunchCounts:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v9 bundleId];
  v11 = [v7 objectForKeyedSubscript:v10];
  v12 = [v11 rawLaunchCount];

  v13 = [v8 bundleId];
  v14 = [v7 objectForKeyedSubscript:v13];

  v15 = [v14 rawLaunchCount];
  v16 = [v9 predictionSource];

  LODWORD(v13) = [v16 isEqualToString:@"Mode Entity"];
  if (v13)
  {
    v12 = v12 / 10.0;
  }

  v17 = [v8 predictionSource];

  v18 = [v17 isEqualToString:@"Mode Entity"];
  v19 = v15 / 10.0;
  if (!v18)
  {
    v19 = v15;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:v19];
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v22 = [v20 compare:v21];

  return v22;
}

- (void)_dockedApps
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesAppAggregator: could not fetch Dock apps: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sortedAppsOnFirstHomeScreenPage
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXSuggestedPagesAppAggregator: could not load home screen configuration: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end