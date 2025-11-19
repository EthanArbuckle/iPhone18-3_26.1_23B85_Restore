@interface ATXModeSetupPredictionMetricsLogger
- (ATXModeSetupPredictionMetricsLogger)init;
- (id)appSessionInterruptionsCalculatorSinceDate:(id)a3 andForModeSemanticTypes:(id)a4;
- (id)fetchAllRelevantModeSemanticTypesInLastSevenDays:(id)a3;
- (id)getRecommendedAndCandidateAppsInAllowListForSemanticTypes:(id)a3;
- (id)getRecommendedAndCandidateAppsInDenyListForSemanticTypes:(id)a3;
- (id)globalAppSessionInterruptionsCalculatorSinceDate:(id)a3;
- (void)logMetrics;
@end

@implementation ATXModeSetupPredictionMetricsLogger

- (ATXModeSetupPredictionMetricsLogger)init
{
  v3.receiver = self;
  v3.super_class = ATXModeSetupPredictionMetricsLogger;
  return [(ATXModeSetupPredictionMetricsLogger *)&v3 init];
}

- (id)globalAppSessionInterruptionsCalculatorSinceDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = MEMORY[0x277CBEAA8];
  [v3 timeIntervalSinceReferenceDate];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [v4 appLaunchesSinceDate:v6];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  [v3 timeIntervalSinceReferenceDate];
  v10 = [v9 publisherFromStartTime:?];
  v11 = [v8 stripStoreEvent:v10];

  v12 = [v11 orderedMergeWithOther:v7 comparator:&__block_literal_global_12];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__4;
  v20[4] = __Block_byref_object_dispose__4;
  v21 = 0;
  v13 = objc_opt_new();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke_23;
  v19[3] = &unk_278597540;
  v19[4] = v20;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke_2;
  v17[3] = &unk_278597568;
  v14 = v13;
  v18 = v14;
  v15 = [v12 sinkWithCompletion:v19 receiveInput:v17];

  _Block_object_dispose(v20, 8);

  return v14;
}

uint64_t __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __88__ATXModeSetupPredictionMetricsLogger_globalAppSessionInterruptionsCalculatorSinceDate___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) handleNotificationEvent:v5];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = *(a1 + 32);
      v4 = objc_opt_new();
      [v3 handleNextAppLaunch:v5 dimensionSet:v4];
    }
  }
}

- (id)appSessionInterruptionsCalculatorSinceDate:(id)a3 andForModeSemanticTypes:(id)a4
{
  v47[2] = *MEMORY[0x277D85DE8];
  v33 = a3;
  v5 = a4;
  v6 = BiomeLibrary();
  v7 = [v6 UserFocus];
  v32 = [v7 InferredMode];

  v28 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v33 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v31 = [v32 publisherWithUseCase:*MEMORY[0x277CEBB48] options:?];
  v8 = objc_opt_new();
  v9 = MEMORY[0x277CBEAA8];
  [v33 timeIntervalSinceReferenceDate];
  v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  v30 = [v8 appLaunchesSinceDate:v10];

  v11 = objc_opt_new();
  v12 = objc_opt_new();
  [v33 timeIntervalSinceReferenceDate];
  v13 = [v12 publisherFromStartTime:?];
  v29 = [v11 stripStoreEvent:v13];

  v47[0] = v29;
  v47[1] = v30;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v15 = [v31 orderedMergeWithOthers:v14 comparator:&__block_literal_global_32];

  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = __Block_byref_object_copy__4;
  v44[4] = __Block_byref_object_dispose__4;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__4;
  v42[4] = __Block_byref_object_dispose__4;
  v43 = 0;
  v16 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v5;
  v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v18)
  {
    v19 = *v39;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v39 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v38 + 1) + 8 * i) integerValue];
        v22 = objc_opt_new();
        v23 = [MEMORY[0x277CCABB0] numberWithInteger:v21];
        [v16 setObject:v22 forKeyedSubscript:v23];
      }

      v18 = [v17 countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v18);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke_2;
  v37[3] = &unk_278597540;
  v37[4] = v42;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke_3;
  v34[3] = &unk_278597590;
  v36 = v44;
  v24 = v16;
  v35 = v24;
  v25 = [v15 sinkWithCompletion:v37 receiveInput:v34];

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 eventTime];
  v6 = [v4 eventTime];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __106__ATXModeSetupPredictionMetricsLogger_appSessionInterruptionsCalculatorSinceDate_andForModeSemanticTypes___block_invoke_3(uint64_t a1, void *a2)
{
  v16 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v16 eventBody];
    if ([v3 modeType] == 2)
    {
      v4 = *(*(a1 + 40) + 8);
      v5 = *(v4 + 40);
      *(v4 + 40) = 0;

LABEL_19:
      goto LABEL_20;
    }

    [v3 modeType];
    BMUserFocusInferredModeTypeToActivity();
    v6 = ATXActivityTypeToModeSemanticType();
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (v7)
    {
      v8 = [v7 isEqualToNumber:v6];
      v9 = [v3 isStart];
      if (v8)
      {
        if ((v9 & 1) == 0)
        {
          v10 = *(*(a1 + 40) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = 0;
LABEL_17:

          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v9 = [v3 isStart];
    }

    if (v9)
    {
      v14 = *(*(a1 + 40) + 8);
      v15 = v6;
      v11 = *(v14 + 40);
      *(v14 + 40) = v15;
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_20;
    }

    v3 = [*(a1 + 32) objectForKeyedSubscript:?];
    [v3 handleNotificationEvent:v16];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = *(*(*(a1 + 40) + 8) + 40);
    if (v12)
    {
      [v12 integerValue];
      DNDModeSemanticTypeToATXActivityType();
      ATXModeFromActivityType();
      v3 = ATXModeToString();
      v6 = [[ATXModeDimensionSet alloc] initWithMode:v3];
      v13 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
      [v13 handleNextAppLaunch:v16 dimensionSet:v6];

      goto LABEL_18;
    }
  }

LABEL_20:
}

- (id)getRecommendedAndCandidateAppsInAllowListForSemanticTypes:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v27 + 1) + 8 * i) integerValue];
        v11 = objc_opt_new();
        v12 = DNDModeSemanticTypeToString();
        [v4 setObject:v11 forKeyedSubscript:v12];

        v13 = objc_opt_new();
        v14 = dispatch_semaphore_create(0);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke;
        v22[3] = &unk_2785975E0;
        v15 = v14;
        v23 = v15;
        v24 = v13;
        v25 = v4;
        v26 = v10;
        v16 = v13;
        [v5 recommendedAndCandidateAllowedAppsForDNDModeSemanticType:v10 reply:v22];
        v17 = v15;
        v18 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v17, v18);
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

void __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [v5 recommendedApps];

    if (v8)
    {
      v9 = [v5 recommendedApps];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_38;
      v17[3] = &unk_2785975B8;
      v18 = *(a1 + 40);
      [v9 enumerateObjectsUsingBlock:v17];
    }

    v10 = [v5 candidateApps];

    if (v10)
    {
      v11 = [v5 candidateApps];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_2;
      v15[3] = &unk_2785975B8;
      v16 = *(a1 + 40);
      [v11 enumerateObjectsUsingBlock:v15];
    }

    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = *(a1 + 56);
    v7 = DNDModeSemanticTypeToString();
    [v12 setObject:v13 forKey:v7];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_38(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleId];
    [v4 addObject:v5];
  }
}

void __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleId];
    [v4 addObject:v5];
  }
}

- (id)getRecommendedAndCandidateAppsInDenyListForSemanticTypes:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v27 + 1) + 8 * i) integerValue];
        v11 = objc_opt_new();
        v12 = DNDModeSemanticTypeToString();
        [v4 setObject:v11 forKeyedSubscript:v12];

        v13 = objc_opt_new();
        v14 = dispatch_semaphore_create(0);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke;
        v22[3] = &unk_2785975E0;
        v15 = v14;
        v23 = v15;
        v24 = v13;
        v25 = v4;
        v26 = v10;
        v16 = v13;
        [v5 recommendedAndCandidateDeniedAppsForDNDModeSemanticType:v10 reply:v22];
        v17 = v15;
        v18 = dispatch_time(0, 5000000000);
        dispatch_semaphore_wait(v17, v18);
      }

      v7 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

void __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_cold_1();
    }
  }

  else
  {
    v8 = [v5 recommendedApps];

    if (v8)
    {
      v9 = [v5 recommendedApps];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke_41;
      v17[3] = &unk_2785975B8;
      v18 = *(a1 + 40);
      [v9 enumerateObjectsUsingBlock:v17];
    }

    v10 = [v5 candidateApps];

    if (v10)
    {
      v11 = [v5 candidateApps];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke_2;
      v15[3] = &unk_2785975B8;
      v16 = *(a1 + 40);
      [v11 enumerateObjectsUsingBlock:v15];
    }

    v13 = *(a1 + 40);
    v12 = *(a1 + 48);
    v14 = *(a1 + 56);
    v7 = DNDModeSemanticTypeToString();
    [v12 setObject:v13 forKey:v7];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke_41(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleId];
    [v4 addObject:v5];
  }
}

void __96__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInDenyListForSemanticTypes___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 bundleId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 bundleId];
    [v4 addObject:v5];
  }
}

- (id)fetchAllRelevantModeSemanticTypesInLastSevenDays:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CEB440] sharedInstance];
  v5 = objc_opt_new();
  v31 = 0;
  v32[0] = &v31;
  v32[1] = 0x3032000000;
  v32[2] = __Block_byref_object_copy__4;
  v32[3] = __Block_byref_object_dispose__4;
  v33 = 0;
  v6 = BiomeLibrary();
  v7 = [v6 UserFocus];
  v8 = [v7 InferredMode];

  v9 = BiomeLibrary();
  v10 = [v9 UserFocus];
  v11 = [v10 ComputedMode];

  v12 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v3 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v25 = v3;
  v13 = *MEMORY[0x277CEBB48];
  v14 = [v8 publisherWithUseCase:*MEMORY[0x277CEBB48] options:v12];
  v15 = [v11 publisherWithUseCase:v13 options:v12];
  v16 = [v14 orderedMergeWithOther:v15 comparator:&__block_literal_global_46];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_2;
  v30[3] = &unk_278597540;
  v30[4] = &v31;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3;
  v28[3] = &unk_278596F60;
  v17 = v5;
  v29 = v17;
  v18 = [v16 sinkWithCompletion:v30 receiveInput:v28];
  if (*(v32[0] + 40))
  {
    v19 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXModeSetupPredictionMetricsLogger fetchAllRelevantModeSemanticTypesInLastSevenDays:v32];
    }
  }

  v20 = [v4 getAllModeConfigurationsWithoutCache];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_50;
  v26[3] = &unk_278597608;
  v21 = v17;
  v27 = v21;
  [v20 enumerateKeysAndObjectsUsingBlock:v26];
  v22 = v27;
  v23 = v21;

  _Block_object_dispose(&v31, 8);

  return v23;
}

uint64_t __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v3 eventBody];
  v7 = v6;
  if (isKindOfClass)
  {
    if (![v6 isStart] || objc_msgSend(v7, "modeType") == 2)
    {
      goto LABEL_10;
    }

    [v7 modeType];
    BMUserFocusInferredModeTypeToActivity();
    v8 = ATXActivityTypeToModeSemanticType();
    if (!v8)
    {
      v14 = __atxlog_handle_modes();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3_cold_1(v7);
      }

      goto LABEL_10;
    }

    v9 = v8;
    v10 = *(a1 + 32);
    goto LABEL_9;
  }

  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if (v11)
  {
    v7 = [v3 eventBody];
    if (![v7 starting])
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = [v7 atx_dndModeSemanticType];
    v13 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
    v10 = v13;
LABEL_9:
    [v10 addObject:v9];

    goto LABEL_10;
  }

LABEL_11:
}

void __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 mode];
  v6 = [v5 semanticType];

  v7 = [v4 created];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    [v8 addObject:v9];
  }
}

- (void)logMetrics
{
  OUTLINED_FUNCTION_1_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v1, v2, "ATXModeSetupPredictionMetricsLogger: could not fetch app launch stream with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_59(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_62(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 mode];
  [v5 semanticType];
  v6 = DNDModeSemanticTypeToString();

  v7 = [v4 created];

  if (v7)
  {
    v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
    [v8 setModeIsCreated:1];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [v4 triggers];
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 isEnabled])
          {
            v15 = [*(a1 + 32) objectForKeyedSubscript:v6];
            [v15 setModeHasSmartActivationEnabled:1];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    v16 = [v4 created];
    [v16 timeIntervalSinceNow];
    v18 = v17;

    if (v18 <= 0.0)
    {
      v19 = [v4 created];
      [v19 timeIntervalSinceNow];
      v21 = fabs(v20);

      if (v21 < 604800.0)
      {
        v22 = [*(a1 + 32) objectForKeyedSubscript:v6];
        [v22 setModeWasCreatedWithin7Days:1];

        if (v21 < 86400.0)
        {
          v23 = [*(a1 + 32) objectForKeyedSubscript:v6];
          [v23 setModeWasCreatedToday:1];
        }
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_64(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(*(*(a1 + 72) + 8) + 40);
    if (v6)
    {
      v27 = [v6 eventBody];
      if ([v27 starting])
      {
        v7 = *(*(*(a1 + 80) + 8) + 40);

        if (!v7)
        {
          return;
        }

        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        v9 = v8 - *(*(*(a1 + 88) + 8) + 24);
        v10 = MEMORY[0x277CCABB0];
        v11 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        [v11 doubleValue];
        v13 = [v10 numberWithDouble:v9 + v12];
        [*(a1 + 32) setObject:v13 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

        v14 = MEMORY[0x277CCABB0];
        v15 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        v16 = [v14 numberWithInt:{objc_msgSend(v15, "intValue") + 1}];
        [*(a1 + 40) setObject:v16 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

        [*(*(*(a1 + 72) + 8) + 40) timestamp];
        if (v17 <= *(a1 + 96))
        {
          return;
        }

        [*(*(*(a1 + 72) + 8) + 40) timestamp];
        v19 = v18 - *(a1 + 96);
        v20 = MEMORY[0x277CCABB0];
        v21 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        [v21 doubleValue];
        if (v9 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v9;
        }

        v24 = [v20 numberWithDouble:v23 + v22];
        [*(a1 + 48) setObject:v24 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

        v25 = MEMORY[0x277CCABB0];
        v27 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
        v26 = [v25 numberWithInt:{objc_msgSend(v27, "intValue") + 1}];
        [*(a1 + 56) setObject:v26 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
      }
    }
  }
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_2(uint64_t a1, void *a2)
{
  v52 = a2;
  v4 = [v52 eventBody];
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  if (![v4 updateReason] || !objc_msgSend(v4, "updateSource"))
  {
    goto LABEL_21;
  }

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    if (![v4 starting])
    {
      goto LABEL_21;
    }

LABEL_20:
    [v4 atx_dndModeSemanticType];
    v48 = DNDModeSemanticTypeToString();
    v49 = *(*(a1 + 72) + 8);
    v50 = *(v49 + 40);
    *(v49 + 40) = v48;

    [v52 timestamp];
    *(*(*(a1 + 80) + 8) + 24) = v51;
    goto LABEL_21;
  }

  [v52 timestamp];
  v6 = v5 - *(*(*(a1 + 80) + 8) + 24);
  v7 = *(*(*(a1 + 72) + 8) + 40);
  [v4 atx_dndModeSemanticType];
  v8 = DNDModeSemanticTypeToString();
  LODWORD(v7) = [v7 isEqualToString:v8];

  v9 = [v4 starting];
  if (!v7)
  {
    if (v9)
    {
      v30 = MEMORY[0x277CCABB0];
      v31 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      [v31 doubleValue];
      v33 = [v30 numberWithDouble:v6 + v32];
      [*(a1 + 32) setObject:v33 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

      v34 = MEMORY[0x277CCABB0];
      v35 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      v36 = [v34 numberWithInt:{objc_msgSend(v35, "intValue") + 1}];
      [*(a1 + 40) setObject:v36 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

      [v52 timestamp];
      if (v37 > *(a1 + 88))
      {
        v38 = MEMORY[0x277CCABB0];
        v39 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
        v40 = [v38 numberWithInt:{objc_msgSend(v39, "intValue") + 1}];
        [*(a1 + 48) setObject:v40 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

        [v52 timestamp];
        v42 = v41 - *(a1 + 88);
        v43 = MEMORY[0x277CCABB0];
        v44 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
        [v44 doubleValue];
        if (v6 >= v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = v6;
        }

        v47 = [v43 numberWithDouble:v46 + v45];
        [*(a1 + 56) setObject:v47 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      }
    }

    goto LABEL_20;
  }

  if ((v9 & 1) == 0)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
    [v11 doubleValue];
    v13 = [v10 numberWithDouble:v6 + v12];
    [*(a1 + 32) setObject:v13 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

    v14 = MEMORY[0x277CCABB0];
    v15 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
    v16 = [v14 numberWithInt:{objc_msgSend(v15, "intValue") + 1}];
    [*(a1 + 40) setObject:v16 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

    [v52 timestamp];
    if (v17 > *(a1 + 88))
    {
      v18 = MEMORY[0x277CCABB0];
      v19 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      v20 = [v18 numberWithInt:{objc_msgSend(v19, "intValue") + 1}];
      [*(a1 + 48) setObject:v20 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];

      [v52 timestamp];
      v22 = v21 - *(a1 + 88);
      v23 = MEMORY[0x277CCABB0];
      v24 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
      [v24 doubleValue];
      if (v6 >= v22)
      {
        v26 = v22;
      }

      else
      {
        v26 = v6;
      }

      v27 = [v23 numberWithDouble:v26 + v25];
      [*(a1 + 56) setObject:v27 forKeyedSubscript:*(*(*(a1 + 72) + 8) + 40)];
    }
  }

  v28 = *(*(a1 + 72) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;

LABEL_21:
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_2_68(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 eventBody];
  if ([v3 usageType] == 17 || objc_msgSend(v3, "usageType") == 18)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    [v7 timestamp];
    if (v4 <= *(a1 + 64))
    {
      goto LABEL_9;
    }

    v5 = 40;
    goto LABEL_5;
  }

  if ([v3 usageType] == 4)
  {
    ++*(*(*(a1 + 48) + 8) + 24);
    [v7 timestamp];
    if (v6 > *(a1 + 64))
    {
      v5 = 56;
LABEL_5:
      ++*(*(*(a1 + v5) + 8) + 24);
    }
  }

LABEL_9:
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v6 = *(*(*(a1 + 72) + 8) + 40);
    if (v6)
    {
      if ([v6 isStart])
      {
        if (*(*(*(a1 + 80) + 8) + 40))
        {
          [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
          v8 = v7 - *(*(*(a1 + 88) + 8) + 24);
          v9 = MEMORY[0x277CCABB0];
          v10 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          [v10 doubleValue];
          v12 = [v9 numberWithDouble:v8 + v11];
          [*(a1 + 32) setObject:v12 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

          v13 = MEMORY[0x277CCABB0];
          v14 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          v15 = [v13 numberWithInt:{objc_msgSend(v14, "intValue") + 1}];
          [*(a1 + 40) setObject:v15 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

          v16 = [*(*(*(a1 + 72) + 8) + 40) absoluteTimestamp];
          [v16 timeIntervalSinceReferenceDate];
          v18 = v17;
          v19 = *(a1 + 96);

          if (v18 > v19)
          {
            v20 = [*(*(*(a1 + 72) + 8) + 40) absoluteTimestamp];
            [v20 timeIntervalSinceReferenceDate];
            v22 = v21 - *(a1 + 96);

            v23 = MEMORY[0x277CCABB0];
            v24 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
            [v24 doubleValue];
            if (v8 >= v22)
            {
              v26 = v22;
            }

            else
            {
              v26 = v8;
            }

            v27 = [v23 numberWithDouble:v26 + v25];
            [*(a1 + 48) setObject:v27 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];

            v28 = MEMORY[0x277CCABB0];
            v30 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
            v29 = [v28 numberWithInt:{objc_msgSend(v30, "intValue") + 1}];
            [*(a1 + 56) setObject:v29 forKeyedSubscript:*(*(*(a1 + 80) + 8) + 40)];
          }
        }
      }
    }
  }
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v6 = [v3 eventBody];
  if (isKindOfClass)
  {
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), v6);
    if ([v6 modeType] == 2)
    {
      v7 = *(*(a1 + 104) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;

LABEL_38:
      goto LABEL_39;
    }

    [v6 modeType];
    BMUserFocusInferredModeTypeToActivity();
    v18 = ATXActivityTypeToModeSemanticType();
    v19 = v18;
    if (!v18)
    {
      v46 = __atxlog_handle_modes();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3_cold_1(v6);
      }

      goto LABEL_37;
    }

    [v18 integerValue];
    v20 = DNDModeSemanticTypeToString();
    if (*(*(*(a1 + 104) + 8) + 40))
    {
      [v3 timestamp];
      v22 = v21 - *(*(*(a1 + 112) + 8) + 24);
      v23 = [*(*(*(a1 + 104) + 8) + 40) isEqualToString:v20];
      v24 = [v6 isStart];
      if (v23)
      {
        if ((v24 & 1) == 0)
        {
          v25 = MEMORY[0x277CCABB0];
          v26 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
          [v26 doubleValue];
          v28 = [v25 numberWithDouble:v22 + v27];
          [*(a1 + 32) setObject:v28 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

          v29 = MEMORY[0x277CCABB0];
          v30 = [*(a1 + 40) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
          v31 = [v29 numberWithInt:{objc_msgSend(v30, "intValue") + 1}];
          [*(a1 + 40) setObject:v31 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

          [v3 timestamp];
          if (v32 > *(a1 + 120))
          {
            [v3 timestamp];
            v34 = v33 - *(a1 + 120);
            v35 = MEMORY[0x277CCABB0];
            v36 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
            [v36 doubleValue];
            if (v22 >= v34)
            {
              v38 = v34;
            }

            else
            {
              v38 = v22;
            }

            v39 = [v35 numberWithDouble:v38 + v37];
            [*(a1 + 48) setObject:v39 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

            v40 = MEMORY[0x277CCABB0];
            v41 = [*(a1 + 56) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
            v42 = [v40 numberWithInt:{objc_msgSend(v41, "intValue") + 1}];
            [*(a1 + 56) setObject:v42 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
          }
        }

        v43 = *(*(a1 + 104) + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = 0;

        goto LABEL_36;
      }

      if (v24)
      {
        v47 = MEMORY[0x277CCABB0];
        v48 = [*(a1 + 32) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
        [v48 doubleValue];
        v50 = [v47 numberWithDouble:v22 + v49];
        [*(a1 + 32) setObject:v50 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

        [v3 timestamp];
        if (v51 > *(a1 + 120))
        {
          [v3 timestamp];
          v53 = v52 - *(a1 + 120);
          v54 = MEMORY[0x277CCABB0];
          v55 = [*(a1 + 48) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
          [v55 doubleValue];
          if (v22 >= v53)
          {
            v57 = v53;
          }

          else
          {
            v57 = v22;
          }

          v58 = [v54 numberWithDouble:v57 + v56];
          [*(a1 + 48) setObject:v58 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
        }
      }
    }

    else if (![v6 isStart])
    {
      goto LABEL_36;
    }

    objc_storeStrong((*(*(a1 + 104) + 8) + 40), v20);
    [v3 timestamp];
    *(*(*(a1 + 112) + 8) + 24) = v59;
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    if (*(*(*(a1 + 104) + 8) + 40))
    {
      v6 = [v3 eventBody];
      if ([v6 usageType] == 17 || objc_msgSend(v6, "usageType") == 18)
      {
        v10 = MEMORY[0x277CCABB0];
        v11 = [*(a1 + 64) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
        v12 = [v10 numberWithInt:{objc_msgSend(v11, "intValue") + 1}];
        [*(a1 + 64) setObject:v12 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

        [v3 timestamp];
        if (v13 <= *(a1 + 120))
        {
          goto LABEL_38;
        }

        v14 = 72;
      }

      else
      {
        if ([v6 usageType] != 4)
        {
          goto LABEL_38;
        }

        v60 = MEMORY[0x277CCABB0];
        v61 = [*(a1 + 80) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
        v62 = [v60 numberWithInt:{objc_msgSend(v61, "intValue") + 1}];
        [*(a1 + 80) setObject:v62 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

        [v3 timestamp];
        if (v63 <= *(a1 + 120))
        {
          goto LABEL_38;
        }

        v14 = 88;
      }

      v15 = MEMORY[0x277CCABB0];
      v16 = [*(a1 + v14) objectForKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];
      v17 = [v15 numberWithInt:{objc_msgSend(v16, "intValue") + 1}];
      [*(a1 + v14) setObject:v17 forKeyedSubscript:*(*(*(a1 + 104) + 8) + 40)];

      goto LABEL_38;
    }
  }

  else
  {
    v45 = __atxlog_handle_heuristic();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_5_cold_1(v3, v45);
    }
  }

LABEL_39:
}

uint64_t __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_72(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_2_73(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v3 = [v42 eventBody];
  if ([v3 starting])
  {
    v4 = *(a1 + 32);
    v5 = [v3 bundleID];
    LODWORD(v4) = [v4 containsObject:v5];

    if (v4)
    {
      ++*(*(*(a1 + 96) + 8) + 24);
      [v42 timestamp];
      if (v6 > *(a1 + 112))
      {
        ++*(*(*(a1 + 104) + 8) + 24);
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v7 = *(a1 + 40);
      v8 = [v7 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = 0;
        obj = v7;
        v41 = *v44;
        v11 = 0.0;
        v12 = 1;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v44 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v43 + 1) + 8 * i);
            [v14 integerValue];
            v15 = DNDModeSemanticTypeToString();
            v16 = [*(a1 + 48) atxModeForDNDSemanticType:{objc_msgSend(v14, "integerValue")}];
            v17 = *(a1 + 56);
            v18 = v3;
            v19 = [v3 bundleID];
            [v17 scoreForMode:v16 bundleId:v19 scalingFactor:1.0];
            v21 = v20;

            if ((v12 & (v21 >= 0.0)) == 1)
            {
              v22 = v15;

              v12 = 0;
              v11 = v21;
              v10 = v22;
            }

            v23 = MEMORY[0x277CCABB0];
            v24 = [*(a1 + 64) objectForKeyedSubscript:v15];
            [v24 doubleValue];
            v26 = [v23 numberWithDouble:v21 + v25];
            [*(a1 + 64) setObject:v26 forKeyedSubscript:v15];

            [v42 timestamp];
            v3 = v18;
            if (v27 > *(a1 + 112))
            {
              v28 = MEMORY[0x277CCABB0];
              v29 = [*(a1 + 72) objectForKeyedSubscript:v15];
              [v29 doubleValue];
              v31 = [v28 numberWithDouble:v21 + v30];
              [*(a1 + 72) setObject:v31 forKeyedSubscript:v15];
            }

            if (v21 > v11)
            {
              v32 = v15;

              v11 = v21;
              v10 = v32;
            }
          }

          v9 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
        }

        while (v9);

        if (!v10)
        {
          goto LABEL_23;
        }

        v33 = MEMORY[0x277CCABB0];
        v34 = [*(a1 + 80) objectForKeyedSubscript:v10];
        v35 = [v33 numberWithInt:{objc_msgSend(v34, "intValue") + 1}];
        [*(a1 + 80) setObject:v35 forKeyedSubscript:v10];

        [v42 timestamp];
        if (v36 <= *(a1 + 112))
        {
          goto LABEL_23;
        }

        v37 = MEMORY[0x277CCABB0];
        v7 = [*(a1 + 88) objectForKeyedSubscript:v10];
        v38 = [v37 numberWithInt:{objc_msgSend(v7, "intValue") + 1}];
        [*(a1 + 88) setObject:v38 forKeyedSubscript:v10];
      }

      else
      {
        v10 = 0;
      }

LABEL_23:
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_74(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [a2 integerValue];
  v6 = DNDModeSemanticTypeToString();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "numberOfInterruptingAppSessions")}];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  [v8 setModeAppInterruptionsCountInModeInferred7Days:v7];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v10 = [v9 modeAppInterruptionsCountInModeInferred7Days];
  *(*(*(a1 + 56) + 8) + 24) += [v10 intValue];

  v11 = [*(a1 + 40) objectForKey:v6];
  v31 = a1;
  v32 = v6;
  v12 = [*(a1 + 48) objectForKey:v6];
  [v5 countedSetContainingInterruptingAppBundleIds];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        if ([v11 containsObject:v19])
        {
          v20 = [v5 countedSetContainingInterruptingAppBundleIds];
          v16 = v16 + [v20 countForObject:v19];
        }

        if ([v12 containsObject:v19])
        {
          v21 = [v5 countedSetContainingInterruptingAppBundleIds];
          v15 = v15 + [v21 countForObject:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  v23 = [*(v31 + 32) objectForKeyedSubscript:v32];
  [v23 setModeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days:v22];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v25 = [*(v31 + 32) objectForKeyedSubscript:v32];
  [v25 setModeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days:v24];

  v26 = [*(v31 + 32) objectForKeyedSubscript:v32];
  v27 = [v26 modeAppInterruptionsCountBasedOnAllowListOfInferredMode7Days];
  *(*(*(v31 + 64) + 8) + 24) += [v27 intValue];

  v28 = [*(v31 + 32) objectForKeyedSubscript:v32];
  v29 = [v28 modeAppInterruptionsCountBasedOnDenyListOfInferredMode7Days];
  *(*(*(v31 + 72) + 8) + 24) += [v29 intValue];

  v30 = *MEMORY[0x277D85DE8];
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_2_76(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [a2 integerValue];
  v6 = DNDModeSemanticTypeToString();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "numberOfInterruptingAppSessions")}];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
  [v8 setModeAppInterruptionsCountInModeInferredToday:v7];

  v9 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v10 = [v9 modeAppInterruptionsCountInModeInferredToday];
  *(*(*(a1 + 56) + 8) + 24) += [v10 intValue];

  v11 = [*(a1 + 40) objectForKey:v6];
  v31 = a1;
  v32 = v6;
  v12 = [*(a1 + 48) objectForKey:v6];
  [v5 countedSetContainingInterruptingAppBundleIds];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v13 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        if ([v11 containsObject:v19])
        {
          v20 = [v5 countedSetContainingInterruptingAppBundleIds];
          v16 = v16 + [v20 countForObject:v19];
        }

        if ([v12 containsObject:v19])
        {
          v21 = [v5 countedSetContainingInterruptingAppBundleIds];
          v15 = v15 + [v21 countForObject:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  v23 = [*(v31 + 32) objectForKeyedSubscript:v32];
  [v23 setModeAppInterruptionsCountBasedOnAllowListOfInferredModeToday:v22];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:v15];
  v25 = [*(v31 + 32) objectForKeyedSubscript:v32];
  [v25 setModeAppInterruptionsCountBasedOnDenyListOfInferredModeToday:v24];

  v26 = [*(v31 + 32) objectForKeyedSubscript:v32];
  v27 = [v26 modeAppInterruptionsCountBasedOnAllowListOfInferredModeToday];
  *(*(*(v31 + 64) + 8) + 24) += [v27 intValue];

  v28 = [*(v31 + 32) objectForKeyedSubscript:v32];
  v29 = [v28 modeAppInterruptionsCountBasedOnDenyListOfInferredModeToday];
  *(*(*(v31 + 72) + 8) + 24) += [v29 intValue];

  v30 = *MEMORY[0x277D85DE8];
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_3_80(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  [v4 setModeName:a2];
  [v4 logToCoreAnalytics];
}

void __97__ATXModeSetupPredictionMetricsLogger_getRecommendedAndCandidateAppsInAllowListForSemanticTypes___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v0, v1, "Could not get recommended and candidate allowed apps: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)fetchAllRelevantModeSemanticTypesInLastSevenDays:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_1_6(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0(&dword_2263AA000, v1, v2, "ATXModeSetupPredictionMetricsLogger: Could not fetch inferred mode and computed mode streams with error: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __88__ATXModeSetupPredictionMetricsLogger_fetchAllRelevantModeSemanticTypesInLastSevenDays___block_invoke_3_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 modeType];
  OUTLINED_FUNCTION_4_2(&dword_2263AA000, v1, v2, "ATXModeSetupPredictionMetricsLogger: ATXActivityTypeToModeSemanticType returned nil for BMUserFocusInferredModeType %d", v3, v4, v5, v6, 0);
  v7 = *MEMORY[0x277D85DE8];
}

void __49__ATXModeSetupPredictionMetricsLogger_logMetrics__block_invoke_5_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 eventBody];
  objc_opt_class();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXModeSetupPredictionMetricsLogger: Got unexpected event type: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end