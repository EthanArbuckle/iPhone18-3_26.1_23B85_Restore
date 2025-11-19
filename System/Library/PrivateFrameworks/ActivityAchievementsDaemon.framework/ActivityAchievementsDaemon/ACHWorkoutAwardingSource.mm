@interface ACHWorkoutAwardingSource
- (ACHAchievementProgressEngine)progressEngine;
- (ACHAwardsClient)client;
- (ACHAwardsWorkoutClient)workoutClient;
- (ACHDataStore)dataStore;
- (ACHEarnedInstanceAwardingEngine)engine;
- (ACHTemplateStore)templateStore;
- (ACHWorkoutAwardingSource)initWithClient:(id)a3 healthStore:(id)a4 awardingEngine:(id)a5 dataStore:(id)a6 templateStore:(id)a7 creatorDevice:(unsigned __int8)a8 progressEngine:(id)a9 workoutClient:(id)a10 initialResultsHandler:(id)a11;
- (BOOL)_appendEarnedInstancesForWorkout:(id)a3 toSet:(id)a4 templates:(id)a5 calendar:(id)a6 numberOfDaysInWeek:(unint64_t)a7 predicates:(id)a8 firstDayOfFitnessWeek:(int64_t)a9 watchCountryCode:(id)a10 error:(id *)a11;
- (BOOL)_isMetricLocale;
- (BOOL)isAppleWatch;
- (BOOL)isTinkerPaired;
- (NSDate)validThroughDate;
- (NSDictionary)dataStoreProperties;
- (id)_dataStoreKeys;
- (id)_earnedInstancesForWorkouts:(id)a3;
- (id)_earnedInstancesForWorkoutsInDateInterval:(id)a3 error:(id *)a4;
- (id)_keyForBaseKey:(id)a3 activityType:(unint64_t)a4;
- (id)_lock_createWorkoutEvaluationEnvironmentWithWorkout:(id)a3 firstDayOfFitnessWeek:(int64_t)a4 numberOfDaysInWeek:(unint64_t)a5 calendar:(id)a6 error:(id *)a7;
- (id)_progressEnvironment;
- (id)_queue_goalQuantityForTemplate:(id)a3 progressEnvironment:(id)a4;
- (id)_queue_progressQuantityForTemplate:(id)a3 progressEnvironment:(id)a4;
- (id)_stringForDate:(id)a3;
- (id)_stringForDuration:(double)a3;
- (id)_stringForExperienceType:(unint64_t)a3;
- (id)_valueForDataStoreKey:(id)a3;
- (id)currentDate;
- (id)earnedInstancesForHistoricalInterval:(id)a3 error:(id *)a4;
- (id)watchCountryCode;
- (void)_lock_startWorkoutQueryWithInitialResultsHandler:(id)a3;
- (void)_lock_updateWorkoutRecordsWithEnvironment:(id)a3;
- (void)_progressEnvironment;
- (void)_startWorkoutQueryIfNecessary;
- (void)_stopWorkoutQuery;
- (void)_unit_test_setHistoricalRunCompleteVersion:(int64_t)a3;
- (void)activate;
- (void)dataStoreDidClearAllProperties:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)requestAchievementProgressUpdatesForTemplates:(id)a3;
- (void)setDataStoreProperties:(id)a3;
- (void)workoutsAdded:(id)a3;
@end

@implementation ACHWorkoutAwardingSource

- (id)_progressEnvironment
{
  v3 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [v3 maximumRangeOfUnit:512];
  v6 = v5;
  v7 = [(ACHWorkoutAwardingSource *)self currentDate];
  v8 = ACHStartOfFitnessWeekBeforeDateInCalendar();

  v9 = [v3 hk_dateByAddingDays:v4 + v6 toDate:v8];
  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
  v11 = [(ACHWorkoutAwardingSource *)self workoutClient];
  v17 = 0;
  v12 = [v11 numberOfFirstPartyWorkoutsWithDuration:v10 containedInInterval:&v17 error:300.0];
  v13 = v17;

  if (v13)
  {
    v14 = ACHLogAwardEngine();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutAwardingSource _progressEnvironment];
    }
  }

  v15 = [[ACHWorkoutProgressEvaluationEnvironment alloc] initWithNumberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:v12];

  return v15;
}

- (id)currentDate
{
  v3 = [(ACHWorkoutAwardingSource *)self currentDateOverride];

  if (v3)
  {
    [(ACHWorkoutAwardingSource *)self currentDateOverride];
  }

  else
  {
    [MEMORY[0x277CBEAA8] date];
  }
  v4 = ;

  return v4;
}

- (ACHAchievementProgressEngine)progressEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_progressEngine);

  return WeakRetained;
}

- (ACHAwardsWorkoutClient)workoutClient
{
  WeakRetained = objc_loadWeakRetained(&self->_workoutClient);

  return WeakRetained;
}

- (ACHWorkoutAwardingSource)initWithClient:(id)a3 healthStore:(id)a4 awardingEngine:(id)a5 dataStore:(id)a6 templateStore:(id)a7 creatorDevice:(unsigned __int8)a8 progressEngine:(id)a9 workoutClient:(id)a10 initialResultsHandler:(id)a11
{
  v17 = a3;
  v36 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v37.receiver = self;
  v37.super_class = ACHWorkoutAwardingSource;
  v24 = [(ACHWorkoutAwardingSource *)&v37 init];
  v25 = v24;
  if (v24)
  {
    v24->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v24->_client, v17);
    objc_storeStrong(&v25->_healthStore, a4);
    v26 = HKCreateSerialDispatchQueue();
    internalQueue = v25->_internalQueue;
    v25->_internalQueue = v26;

    objc_storeWeak(&v25->_engine, v18);
    objc_storeWeak(&v25->_dataStore, v19);
    objc_storeWeak(&v25->_progressEngine, v21);
    objc_storeWeak(&v25->_templateStore, v20);
    v25->_creatorDevice = a8;
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templateValidationResultsByUniqueName = v25->_templateValidationResultsByUniqueName;
    v25->_templateValidationResultsByUniqueName = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    workoutRecordsByKey = v25->_workoutRecordsByKey;
    v25->_workoutRecordsByKey = v30;

    WeakRetained = objc_loadWeakRetained(&v25->_dataStore);
    [WeakRetained addPropertyProvider:v25];

    objc_storeWeak(&v25->_workoutClient, v22);
    v33 = _Block_copy(v23);
    initialResultsHandler = v25->_initialResultsHandler;
    v25->_initialResultsHandler = v33;

    v25->_isTinkerPaired = FIIsActivePairedDeviceSatellitePaired();
  }

  return v25;
}

- (void)activate
{
  objc_initWeak(&location, self);
  v3 = [*MEMORY[0x277CE8C10] UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __36__ACHWorkoutAwardingSource_activate__block_invoke;
  v9 = &unk_2784907F8;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(v3, &self->_protectedDataToken, v4, &v6);

  [(ACHWorkoutAwardingSource *)self _startWorkoutQueryIfNecessary:v6];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __36__ACHWorkoutAwardingSource_activate__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Workout awarding source received protected data availabilty change to state: %d", v8, 8u);
  }

  if (v4)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 _startWorkoutQueryIfNecessary];
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
  v3.super_class = ACHWorkoutAwardingSource;
  [(ACHWorkoutAwardingSource *)&v3 dealloc];
}

- (void)_startWorkoutQueryIfNecessary
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([v3 isAppleWatch])
  {
    v4 = [(ACHWorkoutAwardingSource *)self initialHistoricalRunComplete];

    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (!self->_workoutQuery)
  {
    [(ACHWorkoutAwardingSource *)self _lock_startWorkoutQueryWithInitialResultsHandler:self->_initialResultsHandler];
  }

LABEL_7:

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_startWorkoutQueryWithInitialResultsHandler:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v6 = [v5 objectForKeyedSubscript:@"LastWorkoutProcessedEndDate"];

  v7 = MEMORY[0x277CBEAA8];
  [v6 doubleValue];
  v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v9 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v8 endDate:0 options:1];
  v10 = objc_alloc(MEMORY[0x277CCCFF0]);
  v11 = [MEMORY[0x277CCD8D8] workoutType];
  v12 = [MEMORY[0x277CCD840] latestAnchor];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke;
  v21[3] = &unk_278492960;
  objc_copyWeak(&v23, &location);
  v13 = v4;
  v22 = v13;
  v14 = [v10 initWithType:v11 predicate:v9 anchor:v12 limit:0 resultsHandler:v21];
  workoutQuery = self->_workoutQuery;
  self->_workoutQuery = v14;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke_350;
  v19[3] = &unk_278490848;
  objc_copyWeak(&v20, &location);
  [(HKAnchoredObjectQuery *)self->_workoutQuery setUpdateHandler:v19];
  v16 = ACHLogWorkouts();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_221DDC000, v16, OS_LOG_TYPE_DEFAULT, "Starting workout query", v18, 2u);
  }

  v17 = [(ACHWorkoutAwardingSource *)self healthStore];
  [v17 executeQuery:self->_workoutQuery];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
}

void __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = ACHLogWorkouts();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _stopWorkoutQuery];
  }

  v18 = *(a1 + 32);
  if (v18)
  {
    (*(v18 + 16))(v18, v11, v12, v13, v14, v15);
  }

  if ([v12 count])
  {
    v19 = objc_loadWeakRetained((a1 + 40));
    [v19 workoutsAdded:v12];
  }
}

void __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke_350(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = a3;
  v9 = a6;
  if (v9)
  {
    v10 = ACHLogWorkouts();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke_350_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained _stopWorkoutQuery];
    goto LABEL_7;
  }

  if ([v8 count])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained workoutsAdded:v8];
LABEL_7:
  }
}

- (void)_stopWorkoutQuery
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(ACHWorkoutAwardingSource *)self healthStore];
  [v3 stopQuery:self->_workoutQuery];

  workoutQuery = self->_workoutQuery;
  self->_workoutQuery = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAppleWatch
{
  v3 = [(ACHWorkoutAwardingSource *)self overrideIsAppleWatch];

  if (v3)
  {
    v4 = [(ACHWorkoutAwardingSource *)self overrideIsAppleWatch];
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

- (BOOL)isTinkerPaired
{
  v3 = [(ACHWorkoutAwardingSource *)self overrideIsTinkerPaired];

  if (!v3)
  {
    return self->_isTinkerPaired;
  }

  v4 = [(ACHWorkoutAwardingSource *)self overrideIsTinkerPaired];
  v5 = [v4 BOOLValue];

  return v5;
}

- (id)earnedInstancesForHistoricalInterval:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (![(ACHWorkoutAwardingSource *)self isAppleWatch]|| [(ACHWorkoutAwardingSource *)self isTinkerPaired])
  {
    goto LABEL_5;
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v8 = [v7 objectForKeyedSubscript:@"WorkoutHistoricalRunCompleteVersion"];

  os_unfair_lock_unlock(&self->_lock);
  if ([v8 integerValue] >= 2)
  {

LABEL_5:
    v23 = 0;
    v9 = [(ACHWorkoutAwardingSource *)self _earnedInstancesForWorkoutsInDateInterval:v6 error:&v23];
    v8 = v23;
    if (v8)
    {
      v10 = ACHLogAwardEngine();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ACHWorkoutAwardingSource earnedInstancesForHistoricalInterval:error:];
      }

      if (a4)
      {
        v11 = v8;
        *a4 = v8;
      }

      else
      {
        _HKLogDroppedError();
      }

      v13 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      [(ACHWorkoutAwardingSource *)self setInitialHistoricalRunComplete:1];
      if (![(ACHWorkoutAwardingSource *)self isAppleWatch])
      {
        v12 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        [v12 setObject:&unk_283555B78 forKeyedSubscript:@"WorkoutHistoricalRunCompleteVersion"];
      }

      os_unfair_lock_unlock(&self->_lock);
      [(ACHWorkoutAwardingSource *)self _startWorkoutQueryIfNecessary];
      v13 = v9;
      v9 = v13;
    }

    v14 = v13;
    goto LABEL_16;
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to run historical run on watch because minimum version for phone historical run (%ld) is lower than expected version (%ld)", objc_msgSend(v8, "integerValue"), 2];
  v17 = ACHLogWorkouts();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v9;
    _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  v18 = objc_alloc(MEMORY[0x277CCA9B8]);
  v24 = *MEMORY[0x277CCA450];
  v25 = v9;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v20 = [v18 initWithDomain:@"com.apple.Achievements.workout-awarding-source" code:101 userInfo:v19];

  v21 = v20;
  if (v21)
  {
    if (a4)
    {
      v22 = v21;
      *a4 = v21;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB98]);
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)workoutsAdded:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ACHWorkoutAwardingSource *)self progressEngine];
  [v5 requestProgressUpdateForProgressProvider:self];

  v6 = [MEMORY[0x277CCDD30] sharedBehavior];
  IsAppleWatch = ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch([v6 isAppleWatch]);

  if (IsAppleWatch)
  {
    v8 = ACHLogWorkouts();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = [v4 count];
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "WorkoutAwardingProvider found %lu new workout samples, requesting incremental evaluation", buf, 0xCu);
    }

    v9 = [(ACHWorkoutAwardingSource *)self engine];
    v10 = [(ACHWorkoutAwardingSource *)self uniqueName];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__ACHWorkoutAwardingSource_workoutsAdded___block_invoke;
    v12[3] = &unk_278490908;
    v13 = v4;
    v14 = self;
    [v9 requestIncrementalEvaluationForSource:v10 evaluationBlock:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

id __42__ACHWorkoutAwardingSource_workoutsAdded___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = ACHLogWorkouts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) count];
    v9 = 138543618;
    v10 = v3;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "WorkoutAwardingProvider starting incremental evaluation for date range: %{public}@, %lu workout samples", &v9, 0x16u);
  }

  v6 = [*(a1 + 40) _earnedInstancesForWorkouts:*(a1 + 32)];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)requestAchievementProgressUpdatesForTemplates:(id)a3
{
  v4 = a3;
  v5 = [(ACHWorkoutAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ACHWorkoutAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __74__ACHWorkoutAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [*(a1 + 32) _progressEnvironment];
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

- (id)_queue_progressQuantityForTemplate:(id)a3 progressEnvironment:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v9 = [(ACHWorkoutAwardingSource *)self currentDate];
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
    v17 = [v16 expressionValueWithObject:v7 context:0];
    v18 = [v6 canonicalUnit];
    v15 = ACHHKQuantityWithValueAndUnit();
  }

  else
  {
    v14 = [v6 canonicalUnit];
    v15 = ACHHKQuantityWithValueAndUnit();
  }

  return v15;
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
  v12 = [v11 expressionValueWithObject:v6 context:0];

  v13 = [v5 canonicalUnit];
  v14 = ACHHKQuantityWithValueAndUnit();

  return v14;
}

- (NSDate)validThroughDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v4 = [v3 objectForKeyedSubscript:@"LastWorkoutProcessedEndDate"];

  os_unfair_lock_unlock(&self->_lock);
  if (v4)
  {
    v5 = MEMORY[0x277CBEAA8];
    [v4 doubleValue];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_keyForBaseKey:(id)a3 activityType:(unint64_t)a4
{
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCDBE8];
  v7 = a3;
  v8 = [v6 _stringFromWorkoutActivityType:a4];
  v9 = [v5 stringWithFormat:@"%@-%@", v7, v8];

  return v9;
}

- (id)_dataStoreKeys
{
  v33[11] = *MEMORY[0x277D85DE8];
  v18 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestElevationGained" activityType:24];
  v33[0] = v18;
  v33[1] = @"Best5KDuration";
  v33[2] = @"Best10KDuration";
  v33[3] = @"BestWheelchair5KDuration";
  v33[4] = @"BestWheelchair10KDuration";
  v33[5] = @"BestHalfMarathonDuration";
  v33[6] = @"BestMarathonDuration";
  v33[7] = @"BestWheelchairHalfMarathonDuration";
  v33[8] = @"BestWheelchairMarathonDuration";
  v33[9] = @"LastWorkoutProcessedEndDate";
  v33[10] = @"WorkoutHistoricalRunCompleteVersion";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:11];
  v4 = [v3 mutableCopy];

  v32[0] = @"WorkoutCount";
  v32[1] = @"BestEnergyBurned";
  v32[2] = @"BestDistance";
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = *MEMORY[0x277CE8B78];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v20 = *v27;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v26 + 1) + 8 * i) unsignedIntegerValue];
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v9 = v21;
        v10 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v23;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:*(*(&v22 + 1) + 8 * j) activityType:v8];
              [v4 addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v6);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (NSDictionary)dataStoreProperties
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(ACHWorkoutAwardingSource *)self _dataStoreKeys];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
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
        v11 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          [v4 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);
  v13 = [v4 copy];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)setDataStoreProperties:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(ACHWorkoutAwardingSource *)self _dataStoreKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
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
        v11 = [v4 objectForKeyedSubscript:v10];
        if (v11)
        {
          v12 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
          [v12 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataStoreDidClearAllProperties:(id)a3 completion:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  [v5 removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  v6[2](v6, 1);
}

- (id)_valueForDataStoreKey:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v6 = [v5 objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_stringForDuration:(double)a3
{
  if (a3 == 1.79769313e308)
  {
    v4 = @"No Record Set";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lf seconds", *&a3];
  }

  return v4;
}

- (id)_stringForExperienceType:(unint64_t)a3
{
  if (a3 > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_2784929A8[a3];
  }
}

- (id)_stringForDate:(id)a3
{
  v3 = _stringForDate__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [ACHWorkoutAwardingSource _stringForDate:];
  }

  v5 = [_stringForDate__formatter stringFromDate:v4];

  return v5;
}

uint64_t __43__ACHWorkoutAwardingSource__stringForDate___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _stringForDate__formatter;
  _stringForDate__formatter = v0;

  v2 = _stringForDate__formatter;

  return [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
}

- (id)_lock_createWorkoutEvaluationEnvironmentWithWorkout:(id)a3 firstDayOfFitnessWeek:(int64_t)a4 numberOfDaysInWeek:(unint64_t)a5 calendar:(id)a6 error:(id *)a7
{
  v124 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v119 = a6;
  v12 = [v11 sourceRevision];
  v13 = [v12 source];
  v14 = [v13 _hasFirstPartyBundleID];

  v15 = [v11 workoutActivityType];
  v16 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"WorkoutCount" activityType:v15];
  v17 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v118 = v16;
  v18 = [v17 objectForKeyedSubscript:v16];

  v117 = v18;
  v19 = [v18 unsignedIntegerValue];
  if (v14)
  {
    [v11 duration];
    if (v20 >= 300.0)
    {
      ++v19;
    }
  }

  v114 = v19;
  v21 = [v11 endDate];
  v22 = v119;
  v23 = ACHStartOfFitnessWeekBeforeDateWithFirstWeekdayInCalendar();

  v24 = [v119 hk_dateByAddingDays:a5 toDate:v23];
  v25 = [v11 endDate];
  v26 = [v24 earlierDate:v25];

  v115 = v23;
  v116 = v26;
  v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v26];
  v28 = [(ACHWorkoutAwardingSource *)self workoutClient];
  v121 = 0;
  v29 = v27;
  v30 = [v28 numberOfFirstPartyWorkoutsWithDuration:v27 containedInInterval:&v121 error:300.0];
  v31 = v121;

  if (v31)
  {
    v32 = ACHLogAwardEngine();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutAwardingSource _lock_createWorkoutEvaluationEnvironmentWithWorkout:firstDayOfFitnessWeek:numberOfDaysInWeek:calendar:error:];
    }

    if (a7)
    {
      v33 = v31;
      v34 = 0;
      *a7 = v31;
    }

    else
    {
      _HKLogDroppedError();
      v34 = 0;
    }
  }

  else
  {
    v109 = v30;
    v35 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestEnergyBurned" activityType:v15];
    v36 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
    v113 = v35;
    v37 = [v36 objectForKeyedSubscript:v35];

    v112 = v37;
    [v37 doubleValue];
    v39 = v38;
    v40 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestDistance" activityType:v15];
    v41 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
    v111 = v40;
    v42 = [v41 objectForKeyedSubscript:v40];

    v110 = v42;
    [v42 doubleValue];
    v44 = v43;
    v45 = [(ACHWorkoutAwardingSource *)self healthStore];
    v46 = [v11 endDate];
    v120 = 0;
    v47 = ACHExperienceTypeForDateWithHealthStore(v45, v119, v46, &v120);
    v31 = v120;

    if (v31)
    {
      v48 = ACHLogWorkouts();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [ACHWorkoutAwardingSource _lock_createWorkoutEvaluationEnvironmentWithWorkout:firstDayOfFitnessWeek:numberOfDaysInWeek:calendar:error:];
      }

      if (a7)
      {
        v49 = v31;
        v34 = 0;
        *a7 = v31;
      }

      else
      {
        _HKLogDroppedError();
        v34 = 0;
      }
    }

    else
    {
      v99 = [(ACHWorkoutAwardingSource *)self _isMetricLocale];
      if ([v11 workoutActivityType] == 24)
      {
        v50 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestElevationGained" activityType:24];
        v51 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v52 = [v51 objectForKeyedSubscript:v50];

        if (v52)
        {
          [v52 doubleValue];
          v108 = v53;
        }

        else
        {
          v108 = 2.22507386e-308;
        }
      }

      else
      {
        v108 = 2.22507386e-308;
      }

      v101 = v24;
      if ([v11 workoutActivityType] == 37)
      {
        v54 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v55 = [v54 objectForKeyedSubscript:@"Best5KDuration"];

        if (v55)
        {
          [v55 doubleValue];
          v107 = v56;
        }

        else
        {
          v107 = 1.79769313e308;
        }

        v59 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v60 = [v59 objectForKeyedSubscript:@"Best10KDuration"];

        if (v60)
        {
          [v60 doubleValue];
          v106 = v61;
        }

        else
        {
          v106 = 1.79769313e308;
        }

        v62 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v63 = [v62 objectForKeyedSubscript:@"BestHalfMarathonDuration"];

        if (v63)
        {
          [v63 doubleValue];
          v58 = v64;
        }

        else
        {
          v58 = 1.79769313e308;
        }

        v65 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v66 = [v65 objectForKeyedSubscript:@"BestMarathonDuration"];

        if (v66)
        {
          [v66 doubleValue];
          v57 = v67;
        }

        else
        {
          v57 = 1.79769313e308;
        }
      }

      else
      {
        v57 = 1.79769313e308;
        v58 = 1.79769313e308;
        v106 = 1.79769313e308;
        v107 = 1.79769313e308;
      }

      if ([v11 workoutActivityType] == 71)
      {
        v68 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v69 = [v68 objectForKeyedSubscript:@"BestWheelchair5KDuration"];

        if (v69)
        {
          [v69 doubleValue];
          v71 = v70;
        }

        else
        {
          v71 = 1.79769313e308;
        }

        v75 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v76 = [v75 objectForKeyedSubscript:@"BestWheelchair10KDuration"];

        if (v76)
        {
          [v76 doubleValue];
          v72 = v77;
        }

        else
        {
          v72 = 1.79769313e308;
        }

        v78 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v79 = [v78 objectForKeyedSubscript:@"BestWheelchairHalfMarathonDuration"];

        if (v79)
        {
          [v79 doubleValue];
          v73 = v80;
        }

        else
        {
          v73 = 1.79769313e308;
        }

        v81 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v82 = [v81 objectForKeyedSubscript:@"BestWheelchairMarathonDuration"];

        if (v82)
        {
          [v82 doubleValue];
          v74 = v83;
        }

        else
        {
          v74 = 1.79769313e308;
        }
      }

      else
      {
        v71 = 1.79769313e308;
        v72 = 1.79769313e308;
        v73 = 1.79769313e308;
        v74 = 1.79769313e308;
      }

      v105 = [MEMORY[0x277CCDBE8] _stringFromWorkoutActivityType:{objc_msgSend(v11, "workoutActivityType")}];
      v96 = MEMORY[0x277CCACA8];
      v95 = [(ACHWorkoutAwardingSource *)self _stringForExperienceType:v47];
      v98 = [v29 startDate];
      v104 = [(ACHWorkoutAwardingSource *)self _stringForDate:v98];
      v100 = v29;
      v97 = [v29 endDate];
      v103 = [(ACHWorkoutAwardingSource *)self _stringForDate:v97];
      v102 = [(ACHWorkoutAwardingSource *)self _stringForDuration:v107];
      v84 = [(ACHWorkoutAwardingSource *)self _stringForDuration:v106];
      v94 = [(ACHWorkoutAwardingSource *)self _stringForDuration:v71];
      v85 = [(ACHWorkoutAwardingSource *)self _stringForDuration:v72];
      v93 = [(ACHWorkoutAwardingSource *)self _stringForDuration:v58];
      v86 = [(ACHWorkoutAwardingSource *)self _stringForDuration:v57];
      v87 = [(ACHWorkoutAwardingSource *)self _stringForDuration:v73];
      v88 = [(ACHWorkoutAwardingSource *)self _stringForDuration:v74];
      v89 = [v96 stringWithFormat:@"Using the following values for evaluation:\nWorkout Type: %@\nExperience Type: %@\nWorkouts of type over 5 minutes including this one: %lu\nWorkouts of any type this week over 5 minutes (week is %@ - %@): %lu\nBest Energy Burned value for workout type: %lf kcal\nBest Distance for workout type: %lf km\nBest Elevation Gain: %lf cm\nBest 5K Duration: %@\nBest 10K Duration: %@\nBest Wheelchair 5k Duration: %@\nBest Wheelchair 10k Duration: %@\nBest Half Marathon Duration: %@\nBest Marathon Duration: %@\nBest Wheelchair Half Marathon Duration: %@\nBest Wheelchair Marathon Duration: %@", v105, v95, v114, v104, v103, v109, *&v39, *&v44, *&v108, v102, v84, v94, v85, v93, v86, v87, v88];

      v90 = ACHLogWorkouts();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v123 = v89;
        _os_log_impl(&dword_221DDC000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }

      v34 = [[ACHWorkoutEvaluationEnvironment alloc] initWithWorkout:v11 healthStore:self->_healthStore numberOfFirstPartyWorkoutsOver5MinutesWithType:v114 numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:v109 bestKilocaloriesForType:v47 bestKilometersForType:v99 bestElevationGainedForType:v39 best5KDuration:v44 best10KDuration:v108 bestWheelchair5KDuration:v107 bestWheelchair10KDuration:v106 bestHalfMarathonDuration:v71 bestMarathonDuration:v72 bestWheelchairHalfMarathonDuration:v58 bestWheelchairMarathonDuration:*&v57 experienceType:*&v73 isMetricLocale:*&v74];
      v22 = v119;
      v29 = v100;
      v24 = v101;
    }
  }

  v91 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_lock_updateWorkoutRecordsWithEnvironment:(id)a3
{
  v150 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 workout];
  v6 = [v5 isFirstParty];

  if (v6)
  {
    v7 = [v4 workout];
    v8 = [v7 type];

    v9 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"WorkoutCount" activityType:v8];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "numberOfFirstPartyWorkoutsOver5MinutesWithType")}];
    v11 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
    [v11 setObject:v10 forKeyedSubscript:v9];

    v12 = [v4 workout];
    [v12 kilocalories];
    v14 = v13;
    [v4 bestKilocaloriesForType];
    v16 = v15;

    if (v14 > v16)
    {
      v17 = ACHLogWorkouts();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 workout];
        [v18 kilocalories];
        v148 = 134217984;
        v149 = v19;
        _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Updated best calories burned to %lf kcal", &v148, 0xCu);
      }

      v20 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestEnergyBurned" activityType:v8];
      v21 = MEMORY[0x277CCABB0];
      v22 = [v4 workout];
      [v22 kilocalories];
      v23 = [v21 numberWithDouble:?];
      v24 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v24 setObject:v23 forKeyedSubscript:v20];
    }

    v25 = [v4 workout];
    [v25 kilometers];
    v27 = v26;
    [v4 bestKilometersForType];
    v29 = v28;

    if (v27 > v29)
    {
      v30 = ACHLogWorkouts();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v4 workout];
        [v31 kilometers];
        v148 = 134217984;
        v149 = v32;
        _os_log_impl(&dword_221DDC000, v30, OS_LOG_TYPE_DEFAULT, "Updated best kilometers to %lf km", &v148, 0xCu);
      }

      v33 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestDistance" activityType:v8];
      v34 = MEMORY[0x277CCABB0];
      v35 = [v4 workout];
      [v35 kilometers];
      v36 = [v34 numberWithDouble:?];
      v37 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v37 setObject:v36 forKeyedSubscript:v33];
    }

    if (v8 == 24)
    {
      v38 = [v4 workout];
      [v38 elevationGained];
      v40 = v39;
      [v4 bestElevationGainedForType];
      v42 = v41;

      if (v40 > v42)
      {
        v43 = ACHLogWorkouts();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v4 workout];
          [v44 elevationGained];
          v148 = 134217984;
          v149 = v45;
          _os_log_impl(&dword_221DDC000, v43, OS_LOG_TYPE_DEFAULT, "Updated best elevation gain to %lf cm", &v148, 0xCu);
        }

        v46 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestElevationGained" activityType:24];
        v47 = MEMORY[0x277CCABB0];
        v48 = [v4 workout];
        [v48 elevationGained];
        v49 = [v47 numberWithDouble:?];
        v50 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        [v50 setObject:v49 forKeyedSubscript:v46];
      }
    }

    v51 = [v4 workout];
    [v51 best5KDuration];
    v53 = v52;
    [v4 best5KDuration];
    v55 = v54;

    if (v53 < v55)
    {
      v56 = ACHLogWorkouts();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        v57 = [v4 workout];
        [v57 best5KDuration];
        v58 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v58;
        _os_log_impl(&dword_221DDC000, v56, OS_LOG_TYPE_DEFAULT, "Updated best 5K duration to %@", &v148, 0xCu);
      }

      v59 = MEMORY[0x277CCABB0];
      v60 = [v4 workout];
      [v60 best5KDuration];
      v61 = [v59 numberWithDouble:?];
      v62 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v62 setObject:v61 forKeyedSubscript:@"Best5KDuration"];
    }

    v63 = [v4 workout];
    [v63 best10KDuration];
    v65 = v64;
    [v4 best10KDuration];
    v67 = v66;

    if (v65 < v67)
    {
      v68 = ACHLogWorkouts();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [v4 workout];
        [v69 best10KDuration];
        v70 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v70;
        _os_log_impl(&dword_221DDC000, v68, OS_LOG_TYPE_DEFAULT, "Updated best 10K duration to %@", &v148, 0xCu);
      }

      v71 = MEMORY[0x277CCABB0];
      v72 = [v4 workout];
      [v72 best10KDuration];
      v73 = [v71 numberWithDouble:?];
      v74 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v74 setObject:v73 forKeyedSubscript:@"Best10KDuration"];
    }

    v75 = [v4 workout];
    [v75 bestWheelchair5KDuration];
    v77 = v76;
    [v4 bestWheelchair5KDuration];
    v79 = v78;

    if (v77 < v79)
    {
      v80 = ACHLogWorkouts();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = [v4 workout];
        [v81 bestWheelchair5KDuration];
        v82 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v82;
        _os_log_impl(&dword_221DDC000, v80, OS_LOG_TYPE_DEFAULT, "Updated best Wheelchair 5K duration to %@", &v148, 0xCu);
      }

      v83 = MEMORY[0x277CCABB0];
      v84 = [v4 workout];
      [v84 bestWheelchair5KDuration];
      v85 = [v83 numberWithDouble:?];
      v86 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v86 setObject:v85 forKeyedSubscript:@"BestWheelchair5KDuration"];
    }

    v87 = [v4 workout];
    [v87 bestWheelchair10KDuration];
    v89 = v88;
    [v4 bestWheelchair10KDuration];
    v91 = v90;

    if (v89 < v91)
    {
      v92 = ACHLogWorkouts();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        v93 = [v4 workout];
        [v93 bestWheelchair10KDuration];
        v94 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v94;
        _os_log_impl(&dword_221DDC000, v92, OS_LOG_TYPE_DEFAULT, "Updated best Wheelchair 10K duration to %@", &v148, 0xCu);
      }

      v95 = MEMORY[0x277CCABB0];
      v96 = [v4 workout];
      [v96 bestWheelchair10KDuration];
      v97 = [v95 numberWithDouble:?];
      v98 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v98 setObject:v97 forKeyedSubscript:@"BestWheelchair10KDuration"];
    }

    v99 = [v4 workout];
    [v99 bestHalfMarathonDuration];
    v101 = v100;
    [v4 bestHalfMarathonDuration];
    v103 = v102;

    if (v101 < v103)
    {
      v104 = ACHLogWorkouts();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = [v4 workout];
        [v105 bestHalfMarathonDuration];
        v106 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v106;
        _os_log_impl(&dword_221DDC000, v104, OS_LOG_TYPE_DEFAULT, "Updated best Half Marathon duration to %@", &v148, 0xCu);
      }

      v107 = MEMORY[0x277CCABB0];
      v108 = [v4 workout];
      [v108 bestHalfMarathonDuration];
      v109 = [v107 numberWithDouble:?];
      v110 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v110 setObject:v109 forKeyedSubscript:@"BestHalfMarathonDuration"];
    }

    v111 = [v4 workout];
    [v111 bestMarathonDuration];
    v113 = v112;
    [v4 bestMarathonDuration];
    v115 = v114;

    if (v113 < v115)
    {
      v116 = ACHLogWorkouts();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v117 = [v4 workout];
        [v117 bestMarathonDuration];
        v118 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v118;
        _os_log_impl(&dword_221DDC000, v116, OS_LOG_TYPE_DEFAULT, "Updated best Marathon duration to %@", &v148, 0xCu);
      }

      v119 = MEMORY[0x277CCABB0];
      v120 = [v4 workout];
      [v120 bestMarathonDuration];
      v121 = [v119 numberWithDouble:?];
      v122 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v122 setObject:v121 forKeyedSubscript:@"BestMarathonDuration"];
    }

    v123 = [v4 workout];
    [v123 bestWheelchairHalfMarathonDuration];
    v125 = v124;
    [v4 bestWheelchairHalfMarathonDuration];
    v127 = v126;

    if (v125 < v127)
    {
      v128 = ACHLogWorkouts();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        v129 = [v4 workout];
        [v129 bestWheelchairHalfMarathonDuration];
        v130 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v130;
        _os_log_impl(&dword_221DDC000, v128, OS_LOG_TYPE_DEFAULT, "Updated best Wheelchair Half Marathon duration to %@", &v148, 0xCu);
      }

      v131 = MEMORY[0x277CCABB0];
      v132 = [v4 workout];
      [v132 bestWheelchairHalfMarathonDuration];
      v133 = [v131 numberWithDouble:?];
      v134 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v134 setObject:v133 forKeyedSubscript:@"BestWheelchairHalfMarathonDuration"];
    }

    v135 = [v4 workout];
    [v135 bestWheelchairMarathonDuration];
    v137 = v136;
    [v4 bestWheelchairMarathonDuration];
    v139 = v138;

    if (v137 < v139)
    {
      v140 = ACHLogWorkouts();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        v141 = [v4 workout];
        [v141 bestWheelchairMarathonDuration];
        v142 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v142;
        _os_log_impl(&dword_221DDC000, v140, OS_LOG_TYPE_DEFAULT, "Updated best Wheelchair Marathon duration to %@", &v148, 0xCu);
      }

      v143 = MEMORY[0x277CCABB0];
      v144 = [v4 workout];
      [v144 bestWheelchairMarathonDuration];
      v145 = [v143 numberWithDouble:?];
      v146 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [v146 setObject:v145 forKeyedSubscript:@"BestWheelchairMarathonDuration"];
    }
  }

  v147 = *MEMORY[0x277D85DE8];
}

- (BOOL)_appendEarnedInstancesForWorkout:(id)a3 toSet:(id)a4 templates:(id)a5 calendar:(id)a6 numberOfDaysInWeek:(unint64_t)a7 predicates:(id)a8 firstDayOfFitnessWeek:(int64_t)a9 watchCountryCode:(id)a10 error:(id *)a11
{
  v100 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v80 = a6;
  v20 = a8;
  v21 = v17;
  v79 = a10;
  os_unfair_lock_lock(&self->_lock);
  v22 = ACHLogWorkouts();
  v85 = v20;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v17 aad_redactedWorkoutDescription];
    *buf = 138412290;
    v96 = v23;
    _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Evaluating workout %@", buf, 0xCu);

    v20 = v85;
  }

  v24 = a7;
  v25 = v80;
  v90 = [(ACHWorkoutAwardingSource *)self _lock_createWorkoutEvaluationEnvironmentWithWorkout:v17 firstDayOfFitnessWeek:a9 numberOfDaysInWeek:v24 calendar:v80 error:a11];
  if (v90)
  {
    v26 = *MEMORY[0x277CE8B28];
    v27 = [v17 endDate];
    v84 = v26;
    v28 = [v80 components:v26 fromDate:v27];

    v77 = v28;
    v78 = v19;
    v29 = ACHAvailableTemplatesForDateComponentsAndCountryCodeInTemplates(v28, v79, v19);
    v30 = ACHLogWorkouts();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [ACHWorkoutAwardingSource _appendEarnedInstancesForWorkout:v29 toSet:v17 templates:v30 calendar:? numberOfDaysInWeek:? predicates:? firstDayOfFitnessWeek:? watchCountryCode:? error:?];
    }

    v86 = objc_alloc_init(MEMORY[0x277CE8D40]);
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = v29;
    v31 = v90;
    v89 = [obj countByEnumeratingWithState:&v91 objects:v99 count:16];
    if (v89)
    {
      v88 = *v92;
      v81 = v18;
      v82 = v17;
      v83 = self;
      do
      {
        for (i = 0; i != v89; ++i)
        {
          if (*v92 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v91 + 1) + 8 * i);
          v34 = [(ACHWorkoutAwardingSource *)self templateValidationResultsByUniqueName];
          v35 = [v33 uniqueName];
          v36 = [v34 objectForKeyedSubscript:v35];

          if (!v36)
          {
            v36 = [v86 validateTemplate:v33];
            v37 = [(ACHWorkoutAwardingSource *)self templateValidationResultsByUniqueName];
            v38 = [v33 uniqueName];
            [v37 setObject:v36 forKeyedSubscript:v38];
          }

          if (([v36 isValid] & 1) == 0)
          {
            v40 = ACHLogAwardEngine();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v44 = [v33 uniqueName];
              *buf = 138412290;
              v96 = v44;
              _os_log_impl(&dword_221DDC000, v40, OS_LOG_TYPE_DEFAULT, "Template has invalid predicates, skipping: %@", buf, 0xCu);
            }

            goto LABEL_34;
          }

          v39 = [v33 uniqueName];
          v40 = [v20 objectForKeyedSubscript:v39];

          if (!v40)
          {
            v41 = [v33 gracePredicate];
            v42 = v41;
            if (v41)
            {
              v43 = v41;
            }

            else
            {
              v43 = [v33 predicate];
            }

            v45 = v43;

            v40 = [MEMORY[0x277CCAC30] predicateWithFormat:v45];
            v46 = [v33 uniqueName];
            [v20 setObject:v40 forKeyedSubscript:v46];
          }

          v31 = v90;
          if ([v40 evaluateWithObject:v90])
          {
            v47 = ACHLogWorkouts();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              v48 = [v33 uniqueName];
              v49 = [v21 aad_redactedWorkoutDescription];
              *buf = 138543618;
              v96 = v48;
              v97 = 2112;
              v98 = v49;
              _os_log_impl(&dword_221DDC000, v47, OS_LOG_TYPE_DEFAULT, "Template %{public}@ evaluated to true for workout %@", buf, 0x16u);
            }

            v50 = ACHLogWorkouts();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v96 = v33;
              _os_log_debug_impl(&dword_221DDC000, v50, OS_LOG_TYPE_DEBUG, "full template: %{public}@", buf, 0xCu);
            }

            v51 = objc_alloc_init(MEMORY[0x277CE8D38]);
            v52 = [v33 uniqueName];
            [v51 setTemplateUniqueName:v52];

            v53 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
            v54 = [v21 endDate];
            v55 = [v53 components:v84 fromDate:v54];
            [v51 setEarnedDateComponents:v55];

            v56 = [v21 UUID];
            v57 = [v56 UUIDString];
            [v51 setExternalIdentifier:v57];

            v58 = [v33 graceValueExpression];
            if (v58 || ([v33 valueExpression], (v58 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v59 = v58;
              v60 = [MEMORY[0x277CCA9C0] expressionWithFormat:v58];
              v61 = [v60 expressionValueWithObject:v90 context:0];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v61 doubleValue];
                v63 = v62;
                v64 = MEMORY[0x277CCD7E8];
                v65 = [v33 canonicalUnit];
                v66 = [v64 quantityWithUnit:v65 doubleValue:v63];
                [v51 setValue:v66];

                v18 = v81;
                v21 = v82;
              }
            }

            [v18 addObject:v51];
            v67 = ACHLogWorkouts();
            v20 = v85;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              v68 = [v33 uniqueName];
              *buf = 138543618;
              v96 = v68;
              v97 = 2112;
              v98 = v51;
              _os_log_impl(&dword_221DDC000, v67, OS_LOG_TYPE_DEFAULT, "Earned instance created for template %{public}@: %@", buf, 0x16u);
            }

            self = v83;
LABEL_34:
            v31 = v90;
          }
        }

        v89 = [obj countByEnumeratingWithState:&v91 objects:v99 count:16];
      }

      while (v89);
    }

    [(ACHWorkoutAwardingSource *)self _lock_updateWorkoutRecordsWithEnvironment:v31];
    v69 = v31;
    v70 = MEMORY[0x277CCABB0];
    v71 = [v21 endDate];
    [v71 timeIntervalSinceReferenceDate];
    v72 = [v70 numberWithDouble:?];
    v73 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
    [v73 setObject:v72 forKeyedSubscript:@"LastWorkoutProcessedEndDate"];

    os_unfair_lock_unlock(&self->_lock);
    v19 = v78;
    v25 = v80;
  }

  else
  {
    v74 = ACHLogWorkouts();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutAwardingSource _appendEarnedInstancesForWorkout:v74 toSet:? templates:? calendar:? numberOfDaysInWeek:? predicates:? firstDayOfFitnessWeek:? watchCountryCode:? error:?];
    }

    os_unfair_lock_unlock(&self->_lock);
    v69 = 0;
  }

  v75 = *MEMORY[0x277D85DE8];
  return v69 != 0;
}

- (id)_earnedInstancesForWorkoutsInDateInterval:(id)a3 error:(id *)a4
{
  v6 = a3;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__25;
  v64 = __Block_byref_object_dispose__25;
  v65 = [MEMORY[0x277CBEB58] set];
  v7 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v8 = [v7 maximumRangeOfUnit:512];
  v10 = v9;
  v11 = [(ACHWorkoutAwardingSource *)self templateStore];
  v12 = [v11 allTemplates];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __76__ACHWorkoutAwardingSource__earnedInstancesForWorkoutsInDateInterval_error___block_invoke;
  v59[3] = &unk_278491B98;
  v59[4] = self;
  v13 = [v12 hk_filter:v59];

  v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
  v15 = HKFirstDayOfWeekForWeeklyGoalCalculations();
  v35 = [(ACHWorkoutAwardingSource *)self watchCountryCode];
  v36 = v15;
  v16 = v14;
  v17 = v7;
  v34 = a4;
  v18 = [ACHWorkoutIterator alloc];
  v19 = [(ACHWorkoutAwardingSource *)self healthStore];
  v37 = [(ACHWorkoutIterator *)v18 initWithHealthStore:v19];

  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__25;
  v57 = __Block_byref_object_dispose__25;
  v58 = 0;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v20 = [MEMORY[0x277CBEAA8] date];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __76__ACHWorkoutAwardingSource__earnedInstancesForWorkoutsInDateInterval_error___block_invoke_2;
  v39[3] = &unk_278492988;
  v39[4] = self;
  v44 = &v60;
  v21 = v13;
  v40 = v21;
  v22 = v17;
  v41 = v22;
  v47 = v8 + v10;
  v23 = v16;
  v42 = v23;
  v48 = v36;
  v24 = v35;
  v43 = v24;
  v45 = &v53;
  v46 = &v49;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __76__ACHWorkoutAwardingSource__earnedInstancesForWorkoutsInDateInterval_error___block_invoke_3;
  v38[3] = &unk_278490958;
  v38[4] = &v53;
  [(ACHWorkoutIterator *)v37 enumerateWorkoutsForDateInterval:v6 handler:v39 errorHandler:v38];
  v25 = [MEMORY[0x277CBEAA8] date];
  [v25 timeIntervalSinceReferenceDate];
  v27 = v26;
  [v20 timeIntervalSinceReferenceDate];
  [ACHDMetricsReporter reportProcessingMetricsWithSourceType:1 intervalProcessed:v6 processingDuration:v50[3] recordsProcessed:v54[5] error:v27 - v28];
  v29 = v54[5];
  v30 = v29;
  if (v29)
  {
    if (v34)
    {
      v31 = v29;
      *v34 = v30;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v32 = v61[5];
  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v60, 8);

  return v32;
}

uint64_t __76__ACHWorkoutAwardingSource__earnedInstancesForWorkoutsInDateInterval_error___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[8];
  v6 = *(*(a1[9] + 8) + 40);
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[12];
  v12 = a1[13];
  v13 = *(a1[10] + 8);
  obj = *(v13 + 40);
  v14 = [v7 _appendEarnedInstancesForWorkout:v3 toSet:v6 templates:v8 calendar:v9 numberOfDaysInWeek:v11 predicates:v10 firstDayOfFitnessWeek:v12 watchCountryCode:v5 error:&obj];
  objc_storeStrong((v13 + 40), obj);
  if (v14)
  {
    ++*(*(a1[11] + 8) + 24);
  }

  objc_autoreleasePoolPop(v4);

  return v14;
}

- (id)_earnedInstancesForWorkouts:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = [MEMORY[0x277CBEB58] set];
  v26 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v5 = [v26 maximumRangeOfUnit:512];
  v24 = v6;
  v25 = v5;
  v7 = [(ACHWorkoutAwardingSource *)self templateStore];
  v8 = [v7 allTemplates];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __56__ACHWorkoutAwardingSource__earnedInstancesForWorkouts___block_invoke;
  v32[3] = &unk_278491B98;
  v32[4] = self;
  v9 = [v8 hk_filter:v32];

  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = HKFirstDayOfWeekForWeeklyGoalCalculations();
  v12 = self;
  v13 = [(ACHWorkoutAwardingSource *)self watchCountryCode];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v14 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        [(ACHWorkoutAwardingSource *)v12 _appendEarnedInstancesForWorkout:v18 toSet:v27 templates:v9 calendar:v26 numberOfDaysInWeek:v25 + v24 predicates:v10 firstDayOfFitnessWeek:v11 watchCountryCode:v13 error:0];
        objc_autoreleasePoolPop(v19);
      }

      v15 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v15);
  }

  v20 = [MEMORY[0x277CBEB98] setWithSet:v27];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)_isMetricLocale
{
  v3 = [(ACHWorkoutAwardingSource *)self injectedIsMetricLocale];
  if (v3)
  {
    v4 = [(ACHWorkoutAwardingSource *)self injectedIsMetricLocale];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [v4 usesMetricSystem];
  }

  v6 = v5;

  return v6;
}

- (id)watchCountryCode
{
  v3 = [(ACHWorkoutAwardingSource *)self watchCountryCodeOverride];

  if (v3)
  {
    [(ACHWorkoutAwardingSource *)self watchCountryCodeOverride];
  }

  else
  {
    ACHPairedWatchCountryCode();
  }
  v4 = ;

  return v4;
}

- (void)_unit_test_setHistoricalRunCompleteVersion:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v6 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  [v6 setObject:v5 forKeyedSubscript:@"WorkoutHistoricalRunCompleteVersion"];

  os_unfair_lock_unlock(&self->_lock);
}

- (ACHAwardsClient)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (ACHEarnedInstanceAwardingEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (ACHDataStore)dataStore
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStore);

  return WeakRetained;
}

- (ACHTemplateStore)templateStore
{
  WeakRetained = objc_loadWeakRetained(&self->_templateStore);

  return WeakRetained;
}

void __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error starting workout query: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke_350_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error from workouts query update: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)earnedInstancesForHistoricalInterval:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2114;
  v5 = v0;
  _os_log_error_impl(&dword_221DDC000, v1, OS_LOG_TYPE_ERROR, "Error performing historical run for workouts in date interval %{public}@: %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_progressEnvironment
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error counting workouts in fitness week: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_createWorkoutEvaluationEnvironmentWithWorkout:firstDayOfFitnessWeek:numberOfDaysInWeek:calendar:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "Error counting first party workouts in fitness week: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lock_createWorkoutEvaluationEnvironmentWithWorkout:firstDayOfFitnessWeek:numberOfDaysInWeek:calendar:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_221DDC000, v0, v1, "WorkoutAwardingSource failed to get date of birth with error %@, defaulting to FIExperienceTypeSimplified", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_appendEarnedInstancesForWorkout:(NSObject *)a3 toSet:templates:calendar:numberOfDaysInWeek:predicates:firstDayOfFitnessWeek:watchCountryCode:error:.cold.2(void *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [a1 count];
  v7 = [a2 endDate];
  v8 = [a1 valueForKey:@"uniqueName"];
  v10 = 134218498;
  v11 = v6;
  v12 = 2114;
  v13 = v7;
  v14 = 2114;
  v15 = v8;
  _os_log_debug_impl(&dword_221DDC000, a3, OS_LOG_TYPE_DEBUG, "Found %lu templates for date %{public}@: %{public}@", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

@end