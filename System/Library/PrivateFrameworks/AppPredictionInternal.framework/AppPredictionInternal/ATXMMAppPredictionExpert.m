@interface ATXMMAppPredictionExpert
+ (BOOL)isExpertEnabledForPredictions;
+ (BOOL)shouldHandleTriggerEventWithRateLimiter:(id)a3;
+ (BOOL)shouldPredicateOnStartDateForTrigger;
+ (Class)supportedAnchorClass;
+ (NSString)notificationIdentifier;
+ (NSString)pathToPredictionTable;
+ (id)anchorTypeForExpert;
+ (id)correlateTriggerEvents:(id)a3 withAppLaunches:(id)a4;
+ (id)createTrainingDataForSubExpertsWithCorrelatedEvents:(id)a3;
+ (id)fetchAnchorOccurrences;
+ (id)fetchPredictionsForTriggerEvent:(id)a3;
+ (id)predictionTable;
+ (id)predictionTableFromCache;
+ (id)sampleEventForExpert;
+ (id)trainSubExpertWithCorrelatedEvents:(id)a3 appLaunchCountedSet:(id)a4;
+ (int)mmAnchorTypeToMMProtobufAnchor:(int64_t)a3;
+ (unsigned)predictionReasonForExpert;
+ (void)broadcastMMPredictionsForEvent:(id)a3 predictions:(id)a4;
+ (void)fetchAnchorOccurrences;
+ (void)fetchAndHandleTriggerEvent;
+ (void)logPredictedCountMMMetricsEntryForAnchorType:(int64_t)a3 numPredictions:(int)a4;
+ (void)logPredictedScoreMMMetricsEntryForBundle:(id)a3 anchorType:(int64_t)a4 score:(double)a5;
+ (void)logTriggeredMMMetricsEntryForAnchorType:(int64_t)a3;
+ (void)predictionTableFromCache;
+ (void)serializeAndWritePredictionTable:(id)a3;
+ (void)setupEventListenerForInferenceWithContext:(id)a3 rateLimiter:(id)a4;
+ (void)tagEventWithLOIForEvent:(id)a3;
+ (void)trainExpertWithAppLaunchEvents:(id)a3 appLaunchCountedSet:(id)a4;
+ (void)trainSubExpertWithCorrelatedEvents:(id)a3 indices:(id)a4 predicates:(id)a5 appLaunchCountedSet:(id)a6 predictionTable:(id)a7;
+ (void)trainSubExpertsWithTrainingData:(id)a3 correlatedEvents:(id)a4 appLaunchCountedSet:(id)a5;
- (ATXMMAppPredictionExpert)init;
@end

@implementation ATXMMAppPredictionExpert

- (ATXMMAppPredictionExpert)init
{
  v6.receiver = self;
  v6.super_class = ATXMMAppPredictionExpert;
  v2 = [(ATXMMAppPredictionExpert *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = _contextHelper;
    _contextHelper = v3;
  }

  return v2;
}

+ (Class)supportedAnchorClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXMMAppPredictionExpert.m" lineNumber:74 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (id)sampleEventForExpert
{
  [objc_opt_class() supportedAnchorClass];
  v2 = objc_opt_new();
  v3 = [objc_opt_class() sampleEvent];

  return v3;
}

+ (id)anchorTypeForExpert
{
  v2 = [objc_msgSend(objc_opt_class() "supportedAnchorClass")];

  return [ATXAnchor anchorTypeToString:v2];
}

+ (unsigned)predictionReasonForExpert
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXMMAppPredictionExpert.m" lineNumber:91 description:@"Should be implemented by subclasses"];

  return 0;
}

+ (NSString)pathToPredictionTable
{
  v2 = [MEMORY[0x277CEBCB0] magicalMomentsPredictionTablesRootDirectory];
  v3 = [objc_opt_class() anchorTypeForExpert];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ATXMMPredictionTable-%@", v3];
  v5 = [v2 stringByAppendingPathComponent:v4];

  return v5;
}

+ (NSString)notificationIdentifier
{
  v2 = [objc_opt_class() anchorTypeForExpert];
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"com.apple.duetexpertd.ATXMMAppPredictor.%@", v2];

  return v3;
}

+ (BOOL)isExpertEnabledForPredictions
{
  v2 = +[_ATXGlobals sharedInstance];
  v3 = [v2 magicalMomentsEnabledPredictionExperts];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 objectForKey:v5];

  LOBYTE(v5) = [v6 BOOLValue];
  return v5;
}

+ (id)fetchAnchorOccurrences
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
  v3 = [MEMORY[0x277CBEAA8] date];
  [objc_opt_class() supportedAnchorClass];
  v4 = objc_opt_new();
  v18 = v3;
  v19 = v2;
  v5 = [objc_opt_class() fetchAnchorOccurrencesBetweenStartDate:v2 endDate:v3];
  v6 = __atxlog_handle_default();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [objc_opt_class() anchorTypeForExpert];
    *buf = 138412546;
    v26 = v7;
    v27 = 2048;
    v28 = [v5 count];
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "ATXMM: (%@) num anchor events: %lu.", buf, 0x16u);
  }

  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[ATXMMAppPredictionExpert fetchAnchorOccurrences];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = __atxlog_handle_default();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v26 = v14;
          _os_log_debug_impl(&dword_2263AA000, v15, OS_LOG_TYPE_DEBUG, "ATXMM: %@", buf, 0xCu);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (BOOL)shouldPredicateOnStartDateForTrigger
{
  v2 = [objc_opt_class() supportedAnchorClass];

  return [v2 shouldPredicateOnStartDate];
}

+ (id)correlateTriggerEvents:(id)a3 withAppLaunches:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count] && objc_msgSend(v6, "count"))
  {
    v7 = -[ATXCorrelatedEventsDateBuffer initWithBufferSeconds:andBufferType:]([ATXCorrelatedEventsDateBuffer alloc], "initWithBufferSeconds:andBufferType:", [objc_opt_class() dateBufferForTriggerEvent], 120.0);
    v8 = [[ATXCorrelatedEventsDateBuffer alloc] initWithBufferSeconds:0 andBufferType:0.0];
    v9 = [ATXCorrelatedEventsManager alloc];
    v10 = objc_opt_class();
    v11 = [(ATXCorrelatedEventsManager *)v9 initWithFirstEventType:v10 firstEventTypeDateBuffer:v7 secondEventType:objc_opt_class() secondEventTypeDateBuffer:v8];
    [(ATXCorrelatedEventsManager *)v11 insertEvents:v5 forEventType:0];
    [(ATXCorrelatedEventsManager *)v11 insertEvents:v6 forEventType:1];
    v12 = [(ATXCorrelatedEventsManager *)v11 correlatedEvents];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  return v12;
}

+ (void)tagEventWithLOIForEvent:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() shouldPredicateOnStartDateForTrigger])
  {
    [v3 startDate];
  }

  else
  {
    [v3 endDate];
  }
  v4 = ;
  v5 = objc_alloc(MEMORY[0x277CCA970]);
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeInterval:v4 sinceDate:-43200.0];
  v7 = [v5 initWithStartDate:v6 duration:86400.0];

  v8 = [ATXMagicalMomentsContexts locationOfInterestForDate:v4 dateIntervalForSearch:v7];
  if (v8)
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      +[ATXMMAppPredictionExpert tagEventWithLOIForEvent:];
    }

    v10 = [v8 uuid];
    [v3 tagWithLocationOfInterestIdentifier:v10];
  }
}

+ (id)createTrainingDataForSubExpertsWithCorrelatedEvents:(id)a3
{
  v59[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v53 = objc_opt_new();
  v57 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v55 = objc_opt_new();
  v6 = +[ATXMagicalMomentsContexts timeOfDayPredicatesWithRequestedDurationInHours:shouldPredicateOnStartDate:](ATXMagicalMomentsContexts, "timeOfDayPredicatesWithRequestedDurationInHours:shouldPredicateOnStartDate:", 6, [objc_opt_class() shouldPredicateOnStartDateForTrigger]);
  v7 = +[ATXMagicalMomentsContexts partOfWeekPredicatesUsingStartDate:](ATXMagicalMomentsContexts, "partOfWeekPredicatesUsingStartDate:", [objc_opt_class() shouldPredicateOnStartDateForTrigger]);
  if ([v3 count])
  {
    v8 = 0;
    v51 = v3;
    v52 = v6;
    v54 = v4;
    v50 = v5;
    do
    {
      v9 = objc_autoreleasePoolPush();
      v56 = [v3 objectAtIndexedSubscript:v8];
      v10 = [v56 firstEvent];
      v58 = [v10 identifier];
      if (([v53 containsObject:v10] & 1) == 0)
      {
        [v53 addObject:v10];
        [objc_opt_class() tagEventWithLOIForEvent:v10];
      }

      v11 = [v57 objectForKeyedSubscript:v58];

      if (!v11)
      {
        v12 = objc_opt_new();
        [v57 setObject:v12 forKeyedSubscript:v58];

        v13 = objc_opt_new();
        [v54 setObject:v13 forKeyedSubscript:v58];

        if ([v52 count])
        {
          v14 = 0;
          do
          {
            v15 = objc_opt_new();
            v16 = [v54 objectForKeyedSubscript:v58];
            v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v14];
            [v16 setObject:v15 forKeyedSubscript:v17];

            ++v14;
          }

          while (v14 < [v52 count]);
        }

        v18 = objc_opt_new();
        [v50 setObject:v18 forKeyedSubscript:v58];

        if ([v7 count])
        {
          v19 = 0;
          do
          {
            v20 = objc_opt_new();
            v21 = [v50 objectForKeyedSubscript:v58];
            v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
            [v21 setObject:v20 forKeyedSubscript:v22];

            ++v19;
          }

          while (v19 < [v7 count]);
        }

        v23 = objc_opt_new();
        [v55 setObject:v23 forKeyedSubscript:v58];

        v5 = v50;
      }

      v24 = [v10 locationIdentifierUUIDString];
      if (v24)
      {
        v25 = v24;
        v26 = [v55 objectForKeyedSubscript:v58];
        v27 = [v10 locationIdentifierUUIDString];
        v28 = [v26 objectForKeyedSubscript:v27];

        if (!v28)
        {
          v29 = objc_opt_new();
          v30 = [v55 objectForKeyedSubscript:v58];
          v31 = [v10 locationIdentifierUUIDString];
          [v30 setObject:v29 forKeyedSubscript:v31];
        }
      }

      v32 = [v57 objectForKeyedSubscript:v58];
      [v32 addIndex:v8];

      v6 = v52;
      if ([v52 count])
      {
        v33 = 0;
        while (1)
        {
          v34 = [v52 objectAtIndexedSubscript:v33];
          if ([v34 evaluateWithObject:v10])
          {
            break;
          }

          if (++v33 >= [v52 count])
          {
            goto LABEL_22;
          }
        }

        v35 = [v54 objectForKeyedSubscript:v58];
        v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
        v37 = [v35 objectForKeyedSubscript:v36];
        [v37 addIndex:v8];
      }

LABEL_22:
      if ([v7 count])
      {
        v38 = 0;
        while (1)
        {
          v39 = [v7 objectAtIndexedSubscript:v38];
          if ([v39 evaluateWithObject:v10])
          {
            break;
          }

          if (++v38 >= [v7 count])
          {
            goto LABEL_28;
          }
        }

        v40 = [v5 objectForKeyedSubscript:v58];
        v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v38];
        v42 = [v40 objectForKeyedSubscript:v41];
        [v42 addIndex:v8];
      }

LABEL_28:
      v43 = [v10 locationIdentifierUUIDString];

      if (v43)
      {
        v44 = [v55 objectForKeyedSubscript:v58];
        v45 = [v10 locationIdentifierUUIDString];
        v46 = [v44 objectForKeyedSubscript:v45];
        [v46 addIndex:v8];
      }

      objc_autoreleasePoolPop(v9);
      ++v8;
      v3 = v51;
      v4 = v54;
    }

    while (v8 < [v51 count]);
  }

  v59[0] = v57;
  v59[1] = v4;
  v59[2] = v5;
  v59[3] = v55;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];

  v48 = *MEMORY[0x277D85DE8];

  return v47;
}

+ (void)trainSubExpertWithCorrelatedEvents:(id)a3 indices:(id)a4 predicates:(id)a5 appLaunchCountedSet:(id)a6 predictionTable:(id)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [a3 objectsAtIndexes:a4];
  if (v15)
  {
    v16 = [a1 trainSubExpertWithCorrelatedEvents:v15 appLaunchCountedSet:v13];
    v17 = __atxlog_handle_default();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v16 count];
      v19 = [v16 firstObject];
      v21 = 134218242;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "ATXMM: Got back %lu predictions for subexpert. Sample prediction: %@", &v21, 0x16u);
    }

    if (v12 && v16)
    {
      [v14 addPredictions:v16 withApplicablePredicates:v12];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)trainSubExpertWithCorrelatedEvents:(id)a3 appLaunchCountedSet:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[ATXMagicalMomentsPredictionScorer alloc] initWithCorrelatedEvents:v6 andGlobalAppLaunchCountedSet:v5];

  v8 = [(ATXMagicalMomentsPredictionScorer *)v7 generatePredictions];

  return v8;
}

+ (void)serializeAndWritePredictionTable:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v12 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
  v6 = v12;
  if (v5)
  {
    v7 = [objc_opt_class() pathToPredictionTable];
    v11 = 0;
    v8 = [v5 writeToFile:v7 options:1073741825 error:&v11];
    v9 = v11;

    if ((v8 & 1) == 0)
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        +[ATXMMAppPredictionExpert serializeAndWritePredictionTable:];
      }
    }
  }

  else
  {
    v9 = __atxlog_handle_default();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[ATXMMAppPredictionExpert serializeAndWritePredictionTable:];
    }
  }

  objc_autoreleasePoolPop(v4);
}

+ (void)trainSubExpertsWithTrainingData:(id)a3 correlatedEvents:(id)a4 appLaunchCountedSet:(id)a5
{
  v123 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v89 = a4;
  v88 = a5;
  v9 = [v8 objectAtIndexedSubscript:0];
  v84 = [v8 objectAtIndexedSubscript:1];
  v83 = [v8 objectAtIndexedSubscript:2];
  v76 = v8;
  v82 = [v8 objectAtIndexedSubscript:3];
  v87 = objc_opt_new();
  v86 = +[ATXMagicalMomentsContexts timeOfDayPredicatesWithRequestedDurationInHours:shouldPredicateOnStartDate:](ATXMagicalMomentsContexts, "timeOfDayPredicatesWithRequestedDurationInHours:shouldPredicateOnStartDate:", 6, [objc_opt_class() shouldPredicateOnStartDateForTrigger]);
  v90 = a1;
  v85 = +[ATXMagicalMomentsContexts partOfWeekPredicatesUsingStartDate:](ATXMagicalMomentsContexts, "partOfWeekPredicatesUsingStartDate:", [objc_opt_class() shouldPredicateOnStartDateForTrigger]);
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  obj = v9;
  v78 = [obj countByEnumeratingWithState:&v103 objects:v122 count:16];
  if (v78)
  {
    v77 = *v104;
    do
    {
      v10 = 0;
      do
      {
        if (*v104 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v81 = v10;
        v11 = *(*(&v103 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        v12 = __atxlog_handle_default();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412546;
          v119 = v13;
          v120 = 2112;
          v121 = v11;
          v14 = v13;
          _os_log_impl(&dword_2263AA000, v12, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training subexperts for event identifier %@", buf, 0x16u);
        }

        v15 = [ATXMagicalMomentsContexts eventIdentifierPredicateForValue:v11];
        v16 = __atxlog_handle_default();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412290;
          v119 = v17;
          v18 = v17;
          _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training Anchor ID expert", buf, 0xCu);
        }

        v19 = __atxlog_handle_default();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v117 = v15;
          v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v117 count:1];
          *buf = 138412290;
          v119 = v71;
          _os_log_debug_impl(&dword_2263AA000, v19, OS_LOG_TYPE_DEBUG, "ATXMM: ==> Predicates %@", buf, 0xCu);
        }

        v20 = [obj objectForKeyedSubscript:v11];
        v116 = v15;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v116 count:1];
        [v90 trainSubExpertWithCorrelatedEvents:v89 indices:v20 predicates:v21 appLaunchCountedSet:v88 predictionTable:v87];

        v22 = __atxlog_handle_default();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412290;
          v119 = v23;
          v24 = v23;
          _os_log_impl(&dword_2263AA000, v22, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training Time of Day experts", buf, 0xCu);
        }

        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v25 = [v84 objectForKeyedSubscript:v11];
        v26 = [v25 countByEnumeratingWithState:&v99 objects:v115 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v100;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v100 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v99 + 1) + 8 * i);
              v31 = __atxlog_handle_default();
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
              {
                v114[0] = v15;
                v36 = [v86 objectAtIndexedSubscript:{objc_msgSend(v30, "integerValue")}];
                v114[1] = v36;
                v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:2];
                *buf = 138412290;
                v119 = v37;
                _os_log_debug_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEBUG, "ATXMM: ==> Predicates %@", buf, 0xCu);
              }

              v32 = [v84 objectForKeyedSubscript:v11];
              v33 = [v32 objectForKeyedSubscript:v30];
              v113[0] = v15;
              v34 = [v86 objectAtIndexedSubscript:{objc_msgSend(v30, "integerValue")}];
              v113[1] = v34;
              v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
              [v90 trainSubExpertWithCorrelatedEvents:v89 indices:v33 predicates:v35 appLaunchCountedSet:v88 predictionTable:v87];
            }

            v27 = [v25 countByEnumeratingWithState:&v99 objects:v115 count:16];
          }

          while (v27);
        }

        v38 = __atxlog_handle_default();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412290;
          v119 = v39;
          v40 = v39;
          _os_log_impl(&dword_2263AA000, v38, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training Part of Week experts", buf, 0xCu);
        }

        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v41 = [v83 objectForKeyedSubscript:v11];
        v42 = [v41 countByEnumeratingWithState:&v95 objects:v112 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v96;
          do
          {
            for (j = 0; j != v43; ++j)
            {
              if (*v96 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v95 + 1) + 8 * j);
              v47 = __atxlog_handle_default();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                v111[0] = v15;
                v52 = [v85 objectAtIndexedSubscript:{objc_msgSend(v46, "integerValue")}];
                v111[1] = v52;
                v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:2];
                *buf = 138412290;
                v119 = v53;
                _os_log_debug_impl(&dword_2263AA000, v47, OS_LOG_TYPE_DEBUG, "ATXMM: ==> Predicates %@", buf, 0xCu);
              }

              v48 = [v83 objectForKeyedSubscript:v11];
              v49 = [v48 objectForKeyedSubscript:v46];
              v110[0] = v15;
              v50 = [v85 objectAtIndexedSubscript:{objc_msgSend(v46, "integerValue")}];
              v110[1] = v50;
              v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v110 count:2];
              [v90 trainSubExpertWithCorrelatedEvents:v89 indices:v49 predicates:v51 appLaunchCountedSet:v88 predictionTable:v87];
            }

            v43 = [v41 countByEnumeratingWithState:&v95 objects:v112 count:16];
          }

          while (v43);
        }

        v54 = __atxlog_handle_default();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = [objc_opt_class() supportedAnchorClass];
          *buf = 138412290;
          v119 = v55;
          v56 = v55;
          _os_log_impl(&dword_2263AA000, v54, OS_LOG_TYPE_INFO, "ATXMM: (%@) Training LOI experts", buf, 0xCu);
        }

        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v57 = [v82 objectForKeyedSubscript:v11];
        v58 = [v57 countByEnumeratingWithState:&v91 objects:v109 count:16];
        if (v58)
        {
          v59 = v58;
          v60 = *v92;
          do
          {
            v61 = 0;
            do
            {
              if (*v92 != v60)
              {
                objc_enumerationMutation(v57);
              }

              v62 = *(*(&v91 + 1) + 8 * v61);
              v63 = [ATXMagicalMomentsContexts loiPredicateForUUIDString:v62];
              v64 = __atxlog_handle_default();
              v65 = v64;
              if (v63)
              {
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                {
                  v108[0] = v15;
                  v108[1] = v63;
                  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v108 count:2];
                  *buf = 138412290;
                  v119 = v68;
                  _os_log_debug_impl(&dword_2263AA000, v65, OS_LOG_TYPE_DEBUG, "ATXMM: ==> Predicates %@", buf, 0xCu);
                }

                v65 = [v82 objectForKeyedSubscript:v11];
                v66 = [v65 objectForKeyedSubscript:v62];
                v107[0] = v15;
                v107[1] = v63;
                v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:2];
                [v90 trainSubExpertWithCorrelatedEvents:v89 indices:v66 predicates:v67 appLaunchCountedSet:v88 predictionTable:v87];

                goto LABEL_45;
              }

              if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
              {
                v69 = [objc_opt_class() supportedAnchorClass];
                *buf = 138412546;
                v119 = v69;
                v120 = 2112;
                v121 = v62;
                v66 = v69;
                _os_log_fault_impl(&dword_2263AA000, v65, OS_LOG_TYPE_FAULT, "ATXMM: (%@) Couldn't produce a predicate for the provided LOI UUID string: %@", buf, 0x16u);
LABEL_45:
              }

              ++v61;
            }

            while (v59 != v61);
            v70 = [v57 countByEnumeratingWithState:&v91 objects:v109 count:16];
            v59 = v70;
          }

          while (v70);
        }

        objc_autoreleasePoolPop(context);
        v10 = v81 + 1;
      }

      while (v81 + 1 != v78);
      v78 = [obj countByEnumeratingWithState:&v103 objects:v122 count:16];
    }

    while (v78);
  }

  v72 = __atxlog_handle_default();
  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
  {
    v73 = [objc_opt_class() supportedAnchorClass];
    *buf = 138412290;
    v119 = v73;
    v74 = v73;
    _os_log_impl(&dword_2263AA000, v72, OS_LOG_TYPE_INFO, "ATXMM: (%@) Writing out prediction table.", buf, 0xCu);
  }

  [objc_opt_class() serializeAndWritePredictionTable:v87];
  v75 = *MEMORY[0x277D85DE8];
}

+ (void)trainExpertWithAppLaunchEvents:(id)a3 appLaunchCountedSet:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  if (v6)
  {
    v9 = [v6 count];
    if (v7)
    {
      if (v9 && [v7 count])
      {
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v11 = [a1 pathToPredictionTable];
        v33 = 0;
        v12 = [v10 attributesOfItemAtPath:v11 error:&v33];
        v13 = v33;

        if (v12 && !v13)
        {
          v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA150]];
          if (v14)
          {
            v15 = objc_opt_new();
            [v15 timeIntervalSinceDate:v14];
            v17 = v16;

            if (v17 < 43200.0)
            {
              v18 = __atxlog_handle_default();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = [objc_opt_class() anchorTypeForExpert];
                *buf = 138412802;
                v35 = v19;
                v36 = 2112;
                v37 = v14;
                v38 = 2048;
                v39 = 0x40E5180000000000;
                _os_log_impl(&dword_2263AA000, v18, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) prediction table was last written to on %@, which is less than %f seconds ago. Skipping training", buf, 0x20u);
              }

LABEL_21:

              goto LABEL_22;
            }
          }
        }

        v14 = [objc_opt_class() fetchAnchorOccurrences];
        v18 = [objc_opt_class() correlateTriggerEvents:v14 withAppLaunches:v6];
        v20 = __atxlog_handle_default();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [objc_opt_class() anchorTypeForExpert];
          v22 = [v18 count];
          *buf = 138412546;
          v35 = v21;
          v36 = 2048;
          v37 = v22;
          _os_log_impl(&dword_2263AA000, v20, OS_LOG_TYPE_INFO, "ATXMM: (%@) num correlated events: %lu.", buf, 0x16u);
        }

        v23 = [objc_opt_class() createTrainingDataForSubExpertsWithCorrelatedEvents:v18];
        v24 = __atxlog_handle_default();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          [objc_opt_class() anchorTypeForExpert];
          v32 = v18;
          v25 = v14;
          v27 = v26 = v12;
          *buf = 138412290;
          v35 = v27;
          _os_log_impl(&dword_2263AA000, v24, OS_LOG_TYPE_INFO, "ATXMM: (%@) Finished generating data for training sub-experts.", buf, 0xCu);

          v12 = v26;
          v14 = v25;
          v18 = v32;
        }

        [objc_opt_class() trainSubExpertsWithTrainingData:v23 correlatedEvents:v18 appLaunchCountedSet:v7];
        v28 = __atxlog_handle_default();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          [objc_opt_class() anchorTypeForExpert];
          v30 = v29 = v12;
          *buf = 138412290;
          v35 = v30;
          _os_log_impl(&dword_2263AA000, v28, OS_LOG_TYPE_INFO, "ATXMM: (%@) Completed training of all sub-experts, and, thus, of the expert.", buf, 0xCu);

          v12 = v29;
        }

        goto LABEL_21;
      }
    }
  }

  v13 = __atxlog_handle_default();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    +[ATXMMAppPredictionExpert trainExpertWithAppLaunchEvents:appLaunchCountedSet:];
  }

LABEL_22:

  objc_autoreleasePoolPop(v8);
  v31 = *MEMORY[0x277D85DE8];
}

+ (id)predictionTable
{
  v2 = objc_opt_class();

  return [v2 predictionTableFromCache];
}

+ (id)predictionTableFromCache
{
  v2 = MEMORY[0x277CBEA90];
  v3 = [objc_opt_class() pathToPredictionTable];
  v15 = 0;
  v4 = [v2 dataWithContentsOfFile:v3 options:0 error:&v15];
  v5 = v15;

  if (v4)
  {
    v6 = objc_autoreleasePoolPush();
    v14 = v5;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v14];
    v8 = v14;

    objc_autoreleasePoolPop(v6);
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v12 = __atxlog_handle_default();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[ATXMMAppPredictionExpert predictionTableFromCache];
      }

      v9 = objc_opt_new();
    }

    v11 = v9;

    v5 = v8;
  }

  else
  {
    if ([v5 code] != 260)
    {
      v10 = __atxlog_handle_default();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        +[ATXMMAppPredictionExpert predictionTableFromCache];
      }
    }

    v11 = objc_opt_new();
  }

  return v11;
}

+ (BOOL)shouldHandleTriggerEventWithRateLimiter:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  [objc_opt_class() supportedAnchorClass];
  v4 = objc_opt_new();
  v5 = [v3 tryToIncrementCountAndReturnSuccess];

  v6 = [objc_opt_class() shouldProcessContextStoreNotification];
  v7 = [objc_opt_class() isExpertEnabledForPredictions];
  v8 = v7;
  if (v5)
  {
    if (v6 & v7)
    {
      v9 = 1;
      goto LABEL_18;
    }
  }

  else
  {
    v10 = __atxlog_handle_default();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      +[ATXMMAppPredictionExpert shouldHandleTriggerEventWithRateLimiter:];
    }
  }

  v11 = __atxlog_handle_default();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() anchorTypeForExpert];
    v13 = v12;
    v14 = @"NO";
    if (v6)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v19 = 138413058;
    v20 = v12;
    if (v8)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v22 = v15;
    v21 = 2112;
    v23 = 2112;
    if (v5)
    {
      v14 = @"YES";
    }

    v24 = v16;
    v25 = 2112;
    v26 = v14;
    _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) shouldHandleTriggerEvent returned NO for reasons: shouldProcessContextStoreNotification - %@ predictionExpertIsEnabled - %@ notRateLimited - %@", &v19, 0x2Au);
  }

  v9 = 0;
LABEL_18:

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (void)setupEventListenerForInferenceWithContext:(id)a3 rateLimiter:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = __atxlog_handle_default();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[ATXMMAppPredictionExpert setupEventListenerForInferenceWithContext:rateLimiter:];
  }

  objc_initWeak(&location, a1);
  objc_initWeak(&from, v7);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__ATXMMAppPredictionExpert_setupEventListenerForInferenceWithContext_rateLimiter___block_invoke;
  aBlock[3] = &unk_278597D30;
  objc_copyWeak(&v21, &location);
  objc_copyWeak(v22, &from);
  v22[1] = a1;
  v9 = _Block_copy(aBlock);
  v10 = __atxlog_handle_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [objc_opt_class() anchorTypeForExpert];
    *buf = 138412290;
    v26 = v11;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "ATXMM: (%@) Registering for trigger callbacks", buf, 0xCu);
  }

  [objc_opt_class() supportedAnchorClass];
  v12 = objc_opt_new();
  v13 = [objc_opt_class() predicateForContextStoreRegistration];
  v14 = MEMORY[0x277CFE350];
  v15 = [objc_opt_class() notificationIdentifier];
  v16 = [v14 localWakingRegistrationWithIdentifier:v15 contextualPredicate:v13 clientIdentifier:@"com.apple.duetexpertd.cdidentifier" callback:v9];

  [v6 registerCallback:v16];
  v17 = __atxlog_handle_default();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [objc_opt_class() anchorTypeForExpert];
    *buf = 138412290;
    v26 = v18;
    _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) Done registering with the ContextStore.", buf, 0xCu);
  }

  objc_destroyWeak(v22);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  v19 = *MEMORY[0x277D85DE8];
}

void __82__ATXMMAppPredictionExpert_setupEventListenerForInferenceWithContext_rateLimiter___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = __atxlog_handle_default();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = [objc_opt_class() anchorTypeForExpert];
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) Trigger listener called, %@", &v12, 0x16u);
  }

  v10 = *(a1 + 48);
  +[ATXMMAppPredictionExpert logTriggeredMMMetricsEntryForAnchorType:](ATXMMAppPredictionExpert, "logTriggeredMMMetricsEntryForAnchorType:", [objc_msgSend(objc_opt_class() "supportedAnchorClass")]);
  if (WeakRetained && v6 && [objc_opt_class() shouldHandleTriggerEventWithRateLimiter:v6])
  {
    [objc_opt_class() fetchAndHandleTriggerEvent];
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)fetchPredictionsForTriggerEvent:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() predictionTable];
  v5 = [v4 predictionsForTriggerEvent:v3];

  return v5;
}

+ (void)broadcastMMPredictionsForEvent:(id)a3 predictions:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() predictionReasonForExpert];
  v8 = +[ATXMagicalMomentsPrediction convertPredictionsToPMMPredictionItems:reason:anchor:triggerEvent:](ATXMagicalMomentsPrediction, "convertPredictionsToPMMPredictionItems:reason:anchor:triggerEvent:", v5, v7, [objc_msgSend(objc_opt_class() "supportedAnchorClass")], v6);

  v9 = [MEMORY[0x277D41FB0] sharedInstance];
  [v9 handlePredictedApplications:v8];
  v10 = __atxlog_handle_default();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [objc_opt_class() anchorTypeForExpert];
    v13 = 138412290;
    v14 = v11;
    _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_DEFAULT, "ATXMM: (%@) Broadcast MM predictions to all listeners.", &v13, 0xCu);
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)fetchAndHandleTriggerEvent
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_class() anchorTypeForExpert];
  v2 = [v0 uuid];
  [v0 type];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x20u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)logTriggeredMMMetricsEntryForAnchorType:(int64_t)a3
{
  v8 = objc_opt_new();
  [v8 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", a3)}];
  v4 = +[_ATXAppPredictor sharedInstance];
  v5 = [v4 abGroupIdentifiers];
  v6 = [v5 objectAtIndexedSubscript:16];

  [v8 setAbGroup:v6];
  v7 = [MEMORY[0x277D41DA8] sharedInstance];
  [v7 trackScalarForMessage:v8];
}

+ (void)logPredictedScoreMMMetricsEntryForBundle:(id)a3 anchorType:(int64_t)a4 score:(double)a5
{
  v7 = a3;
  v12 = objc_opt_new();
  [v12 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", a4)}];
  [v12 setTopBundleId:v7];

  v8 = +[_ATXAppPredictor sharedInstance];
  v9 = [v8 abGroupIdentifiers];
  v10 = [v9 objectAtIndexedSubscript:16];

  [v12 setAbGroup:v10];
  v11 = [MEMORY[0x277D41DA8] sharedInstance];
  [v11 trackDistributionForMessage:v12 value:a5];
}

+ (void)logPredictedCountMMMetricsEntryForAnchorType:(int64_t)a3 numPredictions:(int)a4
{
  v10 = objc_opt_new();
  [v10 setAnchor:{+[ATXMMAppPredictionExpert mmAnchorTypeToMMProtobufAnchor:](ATXMMAppPredictionExpert, "mmAnchorTypeToMMProtobufAnchor:", a3)}];
  v6 = +[_ATXAppPredictor sharedInstance];
  v7 = [v6 abGroupIdentifiers];
  v8 = [v7 objectAtIndexedSubscript:16];

  [v10 setAbGroup:v8];
  v9 = [MEMORY[0x277D41DA8] sharedInstance];
  [v9 trackDistributionForMessage:v10 value:a4];
}

+ (int)mmAnchorTypeToMMProtobufAnchor:(int64_t)a3
{
  if ((a3 - 1) < 0x11)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

+ (void)fetchAnchorOccurrences
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() anchorTypeForExpert];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)tagEventWithLOIForEvent:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v8 = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_class() anchorTypeForExpert];
  v2 = [v0 uuid];
  [v0 type];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x2Au);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)serializeAndWritePredictionTable:.cold.1()
{
  OUTLINED_FUNCTION_2_1();
  v7 = *MEMORY[0x277D85DE8];
  [objc_opt_class() supportedAnchorClass];
  OUTLINED_FUNCTION_0_14();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)serializeAndWritePredictionTable:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  v7 = *MEMORY[0x277D85DE8];
  [objc_opt_class() supportedAnchorClass];
  OUTLINED_FUNCTION_0_14();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)trainExpertWithAppLaunchEvents:appLaunchCountedSet:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  [objc_opt_class() supportedAnchorClass];
  OUTLINED_FUNCTION_2();
  v1 = v0;
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

+ (void)predictionTableFromCache
{
  OUTLINED_FUNCTION_2_1();
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() pathToPredictionTable];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)shouldHandleTriggerEventWithRateLimiter:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() anchorTypeForExpert];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

+ (void)setupEventListenerForInferenceWithContext:rateLimiter:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_class() anchorTypeForExpert];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end