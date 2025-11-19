@interface ATXComplicationAppBundleIdsScorer
- (ATXComplicationAppBundleIdsScorer)init;
- (id)_scoredComplicationBundleIdsForModularSet:(id)a3 bundleIdToAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5 bundleIdToPriors:(id)a6 widgetAppBundleIdsOnHomeScreen:(id)a7 complicationBundleIdCountsOnWatch:(id)a8;
- (id)_widgetAppBundleIdsOnHomeScreen;
- (id)inputDescriptionForSignal:(id)a3 complicationAppBundleIds:(id)a4;
- (id)rankedComplicationAppBundleIdsGivenComplicationAppBundleIds:(id)a3 bundleIdToAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5 bundleIdToPriors:(id)a6 widgetAppBundleIdsOnHomeScreen:(id)a7;
- (id)scoredComplicationBundleIdsForModularSet:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5;
@end

@implementation ATXComplicationAppBundleIdsScorer

- (ATXComplicationAppBundleIdsScorer)init
{
  v14.receiver = self;
  v14.super_class = ATXComplicationAppBundleIdsScorer;
  v2 = [(ATXComplicationAppBundleIdsScorer *)&v14 init];
  if (v2)
  {
    v3 = BiomeLibrary();
    v4 = [v3 App];
    v5 = [v4 InFocus];
    appLaunchStream = v2->_appLaunchStream;
    v2->_appLaunchStream = v5;

    v7 = +[ATXComplicationSuggestionParameters sharedInstance];
    parameters = v2->_parameters;
    v2->_parameters = v7;

    v9 = objc_opt_new();
    hsCache = v2->_hsCache;
    v2->_hsCache = v9;

    v11 = [MEMORY[0x277CEB988] sharedInstance];
    watchFaceConfiguration = v2->_watchFaceConfiguration;
    v2->_watchFaceConfiguration = v11;
  }

  return v2;
}

- (id)inputDescriptionForSignal:(id)a3 complicationAppBundleIds:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = v8;
  if ([v6 isEqualToString:@"appLaunchUniqueDays"])
  {
    v35 = v6;
    v10 = [objc_alloc(MEMORY[0x277CEB388]) initWithStream:self->_appLaunchStream];
    v11 = [v10 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v7];

    [v8 appendString:@"Number of unique days bundleId was launched on:\n"];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v7;
    obj = v7;
    v12 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v41 + 1) + 8 * i);
          v17 = [v11 objectForKeyedSubscript:v16];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %lu\n", v16, objc_msgSend(v17, "uniqueDaysLaunched")];
          v8 = v9;
          [v9 appendString:v18];
        }

        v13 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v13);
    }

LABEL_18:

    v7 = v34;
    v6 = v35;
    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"appLaunchTotalCount"])
  {
    v35 = v6;
    v19 = [objc_alloc(MEMORY[0x277CEB388]) initWithStream:self->_appLaunchStream];
    v11 = [v19 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForApps:v7];

    [v8 appendString:@"Number of bundleId launches:\n"];
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v34 = v7;
    obj = v7;
    v20 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v37 + 1) + 8 * j);
          v25 = [v11 objectForKeyedSubscript:v24];
          v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %lu\n", v24, objc_msgSend(v25, "rawLaunchCount")];
          v8 = v9;
          [v9 appendString:v26];
        }

        v21 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v21);
    }

    goto LABEL_18;
  }

  if ([v6 isEqualToString:@"preConfiguredWidgets"])
  {
    v29 = [(ATXComplicationAppBundleIdsScorer *)self _widgetAppBundleIdsOnHomeScreen];
    v30 = @"Widget app bundleIds configured on HomeScreen:\n";
LABEL_26:
    [v8 appendString:v30];
    v31 = [v29 description];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = &stru_2839A6058;
    }

    [v8 appendString:v33];

    goto LABEL_19;
  }

  if ([v6 isEqualToString:@"appPriors"])
  {
    v29 = [(ATXComplicationSuggestionParameters *)self->_parameters appsToPriorsMapping];
    v30 = @"Prior values for bundleIds:\n";
    goto LABEL_26;
  }

  [v8 appendString:@"Unrecognized Signal"];
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)scoredComplicationBundleIdsForModularSet:(id)a3 aggregatedAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v8 = [(ATXComplicationAppBundleIdsScorer *)self _widgetAppBundleIdsOnHomeScreen];
  v9 = [(ATXComplicationSuggestionParameters *)self->_parameters appsToPriorsMapping];
  v10 = [(ATXWatchFaceConfigurationCollector *)self->_watchFaceConfiguration watchFaces];
  v11 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      v17 = v11;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = [*(*(&v26 + 1) + 8 * v16) complications];
        v11 = [v17 arrayByAddingObjectsFromArray:v18];

        ++v16;
        v17 = v11;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  v19 = [objc_alloc(MEMORY[0x277CCA940]) initWithArray:v11];
  v20 = [(ATXComplicationAppBundleIdsScorer *)self _scoredComplicationBundleIdsForModularSet:v25 bundleIdToAppLaunchData:v24 bundleIdToCompanionBundleId:v23 bundleIdToPriors:v9 widgetAppBundleIdsOnHomeScreen:v8 complicationBundleIdCountsOnWatch:v19];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)rankedComplicationAppBundleIdsGivenComplicationAppBundleIds:(id)a3 bundleIdToAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5 bundleIdToPriors:(id)a6 widgetAppBundleIdsOnHomeScreen:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_opt_new();
  v18 = [(ATXComplicationAppBundleIdsScorer *)self _scoredComplicationBundleIdsForModularSet:v16 bundleIdToAppLaunchData:v15 bundleIdToCompanionBundleId:v14 bundleIdToPriors:v13 widgetAppBundleIdsOnHomeScreen:v12 complicationBundleIdCountsOnWatch:v17];

  v19 = [v18 keysSortedByValueUsingComparator:&__block_literal_global_156];

  return v19;
}

- (id)_scoredComplicationBundleIdsForModularSet:(id)a3 bundleIdToAppLaunchData:(id)a4 bundleIdToCompanionBundleId:(id)a5 bundleIdToPriors:(id)a6 widgetAppBundleIdsOnHomeScreen:(id)a7 complicationBundleIdCountsOnWatch:(id)a8
{
  v45 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v39 = a4;
  v38 = a5;
  v37 = a6;
  v35 = a7;
  v14 = a8;
  v36 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v13;
  v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        v20 = [v39 objectForKeyedSubscript:v19];
        v21 = [v37 objectForKeyedSubscript:v19];
        v22 = [v35 containsObject:v19];
        v23 = [v38 objectForKeyedSubscript:v19];
        v24 = [v14 countForObject:v19];
        if (v23)
        {
          v24 = v24 + [v14 countForObject:v23];
        }

        v25 = MEMORY[0x277CCABB0];
        v26 = [v20 uniqueDaysLaunched];
        v27 = [v20 rawLaunchCount] / 5.0 + v26;
        [v21 doubleValue];
        v29 = v28 / 100.0 + v27;
        if (v22)
        {
          v30 = 3.0;
        }

        else
        {
          v30 = 0.0;
        }

        v31 = [v25 numberWithDouble:v30 + v29 + v24 * 2.0];
        [v36 setObject:v31 forKeyedSubscript:v19];
      }

      v16 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v16);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)_widgetAppBundleIdsOnHomeScreen
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(ATXHomeScreenConfigCache *)self->_hsCache loadHomeScreenPageConfigurationsWithError:0];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v41 = 0u;
  v26 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v26)
  {
    v25 = *v39;
    do
    {
      v4 = 0;
      do
      {
        if (*v39 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = *(*(&v38 + 1) + 8 * v4);
        context = objc_autoreleasePoolPush();
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v6 = [v5 stacks];
        v7 = [v5 panels];
        v8 = [v6 arrayByAddingObjectsFromArray:v7];

        v29 = v8;
        v9 = [v8 countByEnumeratingWithState:&v34 objects:v43 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v35;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v35 != v11)
              {
                objc_enumerationMutation(v29);
              }

              v13 = *(*(&v34 + 1) + 8 * i);
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v14 = [v13 widgets];
              v15 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v31;
                do
                {
                  for (j = 0; j != v16; ++j)
                  {
                    if (*v31 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = *(*(&v30 + 1) + 8 * j);
                    v20 = [v19 appBundleId];

                    if (v20)
                    {
                      v21 = [v19 appBundleId];
                      [v3 addObject:v21];
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v30 objects:v42 count:16];
                }

                while (v16);
              }
            }

            v10 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
          }

          while (v10);
        }

        objc_autoreleasePoolPop(context);
        v4 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v26);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

@end