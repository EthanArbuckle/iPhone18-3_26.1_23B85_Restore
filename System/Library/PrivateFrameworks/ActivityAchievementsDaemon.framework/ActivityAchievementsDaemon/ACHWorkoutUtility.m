@interface ACHWorkoutUtility
- (ACHWorkoutUtility)initWithProfile:(id)a3;
- (HDProfile)profile;
- (HDSQLitePredicate)firstPartyPredicate;
- (double)_sumMindfulMinutesForSessions:(id)a3 dateInterval:(id)a4;
- (id)_predicateForBundleIdentifier:(id)a3;
- (id)_predicateWithDuration:(double)a3 withType:(id)a4 startingAtOrAfterDate:(id)a5 endingOnOrBeforeDate:(id)a6 firstPartyOnly:(BOOL)a7;
- (id)_readingContextWithIdentifier:(id)a3;
- (id)bestDistanceForFirstPartyWorkoutsWithType:(unint64_t)a3 endingBeforeDate:(id)a4;
- (id)bestEnergyBurnedForFirstPartyWorkoutsWithType:(unint64_t)a3 endingBeforeDate:(id)a4;
- (id)mindfulMinutesForForDateInterval:(id)a3;
- (id)workoutsInDateInterval:(id)a3;
- (unint64_t)_countOfSamplesWithPredicate:(id)a3 andLocationType:(unint64_t)a4;
- (unint64_t)numberOfFirstPartyWorkoutsWithDuration:(double)a3 containedInInterval:(id)a4;
- (unint64_t)numberOfFirstPartyWorkoutsWithDuration:(double)a3 withType:(unint64_t)a4 andLocation:(unint64_t)a5 containedInInterval:(id)a6;
- (unint64_t)numberOfFirstPartyWorkoutsWithDuration:(double)a3 withType:(unint64_t)a4 endingOnOrBeforeDate:(id)a5;
- (unint64_t)numberOfWorkoutsWithDuration:(double)a3 containedInInterval:(id)a4;
- (void)_performReadTransaction:(id)a3 error:(id *)a4 block:(id)a5;
@end

@implementation ACHWorkoutUtility

- (HDSQLitePredicate)firstPartyPredicate
{
  v24[1] = *MEMORY[0x277D85DE8];
  firstPartyPredicate = self->_firstPartyPredicate;
  if (!firstPartyPredicate)
  {
    v4 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
    v24[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
    v6 = [v5 mutableCopy];

    if (_os_feature_enabled_impl())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = *MEMORY[0x277CCE3A8];
      v22[0] = *MEMORY[0x277CCE340];
      v22[1] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:{2, 0}];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v19;
        do
        {
          v12 = 0;
          do
          {
            if (*v19 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [(ACHWorkoutUtility *)self _predicateForBundleIdentifier:*(*(&v18 + 1) + 8 * v12)];
            if (v13)
            {
              [v6 addObject:v13];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v10);
      }
    }

    v14 = [MEMORY[0x277D10B20] predicateMatchingAnyPredicates:v6];
    v15 = self->_firstPartyPredicate;
    self->_firstPartyPredicate = v14;

    firstPartyPredicate = self->_firstPartyPredicate;
  }

  v16 = *MEMORY[0x277D85DE8];

  return firstPartyPredicate;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (ACHWorkoutUtility)initWithProfile:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ACHWorkoutUtility;
  v5 = [(ACHWorkoutUtility *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
  }

  return v6;
}

- (id)_readingContextWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ACHWorkoutUtility *)self profile];
  v6 = [v5 database];
  v12 = 0;
  v7 = [ACHDatabaseAssertion assertionWithDatabase:v6 identifier:v4 error:&v12];

  v8 = v12;
  if (v8)
  {
    v9 = ACHLogXPC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutUtility _readingContextWithIdentifier:];
    }
  }

  v10 = ACHDatabaseContextWithAccessibilityAssertion(v7);
  [v10 setRequiresProtectedData:1];

  return v10;
}

- (id)_predicateForBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(ACHWorkoutUtility *)self profile];
  v6 = [v5 sourceManager];
  v7 = *MEMORY[0x277CCE340];
  v13 = 0;
  v8 = [v6 allSourcesForBundleIdentifier:v7 error:&v13];
  v9 = v13;

  if (v9)
  {
    v10 = ACHLogDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutUtility _predicateForBundleIdentifier:];
    }
  }

  if ([v8 count])
  {
    v11 = HDDataEntityPredicateForSourceEntitySet();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)workoutsInDateInterval:(id)a3
{
  v4 = a3;
  v5 = [v4 startDate];
  v6 = [v4 endDate];

  v7 = [(ACHWorkoutUtility *)self workoutsWithDuration:0 withType:v5 startingAtOrAfterDate:v6 endingOnOrBeforeDate:0 firstPartyOnly:0.0];

  return v7;
}

- (unint64_t)numberOfWorkoutsWithDuration:(double)a3 containedInInterval:(id)a4
{
  v6 = a4;
  v7 = [v6 startDate];
  v8 = [v6 endDate];

  v9 = [(ACHWorkoutUtility *)self _predicateWithDuration:0 withType:v7 startingAtOrAfterDate:v8 endingOnOrBeforeDate:0 firstPartyOnly:a3];

  v10 = [(ACHWorkoutUtility *)self _countOfSamplesWithPredicate:v9];
  return v10;
}

- (unint64_t)numberOfFirstPartyWorkoutsWithDuration:(double)a3 withType:(unint64_t)a4 endingOnOrBeforeDate:(id)a5
{
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = [v8 numberWithUnsignedInteger:a4];
  v11 = [(ACHWorkoutUtility *)self _predicateWithDuration:v10 withType:0 startingAtOrAfterDate:v9 endingOnOrBeforeDate:1 firstPartyOnly:a3];

  v12 = [(ACHWorkoutUtility *)self _countOfSamplesWithPredicate:v11];
  return v12;
}

- (unint64_t)numberOfFirstPartyWorkoutsWithDuration:(double)a3 containedInInterval:(id)a4
{
  v6 = a4;
  v7 = [v6 startDate];
  v8 = [v6 endDate];

  v9 = [(ACHWorkoutUtility *)self _predicateWithDuration:0 withType:v7 startingAtOrAfterDate:v8 endingOnOrBeforeDate:1 firstPartyOnly:a3];

  v10 = [(ACHWorkoutUtility *)self _countOfSamplesWithPredicate:v9];
  return v10;
}

- (unint64_t)numberOfFirstPartyWorkoutsWithDuration:(double)a3 withType:(unint64_t)a4 andLocation:(unint64_t)a5 containedInInterval:(id)a6
{
  v10 = MEMORY[0x277CCABB0];
  v11 = a6;
  v12 = [v10 numberWithUnsignedInteger:a4];
  v13 = [v11 startDate];
  v14 = [v11 endDate];

  v15 = [(ACHWorkoutUtility *)self _predicateWithDuration:v12 withType:v13 startingAtOrAfterDate:v14 endingOnOrBeforeDate:1 firstPartyOnly:a3];

  v16 = [(ACHWorkoutUtility *)self _countOfSamplesWithPredicate:v15 andLocationType:a5];
  return v16;
}

uint64_t __109__ACHWorkoutUtility_workoutsWithDuration_withType_startingAtOrAfterDate_endingOnOrBeforeDate_firstPartyOnly___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D10848];
  v6 = [MEMORY[0x277CCD720] workoutType];
  v7 = [v5 samplesWithType:v6 profile:a1[4] encodingOptions:0 predicate:a1[5] limit:0 anchor:0 error:a3];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

- (id)bestEnergyBurnedForFirstPartyWorkoutsWithType:(unint64_t)a3 endingBeforeDate:(id)a4
{
  v34[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HDSampleEntityPredicateForEndDate();
  v7 = HDWorkoutEntityPredicateForWorkoutActivityType();
  v8 = [MEMORY[0x277CCDCD0] workoutType];
  v9 = HDSampleEntityPredicateForDataType();

  v10 = MEMORY[0x277D10B20];
  v34[0] = v6;
  v34[1] = v7;
  v34[2] = v9;
  v11 = [(ACHWorkoutUtility *)self firstPartyPredicate];
  v34[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v13 = [v10 predicateMatchingAllPredicates:v12];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__31;
  v32 = __Block_byref_object_dispose__31;
  v33 = 0;
  v26 = &v28;
  v27 = 0;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __84__ACHWorkoutUtility_bestEnergyBurnedForFirstPartyWorkoutsWithType_endingBeforeDate___block_invoke;
  v24 = &unk_278492E10;
  v14 = v13;
  v25 = v14;
  [(ACHWorkoutUtility *)self _performReadTransaction:@"BestWorkoutEnergyBurned" error:&v27 block:&v21];
  v15 = v27;
  if (v15)
  {
    v16 = ACHLogWorkouts();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutUtility bestEnergyBurnedForFirstPartyWorkoutsWithType:endingBeforeDate:];
    }

    v17 = 0;
  }

  else
  {
    v18 = MEMORY[0x277CCD7E8];
    v16 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    [v29[5] doubleValue];
    v17 = [v18 quantityWithUnit:v16 doubleValue:?];
  }

  _Block_object_dispose(&v28, 8);
  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __84__ACHWorkoutUtility_bestEnergyBurnedForFirstPartyWorkoutsWithType_endingBeforeDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [MEMORY[0x277D10980] maxValueForProperty:@"total_energy_burned" predicate:*(a1 + 32) database:v6 error:a3];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

- (id)bestDistanceForFirstPartyWorkoutsWithType:(unint64_t)a3 endingBeforeDate:(id)a4
{
  v34[4] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HDSampleEntityPredicateForEndDate();
  v7 = HDWorkoutEntityPredicateForWorkoutActivityType();
  v8 = [MEMORY[0x277CCDCD0] workoutType];
  v9 = HDSampleEntityPredicateForDataType();

  v10 = MEMORY[0x277D10B20];
  v34[0] = v6;
  v34[1] = v7;
  v34[2] = v9;
  v11 = [(ACHWorkoutUtility *)self firstPartyPredicate];
  v34[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v13 = [v10 predicateMatchingAllPredicates:v12];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__31;
  v32 = __Block_byref_object_dispose__31;
  v33 = 0;
  v26 = &v28;
  v27 = 0;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __80__ACHWorkoutUtility_bestDistanceForFirstPartyWorkoutsWithType_endingBeforeDate___block_invoke;
  v24 = &unk_278492E10;
  v14 = v13;
  v25 = v14;
  [(ACHWorkoutUtility *)self _performReadTransaction:@"BestWorkoutDistance" error:&v27 block:&v21];
  v15 = v27;
  if (v15)
  {
    v16 = ACHLogWorkouts();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutUtility bestDistanceForFirstPartyWorkoutsWithType:endingBeforeDate:];
    }

    v17 = 0;
  }

  else
  {
    v18 = MEMORY[0x277CCD7E8];
    v16 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:{9, v21, v22, v23, v24}];
    [v29[5] doubleValue];
    v17 = [v18 quantityWithUnit:v16 doubleValue:?];
  }

  _Block_object_dispose(&v28, 8);
  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __80__ACHWorkoutUtility_bestDistanceForFirstPartyWorkoutsWithType_endingBeforeDate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 databaseForEntityClass:objc_opt_class()];

  v7 = [MEMORY[0x277D10980] maxValueForProperty:@"total_distance" predicate:*(a1 + 32) database:v6 error:a3];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

- (id)mindfulMinutesForForDateInterval:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 startDate];
  v24 = [v5 dateByAddingTimeInterval:-86400.0];

  v6 = [v4 endDate];
  v7 = [v6 dateByAddingTimeInterval:86400.0];

  v8 = HDSampleEntityPredicateForStartDate();
  v9 = [MEMORY[0x277CBEBF8] arrayByAddingObject:v8];
  v10 = HDSampleEntityPredicateForEndDate();
  v11 = [v9 arrayByAddingObject:v10];

  v12 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v11];
  v13 = [(ACHWorkoutUtility *)self profile];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__31;
  v34 = __Block_byref_object_dispose__31;
  v35 = 0;
  v28 = &v30;
  v29 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __54__ACHWorkoutUtility_mindfulMinutesForForDateInterval___block_invoke;
  v25[3] = &unk_278491618;
  v14 = v13;
  v26 = v14;
  v15 = v12;
  v27 = v15;
  [(ACHWorkoutUtility *)self _performReadTransaction:@"MindfulSessionWithinDateInterval" error:&v29 block:v25];
  v16 = v29;
  if (v16)
  {
    v17 = ACHLogWorkouts();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v37 = v24;
      v38 = 2114;
      v39 = v7;
      v40 = 2114;
      v41 = v16;
      _os_log_error_impl(&dword_221DDC000, v17, OS_LOG_TYPE_ERROR, "Failed to fetch mindful sessions for date interval: (%{public}@, %{public}@): %{public}@", buf, 0x20u);
    }

    v18 = 0;
  }

  else
  {
    [(ACHWorkoutUtility *)self _sumMindfulMinutesForSessions:v31[5] dateInterval:v4];
    v20 = v19;
    v21 = MEMORY[0x277CCD7E8];
    v17 = [MEMORY[0x277CCDAB0] secondUnit];
    v18 = [v21 quantityWithUnit:v17 doubleValue:v20];
  }

  _Block_object_dispose(&v30, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __54__ACHWorkoutUtility_mindfulMinutesForForDateInterval___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x277D10848];
  v6 = [MEMORY[0x277CCD8D8] categoryTypeForIdentifier:*MEMORY[0x277CCBA30]];
  v7 = [v5 samplesWithType:v6 profile:a1[4] encodingOptions:0 predicate:a1[5] limit:0 anchor:0 error:a3];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

- (double)_sumMindfulMinutesForSessions:(id)a3 dateInterval:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v38;
    v10 = 0.0;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v38 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        v13 = [v12 endDate];
        if ([v6 containsDate:v13])
        {
          v14 = [v12 startDate];
          v15 = [v6 containsDate:v14];

          if ((v15 & 1) == 0)
          {
            v16 = [v6 startDate];
            v17 = [v12 startDate];
LABEL_14:
            v21 = v17;
            [v16 timeIntervalSinceDate:v17];
            v23 = v22;

            v24 = [v12 endDate];
            v25 = [v12 startDate];
            [v24 timeIntervalSinceDate:v25];
            v27 = v26;

            v10 = v10 + v27 - v23;
            continue;
          }
        }

        else
        {
        }

        v18 = [v12 endDate];
        if ([v6 containsDate:v18])
        {
        }

        else
        {
          v19 = [v12 startDate];
          v20 = [v6 containsDate:v19];

          if (v20)
          {
            v16 = [v12 endDate];
            v17 = [v6 endDate];
            goto LABEL_14;
          }
        }

        v28 = [v12 endDate];
        if ([v6 containsDate:v28])
        {
          v29 = [v12 startDate];
          v30 = [v6 containsDate:v29];

          if (v30)
          {
            v31 = [v12 endDate];
            v32 = [v12 startDate];
            [v31 timeIntervalSinceDate:v32];
            v34 = v33;

            v10 = v10 + v34;
          }
        }

        else
        {
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (!v8)
      {
        goto LABEL_23;
      }
    }
  }

  v10 = 0.0;
LABEL_23:

  v35 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_performReadTransaction:(id)a3 error:(id *)a4 block:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ACHWorkoutUtility *)self profile];
  v11 = [(ACHWorkoutUtility *)self databaseContext];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [(ACHWorkoutUtility *)self _readingContextWithIdentifier:v8];
  }

  v14 = v13;

  v15 = MEMORY[0x277D10848];
  v16 = [v10 database];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__ACHWorkoutUtility__performReadTransaction_error_block___block_invoke;
  v18[3] = &unk_278492E38;
  v19 = v9;
  v17 = v9;
  [v15 performReadTransactionWithHealthDatabase:v16 context:v14 error:a4 block:v18];
}

- (id)_predicateWithDuration:(double)a3 withType:(id)a4 startingAtOrAfterDate:(id)a5 endingOnOrBeforeDate:(id)a6 firstPartyOnly:(BOOL)a7
{
  v7 = a7;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v7)
  {
    v15 = [(ACHWorkoutUtility *)self firstPartyPredicate];
    [v14 addObject:v15];
  }

  if (v12)
  {
    v16 = HDSampleEntityPredicateForStartDate();
    [v14 addObject:v16];
  }

  if (v13)
  {
    v17 = HDSampleEntityPredicateForEndDate();
    [v14 addObject:v17];
  }

  if (v11)
  {
    [v11 unsignedIntegerValue];
    v18 = HDWorkoutEntityPredicateForWorkoutActivityType();
    [v14 addObject:v18];
  }

  else
  {
    v18 = HDWorkoutEntityPredicateForWorkoutActivityType();
    v19 = [MEMORY[0x277D10B20] negatedPredicate:v18];
    [v14 addObject:v19];
  }

  v20 = HDWorkoutEntityPredicateForDuration();
  [v14 addObject:v20];
  v21 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v14];

  return v21;
}

- (unint64_t)_countOfSamplesWithPredicate:(id)a3 andLocationType:(unint64_t)a4
{
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = [(ACHWorkoutUtility *)self profile];
  v8 = MEMORY[0x277D10848];
  if (a4)
  {
    v9 = [MEMORY[0x277CCD8D8] workoutType];
    v10 = [v8 entityEnumeratorWithType:v9 profile:v7];

    [v10 setPredicate:v6];
    v16[5] = a4;
    v17 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __66__ACHWorkoutUtility__countOfSamplesWithPredicate_andLocationType___block_invoke;
    v16[3] = &unk_278492E60;
    v16[4] = &v19;
    [v10 enumerateWithError:&v17 handler:v16];
    v11 = v17;
  }

  else
  {
    v10 = [MEMORY[0x277CCD720] workoutType];
    v18 = 0;
    v12 = [v8 countOfSamplesWithType:v10 profile:v7 matchingPredicate:v6 withError:&v18];
    v11 = v18;
    v20[3] = v12;
  }

  if (v11)
  {
    v13 = ACHLogWorkouts();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [ACHWorkoutUtility _countOfSamplesWithPredicate:andLocationType:];
    }
  }

  v14 = v20[3];

  _Block_object_dispose(&v19, 8);
  return v14;
}

uint64_t __66__ACHWorkoutUtility__countOfSamplesWithPredicate_andLocationType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 metadata];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v5 = [v4 BOOLValue];

  v6 = *(a1 + 40);
  v7 = (v6 == 1) & v5;
  v8 = v6 != 2;
  if ((v7 & 1) != 0 || ((v8 | v5) & 1) == 0)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (void)_readingContextWithIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Unable to acquire database assertion: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_predicateForBundleIdentifier:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Error getting app source predicate for bundle identifier (%@): %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)bestEnergyBurnedForFirstPartyWorkoutsWithType:endingBeforeDate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Failed to fetch the best energy burned before date %{public}@ with error %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)bestDistanceForFirstPartyWorkoutsWithType:endingBeforeDate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_0(&dword_221DDC000, v0, v1, "Failed to fetch the best distance before date %{public}@ with error %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_countOfSamplesWithPredicate:andLocationType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_221DDC000, v0, OS_LOG_TYPE_ERROR, "Failed to obtain the sample count due to error %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end