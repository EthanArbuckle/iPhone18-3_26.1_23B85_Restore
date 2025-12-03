@interface ATXContextHeuristicsMetricCollector
- (id)lifetimeEngagementMetricsWithBiomeConfig:(id)config;
- (id)lifetimeEngagementMetricsWithPublisher:(id)publisher;
- (id)recentsMetricsWithBiomeConfig:(id)config;
- (id)saveableBookmarkDictionaryFromTracker:(id)tracker;
- (id)spotlightUIBookmark;
- (id)trackerFromBookmarkDictionary:(id)dictionary;
- (void)fillWeeklyStatisticsMetricWithSpotlightUIStream:(id)stream biomeConfig:(id)config;
- (void)postLifetimeEngagementMetrics;
- (void)postRecentsMetrics;
- (void)postWeeklyMetrics;
- (void)postZkwMetrics;
@end

@implementation ATXContextHeuristicsMetricCollector

- (void)postZkwMetrics
{
  [(ATXContextHeuristicsMetricCollector *)self postWeeklyMetrics];
  [(ATXContextHeuristicsMetricCollector *)self postLifetimeEngagementMetrics];

  [(ATXContextHeuristicsMetricCollector *)self postRecentsMetrics];
}

- (void)postWeeklyMetrics
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWRecentsEnabled", @"com.apple.suggestions");
  v5 = v4;
  if (v4)
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  [v3 setAreSpotlightRecentsEnabled:bOOLValue];
  v7 = CFPreferencesCopyAppValue(@"SuggestionsSpotlightZKWEnabled", @"com.apple.suggestions");
  v8 = v7;
  if (v7)
  {
    bOOLValue2 = [v7 BOOLValue];
  }

  else
  {
    bOOLValue2 = 1;
  }

  [v3 setAreSpotlightSuggestionsEnabled:bOOLValue2];
  [(ATXContextHeuristicsMetricCollector *)self fillWeeklyStatisticsMetricWithSpotlightUIStream:v3 biomeConfig:0];
  v10 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.spotlightui"];
  v11 = [v10 BOOLForKey:@"SpotlightZKWExpanded"];
  isiPad = [MEMORY[0x277D42590] isiPad];
  v13 = 4;
  if (isiPad)
  {
    v13 = 6;
  }

  v14 = 8;
  if (isiPad)
  {
    v14 = 12;
  }

  if (v11)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  [v3 setNumAppSuggestionsVisibleInSpotlight:v15];
  mEMORY[0x277CEB898] = [MEMORY[0x277CEB898] sharedInstance];
  trialTreatmentId = [mEMORY[0x277CEB898] trialTreatmentId];
  [v3 setTrialTreatmentId:trialTreatmentId];

  v18 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(mEMORY[0x277CEB898], "trialDeploymentId")}];
  stringValue = [v18 stringValue];
  [v3 setTrialDeploymentId:stringValue];

  trialExperimentId = [mEMORY[0x277CEB898] trialExperimentId];
  [v3 setTrialExperimentId:trialExperimentId];

  v21 = getTrialAssets();
  trialTreatmentId2 = [v21 trialTreatmentId];
  [v3 setAtxTrialTreatmentId:trialTreatmentId2];

  trialExperimentId2 = [v21 trialExperimentId];
  [v3 setAtxTrialExperimentId:trialExperimentId2];

  trialDeploymentId = [v21 trialDeploymentId];
  [v3 setAtxTrialDeploymentId:trialDeploymentId];

  v25 = __atxlog_handle_metrics();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    coreAnalyticsDictionary = [v3 coreAnalyticsDictionary];
    v28 = 138412290;
    v29 = coreAnalyticsDictionary;
    _os_log_impl(&dword_2263AA000, v25, OS_LOG_TYPE_DEFAULT, "ZKW: Weekly metrics dict - %@", &v28, 0xCu);
  }

  [v3 logToCoreAnalytics];
  v27 = *MEMORY[0x277D85DE8];
}

- (void)postLifetimeEngagementMetrics
{
  v30 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEB898] = [MEMORY[0x277CEB898] sharedInstance];
  v4 = getTrialAssets();
  v5 = [(ATXContextHeuristicsMetricCollector *)self lifetimeEngagementMetricsWithBiomeConfig:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        trialTreatmentId = [mEMORY[0x277CEB898] trialTreatmentId];
        [v11 setTrialTreatmentId:trialTreatmentId];

        v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(mEMORY[0x277CEB898], "trialDeploymentId")}];
        stringValue = [v13 stringValue];
        [v11 setTrialDeploymentId:stringValue];

        trialExperimentId = [mEMORY[0x277CEB898] trialExperimentId];
        [v11 setTrialExperimentId:trialExperimentId];

        trialTreatmentId2 = [v4 trialTreatmentId];
        [v11 setAtxTrialTreatmentId:trialTreatmentId2];

        trialExperimentId2 = [v4 trialExperimentId];
        [v11 setAtxTrialExperimentId:trialExperimentId2];

        trialDeploymentId = [v4 trialDeploymentId];
        [v11 setAtxTrialDeploymentId:trialDeploymentId];

        v19 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          coreAnalyticsDictionary = [v11 coreAnalyticsDictionary];
          *buf = v22;
          v28 = coreAnalyticsDictionary;
          _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ZKW: Lifetime engagement metric dict - %@", buf, 0xCu);
        }

        [v11 logToCoreAnalytics];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)postRecentsMetrics
{
  v30 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CEB898] = [MEMORY[0x277CEB898] sharedInstance];
  v4 = getTrialAssets();
  v5 = [(ATXContextHeuristicsMetricCollector *)self recentsMetricsWithBiomeConfig:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v24;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        trialTreatmentId = [mEMORY[0x277CEB898] trialTreatmentId];
        [v11 setTrialTreatmentId:trialTreatmentId];

        v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(mEMORY[0x277CEB898], "trialDeploymentId")}];
        stringValue = [v13 stringValue];
        [v11 setTrialDeploymentId:stringValue];

        trialExperimentId = [mEMORY[0x277CEB898] trialExperimentId];
        [v11 setTrialExperimentId:trialExperimentId];

        trialTreatmentId2 = [v4 trialTreatmentId];
        [v11 setAtxTrialTreatmentId:trialTreatmentId2];

        trialExperimentId2 = [v4 trialExperimentId];
        [v11 setAtxTrialExperimentId:trialExperimentId2];

        trialDeploymentId = [v4 trialDeploymentId];
        [v11 setAtxTrialDeploymentId:trialDeploymentId];

        v19 = __atxlog_handle_metrics();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          coreAnalyticsDictionary = [v11 coreAnalyticsDictionary];
          *buf = v22;
          v28 = coreAnalyticsDictionary;
          _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEFAULT, "ZKW: Recents metric dict - %@", buf, 0xCu);
        }

        [v11 logToCoreAnalytics];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v8);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)fillWeeklyStatisticsMetricWithSpotlightUIStream:(id)stream biomeConfig:(id)config
{
  streamCopy = stream;
  v6 = MEMORY[0x277D420C8];
  configCopy = config;
  v8 = [[v6 alloc] initWithStoreConfig:configCopy];

  v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-604800.0];
  [v9 timeIntervalSinceReferenceDate];
  v11 = v10;

  v12 = [v8 publisherFromStartTime:v11];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__ATXContextHeuristicsMetricCollector_fillWeeklyStatisticsMetricWithSpotlightUIStream_biomeConfig___block_invoke_2;
  v15[3] = &unk_278596F60;
  v16 = streamCopy;
  v13 = streamCopy;
  v14 = [v12 sinkWithCompletion:&__block_literal_global_154 receiveInput:v15];
}

void __99__ATXContextHeuristicsMetricCollector_fillWeeklyStatisticsMetricWithSpotlightUIStream_biomeConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (!v3)
  {
    v4 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __99__ATXContextHeuristicsMetricCollector_fillWeeklyStatisticsMetricWithSpotlightUIStream_biomeConfig___block_invoke_2_cold_1();
    }
  }

  v5 = [v3 suggestionType];
  v6 = [v3 eventType];
  if (v6 > 4)
  {
    if (v6 == 5)
    {
      v8 = [v3 suggestionType];
      v9 = [v8 isEqualToString:@"app"];

      if (v9)
      {
        [*(a1 + 32) setNumSpotlightSearchAppTaps:{objc_msgSend(*(a1 + 32), "numSpotlightSearchAppTaps") + 1}];
      }
    }

    else if (v6 == 6)
    {
      [*(a1 + 32) setNumSpotlightViews:{objc_msgSend(*(a1 + 32), "numSpotlightViews") + 1}];
    }
  }

  else if (v6)
  {
    if (v6 == 4)
    {
      if ([v5 isEqualToString:@"app"])
      {
        [*(a1 + 32) setNumSpotlightAppSuggestionTaps:{objc_msgSend(*(a1 + 32), "numSpotlightAppSuggestionTaps") + 1}];
      }

      else if ([v5 isEqualToString:@"action"])
      {
        [*(a1 + 32) setNumSpotlightActionSuggestionTaps:{objc_msgSend(*(a1 + 32), "numSpotlightActionSuggestionTaps") + 1}];
      }

      else if ([v5 isEqualToString:@"recent"])
      {
        [*(a1 + 32) setNumRecentsTaps:{objc_msgSend(*(a1 + 32), "numRecentsTaps") + 1}];
      }
    }
  }

  else
  {
    v7 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __99__ATXContextHeuristicsMetricCollector_fillWeeklyStatisticsMetricWithSpotlightUIStream_biomeConfig___block_invoke_2_cold_2();
    }
  }
}

- (id)lifetimeEngagementMetricsWithBiomeConfig:(id)config
{
  v4 = MEMORY[0x277D420C8];
  configCopy = config;
  v6 = [[v4 alloc] initWithStoreConfig:configCopy];

  v7 = [v6 publisherFromStartTime:0.0];
  v8 = [(ATXContextHeuristicsMetricCollector *)self lifetimeEngagementMetricsWithPublisher:v7];

  return v8;
}

- (id)lifetimeEngagementMetricsWithPublisher:(id)publisher
{
  publisherCopy = publisher;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__66;
  v28 = __Block_byref_object_dispose__66;
  v29 = objc_opt_new();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__66;
  v22 = __Block_byref_object_dispose__66;
  spotlightUIBookmark = [(ATXContextHeuristicsMetricCollector *)self spotlightUIBookmark];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__66;
  v16[4] = __Block_byref_object_dispose__66;
  metadata = [v19[5] metadata];
  v17 = [(ATXContextHeuristicsMetricCollector *)self trackerFromBookmarkDictionary:metadata];

  bookmark = [v19[5] bookmark];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke;
  v15[3] = &unk_27859EE58;
  v15[4] = self;
  v15[5] = &v18;
  v15[6] = v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2;
  v14[3] = &unk_278599858;
  v14[4] = v16;
  v14[5] = &v24;
  v7 = [publisherCopy sinkWithBookmark:bookmark completion:v15 receiveInput:v14];

  v8 = v19[5];
  v13 = 0;
  [v8 saveBookmarkWithError:&v13];
  v9 = v13;
  if (v9)
  {
    v10 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ATXContextHeuristicsMetricCollector lifetimeEngagementMetricsWithPublisher:];
    }
  }

  v11 = v25[5];

  _Block_object_dispose(v16, 8);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v11;
}

void __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke(uint64_t a1)
{
  [*(*(*(a1 + 40) + 8) + 40) setBookmark:?];
  v2 = [*(a1 + 32) saveableBookmarkDictionaryFromTracker:*(*(*(a1 + 48) + 8) + 40)];
  [*(*(*(a1 + 40) + 8) + 40) setMetadata:v2];
}

void __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  if (!v3)
  {
    v4 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __99__ATXContextHeuristicsMetricCollector_fillWeeklyStatisticsMetricWithSpotlightUIStream_biomeConfig___block_invoke_2_cold_1();
    }
  }

  v5 = [v3 suggestionType];
  v6 = [v5 isEqualToString:@"action"];

  if (v6)
  {
    v7 = [v3 suggestionUniqueId];
    if (!v7)
    {
      v12 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2_cold_7();
      }

      goto LABEL_22;
    }

    v8 = [v3 eventType];
    if (v8 > 2)
    {
      if ((v8 - 5) >= 2)
      {
        if (v8 == 3)
        {
          v19 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v7];

          if (v19)
          {
            v12 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v7];
            [v12 setNumShown:[v12 numShown]+ 1];
          }

          else
          {
            v12 = __atxlog_handle_metrics();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2_cold_4();
            }
          }
        }

        else
        {
          if (v8 != 4)
          {
LABEL_23:

            goto LABEL_24;
          }

          v13 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v7];

          if (v13)
          {
            v12 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v7];
            [v12 setNumEngaged:[v12 numEngaged]+ 1];
          }

          else
          {
            v12 = __atxlog_handle_metrics();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2_cold_3();
            }
          }
        }

LABEL_22:

        goto LABEL_23;
      }
    }

    else if (v8)
    {
      if (v8 == 1)
      {
        v14 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v7];

        if (v14)
        {
          v15 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2_cold_6(v3, v15);
          }
        }

        v16 = objc_opt_new();
        v17 = [v3 suggestionSubtype];
        [v16 setActionId:v17];

        v18 = [v3 suggestionContext];
        [v16 setContextType:v18];

        [*(*(*(a1 + 32) + 8) + 40) setObject:v16 forKeyedSubscript:v7];
      }

      else if (v8 == 2)
      {
        v9 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v7];

        if (v9)
        {
          v10 = *(*(*(a1 + 40) + 8) + 40);
          v11 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v7];
          [v10 addObject:v11];
        }

        else
        {
          v11 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2_cold_5();
          }
        }

        [*(*(*(a1 + 32) + 8) + 40) removeObjectForKey:v7];
      }

      goto LABEL_23;
    }

    v12 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2_cold_2(v3);
    }

    goto LABEL_22;
  }

LABEL_24:
}

- (id)spotlightUIBookmark
{
  v2 = objc_alloc(MEMORY[0x277CBEBC0]);
  v3 = [MEMORY[0x277CEBCB0] bookmarksPathFile:@"spotlightUILifetime"];
  v4 = [v2 initFileURLWithPath:v3];

  v5 = MEMORY[0x277CEBBF8];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v7 = [v5 bookmarkFromURLPath:v4 maxFileSize:1000000 versionNumber:v6];

  if (!v7)
  {
    v8 = objc_alloc(MEMORY[0x277CEBBF8]);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
    v7 = [v8 initWithURLPath:v4 versionNumber:v9 bookmark:0 metadata:0];
  }

  return v7;
}

- (id)saveableBookmarkDictionaryFromTracker:(id)tracker
{
  v25 = *MEMORY[0x277D85DE8];
  trackerCopy = tracker;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = trackerCopy;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v4 objectForKeyedSubscript:v8];
        v10 = MEMORY[0x277CCACA8];
        actionId = [v9 actionId];
        contextType = [v9 contextType];
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "numShown")}];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "numEngaged")}];
        v15 = [v10 stringWithFormat:@"%@:%@:%@:%@", actionId, contextType, v13, v14];
        [v19 setObject:v15 forKeyedSubscript:v8];
      }

      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)trackerFromBookmarkDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = dictionaryCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v21}];
        v12 = [v11 componentsSeparatedByString:@":"];

        if ([v12 count] != 4)
        {
          v18 = __atxlog_handle_metrics();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [ATXContextHeuristicsMetricCollector trackerFromBookmarkDictionary:v12];
          }

          goto LABEL_13;
        }

        v13 = objc_opt_new();
        v14 = [v12 objectAtIndexedSubscript:0];
        [v13 setActionId:v14];

        v15 = [v12 objectAtIndexedSubscript:1];
        [v13 setContextType:v15];

        v16 = [v12 objectAtIndexedSubscript:2];
        [v13 setNumShown:{objc_msgSend(v16, "integerValue")}];

        v17 = [v12 objectAtIndexedSubscript:3];
        [v13 setNumEngaged:{objc_msgSend(v17, "integerValue")}];

        [v4 setObject:v13 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)recentsMetricsWithBiomeConfig:(id)config
{
  v30 = *MEMORY[0x277D85DE8];
  configCopy = config;
  v4 = [objc_alloc(MEMORY[0x277D420C8]) initWithStoreConfig:configCopy];
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2419200.0];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__66;
  v27 = __Block_byref_object_dispose__66;
  v28 = objc_opt_new();
  v8 = [v4 publisherFromStartTime:v7];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __69__ATXContextHeuristicsMetricCollector_recentsMetricsWithBiomeConfig___block_invoke_2;
  v22[3] = &unk_278597BA8;
  v22[4] = &v23;
  v9 = [v8 sinkWithCompletion:&__block_literal_global_57_0 receiveInput:v22];

  v10 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v24[5];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v12)
  {
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [v24[5] objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i), v18}];
        [v10 addObject:v15];
      }

      v12 = [v11 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v12);
  }

  _Block_object_dispose(&v23, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v10;
}

void __69__ATXContextHeuristicsMetricCollector_recentsMetricsWithBiomeConfig___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  if (!v4)
  {
    v5 = __atxlog_handle_metrics();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __99__ATXContextHeuristicsMetricCollector_fillWeeklyStatisticsMetricWithSpotlightUIStream_biomeConfig___block_invoke_2_cold_1();
    }
  }

  v6 = [v4 suggestionType];
  v7 = [v6 isEqualToString:@"recent"];

  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = [v4 eventType];
  switch(v8)
  {
    case 4:
      v9 = [v4 suggestionUniqueId];
      v18 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v9];

      if (!v18)
      {
        v19 = objc_opt_new();
        v20 = [v4 suggestionSubtype];
        [v19 setRecentType:v20];

        v21 = [MEMORY[0x277CBEAA8] now];
        [v21 timeIntervalSinceReferenceDate];
        v23 = v22;
        [v3 timestamp];
        [v19 setRecentAge:((v23 - v24) / 604800.0 + 1.0)];

        [*(*(*(a1 + 32) + 8) + 40) setObject:v19 forKeyedSubscript:v9];
      }

      v17 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v9];
      [v17 setNumEngaged:{objc_msgSend(v17, "numEngaged") + 1}];
      goto LABEL_17;
    case 3:
      v9 = [v4 suggestionUniqueId];
      v10 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v9];

      if (!v10)
      {
        v11 = objc_opt_new();
        v12 = [v4 suggestionSubtype];
        [v11 setRecentType:v12];

        v13 = [MEMORY[0x277CBEAA8] now];
        [v13 timeIntervalSinceReferenceDate];
        v15 = v14;
        [v3 timestamp];
        [v11 setRecentAge:((v15 - v16) / 604800.0 + 1.0)];

        [*(*(*(a1 + 32) + 8) + 40) setObject:v11 forKeyedSubscript:v9];
      }

      v17 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v9];
      [v17 setNumSearched:{objc_msgSend(v17, "numSearched") + 1}];
LABEL_17:

LABEL_18:
      break;
    case 0:
      v9 = __atxlog_handle_metrics();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __99__ATXContextHeuristicsMetricCollector_fillWeeklyStatisticsMetricWithSpotlightUIStream_biomeConfig___block_invoke_2_cold_2();
      }

      goto LABEL_18;
  }

LABEL_19:
}

- (void)lifetimeEngagementMetricsWithPublisher:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "ZKW: Unable to save Spotlight UI bookmark due to : %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 eventType];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v1, v2, "ZKW: Incorrect UI event type for actions: %lu", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __78__ATXContextHeuristicsMetricCollector_lifetimeEngagementMetricsWithPublisher___block_invoke_2_cold_6(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 suggestionSubtype];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "ZKW: Event with same identifier added to cache again. Action id: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)trackerFromBookmarkDictionary:(void *)a1 .cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [a1 count];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_2263AA000, v1, v2, "Incorrect size from bookmark dictionary: %lu", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end