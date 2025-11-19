@interface CHWorkoutDataCalculator
- (BOOL)_activeDateIntervals:(id)a3 containsDate:(id)a4;
- (BOOL)_workoutSupportsDistanceAndPace:(id)a3;
- (CHWorkoutDataCalculator)initWithHealthStore:(id)a3 unitManager:(id)a4;
- (double)_activeWorkoutElapsedTimeFromDate:(id)a3 toDate:(id)a4 forWorkout:(id)a5 workoutActivity:(id)a6;
- (id)_activeDateIntervalsForWorkout:(id)a3 during:(id)a4;
- (id)_activeDateIntervalsForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)_activeDateIntervalsForWorkoutActivity:(id)a3 during:(id)a4;
- (id)_averageHeartRateQuantityFromWorkout:(id)a3 workoutActivity:(id)a4;
- (id)_endDateInWorkout:(id)a3 reachingAccumulatedDistance:(double)a4 fromStartDate:(id)a5;
- (id)_endDateInWorkout:(id)a3 reachingAccumulatedTime:(double)a4 fromStartDate:(id)a5;
- (id)_getDistanceSamplesForWorkout:(id)a3;
- (id)_predicateForActiveDateIntervals:(id)a3;
- (id)_predicateForObjectsFromWorkout:(id)a3 withinWorkoutActivity:(id)a4;
- (id)_queue_downhillRunsForWorkout:(id)a3 error:(id *)a4;
- (id)_queue_intervalsForWorkout:(id)a3 error:(id *)a4;
- (id)_queue_openWaterSwimDistanceByStrokeStyleForWorkout:(id)a3 workoutActivity:(id)a4 error:(id *)a5;
- (id)_queue_segmentsForWorkout:(id)a3 markerEvents:(id)a4 error:(id *)a5;
- (id)_queue_swimDistanceByStrokeStyleForWorkout:(id)a3 workoutActivity:(id)a4 error:(id *)a5;
- (id)_queue_swimmingSetsForWorkout:(id)a3 workoutActivity:(id)a4 error:(id *)a5;
- (id)_queue_swimmingSplitsForWorkout:(id)a3 workoutActivity:(id)a4 error:(id *)a5;
- (id)_queue_trackLapsForWorkout:(id)a3 lapEvents:(id)a4 error:(id *)a5;
- (id)_swimmingSplitsForWorkout:(id)a3 workoutActivity:(id)a4 distanceSamples:(id)a5 strokeSamples:(id)a6 forDelimeterUnit:(id)a7 splitDelimiter:(id)a8;
- (id)_testMarkersForWorkout:(id)a3;
- (id)_testTrackLapsForWorkout:(id)a3;
- (id)_uuidForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)averageHeartRateForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)cacheContainerForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)cachedDownhillRunsForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)cachedEffortForWorkout:(id)a3 workoutActivity:(id)a4;
- (id)cachedEffortSampleCollectionForWorkout:(id)a3 workoutActivity:(id)a4;
- (int64_t)_queue_strokeStyleForLaps:(id)a3;
- (void)_fetchHeartRateDataForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)_handleUpdatedRelationships:(id)a3 withAnchor:(id)a4;
- (void)_seriesSamplesForType:(id)a3 workout:(id)a4 workoutActivity:(id)a5 completion:(id)a6;
- (void)_setDistanceSamples:(id)a3 forWorkout:(id)a4;
- (void)_setStrokeSamples:(id)a3 forWorkout:(id)a4;
- (void)_updateSplits:(id)a3 withDistance:(double)a4 duration:(double)a5 strokeCount:(int64_t)a6 splitDelimiterInUserUnit:(double)a7;
- (void)averageCadenceForWorkout:(id)a3 during:(id)a4 completion:(id)a5;
- (void)averageHeartRateForWorkout:(id)a3 during:(id)a4 completion:(id)a5;
- (void)averagePowerForWorkout:(id)a3 during:(id)a4 completion:(id)a5;
- (void)cadenceSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)customSplitsForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)cyclingSpeedSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)distanceSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)downhillRunsForWorkout:(id)a3 completion:(id)a4;
- (void)effortForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)groundContactTimeSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)heartRateDataForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)intervalsForWorkout:(id)a3 completion:(id)a4;
- (void)openWaterSwimDistanceByStrokeStyleForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)paceSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)powerSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)saveContainerToCache:(id)a3 forWorkout:(id)a4 workoutActivity:(id)a5;
- (void)segmentsForWorkout:(id)a3 completion:(id)a4;
- (void)splitsForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)strideLengthSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)strokeSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)swimDistanceByStrokeStyleForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)swimmingPacePerHundredForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)swimmingSetsForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)swimmingSplitsForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
- (void)totalDistanceForWorkout:(id)a3 workoutActivity:(id)a4 atDate:(id)a5 completion:(id)a6;
- (void)trackLapsForWorkout:(id)a3 completion:(id)a4;
- (void)verticalOscillationSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5;
@end

@implementation CHWorkoutDataCalculator

- (CHWorkoutDataCalculator)initWithHealthStore:(id)a3 unitManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CHWorkoutDataCalculator;
  v9 = [(CHWorkoutDataCalculator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, a3);
    objc_storeStrong(&v10->_unitManager, a4);
    v11 = objc_alloc_init(NSCache);
    cache = v10->_cache;
    v10->_cache = v11;

    [(NSCache *)v10->_cache setEvictsObjectsWithDiscardedContent:0];
    [(NSCache *)v10->_cache setCountLimit:100];
  }

  return v10;
}

- (void)dealloc
{
  if (self->_effortObserverQuery)
  {
    _HKInitializeLogging();
    v3 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Workout Data Calculator] dealloc Stopping Workout Effort Relationship Query", buf, 2u);
    }

    [(HKHealthStore *)self->_healthStore stopQuery:self->_effortObserverQuery];
  }

  v4.receiver = self;
  v4.super_class = CHWorkoutDataCalculator;
  [(CHWorkoutDataCalculator *)&v4 dealloc];
}

- (id)cacheContainerForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = [(CHWorkoutDataCalculator *)self _uuidForWorkout:a3 workoutActivity:a4];
  v6 = [(CHWorkoutDataCalculator *)self cache];
  v7 = [v6 objectForKey:v5];

  if (!v7)
  {
    v7 = objc_alloc_init(CHWorkoutCacheContainer);
    v8 = [(CHWorkoutDataCalculator *)self cache];
    [v8 setObject:v7 forKey:v5];
  }

  return v7;
}

- (void)saveContainerToCache:(id)a3 forWorkout:(id)a4 workoutActivity:(id)a5
{
  v8 = a3;
  v10 = [(CHWorkoutDataCalculator *)self _uuidForWorkout:a4 workoutActivity:a5];
  v9 = [(CHWorkoutDataCalculator *)self cache];
  [v9 setObject:v8 forKey:v10];
}

- (id)averageHeartRateForWorkout:(id)a3 workoutActivity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v6 workoutActivity:v7];
  v9 = [v8 averageHeartRate];

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v11 = [(CHWorkoutDataCalculator *)self _averageHeartRateQuantityFromWorkout:v6 workoutActivity:v7];
    if (v11)
    {
      v12 = +[HKUnit _countPerMinuteUnit];
      [v11 doubleValueForUnit:v12];
      v10 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (void)heartRateDataForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 heartRateReadings];

  if (v12)
  {
    v13 = [v11 heartRateReadings];
    v14 = [v11 recoveryHeartRateReadings];
    v15 = [v11 averageHeartRate];
    v10[2](v10, v13, v14, v15, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000C9704;
    v22 = &unk_10083B260;
    v23 = v11;
    objc_copyWeak(&v27, &location);
    v16 = v8;
    v24 = v16;
    v17 = v9;
    v25 = v17;
    v26 = v10;
    v18 = objc_retainBlock(&v19);
    [(CHWorkoutDataCalculator *)self _fetchHeartRateDataForWorkout:v16 workoutActivity:v17 completion:v18, v19, v20, v21, v22];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (id)_averageHeartRateQuantityFromWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  if (v6)
  {
    v8 = [v6 statisticsForType:v7];
    v9 = [v8 averageQuantity];
  }

  else
  {
    v8 = [v5 statisticsForType:v7];
    v10 = [v8 averageQuantity];
    v11 = v10;
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v12 = [v5 metadata];
      v9 = [v12 objectForKeyedSubscript:NLWorkoutMetadataKeyAverageHeartRate];
    }
  }

  return v9;
}

- (void)_fetchHeartRateDataForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v30 = a5;
  v31 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  v10 = [(CHWorkoutDataCalculator *)self _activeDateIntervalsForWorkout:v8 workoutActivity:v9];
  v29 = [(CHWorkoutDataCalculator *)self _averageHeartRateQuantityFromWorkout:v8 workoutActivity:v9];
  v11 = [(CHWorkoutDataCalculator *)self _predicateForActiveDateIntervals:v10];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = sub_1000C9D88;
  v49[4] = sub_1000C9D98;
  v50 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = sub_1000C9D88;
  v47[4] = sub_1000C9D98;
  v48 = 0;
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_1000C9D88;
  v45[4] = sub_1000C9D98;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_1000C9D88;
  v43[4] = sub_1000C9D98;
  v44 = 0;
  v12 = [_HKHeartRateRecoveryQueryUtility recoveryDateIntervalWithWorkout:v8];
  v13 = v11;
  if (!v9 || ([v8 workoutActivities], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "lastObject"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", v9), v15, v14, v17 = v13, v16))
  {
    v18 = [_HKHeartRateRecoveryQueryUtility predicateForWorkoutRecoveryTimeWithWorkout:v8];
    v51[0] = v13;
    v51[1] = v18;
    v19 = [NSArray arrayWithObjects:v51 count:2];
    v17 = [NSCompoundPredicate orPredicateWithSubpredicates:v19];
  }

  v20 = [HKQuantitySeriesSampleQuery alloc];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000C9DA0;
  v32[3] = &unk_10083B2B0;
  v32[4] = self;
  v21 = v10;
  v33 = v21;
  v39 = v47;
  v22 = v12;
  v34 = v22;
  v40 = v43;
  v41 = v49;
  v23 = v29;
  v35 = v23;
  v42 = v45;
  v24 = v9;
  v36 = v24;
  v25 = v8;
  v37 = v25;
  v26 = v30;
  v38 = v26;
  v27 = [v20 initWithQuantityType:v31 predicate:v17 quantityHandler:v32];
  v28 = [(CHWorkoutDataCalculator *)self healthStore];
  [v28 executeQuery:v27];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

- (void)distanceSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 distanceSamples];

  if (v12)
  {
    v13 = [v11 distanceSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000CA478;
    v22 = &unk_10083B2D8;
    v23 = v11;
    objc_copyWeak(&v27, &location);
    v14 = v8;
    v24 = v14;
    v15 = v9;
    v25 = v15;
    v16 = v10;
    v26 = v16;
    v17 = objc_retainBlock(&v19);
    if (v15)
    {
      [v15 distanceType];
    }

    else
    {
      [v14 workoutActivityType];
      _HKWorkoutDistanceTypeForActivityType();
    }
    v18 = ;
    if (v18)
    {
      [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v18 workout:v14 workoutActivity:v15 completion:v17];
    }

    else
    {
      v16[2](v16, 0, 0);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)totalDistanceForWorkout:(id)a3 workoutActivity:(id)a4 atDate:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v10 workoutActivity:v11];
  v15 = [v14 totalDistance];

  if (!v15)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    [v14 setTotalDistance:v16];
  }

  v17 = [v14 totalDistance];
  v18 = [v17 objectForKeyedSubscript:v12];

  if (v18)
  {
    v13[2](v13, v18, 0);
  }

  else
  {
    objc_initWeak(location, self);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000CA8B0;
    v36[3] = &unk_10083B300;
    v37 = v14;
    v19 = v12;
    v38 = v19;
    objc_copyWeak(&v42, location);
    v30 = v10;
    v32 = v10;
    v39 = v32;
    v20 = v11;
    v40 = v20;
    v41 = v13;
    v31 = objc_retainBlock(v36);
    v21 = [NSDateInterval alloc];
    if (v20)
    {
      v22 = [v20 startDate];
      v23 = [v21 initWithStartDate:v22 endDate:v19];

      v24 = [(CHWorkoutDataCalculator *)self _activeDateIntervalsForWorkoutActivity:v20 during:v23];
      v25 = [v20 workoutConfiguration];
      [v25 activityType];
      v29 = _HKWorkoutDistanceTypeForActivityType();
    }

    else
    {
      v26 = [v32 startDate];
      v23 = [v21 initWithStartDate:v26 endDate:v19];

      v24 = [(CHWorkoutDataCalculator *)self _activeDateIntervalsForWorkout:v32 during:v23];
      [v32 workoutActivityType];
      v29 = _HKWorkoutDistanceTypeForActivityType();
    }

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000CA968;
    v33[3] = &unk_10083B328;
    v27 = v24;
    v34 = v27;
    v28 = v31;
    v35 = v28;
    [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:v32 workoutActivity:v20 completion:v33];

    objc_destroyWeak(&v42);
    objc_destroyWeak(location);
    v10 = v30;
  }
}

- (void)_seriesSamplesForType:(id)a3 workout:(id)a4 workoutActivity:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1000C9D88;
  v30[4] = sub_1000C9D98;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = sub_1000C9D88;
  v28[4] = sub_1000C9D98;
  v29 = 0;
  v14 = [(CHWorkoutDataCalculator *)self _predicateForObjectsFromWorkout:v11 withinWorkoutActivity:v12];
  v15 = [HKQuantitySeriesSampleQuery alloc];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000CAE78;
  v23 = &unk_10083B350;
  v26 = v28;
  v16 = v10;
  v24 = v16;
  v27 = v30;
  v17 = v13;
  v25 = v17;
  v18 = [v15 initWithQuantityType:v16 predicate:v14 quantityHandler:&v20];
  v19 = [(CHWorkoutDataCalculator *)self healthStore:v20];
  [v19 executeQuery:v18];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)cadenceSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 cadenceSamples];

  if (v12)
  {
    v13 = [v11 cadenceSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000CB318;
    v21[3] = &unk_10083B2D8;
    v22 = v11;
    objc_copyWeak(&v26, &location);
    v14 = v8;
    v23 = v14;
    v15 = v9;
    v24 = v15;
    v25 = v10;
    v20 = objc_retainBlock(v21);
    v16 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierStepCount];
    if ([v14 workoutActivityType] == 13 || (objc_msgSend(v15, "workoutConfiguration"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "activityType"), v17, v18 == 13))
    {
      v19 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierCyclingCadence];

      v16 = v19;
    }

    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v16 workout:v14 workoutActivity:v15 completion:v20];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)strokeSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 strokeSamples];

  if (v12)
  {
    v13 = [v11 strokeSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000CB770;
    v27[3] = &unk_10083B2D8;
    v28 = v11;
    objc_copyWeak(&v32, &location);
    v14 = v8;
    v29 = v14;
    v15 = v9;
    v30 = v15;
    v31 = v10;
    v16 = objc_retainBlock(v27);
    v24 = [(CHWorkoutDataCalculator *)self _predicateForObjectsFromWorkout:v14 withinWorkoutActivity:v15];
    v17 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierSwimmingStrokeCount];
    v18 = [NSSortDescriptor sortDescriptorWithKey:HKSampleSortIdentifierStartDate ascending:1];
    v19 = [HKSampleQuery alloc];
    v34 = v18;
    v20 = [NSArray arrayWithObjects:&v34 count:1];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000CB814;
    v25[3] = &unk_10083AA70;
    v21 = v16;
    v26 = v21;
    v22 = [v19 initWithSampleType:v17 predicate:v24 limit:0 sortDescriptors:v20 resultsHandler:v25];

    v23 = [(CHWorkoutDataCalculator *)self healthStore];
    [v23 executeQuery:v22];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

- (void)paceSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 paceSamples];

  if (v12)
  {
    v13 = [v11 paceSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000CBBE8;
    v22[3] = &unk_10083B2D8;
    v23 = v11;
    objc_copyWeak(&v27, &location);
    v14 = v8;
    v24 = v14;
    v15 = v9;
    v25 = v15;
    v16 = v10;
    v26 = v16;
    v21 = objc_retainBlock(v22);
    if (v15)
    {
      v17 = [v15 workoutConfiguration];
      [v17 activityType];
    }

    else
    {
      [v14 workoutActivityType];
    }

    v18 = _HKWorkoutSpeedTypeForActivityType();
    if (v18)
    {
      [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v18 workout:v14 workoutActivity:v15 completion:v21];
    }

    else
    {
      v29 = NSLocalizedDescriptionKey;
      v30 = @"Unable to fetch pace samples because speed HKQuantityType is nil";
      v19 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v20 = [NSError errorWithDomain:@"com.apple.Fitness" code:44 userInfo:v19];
      (v16)[2](v16, &__NSArray0__struct, v20);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)powerSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 powerSamples];

  if (v12)
  {
    v13 = [v11 powerSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000CBEEC;
    v22[3] = &unk_10083B2D8;
    v23 = v11;
    objc_copyWeak(&v27, &location);
    v14 = v8;
    v24 = v14;
    v15 = v9;
    v25 = v15;
    v26 = v10;
    v21 = objc_retainBlock(v22);
    v16 = HKQuantityTypeIdentifierRunningPower;
    if ([v14 workoutActivityType] == 13 || (objc_msgSend(v15, "workoutConfiguration"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "activityType"), v17, v18 == 13))
    {
      v19 = HKQuantityTypeIdentifierCyclingPower;

      v16 = v19;
    }

    v20 = [HKQuantityType quantityTypeForIdentifier:v16];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v20 workout:v14 workoutActivity:v15 completion:v21];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)cyclingSpeedSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 cyclingSpeedSamples];

  if (v12)
  {
    v13 = [v11 cyclingSpeedSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000CC198;
    v22 = &unk_10083B2D8;
    v23 = v11;
    objc_copyWeak(&v27, &location);
    v14 = v8;
    v24 = v14;
    v15 = v9;
    v25 = v15;
    v26 = v10;
    v16 = objc_retainBlock(&v19);
    v17 = HKQuantityTypeIdentifierCyclingSpeed;
    v18 = [HKQuantityType quantityTypeForIdentifier:v17, v19, v20, v21, v22];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v18 workout:v14 workoutActivity:v15 completion:v16];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)strideLengthSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 strideLengthSamples];

  if (v12)
  {
    v13 = [v11 strideLengthSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000CC42C;
    v21 = &unk_10083B2D8;
    v22 = v11;
    objc_copyWeak(&v26, &location);
    v14 = v8;
    v23 = v14;
    v15 = v9;
    v24 = v15;
    v25 = v10;
    v16 = objc_retainBlock(&v18);
    v17 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningStrideLength, v18, v19, v20, v21];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v17 workout:v14 workoutActivity:v15 completion:v16];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)verticalOscillationSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 verticalOscillationSamples];

  if (v12)
  {
    v13 = [v11 verticalOscillationSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000CC6C0;
    v21 = &unk_10083B2D8;
    v22 = v11;
    objc_copyWeak(&v26, &location);
    v14 = v8;
    v23 = v14;
    v15 = v9;
    v24 = v15;
    v25 = v10;
    v16 = objc_retainBlock(&v18);
    v17 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningVerticalOscillation, v18, v19, v20, v21];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v17 workout:v14 workoutActivity:v15 completion:v16];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)groundContactTimeSamplesForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 groundContactTimeSamples];

  if (v12)
  {
    v13 = [v11 groundContactTimeSamples];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000CC954;
    v21 = &unk_10083B2D8;
    v22 = v11;
    objc_copyWeak(&v26, &location);
    v14 = v8;
    v23 = v14;
    v15 = v9;
    v24 = v15;
    v25 = v10;
    v16 = objc_retainBlock(&v18);
    v17 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningGroundContactTime, v18, v19, v20, v21];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v17 workout:v14 workoutActivity:v15 completion:v16];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)splitsForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self unitManager];
  if (v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  v13 = [v12 fiui_activityType];
  v14 = [v11 userDistanceHKUnitForDistanceType:FIUIDistanceTypeForActivityType()];

  v15 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v16 = [v15 splits];
  if (v16 && (v17 = v16, [v15 userPreferredDistanceUnit], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", v14), v18, v17, v19))
  {
    v20 = [v15 splits];
    v10[2](v10, v20, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000CCCC4;
    v29[3] = &unk_10083B2D8;
    v30 = v15;
    objc_copyWeak(&v34, &location);
    v21 = v8;
    v31 = v21;
    v22 = v9;
    v32 = v22;
    v33 = v10;
    v23 = objc_retainBlock(v29);
    if (v9)
    {
      [v22 fiui_splitsForUserPreferredDistanceUnit:v14];
    }

    else
    {
      [v21 fiui_workoutSplitsForUserPreferredDistanceUnit:v14];
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000CCD68;
    v27 = v26[3] = &unk_10083B3B8;
    v28 = v23;
    v24 = v27;
    v25 = v23;
    dispatch_async(&_dispatch_main_q, v26);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }
}

- (void)customSplitsForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 customSplits];

  if (v12)
  {
    v13 = [v11 customSplits];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000CCFC8;
    v22[3] = &unk_10083B2D8;
    v23 = v11;
    objc_copyWeak(&v27, &location);
    v14 = v8;
    v24 = v14;
    v15 = v9;
    v25 = v15;
    v26 = v10;
    v16 = objc_retainBlock(v22);
    if (v15)
    {
      [v15 fiui_customSplits];
    }

    else
    {
      [v14 fiui_workoutCustomSplits];
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000CD06C;
    v20 = v19[3] = &unk_10083B3B8;
    v21 = v16;
    v17 = v20;
    v18 = v16;
    dispatch_async(&_dispatch_main_q, v19);

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)segmentsForWorkout:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v6 workoutActivity:0];
  v9 = [v8 segments];

  if (v9)
  {
    v10 = [v8 segments];
    v7[2](v7, v10, 0);
  }

  else
  {
    objc_initWeak(location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000CD350;
    v22[3] = &unk_10083B3E0;
    v23 = v8;
    objc_copyWeak(&v26, location);
    v11 = v6;
    v24 = v11;
    v25 = v7;
    v12 = objc_retainBlock(v22);
    v13 = [v11 workoutEvents];
    v14 = [NSPredicate predicateWithBlock:&stru_10083B400];
    v15 = [v13 filteredArrayUsingPredicate:v14];

    if ([(CHWorkoutDataCalculator *)self shouldUseFakeSegmentMarkers])
    {
      v16 = [(CHWorkoutDataCalculator *)self _testMarkersForWorkout:v11];

      v15 = v16;
    }

    if ([v15 count])
    {
      v17 = dispatch_get_global_queue(25, 0);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000CD470;
      v18[3] = &unk_10083B428;
      v18[4] = self;
      v19 = v11;
      v20 = v15;
      v21 = v12;
      dispatch_async(v17, v18);
    }

    else
    {
      (v12[2])(v12, &__NSArray0__struct, 0);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }
}

- (void)downhillRunsForWorkout:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v6 workoutActivity:0];
  v9 = [v8 downhillRuns];

  if (v9)
  {
    v10 = [v8 downhillRuns];
    v7[2](v7, v10, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000CD76C;
    v18[3] = &unk_10083B3E0;
    v19 = v8;
    objc_copyWeak(&v22, &location);
    v11 = v6;
    v20 = v11;
    v21 = v7;
    v12 = objc_retainBlock(v18);
    v13 = dispatch_get_global_queue(25, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000CD7F8;
    v15[3] = &unk_10083B188;
    v15[4] = self;
    v16 = v11;
    v17 = v12;
    v14 = v12;
    dispatch_async(v13, v15);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)intervalsForWorkout:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v6 workoutActivity:0];
  v9 = [v8 intervals];

  if (v9)
  {
    v10 = [v8 intervals];
    v7[2](v7, v10, 0);
  }

  else
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000CDAF4;
    v18[3] = &unk_10083B3E0;
    v19 = v8;
    objc_copyWeak(&v22, &location);
    v11 = v6;
    v20 = v11;
    v21 = v7;
    v12 = objc_retainBlock(v18);
    v13 = dispatch_get_global_queue(25, 0);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000CDB80;
    v15[3] = &unk_10083B188;
    v15[4] = self;
    v16 = v11;
    v17 = v12;
    v14 = v12;
    dispatch_async(v13, v15);

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

- (void)trackLapsForWorkout:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v6 workoutActivity:0];
  v9 = [v8 trackLaps];

  if (v9)
  {
    v10 = [v8 trackLaps];
    v7[2](v7, v10, 0);
  }

  else
  {
    objc_initWeak(location, self);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000CDF80;
    v22[3] = &unk_10083B3E0;
    v23 = v8;
    objc_copyWeak(&v26, location);
    v11 = v6;
    v24 = v11;
    v25 = v7;
    v12 = objc_retainBlock(v22);
    if ([v11 supportsTrackWorkout])
    {
      v13 = [v11 workoutEvents];
      v14 = [NSPredicate predicateWithBlock:&stru_10083B448];
      v15 = [v13 filteredArrayUsingPredicate:v14];

      if ([(CHWorkoutDataCalculator *)self shouldUseFakeSegmentMarkers])
      {
        v16 = [(CHWorkoutDataCalculator *)self _testTrackLapsForWorkout:v11];

        v15 = v16;
      }

      if ([v15 count])
      {
        v17 = dispatch_get_global_queue(25, 0);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_1000CE030;
        v18[3] = &unk_10083B428;
        v18[4] = self;
        v19 = v11;
        v20 = v15;
        v21 = v12;
        dispatch_async(v17, v18);
      }

      else
      {
        (v12[2])(v12, &__NSArray0__struct, 0);
      }
    }

    else
    {
      (v12[2])(v12, &__NSArray0__struct, 0);
    }

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }
}

- (void)swimDistanceByStrokeStyleForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 swimDistanceByStrokeStyle];

  if (v12)
  {
    v13 = [v11 swimDistanceByStrokeStyle];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000CE368;
    v23[3] = &unk_10083B470;
    v24 = v11;
    objc_copyWeak(&v28, location);
    v14 = v8;
    v25 = v14;
    v15 = v9;
    v26 = v15;
    v27 = v10;
    v16 = objc_retainBlock(v23);
    v17 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CE40C;
    block[3] = &unk_10083B428;
    block[4] = self;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v18 = v16;
    dispatch_async(v17, block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }
}

- (void)openWaterSwimDistanceByStrokeStyleForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 swimDistanceByStrokeStyle];

  if (v12)
  {
    v13 = [v11 swimDistanceByStrokeStyle];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000CE744;
    v23[3] = &unk_10083B470;
    v24 = v11;
    objc_copyWeak(&v28, location);
    v14 = v8;
    v25 = v14;
    v15 = v9;
    v26 = v15;
    v27 = v10;
    v16 = objc_retainBlock(v23);
    v17 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CE7E8;
    block[3] = &unk_10083B428;
    block[4] = self;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v18 = v16;
    dispatch_async(v17, block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }
}

- (void)swimmingSetsForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 swimmingSets];

  if (v12)
  {
    v13 = [v11 swimmingSets];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000CEB20;
    v23[3] = &unk_10083B2D8;
    v24 = v11;
    objc_copyWeak(&v28, location);
    v14 = v8;
    v25 = v14;
    v15 = v9;
    v26 = v15;
    v27 = v10;
    v16 = objc_retainBlock(v23);
    v17 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CEBC4;
    block[3] = &unk_10083B428;
    block[4] = self;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v18 = v16;
    dispatch_async(v17, block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }
}

- (void)swimmingSplitsForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
  v12 = [v11 swimmingSplits];

  if (v12)
  {
    v13 = [v11 swimmingSplits];
    v10[2](v10, v13, 0);
  }

  else
  {
    objc_initWeak(location, self);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000CEEFC;
    v23[3] = &unk_10083B470;
    v24 = v11;
    objc_copyWeak(&v28, location);
    v14 = v8;
    v25 = v14;
    v15 = v9;
    v26 = v15;
    v27 = v10;
    v16 = objc_retainBlock(v23);
    v17 = dispatch_get_global_queue(25, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CEFA0;
    block[3] = &unk_10083B428;
    block[4] = self;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v18 = v16;
    dispatch_async(v17, block);

    objc_destroyWeak(&v28);
    objc_destroyWeak(location);
  }
}

- (void)effortForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [WOEffortBridges demoExertionForWorkout:v8];
  if (v11)
  {
    v10[2](v10, v11);
  }

  else
  {
    objc_initWeak(&location, self);
    if (!self->_effortObserverQuery)
    {
      _HKInitializeLogging();
      v12 = HKLogWorkouts;
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Workout Data Calculator] Kicking off Workout Effort Relationship Query", buf, 2u);
      }

      v13 = [HKWorkoutEffortRelationshipQuery alloc];
      v14 = +[HKQueryAnchor latestAnchor];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_1000CF5F8;
      v41[3] = &unk_10083B4C0;
      objc_copyWeak(&v42, &location);
      v15 = [v13 initWithPredicate:0 anchor:v14 options:0 resultsHandler:v41];
      effortObserverQuery = self->_effortObserverQuery;
      self->_effortObserverQuery = v15;

      v17 = [(CHWorkoutDataCalculator *)self healthStore];
      [v17 executeQuery:self->_effortObserverQuery];

      objc_destroyWeak(&v42);
    }

    if (v9 && ([v9 workoutConfiguration], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "activityType") == 83, v18, v19))
    {
      v10[2](v10, 0);
    }

    else
    {
      v33 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v8 workoutActivity:v9];
      v20 = [v33 effortSampleCollection];
      v21 = [v20 preferredQuantity];

      if (v21)
      {
        _HKInitializeLogging();
        v22 = HKLogWorkouts;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [v8 UUID];
          v24 = [v9 UUID];
          *buf = 138412802;
          v45 = v23;
          v46 = 2112;
          v47 = v24;
          v48 = 2112;
          v49 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Effort cache hit for %@ (%@) with quantity %@", buf, 0x20u);
        }

        v10[2](v10, v21);
      }

      else
      {
        _HKInitializeLogging();
        v25 = HKLogWorkouts;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = [v8 UUID];
          v27 = [v9 UUID];
          *buf = 138412546;
          v45 = v26;
          v46 = 2112;
          v47 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Effort cache miss for %@ (%@), fetching from database.", buf, 0x16u);
        }

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000CF82C;
        v36[3] = &unk_10083B4E8;
        objc_copyWeak(&v40, &location);
        v28 = v8;
        v37 = v28;
        v29 = v9;
        v38 = v29;
        v39 = v10;
        v30 = objc_retainBlock(v36);
        v31 = [(CHWorkoutDataCalculator *)self healthStore];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000CF910;
        v34[3] = &unk_10083B510;
        v32 = v30;
        v35 = v32;
        [WOEffortBridges fetchExertionForWorkout:v28 workoutActivity:v29 healthStore:v31 completion:v34];

        objc_destroyWeak(&v40);
      }
    }

    objc_destroyWeak(&location);
  }
}

- (void)_handleUpdatedRelationships:(id)a3 withAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v8 = [(CHWorkoutDataCalculator *)self lastEffortAnchor];
  v9 = [v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
    v29 = v7;
    [(CHWorkoutDataCalculator *)self setLastEffortAnchor:v7];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = v6;
    obj = v6;
    v10 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v32 = *v34;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v14 = [v13 workout];
          v15 = [v13 activity];
          v16 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v14 workoutActivity:v15];

          v17 = [CHEffortSampleCollection alloc];
          v18 = [v13 samples];
          v19 = [(CHEffortSampleCollection *)v17 initWithSamples:v18];

          [v16 setEffortSampleCollection:v19];
          v20 = [v13 workout];
          v21 = [v13 activity];
          [(CHWorkoutDataCalculator *)self saveContainerToCache:v16 forWorkout:v20 workoutActivity:v21];

          v22 = [v13 activity];

          if (v22)
          {
            v39[0] = @"WorkoutUUID";
            v23 = [v13 workout];
            v24 = [v23 UUID];
            v39[1] = @"ActivityUUID";
            v40[0] = v24;
            v25 = [v13 activity];
            v26 = [v25 UUID];
            v40[1] = v26;
            v27 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
          }

          else
          {
            v37 = @"WorkoutUUID";
            v23 = [v13 workout];
            v24 = [v23 UUID];
            v38 = v24;
            v27 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          }

          v28 = +[NSNotificationCenter defaultCenter];
          [v28 postNotificationName:@"CHEffortChangedNotification" object:0 userInfo:v27];
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v11);
    }

    v7 = v29;
    v6 = v30;
  }
}

- (id)cachedDownhillRunsForWorkout:(id)a3 workoutActivity:(id)a4
{
  v4 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:a3 workoutActivity:a4];
  v5 = [v4 downhillRuns];

  return v5;
}

- (id)cachedEffortForWorkout:(id)a3 workoutActivity:(id)a4
{
  v4 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:a3 workoutActivity:a4];
  v5 = [v4 effortSampleCollection];
  v6 = [v5 preferredQuantity];

  return v6;
}

- (id)cachedEffortSampleCollectionForWorkout:(id)a3 workoutActivity:(id)a4
{
  v4 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:a3 workoutActivity:a4];
  v5 = [v4 effortSampleCollection];

  return v5;
}

- (void)averageHeartRateForWorkout:(id)a3 during:(id)a4 completion:(id)a5
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000CFF10;
  v15 = &unk_10083B538;
  v16 = self;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v8 = v19;
  v9 = v18;
  v10 = v17;
  v11 = objc_retainBlock(&v12);
  [(CHWorkoutDataCalculator *)self heartRateDataForWorkout:v10 workoutActivity:0 completion:v11, v12, v13, v14, v15, v16];
}

- (void)averageCadenceForWorkout:(id)a3 during:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D0304;
  v10[3] = &unk_10083B560;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(CHWorkoutDataCalculator *)v11 cadenceSamplesForWorkout:v9 workoutActivity:0 completion:v10];
}

- (void)averagePowerForWorkout:(id)a3 during:(id)a4 completion:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D076C;
  v10[3] = &unk_10083B560;
  v11 = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v7 = v14;
  v8 = v13;
  v9 = v12;
  [(CHWorkoutDataCalculator *)v11 powerSamplesForWorkout:v9 workoutActivity:0 completion:v10];
}

- (void)swimmingPacePerHundredForWorkout:(id)a3 workoutActivity:(id)a4 completion:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D0AE0;
  v9[3] = &unk_10083B588;
  v10 = a5;
  v8 = v10;
  [(CHWorkoutDataCalculator *)self swimmingSplitsForWorkout:a3 workoutActivity:a4 completion:v9];
}

- (id)_queue_intervalsForWorkout:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 isIntervalWorkout])
  {
    v55 = a4;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_1000D15E4;
    v89[3] = &unk_10083B5B0;
    v6 = objc_alloc_init(NSMutableArray);
    v90 = v6;
    v57 = v5;
    [v5 _enumerateActiveTimePeriods:v89];
    v7 = objc_alloc_init(NSMutableArray);
    v8 = [v5 workoutActivities];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_1000D1670;
    v84[3] = &unk_10083B5D8;
    v58 = v7;
    v85 = v58;
    v53 = v6;
    v86 = v53;
    v64 = v57;
    v87 = v64;
    v88 = self;
    [v8 enumerateObjectsUsingBlock:v84];

    v56 = [v58 lastObject];
    if (v56)
    {
      v9 = [v64 endDate];
      v10 = [v56 endDate];
      [v9 timeIntervalSinceDate:v10];
      v12 = v11;

      if (v12 > 5.0)
      {
        v13 = objc_alloc_init(CHWorkoutInterval);
        v14 = [v56 endDate];
        [(CHWorkoutSegment *)v13 setStartDate:v14];

        v15 = [v64 endDate];
        [(CHWorkoutSegment *)v13 setEndDate:v15];

        [(CHWorkoutSegment *)v13 setElapsedTime:v12];
        [(CHWorkoutInterval *)v13 setStepKeyPath:@"WORKOUT_CONFIGURATION_GOAL_OPEN"];
        [v58 addObject:v13];
        _HKInitializeLogging();
        v16 = HKLogWorkouts;
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [(CHWorkoutInterval *)v13 description];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[interval][recovery] detected large gap between last interval and end of workout, adding open interval. %@", &buf, 0xCu);
        }
      }
    }

    group = dispatch_group_create();
    *&buf = 0;
    *(&buf + 1) = &buf;
    v95 = 0x3032000000;
    v96 = sub_1000C9D88;
    v97 = sub_1000C9D98;
    v98 = 0;
    v19 = [v64 workoutActivityType] == 46 && objc_msgSend(v64, "fiui_swimmingLocationType") == 1;
    if ([(CHWorkoutDataCalculator *)self _workoutSupportsDistanceAndPace:v64, v53])
    {
      v60 = v19;
      dispatch_group_enter(group);
      v21 = objc_alloc_init(NSMutableArray);
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v22 = v58;
      v23 = [v22 countByEnumeratingWithState:&v80 objects:v93 count:16];
      if (v23)
      {
        v24 = *v81;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v81 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v26 = *(*(&v80 + 1) + 8 * i);
            v27 = [NSDateInterval alloc];
            v28 = [v26 startDate];
            v29 = [v26 endDate];
            v30 = [v27 initWithStartDate:v28 endDate:v29];
            [v21 addObject:v30];

            v31 = [v26 stepKeyPath];
            v32 = [v64 expectedIntervalDistanceForStepKeyPath:v31];

            v33 = [v26 wasSuccessful];
            if (v32)
            {
              v34 = v33;
            }

            else
            {
              v34 = 0;
            }

            if (v34 == 1)
            {
              [v26 setDistance:v32];
            }
          }

          v23 = [v22 countByEnumeratingWithState:&v80 objects:v93 count:16];
        }

        while (v23);
      }

      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_1000D1D40;
      v72[3] = &unk_10083B628;
      p_buf = &buf;
      obj = v21;
      v73 = obj;
      v74 = v22;
      v79 = v60;
      v75 = v64;
      v76 = self;
      v77 = group;
      [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:v75 workoutActivity:0 completion:v72];
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = v58;
      v35 = [obj countByEnumeratingWithState:&v68 objects:v92 count:16];
      if (v35)
      {
        v61 = *v69;
        do
        {
          for (j = 0; j != v35; j = j + 1)
          {
            if (*v69 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v68 + 1) + 8 * j);
            dispatch_group_enter(group);
            v38 = [HKQuery predicateForObjectsFromWorkout:v64];
            v39 = [v37 startDate];
            v40 = [v37 endDate];
            v41 = [HKQuery predicateForSamplesWithStartDate:v39 endDate:v40 options:1];

            v91[0] = v38;
            v91[1] = v41;
            v42 = [NSArray arrayWithObjects:v91 count:2];
            v43 = [NSCompoundPredicate andPredicateWithSubpredicates:v42];

            v44 = [HKStatisticsQuery alloc];
            v45 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
            v65[0] = _NSConcreteStackBlock;
            v65[1] = 3221225472;
            v65[2] = sub_1000D20C4;
            v65[3] = &unk_10083B650;
            v65[4] = v37;
            v67 = &buf;
            v66 = group;
            v46 = [v44 initWithQuantityType:v45 quantitySamplePredicate:v43 options:16 completionHandler:v65];

            v47 = [(CHWorkoutDataCalculator *)self healthStore];
            [v47 executeQuery:v46];
          }

          v35 = [obj countByEnumeratingWithState:&v68 objects:v92 count:16];
        }

        while (v35);
      }
    }

    v48 = dispatch_time(0, 20000000000);
    dispatch_group_wait(group, v48);
    v49 = *(*(&buf + 1) + 40);
    v50 = v49;
    if (v49)
    {
      if (v55)
      {
        v51 = v49;
        *v55 = v50;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = v58;
    _Block_object_dispose(&buf, 8);

    v5 = v57;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)_queue_segmentsForWorkout:(id)a3 markerEvents:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v81 = objc_alloc_init(NSMutableArray);
  v83 = v6;
  v8 = [v6 startDate];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
  if (v9)
  {
    v10 = *v117;
    group = FIUIPrivateMetadataKeySegmentDistance;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v117 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v116 + 1) + 8 * i);
        v13 = [v12 dateInterval];
        v14 = [v13 startDate];
        [v14 timeIntervalSinceDate:v8];
        v16 = v15;

        if (fabs(round(v16)) >= 2.22044605e-16)
        {
          v17 = objc_alloc_init(CHWorkoutSegment);
          [(CHWorkoutSegment *)v17 setStartDate:v8];
          v18 = [v12 dateInterval];
          v19 = [v18 startDate];
          [(CHWorkoutSegment *)v17 setEndDate:v19];

          [v81 addObject:v17];
          v20 = [v12 dateInterval];
          v21 = [v20 startDate];

          if ([v83 isTrackWorkout])
          {
            v22 = [v12 metadata];
            v23 = [v22 objectForKeyedSubscript:group];

            if (v23)
            {
              v24 = +[HKUnit meterUnit];
              [v23 doubleValue];
              v25 = [HKQuantity quantityWithUnit:v24 doubleValue:?];
              [(CHWorkoutSegment *)v17 setDistance:v25];
            }
          }

          v8 = v21;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
    }

    while (v9);
  }

  v72 = objc_alloc_init(CHWorkoutSegment);
  [(CHWorkoutSegment *)v72 setStartDate:v8];
  v26 = [v83 endDate];
  [(CHWorkoutSegment *)v72 setEndDate:v26];

  [v81 addObject:v72];
  if ([v81 count] >= 2)
  {
    v114[0] = _NSConcreteStackBlock;
    v114[1] = 3221225472;
    v114[2] = sub_1000D2B9C;
    v114[3] = &unk_10083B5B0;
    v77 = objc_alloc_init(NSMutableArray);
    v115 = v77;
    [v83 _enumerateActiveTimePeriods:v114];
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v74 = v81;
    v28 = [v74 countByEnumeratingWithState:&v110 objects:v124 count:16];
    if (v28)
    {
      groupa = *v111;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v111 != groupa)
          {
            objc_enumerationMutation(v74);
          }

          v30 = *(*(&v110 + 1) + 8 * j);
          v31 = [NSDateInterval alloc];
          v32 = [v30 startDate];
          v33 = [v30 endDate];
          v34 = [v31 initWithStartDate:v32 endDate:v33];

          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v35 = v77;
          v36 = [v35 countByEnumeratingWithState:&v106 objects:v123 count:16];
          if (v36)
          {
            v37 = *v107;
            v38 = 0.0;
            do
            {
              for (k = 0; k != v36; k = k + 1)
              {
                if (*v107 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = [v34 intersectionWithDateInterval:*(*(&v106 + 1) + 8 * k)];
                v41 = v40;
                if (v40)
                {
                  [v40 duration];
                  v38 = v38 + v42;
                }
              }

              v36 = [v35 countByEnumeratingWithState:&v106 objects:v123 count:16];
            }

            while (v36);
          }

          else
          {
            v38 = 0.0;
          }

          [v30 setElapsedTime:v38];
        }

        v28 = [v74 countByEnumeratingWithState:&v110 objects:v124 count:16];
      }

      while (v28);
    }

    groupb = dispatch_group_create();
    v100 = 0;
    v101 = &v100;
    v102 = 0x3032000000;
    v103 = sub_1000C9D88;
    v104 = sub_1000C9D98;
    v105 = 0;
    if ([(CHWorkoutDataCalculator *)self _workoutSupportsDistanceAndPace:v83])
    {
      dispatch_group_enter(groupb);
      v43 = objc_alloc_init(NSMutableArray);
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v44 = v74;
      v45 = [v44 countByEnumeratingWithState:&v96 objects:v122 count:16];
      if (v45)
      {
        v46 = *v97;
        do
        {
          for (m = 0; m != v45; m = m + 1)
          {
            if (*v97 != v46)
            {
              objc_enumerationMutation(v44);
            }

            v48 = *(*(&v96 + 1) + 8 * m);
            v49 = [NSDateInterval alloc];
            v50 = [v48 startDate];
            v51 = [v48 endDate];
            v52 = [v49 initWithStartDate:v50 endDate:v51];
            [v43 addObject:v52];
          }

          v45 = [v44 countByEnumeratingWithState:&v96 objects:v122 count:16];
        }

        while (v45);
      }

      v91[0] = _NSConcreteStackBlock;
      v91[1] = 3221225472;
      v91[2] = sub_1000D2C28;
      v91[3] = &unk_10083B6A0;
      v95 = &v100;
      v73 = v43;
      v92 = v73;
      v93 = v44;
      v94 = groupb;
      [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:v83 workoutActivity:0 completion:v91];
    }

    else
    {
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v73 = v74;
      v53 = [v73 countByEnumeratingWithState:&v87 objects:v121 count:16];
      if (v53)
      {
        v75 = *v88;
        do
        {
          for (n = 0; n != v53; n = n + 1)
          {
            if (*v88 != v75)
            {
              objc_enumerationMutation(v73);
            }

            v55 = *(*(&v87 + 1) + 8 * n);
            dispatch_group_enter(groupb);
            v56 = [HKQuery predicateForObjectsFromWorkout:v83];
            v57 = [v55 startDate];
            v58 = [v55 endDate];
            v59 = [HKQuery predicateForSamplesWithStartDate:v57 endDate:v58 options:1];

            v120[0] = v56;
            v120[1] = v59;
            v60 = [NSArray arrayWithObjects:v120 count:2];
            v61 = [NSCompoundPredicate andPredicateWithSubpredicates:v60];

            v62 = [HKStatisticsQuery alloc];
            v63 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
            v84[0] = _NSConcreteStackBlock;
            v84[1] = 3221225472;
            v84[2] = sub_1000D2D98;
            v84[3] = &unk_10083B650;
            v84[4] = v55;
            v86 = &v100;
            v85 = groupb;
            v64 = [v62 initWithQuantityType:v63 quantitySamplePredicate:v61 options:16 completionHandler:v84];

            v65 = [(CHWorkoutDataCalculator *)self healthStore];
            [v65 executeQuery:v64];
          }

          v53 = [v73 countByEnumeratingWithState:&v87 objects:v121 count:16];
        }

        while (v53);
      }
    }

    v66 = dispatch_time(0, 20000000000);
    dispatch_group_wait(groupb, v66);
    v67 = v101[5];
    v68 = v67;
    if (v67)
    {
      if (a5)
      {
        v69 = v67;
        *a5 = v68;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v27 = v74;
    _Block_object_dispose(&v100, 8);
  }

  else
  {
    v27 = &__NSArray0__struct;
  }

  return v27;
}

- (id)_queue_downhillRunsForWorkout:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = dispatch_group_create();
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_1000C9D88;
  v30 = sub_1000C9D98;
  v31 = 0;
  dispatch_group_enter(v7);
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000C9D88;
  v24 = sub_1000C9D98;
  v25 = 0;
  healthStore = self->_healthStore;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000D3030;
  v16[3] = &unk_10083B6C8;
  v18 = &v20;
  v19 = &v26;
  v9 = v7;
  v17 = v9;
  [v6 makeDownhillRunBridgesWithHealthStore:healthStore completion:v16];
  v10 = dispatch_time(0, 20000000000);
  dispatch_group_wait(v9, v10);
  v11 = v21[5];
  v12 = v11;
  if (v11)
  {
    if (a4)
    {
      v13 = v11;
      *a4 = v12;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v14 = v27[5];
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);

  return v14;
}

- (id)_queue_trackLapsForWorkout:(id)a3 lapEvents:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v57 = objc_alloc_init(NSMutableArray);
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_1000D37E0;
  v84[3] = &unk_10083B5B0;
  v51 = objc_alloc_init(NSMutableArray);
  v85 = v51;
  v54 = v6;
  [v6 _enumerateActiveTimePeriods:v84];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v8)
  {
    v55 = *v81;
    v9 = FIPrivateMetadataKeyLapDuration;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v81 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v80 + 1) + 8 * i);
        v12 = [[CHWorkoutTrackLap alloc] initWithWorkoutEvent:v11];
        v13 = [v11 metadata];
        v14 = [v13 allKeys];
        v15 = [v14 containsObject:v9];

        if ((v15 & 1) == 0)
        {
          v16 = [NSDateInterval alloc];
          v17 = [(CHWorkoutSegment *)v12 startDate];
          v18 = [(CHWorkoutSegment *)v12 endDate];
          v19 = [v16 initWithStartDate:v17 endDate:v18];

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v20 = v51;
          v21 = [v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
          if (v21)
          {
            v22 = *v77;
            v23 = 0.0;
            do
            {
              for (j = 0; j != v21; j = j + 1)
              {
                if (*v77 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = [v19 intersectionWithDateInterval:*(*(&v76 + 1) + 8 * j)];
                v26 = v25;
                if (v25)
                {
                  [v25 duration];
                  v23 = v23 + v27;
                }
              }

              v21 = [v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
            }

            while (v21);
          }

          else
          {
            v23 = 0.0;
          }

          [(CHWorkoutSegment *)v12 setElapsedTime:v23];
        }

        [v57 addObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
    }

    while (v8);
  }

  v28 = dispatch_group_create();
  v70 = 0;
  v71 = &v70;
  v72 = 0x3032000000;
  v73 = sub_1000C9D88;
  v74 = sub_1000C9D98;
  v75 = 0;
  if ([(CHWorkoutDataCalculator *)self _workoutSupportsDistanceAndPace:v54])
  {
    dispatch_group_enter(v28);
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_1000D386C;
    v65[3] = &unk_10083B6A0;
    v69 = &v70;
    v66 = v57;
    v67 = obj;
    v68 = v28;
    [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:v54 workoutActivity:0 completion:v65];

    v29 = v66;
  }

  else
  {
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v29 = v57;
    v30 = [v29 countByEnumeratingWithState:&v61 objects:v87 count:16];
    if (v30)
    {
      v56 = *v62;
      v50 = v29;
      do
      {
        for (k = 0; k != v30; k = k + 1)
        {
          if (*v62 != v56)
          {
            objc_enumerationMutation(v50);
          }

          v32 = *(*(&v61 + 1) + 8 * k);
          dispatch_group_enter(v28);
          v33 = [HKQuery predicateForObjectsFromWorkout:v54];
          v34 = [v32 startDate];
          v35 = [v32 endDate];
          v36 = [HKQuery predicateForSamplesWithStartDate:v34 endDate:v35 options:1];

          v86[0] = v33;
          v86[1] = v36;
          v37 = [NSArray arrayWithObjects:v86 count:2];
          v38 = [NSCompoundPredicate andPredicateWithSubpredicates:v37];

          v39 = [HKStatisticsQuery alloc];
          v40 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierActiveEnergyBurned];
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_1000D3B7C;
          v58[3] = &unk_10083B650;
          v58[4] = v32;
          v60 = &v70;
          v59 = v28;
          v41 = [v39 initWithQuantityType:v40 quantitySamplePredicate:v38 options:16 completionHandler:v58];

          v42 = [(CHWorkoutDataCalculator *)self healthStore];
          [v42 executeQuery:v41];
        }

        v29 = v50;
        v30 = [v50 countByEnumeratingWithState:&v61 objects:v87 count:16];
      }

      while (v30);
    }
  }

  v43 = dispatch_time(0, 20000000000);
  dispatch_group_wait(v28, v43);
  v44 = v71[5];
  v45 = v44;
  if (v44)
  {
    if (a5)
    {
      v46 = v44;
      *a5 = v45;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v47 = v57;
  _Block_object_dispose(&v70, 8);

  return v47;
}

- (id)_queue_openWaterSwimDistanceByStrokeStyleForWorkout:(id)a3 workoutActivity:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_1000C9D88;
  v45 = sub_1000C9D98;
  v46 = [&__NSArray0__struct mutableCopy];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000C9D88;
  v39 = sub_1000C9D98;
  v40 = [&__NSArray0__struct mutableCopy];
  v9 = dispatch_group_create();
  dispatch_group_enter(v9);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000D3FFC;
  v32[3] = &unk_10083B718;
  v34 = &v41;
  v10 = v9;
  v33 = v10;
  [(CHWorkoutDataCalculator *)self strokeSamplesForWorkout:v7 workoutActivity:v8 completion:v32];
  dispatch_group_enter(v10);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000D404C;
  v29[3] = &unk_10083B718;
  v31 = &v35;
  v11 = v10;
  v30 = v11;
  [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:v7 workoutActivity:v8 completion:v29];
  v12 = dispatch_time(0, 20000000000);
  dispatch_group_wait(v11, v12);
  _HKInitializeLogging();
  v13 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v42[5];
    *buf = 138412290;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stroke samples: %@", buf, 0xCu);
  }

  _HKInitializeLogging();
  v15 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v36[5];
    *buf = 138412290;
    v48 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Distance samples: %@", buf, 0xCu);
  }

  v17 = objc_alloc_init(NSMutableDictionary);
  v18 = v42[5];
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000D409C;
  v26 = &unk_10083B740;
  v28 = &v35;
  v19 = v17;
  v27 = v19;
  [v18 enumerateObjectsUsingBlock:&v23];
  v20 = [NSDictionary alloc];
  v21 = [v20 initWithDictionary:{v19, v23, v24, v25, v26}];

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v21;
}

- (id)_queue_swimDistanceByStrokeStyleForWorkout:(id)a3 workoutActivity:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(NSMutableDictionary);
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = [v9 workoutEvents];
  v11 = [NSPredicate predicateWithBlock:&stru_10083B760];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  if ([v12 count])
  {
    v30 = v7;
    v29 = v10;
    if (v7)
    {
      v13 = [v7 workoutConfiguration];
      [v13 lapLength];
    }

    else
    {
      v13 = [v6 metadata];
      [v13 objectForKeyedSubscript:HKMetadataKeyLapLength];
    }
    v15 = ;

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v12;
    v16 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = [*(*(&v32 + 1) + 8 * i) metadata];
          v21 = [v20 objectForKeyedSubscript:HKMetadataKeySwimmingStrokeStyle];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = &off_10086E188;
          }

          v24 = v23;

          v25 = [v8 objectForKeyedSubscript:v24];
          if (v25)
          {
            v26 = v25;
            v27 = [v25 _quantityByAddingQuantity:v15];
          }

          else
          {
            v27 = v15;
          }

          [v8 setObject:v27 forKeyedSubscript:v24];
        }

        v17 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    v14 = [[NSDictionary alloc] initWithDictionary:v8];
    v7 = v30;
    v10 = v29;
  }

  else
  {
    v14 = &__NSDictionary0__struct;
  }

  return v14;
}

- (id)_queue_swimmingSetsForWorkout:(id)a3 workoutActivity:(id)a4 error:(id *)a5
{
  v35 = a3;
  v36 = a4;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = sub_1000C9D88;
  v64[4] = sub_1000C9D98;
  v65 = [&__NSArray0__struct mutableCopy];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_1000C9D88;
  v62 = sub_1000C9D98;
  v63 = [&__NSArray0__struct mutableCopy];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_1000D4A94;
  v55[3] = &unk_10083B718;
  v57 = v64;
  v7 = v6;
  v56 = v7;
  [(CHWorkoutDataCalculator *)self strokeSamplesForWorkout:v35 workoutActivity:v36 completion:v55];
  dispatch_group_enter(v7);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000D4AE4;
  v52[3] = &unk_10083B718;
  v54 = &v58;
  v8 = v7;
  v53 = v8;
  [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:v35 workoutActivity:v36 completion:v52];
  v9 = dispatch_time(0, 20000000000);
  v33 = v8;
  dispatch_group_wait(v8, v9);
  v10 = +[HKUnit yardUnit];
  v11 = [HKQuantity quantityWithUnit:v10 doubleValue:0.0];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v12 = v59[5];
  v13 = [v12 countByEnumeratingWithState:&v48 objects:v67 count:16];
  if (v13)
  {
    v14 = *v49;
    do
    {
      v15 = 0;
      v16 = v11;
      do
      {
        if (*v49 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v48 + 1) + 8 * v15) quantity];
        v11 = [v16 _quantityByAddingQuantity:v17];

        v15 = v15 + 1;
        v16 = v11;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v48 objects:v67 count:16];
    }

    while (v13);
  }

  v18 = objc_alloc_init(NSMutableArray);
  if (v36)
  {
    [v36 workoutEvents];
  }

  else
  {
    [v35 workoutEvents];
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v19 = v45 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v44 objects:v66 count:16];
  if (v20)
  {
    v21 = *v45;
    v22 = FIUIPrivateMetadataKeySegmentEventSubtype;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v45 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v44 + 1) + 8 * i);
        if ([v24 type] == 7)
        {
          v25 = [v24 metadata];
          v26 = [v25 objectForKey:v22];

          if ([v26 intValue] != 1 && objc_msgSend(v26, "intValue") != 3)
          {
            [v18 addObject:v24];
          }
        }
      }

      v20 = [v19 countByEnumeratingWithState:&v44 objects:v66 count:16];
    }

    while (v20);
  }

  v27 = objc_alloc_init(NSMutableArray);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000D4B34;
  v37[3] = &unk_10083B7D8;
  v28 = v18;
  v38 = v28;
  v42 = v64;
  v43 = &v58;
  v29 = v19;
  v39 = v29;
  v40 = self;
  v30 = v27;
  v41 = v30;
  [v28 enumerateObjectsUsingBlock:v37];
  v31 = [[NSArray alloc] initWithArray:v30];

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(v64, 8);

  return v31;
}

- (int64_t)_queue_strokeStyleForLaps:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v49;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v48 + 1) + 8 * i) metadata];
        v10 = [v9 objectForKeyedSubscript:HKMetadataKeySwimmingStrokeStyle];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &off_10086E188;
        }

        v13 = v12;

        v14 = [v4 objectForKeyedSubscript:v13];
        if (v14)
        {
          v15 = v14;
          v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 integerValue] + 1);
        }

        else
        {
          v16 = &off_10086E1A0;
        }

        [v4 setObject:v16 forKeyedSubscript:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v6);
  }

  v17 = [v4 count];
  v18 = v17;
  if (v17)
  {
    if (v17 == 1)
    {
      v19 = [v4 allKeys];
      v20 = [v19 firstObject];
      v18 = [v20 integerValue];
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v21 = [v4 allValues];
      v22 = [v21 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v45;
        v25 = 0.0;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v45 != v24)
            {
              objc_enumerationMutation(v21);
            }

            [*(*(&v44 + 1) + 8 * j) floatValue];
            v25 = v25 + v27;
          }

          v23 = [v21 countByEnumeratingWithState:&v44 objects:v53 count:16];
        }

        while (v23);
      }

      else
      {
        v25 = 0.0;
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v19 = [v4 allKeys];
      v28 = [v19 countByEnumeratingWithState:&v40 objects:v52 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v41;
        if (v25 >= 10.9999999 || v25 <= 2.00000012)
        {
          v32 = v25;
        }

        else
        {
          v32 = v25 + -1.0;
        }

        v18 = 1;
        while (2)
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v41 != v30)
            {
              objc_enumerationMutation(v19);
            }

            v34 = *(*(&v40 + 1) + 8 * k);
            v35 = [v4 objectForKeyedSubscript:v34];
            [v35 floatValue];
            v37 = v36;

            if ((v37 / v32) > 0.9)
            {
              v18 = [v34 integerValue];
              goto LABEL_43;
            }
          }

          v29 = [v19 countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v18 = 1;
      }
    }

LABEL_43:
  }

  return v18;
}

- (void)_updateSplits:(id)a3 withDistance:(double)a4 duration:(double)a5 strokeCount:(int64_t)a6 splitDelimiterInUserUnit:(double)a7
{
  v11 = a3;
  if ([v11 count])
  {
    v12 = [v11 lastObject];
  }

  else
  {
    v12 = [[CHWorkoutSwimmingSplit alloc] initWithSplitDelimiterDistance:a7 distanceInUserUnit:0 strokeCount:0.0 duration:0.0];
    [v11 addObject:v12];
  }

  [(CHWorkoutSwimmingSplit *)v12 distanceInUserUnit];
  v14 = a4 - (a7 - v13);
  [(CHWorkoutSwimmingSplit *)v12 distanceInUserUnit];
  if (v14 <= 2.22044605e-16)
  {
    [(CHWorkoutSwimmingSplit *)v12 setDistanceInUserUnit:v15 + a4];
    [(CHWorkoutSwimmingSplit *)v12 duration];
    [(CHWorkoutSwimmingSplit *)v12 setDuration:v25 + a5];
    [(CHWorkoutSwimmingSplit *)v12 setStrokeCount:[(CHWorkoutSwimmingSplit *)v12 strokeCount]+ a6];
  }

  else
  {
    v16 = (a7 - v15) / a4;
    [(CHWorkoutSwimmingSplit *)v12 distanceInUserUnit];
    [(CHWorkoutSwimmingSplit *)v12 setDistanceInUserUnit:v17 + v16 * a4];
    [(CHWorkoutSwimmingSplit *)v12 duration];
    [(CHWorkoutSwimmingSplit *)v12 setDuration:v18 + v16 * a5];
    v19 = a6;
    [(CHWorkoutSwimmingSplit *)v12 setStrokeCount:([(CHWorkoutSwimmingSplit *)v12 strokeCount]+ v16 * a6)];
    v20 = a4 - v16 * a4;
    v21 = vcvtmd_u64_f64(v20 / a7);
    if (v21)
    {
      v22 = llround(a7 / a4 * v19);
      v23 = v21;
      do
      {
        v24 = [[CHWorkoutSwimmingSplit alloc] initWithSplitDelimiterDistance:a7 distanceInUserUnit:v22 strokeCount:a7 duration:a7 / a4 * a5];

        [v11 addObject:v24];
        v12 = v24;
        --v23;
      }

      while (v23);
    }

    else
    {
      v24 = v12;
    }

    v26 = v20 - v21 * a7;
    if (v26 >= 0.0)
    {
      if (v26 > a7)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
        {
          sub_10069BC68();
        }
      }
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_10069BC9C();
      }
    }

    if (v26 <= 0.01)
    {
      v12 = v24;
    }

    else
    {
      v12 = [[CHWorkoutSwimmingSplit alloc] initWithSplitDelimiterDistance:a7 distanceInUserUnit:llround(v26 / a4 * v19) strokeCount:v26 / a4 * a4 duration:v26 / a4 * a5];

      [v11 addObject:v12];
    }
  }
}

- (double)_activeWorkoutElapsedTimeFromDate:(id)a3 toDate:(id)a4 forWorkout:(id)a5 workoutActivity:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (v12)
  {
    [v12 workoutEvents];
  }

  else
  {
    [v11 workoutEvents];
  }
  v14 = ;
  _HKEnumerateActiveWorkoutIntervals();
  v15 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v15;
}

- (id)_swimmingSplitsForWorkout:(id)a3 workoutActivity:(id)a4 distanceSamples:(id)a5 strokeSamples:(id)a6 forDelimeterUnit:(id)a7 splitDelimiter:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = +[NSMutableArray array];
  if (v16 && v17)
  {
    if ([v16 count])
    {
      v46 = v17;
      if (v15)
      {
        v21 = v15;
      }

      else
      {
        v21 = v14;
      }

      v22 = [v21 startDate];
      v23 = [v16 objectAtIndexedSubscript:0];
      v24 = [v23 startDate];
      v47 = v22;
      [(CHWorkoutDataCalculator *)self _activeWorkoutElapsedTimeFromDate:v22 toDate:v24 forWorkout:v14 workoutActivity:v15];
      v26 = v25;

      if (v26 > 2.22044605e-16)
      {
        [v19 doubleValueForUnit:v18];
        [(CHWorkoutDataCalculator *)self _updateSplits:v20 withDistance:0 duration:0.0 strokeCount:v26 splitDelimiterInUserUnit:v27];
      }

      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000D5DAC;
      v53[3] = &unk_10083B828;
      v48 = self;
      v53[4] = self;
      v28 = v18;
      v29 = v16;
      v54 = v29;
      v52 = v14;
      v30 = v14;
      v55 = v30;
      v31 = v19;
      v32 = v15;
      v56 = v32;
      v33 = v20;
      v57 = v33;
      v49 = v31;
      v45 = v31;
      v58 = v45;
      v50 = v28;
      v43 = v28;
      v59 = v43;
      v17 = v46;
      v60 = v46;
      [v29 enumerateObjectsUsingBlock:v53];
      v51 = v20;
      if (v15)
      {
        v34 = v32;
      }

      else
      {
        v34 = v30;
      }

      v35 = [v34 endDate];
      v36 = [v29 lastObject];
      v37 = [v36 endDate];
      [(CHWorkoutDataCalculator *)v48 _activeWorkoutElapsedTimeFromDate:v37 toDate:v35 forWorkout:v30 workoutActivity:v32];
      v39 = v38;

      if (v39 > 2.22044605e-16)
      {
        [v45 doubleValueForUnit:v44];
        [(CHWorkoutDataCalculator *)v48 _updateSplits:v33 withDistance:0 duration:0.0 strokeCount:v39 splitDelimiterInUserUnit:v40];
      }

      v41 = v33;

      v20 = v51;
      v14 = v52;
      v19 = v49;
      v18 = v50;
    }

    else
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
      {
        sub_10069BCD0();
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_10069BD04();
    }
  }

  return v20;
}

- (id)_queue_swimmingSplitsForWorkout:(id)a3 workoutActivity:(id)a4 error:(id *)a5
{
  v55 = a3;
  v56 = a4;
  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = sub_1000C9D88;
  v88 = sub_1000C9D98;
  v89 = [&__NSArray0__struct mutableCopy];
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_1000C9D88;
  v82 = sub_1000C9D98;
  v83 = [&__NSArray0__struct mutableCopy];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_1000D6854;
  v75[3] = &unk_10083B718;
  v77 = &v84;
  v7 = v6;
  v76 = v7;
  [(CHWorkoutDataCalculator *)self strokeSamplesForWorkout:v55 workoutActivity:v56 completion:v75];
  dispatch_group_enter(v7);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000D68A4;
  v72[3] = &unk_10083B718;
  v74 = &v78;
  group = v7;
  v73 = group;
  [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:v55 workoutActivity:v56 completion:v72];
  v8 = dispatch_time(0, 20000000000);
  dispatch_group_wait(group, v8);
  v9 = [v85[5] count];
  if (v9 == [v79[5] count])
  {
    goto LABEL_34;
  }

  if (v56)
  {
    v10 = [v56 workoutConfiguration];
    v11 = [v10 swimmingLocationType];
  }

  else
  {
    v10 = [v55 metadata];
    v12 = [v10 objectForKeyedSubscript:HKMetadataKeySwimmingLocationType];
    v11 = [v12 integerValue];
  }

  if (v11 == 2)
  {
    _HKInitializeLogging();
    v13 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Open water swim with differing count of distance and stroke count samples. Adding empty stroke samples.";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogWorkouts;
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "Pool swim with differing count of distance and stroke count samples (kickboarding?). Adding empty stroke samples.";
      goto LABEL_10;
    }
  }

  v59 = objc_alloc_init(NSMutableArray);
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v79[5];
  v60 = [obj countByEnumeratingWithState:&v67 objects:v95 count:16];
  if (v60)
  {
    v58 = *v68;
    do
    {
      for (i = 0; i != v60; i = i + 1)
      {
        if (*v68 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v67 + 1) + 8 * i);
        v16 = [v15 fiui_dateInterval];
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v17 = v85[5];
        v18 = [v17 countByEnumeratingWithState:&v63 objects:v94 count:16];
        v61 = v15;
        if (v18)
        {
          v19 = *v64;
LABEL_18:
          v20 = 0;
          while (1)
          {
            if (*v64 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v63 + 1) + 8 * v20);
            v22 = [v21 fiui_dateInterval];
            [v16 duration];
            if (v23 > 2.22044605e-16)
            {
              v24 = [v22 intersectionWithDateInterval:v16];
              [v24 duration];
              v26 = v25;
              [v16 duration];
              v28 = v26 / v27 > 0.9;

              if (v28)
              {
                break;
              }
            }

            if (v18 == ++v20)
            {
              v18 = [v17 countByEnumeratingWithState:&v63 objects:v94 count:16];
              if (v18)
              {
                goto LABEL_18;
              }

              goto LABEL_25;
            }
          }

          v29 = v21;

          if (v29)
          {
            goto LABEL_28;
          }
        }

        else
        {
LABEL_25:
        }

        v30 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierSwimmingStrokeCount];
        v31 = +[HKUnit countUnit];
        v32 = [HKQuantity quantityWithUnit:v31 doubleValue:0.0];
        v33 = [v61 startDate];
        v34 = [v61 endDate];
        v92 = HKMetadataKeySwimmingStrokeStyle;
        v93 = &off_10086E188;
        v35 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v29 = [HKQuantitySample quantitySampleWithType:v30 quantity:v32 startDate:v33 endDate:v34 metadata:v35];

LABEL_28:
        [v59 addObject:v29];
      }

      v60 = [obj countByEnumeratingWithState:&v67 objects:v95 count:16];
    }

    while (v60);
  }

  objc_storeStrong(v85 + 5, v59);
  v36 = [v85[5] count];
  if (v36 != [v79[5] count])
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
    {
      sub_10069BD38();
    }
  }

LABEL_34:
  v37 = [(CHWorkoutDataCalculator *)self unitManager];
  v38 = [v37 userDistanceHKUnitForDistanceType:3];

  v39 = v79[5];
  v40 = v85[5];
  v41 = [HKQuantity quantityWithUnit:v38 doubleValue:100.0];
  v42 = [(CHWorkoutDataCalculator *)self _swimmingSplitsForWorkout:v55 workoutActivity:v56 distanceSamples:v39 strokeSamples:v40 forDelimeterUnit:v38 splitDelimiter:v41];

  v43 = v79[5];
  v44 = v85[5];
  v45 = [HKQuantity quantityWithUnit:v38 doubleValue:50.0];
  v46 = [(CHWorkoutDataCalculator *)self _swimmingSplitsForWorkout:v55 workoutActivity:v56 distanceSamples:v43 strokeSamples:v44 forDelimeterUnit:v38 splitDelimiter:v45];

  v47 = v79[5];
  v48 = v85[5];
  v49 = [HKQuantity quantityWithUnit:v38 doubleValue:25.0];
  v50 = [(CHWorkoutDataCalculator *)self _swimmingSplitsForWorkout:v55 workoutActivity:v56 distanceSamples:v47 strokeSamples:v48 forDelimeterUnit:v38 splitDelimiter:v49];

  v90[0] = &off_10086E158;
  v90[1] = &off_10086E1B8;
  v91[0] = v42;
  v91[1] = v46;
  v90[2] = &off_10086E1D0;
  v91[2] = v50;
  v51 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:3];

  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v84, 8);

  return v51;
}

- (id)_uuidForWorkout:(id)a3 workoutActivity:(id)a4
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  v5 = [v4 UUID];

  return v5;
}

- (id)_predicateForObjectsFromWorkout:(id)a3 withinWorkoutActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [HKQuery predicateForObjectsFromWorkout:v5];
  v8 = objc_alloc_init(NSMutableArray);
  v9 = v8;
  if (v6)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000D6B7C;
    v17[3] = &unk_10083B5B0;
    v10 = &v18;
    v18 = v8;
    v11 = v17;
    v12 = v6;
  }

  else
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000D6B14;
    v19[3] = &unk_10083B5B0;
    v10 = &v20;
    v20 = v8;
    v11 = v19;
    v12 = v5;
  }

  [v12 _enumerateActiveTimePeriods:v11];

  v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];
  v21[0] = v7;
  v21[1] = v13;
  v14 = [NSArray arrayWithObjects:v21 count:2];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  return v15;
}

- (id)_activeDateIntervalsForWorkout:(id)a3 workoutActivity:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = v7;
  if (v6)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000D6DA0;
    v16 = &unk_10083B5B0;
    v9 = &v17;
    v17 = v7;
    v10 = &v13;
    v11 = v6;
  }

  else
  {
    v18 = _NSConcreteStackBlock;
    v19 = 3221225472;
    v20 = sub_1000D6D14;
    v21 = &unk_10083B5B0;
    v9 = &v22;
    v22 = v7;
    v10 = &v18;
    v11 = v5;
  }

  [v11 _enumerateActiveTimePeriods:{v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];

  return v8;
}

- (id)_predicateForActiveDateIntervals:(id)a3
{
  v3 = [a3 hk_map:&stru_10083B868];
  v4 = [NSCompoundPredicate orPredicateWithSubpredicates:v3];

  return v4;
}

- (BOOL)_activeDateIntervals:(id)a3 containsDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = *v22;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 startDate];
        [v12 timeIntervalSinceReferenceDate];
        v14 = v13;

        v15 = [v11 endDate];
        [v15 timeIntervalSinceReferenceDate];
        v17 = v16;

        [v6 timeIntervalSinceReferenceDate];
        if (v18 >= v14 && v18 < v17)
        {
          LOBYTE(v8) = 1;
          goto LABEL_14;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v8;
}

- (id)_activeDateIntervalsForWorkout:(id)a3 during:(id)a4
{
  v5 = a4;
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D7164;
  v12[3] = &unk_10083B890;
  v13 = v5;
  v7 = objc_alloc_init(NSMutableArray);
  v14 = v7;
  v8 = v5;
  [v6 _enumerateActiveTimePeriods:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)_activeDateIntervalsForWorkoutActivity:(id)a3 during:(id)a4
{
  v5 = a4;
  v6 = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D73BC;
  v12[3] = &unk_10083B890;
  v13 = v5;
  v7 = objc_alloc_init(NSMutableArray);
  v14 = v7;
  v8 = v5;
  [v6 _enumerateActiveTimePeriods:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)_endDateInWorkout:(id)a3 reachingAccumulatedTime:(double)a4 fromStartDate:(id)a5
{
  v7 = a3;
  v8 = a5;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000D7804;
  v35[3] = &unk_10083B5B0;
  v9 = objc_alloc_init(NSMutableArray);
  v36 = v9;
  [v7 _enumerateActiveTimePeriods:v35];
  v10 = 0;
  if (a4 > 0.0 && v8)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v9;
    v10 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v10)
    {
      v30 = v7;
      v12 = *v32;
      v13 = 0.0;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [v15 endDate];
          v17 = [v15 startDate];
          [v16 timeIntervalSinceDate:v17];
          v19 = v18;

          if (v19 >= 2.22044605e-16)
          {
            v20 = [v15 endDate];
            v21 = [v20 compare:v8];

            if (v21 == 1)
            {
              v22 = [v15 startDate];
              v23 = [v15 startDate];
              v24 = [v23 compare:v8];

              if (v24 == -1)
              {
                v25 = v8;

                v26 = [v15 endDate];
                [v26 timeIntervalSinceDate:v25];
                v19 = v27;

                v22 = v25;
              }

              v28 = v13 + v19;
              if (v28 >= a4)
              {
                v10 = [v22 dateByAddingTimeInterval:a4 - v13];

                goto LABEL_18;
              }

              v13 = v28;
            }
          }
        }

        v10 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

LABEL_18:
      v7 = v30;
    }
  }

  return v10;
}

- (id)_endDateInWorkout:(id)a3 reachingAccumulatedDistance:(double)a4 fromStartDate:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [NSDateInterval alloc];
  v11 = [v8 endDate];
  v12 = [v10 initWithStartDate:v9 endDate:v11];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000C9D88;
  v28 = sub_1000C9D98;
  v29 = 0;
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000D7A6C;
  v19[3] = &unk_10083B8B8;
  v14 = v13;
  v20 = v14;
  v15 = v12;
  v23 = a4;
  v21 = v15;
  v22 = &v24;
  [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:v8 workoutActivity:0 completion:v19];
  v16 = dispatch_time(0, 20000000000);
  dispatch_group_wait(v14, v16);
  v17 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v17;
}

- (id)_testMarkersForWorkout:(id)a3
{
  v3 = a3;
  v4 = [v3 endDate];
  v5 = [v3 startDate];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  v8 = v7 / 3.0;
  v9 = [NSDateInterval alloc];
  v10 = [v3 startDate];
  v11 = [v10 dateByAddingTimeInterval:v8];
  v12 = [v9 initWithStartDate:v11 duration:0.0];
  v13 = FIUIPrivateMetadataKeyMarkerEventSubtype;
  v27 = FIUIPrivateMetadataKeyMarkerEventSubtype;
  v28 = &off_10086E1E8;
  v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v15 = [HKWorkoutEvent workoutEventWithType:4 dateInterval:v12 metadata:v14];

  v16 = [NSDateInterval alloc];
  v17 = [v3 startDate];

  v18 = [v17 dateByAddingTimeInterval:v8 + v8];
  v19 = [v16 initWithStartDate:v18 duration:0.0];
  v25 = v13;
  v26 = &off_10086E1E8;
  v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v21 = [HKWorkoutEvent workoutEventWithType:4 dateInterval:v19 metadata:v20];

  v24[0] = v15;
  v24[1] = v21;
  v22 = [NSArray arrayWithObjects:v24 count:2];

  return v22;
}

- (id)_testTrackLapsForWorkout:(id)a3
{
  v22 = a3;
  [v22 duration];
  v4 = v3 * 0.125;
  v5 = [&__NSArray0__struct mutableCopy];
  v21 = FIPrivateMetadataKeyLapIndex;
  v19 = FIPrivateMetadataKeyLapDuration;
  v20 = FIPrivateMetadataKeyLaneNumber;
  v6 = 1;
  v18 = FIPrivateMetadataKeyLapDistance;
  v7 = 0.0;
  do
  {
    v8 = [NSDateInterval alloc];
    v24 = [v22 startDate];
    v23 = [v24 dateByAddingTimeInterval:v4 * v7];
    v9 = [v8 initWithStartDate:v23 duration:v4];
    v25[0] = v21;
    v7 = v7 + 1.0;
    v10 = [NSNumber numberWithInt:v6];
    v26[0] = v10;
    v26[1] = &off_10086E1A0;
    v25[1] = v20;
    v25[2] = v19;
    v11 = +[HKUnit secondUnit];
    v12 = [HKQuantity quantityWithUnit:v11 doubleValue:v4];
    v26[2] = v12;
    v25[3] = v18;
    v13 = +[HKUnit meterUnit];
    v14 = [HKQuantity quantityWithUnit:v13 doubleValue:400.0];
    v26[3] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:4];
    v16 = [HKWorkoutEvent workoutEventWithType:3 dateInterval:v9 metadata:v15];

    [v5 addObject:v16];
    v6 = (v6 + 1);
  }

  while (v6 != 9);

  return v5;
}

- (BOOL)_workoutSupportsDistanceAndPace:(id)a3
{
  v3 = a3;
  v4 = [v3 fiui_activityType];
  v5 = [FIUIWorkoutDefaultMetricsProvider metricsVersionForWorkout:v3];
  v6 = [FIUIWorkoutDefaultMetricsProvider alloc];
  v7 = [v3 _activityMoveMode];
  v8 = FIUIDeviceSupportsElevationGain();
  v9 = [v6 initWithMetricsVersion:v5 activityType:v4 activityMoveMode:v7 deviceSupportsElevationMetrics:v8 deviceSupportsGroundElevationMetrics:FIUIDeviceSupportsGroundElevation()];
  v10 = [v3 fiui_isConnectedGymWorkout];

  LOBYTE(v3) = [v9 isMetricTypeSupported:1 isMachineWorkout:v10 activityType:v4];
  return v3;
}

- (void)_setDistanceSamples:(id)a3 forWorkout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v6 workoutActivity:0];
  [v8 setDistanceSamples:v7];

  [(CHWorkoutDataCalculator *)self saveContainerToCache:v8 forWorkout:v6 workoutActivity:0];
}

- (void)_setStrokeSamples:(id)a3 forWorkout:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:v6 workoutActivity:0];
  [v8 setStrokeSamples:v7];

  [(CHWorkoutDataCalculator *)self saveContainerToCache:v8 forWorkout:v6 workoutActivity:0];
}

- (id)_getDistanceSamplesForWorkout:(id)a3
{
  v3 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:a3 workoutActivity:0];
  v4 = [v3 distanceSamples];

  return v4;
}

@end