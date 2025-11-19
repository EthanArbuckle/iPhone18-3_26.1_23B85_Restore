@interface ATXActionUtils
@end

@implementation ATXActionUtils

uint64_t __52___ATXActionUtils_limitParameterCombinations_limit___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 count];
  if (v6 >= [v5 count])
  {
    v8 = [v4 count];
    if (v8 <= [v5 count])
    {
      v9 = [v4 allObjects];
      v10 = [v9 sortedArrayUsingSelector:sel_compare_];

      v11 = [v5 allObjects];
      v12 = [v11 sortedArrayUsingSelector:sel_compare_];

      if ([v10 count])
      {
        v13 = 0;
        while (1)
        {
          v14 = [v10 objectAtIndexedSubscript:v13];
          v15 = [v12 objectAtIndexedSubscript:v13];
          v7 = [v14 compare:v15];

          if (v7)
          {
            break;
          }

          if ([v10 count] <= ++v13)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        v7 = 0;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void __49___ATXActionUtils_slotSetsForAction_intentCache___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (([v6 containsObject:@"buckets"] & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

BOOL __49___ATXActionUtils_filterContainersWithNilAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 scoredAction];
  v3 = v2 != 0;

  return v3;
}

void __66___ATXActionUtils_fetchDataAndUpdateContentAttributeSetForAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = __atxlog_handle_action_prediction();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66___ATXActionUtils_fetchDataAndUpdateContentAttributeSetForAction___block_invoke_cold_1(v3, v4);
  }

  if ([v3 count])
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      if ([v6 count])
      {
        v7 = [v6 objectAtIndexedSubscript:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
          v9 = [*(a1 + 32) contentAttributeSet];
          [v9 setThumbnailURL:v8];
        }
      }

      if ([v6 count] >= 2)
      {
        v10 = [v6 objectAtIndexedSubscript:1];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [*(a1 + 32) contentAttributeSet];
          [v11 setContentDescription:v10];
        }
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t __87___ATXActionUtils_actionKeyFilterForCandidateBundleIds_candidateActionTypes_blacklist___block_invoke(void *a1, uint64_t a2)
{
  v3 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:a2];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 first];
    v6 = [v4 second];
    v7 = a1[4];
    if (v7 && ![v7 containsObject:v5] || (v8 = a1[5]) != 0 && !objc_msgSend(v8, "containsObject:", v6))
    {
      v10 = 0;
    }

    else
    {
      v9 = a1[6];
      if (v9)
      {
        v10 = [v9 shouldPredictBundleId:v5 action:v6];
      }

      else
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __42___ATXActionUtils_prefillActionHistograms__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  ++*(*(*(a1 + 88) + 8) + 24);
  v5 = [v3 bundleID];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 appSessionStartTime];
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = v7;
    v9 = [v3 appSessionEndTime];
    if (!v9)
    {
LABEL_7:

      goto LABEL_8;
    }

    v10 = v9;
    v11 = [v3 appSessionStartTime];
    v12 = [v3 appSessionEndTime];
    [v11 timeIntervalSinceDate:v12];
    v14 = v13;

    if (v14 < 0.0)
    {
      v15 = [*(a1 + 96) firstIntent:*(a1 + 32) inAppLaunchSession:v3];
      v6 = v15;
      if (v15)
      {
        v16 = MEMORY[0x277CEB2C8];
        v17 = [v15 bundleId];
        v18 = [v6 intentType];
        v8 = [v16 getActionKeyForBundleId:v17 actionType:v18];

        v19 = *(a1 + 40);
        v20 = [v6 dateInterval];
        v21 = [v20 startDate];
        LODWORD(v22) = 1.0;
        [v19 addLaunchWithBundleId:v8 date:v21 timeZone:0 weight:v22];

        v23 = *(a1 + 48);
        v24 = [v6 dateInterval];
        v25 = [v24 startDate];
        LODWORD(v26) = 1.0;
        [v23 addLaunchWithBundleId:v8 date:v25 timeZone:0 weight:v26];

        v27 = *(a1 + 56);
        v28 = [v6 dateInterval];
        v29 = [v28 startDate];
        LODWORD(v30) = 1.0;
        [v27 addLaunchWithBundleId:v8 date:v29 timeZone:0 weight:v30];

        v31 = *(a1 + 64);
        v32 = [v6 bundleId];
        v33 = [v6 dateInterval];
        v34 = [v33 startDate];
        LODWORD(v35) = 1.0;
        [v31 addLaunchWithBundleId:v32 date:v34 timeZone:0 weight:v35];

        v36 = *(a1 + 72);
        v37 = [v6 bundleId];
        v38 = [v6 dateInterval];
        v39 = [v38 startDate];
        LODWORD(v40) = 1.0;
        [v36 addLaunchWithBundleId:v37 date:v39 timeZone:0 weight:v40];

        v41 = *(a1 + 80);
        v42 = [v6 bundleId];
        v43 = [v6 dateInterval];
        v44 = [v43 startDate];
        LODWORD(v45) = 1.0;
        [v41 addLaunchWithBundleId:v42 date:v44 timeZone:0 weight:v45];

        goto LABEL_7;
      }

LABEL_8:
    }
  }

  objc_autoreleasePoolPop(v4);

  return 1;
}

void __51___ATXActionUtils_resetHistogramsAndRemoveUICaches__block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CEBCB0] uiCachesRootDirectory];
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v2 = [v1 contentsOfDirectoryAtPath:v0 error:&v21];
  v3 = v21;

  if (v2)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v14 = v3;
      v15 = v2;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [v0 stringByAppendingPathComponent:{*(*(&v17 + 1) + 8 * i), v14, v15}];
          v10 = [MEMORY[0x277CCAA00] defaultManager];
          v16 = 0;
          [v10 removeItemAtPath:v9 error:&v16];
          v11 = v16;

          if (v11)
          {
            v12 = __atxlog_handle_default();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v23 = v11;
              _os_log_error_impl(&dword_2263AA000, v12, OS_LOG_TYPE_ERROR, "Error removing blending UI caches. Error: %@", buf, 0xCu);
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v6);
      v3 = v14;
      v2 = v15;
    }
  }

  else
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __51___ATXActionUtils_resetHistogramsAndRemoveUICaches__block_invoke_cold_1(v3, v4);
    }
  }

  +[_ATXAppLaunchHistogramManager resetDataForHistograms];
  v13 = *MEMORY[0x277D85DE8];
}

void __66___ATXActionUtils_fetchDataAndUpdateContentAttributeSetForAction___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "CBE: attributeValues: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __51___ATXActionUtils_resetHistogramsAndRemoveUICaches__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Failed to get contents: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end