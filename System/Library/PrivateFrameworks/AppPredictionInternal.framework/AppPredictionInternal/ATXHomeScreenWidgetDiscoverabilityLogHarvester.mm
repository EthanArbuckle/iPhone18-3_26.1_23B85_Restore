@interface ATXHomeScreenWidgetDiscoverabilityLogHarvester
- (ATXHomeScreenWidgetDiscoverabilityLogHarvester)init;
- (BOOL)_isRegularlyUsedApp:(id)app;
- (BOOL)_shouldConsiderWidgetWhenCalculatingRankBasedMetricsWithFamilyMask:(unint64_t)mask;
- (id)_appLaunchCountForAppBundleId:(id)id;
- (id)_fetchStackSuggestionsWithDefaultStack:(id)stack;
- (id)_generateSummaryMetricsWithDescriptorCache:(id)cache withActivity:(id)activity;
- (id)_globalPopularityDictionary;
- (id)_initializeMetricsAccumulatorWithKeys:(id)keys;
- (id)_installed3PAppsSortedByUsage;
- (id)_installed3PAppsWithWidgetsSortedByUsage;
- (id)_installedAppsSortedByAppUsage;
- (id)_setOfTopTwentyInstalled3PApps;
- (id)_topTwentyInstalled3PAppsSortedByUsage;
- (id)_uniqueDaysAppHasBeenLaunchedOverLast28Days:(id)days;
- (id)dryRunResult;
- (void)_logAdblClassificationForUser;
- (void)_logRankBasedMetricsWithOnboardingStacks:(id)stacks algorithm:(int)algorithm;
- (void)_populateDistributionBasedMetricsWithAppMetrics:(id)metrics;
- (void)_populateRankBasedGlobalPopularityMetricsForWidgetPersonality:(id)personality withRank:(id)rank adoptionScore:(id)score;
- (void)_populateRankBasedMetricsForUsageWithRank:(id)rank appBundleId:(id)id mostRegularlyUsedApp:(id)app secondMostRegularlyUsedApp:(id)usedApp;
- (void)_populateRankBasedTimelineAdoptionMetricsForWidgetPersonality:(id)personality withRank:(id)rank adoptionScore:(id)score;
- (void)_queryAppUsageForAllInstalledApps;
- (void)generateWidgetDiscoverabilityMetricsWithActivity:(id)activity;
- (void)sendToCoreAnalytics;
@end

@implementation ATXHomeScreenWidgetDiscoverabilityLogHarvester

- (ATXHomeScreenWidgetDiscoverabilityLogHarvester)init
{
  v21.receiver = self;
  v21.super_class = ATXHomeScreenWidgetDiscoverabilityLogHarvester;
  v2 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)&v21 init];
  if (v2)
  {
    v3 = objc_opt_new();
    widgetDiscoverabilityDictionaries = v2->_widgetDiscoverabilityDictionaries;
    v2->_widgetDiscoverabilityDictionaries = v3;

    v5 = objc_alloc(MEMORY[0x277CBEBD0]);
    v6 = [v5 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v2->_defaults;
    v2->_defaults = v6;

    v8 = BiomeLibrary();
    v9 = [v8 App];
    inFocus = [v9 InFocus];
    appLaunchStream = v2->_appLaunchStream;
    v2->_appLaunchStream = inFocus;

    v12 = objc_opt_new();
    appUsageDictionary = v2->_appUsageDictionary;
    v2->_appUsageDictionary = v12;

    v14 = objc_opt_new();
    timelineRelevanceAdoptionHelper = v2->_timelineRelevanceAdoptionHelper;
    v2->_timelineRelevanceAdoptionHelper = v14;

    _globalPopularityDictionary = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)v2 _globalPopularityDictionary];
    globalPopularityDictionary = v2->_globalPopularityDictionary;
    v2->_globalPopularityDictionary = _globalPopularityDictionary;

    v2->_isiPad = [MEMORY[0x277D42590] isiPad];
    v18 = objc_opt_new();
    metricsPerAlgorithm = v2->_metricsPerAlgorithm;
    v2->_metricsPerAlgorithm = v18;
  }

  return v2;
}

- (id)_globalPopularityDictionary
{
  v2 = [MEMORY[0x277CEB3C0] dictionaryFromLazyPlistForClass:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"widgetGlobalPopularityStack"];
    if (v4)
    {
      goto LABEL_9;
    }

    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)v5 _globalPopularityDictionary:v6];
    }
  }

  else
  {
    v5 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)v5 _globalPopularityDictionary:v13];
    }

    v4 = 0;
  }

LABEL_9:

  return v4;
}

- (void)generateWidgetDiscoverabilityMetricsWithActivity:(id)activity
{
  activityCopy = activity;
  mEMORY[0x277CEB998] = [MEMORY[0x277CEB998] sharedInstance];
  v19 = 0;
  v6 = [mEMORY[0x277CEB998] fetchHomeScreenWidgetDescriptorMetadataWithError:&v19];
  v7 = v19;
  if (v7)
  {
    v8 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)v7 generateWidgetDiscoverabilityMetricsWithActivity:v8];
    }
  }

  else
  {
    v9 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v8 = [v9 histogramForLaunchType:1];

    v10 = objc_opt_new();
    rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v10 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

    v12 = objc_alloc(MEMORY[0x277CEB458]);
    homeScreenDescriptors = [mEMORY[0x277CEB998] homeScreenDescriptors];
    v14 = [v12 initWithDescriptors:homeScreenDescriptors descriptorInstallDates:v6 homeScreenConfig:MEMORY[0x277CBEBF8] isDayZeroExperience:0 isiPad:self->_isiPad spotlightAppLaunchHistogram:v8 adblDrainClassification:1 appLaunchCounts:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

    v15 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _generateSummaryMetricsWithDescriptorCache:v6 withActivity:activityCopy];
    if (v15 && ([activityCopy didDefer] & 1) == 0)
    {
      v17 = 0;
      do
      {
        [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _generateWidgetDiscoverabilityMetricsWithHomeScreenItemProducer:v14 descriptors:v6 appMetrics:v15 algorithm:v17];
        v17 = (v17 + 1);
      }

      while (v17 != 4);
    }

    else
    {
      v16 = __atxlog_handle_home_screen();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenWidgetDiscoverabilityLogHarvester: Deferring metric harvesting for default stacks.", buf, 2u);
      }
    }
  }
}

void __147__ATXHomeScreenWidgetDiscoverabilityLogHarvester__generateWidgetDiscoverabilityMetricsWithHomeScreenItemProducer_descriptors_appMetrics_algorithm___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) _fetchStackSuggestionsWithDefaultStack:a2];
  if ([v5 count] != 4)
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v10 = 4;
      v11 = 2048;
      v12 = [v5 count];
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "ATXHomeScreenWidgetDiscoverabilityLogHarvester: Expected default stack to contain %lu widgets. %lu widgets found", buf, 0x16u);
    }
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __147__ATXHomeScreenWidgetDiscoverabilityLogHarvester__generateWidgetDiscoverabilityMetricsWithHomeScreenItemProducer_descriptors_appMetrics_algorithm___block_invoke_160;
  v8[3] = &unk_2785983C8;
  v8[4] = *(a1 + 32);
  v8[5] = a3;
  [v5 enumerateObjectsUsingBlock:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __147__ATXHomeScreenWidgetDiscoverabilityLogHarvester__generateWidgetDiscoverabilityMetricsWithHomeScreenItemProducer_descriptors_appMetrics_algorithm___block_invoke_160(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 40) + 1;
  v6 = a3 + 1;
  v7 = a2;
  v14 = [v4 stringWithFormat:@"kStack%luWidget%luKey", v5, v6];
  v8 = MEMORY[0x277CEB9B0];
  v9 = [v7 avocadoDescriptor];
  v10 = [v9 extensionBundleIdentifier];
  v11 = [v7 avocadoDescriptor];

  v12 = [v11 kind];
  v13 = [v8 stringRepresentationForExtensionBundleId:v10 kind:v12];

  [*(*(a1 + 32) + 8) setObject:v13 forKeyedSubscript:v14];
}

- (void)_logAdblClassificationForUser
{
  v3 = MEMORY[0x277CCABB0];
  mEMORY[0x277CEB3D8] = [MEMORY[0x277CEB3D8] sharedInstance];
  v4 = [v3 numberWithUnsignedInteger:{objc_msgSend(mEMORY[0x277CEB3D8], "fetchADBLDrainClassification")}];
  [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:v4 forKeyedSubscript:@"adblClassificationForUser"];
}

- (id)_fetchStackSuggestionsWithDefaultStack:(id)stack
{
  if (self->_isiPad)
  {
    [stack mediumDefaultStack];
  }

  else
  {
    [stack smallDefaultStack];
  }
  v3 = ;

  return v3;
}

- (id)_initializeMetricsAccumulatorWithKeys:(id)keys
{
  v19 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = keysCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_opt_new();
        [v4 setObject:v11 forKeyedSubscript:{v10, v14}];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_generateSummaryMetricsWithDescriptorCache:(id)cache withActivity:(id)activity
{
  v33[6] = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  activityCopy = activity;
  v33[0] = @"howMany3PAppsHaveWidgets";
  v33[1] = @"howManyAppsHaveWidgets";
  v33[2] = @"howManyRegularlyUsed3PAppsHaveWidgets";
  v33[3] = @"howManyRegularlyUsedAppsHaveWidgets";
  v33[4] = @"howManyRegularlyUsed3PAppsAdoptedTimelineRelevance";
  v33[5] = @"howManyTop20AppsHaveWidgets";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
  v9 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _initializeMetricsAccumulatorWithKeys:v8];
  appMetricsAccumulator = self->_appMetricsAccumulator;
  self->_appMetricsAccumulator = v9;

  [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _queryAppUsageForAllInstalledApps];
  if ([activityCopy didDefer])
  {
    v11 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXHomeScreenWidgetDiscoverabilityLogHarvester: Deferring metric harvesting for default stacks.", buf, 2u);
    }

    v12 = 0;
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __106__ATXHomeScreenWidgetDiscoverabilityLogHarvester__generateSummaryMetricsWithDescriptorCache_withActivity___block_invoke;
    v30[3] = &unk_278598418;
    v30[4] = self;
    v25 = cacheCopy;
    [cacheCopy enumerateKeysAndObjectsUsingBlock:v30];
    v12 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = MEMORY[0x277CCABB0];
          v20 = [(NSMutableDictionary *)self->_appMetricsAccumulator objectForKeyedSubscript:v18];
          v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
          [v12 setObject:v21 forKeyedSubscript:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v15);
    }

    [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _populateDistributionBasedMetricsWithAppMetrics:v12];
    cacheCopy = v25;
    v8 = v24;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

void __106__ATXHomeScreenWidgetDiscoverabilityLogHarvester__generateSummaryMetricsWithDescriptorCache_withActivity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 containerBundleId];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [v6 containerBundleId];
    if (![ATXHomeScreenLogUploaderUtilities isFirstPartyApp:v9])
    {
      v10 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"howMany3PAppsHaveWidgets"];
      [v10 addObject:v9];

      if ([*(a1 + 32) _isRegularlyUsedApp:v9])
      {
        v11 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"howManyRegularlyUsed3PAppsHaveWidgets"];
        [v11 addObject:v9];

        v12 = *(*(a1 + 32) + 40);
        v13 = [v5 extensionBundleId];
        v14 = [v5 kind];
        v15 = [v12 globalDiverseSchemaRawNumber:v13 kind:v14];

        if (v15)
        {
          v16 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"howManyRegularlyUsed3PAppsAdoptedTimelineRelevance"];
          [v16 addObject:v9];
        }
      }
    }

    v17 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"howManyAppsHaveWidgets"];
    [v17 addObject:v9];

    if ([*(a1 + 32) _isRegularlyUsedApp:v9])
    {
      v18 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"howManyRegularlyUsedAppsHaveWidgets"];
      [v18 addObject:v9];
    }

    v19 = [*(a1 + 32) _setOfTopTwentyInstalled3PApps];
    v20 = [v19 containsObject:v9];

    if (v20)
    {
      v21 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:@"howManyTop20AppsHaveWidgets"];
      [v21 addObject:v9];
    }
  }

  else
  {
    v22 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __106__ATXHomeScreenWidgetDiscoverabilityLogHarvester__generateSummaryMetricsWithDescriptorCache_withActivity___block_invoke_cold_1(v5, v22);
    }

    v9 = 0;
  }
}

- (void)_queryAppUsageForAllInstalledApps
{
  v3 = [objc_alloc(MEMORY[0x277CEB388]) initWithStream:self->_appLaunchStream];
  rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps = [v3 rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];

  [(NSMutableDictionary *)self->_appUsageDictionary addEntriesFromDictionary:rawLaunchCountAndDistinctDaysLaunchedOverLast28DaysForAllApps];
}

- (void)_populateDistributionBasedMetricsWithAppMetrics:(id)metrics
{
  metricsCopy = metrics;
  _installed3PAppsWithWidgetsSortedByUsage = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _installed3PAppsWithWidgetsSortedByUsage];
  v5 = [_installed3PAppsWithWidgetsSortedByUsage count];
  if (v5 >= 0x14)
  {
    v6 = 20;
  }

  else
  {
    v6 = v5;
  }

  v7 = [_installed3PAppsWithWidgetsSortedByUsage subarrayWithRange:{0, v6}];
  if ([v7 count])
  {
    firstObject = [v7 firstObject];
    v9 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _uniqueDaysAppHasBeenLaunchedOverLast28Days:firstObject];
    [metricsCopy setObject:v9 forKeyedSubscript:@"maxNumberOfUniqueDaysLaunchedForTop20"];

    lastObject = [v7 lastObject];
    v11 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _uniqueDaysAppHasBeenLaunchedOverLast28Days:lastObject];
    [metricsCopy setObject:v11 forKeyedSubscript:@"minNumberOfUniqueDaysLaunchedForTop20"];

    v12 = [v7 objectAtIndex:{objc_msgSend(v7, "count") >> 1}];
    v13 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _uniqueDaysAppHasBeenLaunchedOverLast28Days:v12];
    [metricsCopy setObject:v13 forKeyedSubscript:@"medianNumberOfUniqueDaysLaunchedForTop20"];
  }
}

- (BOOL)_shouldConsiderWidgetWhenCalculatingRankBasedMetricsWithFamilyMask:(unint64_t)mask
{
  v3 = 2;
  if (self->_isiPad)
  {
    v3 = 4;
  }

  return (v3 & mask) != 0;
}

- (void)_logRankBasedMetricsWithOnboardingStacks:(id)stacks algorithm:(int)algorithm
{
  stacksCopy = stacks;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __101__ATXHomeScreenWidgetDiscoverabilityLogHarvester__logRankBasedMetricsWithOnboardingStacks_algorithm___block_invoke;
  v20[3] = &unk_278598440;
  v20[4] = self;
  v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v20];
  v8 = [stacksCopy filteredArrayUsingPredicate:v7];
  v9 = [v8 mutableCopy];

  [MEMORY[0x277CEB460] filterOutDuplicateWidgetsFromSameAppBundleId:v9];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = algorithm == 3;
  _installed3PAppsWithWidgetsSortedByUsage = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _installed3PAppsWithWidgetsSortedByUsage];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__9;
  v16[4] = __Block_byref_object_dispose__9;
  firstObject = [_installed3PAppsWithWidgetsSortedByUsage count];
  if (firstObject)
  {
    firstObject = [_installed3PAppsWithWidgetsSortedByUsage firstObject];
  }

  v17 = firstObject;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__9;
  v14[4] = __Block_byref_object_dispose__9;
  if ([_installed3PAppsWithWidgetsSortedByUsage count] < 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = [_installed3PAppsWithWidgetsSortedByUsage objectAtIndex:1];
  }

  v15 = v12;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __101__ATXHomeScreenWidgetDiscoverabilityLogHarvester__logRankBasedMetricsWithOnboardingStacks_algorithm___block_invoke_174;
  v13[3] = &unk_278598468;
  v13[4] = self;
  v13[5] = v18;
  v13[6] = v16;
  v13[7] = v14;
  [v9 enumerateObjectsUsingBlock:v13];
  _Block_object_dispose(v14, 8);

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v18, 8);
}

uint64_t __101__ATXHomeScreenWidgetDiscoverabilityLogHarvester__logRankBasedMetricsWithOnboardingStacks_algorithm___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 avocadoDescriptor];
  v4 = [v2 _shouldConsiderWidgetWhenCalculatingRankBasedMetricsWithFamilyMask:{objc_msgSend(v3, "supportedFamilies")}];

  return v4;
}

void __101__ATXHomeScreenWidgetDiscoverabilityLogHarvester__logRankBasedMetricsWithOnboardingStacks_algorithm___block_invoke_174(void *a1, void *a2, uint64_t a3)
{
  v24 = a2;
  v5 = *(a1[4] + 40);
  v6 = [v24 avocadoDescriptor];
  v7 = [v6 extensionBundleIdentifier];
  v8 = [v24 avocadoDescriptor];
  v9 = [v8 kind];
  v10 = [v5 globalDiverseSchemaRawNumber:v7 kind:v9];

  v11 = MEMORY[0x277CEB9B0];
  v12 = [v24 avocadoDescriptor];
  v13 = [v12 extensionBundleIdentifier];
  v14 = [v24 avocadoDescriptor];
  v15 = [v14 kind];
  v16 = [v11 stringRepresentationForExtensionBundleId:v13 kind:v15];

  v17 = a1[4];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v17 _populateRankBasedTimelineAdoptionMetricsForWidgetPersonality:v16 withRank:v18 adoptionScore:v10];

  v19 = a1[4];
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v19 _populateRankBasedGlobalPopularityMetricsForWidgetPersonality:v16 withRank:v20 adoptionScore:v10];

  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v21 = a1[4];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v23 = [v24 appBundleId];
    [v21 _populateRankBasedMetricsForUsageWithRank:v22 appBundleId:v23 mostRegularlyUsedApp:*(*(a1[6] + 8) + 40) secondMostRegularlyUsedApp:*(*(a1[7] + 8) + 40)];
  }
}

- (void)_populateRankBasedTimelineAdoptionMetricsForWidgetPersonality:(id)personality withRank:(id)rank adoptionScore:(id)score
{
  personalityCopy = personality;
  rankCopy = rank;
  scoreCopy = score;
  v10 = scoreCopy;
  if (!scoreCopy)
  {
    goto LABEL_13;
  }

  if ([scoreCopy isEqualToNumber:&unk_283A553B8])
  {
    v11 = [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"firstWidgetThatIsGoodTimelineRelevanceAdopter"];

    widgetDiscoverabilityDictionaries = self->_widgetDiscoverabilityDictionaries;
    if (!v11)
    {
      [(NSMutableDictionary *)widgetDiscoverabilityDictionaries setObject:personalityCopy forKeyedSubscript:@"firstWidgetThatIsGoodTimelineRelevanceAdopter"];
      v14 = @"rankForFirstWidgetThatIsGoodTimelineRelevanceAdopter";
      goto LABEL_7;
    }

    v13 = [(NSMutableDictionary *)widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"secondWidgetThatIsGoodTimelineRelevanceAdopter"];

    if (!v13)
    {
      [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:personalityCopy forKeyedSubscript:@"secondWidgetThatIsGoodTimelineRelevanceAdopter"];
      v14 = @"rankForSecondWidgetThatIsGoodTimelineRelevanceAdopter";
LABEL_7:
      [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:rankCopy forKeyedSubscript:v14];
    }
  }

  v15 = @"firstWidgetThatIsTimelineRelevanceAdopter";
  v16 = [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"firstWidgetThatIsTimelineRelevanceAdopter"];

  if (v16)
  {
    v15 = @"secondWidgetThatIsTimelineRelevanceAdopter";
    v17 = [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"secondWidgetThatIsTimelineRelevanceAdopter"];

    if (v17)
    {
      goto LABEL_13;
    }

    v18 = @"rankForSecondWidgetThatIsTimelineRelevanceAdopter";
  }

  else
  {
    v18 = @"rankForFirstWidgetThatIsTimelineRelevanceAdopter";
  }

  [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:personalityCopy forKeyedSubscript:v15];
  [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:rankCopy forKeyedSubscript:v18];
LABEL_13:
}

- (void)_populateRankBasedGlobalPopularityMetricsForWidgetPersonality:(id)personality withRank:(id)rank adoptionScore:(id)score
{
  personalityCopy = personality;
  rankCopy = rank;
  v9 = [(NSDictionary *)self->_globalPopularityDictionary objectForKeyedSubscript:personalityCopy];

  if (!v9)
  {
    goto LABEL_13;
  }

  v10 = [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"firstWidgetThatIsGloballyPopular"];

  widgetDiscoverabilityDictionaries = self->_widgetDiscoverabilityDictionaries;
  if (!v10)
  {
    [(NSMutableDictionary *)widgetDiscoverabilityDictionaries setObject:personalityCopy forKeyedSubscript:@"firstWidgetThatIsGloballyPopular"];
    v13 = @"rankForFirstWidgetThatIsGloballyPopular";
    goto LABEL_6;
  }

  v12 = [(NSMutableDictionary *)widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"secondWidgetThatIsGloballyPopular"];

  if (!v12)
  {
    [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:personalityCopy forKeyedSubscript:@"secondWidgetThatIsGloballyPopular"];
    v13 = @"rankForSecondWidgetThatIsGloballyPopular";
LABEL_6:
    [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:rankCopy forKeyedSubscript:v13];
  }

  if (!score)
  {
    goto LABEL_13;
  }

  v14 = [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"firstWidgetThatIsTimelineRelevanceAdopterAndGloballyPopular"];

  v15 = self->_widgetDiscoverabilityDictionaries;
  if (v14)
  {
    v16 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:@"secondWidgetThatIsTimelineRelevanceAdopterAndGloballyPopular"];

    if (v16)
    {
      goto LABEL_13;
    }

    [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:personalityCopy forKeyedSubscript:@"secondWidgetThatIsTimelineRelevanceAdopterAndGloballyPopular"];
    v17 = @"rankForSecondWidgetThatIsTimelineRelevanceAdopterAndGloballyPopular";
  }

  else
  {
    [(NSMutableDictionary *)v15 setObject:personalityCopy forKeyedSubscript:@"firstWidgetThatIsTimelineRelevanceAdopterAndGloballyPopular"];
    v17 = @"rankForFirstWidgetThatIsTimelineRelevanceAdopterAndGloballyPopular";
  }

  [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:rankCopy forKeyedSubscript:v17];
LABEL_13:
}

- (void)_populateRankBasedMetricsForUsageWithRank:(id)rank appBundleId:(id)id mostRegularlyUsedApp:(id)app secondMostRegularlyUsedApp:(id)usedApp
{
  rankCopy = rank;
  idCopy = id;
  appCopy = app;
  usedAppCopy = usedApp;
  v13 = [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"mostRegularlyUsedAppWithWidget"];
  if (v13)
  {
  }

  else if ([appCopy isEqualToString:idCopy])
  {
    [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:idCopy forKeyedSubscript:@"mostRegularlyUsedAppWithWidget"];
    [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:rankCopy forKeyedSubscript:@"rankForMostRegularlyUsedAppWithWidget"];
  }

  v14 = [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries objectForKeyedSubscript:@"secondMostRegularlyUsedAppWithWidget"];
  if (v14)
  {
  }

  else if ([usedAppCopy isEqualToString:idCopy])
  {
    [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:idCopy forKeyedSubscript:@"secondMostRegularlyUsedAppWithWidget"];
    [(NSMutableDictionary *)self->_widgetDiscoverabilityDictionaries setObject:rankCopy forKeyedSubscript:@"rankForSecondMostRegularlyUsedAppWithWidget"];
  }
}

- (void)sendToCoreAnalytics
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = __atxlog_handle_home_screen();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2263AA000, v3, OS_LOG_TYPE_INFO, "ATXHomeScreenWidgetDiscoverabilityLogHarvester: sending logs to Core Analytics", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_metricsPerAlgorithm;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        AnalyticsSendEvent();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)dryRunResult
{
  v7[1] = *MEMORY[0x277D85DE8];
  metricsPerAlgorithm = self->_metricsPerAlgorithm;
  v6 = @"data";
  v7[0] = metricsPerAlgorithm;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)_uniqueDaysAppHasBeenLaunchedOverLast28Days:(id)days
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(NSMutableDictionary *)self->_appUsageDictionary objectForKeyedSubscript:days];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "uniqueDaysLaunched")}];

  return v5;
}

- (id)_appLaunchCountForAppBundleId:(id)id
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [(NSMutableDictionary *)self->_appUsageDictionary objectForKeyedSubscript:id];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "rawLaunchCount")}];

  return v5;
}

- (BOOL)_isRegularlyUsedApp:(id)app
{
  if (app)
  {
    v3 = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _uniqueDaysAppHasBeenLaunchedOverLast28Days:?];
    integerValue = [v3 integerValue];
    v5 = integerValue >= *MEMORY[0x277CEBB08];
  }

  else
  {
    v6 = __atxlog_handle_home_screen();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)v6 _isRegularlyUsedApp:v7, v8, v9, v10, v11, v12, v13];
    }

    return 0;
  }

  return v5;
}

- (id)_installedAppsSortedByAppUsage
{
  v3 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v3 allInstalledAppsKnownToSpringBoard];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__ATXHomeScreenWidgetDiscoverabilityLogHarvester__installedAppsSortedByAppUsage__block_invoke;
  v7[3] = &unk_278598110;
  v7[4] = self;
  v5 = [allInstalledAppsKnownToSpringBoard sortedArrayUsingComparator:v7];

  return v5;
}

uint64_t __80__ATXHomeScreenWidgetDiscoverabilityLogHarvester__installedAppsSortedByAppUsage__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _uniqueDaysAppHasBeenLaunchedOverLast28Days:v5];
  v8 = [v7 integerValue];

  v9 = [*(a1 + 32) _uniqueDaysAppHasBeenLaunchedOverLast28Days:v6];
  v10 = [v9 integerValue];

  if (v8 == v10)
  {
    v11 = [*(a1 + 32) _appLaunchCountForAppBundleId:v5];
    v12 = [v11 integerValue];

    v13 = [*(a1 + 32) _appLaunchCountForAppBundleId:v6];
    v14 = [v13 integerValue];

    v15 = -1;
    if (v12 <= v14)
    {
      v15 = 1;
    }

    if (v12 == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }
  }

  else if (v8 > v10)
  {
    v16 = -1;
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)_installed3PAppsSortedByUsage
{
  thirdPartyAppsSortedByUsage = self->_thirdPartyAppsSortedByUsage;
  if (!thirdPartyAppsSortedByUsage)
  {
    _installedAppsSortedByAppUsage = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _installedAppsSortedByAppUsage];
    v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_25];
    v6 = [_installedAppsSortedByAppUsage filteredArrayUsingPredicate:v5];
    v7 = self->_thirdPartyAppsSortedByUsage;
    self->_thirdPartyAppsSortedByUsage = v6;

    thirdPartyAppsSortedByUsage = self->_thirdPartyAppsSortedByUsage;
  }

  v8 = thirdPartyAppsSortedByUsage;

  return v8;
}

- (id)_topTwentyInstalled3PAppsSortedByUsage
{
  _installed3PAppsSortedByUsage = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _installed3PAppsSortedByUsage];
  v3 = [_installed3PAppsSortedByUsage count];
  if (v3 >= 0x14)
  {
    v4 = 20;
  }

  else
  {
    v4 = v3;
  }

  v5 = [_installed3PAppsSortedByUsage subarrayWithRange:{0, v4}];

  return v5;
}

- (id)_setOfTopTwentyInstalled3PApps
{
  topTwentyInstalled3PApps = self->_topTwentyInstalled3PApps;
  if (!topTwentyInstalled3PApps)
  {
    v4 = MEMORY[0x277CBEB98];
    _topTwentyInstalled3PAppsSortedByUsage = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _topTwentyInstalled3PAppsSortedByUsage];
    v6 = [v4 setWithArray:_topTwentyInstalled3PAppsSortedByUsage];
    v7 = self->_topTwentyInstalled3PApps;
    self->_topTwentyInstalled3PApps = v6;

    topTwentyInstalled3PApps = self->_topTwentyInstalled3PApps;
  }

  v8 = topTwentyInstalled3PApps;

  return v8;
}

- (id)_installed3PAppsWithWidgetsSortedByUsage
{
  v3 = [(NSMutableDictionary *)self->_appMetricsAccumulator objectForKeyedSubscript:@"howManyAppsHaveWidgets"];
  if (v3 && (v4 = v3, -[NSMutableDictionary objectForKeyedSubscript:](self->_appMetricsAccumulator, "objectForKeyedSubscript:", @"howManyAppsHaveWidgets"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4, v6))
  {
    _installed3PAppsSortedByUsage = [(ATXHomeScreenWidgetDiscoverabilityLogHarvester *)self _installed3PAppsSortedByUsage];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __90__ATXHomeScreenWidgetDiscoverabilityLogHarvester__installed3PAppsWithWidgetsSortedByUsage__block_invoke;
    v11[3] = &unk_278598440;
    v11[4] = self;
    v8 = [MEMORY[0x277CCAC30] predicateWithBlock:v11];
    v9 = [_installed3PAppsSortedByUsage filteredArrayUsingPredicate:v8];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

uint64_t __90__ATXHomeScreenWidgetDiscoverabilityLogHarvester__installed3PAppsWithWidgetsSortedByUsage__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 64);
  v3 = a2;
  v4 = [v2 objectForKeyedSubscript:@"howManyAppsHaveWidgets"];
  v5 = [v4 containsObject:v3];

  return v5;
}

- (void)generateWidgetDiscoverabilityMetricsWithActivity:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXHomeScreenWidgetDiscoverabilityLogHarvester: Error when attempting to fetch widget descriptors with additional data - %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __106__ATXHomeScreenWidgetDiscoverabilityLogHarvester__generateSummaryMetricsWithDescriptorCache_withActivity___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 extensionBundleId];
  v5 = [a1 kind];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXHomeScreenWidgetDiscoverabilityLogHarvester: unable to get bundleId for extensionBundleId: %@, kind: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end