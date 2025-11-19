@interface ACHMindfulMinutesAwardingSource
- (ACHAchievementProgressEngine)progressEngine;
- (ACHAwardsClient)client;
- (ACHAwardsWorkoutClient)workoutClient;
- (ACHEarnedInstanceAwardingEngine)engine;
- (ACHMindfulMinutesAwardingSource)initWithClient:(id)a3 healthStore:(id)a4 workoutClient:(id)a5 awardingEngine:(id)a6 templateStore:(id)a7 creatorDevice:(unsigned __int8)a8 progressEngine:(id)a9;
- (ACHTemplateStore)templateStore;
- (BOOL)isAppleWatch;
- (NSDate)currentDate;
- (NSString)watchCountryCode;
- (id)_progressEnvironement;
- (id)_queue_evaluateSession:(id)a3 shouldLog:(BOOL)a4;
- (id)_queue_goalQuantityForTemplate:(id)a3 progressEnvironment:(id)a4;
- (id)_queue_progressQuantityForTemplate:(id)a3 progressEnvironment:(id)a4;
- (id)_relevantTemplatesForMindfulSession:(id)a3;
- (id)earnedInstancesForHistoricalInterval:(id)a3 error:(id *)a4;
- (void)_queue_startSampleQueryIfNecessary;
- (void)_runIncrementalEvaluation:(id)a3;
- (void)_startSampleQuery;
- (void)_stopSampleQuery;
- (void)activate;
- (void)dealloc;
- (void)requestAchievementProgressUpdatesForTemplates:(id)a3;
- (void)sessionAdded:(id)a3;
@end

@implementation ACHMindfulMinutesAwardingSource

- (ACHMindfulMinutesAwardingSource)initWithClient:(id)a3 healthStore:(id)a4 workoutClient:(id)a5 awardingEngine:(id)a6 templateStore:(id)a7 creatorDevice:(unsigned __int8)a8 progressEngine:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v28.receiver = self;
  v28.super_class = ACHMindfulMinutesAwardingSource;
  v21 = [(ACHMindfulMinutesAwardingSource *)&v28 init];
  v22 = v21;
  if (v21)
  {
    objc_storeWeak(&v21->_client, v15);
    objc_storeStrong(&v22->_healthStore, a4);
    objc_storeWeak(&v22->_workoutClient, v17);
    objc_storeWeak(&v22->_engine, v18);
    objc_storeWeak(&v22->_progressEngine, v20);
    objc_storeWeak(&v22->_templateStore, v19);
    v22->_creatorDevice = a8;
    v23 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    calendar = v22->_calendar;
    v22->_calendar = v23;

    v25 = HKCreateSerialDispatchQueue();
    internalQueue = v22->_internalQueue;
    v22->_internalQueue = v25;
  }

  return v22;
}

- (void)activate
{
  objc_initWeak(&location, self);
  v3 = [*MEMORY[0x277CE8C10] UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __43__ACHMindfulMinutesAwardingSource_activate__block_invoke;
  v9 = &unk_2784907F8;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(v3, &self->_protectedDataToken, v4, &v6);

  [(ACHMindfulMinutesAwardingSource *)self _queue_startSampleQueryIfNecessary:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __43__ACHMindfulMinutesAwardingSource_activate__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained client];
  v4 = [v3 isProtectedDataAvailable];

  v5 = ACHLogWorkouts();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingSource] Received protected data availabilty change to state: %d", v8, 8u);
  }

  if (v4)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _queue_startSampleQueryIfNecessary];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_protectedDataToken))
  {
    notify_cancel(self->_protectedDataToken);
  }

  v3.receiver = self;
  v3.super_class = ACHMindfulMinutesAwardingSource;
  [(ACHMindfulMinutesAwardingSource *)&v3 dealloc];
}

- (void)_queue_startSampleQueryIfNecessary
{
  if (!self->_sampleQuery)
  {
    objc_initWeak(&location, self);
    v3 = [(ACHMindfulMinutesAwardingSource *)self internalQueue];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __69__ACHMindfulMinutesAwardingSource__queue_startSampleQueryIfNecessary__block_invoke;
    v4[3] = &unk_278490820;
    objc_copyWeak(&v5, &location);
    dispatch_async(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __69__ACHMindfulMinutesAwardingSource__queue_startSampleQueryIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startSampleQuery];
}

- (void)_startSampleQuery
{
  dispatch_assert_queue_V2(self->_internalQueue);
  v3 = [MEMORY[0x277CCD8D8] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x277CCCFF0]);
  v5 = [MEMORY[0x277CCD840] latestAnchor];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ACHMindfulMinutesAwardingSource__startSampleQuery__block_invoke;
  v10[3] = &unk_278490848;
  objc_copyWeak(&v11, &location);
  v6 = [v4 initWithType:v3 predicate:0 anchor:v5 limit:0 resultsHandler:v10];
  sampleQuery = self->_sampleQuery;
  self->_sampleQuery = v6;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__ACHMindfulMinutesAwardingSource__startSampleQuery__block_invoke_303;
  v8[3] = &unk_278490848;
  objc_copyWeak(&v9, &location);
  [(HKAnchoredObjectQuery *)self->_sampleQuery setUpdateHandler:v8];
  [(HKHealthStore *)self->_healthStore executeQuery:self->_sampleQuery];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __52__ACHMindfulMinutesAwardingSource__startSampleQuery__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = a6;
  if (v7)
  {
    v8 = ACHLogWorkouts();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __52__ACHMindfulMinutesAwardingSource__startSampleQuery__block_invoke_cold_1(v7, v8);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _stopSampleQuery];
  }
}

void __52__ACHMindfulMinutesAwardingSource__startSampleQuery__block_invoke_303(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  if (v9)
  {
    v10 = ACHLogAwardEngine();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __52__ACHMindfulMinutesAwardingSource__startSampleQuery__block_invoke_303_cold_1(v9, v10);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _stopSampleQuery];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained sessionAdded:v8];
  }
}

- (void)_stopSampleQuery
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ACHMindfulMinutesAwardingSource__stopSampleQuery__block_invoke;
  block[3] = &unk_278490870;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __51__ACHMindfulMinutesAwardingSource__stopSampleQuery__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) stopQuery:*(*(a1 + 32) + 112)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 112);
  *(v2 + 112) = 0;
}

- (void)sessionAdded:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__ACHMindfulMinutesAwardingSource_sessionAdded___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __48__ACHMindfulMinutesAwardingSource_sessionAdded___block_invoke(uint64_t a1)
{
  IsAppleWatch = ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch([*(a1 + 32) isAppleWatch]);
  v3 = *(a1 + 32);
  if (IsAppleWatch)
  {
    v4 = *(a1 + 40);

    [v3 _runIncrementalEvaluation:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(v3 + 6);
    [WeakRetained requestProgressUpdateForProgressProvider:*(a1 + 32)];
  }
}

- (BOOL)isAppleWatch
{
  v3 = [(ACHMindfulMinutesAwardingSource *)self overrideIsAppleWatch];

  if (v3)
  {
    v4 = [(ACHMindfulMinutesAwardingSource *)self overrideIsAppleWatch];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CCDD30] sharedBehavior];
    v5 = [v4 isAppleWatch];
  }

  v6 = v5;

  return v6;
}

- (NSString)watchCountryCode
{
  v3 = [(ACHMindfulMinutesAwardingSource *)self overrideWatchCountryCode];

  if (v3)
  {
    [(ACHMindfulMinutesAwardingSource *)self overrideWatchCountryCode];
  }

  else
  {
    ACHPairedWatchCountryCode();
  }
  v4 = ;

  return v4;
}

- (NSDate)currentDate
{
  v3 = [(ACHMindfulMinutesAwardingSource *)self currentDateOverride];

  if (v3)
  {
    [(ACHMindfulMinutesAwardingSource *)self currentDateOverride];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v4 = ;

  return v4;
}

- (id)_progressEnvironement
{
  v3 = [ACHMindfulMinutesAwardingEnvironment alloc];
  healthStore = self->_healthStore;
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);
  calendar = self->_calendar;
  v7 = [(ACHMindfulMinutesAwardingSource *)self currentDate];
  v8 = [(ACHMindfulMinutesAwardingEnvironment *)v3 initWithHealthStore:healthStore workoutClient:WeakRetained calendar:calendar currentDate:v7];

  return v8;
}

- (id)_relevantTemplatesForMindfulSession:(id)a3
{
  v4 = a3;
  v5 = [(ACHMindfulMinutesAwardingSource *)self watchCountryCode];
  calendar = self->_calendar;
  v7 = [v4 endDate];

  v8 = [(NSCalendar *)calendar components:28 fromDate:v7];

  WeakRetained = objc_loadWeakRetained(&self->_templateStore);
  v10 = [WeakRetained availableTemplatesForDateComponents:v8 countryCode:v5];

  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  return v12;
}

- (id)_queue_evaluateSession:(id)a3 shouldLog:(BOOL)a4
{
  v4 = a4;
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ACHMindfulMinutesAwardingSource *)self internalQueue];
  dispatch_assert_queue_V2(v7);

  calendar = self->_calendar;
  v9 = [v6 startDate];
  v50 = [(NSCalendar *)calendar components:28 fromDate:v9];

  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [(ACHMindfulMinutesAwardingSource *)self _relevantTemplatesForMindfulSession:v6];
  v48 = v4;
  if (v4)
  {
    v11 = ACHLogAwardEngine();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = ACHTriggerOptionsToString();
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
      v14 = [v6 UUID];
      *buf = 138413058;
      v60 = v12;
      v61 = 2114;
      v62 = v13;
      v63 = 2114;
      v64 = v50;
      v65 = 2112;
      v66 = v14;
      _os_log_impl(&dword_221DDC000, v11, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingSource] Evaluating triggers %@ for %{public}@ templates using activity summary with date %{public}@, values: %@", buf, 0x2Au);
    }
  }

  v15 = [ACHMindfulMinutesAwardingEnvironment alloc];
  healthStore = self->_healthStore;
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);
  v18 = self->_calendar;
  v47 = v6;
  v19 = [v6 endDate];
  v53 = [(ACHMindfulMinutesAwardingEnvironment *)v15 initWithHealthStore:healthStore workoutClient:WeakRetained calendar:v18 currentDate:v19];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v10;
  v20 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  v21 = v48;
  if (v20)
  {
    v22 = v20;
    v23 = *v55;
    v24 = 0x277CCA000uLL;
    do
    {
      v25 = 0;
      v51 = v22;
      do
      {
        if (*v55 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v54 + 1) + 8 * v25);
        v27 = [v26 gracePredicate];
        v28 = v27;
        if (v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = [v26 predicate];
        }

        v30 = v29;

        v31 = [*(v24 + 3120) predicateWithFormat:v30];
        [v31 allowEvaluation];
        if ([v31 evaluateWithObject:v53])
        {
          v32 = objc_alloc_init(MEMORY[0x277CE8D38]);
          v33 = [v26 uniqueName];
          [v32 setTemplateUniqueName:v33];

          [v50 year];
          [v50 month];
          [v50 day];
          v34 = ACHDateComponentsForYearMonthDay();
          [v32 setEarnedDateComponents:v34];

          v35 = [v26 graceValueExpression];
          if (v35)
          {
            v36 = v35;
LABEL_17:
            v37 = [v26 canonicalUnit];

            if (v37)
            {
              v38 = [MEMORY[0x277CCA9C0] expressionWithFormat:v36];
              v39 = [v38 expressionValueWithObject:v53 context:0];
              if (v39)
              {
                v40 = MEMORY[0x277CCD7E8];
                v41 = [v26 canonicalUnit];
                [v39 doubleValue];
                v42 = [v40 quantityWithUnit:v41 doubleValue:?];
                [v32 setValue:v42];

                v21 = v48;
              }
            }
          }

          else
          {
            v36 = [v26 valueExpression];
            if (v36)
            {
              goto LABEL_17;
            }
          }

          if (v21)
          {
            v43 = ACHLogAwardEngine();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v60 = v32;
              _os_log_impl(&dword_221DDC000, v43, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingSource] Created earned instance: %@", buf, 0xCu);
            }

            [(ACHMindfulMinutesAwardingEnvironment *)v53 logValues];
          }

          [v49 addObject:v32];

          v24 = 0x277CCA000;
          v22 = v51;
        }

        ++v25;
      }

      while (v22 != v25);
      v22 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v22);
  }

  v44 = [v49 copy];
  v45 = *MEMORY[0x277D85DE8];

  return v44;
}

- (void)_runIncrementalEvaluation:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = ACHLogAwardEngine();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v13 = [v4 count];
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingSource] Running incremental evaluation for %lu sessions", buf, 0xCu);
  }

  v6 = [(ACHMindfulMinutesAwardingSource *)self engine];
  v7 = [(ACHMindfulMinutesAwardingSource *)self uniqueName];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ACHMindfulMinutesAwardingSource__runIncrementalEvaluation___block_invoke;
  v10[3] = &unk_278490908;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v6 requestIncrementalEvaluationForSource:v7 evaluationBlock:v10];

  v9 = *MEMORY[0x277D85DE8];
}

id __61__ACHMindfulMinutesAwardingSource__runIncrementalEvaluation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) internalQueue];
  dispatch_assert_queue_not_V2(v4);

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ACHMindfulMinutesAwardingSource__runIncrementalEvaluation___block_invoke_314;
  block[3] = &unk_2784908E0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v12 = v6;
  v13 = v7;
  v14 = &v15;
  dispatch_sync(v5, block);

  v8 = [MEMORY[0x277CBEB98] setWithArray:v16[5]];
  v9 = [*(a1 + 32) progressEngine];
  [v9 requestProgressUpdateForProgressProvider:*(a1 + 32)];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __61__ACHMindfulMinutesAwardingSource__runIncrementalEvaluation___block_invoke_314(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 40) _queue_evaluateSession:*(*(&v9 + 1) + 8 * v6) shouldLog:{1, v9}];
        [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)earnedInstancesForHistoricalInterval:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(ACHMindfulMinutesAwardingSource *)self internalQueue];
  dispatch_assert_queue_not_V2(v7);

  v8 = ACHLogAwardEngine();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 description];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v9;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "[ACHMindfulMinutesAwardingSource] Running historical evaluation for date interval %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  internalQueue = self->_internalQueue;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __78__ACHMindfulMinutesAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke;
  v18 = &unk_278490980;
  v19 = self;
  v11 = v6;
  v20 = v11;
  p_buf = &buf;
  v22 = a4;
  dispatch_sync(internalQueue, &v15);
  v12 = [MEMORY[0x277CBEB98] setWithArray:{*(*(&buf + 1) + 40), v15, v16, v17, v18, v19}];

  _Block_object_dispose(&buf, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __78__ACHMindfulMinutesAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke(void *a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = [MEMORY[0x277CBEAA8] date];
  v3 = [[ACHMindfulSessionIterator alloc] initWithHealthStore:*(a1[4] + 24)];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__ACHMindfulMinutesAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_2;
  v15[3] = &unk_278490930;
  v4 = a1[5];
  v5 = a1[6];
  v15[4] = a1[4];
  v15[5] = v5;
  v15[6] = &v16;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ACHMindfulMinutesAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_3;
  v14[3] = &unk_278490958;
  v14[4] = &v20;
  [(ACHMindfulSessionIterator *)v3 enumerateMindfulSessionsForDateInterval:v4 handler:v15 errorHandler:v14];
  v6 = [MEMORY[0x277CBEAA8] date];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;
  [v2 timeIntervalSinceReferenceDate];
  [ACHDMetricsReporter reportProcessingMetricsWithSourceType:3 intervalProcessed:a1[5] processingDuration:v17[3] recordsProcessed:v21[5] error:v8 - v9];
  v10 = a1[7];
  v11 = v21[5];
  v12 = v11;
  if (v11)
  {
    if (v10)
    {
      v13 = v11;
      *v10 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void __78__ACHMindfulMinutesAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) _queue_evaluateSession:v5 shouldLog:1];
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v4];
  ++*(*(*(a1 + 48) + 8) + 24);

  objc_autoreleasePoolPop(v3);
}

void __78__ACHMindfulMinutesAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ACHLogAwardEngine();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__ACHMindfulMinutesAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_3_cold_1(v3, v4);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (void)requestAchievementProgressUpdatesForTemplates:(id)a3
{
  v4 = a3;
  v5 = [(ACHMindfulMinutesAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__ACHMindfulMinutesAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __81__ACHMindfulMinutesAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [*(a1 + 32) _progressEnvironement];
  v4 = objc_alloc_init(MEMORY[0x277CE8D40]);
  v20 = v3;
  if (v3)
  {
    v19 = v2;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 40);
    v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v22 + 1) + 8 * i);
          v10 = [v4 validateTemplate:v9];
          if ([v10 isValid])
          {
            v11 = [*(a1 + 32) _queue_goalQuantityForTemplate:v9 progressEnvironment:v20];
            v12 = [*(a1 + 32) _queue_progressQuantityForTemplate:v9 progressEnvironment:v20];
            v13 = objc_alloc(MEMORY[0x277CE8CC0]);
            v14 = [v9 uniqueName];
            v15 = [v13 initWithTemplateUniqueName:v14 progressQuantity:v12 goalQuantity:v11];

            [v19 addObject:v15];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v6);
    }

    v16 = [*(a1 + 32) progressEngine];
    v2 = v19;
    v17 = [v19 copy];
    [v16 processAchievementProgressUpdates:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_queue_goalQuantityForTemplate:(id)a3 progressEnvironment:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 graceGoalExpression];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v5 goalExpression];
  }

  v10 = v9;

  v11 = [MEMORY[0x277CCA9C0] expressionWithFormat:v10];
  [v11 allowEvaluation];
  v12 = [v11 expressionValueWithObject:v6 context:0];

  if (v12)
  {
    v13 = MEMORY[0x277CCD7E8];
    v14 = [v5 canonicalUnit];
    [v12 doubleValue];
    v15 = [v13 quantityWithUnit:v14 doubleValue:?];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_queue_progressQuantityForTemplate:(id)a3 progressEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v9 = [(ACHMindfulMinutesAwardingSource *)self currentDate];
  IsAvailableForCalendarAndDate = ACHTemplateIsAvailableForCalendarAndDate(v6, v8, v9);

  if (IsAvailableForCalendarAndDate)
  {
    v11 = [v6 graceProgressExpression];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v6 progressExpression];
    }

    v14 = v13;

    v16 = [MEMORY[0x277CCA9C0] expressionWithFormat:v14];
    [v16 allowEvaluation];
    v17 = [v16 expressionValueWithObject:v7 context:0];
    if (v17)
    {
      v18 = MEMORY[0x277CCD7E8];
      v19 = [v6 canonicalUnit];
      [v17 doubleValue];
      v15 = [v18 quantityWithUnit:v19 doubleValue:?];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v14 = [v6 canonicalUnit];
    v15 = ACHHKQuantityWithValueAndUnit();
  }

  return v15;
}

- (ACHAwardsClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (ACHAwardsWorkoutClient)workoutClient
{
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);

  return WeakRetained;
}

- (ACHEarnedInstanceAwardingEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (ACHAchievementProgressEngine)progressEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_progressEngine);

  return WeakRetained;
}

- (ACHTemplateStore)templateStore
{
  WeakRetained = objc_loadWeakRetained(&self->_templateStore);

  return WeakRetained;
}

void __52__ACHMindfulMinutesAwardingSource__startSampleQuery__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "[ACHMindfulMinutesAwardingSource] Error starting sample query: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __52__ACHMindfulMinutesAwardingSource__startSampleQuery__block_invoke_303_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "[ACHMindfulMinutesAwardingSource] Error from sample query update: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __78__ACHMindfulMinutesAwardingSource_earnedInstancesForHistoricalInterval_error___block_invoke_3_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 description];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "[ACHMindfulMinutesAwardingSource] Failed to query all mindfulness sessions: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end