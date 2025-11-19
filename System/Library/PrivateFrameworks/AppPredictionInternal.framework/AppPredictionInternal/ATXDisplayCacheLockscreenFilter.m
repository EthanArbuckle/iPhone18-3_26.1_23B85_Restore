@interface ATXDisplayCacheLockscreenFilter
+ (BOOL)shouldPredictActionOnLockScreen:(id)a3;
+ (id)indicesOfLockScreenActionsForActionPredictions:(id)a3;
+ (id)indicesOfLockScreenActionsForActionPredictions:(id)a3 criteria:(id)a4;
+ (unint64_t)_getPredictionConfidenceForActions:(id)a3;
@end

@implementation ATXDisplayCacheLockscreenFilter

+ (BOOL)shouldPredictActionOnLockScreen:(id)a3
{
  v3 = [a3 criteria];
  v4 = [v3 lockScreenEligible];

  return v4;
}

+ (id)indicesOfLockScreenActionsForActionPredictions:(id)a3 criteria:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[ATXLockscreenBlacklist sharedInstance];
  if (![v8 isPredictionGloballyDisabled])
  {
    v11 = +[ATXNotificationsLoggingServer sharedInstance];
    v23 = [v11 getLockscreenBundleIds];

    v22 = [v8 blacklist];
    v12 = objc_opt_new();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __91__ATXDisplayCacheLockscreenFilter_indicesOfLockScreenActionsForActionPredictions_criteria___block_invoke;
    v24[3] = &unk_278599960;
    v29 = a1;
    v13 = v22;
    v25 = v13;
    v14 = v23;
    v26 = v14;
    v28 = v7;
    v15 = v12;
    v27 = v15;
    [v6 enumerateObjectsUsingBlock:v24];
    v16 = [v6 count];
    v17 = [v15 count];
    v18 = __atxlog_handle_default();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      +[ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:criteria:].cold.1(buf, v16 - v17, [v6 count], v18);
    }

    if ([v15 count])
    {
      v19 = [v6 objectsAtIndexes:v15];
      if ([a1 _getPredictionConfidenceForActions:v19] == 1)
      {
        v10 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:{objc_msgSend(v15, "firstIndex")}];

LABEL_12:
        goto LABEL_13;
      }
    }

    v10 = objc_opt_new();
    goto LABEL_12;
  }

  v9 = __atxlog_handle_default();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [ATXDisplayCacheLockscreenFilter indicesOfLockScreenActionsForActionPredictions:v9 criteria:?];
  }

  v10 = objc_opt_new();
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];

  return v10;
}

void __91__ATXDisplayCacheLockscreenFilter_indicesOfLockScreenActionsForActionPredictions_criteria___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v5 = [v18 predictedItem];
  v6 = v5;
  if (v5)
  {
    if ([v5 isHeuristic])
    {
      v7 = [*(a1 + 64) shouldPredictActionOnLockScreen:v6];
    }

    else
    {
      v8 = +[_ATXGlobals sharedInstance];
      v7 = [v8 allowBehavioralPredictionsOnLockscreen];
    }

    v9 = [v6 intent];
    v10 = [v9 _intents_bundleIdForDisplay];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v6 bundleId];
    }

    v13 = v12;

    v14 = [*(a1 + 32) containsObject:v13];
    v15 = [*(a1 + 40) containsObject:v13];
    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = (*(v16 + 16))(v16, v18, a3);
    }

    else
    {
      v17 = 1;
    }

    if (!(v15 & 1 | ((v7 & 1) == 0) | v14 & 1) && v17)
    {
      [*(a1 + 48) addIndex:a3];
    }
  }
}

+ (id)indicesOfLockScreenActionsForActionPredictions:(id)a3
{
  v3 = [a1 indicesOfLockScreenActionsForActionPredictions:a3 criteria:0];

  return v3;
}

+ (unint64_t)_getPredictionConfidenceForActions:(id)a3
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[_ATXGlobals sharedInstance];
  v5 = [v3 firstObject];
  v6 = [v5 predictedItem];
  v7 = [v6 actionKey];

  v8 = [v3 firstObject];
  v9 = [v8 predictedItem];
  v10 = [v9 isHeuristic];

  if (!v10)
  {
    v12 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v13 = [v12 histogramForLaunchType:14];

    v33[0] = v7;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [v13 totalLaunchesForBundleIds:v14];
    v16 = v15;

    v17 = [v4 actionExperienceHighConfidenceAppActionCountThreshold];
    v18 = [v4 actionExperienceMediumConfidenceAppActionCountThreshold];
    v19 = [v3 firstObject];
    [v19 score];
    v21 = v20;
    [v4 actionExperienceHighConfidenceThreshold];
    v23 = v22;
    [v4 actionExperienceMediumConfidenceThreshold];
    v11 = ATXActionExperienceForActions(v21, v16, v23, v17, v24, v18);

LABEL_6:
    goto LABEL_7;
  }

  keyExistsAndHasValidFormat = 0;
  if (!CFPreferencesGetAppBooleanValue(@"ForceHeuristicHighConfidence", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat))
  {
    v13 = [v3 firstObject];
    [v13 score];
    v26 = v25;
    [v4 heuristicActionExperienceHighConfidenceThreshold];
    v28 = v27;
    [v4 heuristicActionExperienceMediumConfidenceThreshold];
    v11 = ATXActionExperienceForActions(v26, 0.0, v28, 0, v29, 0);
    goto LABEL_6;
  }

  v11 = 1;
LABEL_7:

  v30 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (void)indicesOfLockScreenActionsForActionPredictions:(uint64_t)a3 criteria:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "Filtered %lu/%lu predictions due to lockscreen blacklist.", buf, 0x16u);
}

@end