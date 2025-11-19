@interface ATXAnchorModelEventHarvester
+ (id)deduplicatedActionEventsByIdFromActionEvents:(id)a3;
+ (id)idsFromBiomeEvents:(id)a3;
+ (id)idsFromDuetEvents:(id)a3;
+ (id)negativeAppsGivenAllAppIds:(id)a3 positiveAppIds:(id)a4;
+ (id)randomSampleFromArray:(id)a3 sampleSize:(unint64_t)a4;
- (id)fetchAppLaunchEventsAfterAnchorOccurrenceDate:(id)a3 limit:(unint64_t)a4 maxSecondsBeforeAnchor:(int64_t)a5 maxSecondsAfterAnchor:(int64_t)a6 isIncluded:(id)a7;
- (id)fetchEventsAfterAnchorOccurenceDate:(id)a3 withBiomePublisher:(id)a4 maxSecondsBeforeAnchor:(int64_t)a5 maxSecondsAfterAnchor:(int64_t)a6 isIncluded:(id)a7;
- (id)fetchEventsAfterAnchorOccurrenceDate:(id)a3 withDuetDataProviderClass:(Class)a4 limit:(unint64_t)a5 maxSecondsBeforeAnchor:(int64_t)a6 maxSecondsAfterAnchor:(int64_t)a7 predicates:(id)a8;
- (id)negativeActionsOnAnchorOccurrenceDate:(id)a3 positiveActionEvents:(id)a4;
- (id)negativeActionsOnAnchorOccurrenceDate:(id)a3 positiveActionIds:(id)a4;
@end

@implementation ATXAnchorModelEventHarvester

- (id)fetchEventsAfterAnchorOccurrenceDate:(id)a3 withDuetDataProviderClass:(Class)a4 limit:(unint64_t)a5 maxSecondsBeforeAnchor:(int64_t)a6 maxSecondsAfterAnchor:(int64_t)a7 predicates:(id)a8
{
  v11 = -a6;
  v12 = a8;
  v13 = a3;
  v14 = [v13 dateByAddingTimeInterval:v11];
  v15 = [v13 dateByAddingTimeInterval:a7];

  v16 = objc_opt_new();
  v17 = [v16 fetchEventsBetweenStartDate:v14 andEndDate:v15 withPredicates:v12];

  if ([v17 count] <= a5)
  {
    a5 = [v17 count];
  }

  v18 = [v17 subarrayWithRange:{0, a5}];

  return v18;
}

- (id)fetchEventsAfterAnchorOccurenceDate:(id)a3 withBiomePublisher:(id)a4 maxSecondsBeforeAnchor:(int64_t)a5 maxSecondsAfterAnchor:(int64_t)a6 isIncluded:(id)a7
{
  v11 = a3;
  v12 = a7;
  v13 = a4;
  v14 = objc_opt_new();
  v15 = [v11 dateByAddingTimeInterval:-a5];
  v16 = [v11 dateByAddingTimeInterval:a6];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke;
  v32[3] = &unk_2785988F0;
  v33 = v15;
  v34 = v16;
  v35 = v12;
  v17 = v12;
  v18 = v16;
  v19 = v15;
  v20 = [v13 filterWithIsIncluded:v32];

  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_2;
  v29[3] = &unk_278598918;
  v30 = v14;
  v31 = v11;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_13;
  v27[3] = &unk_278596F60;
  v21 = v30;
  v28 = v21;
  v22 = v11;
  v23 = [v20 sinkWithCompletion:v29 receiveInput:v27];

  v24 = v28;
  v25 = v21;

  return v21;
}

uint64_t __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 timestamp];
  v5 = v4;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v5 >= v6 && ([v3 timestamp], v8 = v7, objc_msgSend(*(a1 + 40), "timeIntervalSinceReferenceDate"), v8 <= v9))
  {
    v10 = (*(*(a1 + 48) + 16))();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 state];
  v5 = __atxlog_handle_anchor();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_2_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "count")}];
    v8 = *(a1 + 40);
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "Successfully fetched %@ Biome events after anchor on %@", &v10, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)fetchAppLaunchEventsAfterAnchorOccurrenceDate:(id)a3 limit:(unint64_t)a4 maxSecondsBeforeAnchor:(int64_t)a5 maxSecondsAfterAnchor:(int64_t)a6 isIncluded:(id)a7
{
  v11 = a7;
  v12 = a3;
  v13 = [v12 dateByAddingTimeInterval:-a5];
  v14 = [v12 dateByAddingTimeInterval:a6];

  if (v13)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && [v13 compare:v14] == -1)
  {
    v18 = objc_alloc_init(MEMORY[0x277CEBBE0]);
    v19 = objc_opt_new();
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __140__ATXAnchorModelEventHarvester_fetchAppLaunchEventsAfterAnchorOccurrenceDate_limit_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke;
    v24 = &unk_278598940;
    v25 = v19;
    v26 = v11;
    v20 = v19;
    [v18 enumerateAppLaunchSessionsBetweenStartDate:v13 endDate:v14 limit:a4 shouldReverse:0 bundleIDFilter:0 block:&v21];
    v16 = [v20 copy];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

uint64_t __140__ATXAnchorModelEventHarvester_fetchAppLaunchEventsAfterAnchorOccurrenceDate_limit_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ATXAppLaunchDuetEvent alloc] initWithATXEvent:v3];

  if (v4 && (*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) addObject:v4];
  }

  return 1;
}

+ (id)negativeAppsGivenAllAppIds:(id)a3 positiveAppIds:(id)a4
{
  v5 = a4;
  v6 = [a3 mutableCopy];
  [v6 minusSet:v5];

  return v6;
}

- (id)negativeActionsOnAnchorOccurrenceDate:(id)a3 positiveActionEvents:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() idsFromDuetEvents:v6];

  v9 = [(ATXAnchorModelEventHarvester *)self negativeActionsOnAnchorOccurrenceDate:v7 positiveActionIds:v8];

  return v9;
}

+ (id)idsFromDuetEvents:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 identifier];
        [v4 addObject:v12];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)idsFromBiomeEvents:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = objc_alloc(MEMORY[0x277CCACA8]);
        [v10 timestamp];
        v14 = [v12 initWithFormat:@"%f", v13];
        [v4 addObject:v14];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)deduplicatedActionEventsByIdFromActionEvents:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 identifier];
        v14 = [v5 containsObject:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [v11 identifier];
          [v5 addObject:v15];

          [v4 addObject:v11];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)negativeActionsOnAnchorOccurrenceDate:(id)a3 positiveActionIds:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[ATXAnchorModelHyperParameters sharedInstance];
  [v7 maxSecondsSinceCandidateOccurrenceToConsiderCandidateForPrediction];
  v9 = v8;

  v10 = +[_ATXDataStore sharedInstance];
  v11 = [v5 dateByAddingTimeInterval:-v9];
  v12 = [v10 appIntentDuetEventsForActionsBetweenStartDate:v11 endDate:v5];

  v13 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(ATXAnchorModelEventHarvester *)v12 negativeActionsOnAnchorOccurrenceDate:v13 positiveActionIds:v9];
  }

  v14 = objc_opt_new();
  if ([v12 count])
  {
    v15 = 0;
    do
    {
      v16 = [v12 objectAtIndexedSubscript:v15];
      v17 = [v16 identifier];
      v18 = [v6 containsObject:v17];

      if ((v18 & 1) == 0)
      {
        [v14 addIndex:v15];
      }

      ++v15;
    }

    while ([v12 count] > v15);
  }

  v19 = [v12 objectsAtIndexes:v14];
  v20 = __atxlog_handle_anchor();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [ATXAnchorModelEventHarvester negativeActionsOnAnchorOccurrenceDate:v19 positiveActionIds:v20];
  }

  return v19;
}

+ (id)randomSampleFromArray:(id)a3 sampleSize:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v7 = [v5 _pas_shuffledArrayUsingRng:v6];

  if ([v7 count] <= a4)
  {
    v8 = v7;
  }

  else
  {
    v8 = [v7 subarrayWithRange:{0, a4}];
  }

  v9 = v8;

  return v9;
}

void __143__ATXAnchorModelEventHarvester_fetchEventsAfterAnchorOccurenceDate_withBiomePublisher_maxSecondsBeforeAnchor_maxSecondsAfterAnchor_isIncluded___block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [a2 error];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_2263AA000, a3, OS_LOG_TYPE_ERROR, "Error encountered while fetching events from Biome for after the anchor event on date %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)negativeActionsOnAnchorOccurrenceDate:(double)a3 positiveActionIds:.cold.1(void *a1, NSObject *a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218240;
  v7 = [a1 count];
  v8 = 2048;
  v9 = a3;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Producing negative samples: fetched %lu actions that were received in the last %.2f seconds.", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)negativeActionsOnAnchorOccurrenceDate:(void *)a1 positiveActionIds:(NSObject *)a2 .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 134217984;
  v5 = [a1 count];
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "Producing negative samples: %lu negative actions remain after filtering out positive actions.", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

@end