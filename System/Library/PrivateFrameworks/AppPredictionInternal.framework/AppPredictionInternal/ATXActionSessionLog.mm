@interface ATXActionSessionLog
+ (BOOL)isLowConfidenceSession:(id)a3;
+ (double)_bucketize:(double)result bucketSize:(double)a4;
+ (double)roundedElapsedTimeWithStartDate:(id)a3 endDate:(id)a4 accuracy:(double)a5;
+ (unint64_t)_determineNumItemsInSession:(id)a3 engagedAction:(id)a4 cacheReader:(id)a5;
+ (void)harvestActionPredictionDataForResponse:(id)a3;
- (ATXActionSessionLog)initWithActionEngagementType:(unint64_t)a3 actionResponse:(id)a4 context:(id)a5 isShadowLog:(BOOL)a6;
- (id)constructActionDataDictionaryWithEngagedIndicesOut:(id *)a3 andAWDActionOut:(id *)a4 andEngagementTypeFound:(unint64_t *)a5 forTestingMode:(BOOL)a6;
@end

@implementation ATXActionSessionLog

- (ATXActionSessionLog)initWithActionEngagementType:(unint64_t)a3 actionResponse:(id)a4 context:(id)a5 isShadowLog:(BOOL)a6
{
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = ATXActionSessionLog;
  v13 = [(ATXActionSessionLog *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_engagementType = a3;
    objc_storeStrong(&v13->_actionResponse, a4);
    objc_storeStrong(&v14->_context, a5);
    v14->_isShadowLog = a6;
  }

  return v14;
}

void __45__ATXActionSessionLog_performSessionLogging___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [v3 setSessionId:*(a1 + 32)];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "cacheRank")}];
  if (([*(a1 + 40) containsObject:v4] & 1) == 0)
  {
    [*(a1 + 40) addObject:v4];
    v5 = *(a1 + 48);
    [objc_opt_class() logActionData:v3];
    v6 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [v3 sessionId];
      v11 = [v3 actionKey];
      v12 = [v3 engaged];
      v13 = [v3 shown];
      v14 = [v3 cacheRank];
      [v3 score];
      v17 = 138413826;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 1024;
      v26 = v13;
      v27 = 1024;
      v28 = v14;
      v29 = 2048;
      v30 = v15;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%@ - logged AWDProactiveActionData with sessionId: %@ actionKey: %@ engaged: %@ shown: %{BOOL}u cacheRank: %d score: %f", &v17, 0x40u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isLowConfidenceSession:(id)a3
{
  MEMORY[0x28223BE20](a1, a2);
  v36 = *MEMORY[0x277D85DE8];
  v4 = v3;
  v5 = [v4 cacheFileData];
  if (v5)
  {
    v6 = [ATXActionCacheReader alloc];
    v7 = [v4 cacheFileData];
    v8 = [(ATXActionCacheReader *)v6 initWithData:v7];
  }

  else
  {
    v8 = 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v4 actions];
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v10)
  {
    v11 = *v29;
    v12.i32[1] = -1059153344;
    *v12.i32 = -31337.0;
    v23 = vdupq_lane_s32(v12, 0);
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v9);
        }

        if (v8)
        {
          [(ATXActionCacheReader *)v8 predictionItemForAction:*(*(&v28 + 1) + 8 * v13)];
          v32[0] = 0;
          v34 = -31337.0;
          for (i = 2; i != 416; i += 2)
          {
            *&v32[i] = v23;
          }

          v15 = memcmp(v25, &v33, 0xCF0uLL);
          v16 = v32[0];
          if (!v15 && (!(v24 | v32[0]) || v24 && v32[0] && ([v24 isEqualToString:v32[0]] & 1) != 0))
          {
            v17 = v25[828] == v34;

            if (v17)
            {
              v20 = 1;
              goto LABEL_27;
            }
          }

          else
          {
          }

          if (v26 == 1)
          {
            v20 = 0;
LABEL_27:

            goto LABEL_29;
          }

          v18 = v27;

          if (v18)
          {
            v20 = 0;
            goto LABEL_29;
          }
        }

        ++v13;
      }

      while (v13 != v10);
      v19 = [v9 countByEnumeratingWithState:&v28 objects:v35 count:16];
      v10 = v19;
    }

    while (v19);
  }

  v20 = 1;
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

+ (double)_bucketize:(double)result bucketSize:(double)a4
{
  if (result >= 0.0)
  {
    return (result / a4) * a4;
  }

  return result;
}

+ (double)roundedElapsedTimeWithStartDate:(id)a3 endDate:(id)a4 accuracy:(double)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = NAN;
  if (v7 && v8)
  {
    [v8 timeIntervalSinceDate:v7];
    v10 = floor(v11 / a5) * a5;
  }

  return v10;
}

- (id)constructActionDataDictionaryWithEngagedIndicesOut:(id *)a3 andAWDActionOut:(id *)a4 andEngagementTypeFound:(unint64_t *)a5 forTestingMode:(BOOL)a6
{
  v6 = MEMORY[0x28223BE20](self, a2);
  v84 = v7;
  v81 = v8;
  v83 = v9;
  v77 = v10;
  v11 = v6;
  *(&v106[1] + 4) = *MEMORY[0x277D85DE8];
  v12 = [*(v6 + 16) cacheFileData];
  if (v12)
  {
    v13 = [ATXActionCacheReader alloc];
    v14 = [*(v11 + 16) cacheFileData];
    v82 = [(ATXActionCacheReader *)v13 initWithData:v14];
  }

  else
  {
    v82 = 0;
  }

  v87 = objc_opt_new();
  v80 = objc_opt_new();
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v15 = +[_ATXGlobals sharedInstance];
  v16 = [v15 actionPredictionSessionLoggingBottomBlockMaxItemsToLog];

  v17 = [*(v11 + 16) matchingIntentDonatedAction];
  v18 = v17;
  if (v17)
  {
    v86 = v17;
  }

  else
  {
    v86 = [*(v11 + 16) engagedAction];
  }

  v19 = 0;
  *(v99 + 6) = 0;
  v85 = v16;
  *v20.i32 = -31337.0;
  v79 = vdupq_lane_s32(v20, 0);
  v78 = *MEMORY[0x277CBE658];
  while (1)
  {
    v21 = [*(v11 + 16) scoredActions];
    v22 = [v21 count];

    v23 = v85;
    if (v22 < v85)
    {
      v23 = v22;
    }

    if (v23 <= v19)
    {
      break;
    }

    v24 = objc_autoreleasePoolPush();
    v25 = [*(v11 + 16) scoredActions];
    v26 = [v25 objectAtIndexedSubscript:*(v99 + 6)];
    v27 = [v26 predictedItem];

    v28 = [*(v11 + 16) scoredActions];
    v29 = [v28 objectAtIndexedSubscript:*(v99 + 6)];
    [v29 score];
    v31 = v30;

    v32 = objc_opt_new();
    v33 = objc_opt_new();
    [(NSMutableDictionary *)v33 setObject:@"Top" forKeyedSubscript:@"CacheSection"];
    v34 = [MEMORY[0x277CCABB0] numberWithLongLong:*(v99 + 6)];
    [(NSMutableDictionary *)v33 setObject:v34 forKeyedSubscript:@"CacheRank"];

    [v32 setCacheRank:*(v99 + 6)];
    v35 = [*(v11 + 16) indexWasShown:*(v99 + 6)];
    v36 = MEMORY[0x277CBEC28];
    if (v35)
    {
      v36 = MEMORY[0x277CBEC38];
    }

    v37 = v36;
    [(NSMutableDictionary *)v33 setObject:v37 forKeyedSubscript:@"Shown"];

    [v32 setShown:{objc_msgSend(*(v11 + 16), "indexWasShown:", *(v99 + 6))}];
    if (*(v11 + 32) != 1)
    {
      v41 = *(v11 + 8);
      v42 = v27;
      v43 = v86;
      if (v41 > 4)
      {
        if ((v41 - 5) < 2)
        {
          v39 = 0;
          goto LABEL_30;
        }

LABEL_26:
        v46 = __atxlog_handle_default();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v47 = [MEMORY[0x277CEB2E8] engagementTypeToString:v41];
          [ATXActionSessionLog constructActionDataDictionaryWithEngagedIndicesOut:v47 andAWDActionOut:buf andEngagementTypeFound:v106 forTestingMode:v46];
        }

        v48 = MEMORY[0x277CBEAD8];
        v44 = [MEMORY[0x277CEB2E8] engagementTypeToString:v41];
        [v48 raise:v78 format:{@"%@ is not a valid engagment type to call matchesEngagedAction with", v44}];
        v39 = 0;
      }

      else
      {
        if (v41 == 2)
        {
          goto LABEL_22;
        }

        if (v41 != 3)
        {
          if (v41 == 4)
          {
LABEL_22:
            v39 = [_ATXActionUtils isContainmentBetweenAction:v42 other:v43];
LABEL_30:

            v40 = engagementTypeForPrediction(*(v11 + 8), v39);
            goto LABEL_31;
          }

          goto LABEL_26;
        }

        v44 = [v42 actionKey];
        v45 = [(ATXAction *)v43 actionKey];
        v39 = [v44 isEqualToString:v45];
      }

      goto LABEL_30;
    }

    v38 = engagementTypeFoundForPredictedAction(v27, v86);
    if (v38 != 9 && *v81 != 7)
    {
      *v81 = v38;
    }

    v39 = (v38 - 7) < 2;
    v40 = engagementTypeForPrediction(v38, v39);
LABEL_31:
    v49 = v40;
    [(NSMutableDictionary *)v33 setObject:v40 forKeyedSubscript:@"Engaged"];
    [v32 setEngaged:v49];
    if (v39)
    {
      v50 = [MEMORY[0x277CCABB0] numberWithInt:*(v99 + 6)];
      [v80 addObject:v50];
    }

    v51 = v31;
    if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v52 = -31337.0;
    }

    else
    {
      v52 = v51;
    }

    v53 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
    [(NSMutableDictionary *)v33 setObject:v53 forKeyedSubscript:@"Score"];

    [v32 setScore:v51];
    v54 = [v27 actionKey];
    [(NSMutableDictionary *)v33 setObject:v54 forKeyedSubscript:@"ActionKey"];

    v55 = [v27 actionKey];
    [v32 setActionKey:v55];

    if (ATXDetailedActionLoggingEnabled())
    {
      v56 = [MEMORY[0x277CEB2E8] actionTypeToString:{objc_msgSend(v27, "actionType")}];
      [(NSMutableDictionary *)v33 setObject:v56 forKeyedSubscript:@"ActionType"];

      v57 = [v27 actionTitle];
      [(NSMutableDictionary *)v33 setObject:v57 forKeyedSubscript:@"ActionTitle"];

      v58 = [v27 slotSet];
      v59 = [v58 parameters];
      v60 = [v59 allObjects];
      [(NSMutableDictionary *)v33 setObject:v60 forKeyedSubscript:@"SlotSet"];
    }

    if ([v27 isHeuristic])
    {
      v61 = [v27 heuristic];
      [(NSMutableDictionary *)v33 setObject:v61 forKeyedSubscript:@"Heuristic"];

      v62 = [v27 heuristic];
      [v32 setHeuristicName:v62];
    }

    v63 = [v27 isFutureMedia];
    v64 = MEMORY[0x277CBEC28];
    if (v63)
    {
      v64 = MEMORY[0x277CBEC38];
    }

    v65 = v64;
    [(NSMutableDictionary *)v33 setObject:v65 forKeyedSubscript:@"IsFutureMedia"];

    [v32 setFutureMedia:{objc_msgSend(v27, "isFutureMedia")}];
    if ((v84 & 1) == 0)
    {
      if (v82)
      {
        [(ATXActionCacheReader *)v82 predictionItemForAction:v27];
        v102[0] = 0;
        v104 = -31337.0;
        for (i = 2; i != 416; i += 2)
        {
          *&v102[i] = v79;
        }

        v67 = memcmp(&v97[2], &v103, 0xCF0uLL);
        v68 = v102[0];
        if (v67 || v96 | v102[0] && (!v96 || !v102[0] || ([v96 isEqualToString:v102[0]] & 1) == 0))
        {

          goto LABEL_48;
        }

        v71 = v97[830] == v104;

        if (!v71)
        {
LABEL_48:
          v95.key = v96;
          memcpy(&v95.actionHash, v97, 0xCFEuLL);
          addScoreInputsForPredictionItemToDictionary(&v95, v33);
        }
      }

      v69 = [ATXAWDUtils subscoresWithDictionary:v33];
      [v32 setSubscores:v69];
    }

    v70 = [(NSMutableDictionary *)v33 copy];
    [v87 addObject:v70];

    [*v83 addActionData:v32];
    objc_autoreleasePoolPop(v24);
    v19 = *(v99 + 6) + 1;
    *(v99 + 6) = v19;
  }

  if (v82 && (v84 & 1) == 0)
  {
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __128__ATXActionSessionLog_constructActionDataDictionaryWithEngagedIndicesOut_andAWDActionOut_andEngagementTypeFound_forTestingMode___block_invoke;
    v88[3] = &unk_278597198;
    v92 = &v98;
    v88[4] = v11;
    v89 = v86;
    v93 = v81;
    v90 = v80;
    v91 = v87;
    v94 = v83;
    [(ATXActionCacheReader *)v82 enumerateExtraPredictionItemsWithBlock:v88];
  }

  v72 = [v80 copy];
  v73 = *v77;
  *v77 = v72;

  v74 = [v87 copy];
  _Block_object_dispose(&v98, 8);

  v75 = *MEMORY[0x277D85DE8];

  return v74;
}

void __128__ATXActionSessionLog_constructActionDataDictionaryWithEngagedIndicesOut_andAWDActionOut_andEngagementTypeFound_forTestingMode___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v5 = v2;
  v24 = objc_opt_new();
  v6 = objc_opt_new();
  [(NSMutableDictionary *)v24 setObject:@"Other" forKeyedSubscript:@"CacheSection"];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(*(v5 + 64) + 8) + 24)];
  [(NSMutableDictionary *)v24 setObject:v7 forKeyedSubscript:@"CacheRank"];

  [v6 setCacheRank:*(*(*(v5 + 64) + 8) + 24)];
  [(NSMutableDictionary *)v24 setObject:*v4 forKeyedSubscript:@"ActionKey"];
  [v6 setActionKey:*v4];
  v8 = *(v4 + 832);
  if (COERCE__INT64(fabs(v8)) >= 0x7FF0000000000000)
  {
    v8 = -31337.0;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  [(NSMutableDictionary *)v24 setObject:v9 forKeyedSubscript:@"Score"];

  [v6 setScore:*(v4 + 832)];
  if (*(*(v5 + 32) + 32) == 1)
  {
    v10 = [_ATXActionUtils slotSetsForAction:*(v5 + 40)];
  }

  else
  {
    v11 = [*(v5 + 40) slotSet];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x277CEB848]) initWithOpaqueParameters];
    }

    v14 = v13;

    v10 = [MEMORY[0x277CBEB98] setWithObject:v14];
  }

  v26 = *v4;
  memcpy(v27, v4 + 1, sizeof(v27));
  v15 = engagementTypeFoundForPredictedItem(&v26, *(v5 + 40), v10);
  if (v15 != 9)
  {
    v16 = *(v5 + 72);
    if (*v16 != 7)
    {
      *v16 = v15;
    }
  }

  v17 = v15 - 7;
  v18 = engagementTypeForPrediction(v15, (v15 - 7) < 2);
  [(NSMutableDictionary *)v24 setObject:v18 forKeyedSubscript:@"Engaged"];
  [v6 setEngaged:v18];
  if (v17 <= 1)
  {
    v19 = *(v5 + 48);
    v20 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(v5 + 64) + 8) + 24)];
    [v19 addObject:v20];
  }

  v25.key = *v4;
  memcpy(&v25.actionHash, v4 + 1, 0xCFEuLL);
  addScoreInputsForPredictionItemToDictionary(&v25, v24);
  v21 = [ATXAWDUtils subscoresWithDictionary:v24];
  [v6 setSubscores:v21];

  v22 = *(v5 + 56);
  v23 = [(NSMutableDictionary *)v24 copy];
  [v22 addObject:v23];

  [**(v5 + 80) addActionData:v6];
  ++*(*(*(v5 + 64) + 8) + 24);
}

+ (unint64_t)_determineNumItemsInSession:(id)a3 engagedAction:(id)a4 cacheReader:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[ATXAppPredictionDataHarvesterConstants actionPredictionSessionDataHarvestMaxItems];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v11 = [v7 scoredActions];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__ATXActionSessionLog__determineNumItemsInSession_engagedAction_cacheReader___block_invoke;
  v24[3] = &unk_2785971C0;
  v12 = v8;
  v26 = &v28;
  v27 = v10;
  v25 = v12;
  [v11 enumerateObjectsUsingBlock:v24];

  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v13 = [v7 scoredActions];
  v14 = [v13 count];

  v23[3] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __77__ATXActionSessionLog__determineNumItemsInSession_engagedAction_cacheReader___block_invoke_2;
  v18[3] = &unk_2785971E8;
  v15 = v12;
  v19 = v15;
  v20 = v23;
  v21 = &v28;
  v22 = v10;
  [v9 enumerateExtraPredictionItemsWithBlock:v18];
  v16 = v29[3];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

void __77__ATXActionSessionLog__determineNumItemsInSession_engagedAction_cacheReader___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = [a2 predictedItem];
  v6 = engagementTypeFoundForPredictedAction(v5, *(a1 + 32));

  if (*(a1 + 48) > a3 || v6 != 9)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __77__ATXActionSessionLog__determineNumItemsInSession_engagedAction_cacheReader___block_invoke_2(uint64_t a1, id *a2)
{
  v8 = [_ATXActionUtils slotSetsForAction:*(a1 + 32)];
  v9 = *a2;
  memcpy(v10, a2 + 1, sizeof(v10));
  v4 = engagementTypeFoundForPredictedItem(&v9, *(a1 + 32), v8);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 24);
  if (v4 != 9 || v6 < *(a1 + 56))
  {
    *(v5 + 24) = v6 + 1;
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

+ (void)harvestActionPredictionDataForResponse:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 matchingIntentDonatedAction];
  v5 = v4;
  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v26 = [v3 engagedAction];
  }

  v6 = objc_opt_new();
  v7 = [v6 UUIDString];

  v8 = +[ATXAppPredictionDataHarvesterConstants actionPredictionSessionDataHarvestMaxItems];
  v9 = [v3 cacheFileData];
  if (v9 && (v10 = [ATXActionCacheReader alloc], [v3 cacheFileData], v11 = objc_claimAutoreleasedReturnValue(), v12 = -[ATXActionCacheReader initWithData:](v10, "initWithData:", v11), v11, v9, v12))
  {
    *buf = 0;
    v49 = buf;
    v50 = 0x2020000000;
    v51 = 9;
    v13 = [v3 scoredActions];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke;
    v45[3] = &unk_278597210;
    v14 = v26;
    v46 = v14;
    v47 = buf;
    [v13 enumerateObjectsUsingBlock:v45];

    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_2;
    v42[3] = &unk_278597238;
    v44 = buf;
    v15 = v14;
    v43 = v15;
    [(ATXActionCacheReader *)v12 enumerateExtraPredictionItemsWithBlock:v42];
    v16 = [ATXActionSessionLog _determineNumItemsInSession:v3 engagedAction:v15 cacheReader:v12];
    v17 = [v3 scoredActions];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_3;
    v35[3] = &unk_278597260;
    v18 = v15;
    v36 = v18;
    v40 = v8;
    v19 = v12;
    v37 = v19;
    v39 = buf;
    v20 = v7;
    v38 = v20;
    v41 = v16;
    [v17 enumerateObjectsUsingBlock:v35];

    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    v21 = [v3 scoredActions];
    v22 = [v21 count];

    v34[3] = v22;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_4;
    v27[3] = &unk_278597288;
    v28 = v18;
    v30 = v34;
    v31 = buf;
    v32 = v8;
    v29 = v20;
    v33 = v16;
    [v19 enumerateExtraPredictionItemsWithBlock:v27];

    _Block_object_dispose(v34, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = __atxlog_handle_feedback();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [(ATXActionSessionLog *)v24 harvestActionPredictionDataForResponse:buf, v19];
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v6 = [v10 predictedItem];
  v7 = engagementTypeFoundForPredictedAction(v6, *(a1 + 32));

  v8 = *(*(a1 + 40) + 8);
  if (v7 == 7)
  {
    *(v8 + 24) = 7;
    *a4 = 1;
  }

  else
  {
    v9 = *(v8 + 24);
    if (v9 == 9)
    {
      v9 = v7;
    }

    *(v8 + 24) = v9;
  }
}

void __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_2(uint64_t a1, id *a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) != 7)
  {
    v7 = [_ATXActionUtils slotSetsForAction:*(a1 + 32)];
    v8 = *a2;
    memcpy(v9, a2 + 1, sizeof(v9));
    v4 = engagementTypeFoundForPredictedItem(&v8, *(a1 + 32), v7);
    v5 = *(*(a1 + 40) + 8);
    if (v4 == 7)
    {
      v6 = 7;
    }

    else
    {
      v6 = *(v5 + 24);
      if (v6 == 9)
      {
        v6 = v4;
      }
    }

    *(v5 + 24) = v6;
  }
}

void __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_3(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = [v5 predictedItem];
  v7 = engagementTypeFoundForPredictedAction(v6, *(a1 + 32));

  if (*(a1 + 64) > a3 || v7 != 9)
  {
    v9 = *(a1 + 40);
    v10 = [v5 predictedItem];
    if (v9)
    {
      [v9 predictionItemForAction:v10];
    }

    else
    {
      bzero(v17, 0xD08uLL);
    }

    v11 = [ATXAppPredictionFeedbackItem alloc];
    v12 = [v5 predictedItem];
    v13 = [v12 bundleId];
    LODWORD(v14) = v18[828];
    v15 = [(ATXAppPredictionFeedbackItem *)v11 initWithBundleId:v13 totalScore:v18 scoreInputs:v14];

    v16 = [v5 predictedItem];
    +[ATXAppPredictionDataHarvester harvestDataFromActionPredictionItem:isMenuItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:](ATXAppPredictionDataHarvester, "harvestDataFromActionPredictionItem:isMenuItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:", v15, [v16 actionType] == 6, a3, v7, *(*(*(a1 + 56) + 8) + 24), *(a1 + 48), *(a1 + 72));
  }
}

void __62__ATXActionSessionLog_harvestActionPredictionDataForResponse___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v9 = [_ATXActionUtils slotSetsForAction:*(a1 + 32)];
  v10 = *a2;
  memcpy(v11, (a2 + 8), sizeof(v11));
  v4 = engagementTypeFoundForPredictedItem(&v10, *(a1 + 32), v9);
  if (v4 != 9 || *(*(*(a1 + 48) + 8) + 24) < *(a1 + 64))
  {
    v6 = [ATXAppPredictionFeedbackItem alloc];
    LODWORD(v7) = *(a2 + 3328);
    v8 = [(ATXAppPredictionFeedbackItem *)v6 initWithBundleId:&stru_2839A6058 totalScore:a2 + 16 scoreInputs:v7];
    +[ATXAppPredictionDataHarvester harvestDataFromActionPredictionItem:isMenuItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:](ATXAppPredictionDataHarvester, "harvestDataFromActionPredictionItem:isMenuItem:itemIndex:itemOutcome:sessionOutcome:sessionUUID:numItemsInSession:", v8, [*a2 hasSuffix:*MEMORY[0x277CEB230]], (*(*(*(a1 + 48) + 8) + 24))++, v4, *(*(*(a1 + 56) + 8) + 24), *(a1 + 40), *(a1 + 72));
  }
}

- (void)constructSessionLogDictionaryWithAWDSessionOut:(os_log_t)log forTestingMode:.cold.1(unsigned __int8 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "Action Session Log: detected invalid consumerSubType of %hhu for AB group", buf, 8u);
}

- (void)constructActionDataDictionaryWithEngagedIndicesOut:(void *)a1 andAWDActionOut:(uint8_t *)buf andEngagementTypeFound:(void *)a3 forTestingMode:(os_log_t)log .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138412290;
  *a3 = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%@ is not a valid engagment type to call matchesEngagedAction with", buf, 0xCu);
}

+ (void)harvestActionPredictionDataForResponse:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%@ harvestActionPredictionDataForResponse - ATXActionCacheReader is nil, unable to read cache file data", buf, 0xCu);
}

@end