@interface ACHWorkoutAwardingSource
- (ACHAchievementProgressEngine)progressEngine;
- (ACHAwardsClient)client;
- (ACHAwardsWorkoutClient)workoutClient;
- (ACHDataStore)dataStore;
- (ACHEarnedInstanceAwardingEngine)engine;
- (ACHTemplateStore)templateStore;
- (ACHWorkoutAwardingSource)initWithClient:(id)client healthStore:(id)store awardingEngine:(id)engine dataStore:(id)dataStore templateStore:(id)templateStore creatorDevice:(unsigned __int8)device progressEngine:(id)progressEngine workoutClient:(id)self0 initialResultsHandler:(id)self1;
- (BOOL)_appendEarnedInstancesForWorkout:(id)workout toSet:(id)set templates:(id)templates calendar:(id)calendar numberOfDaysInWeek:(unint64_t)week predicates:(id)predicates firstDayOfFitnessWeek:(int64_t)fitnessWeek watchCountryCode:(id)self0 error:(id *)self1;
- (BOOL)_isMetricLocale;
- (BOOL)isAppleWatch;
- (BOOL)isTinkerPaired;
- (NSDate)validThroughDate;
- (NSDictionary)dataStoreProperties;
- (id)_dataStoreKeys;
- (id)_earnedInstancesForWorkouts:(id)workouts;
- (id)_earnedInstancesForWorkoutsInDateInterval:(id)interval error:(id *)error;
- (id)_keyForBaseKey:(id)key activityType:(unint64_t)type;
- (id)_lock_createWorkoutEvaluationEnvironmentWithWorkout:(id)workout firstDayOfFitnessWeek:(int64_t)week numberOfDaysInWeek:(unint64_t)inWeek calendar:(id)calendar error:(id *)error;
- (id)_progressEnvironment;
- (id)_queue_goalQuantityForTemplate:(id)template progressEnvironment:(id)environment;
- (id)_queue_progressQuantityForTemplate:(id)template progressEnvironment:(id)environment;
- (id)_stringForDate:(id)date;
- (id)_stringForDuration:(double)duration;
- (id)_stringForExperienceType:(unint64_t)type;
- (id)_valueForDataStoreKey:(id)key;
- (id)currentDate;
- (id)earnedInstancesForHistoricalInterval:(id)interval error:(id *)error;
- (id)watchCountryCode;
- (void)_lock_startWorkoutQueryWithInitialResultsHandler:(id)handler;
- (void)_lock_updateWorkoutRecordsWithEnvironment:(id)environment;
- (void)_progressEnvironment;
- (void)_startWorkoutQueryIfNecessary;
- (void)_stopWorkoutQuery;
- (void)_unit_test_setHistoricalRunCompleteVersion:(int64_t)version;
- (void)activate;
- (void)dataStoreDidClearAllProperties:(id)properties completion:(id)completion;
- (void)dealloc;
- (void)requestAchievementProgressUpdatesForTemplates:(id)templates;
- (void)setDataStoreProperties:(id)properties;
- (void)workoutsAdded:(id)added;
@end

@implementation ACHWorkoutAwardingSource

- (id)_progressEnvironment
{
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v4 = [hk_gregorianCalendar maximumRangeOfUnit:512];
  v6 = v5;
  currentDate = [(ACHWorkoutAwardingSource *)self currentDate];
  v8 = ACHStartOfFitnessWeekBeforeDateInCalendar();

  v9 = [hk_gregorianCalendar hk_dateByAddingDays:v4 + v6 toDate:v8];
  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
  workoutClient = [(ACHWorkoutAwardingSource *)self workoutClient];
  v17 = 0;
  v12 = [workoutClient numberOfFirstPartyWorkoutsWithDuration:v10 containedInInterval:&v17 error:300.0];
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
  currentDateOverride = [(ACHWorkoutAwardingSource *)self currentDateOverride];

  if (currentDateOverride)
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

- (ACHWorkoutAwardingSource)initWithClient:(id)client healthStore:(id)store awardingEngine:(id)engine dataStore:(id)dataStore templateStore:(id)templateStore creatorDevice:(unsigned __int8)device progressEngine:(id)progressEngine workoutClient:(id)self0 initialResultsHandler:(id)self1
{
  clientCopy = client;
  storeCopy = store;
  engineCopy = engine;
  dataStoreCopy = dataStore;
  templateStoreCopy = templateStore;
  progressEngineCopy = progressEngine;
  workoutClientCopy = workoutClient;
  handlerCopy = handler;
  v37.receiver = self;
  v37.super_class = ACHWorkoutAwardingSource;
  v24 = [(ACHWorkoutAwardingSource *)&v37 init];
  v25 = v24;
  if (v24)
  {
    v24->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v24->_client, clientCopy);
    objc_storeStrong(&v25->_healthStore, store);
    v26 = HKCreateSerialDispatchQueue();
    internalQueue = v25->_internalQueue;
    v25->_internalQueue = v26;

    objc_storeWeak(&v25->_engine, engineCopy);
    objc_storeWeak(&v25->_dataStore, dataStoreCopy);
    objc_storeWeak(&v25->_progressEngine, progressEngineCopy);
    objc_storeWeak(&v25->_templateStore, templateStoreCopy);
    v25->_creatorDevice = device;
    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    templateValidationResultsByUniqueName = v25->_templateValidationResultsByUniqueName;
    v25->_templateValidationResultsByUniqueName = v28;

    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    workoutRecordsByKey = v25->_workoutRecordsByKey;
    v25->_workoutRecordsByKey = v30;

    WeakRetained = objc_loadWeakRetained(&v25->_dataStore);
    [WeakRetained addPropertyProvider:v25];

    objc_storeWeak(&v25->_workoutClient, workoutClientCopy);
    v33 = _Block_copy(handlerCopy);
    initialResultsHandler = v25->_initialResultsHandler;
    v25->_initialResultsHandler = v33;

    v25->_isTinkerPaired = FIIsActivePairedDeviceSatellitePaired();
  }

  return v25;
}

- (void)activate
{
  objc_initWeak(&location, self);
  uTF8String = [*MEMORY[0x277CE8C10] UTF8String];
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __36__ACHWorkoutAwardingSource_activate__block_invoke;
  v9 = &unk_2784907F8;
  objc_copyWeak(&v10, &location);
  notify_register_dispatch(uTF8String, &self->_protectedDataToken, v4, &v6);

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
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30] isAppleWatch])
  {
    initialHistoricalRunComplete = [(ACHWorkoutAwardingSource *)self initialHistoricalRunComplete];

    if (!initialHistoricalRunComplete)
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

- (void)_lock_startWorkoutQueryWithInitialResultsHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v6 = [workoutRecordsByKey objectForKeyedSubscript:@"LastWorkoutProcessedEndDate"];

  v7 = MEMORY[0x277CBEAA8];
  [v6 doubleValue];
  v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
  v9 = [MEMORY[0x277CCD838] predicateForSamplesWithStartDate:v8 endDate:0 options:1];
  v10 = objc_alloc(MEMORY[0x277CCCFF0]);
  workoutType = [MEMORY[0x277CCD8D8] workoutType];
  latestAnchor = [MEMORY[0x277CCD840] latestAnchor];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__ACHWorkoutAwardingSource__lock_startWorkoutQueryWithInitialResultsHandler___block_invoke;
  v21[3] = &unk_278492960;
  objc_copyWeak(&v23, &location);
  v13 = handlerCopy;
  v22 = v13;
  v14 = [v10 initWithType:workoutType predicate:v9 anchor:latestAnchor limit:0 resultsHandler:v21];
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

  healthStore = [(ACHWorkoutAwardingSource *)self healthStore];
  [healthStore executeQuery:self->_workoutQuery];

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
  healthStore = [(ACHWorkoutAwardingSource *)self healthStore];
  [healthStore stopQuery:self->_workoutQuery];

  workoutQuery = self->_workoutQuery;
  self->_workoutQuery = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isAppleWatch
{
  overrideIsAppleWatch = [(ACHWorkoutAwardingSource *)self overrideIsAppleWatch];

  if (overrideIsAppleWatch)
  {
    overrideIsAppleWatch2 = [(ACHWorkoutAwardingSource *)self overrideIsAppleWatch];
    bOOLValue = [overrideIsAppleWatch2 BOOLValue];
  }

  else
  {
    overrideIsAppleWatch2 = [MEMORY[0x277CCDD30] sharedBehavior];
    bOOLValue = [overrideIsAppleWatch2 isAppleWatch];
  }

  v6 = bOOLValue;

  return v6;
}

- (BOOL)isTinkerPaired
{
  overrideIsTinkerPaired = [(ACHWorkoutAwardingSource *)self overrideIsTinkerPaired];

  if (!overrideIsTinkerPaired)
  {
    return self->_isTinkerPaired;
  }

  overrideIsTinkerPaired2 = [(ACHWorkoutAwardingSource *)self overrideIsTinkerPaired];
  bOOLValue = [overrideIsTinkerPaired2 BOOLValue];

  return bOOLValue;
}

- (id)earnedInstancesForHistoricalInterval:(id)interval error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  if (![(ACHWorkoutAwardingSource *)self isAppleWatch]|| [(ACHWorkoutAwardingSource *)self isTinkerPaired])
  {
    goto LABEL_5;
  }

  os_unfair_lock_lock(&self->_lock);
  workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v8 = [workoutRecordsByKey objectForKeyedSubscript:@"WorkoutHistoricalRunCompleteVersion"];

  os_unfair_lock_unlock(&self->_lock);
  if ([v8 integerValue] >= 2)
  {

LABEL_5:
    v23 = 0;
    v9 = [(ACHWorkoutAwardingSource *)self _earnedInstancesForWorkoutsInDateInterval:intervalCopy error:&v23];
    v8 = v23;
    if (v8)
    {
      v10 = ACHLogAwardEngine();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ACHWorkoutAwardingSource earnedInstancesForHistoricalInterval:error:];
      }

      if (error)
      {
        v11 = v8;
        *error = v8;
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
        workoutRecordsByKey2 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        [workoutRecordsByKey2 setObject:&unk_283555B78 forKeyedSubscript:@"WorkoutHistoricalRunCompleteVersion"];
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
    if (error)
    {
      v22 = v21;
      *error = v21;
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

- (void)workoutsAdded:(id)added
{
  v17 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  progressEngine = [(ACHWorkoutAwardingSource *)self progressEngine];
  [progressEngine requestProgressUpdateForProgressProvider:self];

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  IsAppleWatch = ACHConfigurationSupportsIncrementalEvaluationWithIsAppleWatch([mEMORY[0x277CCDD30] isAppleWatch]);

  if (IsAppleWatch)
  {
    v8 = ACHLogWorkouts();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = [addedCopy count];
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "WorkoutAwardingProvider found %lu new workout samples, requesting incremental evaluation", buf, 0xCu);
    }

    engine = [(ACHWorkoutAwardingSource *)self engine];
    uniqueName = [(ACHWorkoutAwardingSource *)self uniqueName];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __42__ACHWorkoutAwardingSource_workoutsAdded___block_invoke;
    v12[3] = &unk_278490908;
    v13 = addedCopy;
    selfCopy = self;
    [engine requestIncrementalEvaluationForSource:uniqueName evaluationBlock:v12];
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

- (void)requestAchievementProgressUpdatesForTemplates:(id)templates
{
  templatesCopy = templates;
  internalQueue = [(ACHWorkoutAwardingSource *)self internalQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ACHWorkoutAwardingSource_requestAchievementProgressUpdatesForTemplates___block_invoke;
  v7[3] = &unk_278490898;
  v7[4] = self;
  v8 = templatesCopy;
  v6 = templatesCopy;
  dispatch_async(internalQueue, v7);
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

- (id)_queue_progressQuantityForTemplate:(id)template progressEnvironment:(id)environment
{
  templateCopy = template;
  environmentCopy = environment;
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  currentDate = [(ACHWorkoutAwardingSource *)self currentDate];
  IsAvailableForCalendarAndDate = ACHTemplateIsAvailableForCalendarAndDate(templateCopy, hk_gregorianCalendar, currentDate);

  if (IsAvailableForCalendarAndDate)
  {
    graceProgressExpression = [templateCopy graceProgressExpression];
    v12 = graceProgressExpression;
    if (graceProgressExpression)
    {
      progressExpression = graceProgressExpression;
    }

    else
    {
      progressExpression = [templateCopy progressExpression];
    }

    canonicalUnit2 = progressExpression;

    v16 = [MEMORY[0x277CCA9C0] expressionWithFormat:canonicalUnit2];
    v17 = [v16 expressionValueWithObject:environmentCopy context:0];
    canonicalUnit = [templateCopy canonicalUnit];
    v15 = ACHHKQuantityWithValueAndUnit();
  }

  else
  {
    canonicalUnit2 = [templateCopy canonicalUnit];
    v15 = ACHHKQuantityWithValueAndUnit();
  }

  return v15;
}

- (id)_queue_goalQuantityForTemplate:(id)template progressEnvironment:(id)environment
{
  templateCopy = template;
  environmentCopy = environment;
  graceGoalExpression = [templateCopy graceGoalExpression];
  v8 = graceGoalExpression;
  if (graceGoalExpression)
  {
    goalExpression = graceGoalExpression;
  }

  else
  {
    goalExpression = [templateCopy goalExpression];
  }

  v10 = goalExpression;

  v11 = [MEMORY[0x277CCA9C0] expressionWithFormat:v10];
  v12 = [v11 expressionValueWithObject:environmentCopy context:0];

  canonicalUnit = [templateCopy canonicalUnit];
  v14 = ACHHKQuantityWithValueAndUnit();

  return v14;
}

- (NSDate)validThroughDate
{
  os_unfair_lock_lock(&self->_lock);
  workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v4 = [workoutRecordsByKey objectForKeyedSubscript:@"LastWorkoutProcessedEndDate"];

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

- (id)_keyForBaseKey:(id)key activityType:(unint64_t)type
{
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCDBE8];
  keyCopy = key;
  v8 = [v6 _stringFromWorkoutActivityType:type];
  v9 = [v5 stringWithFormat:@"%@-%@", keyCopy, v8];

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

        unsignedIntegerValue = [*(*(&v26 + 1) + 8 * i) unsignedIntegerValue];
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

              v14 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:*(*(&v22 + 1) + 8 * j) activityType:unsignedIntegerValue];
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
  _dataStoreKeys = [(ACHWorkoutAwardingSource *)self _dataStoreKeys];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = _dataStoreKeys;
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
        workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v12 = [workoutRecordsByKey objectForKeyedSubscript:v10];

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

- (void)setDataStoreProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  os_unfair_lock_lock(&self->_lock);
  _dataStoreKeys = [(ACHWorkoutAwardingSource *)self _dataStoreKeys];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [_dataStoreKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(_dataStoreKeys);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [propertiesCopy objectForKeyedSubscript:v10];
        if (v11)
        {
          workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
          [workoutRecordsByKey setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [_dataStoreKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock(&self->_lock);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dataStoreDidClearAllProperties:(id)properties completion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  [workoutRecordsByKey removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
  completionCopy[2](completionCopy, 1);
}

- (id)_valueForDataStoreKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock(&self->_lock);
  workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v6 = [workoutRecordsByKey objectForKeyedSubscript:keyCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (id)_stringForDuration:(double)duration
{
  if (duration == 1.79769313e308)
  {
    v4 = @"No Record Set";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lf seconds", *&duration];
  }

  return v4;
}

- (id)_stringForExperienceType:(unint64_t)type
{
  if (type > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_2784929A8[type];
  }
}

- (id)_stringForDate:(id)date
{
  v3 = _stringForDate__onceToken;
  dateCopy = date;
  if (v3 != -1)
  {
    [ACHWorkoutAwardingSource _stringForDate:];
  }

  v5 = [_stringForDate__formatter stringFromDate:dateCopy];

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

- (id)_lock_createWorkoutEvaluationEnvironmentWithWorkout:(id)workout firstDayOfFitnessWeek:(int64_t)week numberOfDaysInWeek:(unint64_t)inWeek calendar:(id)calendar error:(id *)error
{
  v124 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  calendarCopy = calendar;
  sourceRevision = [workoutCopy sourceRevision];
  source = [sourceRevision source];
  _hasFirstPartyBundleID = [source _hasFirstPartyBundleID];

  workoutActivityType = [workoutCopy workoutActivityType];
  v16 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"WorkoutCount" activityType:workoutActivityType];
  workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  v118 = v16;
  v18 = [workoutRecordsByKey objectForKeyedSubscript:v16];

  v117 = v18;
  unsignedIntegerValue = [v18 unsignedIntegerValue];
  if (_hasFirstPartyBundleID)
  {
    [workoutCopy duration];
    if (v20 >= 300.0)
    {
      ++unsignedIntegerValue;
    }
  }

  v114 = unsignedIntegerValue;
  endDate = [workoutCopy endDate];
  v22 = calendarCopy;
  v23 = ACHStartOfFitnessWeekBeforeDateWithFirstWeekdayInCalendar();

  v24 = [calendarCopy hk_dateByAddingDays:inWeek toDate:v23];
  endDate2 = [workoutCopy endDate];
  v26 = [v24 earlierDate:endDate2];

  v115 = v23;
  v116 = v26;
  v27 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v26];
  workoutClient = [(ACHWorkoutAwardingSource *)self workoutClient];
  v121 = 0;
  v29 = v27;
  v30 = [workoutClient numberOfFirstPartyWorkoutsWithDuration:v27 containedInInterval:&v121 error:300.0];
  v31 = v121;

  if (v31)
  {
    v32 = ACHLogAwardEngine();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutAwardingSource _lock_createWorkoutEvaluationEnvironmentWithWorkout:firstDayOfFitnessWeek:numberOfDaysInWeek:calendar:error:];
    }

    if (error)
    {
      v33 = v31;
      v34 = 0;
      *error = v31;
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
    v35 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestEnergyBurned" activityType:workoutActivityType];
    workoutRecordsByKey2 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
    v113 = v35;
    v37 = [workoutRecordsByKey2 objectForKeyedSubscript:v35];

    v112 = v37;
    [v37 doubleValue];
    v39 = v38;
    v40 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestDistance" activityType:workoutActivityType];
    workoutRecordsByKey3 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
    v111 = v40;
    v42 = [workoutRecordsByKey3 objectForKeyedSubscript:v40];

    v110 = v42;
    [v42 doubleValue];
    v44 = v43;
    healthStore = [(ACHWorkoutAwardingSource *)self healthStore];
    endDate3 = [workoutCopy endDate];
    v120 = 0;
    v47 = ACHExperienceTypeForDateWithHealthStore(healthStore, calendarCopy, endDate3, &v120);
    v31 = v120;

    if (v31)
    {
      v48 = ACHLogWorkouts();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        [ACHWorkoutAwardingSource _lock_createWorkoutEvaluationEnvironmentWithWorkout:firstDayOfFitnessWeek:numberOfDaysInWeek:calendar:error:];
      }

      if (error)
      {
        v49 = v31;
        v34 = 0;
        *error = v31;
      }

      else
      {
        _HKLogDroppedError();
        v34 = 0;
      }
    }

    else
    {
      _isMetricLocale = [(ACHWorkoutAwardingSource *)self _isMetricLocale];
      if ([workoutCopy workoutActivityType] == 24)
      {
        v50 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestElevationGained" activityType:24];
        workoutRecordsByKey4 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v52 = [workoutRecordsByKey4 objectForKeyedSubscript:v50];

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
      if ([workoutCopy workoutActivityType] == 37)
      {
        workoutRecordsByKey5 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v55 = [workoutRecordsByKey5 objectForKeyedSubscript:@"Best5KDuration"];

        if (v55)
        {
          [v55 doubleValue];
          v107 = v56;
        }

        else
        {
          v107 = 1.79769313e308;
        }

        workoutRecordsByKey6 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v60 = [workoutRecordsByKey6 objectForKeyedSubscript:@"Best10KDuration"];

        if (v60)
        {
          [v60 doubleValue];
          v106 = v61;
        }

        else
        {
          v106 = 1.79769313e308;
        }

        workoutRecordsByKey7 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v63 = [workoutRecordsByKey7 objectForKeyedSubscript:@"BestHalfMarathonDuration"];

        if (v63)
        {
          [v63 doubleValue];
          v58 = v64;
        }

        else
        {
          v58 = 1.79769313e308;
        }

        workoutRecordsByKey8 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v66 = [workoutRecordsByKey8 objectForKeyedSubscript:@"BestMarathonDuration"];

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

      if ([workoutCopy workoutActivityType] == 71)
      {
        workoutRecordsByKey9 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v69 = [workoutRecordsByKey9 objectForKeyedSubscript:@"BestWheelchair5KDuration"];

        if (v69)
        {
          [v69 doubleValue];
          v71 = v70;
        }

        else
        {
          v71 = 1.79769313e308;
        }

        workoutRecordsByKey10 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v76 = [workoutRecordsByKey10 objectForKeyedSubscript:@"BestWheelchair10KDuration"];

        if (v76)
        {
          [v76 doubleValue];
          v72 = v77;
        }

        else
        {
          v72 = 1.79769313e308;
        }

        workoutRecordsByKey11 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v79 = [workoutRecordsByKey11 objectForKeyedSubscript:@"BestWheelchairHalfMarathonDuration"];

        if (v79)
        {
          [v79 doubleValue];
          v73 = v80;
        }

        else
        {
          v73 = 1.79769313e308;
        }

        workoutRecordsByKey12 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        v82 = [workoutRecordsByKey12 objectForKeyedSubscript:@"BestWheelchairMarathonDuration"];

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

      v105 = [MEMORY[0x277CCDBE8] _stringFromWorkoutActivityType:{objc_msgSend(workoutCopy, "workoutActivityType")}];
      v96 = MEMORY[0x277CCACA8];
      v95 = [(ACHWorkoutAwardingSource *)self _stringForExperienceType:v47];
      startDate = [v29 startDate];
      v104 = [(ACHWorkoutAwardingSource *)self _stringForDate:startDate];
      v100 = v29;
      endDate4 = [v29 endDate];
      v103 = [(ACHWorkoutAwardingSource *)self _stringForDate:endDate4];
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

      v34 = [[ACHWorkoutEvaluationEnvironment alloc] initWithWorkout:workoutCopy healthStore:self->_healthStore numberOfFirstPartyWorkoutsOver5MinutesWithType:v114 numberOfFirstPartyWorkoutsOver5MinutesDuringCurrentFitnessWeek:v109 bestKilocaloriesForType:v47 bestKilometersForType:_isMetricLocale bestElevationGainedForType:v39 best5KDuration:v44 best10KDuration:v108 bestWheelchair5KDuration:v107 bestWheelchair10KDuration:v106 bestHalfMarathonDuration:v71 bestMarathonDuration:v72 bestWheelchairHalfMarathonDuration:v58 bestWheelchairMarathonDuration:*&v57 experienceType:*&v73 isMetricLocale:*&v74];
      v22 = calendarCopy;
      v29 = v100;
      v24 = v101;
    }
  }

  v91 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)_lock_updateWorkoutRecordsWithEnvironment:(id)environment
{
  v150 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  workout = [environmentCopy workout];
  isFirstParty = [workout isFirstParty];

  if (isFirstParty)
  {
    workout2 = [environmentCopy workout];
    type = [workout2 type];

    v9 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"WorkoutCount" activityType:type];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(environmentCopy, "numberOfFirstPartyWorkoutsOver5MinutesWithType")}];
    workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
    [workoutRecordsByKey setObject:v10 forKeyedSubscript:v9];

    workout3 = [environmentCopy workout];
    [workout3 kilocalories];
    v14 = v13;
    [environmentCopy bestKilocaloriesForType];
    v16 = v15;

    if (v14 > v16)
    {
      v17 = ACHLogWorkouts();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        workout4 = [environmentCopy workout];
        [workout4 kilocalories];
        v148 = 134217984;
        v149 = v19;
        _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Updated best calories burned to %lf kcal", &v148, 0xCu);
      }

      v20 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestEnergyBurned" activityType:type];
      v21 = MEMORY[0x277CCABB0];
      workout5 = [environmentCopy workout];
      [workout5 kilocalories];
      v23 = [v21 numberWithDouble:?];
      workoutRecordsByKey2 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey2 setObject:v23 forKeyedSubscript:v20];
    }

    workout6 = [environmentCopy workout];
    [workout6 kilometers];
    v27 = v26;
    [environmentCopy bestKilometersForType];
    v29 = v28;

    if (v27 > v29)
    {
      v30 = ACHLogWorkouts();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        workout7 = [environmentCopy workout];
        [workout7 kilometers];
        v148 = 134217984;
        v149 = v32;
        _os_log_impl(&dword_221DDC000, v30, OS_LOG_TYPE_DEFAULT, "Updated best kilometers to %lf km", &v148, 0xCu);
      }

      v33 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestDistance" activityType:type];
      v34 = MEMORY[0x277CCABB0];
      workout8 = [environmentCopy workout];
      [workout8 kilometers];
      v36 = [v34 numberWithDouble:?];
      workoutRecordsByKey3 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey3 setObject:v36 forKeyedSubscript:v33];
    }

    if (type == 24)
    {
      workout9 = [environmentCopy workout];
      [workout9 elevationGained];
      v40 = v39;
      [environmentCopy bestElevationGainedForType];
      v42 = v41;

      if (v40 > v42)
      {
        v43 = ACHLogWorkouts();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          workout10 = [environmentCopy workout];
          [workout10 elevationGained];
          v148 = 134217984;
          v149 = v45;
          _os_log_impl(&dword_221DDC000, v43, OS_LOG_TYPE_DEFAULT, "Updated best elevation gain to %lf cm", &v148, 0xCu);
        }

        v46 = [(ACHWorkoutAwardingSource *)self _keyForBaseKey:@"BestElevationGained" activityType:24];
        v47 = MEMORY[0x277CCABB0];
        workout11 = [environmentCopy workout];
        [workout11 elevationGained];
        v49 = [v47 numberWithDouble:?];
        workoutRecordsByKey4 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
        [workoutRecordsByKey4 setObject:v49 forKeyedSubscript:v46];
      }
    }

    workout12 = [environmentCopy workout];
    [workout12 best5KDuration];
    v53 = v52;
    [environmentCopy best5KDuration];
    v55 = v54;

    if (v53 < v55)
    {
      v56 = ACHLogWorkouts();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        workout13 = [environmentCopy workout];
        [workout13 best5KDuration];
        v58 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v58;
        _os_log_impl(&dword_221DDC000, v56, OS_LOG_TYPE_DEFAULT, "Updated best 5K duration to %@", &v148, 0xCu);
      }

      v59 = MEMORY[0x277CCABB0];
      workout14 = [environmentCopy workout];
      [workout14 best5KDuration];
      v61 = [v59 numberWithDouble:?];
      workoutRecordsByKey5 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey5 setObject:v61 forKeyedSubscript:@"Best5KDuration"];
    }

    workout15 = [environmentCopy workout];
    [workout15 best10KDuration];
    v65 = v64;
    [environmentCopy best10KDuration];
    v67 = v66;

    if (v65 < v67)
    {
      v68 = ACHLogWorkouts();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        workout16 = [environmentCopy workout];
        [workout16 best10KDuration];
        v70 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v70;
        _os_log_impl(&dword_221DDC000, v68, OS_LOG_TYPE_DEFAULT, "Updated best 10K duration to %@", &v148, 0xCu);
      }

      v71 = MEMORY[0x277CCABB0];
      workout17 = [environmentCopy workout];
      [workout17 best10KDuration];
      v73 = [v71 numberWithDouble:?];
      workoutRecordsByKey6 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey6 setObject:v73 forKeyedSubscript:@"Best10KDuration"];
    }

    workout18 = [environmentCopy workout];
    [workout18 bestWheelchair5KDuration];
    v77 = v76;
    [environmentCopy bestWheelchair5KDuration];
    v79 = v78;

    if (v77 < v79)
    {
      v80 = ACHLogWorkouts();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        workout19 = [environmentCopy workout];
        [workout19 bestWheelchair5KDuration];
        v82 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v82;
        _os_log_impl(&dword_221DDC000, v80, OS_LOG_TYPE_DEFAULT, "Updated best Wheelchair 5K duration to %@", &v148, 0xCu);
      }

      v83 = MEMORY[0x277CCABB0];
      workout20 = [environmentCopy workout];
      [workout20 bestWheelchair5KDuration];
      v85 = [v83 numberWithDouble:?];
      workoutRecordsByKey7 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey7 setObject:v85 forKeyedSubscript:@"BestWheelchair5KDuration"];
    }

    workout21 = [environmentCopy workout];
    [workout21 bestWheelchair10KDuration];
    v89 = v88;
    [environmentCopy bestWheelchair10KDuration];
    v91 = v90;

    if (v89 < v91)
    {
      v92 = ACHLogWorkouts();
      if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
      {
        workout22 = [environmentCopy workout];
        [workout22 bestWheelchair10KDuration];
        v94 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v94;
        _os_log_impl(&dword_221DDC000, v92, OS_LOG_TYPE_DEFAULT, "Updated best Wheelchair 10K duration to %@", &v148, 0xCu);
      }

      v95 = MEMORY[0x277CCABB0];
      workout23 = [environmentCopy workout];
      [workout23 bestWheelchair10KDuration];
      v97 = [v95 numberWithDouble:?];
      workoutRecordsByKey8 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey8 setObject:v97 forKeyedSubscript:@"BestWheelchair10KDuration"];
    }

    workout24 = [environmentCopy workout];
    [workout24 bestHalfMarathonDuration];
    v101 = v100;
    [environmentCopy bestHalfMarathonDuration];
    v103 = v102;

    if (v101 < v103)
    {
      v104 = ACHLogWorkouts();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        workout25 = [environmentCopy workout];
        [workout25 bestHalfMarathonDuration];
        v106 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v106;
        _os_log_impl(&dword_221DDC000, v104, OS_LOG_TYPE_DEFAULT, "Updated best Half Marathon duration to %@", &v148, 0xCu);
      }

      v107 = MEMORY[0x277CCABB0];
      workout26 = [environmentCopy workout];
      [workout26 bestHalfMarathonDuration];
      v109 = [v107 numberWithDouble:?];
      workoutRecordsByKey9 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey9 setObject:v109 forKeyedSubscript:@"BestHalfMarathonDuration"];
    }

    workout27 = [environmentCopy workout];
    [workout27 bestMarathonDuration];
    v113 = v112;
    [environmentCopy bestMarathonDuration];
    v115 = v114;

    if (v113 < v115)
    {
      v116 = ACHLogWorkouts();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        workout28 = [environmentCopy workout];
        [workout28 bestMarathonDuration];
        v118 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v118;
        _os_log_impl(&dword_221DDC000, v116, OS_LOG_TYPE_DEFAULT, "Updated best Marathon duration to %@", &v148, 0xCu);
      }

      v119 = MEMORY[0x277CCABB0];
      workout29 = [environmentCopy workout];
      [workout29 bestMarathonDuration];
      v121 = [v119 numberWithDouble:?];
      workoutRecordsByKey10 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey10 setObject:v121 forKeyedSubscript:@"BestMarathonDuration"];
    }

    workout30 = [environmentCopy workout];
    [workout30 bestWheelchairHalfMarathonDuration];
    v125 = v124;
    [environmentCopy bestWheelchairHalfMarathonDuration];
    v127 = v126;

    if (v125 < v127)
    {
      v128 = ACHLogWorkouts();
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        workout31 = [environmentCopy workout];
        [workout31 bestWheelchairHalfMarathonDuration];
        v130 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v130;
        _os_log_impl(&dword_221DDC000, v128, OS_LOG_TYPE_DEFAULT, "Updated best Wheelchair Half Marathon duration to %@", &v148, 0xCu);
      }

      v131 = MEMORY[0x277CCABB0];
      workout32 = [environmentCopy workout];
      [workout32 bestWheelchairHalfMarathonDuration];
      v133 = [v131 numberWithDouble:?];
      workoutRecordsByKey11 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey11 setObject:v133 forKeyedSubscript:@"BestWheelchairHalfMarathonDuration"];
    }

    workout33 = [environmentCopy workout];
    [workout33 bestWheelchairMarathonDuration];
    v137 = v136;
    [environmentCopy bestWheelchairMarathonDuration];
    v139 = v138;

    if (v137 < v139)
    {
      v140 = ACHLogWorkouts();
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        workout34 = [environmentCopy workout];
        [workout34 bestWheelchairMarathonDuration];
        v142 = [(ACHWorkoutAwardingSource *)self _stringForDuration:?];
        v148 = 138412290;
        v149 = v142;
        _os_log_impl(&dword_221DDC000, v140, OS_LOG_TYPE_DEFAULT, "Updated best Wheelchair Marathon duration to %@", &v148, 0xCu);
      }

      v143 = MEMORY[0x277CCABB0];
      workout35 = [environmentCopy workout];
      [workout35 bestWheelchairMarathonDuration];
      v145 = [v143 numberWithDouble:?];
      workoutRecordsByKey12 = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
      [workoutRecordsByKey12 setObject:v145 forKeyedSubscript:@"BestWheelchairMarathonDuration"];
    }
  }

  v147 = *MEMORY[0x277D85DE8];
}

- (BOOL)_appendEarnedInstancesForWorkout:(id)workout toSet:(id)set templates:(id)templates calendar:(id)calendar numberOfDaysInWeek:(unint64_t)week predicates:(id)predicates firstDayOfFitnessWeek:(int64_t)fitnessWeek watchCountryCode:(id)self0 error:(id *)self1
{
  v100 = *MEMORY[0x277D85DE8];
  workoutCopy = workout;
  setCopy = set;
  templatesCopy = templates;
  calendarCopy = calendar;
  predicatesCopy = predicates;
  v21 = workoutCopy;
  codeCopy = code;
  os_unfair_lock_lock(&self->_lock);
  v22 = ACHLogWorkouts();
  v85 = predicatesCopy;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    aad_redactedWorkoutDescription = [workoutCopy aad_redactedWorkoutDescription];
    *buf = 138412290;
    v96 = aad_redactedWorkoutDescription;
    _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Evaluating workout %@", buf, 0xCu);

    predicatesCopy = v85;
  }

  weekCopy = week;
  v25 = calendarCopy;
  v90 = [(ACHWorkoutAwardingSource *)self _lock_createWorkoutEvaluationEnvironmentWithWorkout:workoutCopy firstDayOfFitnessWeek:fitnessWeek numberOfDaysInWeek:weekCopy calendar:calendarCopy error:error];
  if (v90)
  {
    v26 = *MEMORY[0x277CE8B28];
    endDate = [workoutCopy endDate];
    v84 = v26;
    v28 = [calendarCopy components:v26 fromDate:endDate];

    v77 = v28;
    v78 = templatesCopy;
    v29 = ACHAvailableTemplatesForDateComponentsAndCountryCodeInTemplates(v28, codeCopy, templatesCopy);
    v30 = ACHLogWorkouts();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [ACHWorkoutAwardingSource _appendEarnedInstancesForWorkout:v29 toSet:workoutCopy templates:v30 calendar:? numberOfDaysInWeek:? predicates:? firstDayOfFitnessWeek:? watchCountryCode:? error:?];
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
      v81 = setCopy;
      v82 = workoutCopy;
      selfCopy = self;
      do
      {
        for (i = 0; i != v89; ++i)
        {
          if (*v92 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v91 + 1) + 8 * i);
          templateValidationResultsByUniqueName = [(ACHWorkoutAwardingSource *)self templateValidationResultsByUniqueName];
          uniqueName = [v33 uniqueName];
          v36 = [templateValidationResultsByUniqueName objectForKeyedSubscript:uniqueName];

          if (!v36)
          {
            v36 = [v86 validateTemplate:v33];
            templateValidationResultsByUniqueName2 = [(ACHWorkoutAwardingSource *)self templateValidationResultsByUniqueName];
            uniqueName2 = [v33 uniqueName];
            [templateValidationResultsByUniqueName2 setObject:v36 forKeyedSubscript:uniqueName2];
          }

          if (([v36 isValid] & 1) == 0)
          {
            v40 = ACHLogAwardEngine();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              uniqueName3 = [v33 uniqueName];
              *buf = 138412290;
              v96 = uniqueName3;
              _os_log_impl(&dword_221DDC000, v40, OS_LOG_TYPE_DEFAULT, "Template has invalid predicates, skipping: %@", buf, 0xCu);
            }

            goto LABEL_34;
          }

          uniqueName4 = [v33 uniqueName];
          v40 = [predicatesCopy objectForKeyedSubscript:uniqueName4];

          if (!v40)
          {
            gracePredicate = [v33 gracePredicate];
            v42 = gracePredicate;
            if (gracePredicate)
            {
              predicate = gracePredicate;
            }

            else
            {
              predicate = [v33 predicate];
            }

            v45 = predicate;

            v40 = [MEMORY[0x277CCAC30] predicateWithFormat:v45];
            uniqueName5 = [v33 uniqueName];
            [predicatesCopy setObject:v40 forKeyedSubscript:uniqueName5];
          }

          v31 = v90;
          if ([v40 evaluateWithObject:v90])
          {
            v47 = ACHLogWorkouts();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
            {
              uniqueName6 = [v33 uniqueName];
              aad_redactedWorkoutDescription2 = [v21 aad_redactedWorkoutDescription];
              *buf = 138543618;
              v96 = uniqueName6;
              v97 = 2112;
              v98 = aad_redactedWorkoutDescription2;
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
            uniqueName7 = [v33 uniqueName];
            [v51 setTemplateUniqueName:uniqueName7];

            hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
            endDate2 = [v21 endDate];
            v55 = [hk_gregorianCalendar components:v84 fromDate:endDate2];
            [v51 setEarnedDateComponents:v55];

            uUID = [v21 UUID];
            uUIDString = [uUID UUIDString];
            [v51 setExternalIdentifier:uUIDString];

            graceValueExpression = [v33 graceValueExpression];
            if (graceValueExpression || ([v33 valueExpression], (graceValueExpression = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v59 = graceValueExpression;
              v60 = [MEMORY[0x277CCA9C0] expressionWithFormat:graceValueExpression];
              v61 = [v60 expressionValueWithObject:v90 context:0];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v61 doubleValue];
                v63 = v62;
                v64 = MEMORY[0x277CCD7E8];
                canonicalUnit = [v33 canonicalUnit];
                v66 = [v64 quantityWithUnit:canonicalUnit doubleValue:v63];
                [v51 setValue:v66];

                setCopy = v81;
                v21 = v82;
              }
            }

            [setCopy addObject:v51];
            v67 = ACHLogWorkouts();
            predicatesCopy = v85;
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              uniqueName8 = [v33 uniqueName];
              *buf = 138543618;
              v96 = uniqueName8;
              v97 = 2112;
              v98 = v51;
              _os_log_impl(&dword_221DDC000, v67, OS_LOG_TYPE_DEFAULT, "Earned instance created for template %{public}@: %@", buf, 0x16u);
            }

            self = selfCopy;
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
    endDate3 = [v21 endDate];
    [endDate3 timeIntervalSinceReferenceDate];
    v72 = [v70 numberWithDouble:?];
    workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
    [workoutRecordsByKey setObject:v72 forKeyedSubscript:@"LastWorkoutProcessedEndDate"];

    os_unfair_lock_unlock(&self->_lock);
    templatesCopy = v78;
    v25 = calendarCopy;
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

- (id)_earnedInstancesForWorkoutsInDateInterval:(id)interval error:(id *)error
{
  intervalCopy = interval;
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__25;
  v64 = __Block_byref_object_dispose__25;
  v65 = [MEMORY[0x277CBEB58] set];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v8 = [hk_gregorianCalendar maximumRangeOfUnit:512];
  v10 = v9;
  templateStore = [(ACHWorkoutAwardingSource *)self templateStore];
  allTemplates = [templateStore allTemplates];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __76__ACHWorkoutAwardingSource__earnedInstancesForWorkoutsInDateInterval_error___block_invoke;
  v59[3] = &unk_278491B98;
  v59[4] = self;
  v13 = [allTemplates hk_filter:v59];

  v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
  v15 = HKFirstDayOfWeekForWeeklyGoalCalculations();
  watchCountryCode = [(ACHWorkoutAwardingSource *)self watchCountryCode];
  v36 = v15;
  v16 = v14;
  v17 = hk_gregorianCalendar;
  errorCopy = error;
  v18 = [ACHWorkoutIterator alloc];
  healthStore = [(ACHWorkoutAwardingSource *)self healthStore];
  v37 = [(ACHWorkoutIterator *)v18 initWithHealthStore:healthStore];

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
  date = [MEMORY[0x277CBEAA8] date];
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
  v24 = watchCountryCode;
  v43 = v24;
  v45 = &v53;
  v46 = &v49;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __76__ACHWorkoutAwardingSource__earnedInstancesForWorkoutsInDateInterval_error___block_invoke_3;
  v38[3] = &unk_278490958;
  v38[4] = &v53;
  [(ACHWorkoutIterator *)v37 enumerateWorkoutsForDateInterval:intervalCopy handler:v39 errorHandler:v38];
  date2 = [MEMORY[0x277CBEAA8] date];
  [date2 timeIntervalSinceReferenceDate];
  v27 = v26;
  [date timeIntervalSinceReferenceDate];
  [ACHDMetricsReporter reportProcessingMetricsWithSourceType:1 intervalProcessed:intervalCopy processingDuration:v50[3] recordsProcessed:v54[5] error:v27 - v28];
  v29 = v54[5];
  v30 = v29;
  if (v29)
  {
    if (errorCopy)
    {
      v31 = v29;
      *errorCopy = v30;
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

- (id)_earnedInstancesForWorkouts:(id)workouts
{
  v34 = *MEMORY[0x277D85DE8];
  workoutsCopy = workouts;
  v27 = [MEMORY[0x277CBEB58] set];
  hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
  v5 = [hk_gregorianCalendar maximumRangeOfUnit:512];
  v24 = v6;
  v25 = v5;
  templateStore = [(ACHWorkoutAwardingSource *)self templateStore];
  allTemplates = [templateStore allTemplates];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __56__ACHWorkoutAwardingSource__earnedInstancesForWorkouts___block_invoke;
  v32[3] = &unk_278491B98;
  v32[4] = self;
  v9 = [allTemplates hk_filter:v32];

  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = HKFirstDayOfWeekForWeeklyGoalCalculations();
  selfCopy = self;
  watchCountryCode = [(ACHWorkoutAwardingSource *)self watchCountryCode];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = workoutsCopy;
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
        [(ACHWorkoutAwardingSource *)selfCopy _appendEarnedInstancesForWorkout:v18 toSet:v27 templates:v9 calendar:hk_gregorianCalendar numberOfDaysInWeek:v25 + v24 predicates:v10 firstDayOfFitnessWeek:v11 watchCountryCode:watchCountryCode error:0];
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
  injectedIsMetricLocale = [(ACHWorkoutAwardingSource *)self injectedIsMetricLocale];
  if (injectedIsMetricLocale)
  {
    injectedIsMetricLocale2 = [(ACHWorkoutAwardingSource *)self injectedIsMetricLocale];
    bOOLValue = [injectedIsMetricLocale2 BOOLValue];
  }

  else
  {
    injectedIsMetricLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    bOOLValue = [injectedIsMetricLocale2 usesMetricSystem];
  }

  v6 = bOOLValue;

  return v6;
}

- (id)watchCountryCode
{
  watchCountryCodeOverride = [(ACHWorkoutAwardingSource *)self watchCountryCodeOverride];

  if (watchCountryCodeOverride)
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

- (void)_unit_test_setHistoricalRunCompleteVersion:(int64_t)version
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:version];
  workoutRecordsByKey = [(ACHWorkoutAwardingSource *)self workoutRecordsByKey];
  [workoutRecordsByKey setObject:v5 forKeyedSubscript:@"WorkoutHistoricalRunCompleteVersion"];

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