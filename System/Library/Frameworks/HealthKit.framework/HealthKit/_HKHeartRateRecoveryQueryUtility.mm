@interface _HKHeartRateRecoveryQueryUtility
+ (id)perMinuteWorkoutRecoveryHeartRateFromReadings:(id)a3 workoutEndDate:(id)a4;
+ (id)predicateForWorkoutRecoveryTimeWithWorkout:(id)a3;
+ (id)recoveryDateIntervalWithWorkout:(id)a3;
+ (id)workoutRecoveryDateIntervalForWorkout:(id)a3 overlappingWorkouts:(id)a4;
+ (id)workoutRecoveryHeartRatesForWorkout:(id)a3 recoveryDateInterval:(id)a4 readings:(id)a5;
- (_HKHeartRateRecoveryQueryUtility)initWithHealthStore:(id)a3 workout:(id)a4 handler:(id)a5;
- (void)_heartRatesPostWorkout:(id)a3 workoutRecoveryTimePredicate:(id)a4 completionHandler:(id)a5;
- (void)_setupQueries;
- (void)dealloc;
- (void)stop;
@end

@implementation _HKHeartRateRecoveryQueryUtility

- (_HKHeartRateRecoveryQueryUtility)initWithHealthStore:(id)a3 workout:(id)a4 handler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = _HKHeartRateRecoveryQueryUtility;
  v12 = [(_HKHeartRateRecoveryQueryUtility *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_healthStore, a3);
    objc_storeStrong(&v13->_workout, a4);
    v14 = [v11 copy];
    handler = v13->_handler;
    v13->_handler = v14;

    [(_HKHeartRateRecoveryQueryUtility *)v13 _setupQueries];
  }

  return v13;
}

- (void)dealloc
{
  [(_HKSampleQueryUtility *)self->_workoutQueryUtility stop];
  [(HKHealthStore *)self->_healthStore stopQuery:self->_heartRateQuery];
  v3.receiver = self;
  v3.super_class = _HKHeartRateRecoveryQueryUtility;
  [(_HKHeartRateRecoveryQueryUtility *)&v3 dealloc];
}

- (void)stop
{
  [(_HKSampleQueryUtility *)self->_workoutQueryUtility stop];
  if (self->_heartRateQuery)
  {
    [(HKHealthStore *)self->_healthStore stopQuery:?];
    heartRateQuery = self->_heartRateQuery;
    self->_heartRateQuery = 0;
  }
}

- (void)_setupQueries
{
  v3 = [objc_opt_class() predicateForWorkoutRecoveryTimeWithWorkout:self->_workout];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v4 = [_HKSampleQueryUtility alloc];
  healthStore = self->_healthStore;
  v6 = +[HKObjectType workoutType];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49___HKHeartRateRecoveryQueryUtility__setupQueries__block_invoke;
  v10[3] = &unk_1E737DDA8;
  v10[4] = self;
  v12 = v13;
  v7 = v3;
  v11 = v7;
  v8 = [(_HKSampleQueryUtility *)v4 initWithHealthStore:healthStore sampleType:v6 predicate:v7 resultsHandler:v10];
  workoutQueryUtility = self->_workoutQueryUtility;
  self->_workoutQueryUtility = v8;

  [(_HKSampleQueryUtility *)self->_workoutQueryUtility setSortStartDateAscending:1];
  _Block_object_dispose(v13, 8);
}

- (void)_heartRatesPostWorkout:(id)a3 workoutRecoveryTimePredicate:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() recoveryDateIntervalWithWorkout:v10];

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = [HKQuantitySeriesSampleQuery alloc];
  v14 = [(HKObjectType *)HKSampleType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106___HKHeartRateRecoveryQueryUtility__heartRatesPostWorkout_workoutRecoveryTimePredicate_completionHandler___block_invoke;
  v20[3] = &unk_1E737DDD0;
  v21 = v11;
  v22 = v12;
  v23 = v8;
  v15 = v8;
  v16 = v12;
  v17 = v11;
  v18 = [(HKQuantitySeriesSampleQuery *)v13 initWithQuantityType:v14 predicate:v9 quantityHandler:v20];

  heartRateQuery = self->_heartRateQuery;
  self->_heartRateQuery = v18;

  [(HKHealthStore *)self->_healthStore executeQuery:self->_heartRateQuery];
}

+ (id)workoutRecoveryDateIntervalForWorkout:(id)a3 overlappingWorkouts:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 endDate];
  v9 = [a1 _recoveryEndDateWithStartDate:v8];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __94___HKHeartRateRecoveryQueryUtility_workoutRecoveryDateIntervalForWorkout_overlappingWorkouts___block_invoke;
  v38[3] = &unk_1E737DDF8;
  v10 = v6;
  v39 = v10;
  v11 = v9;
  v40 = v11;
  v32 = v8;
  v33 = v7;
  v41 = v32;
  v12 = [v7 hk_filter:v38];
  v13 = [MEMORY[0x1E695DF00] distantFuture];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = [v19 startDate];
        v21 = [v20 hk_isBeforeOrEqualToDate:v13];

        if (v21)
        {
          v22 = [v19 startDate];

          v13 = v22;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v16);
  }

  if ([v13 hk_isBeforeOrEqualToDate:v11])
  {
    v23 = v13;
  }

  else
  {
    v23 = v11;
  }

  v24 = v23;
  v25 = [v10 endDate];
  v26 = [v25 compare:v24];

  if (v26 == 1)
  {
    v27 = 0;
  }

  else
  {
    v28 = objc_alloc(MEMORY[0x1E696AB80]);
    v29 = [v10 endDate];
    v27 = [v28 initWithStartDate:v29 endDate:v24];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)workoutRecoveryHeartRatesForWorkout:(id)a3 recoveryDateInterval:(id)a4 readings:(id)a5
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102___HKHeartRateRecoveryQueryUtility_workoutRecoveryHeartRatesForWorkout_recoveryDateInterval_readings___block_invoke;
  v10[3] = &unk_1E737DE20;
  v11 = v6;
  v7 = v6;
  v8 = [a5 hk_filter:v10];

  return v8;
}

+ (id)perMinuteWorkoutRecoveryHeartRateFromReadings:(id)a3 workoutEndDate:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc(MEMORY[0x1E696AB80]);
  v9 = [a1 _recoveryEndDateWithStartDate:v7];
  v27 = [v8 initWithStartDate:v7 endDate:v9];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v28 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v28)
  {
    v26 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v10;
        v31 = *(*(&v33 + 1) + 8 * v10);
        v11 = [v31 date];
        if ([v27 containsDate:v11])
        {
          v12 = 0;
          for (i = 0; i != 3; ++i)
          {
            v14 = [v7 dateByAddingTimeInterval:v12];
            [v11 timeIntervalSinceDate:v14];
            v16 = fabs(v15);
            v17 = [MEMORY[0x1E696AD98] numberWithInt:i];
            v18 = [v32 objectForKeyedSubscript:v17];

            if (v16 < 20.0)
            {
              if (!v18 || ([v18 doubleValue], v16 < v19))
              {
                v20 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
                v21 = [MEMORY[0x1E696AD98] numberWithInt:i];
                [v32 setObject:v20 forKeyedSubscript:v21];

                v22 = [MEMORY[0x1E696AD98] numberWithInt:i];
                [v30 setObject:v31 forKeyedSubscript:v22];
              }
            }

            v12 += 60;
          }
        }

        v10 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v28);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v30;
}

+ (id)predicateForWorkoutRecoveryTimeWithWorkout:(id)a3
{
  v3 = [a1 recoveryDateIntervalWithWorkout:a3];
  v4 = [v3 startDate];
  v5 = [v3 endDate];
  v6 = [HKQuery predicateForSamplesWithStartDate:v4 endDate:v5 inclusiveEndDates:1 options:0];

  return v6;
}

+ (id)recoveryDateIntervalWithWorkout:(id)a3
{
  v4 = MEMORY[0x1E696AB80];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 endDate];
  v8 = [v5 endDate];

  v9 = [a1 _recoveryEndDateWithStartDate:v8];
  v10 = [v6 initWithStartDate:v7 endDate:v9];

  return v10;
}

@end