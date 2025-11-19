@interface ATXActionTimeEstimateAWDTracker
- (ATXActionTimeEstimateAWDTracker)init;
- (ATXActionTimeEstimateAWDTracker)initWithAppInFocusStream:(id)a3 intentStream:(id)a4 userActivityStream:(id)a5;
- (id)_createTimeEstimateContainers:(id)a3 withSessionLengths:(id)a4 withSessionIndices:(id)a5 withParameterSet:(id)a6 withLaunchReasons:(id)a7 withNoMatchCount:(id)a8 forActionType:(unint64_t)a9;
- (id)_effectiveEndDateFor:(id)a3;
- (id)_effectiveStartDateFor:(id)a3;
- (id)_getActionKeyFor:(id)a3;
- (id)_queryStartTime;
- (id)_readTimestamp;
- (id)getTimeEstimatesFor:(id)a3 forAppLaunches:(id)a4 withActionType:(unint64_t)a5;
- (void)_readTimestamp;
- (void)_writeTimestamp:(id)a3;
- (void)logActionTimeEstimatesWithActivity:(id)a3;
- (void)logActionTimeEstimatesWithStartDate:(id)a3 endDate:(id)a4 withActivity:(id)a5;
- (void)postTimeEstimates:(id)a3;
@end

@implementation ATXActionTimeEstimateAWDTracker

- (ATXActionTimeEstimateAWDTracker)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = [(ATXActionTimeEstimateAWDTracker *)self initWithAppInFocusStream:v3 intentStream:v4 userActivityStream:v5];

  return v6;
}

- (ATXActionTimeEstimateAWDTracker)initWithAppInFocusStream:(id)a3 intentStream:(id)a4 userActivityStream:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ATXActionTimeEstimateAWDTracker;
  v12 = [(ATXActionTimeEstimateAWDTracker *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_appInFocusStream, a3);
    objc_storeStrong(&v13->_intentStream, a4);
    objc_storeStrong(&v13->_activityStream, a5);
  }

  return v13;
}

- (void)logActionTimeEstimatesWithActivity:(id)a3
{
  v4 = a3;
  v5 = [(ATXActionTimeEstimateAWDTracker *)self _queryStartTime];
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-86400.0];
  if ([v6 compare:v5] == -1)
  {
    v7 = __atxlog_handle_default();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [ATXActionTimeEstimateAWDTracker logActionTimeEstimatesWithActivity:];
    }

    v8 = v5;
    v6 = v8;
  }

  v9 = objc_opt_new();
  [(ATXActionTimeEstimateAWDTracker *)self logActionTimeEstimatesWithStartDate:v6 endDate:v9 withActivity:v4];
}

- (void)logActionTimeEstimatesWithStartDate:(id)a3 endDate:(id)a4 withActivity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  appInFocusStream = self->_appInFocusStream;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__ATXActionTimeEstimateAWDTracker_logActionTimeEstimatesWithStartDate_endDate_withActivity___block_invoke;
  v19[3] = &unk_278596DC8;
  v13 = v11;
  v20 = v13;
  [(ATXAppInFocusStream *)appInFocusStream enumerateAppLaunchSessionsBetweenStartDate:v8 endDate:v9 shouldReverse:0 bundleIDFilter:0 block:v19];
  if (!v10 || ([v10 didDefer] & 1) == 0)
  {
    v14 = [(ATXIntentStream *)self->_intentStream getIntentEventsBetweenStartDate:v8 endDate:v9 forSource:4];
    v15 = [(ATXUserActivityStream *)self->_activityStream getActivityIntentEventsBetweenStartDate:v8 endDate:v9];
    if ([v13 count])
    {
      if ([v14 count] || objc_msgSend(v15, "count"))
      {
        if (v10 && ([v10 didDefer] & 1) != 0)
        {
          goto LABEL_12;
        }

        v16 = [(ATXActionTimeEstimateAWDTracker *)self getTimeEstimatesFor:v14 forAppLaunches:v13 withActionType:0];
        v17 = [v16 mutableCopy];

        v18 = [(ATXActionTimeEstimateAWDTracker *)self getTimeEstimatesFor:v15 forAppLaunches:v13 withActionType:1];
        [v17 addObjectsFromArray:v18];
        [(ATXActionTimeEstimateAWDTracker *)self postTimeEstimates:v17];
        [(ATXActionTimeEstimateAWDTracker *)self _writeTimestamp:v9];
      }

      else
      {
        v17 = __atxlog_handle_default();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          [ATXActionTimeEstimateAWDTracker logActionTimeEstimatesWithStartDate:endDate:withActivity:];
        }
      }
    }

    else
    {
      v17 = __atxlog_handle_default();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [ATXActionTimeEstimateAWDTracker logActionTimeEstimatesWithStartDate:endDate:withActivity:];
      }
    }

LABEL_12:
  }
}

- (id)_getActionKeyFor:(id)a3
{
  v3 = a3;
  v4 = [v3 action];
  v5 = [v4 actionKey];
  v6 = v5;
  v7 = @"Unknown";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v3 intent];

  v10 = [v9 parametersByName];
  v11 = [v10 count];

  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%lu", v8, v11];

  return v12;
}

- (id)_effectiveStartDateFor:(id)a3
{
  v3 = [a3 appSessionStartTime];
  v4 = [v3 dateByAddingTimeInterval:-5.0];

  return v4;
}

- (id)_effectiveEndDateFor:(id)a3
{
  v3 = [a3 appSessionEndTime];
  v4 = [v3 dateByAddingTimeInterval:5.0];

  return v4;
}

- (id)getTimeEstimatesFor:(id)a3 forAppLaunches:(id)a4 withActionType:(unint64_t)a5
{
  v95 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v47 = v6;
  v57 = v7;
  if ([v6 count])
  {
    v55 = objc_opt_new();
    v51 = objc_opt_new();
    v54 = objc_opt_new();
    v53 = objc_opt_new();
    v52 = objc_opt_new();
    v58 = objc_opt_new();
    v92[0] = 0;
    v92[1] = v92;
    v92[2] = 0x3032000000;
    v92[3] = __Block_byref_object_copy__20;
    v92[4] = __Block_byref_object_dispose__20;
    v8 = [v7 firstObject];
    v93 = [v8 appSessionStartTime];

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v88 objects:v94 count:16];
    if (v9)
    {
      v10 = 0;
      v49 = *v89;
      do
      {
        v11 = 0;
        v50 = v9;
        do
        {
          if (*v89 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v88 + 1) + 8 * v11);
          context = objc_autoreleasePoolPush();
          v13 = [(ATXActionTimeEstimateAWDTracker *)self _getActionKeyFor:v12];
          v14 = [v55 objectForKeyedSubscript:v13];
          v15 = v14;
          if (v14)
          {
            v61 = v14;
          }

          else
          {
            v61 = objc_opt_new();
          }

          v16 = [v54 objectForKeyedSubscript:v13];
          v17 = v16;
          if (v16)
          {
            v60 = v16;
          }

          else
          {
            v60 = objc_opt_new();
          }

          v18 = [v53 objectForKeyedSubscript:v13];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = objc_opt_new();
          }

          v21 = v20;

          v22 = [v52 objectForKeyedSubscript:v13];
          v23 = v22;
          if (v22)
          {
            v24 = v22;
          }

          else
          {
            v24 = objc_opt_new();
          }

          v25 = v24;

          v26 = [v58 objectForKeyedSubscript:v13];
          v27 = v26 == 0;

          if (v27)
          {
            [v58 setObject:&unk_283A556E8 forKeyedSubscript:v13];
          }

          v28 = [v12 intent];
          v29 = [v28 parametersByName];
          v30 = [v29 allKeys];
          v31 = [v30 sortedArrayUsingSelector:sel_compare_];

          if ([v31 count])
          {
            v32 = [v51 objectForKeyedSubscript:v13];
            v33 = v32;
            if (v32)
            {
              v34 = v32;
            }

            else
            {
              v34 = objc_opt_new();
            }

            v35 = v34;

            v36 = [v31 componentsJoinedByString:@":"];
            [v35 addObject:v36];

            [v51 setObject:v35 forKeyedSubscript:v13];
          }

          v37 = [v57 subarrayWithRange:{v10, objc_msgSend(v57, "count") - v10}];
          v87[0] = MEMORY[0x277D85DD0];
          v87[1] = 3221225472;
          v87[2] = __85__ATXActionTimeEstimateAWDTracker_getTimeEstimatesFor_forAppLaunches_withActionType___block_invoke;
          v87[3] = &unk_278598E48;
          v87[4] = self;
          v87[5] = v12;
          v38 = [v37 indexOfObjectPassingTest:v87];
          v81 = 0;
          v82 = &v81;
          v83 = 0x3032000000;
          v84 = __Block_byref_object_copy__20;
          v85 = __Block_byref_object_dispose__20;
          v86 = &unk_283A55700;
          v75 = 0;
          v76 = &v75;
          v77 = 0x3032000000;
          v78 = __Block_byref_object_copy__20;
          v79 = __Block_byref_object_dispose__20;
          v80 = &unk_283A55700;
          v69 = 0;
          v70 = &v69;
          v71 = 0x3032000000;
          v72 = __Block_byref_object_copy__20;
          v73 = __Block_byref_object_dispose__20;
          v74 = &unk_283A55700;
          v63 = 0;
          v64 = &v63;
          v65 = 0x3032000000;
          v66 = __Block_byref_object_copy__20;
          v67 = __Block_byref_object_dispose__20;
          v68 = &stru_2839A6058;
          if (v38 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 += v38;
            v39 = [v57 subarrayWithRange:{v10, objc_msgSend(v57, "count") - v10}];
            v62[0] = MEMORY[0x277D85DD0];
            v62[1] = 3221225472;
            v62[2] = __85__ATXActionTimeEstimateAWDTracker_getTimeEstimatesFor_forAppLaunches_withActionType___block_invoke_53;
            v62[3] = &unk_278598E70;
            v62[4] = v12;
            v62[5] = self;
            v62[6] = v92;
            v62[7] = &v75;
            v62[8] = &v81;
            v62[9] = &v69;
            v62[10] = &v63;
            v62[11] = v10;
            [v39 enumerateObjectsUsingBlock:v62];
          }

          if ([v82[5] isEqualToNumber:&unk_283A55700])
          {
            v40 = MEMORY[0x277CCABB0];
            v41 = [v58 objectForKeyedSubscript:v13];
            v42 = [v40 numberWithInt:{objc_msgSend(v41, "intValue") + 1}];
            [v58 setObject:v42 forKeyedSubscript:v13];
          }

          else
          {
            [v61 addObject:v82[5]];
            [v55 setObject:v61 forKeyedSubscript:v13];
            [v60 addObject:v70[5]];
            [v54 setObject:v60 forKeyedSubscript:v13];
            [v21 addObject:v76[5]];
            [v53 setObject:v21 forKeyedSubscript:v13];
            [v25 addObject:v64[5]];
            [v52 setObject:v25 forKeyedSubscript:v13];
          }

          _Block_object_dispose(&v63, 8);

          _Block_object_dispose(&v69, 8);
          _Block_object_dispose(&v75, 8);

          _Block_object_dispose(&v81, 8);
          objc_autoreleasePoolPop(context);
          ++v11;
        }

        while (v50 != v11);
        v9 = [obj countByEnumeratingWithState:&v88 objects:v94 count:16];
      }

      while (v9);
    }

    v43 = [(ATXActionTimeEstimateAWDTracker *)self _createTimeEstimateContainers:v55 withSessionLengths:v53 withSessionIndices:v54 withParameterSet:v51 withLaunchReasons:v52 withNoMatchCount:v58 forActionType:a5];
    _Block_object_dispose(v92, 8);
  }

  else
  {
    v43 = objc_opt_new();
  }

  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

BOOL __85__ATXActionTimeEstimateAWDTracker_getTimeEstimatesFor_forAppLaunches_withActionType___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _effectiveEndDateFor:a2];
  v4 = [*(a1 + 40) dateInterval];
  v5 = [v4 startDate];
  v6 = [v3 compare:v5] != -1;

  return v6;
}

void __85__ATXActionTimeEstimateAWDTracker_getTimeEstimatesFor_forAppLaunches_withActionType___block_invoke_53(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v40 = a2;
  v7 = [*(a1 + 32) dateInterval];
  v8 = [v7 startDate];
  v9 = [*(a1 + 40) _effectiveStartDateFor:v40];
  v10 = [v8 compare:v9];

  if (v10 == -1)
  {
    *a4 = 1;
  }

  else
  {
    v11 = [v40 bundleID];
    v12 = [*(a1 + 32) bundleId];
    v13 = [v11 isEqualToString:v12];

    if (v13)
    {
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = [v40 appSessionStartTime];
      if ([v14 compare:v15] == 1)
      {
        v16 = *(*(*(a1 + 48) + 8) + 40);
      }

      else
      {
        v16 = [v40 appSessionStartTime];
      }

      v17 = v16;

      v18 = MEMORY[0x277CCABB0];
      [v40 appSessionDuration];
      v19 = [v18 numberWithDouble:?];
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      v22 = MEMORY[0x277CCABB0];
      v23 = [*(a1 + 32) startDate];
      [v23 timeIntervalSinceDate:v17];
      v25 = v24;

      v26 = fmax(v25, 0.0);
      [*(*(*(a1 + 56) + 8) + 40) doubleValue];
      if (v26 < v27)
      {
        v27 = v26;
      }

      v28 = [v22 numberWithDouble:v27];
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88) + a3];
      v32 = *(*(a1 + 72) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;

      v34 = [v40 launchReason];
      v35 = v34;
      if (v34)
      {
        v36 = v34;
      }

      else
      {
        v36 = &stru_2839A6058;
      }

      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v36);

      v37 = [*(a1 + 32) startDate];
      v38 = *(*(a1 + 48) + 8);
      v39 = *(v38 + 40);
      *(v38 + 40) = v37;

      *a4 = 1;
    }
  }
}

- (id)_createTimeEstimateContainers:(id)a3 withSessionLengths:(id)a4 withSessionIndices:(id)a5 withParameterSet:(id)a6 withLaunchReasons:(id)a7 withNoMatchCount:(id)a8 forActionType:(unint64_t)a9
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = objc_opt_new();
  v21 = MEMORY[0x277CBEB58];
  v22 = [v14 allKeys];
  v23 = [v21 setWithArray:v22];

  v24 = [v19 allKeys];
  [v23 addObjectsFromArray:v24];

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __169__ATXActionTimeEstimateAWDTracker__createTimeEstimateContainers_withSessionLengths_withSessionIndices_withParameterSet_withLaunchReasons_withNoMatchCount_forActionType___block_invoke;
  v35[3] = &unk_278598E98;
  v43 = a9;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v18;
  v40 = v19;
  v41 = v17;
  v25 = v20;
  v42 = v25;
  v26 = v17;
  v27 = v19;
  v28 = v18;
  v29 = v16;
  v30 = v15;
  v31 = v14;
  [v23 enumerateObjectsUsingBlock:v35];
  v32 = v42;
  v33 = v25;

  return v25;
}

void __169__ATXActionTimeEstimateAWDTracker__createTimeEstimateContainers_withSessionLengths_withSessionIndices_withParameterSet_withLaunchReasons_withNoMatchCount_forActionType___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(AWDProactiveAppPredictionActionTimeEstimateContainer);
  [(AWDProactiveAppPredictionActionTimeEstimateContainer *)v4 setActionKey:v3];
  [(AWDProactiveAppPredictionActionTimeEstimateContainer *)v4 setActionType:[ATXAWDUtils awdActionTypeWithActionType:*(a1 + 88)]];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
  v6 = [v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      v9 = 0;
      do
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[AWDProactiveAppPredictionActionTimeEstimateContainer addTimeEstimate:](v4, "addTimeEstimate:", [*(*(&v48 + 1) + 8 * v9++) intValue]);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v7);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    do
    {
      v14 = 0;
      do
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v10);
        }

        -[AWDProactiveAppPredictionActionTimeEstimateContainer addSessionLength:](v4, "addSessionLength:", [*(*(&v44 + 1) + 8 * v14++) intValue]);
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v44 objects:v55 count:16];
    }

    while (v12);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = [*(a1 + 48) objectForKeyedSubscript:v3];
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v54 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    do
    {
      v19 = 0;
      do
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        -[AWDProactiveAppPredictionActionTimeEstimateContainer addSessionIndex:](v4, "addSessionIndex:", [*(*(&v40 + 1) + 8 * v19++) intValue]);
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v40 objects:v54 count:16];
    }

    while (v17);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = [*(a1 + 56) objectForKeyedSubscript:v3];
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v53 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      v24 = 0;
      do
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(AWDProactiveAppPredictionActionTimeEstimateContainer *)v4 addLaunchReason:[ATXAWDUtils awdAppLaunchReasonWithString:*(*(&v36 + 1) + 8 * v24++)]];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v36 objects:v53 count:16];
    }

    while (v22);
  }

  v25 = [*(a1 + 64) objectForKeyedSubscript:v3];
  -[AWDProactiveAppPredictionActionTimeEstimateContainer setNoMatchCount:](v4, "setNoMatchCount:", [v25 intValue]);

  v26 = [*(a1 + 72) objectForKeyedSubscript:v3];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v32 objects:v52 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v33;
    do
    {
      v30 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [(AWDProactiveAppPredictionActionTimeEstimateContainer *)v4 addParameter:*(*(&v32 + 1) + 8 * v30++)];
      }

      while (v28 != v30);
      v28 = [v26 countByEnumeratingWithState:&v32 objects:v52 count:16];
    }

    while (v28);
  }

  [*(a1 + 80) addObject:v4];

  v31 = *MEMORY[0x277D85DE8];
}

- (void)postTimeEstimates:(id)a3
{
  v3 = a3;
  v5 = objc_opt_new();
  v4 = [v3 mutableCopy];

  [v5 setActions:v4];
  AWDPostMetric();
}

- (id)_queryStartTime
{
  v2 = [(ATXActionTimeEstimateAWDTracker *)self _readTimestamp];
  if (v2 && (v3 = objc_opt_new(), v4 = [v2 compare:v3], v3, v4 != 1))
  {
    v5 = v2;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
  }

  v6 = v5;

  return v6;
}

- (id)_readTimestamp
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x277CBEA90]);
  v5 = [(ATXActionTimeEstimateAWDTracker *)self _defaultActionTimeEstimateTimestampPath];
  v19 = 0;
  v6 = [v4 initWithContentsOfFile:v5 options:0 error:&v19];
  v7 = v19;

  objc_autoreleasePoolPop(v3);
  if (v6)
  {
    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 initWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = objc_autoreleasePoolPush();
    v18 = v7;
    v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v6 error:&v18];
    v14 = v18;

    objc_autoreleasePoolPop(v12);
    if (v13)
    {
      v15 = [v13 objectForKeyedSubscript:@"lastQueryEndTime"];
    }

    else
    {
      v16 = __atxlog_handle_default();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [ATXActionTimeEstimateAWDTracker _readTimestamp];
      }

      v15 = 0;
    }
  }

  else
  {
    if ([v7 code] == 260)
    {
      v15 = 0;
      goto LABEL_14;
    }

    v11 = __atxlog_handle_default();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [ATXActionTimeEstimateAWDTracker _readTimestamp];
    }

    v15 = 0;
    v14 = v7;
  }

  v7 = v14;
LABEL_14:

  return v15;
}

- (void)_writeTimestamp:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v19 = @"lastQueryEndTime";
  v20[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v18 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v18];
  v9 = v18;
  if (!v8)
  {
    [(ATXActionTimeEstimateAWDTracker *)a2 _writeTimestamp:v9];
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_BACKGROUND, 0);
  v12 = dispatch_queue_create("action-time-estimate-timestamp-write", v11);

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__ATXActionTimeEstimateAWDTracker__writeTimestamp___block_invoke;
  v15[3] = &unk_278596C10;
  v16 = v8;
  v17 = self;
  v13 = v8;
  dispatch_async(v12, v15);

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];
}

void __51__ATXActionTimeEstimateAWDTracker__writeTimestamp___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) _defaultActionTimeEstimateTimestampPath];
  v6 = 0;
  v3 = [v1 writeToFile:v2 options:1073741825 error:&v6];
  v4 = v6;

  if ((v3 & 1) == 0)
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __51__ATXActionTimeEstimateAWDTracker__writeTimestamp___block_invoke_cold_1();
    }
  }
}

- (void)logActionTimeEstimatesWithActivity:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_2263AA000, v0, OS_LOG_TYPE_DEBUG, "Collecting time estimates since the last query date:%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)logActionTimeEstimatesWithStartDate:endDate:withActivity:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_2263AA000, v0, v1, "No intents or NSUAs donated between %@ and %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)logActionTimeEstimatesWithStartDate:endDate:withActivity:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1(&dword_2263AA000, v0, v1, "No app launches between %@ and %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_readTimestamp
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Failed to read timestamp: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_writeTimestamp:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"ATXActionTimeEstimateAWDTracker.m" lineNumber:359 description:{@"Archiver error: %@", a3}];
}

void __51__ATXActionTimeEstimateAWDTracker__writeTimestamp___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_8(&dword_2263AA000, v0, v1, "Could not write timestamp: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end