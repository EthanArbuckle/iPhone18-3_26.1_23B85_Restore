@interface CHWorkoutDataCalculator
- (BOOL)_activeDateIntervals:(id)intervals containsDate:(id)date;
- (BOOL)_workoutSupportsDistanceAndPace:(id)pace;
- (CHWorkoutDataCalculator)initWithHealthStore:(id)store unitManager:(id)manager;
- (double)_activeWorkoutElapsedTimeFromDate:(id)date toDate:(id)toDate forWorkout:(id)workout workoutActivity:(id)activity;
- (id)_activeDateIntervalsForWorkout:(id)workout during:(id)during;
- (id)_activeDateIntervalsForWorkout:(id)workout workoutActivity:(id)activity;
- (id)_activeDateIntervalsForWorkoutActivity:(id)activity during:(id)during;
- (id)_averageHeartRateQuantityFromWorkout:(id)workout workoutActivity:(id)activity;
- (id)_endDateInWorkout:(id)workout reachingAccumulatedDistance:(double)distance fromStartDate:(id)date;
- (id)_endDateInWorkout:(id)workout reachingAccumulatedTime:(double)time fromStartDate:(id)date;
- (id)_getDistanceSamplesForWorkout:(id)workout;
- (id)_predicateForActiveDateIntervals:(id)intervals;
- (id)_predicateForObjectsFromWorkout:(id)workout withinWorkoutActivity:(id)activity;
- (id)_queue_downhillRunsForWorkout:(id)workout error:(id *)error;
- (id)_queue_intervalsForWorkout:(id)workout error:(id *)error;
- (id)_queue_openWaterSwimDistanceByStrokeStyleForWorkout:(id)workout workoutActivity:(id)activity error:(id *)error;
- (id)_queue_segmentsForWorkout:(id)workout markerEvents:(id)events error:(id *)error;
- (id)_queue_swimDistanceByStrokeStyleForWorkout:(id)workout workoutActivity:(id)activity error:(id *)error;
- (id)_queue_swimmingSetsForWorkout:(id)workout workoutActivity:(id)activity error:(id *)error;
- (id)_queue_swimmingSplitsForWorkout:(id)workout workoutActivity:(id)activity error:(id *)error;
- (id)_queue_trackLapsForWorkout:(id)workout lapEvents:(id)events error:(id *)error;
- (id)_swimmingSplitsForWorkout:(id)workout workoutActivity:(id)activity distanceSamples:(id)samples strokeSamples:(id)strokeSamples forDelimeterUnit:(id)unit splitDelimiter:(id)delimiter;
- (id)_testMarkersForWorkout:(id)workout;
- (id)_testTrackLapsForWorkout:(id)workout;
- (id)_uuidForWorkout:(id)workout workoutActivity:(id)activity;
- (id)averageHeartRateForWorkout:(id)workout workoutActivity:(id)activity;
- (id)cacheContainerForWorkout:(id)workout workoutActivity:(id)activity;
- (id)cachedDownhillRunsForWorkout:(id)workout workoutActivity:(id)activity;
- (id)cachedEffortForWorkout:(id)workout workoutActivity:(id)activity;
- (id)cachedEffortSampleCollectionForWorkout:(id)workout workoutActivity:(id)activity;
- (int64_t)_queue_strokeStyleForLaps:(id)laps;
- (void)_fetchHeartRateDataForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)_handleUpdatedRelationships:(id)relationships withAnchor:(id)anchor;
- (void)_seriesSamplesForType:(id)type workout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)_setDistanceSamples:(id)samples forWorkout:(id)workout;
- (void)_setStrokeSamples:(id)samples forWorkout:(id)workout;
- (void)_updateSplits:(id)splits withDistance:(double)distance duration:(double)duration strokeCount:(int64_t)count splitDelimiterInUserUnit:(double)unit;
- (void)averageCadenceForWorkout:(id)workout during:(id)during completion:(id)completion;
- (void)averageHeartRateForWorkout:(id)workout during:(id)during completion:(id)completion;
- (void)averagePowerForWorkout:(id)workout during:(id)during completion:(id)completion;
- (void)cadenceSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)customSplitsForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)cyclingSpeedSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)dealloc;
- (void)distanceSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)downhillRunsForWorkout:(id)workout completion:(id)completion;
- (void)effortForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)groundContactTimeSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)heartRateDataForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)intervalsForWorkout:(id)workout completion:(id)completion;
- (void)openWaterSwimDistanceByStrokeStyleForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)paceSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)powerSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)saveContainerToCache:(id)cache forWorkout:(id)workout workoutActivity:(id)activity;
- (void)segmentsForWorkout:(id)workout completion:(id)completion;
- (void)splitsForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)strideLengthSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)strokeSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)swimDistanceByStrokeStyleForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)swimmingPacePerHundredForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)swimmingSetsForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)swimmingSplitsForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
- (void)totalDistanceForWorkout:(id)workout workoutActivity:(id)activity atDate:(id)date completion:(id)completion;
- (void)trackLapsForWorkout:(id)workout completion:(id)completion;
- (void)verticalOscillationSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion;
@end

@implementation CHWorkoutDataCalculator

- (CHWorkoutDataCalculator)initWithHealthStore:(id)store unitManager:(id)manager
{
  storeCopy = store;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = CHWorkoutDataCalculator;
  v9 = [(CHWorkoutDataCalculator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_healthStore, store);
    objc_storeStrong(&v10->_unitManager, manager);
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

- (id)cacheContainerForWorkout:(id)workout workoutActivity:(id)activity
{
  v5 = [(CHWorkoutDataCalculator *)self _uuidForWorkout:workout workoutActivity:activity];
  cache = [(CHWorkoutDataCalculator *)self cache];
  v7 = [cache objectForKey:v5];

  if (!v7)
  {
    v7 = objc_alloc_init(CHWorkoutCacheContainer);
    cache2 = [(CHWorkoutDataCalculator *)self cache];
    [cache2 setObject:v7 forKey:v5];
  }

  return v7;
}

- (void)saveContainerToCache:(id)cache forWorkout:(id)workout workoutActivity:(id)activity
{
  cacheCopy = cache;
  v10 = [(CHWorkoutDataCalculator *)self _uuidForWorkout:workout workoutActivity:activity];
  cache = [(CHWorkoutDataCalculator *)self cache];
  [cache setObject:cacheCopy forKey:v10];
}

- (id)averageHeartRateForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  averageHeartRate = [v8 averageHeartRate];

  if (averageHeartRate)
  {
    v10 = averageHeartRate;
  }

  else
  {
    v11 = [(CHWorkoutDataCalculator *)self _averageHeartRateQuantityFromWorkout:workoutCopy workoutActivity:activityCopy];
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

- (void)heartRateDataForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  heartRateReadings = [v11 heartRateReadings];

  if (heartRateReadings)
  {
    heartRateReadings2 = [v11 heartRateReadings];
    recoveryHeartRateReadings = [v11 recoveryHeartRateReadings];
    averageHeartRate = [v11 averageHeartRate];
    completionCopy[2](completionCopy, heartRateReadings2, recoveryHeartRateReadings, averageHeartRate, 0);
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
    v16 = workoutCopy;
    v24 = v16;
    v17 = activityCopy;
    v25 = v17;
    v26 = completionCopy;
    v18 = objc_retainBlock(&v19);
    [(CHWorkoutDataCalculator *)self _fetchHeartRateDataForWorkout:v16 workoutActivity:v17 completion:v18, v19, v20, v21, v22];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (id)_averageHeartRateQuantityFromWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  v7 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  if (activityCopy)
  {
    v8 = [activityCopy statisticsForType:v7];
    averageQuantity = [v8 averageQuantity];
  }

  else
  {
    v8 = [workoutCopy statisticsForType:v7];
    averageQuantity2 = [v8 averageQuantity];
    v11 = averageQuantity2;
    if (averageQuantity2)
    {
      averageQuantity = averageQuantity2;
    }

    else
    {
      metadata = [workoutCopy metadata];
      averageQuantity = [metadata objectForKeyedSubscript:NLWorkoutMetadataKeyAverageHeartRate];
    }
  }

  return averageQuantity;
}

- (void)_fetchHeartRateDataForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v31 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierHeartRate];
  v10 = [(CHWorkoutDataCalculator *)self _activeDateIntervalsForWorkout:workoutCopy workoutActivity:activityCopy];
  v29 = [(CHWorkoutDataCalculator *)self _averageHeartRateQuantityFromWorkout:workoutCopy workoutActivity:activityCopy];
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
  v12 = [_HKHeartRateRecoveryQueryUtility recoveryDateIntervalWithWorkout:workoutCopy];
  v13 = v11;
  if (!activityCopy || ([workoutCopy workoutActivities], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "lastObject"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "isEqual:", activityCopy), v15, v14, v17 = v13, v16))
  {
    v18 = [_HKHeartRateRecoveryQueryUtility predicateForWorkoutRecoveryTimeWithWorkout:workoutCopy];
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
  v24 = activityCopy;
  v36 = v24;
  v25 = workoutCopy;
  v37 = v25;
  v26 = completionCopy;
  v38 = v26;
  v27 = [v20 initWithQuantityType:v31 predicate:v17 quantityHandler:v32];
  healthStore = [(CHWorkoutDataCalculator *)self healthStore];
  [healthStore executeQuery:v27];

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);
}

- (void)distanceSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  distanceSamples = [v11 distanceSamples];

  if (distanceSamples)
  {
    distanceSamples2 = [v11 distanceSamples];
    completionCopy[2](completionCopy, distanceSamples2, 0);
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
    v14 = workoutCopy;
    v24 = v14;
    v15 = activityCopy;
    v25 = v15;
    v16 = completionCopy;
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

- (void)totalDistanceForWorkout:(id)workout workoutActivity:(id)activity atDate:(id)date completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  dateCopy = date;
  completionCopy = completion;
  v14 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  totalDistance = [v14 totalDistance];

  if (!totalDistance)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    [v14 setTotalDistance:v16];
  }

  totalDistance2 = [v14 totalDistance];
  v18 = [totalDistance2 objectForKeyedSubscript:dateCopy];

  if (v18)
  {
    completionCopy[2](completionCopy, v18, 0);
  }

  else
  {
    objc_initWeak(location, self);
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000CA8B0;
    v36[3] = &unk_10083B300;
    v37 = v14;
    v19 = dateCopy;
    v38 = v19;
    objc_copyWeak(&v42, location);
    v30 = workoutCopy;
    v32 = workoutCopy;
    v39 = v32;
    v20 = activityCopy;
    v40 = v20;
    v41 = completionCopy;
    v31 = objc_retainBlock(v36);
    v21 = [NSDateInterval alloc];
    if (v20)
    {
      startDate = [v20 startDate];
      v23 = [v21 initWithStartDate:startDate endDate:v19];

      v24 = [(CHWorkoutDataCalculator *)self _activeDateIntervalsForWorkoutActivity:v20 during:v23];
      workoutConfiguration = [v20 workoutConfiguration];
      [workoutConfiguration activityType];
      v29 = _HKWorkoutDistanceTypeForActivityType();
    }

    else
    {
      startDate2 = [v32 startDate];
      v23 = [v21 initWithStartDate:startDate2 endDate:v19];

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
    workoutCopy = v30;
  }
}

- (void)_seriesSamplesForType:(id)type workout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  typeCopy = type;
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
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
  v14 = [(CHWorkoutDataCalculator *)self _predicateForObjectsFromWorkout:workoutCopy withinWorkoutActivity:activityCopy];
  v15 = [HKQuantitySeriesSampleQuery alloc];
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_1000CAE78;
  v23 = &unk_10083B350;
  v26 = v28;
  v16 = typeCopy;
  v24 = v16;
  v27 = v30;
  v17 = completionCopy;
  v25 = v17;
  v18 = [v15 initWithQuantityType:v16 predicate:v14 quantityHandler:&v20];
  v19 = [(CHWorkoutDataCalculator *)self healthStore:v20];
  [v19 executeQuery:v18];

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);
}

- (void)cadenceSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  cadenceSamples = [v11 cadenceSamples];

  if (cadenceSamples)
  {
    cadenceSamples2 = [v11 cadenceSamples];
    completionCopy[2](completionCopy, cadenceSamples2, 0);
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
    v14 = workoutCopy;
    v23 = v14;
    v15 = activityCopy;
    v24 = v15;
    v25 = completionCopy;
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

- (void)strokeSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  strokeSamples = [v11 strokeSamples];

  if (strokeSamples)
  {
    strokeSamples2 = [v11 strokeSamples];
    completionCopy[2](completionCopy, strokeSamples2, 0);
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
    v14 = workoutCopy;
    v29 = v14;
    v15 = activityCopy;
    v30 = v15;
    v31 = completionCopy;
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

    healthStore = [(CHWorkoutDataCalculator *)self healthStore];
    [healthStore executeQuery:v22];

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }
}

- (void)paceSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  paceSamples = [v11 paceSamples];

  if (paceSamples)
  {
    paceSamples2 = [v11 paceSamples];
    completionCopy[2](completionCopy, paceSamples2, 0);
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
    v14 = workoutCopy;
    v24 = v14;
    v15 = activityCopy;
    v25 = v15;
    v16 = completionCopy;
    v26 = v16;
    v21 = objc_retainBlock(v22);
    if (v15)
    {
      workoutConfiguration = [v15 workoutConfiguration];
      [workoutConfiguration activityType];
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

- (void)powerSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  powerSamples = [v11 powerSamples];

  if (powerSamples)
  {
    powerSamples2 = [v11 powerSamples];
    completionCopy[2](completionCopy, powerSamples2, 0);
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
    v14 = workoutCopy;
    v24 = v14;
    v15 = activityCopy;
    v25 = v15;
    v26 = completionCopy;
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

- (void)cyclingSpeedSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  cyclingSpeedSamples = [v11 cyclingSpeedSamples];

  if (cyclingSpeedSamples)
  {
    cyclingSpeedSamples2 = [v11 cyclingSpeedSamples];
    completionCopy[2](completionCopy, cyclingSpeedSamples2, 0);
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
    v14 = workoutCopy;
    v24 = v14;
    v15 = activityCopy;
    v25 = v15;
    v26 = completionCopy;
    v16 = objc_retainBlock(&v19);
    v17 = HKQuantityTypeIdentifierCyclingSpeed;
    v18 = [HKQuantityType quantityTypeForIdentifier:v17, v19, v20, v21, v22];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v18 workout:v14 workoutActivity:v15 completion:v16];

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }
}

- (void)strideLengthSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  strideLengthSamples = [v11 strideLengthSamples];

  if (strideLengthSamples)
  {
    strideLengthSamples2 = [v11 strideLengthSamples];
    completionCopy[2](completionCopy, strideLengthSamples2, 0);
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
    v14 = workoutCopy;
    v23 = v14;
    v15 = activityCopy;
    v24 = v15;
    v25 = completionCopy;
    v16 = objc_retainBlock(&v18);
    v17 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningStrideLength, v18, v19, v20, v21];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v17 workout:v14 workoutActivity:v15 completion:v16];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)verticalOscillationSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  verticalOscillationSamples = [v11 verticalOscillationSamples];

  if (verticalOscillationSamples)
  {
    verticalOscillationSamples2 = [v11 verticalOscillationSamples];
    completionCopy[2](completionCopy, verticalOscillationSamples2, 0);
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
    v14 = workoutCopy;
    v23 = v14;
    v15 = activityCopy;
    v24 = v15;
    v25 = completionCopy;
    v16 = objc_retainBlock(&v18);
    v17 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningVerticalOscillation, v18, v19, v20, v21];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v17 workout:v14 workoutActivity:v15 completion:v16];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)groundContactTimeSamplesForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  groundContactTimeSamples = [v11 groundContactTimeSamples];

  if (groundContactTimeSamples)
  {
    groundContactTimeSamples2 = [v11 groundContactTimeSamples];
    completionCopy[2](completionCopy, groundContactTimeSamples2, 0);
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
    v14 = workoutCopy;
    v23 = v14;
    v15 = activityCopy;
    v24 = v15;
    v25 = completionCopy;
    v16 = objc_retainBlock(&v18);
    v17 = [HKQuantityType quantityTypeForIdentifier:HKQuantityTypeIdentifierRunningGroundContactTime, v18, v19, v20, v21];
    [(CHWorkoutDataCalculator *)self _seriesSamplesForType:v17 workout:v14 workoutActivity:v15 completion:v16];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }
}

- (void)splitsForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  unitManager = [(CHWorkoutDataCalculator *)self unitManager];
  if (activityCopy)
  {
    v12 = activityCopy;
  }

  else
  {
    v12 = workoutCopy;
  }

  fiui_activityType = [v12 fiui_activityType];
  v14 = [unitManager userDistanceHKUnitForDistanceType:FIUIDistanceTypeForActivityType()];

  v15 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  splits = [v15 splits];
  if (splits && (v17 = splits, [v15 userPreferredDistanceUnit], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqual:", v14), v18, v17, v19))
  {
    splits2 = [v15 splits];
    completionCopy[2](completionCopy, splits2, 0);
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
    v21 = workoutCopy;
    v31 = v21;
    v22 = activityCopy;
    v32 = v22;
    v33 = completionCopy;
    v23 = objc_retainBlock(v29);
    if (activityCopy)
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

- (void)customSplitsForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  customSplits = [v11 customSplits];

  if (customSplits)
  {
    customSplits2 = [v11 customSplits];
    completionCopy[2](completionCopy, customSplits2, 0);
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
    v14 = workoutCopy;
    v24 = v14;
    v15 = activityCopy;
    v25 = v15;
    v26 = completionCopy;
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

- (void)segmentsForWorkout:(id)workout completion:(id)completion
{
  workoutCopy = workout;
  completionCopy = completion;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:0];
  segments = [v8 segments];

  if (segments)
  {
    segments2 = [v8 segments];
    completionCopy[2](completionCopy, segments2, 0);
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
    v11 = workoutCopy;
    v24 = v11;
    v25 = completionCopy;
    v12 = objc_retainBlock(v22);
    workoutEvents = [v11 workoutEvents];
    v14 = [NSPredicate predicateWithBlock:&stru_10083B400];
    v15 = [workoutEvents filteredArrayUsingPredicate:v14];

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

- (void)downhillRunsForWorkout:(id)workout completion:(id)completion
{
  workoutCopy = workout;
  completionCopy = completion;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:0];
  downhillRuns = [v8 downhillRuns];

  if (downhillRuns)
  {
    downhillRuns2 = [v8 downhillRuns];
    completionCopy[2](completionCopy, downhillRuns2, 0);
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
    v11 = workoutCopy;
    v20 = v11;
    v21 = completionCopy;
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

- (void)intervalsForWorkout:(id)workout completion:(id)completion
{
  workoutCopy = workout;
  completionCopy = completion;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:0];
  intervals = [v8 intervals];

  if (intervals)
  {
    intervals2 = [v8 intervals];
    completionCopy[2](completionCopy, intervals2, 0);
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
    v11 = workoutCopy;
    v20 = v11;
    v21 = completionCopy;
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

- (void)trackLapsForWorkout:(id)workout completion:(id)completion
{
  workoutCopy = workout;
  completionCopy = completion;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:0];
  trackLaps = [v8 trackLaps];

  if (trackLaps)
  {
    trackLaps2 = [v8 trackLaps];
    completionCopy[2](completionCopy, trackLaps2, 0);
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
    v11 = workoutCopy;
    v24 = v11;
    v25 = completionCopy;
    v12 = objc_retainBlock(v22);
    if ([v11 supportsTrackWorkout])
    {
      workoutEvents = [v11 workoutEvents];
      v14 = [NSPredicate predicateWithBlock:&stru_10083B448];
      v15 = [workoutEvents filteredArrayUsingPredicate:v14];

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

- (void)swimDistanceByStrokeStyleForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  swimDistanceByStrokeStyle = [v11 swimDistanceByStrokeStyle];

  if (swimDistanceByStrokeStyle)
  {
    swimDistanceByStrokeStyle2 = [v11 swimDistanceByStrokeStyle];
    completionCopy[2](completionCopy, swimDistanceByStrokeStyle2, 0);
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
    v14 = workoutCopy;
    v25 = v14;
    v15 = activityCopy;
    v26 = v15;
    v27 = completionCopy;
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

- (void)openWaterSwimDistanceByStrokeStyleForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  swimDistanceByStrokeStyle = [v11 swimDistanceByStrokeStyle];

  if (swimDistanceByStrokeStyle)
  {
    swimDistanceByStrokeStyle2 = [v11 swimDistanceByStrokeStyle];
    completionCopy[2](completionCopy, swimDistanceByStrokeStyle2, 0);
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
    v14 = workoutCopy;
    v25 = v14;
    v15 = activityCopy;
    v26 = v15;
    v27 = completionCopy;
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

- (void)swimmingSetsForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  swimmingSets = [v11 swimmingSets];

  if (swimmingSets)
  {
    swimmingSets2 = [v11 swimmingSets];
    completionCopy[2](completionCopy, swimmingSets2, 0);
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
    v14 = workoutCopy;
    v25 = v14;
    v15 = activityCopy;
    v26 = v15;
    v27 = completionCopy;
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

- (void)swimmingSplitsForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
  swimmingSplits = [v11 swimmingSplits];

  if (swimmingSplits)
  {
    swimmingSplits2 = [v11 swimmingSplits];
    completionCopy[2](completionCopy, swimmingSplits2, 0);
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
    v14 = workoutCopy;
    v25 = v14;
    v15 = activityCopy;
    v26 = v15;
    v27 = completionCopy;
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

- (void)effortForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  workoutCopy = workout;
  activityCopy = activity;
  completionCopy = completion;
  v11 = [WOEffortBridges demoExertionForWorkout:workoutCopy];
  if (v11)
  {
    completionCopy[2](completionCopy, v11);
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

      healthStore = [(CHWorkoutDataCalculator *)self healthStore];
      [healthStore executeQuery:self->_effortObserverQuery];

      objc_destroyWeak(&v42);
    }

    if (activityCopy && ([activityCopy workoutConfiguration], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "activityType") == 83, v18, v19))
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      v33 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:activityCopy];
      effortSampleCollection = [v33 effortSampleCollection];
      preferredQuantity = [effortSampleCollection preferredQuantity];

      if (preferredQuantity)
      {
        _HKInitializeLogging();
        v22 = HKLogWorkouts;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          uUID = [workoutCopy UUID];
          uUID2 = [activityCopy UUID];
          *buf = 138412802;
          v45 = uUID;
          v46 = 2112;
          v47 = uUID2;
          v48 = 2112;
          v49 = preferredQuantity;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Effort cache hit for %@ (%@) with quantity %@", buf, 0x20u);
        }

        completionCopy[2](completionCopy, preferredQuantity);
      }

      else
      {
        _HKInitializeLogging();
        v25 = HKLogWorkouts;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          uUID3 = [workoutCopy UUID];
          uUID4 = [activityCopy UUID];
          *buf = 138412546;
          v45 = uUID3;
          v46 = 2112;
          v47 = uUID4;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Effort cache miss for %@ (%@), fetching from database.", buf, 0x16u);
        }

        v36[0] = _NSConcreteStackBlock;
        v36[1] = 3221225472;
        v36[2] = sub_1000CF82C;
        v36[3] = &unk_10083B4E8;
        objc_copyWeak(&v40, &location);
        v28 = workoutCopy;
        v37 = v28;
        v29 = activityCopy;
        v38 = v29;
        v39 = completionCopy;
        v30 = objc_retainBlock(v36);
        healthStore2 = [(CHWorkoutDataCalculator *)self healthStore];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000CF910;
        v34[3] = &unk_10083B510;
        v32 = v30;
        v35 = v32;
        [WOEffortBridges fetchExertionForWorkout:v28 workoutActivity:v29 healthStore:healthStore2 completion:v34];

        objc_destroyWeak(&v40);
      }
    }

    objc_destroyWeak(&location);
  }
}

- (void)_handleUpdatedRelationships:(id)relationships withAnchor:(id)anchor
{
  relationshipsCopy = relationships;
  anchorCopy = anchor;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  lastEffortAnchor = [(CHWorkoutDataCalculator *)self lastEffortAnchor];
  v9 = [anchorCopy isEqual:lastEffortAnchor];

  if ((v9 & 1) == 0)
  {
    v29 = anchorCopy;
    [(CHWorkoutDataCalculator *)self setLastEffortAnchor:anchorCopy];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v30 = relationshipsCopy;
    obj = relationshipsCopy;
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
          workout = [v13 workout];
          activity = [v13 activity];
          v16 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workout workoutActivity:activity];

          v17 = [CHEffortSampleCollection alloc];
          samples = [v13 samples];
          v19 = [(CHEffortSampleCollection *)v17 initWithSamples:samples];

          [v16 setEffortSampleCollection:v19];
          workout2 = [v13 workout];
          activity2 = [v13 activity];
          [(CHWorkoutDataCalculator *)self saveContainerToCache:v16 forWorkout:workout2 workoutActivity:activity2];

          activity3 = [v13 activity];

          if (activity3)
          {
            v39[0] = @"WorkoutUUID";
            workout3 = [v13 workout];
            uUID = [workout3 UUID];
            v39[1] = @"ActivityUUID";
            v40[0] = uUID;
            activity4 = [v13 activity];
            uUID2 = [activity4 UUID];
            v40[1] = uUID2;
            v27 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:2];
          }

          else
          {
            v37 = @"WorkoutUUID";
            workout3 = [v13 workout];
            uUID = [workout3 UUID];
            v38 = uUID;
            v27 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          }

          v28 = +[NSNotificationCenter defaultCenter];
          [v28 postNotificationName:@"CHEffortChangedNotification" object:0 userInfo:v27];
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v11);
    }

    anchorCopy = v29;
    relationshipsCopy = v30;
  }
}

- (id)cachedDownhillRunsForWorkout:(id)workout workoutActivity:(id)activity
{
  v4 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workout workoutActivity:activity];
  downhillRuns = [v4 downhillRuns];

  return downhillRuns;
}

- (id)cachedEffortForWorkout:(id)workout workoutActivity:(id)activity
{
  v4 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workout workoutActivity:activity];
  effortSampleCollection = [v4 effortSampleCollection];
  preferredQuantity = [effortSampleCollection preferredQuantity];

  return preferredQuantity;
}

- (id)cachedEffortSampleCollectionForWorkout:(id)workout workoutActivity:(id)activity
{
  v4 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workout workoutActivity:activity];
  effortSampleCollection = [v4 effortSampleCollection];

  return effortSampleCollection;
}

- (void)averageHeartRateForWorkout:(id)workout during:(id)during completion:(id)completion
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_1000CFF10;
  v15 = &unk_10083B538;
  selfCopy = self;
  workoutCopy = workout;
  duringCopy = during;
  completionCopy = completion;
  v8 = completionCopy;
  v9 = duringCopy;
  v10 = workoutCopy;
  v11 = objc_retainBlock(&v12);
  [(CHWorkoutDataCalculator *)self heartRateDataForWorkout:v10 workoutActivity:0 completion:v11, v12, v13, v14, v15, selfCopy];
}

- (void)averageCadenceForWorkout:(id)workout during:(id)during completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D0304;
  v10[3] = &unk_10083B560;
  selfCopy = self;
  workoutCopy = workout;
  duringCopy = during;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = duringCopy;
  v9 = workoutCopy;
  [(CHWorkoutDataCalculator *)selfCopy cadenceSamplesForWorkout:v9 workoutActivity:0 completion:v10];
}

- (void)averagePowerForWorkout:(id)workout during:(id)during completion:(id)completion
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000D076C;
  v10[3] = &unk_10083B560;
  selfCopy = self;
  workoutCopy = workout;
  duringCopy = during;
  completionCopy = completion;
  v7 = completionCopy;
  v8 = duringCopy;
  v9 = workoutCopy;
  [(CHWorkoutDataCalculator *)selfCopy powerSamplesForWorkout:v9 workoutActivity:0 completion:v10];
}

- (void)swimmingPacePerHundredForWorkout:(id)workout workoutActivity:(id)activity completion:(id)completion
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D0AE0;
  v9[3] = &unk_10083B588;
  completionCopy = completion;
  v8 = completionCopy;
  [(CHWorkoutDataCalculator *)self swimmingSplitsForWorkout:workout workoutActivity:activity completion:v9];
}

- (id)_queue_intervalsForWorkout:(id)workout error:(id *)error
{
  workoutCopy = workout;
  if ([workoutCopy isIntervalWorkout])
  {
    errorCopy = error;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_1000D15E4;
    v89[3] = &unk_10083B5B0;
    v6 = objc_alloc_init(NSMutableArray);
    v90 = v6;
    v57 = workoutCopy;
    [workoutCopy _enumerateActiveTimePeriods:v89];
    v7 = objc_alloc_init(NSMutableArray);
    workoutActivities = [workoutCopy workoutActivities];
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
    selfCopy = self;
    [workoutActivities enumerateObjectsUsingBlock:v84];

    lastObject = [v58 lastObject];
    if (lastObject)
    {
      endDate = [v64 endDate];
      endDate2 = [lastObject endDate];
      [endDate timeIntervalSinceDate:endDate2];
      v12 = v11;

      if (v12 > 5.0)
      {
        v13 = objc_alloc_init(CHWorkoutInterval);
        endDate3 = [lastObject endDate];
        [(CHWorkoutSegment *)v13 setStartDate:endDate3];

        endDate4 = [v64 endDate];
        [(CHWorkoutSegment *)v13 setEndDate:endDate4];

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
            startDate = [v26 startDate];
            endDate5 = [v26 endDate];
            v30 = [v27 initWithStartDate:startDate endDate:endDate5];
            [v21 addObject:v30];

            stepKeyPath = [v26 stepKeyPath];
            v32 = [v64 expectedIntervalDistanceForStepKeyPath:stepKeyPath];

            wasSuccessful = [v26 wasSuccessful];
            if (v32)
            {
              v34 = wasSuccessful;
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
      selfCopy2 = self;
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
            startDate2 = [v37 startDate];
            endDate6 = [v37 endDate];
            v41 = [HKQuery predicateForSamplesWithStartDate:startDate2 endDate:endDate6 options:1];

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

            healthStore = [(CHWorkoutDataCalculator *)self healthStore];
            [healthStore executeQuery:v46];
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
      if (errorCopy)
      {
        v51 = v49;
        *errorCopy = v50;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v20 = v58;
    _Block_object_dispose(&buf, 8);

    workoutCopy = v57;
  }

  else
  {
    v20 = &__NSArray0__struct;
  }

  return v20;
}

- (id)_queue_segmentsForWorkout:(id)workout markerEvents:(id)events error:(id *)error
{
  workoutCopy = workout;
  eventsCopy = events;
  v81 = objc_alloc_init(NSMutableArray);
  v83 = workoutCopy;
  startDate = [workoutCopy startDate];
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = eventsCopy;
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
        dateInterval = [v12 dateInterval];
        startDate2 = [dateInterval startDate];
        [startDate2 timeIntervalSinceDate:startDate];
        v16 = v15;

        if (fabs(round(v16)) >= 2.22044605e-16)
        {
          v17 = objc_alloc_init(CHWorkoutSegment);
          [(CHWorkoutSegment *)v17 setStartDate:startDate];
          dateInterval2 = [v12 dateInterval];
          startDate3 = [dateInterval2 startDate];
          [(CHWorkoutSegment *)v17 setEndDate:startDate3];

          [v81 addObject:v17];
          dateInterval3 = [v12 dateInterval];
          startDate4 = [dateInterval3 startDate];

          if ([v83 isTrackWorkout])
          {
            metadata = [v12 metadata];
            v23 = [metadata objectForKeyedSubscript:group];

            if (v23)
            {
              v24 = +[HKUnit meterUnit];
              [v23 doubleValue];
              v25 = [HKQuantity quantityWithUnit:v24 doubleValue:?];
              [(CHWorkoutSegment *)v17 setDistance:v25];
            }
          }

          startDate = startDate4;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v116 objects:v125 count:16];
    }

    while (v9);
  }

  v72 = objc_alloc_init(CHWorkoutSegment);
  [(CHWorkoutSegment *)v72 setStartDate:startDate];
  endDate = [v83 endDate];
  [(CHWorkoutSegment *)v72 setEndDate:endDate];

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
          startDate5 = [v30 startDate];
          endDate2 = [v30 endDate];
          v34 = [v31 initWithStartDate:startDate5 endDate:endDate2];

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
            startDate6 = [v48 startDate];
            endDate3 = [v48 endDate];
            v52 = [v49 initWithStartDate:startDate6 endDate:endDate3];
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
            startDate7 = [v55 startDate];
            endDate4 = [v55 endDate];
            v59 = [HKQuery predicateForSamplesWithStartDate:startDate7 endDate:endDate4 options:1];

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

            healthStore = [(CHWorkoutDataCalculator *)self healthStore];
            [healthStore executeQuery:v64];
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
      if (error)
      {
        v69 = v67;
        *error = v68;
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

- (id)_queue_downhillRunsForWorkout:(id)workout error:(id *)error
{
  workoutCopy = workout;
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
  [workoutCopy makeDownhillRunBridgesWithHealthStore:healthStore completion:v16];
  v10 = dispatch_time(0, 20000000000);
  dispatch_group_wait(v9, v10);
  v11 = v21[5];
  v12 = v11;
  if (v11)
  {
    if (error)
    {
      v13 = v11;
      *error = v12;
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

- (id)_queue_trackLapsForWorkout:(id)workout lapEvents:(id)events error:(id *)error
{
  workoutCopy = workout;
  eventsCopy = events;
  v57 = objc_alloc_init(NSMutableArray);
  v84[0] = _NSConcreteStackBlock;
  v84[1] = 3221225472;
  v84[2] = sub_1000D37E0;
  v84[3] = &unk_10083B5B0;
  v51 = objc_alloc_init(NSMutableArray);
  v85 = v51;
  v54 = workoutCopy;
  [workoutCopy _enumerateActiveTimePeriods:v84];
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = eventsCopy;
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
        metadata = [v11 metadata];
        allKeys = [metadata allKeys];
        v15 = [allKeys containsObject:v9];

        if ((v15 & 1) == 0)
        {
          v16 = [NSDateInterval alloc];
          startDate = [(CHWorkoutSegment *)v12 startDate];
          endDate = [(CHWorkoutSegment *)v12 endDate];
          v19 = [v16 initWithStartDate:startDate endDate:endDate];

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
          startDate2 = [v32 startDate];
          endDate2 = [v32 endDate];
          v36 = [HKQuery predicateForSamplesWithStartDate:startDate2 endDate:endDate2 options:1];

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

          healthStore = [(CHWorkoutDataCalculator *)self healthStore];
          [healthStore executeQuery:v41];
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
    if (error)
    {
      v46 = v44;
      *error = v45;
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

- (id)_queue_openWaterSwimDistanceByStrokeStyleForWorkout:(id)workout workoutActivity:(id)activity error:(id *)error
{
  workoutCopy = workout;
  activityCopy = activity;
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
  [(CHWorkoutDataCalculator *)self strokeSamplesForWorkout:workoutCopy workoutActivity:activityCopy completion:v32];
  dispatch_group_enter(v10);
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000D404C;
  v29[3] = &unk_10083B718;
  v31 = &v35;
  v11 = v10;
  v30 = v11;
  [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:workoutCopy workoutActivity:activityCopy completion:v29];
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

- (id)_queue_swimDistanceByStrokeStyleForWorkout:(id)workout workoutActivity:(id)activity error:(id *)error
{
  workoutCopy = workout;
  activityCopy = activity;
  v8 = objc_alloc_init(NSMutableDictionary);
  if (activityCopy)
  {
    v9 = activityCopy;
  }

  else
  {
    v9 = workoutCopy;
  }

  workoutEvents = [v9 workoutEvents];
  v11 = [NSPredicate predicateWithBlock:&stru_10083B760];
  v12 = [workoutEvents filteredArrayUsingPredicate:v11];

  if ([v12 count])
  {
    v30 = activityCopy;
    v29 = workoutEvents;
    if (activityCopy)
    {
      workoutConfiguration = [activityCopy workoutConfiguration];
      [workoutConfiguration lapLength];
    }

    else
    {
      workoutConfiguration = [workoutCopy metadata];
      [workoutConfiguration objectForKeyedSubscript:HKMetadataKeyLapLength];
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

          metadata = [*(*(&v32 + 1) + 8 * i) metadata];
          v21 = [metadata objectForKeyedSubscript:HKMetadataKeySwimmingStrokeStyle];
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
    activityCopy = v30;
    workoutEvents = v29;
  }

  else
  {
    v14 = &__NSDictionary0__struct;
  }

  return v14;
}

- (id)_queue_swimmingSetsForWorkout:(id)workout workoutActivity:(id)activity error:(id *)error
{
  workoutCopy = workout;
  activityCopy = activity;
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
  [(CHWorkoutDataCalculator *)self strokeSamplesForWorkout:workoutCopy workoutActivity:activityCopy completion:v55];
  dispatch_group_enter(v7);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_1000D4AE4;
  v52[3] = &unk_10083B718;
  v54 = &v58;
  v8 = v7;
  v53 = v8;
  [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:workoutCopy workoutActivity:activityCopy completion:v52];
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

        quantity = [*(*(&v48 + 1) + 8 * v15) quantity];
        v11 = [v16 _quantityByAddingQuantity:quantity];

        v15 = v15 + 1;
        v16 = v11;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v48 objects:v67 count:16];
    }

    while (v13);
  }

  v18 = objc_alloc_init(NSMutableArray);
  if (activityCopy)
  {
    [activityCopy workoutEvents];
  }

  else
  {
    [workoutCopy workoutEvents];
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
          metadata = [v24 metadata];
          v26 = [metadata objectForKey:v22];

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
  selfCopy = self;
  v30 = v27;
  v41 = v30;
  [v28 enumerateObjectsUsingBlock:v37];
  v31 = [[NSArray alloc] initWithArray:v30];

  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(v64, 8);

  return v31;
}

- (int64_t)_queue_strokeStyleForLaps:(id)laps
{
  lapsCopy = laps;
  v4 = objc_alloc_init(NSMutableDictionary);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = lapsCopy;
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

        metadata = [*(*(&v48 + 1) + 8 * i) metadata];
        v10 = [metadata objectForKeyedSubscript:HKMetadataKeySwimmingStrokeStyle];
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
  integerValue = v17;
  if (v17)
  {
    if (v17 == 1)
    {
      allKeys = [v4 allKeys];
      firstObject = [allKeys firstObject];
      integerValue = [firstObject integerValue];
    }

    else
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      allValues = [v4 allValues];
      v22 = [allValues countByEnumeratingWithState:&v44 objects:v53 count:16];
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
              objc_enumerationMutation(allValues);
            }

            [*(*(&v44 + 1) + 8 * j) floatValue];
            v25 = v25 + v27;
          }

          v23 = [allValues countByEnumeratingWithState:&v44 objects:v53 count:16];
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
      allKeys = [v4 allKeys];
      v28 = [allKeys countByEnumeratingWithState:&v40 objects:v52 count:16];
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

        integerValue = 1;
        while (2)
        {
          for (k = 0; k != v29; k = k + 1)
          {
            if (*v41 != v30)
            {
              objc_enumerationMutation(allKeys);
            }

            v34 = *(*(&v40 + 1) + 8 * k);
            v35 = [v4 objectForKeyedSubscript:v34];
            [v35 floatValue];
            v37 = v36;

            if ((v37 / v32) > 0.9)
            {
              integerValue = [v34 integerValue];
              goto LABEL_43;
            }
          }

          v29 = [allKeys countByEnumeratingWithState:&v40 objects:v52 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        integerValue = 1;
      }
    }

LABEL_43:
  }

  return integerValue;
}

- (void)_updateSplits:(id)splits withDistance:(double)distance duration:(double)duration strokeCount:(int64_t)count splitDelimiterInUserUnit:(double)unit
{
  splitsCopy = splits;
  if ([splitsCopy count])
  {
    lastObject = [splitsCopy lastObject];
  }

  else
  {
    lastObject = [[CHWorkoutSwimmingSplit alloc] initWithSplitDelimiterDistance:unit distanceInUserUnit:0 strokeCount:0.0 duration:0.0];
    [splitsCopy addObject:lastObject];
  }

  [(CHWorkoutSwimmingSplit *)lastObject distanceInUserUnit];
  v14 = distance - (unit - v13);
  [(CHWorkoutSwimmingSplit *)lastObject distanceInUserUnit];
  if (v14 <= 2.22044605e-16)
  {
    [(CHWorkoutSwimmingSplit *)lastObject setDistanceInUserUnit:v15 + distance];
    [(CHWorkoutSwimmingSplit *)lastObject duration];
    [(CHWorkoutSwimmingSplit *)lastObject setDuration:v25 + duration];
    [(CHWorkoutSwimmingSplit *)lastObject setStrokeCount:[(CHWorkoutSwimmingSplit *)lastObject strokeCount]+ count];
  }

  else
  {
    v16 = (unit - v15) / distance;
    [(CHWorkoutSwimmingSplit *)lastObject distanceInUserUnit];
    [(CHWorkoutSwimmingSplit *)lastObject setDistanceInUserUnit:v17 + v16 * distance];
    [(CHWorkoutSwimmingSplit *)lastObject duration];
    [(CHWorkoutSwimmingSplit *)lastObject setDuration:v18 + v16 * duration];
    countCopy = count;
    [(CHWorkoutSwimmingSplit *)lastObject setStrokeCount:([(CHWorkoutSwimmingSplit *)lastObject strokeCount]+ v16 * count)];
    v20 = distance - v16 * distance;
    v21 = vcvtmd_u64_f64(v20 / unit);
    if (v21)
    {
      v22 = llround(unit / distance * countCopy);
      v23 = v21;
      do
      {
        duration = [[CHWorkoutSwimmingSplit alloc] initWithSplitDelimiterDistance:unit distanceInUserUnit:v22 strokeCount:unit duration:unit / distance * duration];

        [splitsCopy addObject:duration];
        lastObject = duration;
        --v23;
      }

      while (v23);
    }

    else
    {
      duration = lastObject;
    }

    v26 = v20 - v21 * unit;
    if (v26 >= 0.0)
    {
      if (v26 > unit)
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
      lastObject = duration;
    }

    else
    {
      lastObject = [[CHWorkoutSwimmingSplit alloc] initWithSplitDelimiterDistance:unit distanceInUserUnit:llround(v26 / distance * countCopy) strokeCount:v26 / distance * distance duration:v26 / distance * duration];

      [splitsCopy addObject:lastObject];
    }
  }
}

- (double)_activeWorkoutElapsedTimeFromDate:(id)date toDate:(id)toDate forWorkout:(id)workout workoutActivity:(id)activity
{
  dateCopy = date;
  toDateCopy = toDate;
  workoutCopy = workout;
  activityCopy = activity;
  v13 = activityCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (activityCopy)
  {
    [activityCopy workoutEvents];
  }

  else
  {
    [workoutCopy workoutEvents];
  }
  v14 = ;
  _HKEnumerateActiveWorkoutIntervals();
  v15 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v15;
}

- (id)_swimmingSplitsForWorkout:(id)workout workoutActivity:(id)activity distanceSamples:(id)samples strokeSamples:(id)strokeSamples forDelimeterUnit:(id)unit splitDelimiter:(id)delimiter
{
  workoutCopy = workout;
  activityCopy = activity;
  samplesCopy = samples;
  strokeSamplesCopy = strokeSamples;
  unitCopy = unit;
  delimiterCopy = delimiter;
  v20 = +[NSMutableArray array];
  if (samplesCopy && strokeSamplesCopy)
  {
    if ([samplesCopy count])
    {
      v46 = strokeSamplesCopy;
      if (activityCopy)
      {
        v21 = activityCopy;
      }

      else
      {
        v21 = workoutCopy;
      }

      startDate = [v21 startDate];
      v23 = [samplesCopy objectAtIndexedSubscript:0];
      startDate2 = [v23 startDate];
      v47 = startDate;
      [(CHWorkoutDataCalculator *)self _activeWorkoutElapsedTimeFromDate:startDate toDate:startDate2 forWorkout:workoutCopy workoutActivity:activityCopy];
      v26 = v25;

      if (v26 > 2.22044605e-16)
      {
        [delimiterCopy doubleValueForUnit:unitCopy];
        [(CHWorkoutDataCalculator *)self _updateSplits:v20 withDistance:0 duration:0.0 strokeCount:v26 splitDelimiterInUserUnit:v27];
      }

      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_1000D5DAC;
      v53[3] = &unk_10083B828;
      selfCopy = self;
      v53[4] = self;
      v28 = unitCopy;
      v29 = samplesCopy;
      v54 = v29;
      v52 = workoutCopy;
      v30 = workoutCopy;
      v55 = v30;
      v31 = delimiterCopy;
      v32 = activityCopy;
      v56 = v32;
      v33 = v20;
      v57 = v33;
      v49 = v31;
      v45 = v31;
      v58 = v45;
      v50 = v28;
      v43 = v28;
      v59 = v43;
      strokeSamplesCopy = v46;
      v60 = v46;
      [v29 enumerateObjectsUsingBlock:v53];
      v51 = v20;
      if (activityCopy)
      {
        v34 = v32;
      }

      else
      {
        v34 = v30;
      }

      endDate = [v34 endDate];
      lastObject = [v29 lastObject];
      endDate2 = [lastObject endDate];
      [(CHWorkoutDataCalculator *)selfCopy _activeWorkoutElapsedTimeFromDate:endDate2 toDate:endDate forWorkout:v30 workoutActivity:v32];
      v39 = v38;

      if (v39 > 2.22044605e-16)
      {
        [v45 doubleValueForUnit:v44];
        [(CHWorkoutDataCalculator *)selfCopy _updateSplits:v33 withDistance:0 duration:0.0 strokeCount:v39 splitDelimiterInUserUnit:v40];
      }

      v41 = v33;

      v20 = v51;
      workoutCopy = v52;
      delimiterCopy = v49;
      unitCopy = v50;
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

- (id)_queue_swimmingSplitsForWorkout:(id)workout workoutActivity:(id)activity error:(id *)error
{
  workoutCopy = workout;
  activityCopy = activity;
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
  [(CHWorkoutDataCalculator *)self strokeSamplesForWorkout:workoutCopy workoutActivity:activityCopy completion:v75];
  dispatch_group_enter(v7);
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1000D68A4;
  v72[3] = &unk_10083B718;
  v74 = &v78;
  group = v7;
  v73 = group;
  [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:workoutCopy workoutActivity:activityCopy completion:v72];
  v8 = dispatch_time(0, 20000000000);
  dispatch_group_wait(group, v8);
  v9 = [v85[5] count];
  if (v9 == [v79[5] count])
  {
    goto LABEL_34;
  }

  if (activityCopy)
  {
    workoutConfiguration = [activityCopy workoutConfiguration];
    swimmingLocationType = [workoutConfiguration swimmingLocationType];
  }

  else
  {
    workoutConfiguration = [workoutCopy metadata];
    v12 = [workoutConfiguration objectForKeyedSubscript:HKMetadataKeySwimmingLocationType];
    swimmingLocationType = [v12 integerValue];
  }

  if (swimmingLocationType == 2)
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
        fiui_dateInterval = [v15 fiui_dateInterval];
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
            fiui_dateInterval2 = [v21 fiui_dateInterval];
            [fiui_dateInterval duration];
            if (v23 > 2.22044605e-16)
            {
              v24 = [fiui_dateInterval2 intersectionWithDateInterval:fiui_dateInterval];
              [v24 duration];
              v26 = v25;
              [fiui_dateInterval duration];
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
        startDate = [v61 startDate];
        endDate = [v61 endDate];
        v92 = HKMetadataKeySwimmingStrokeStyle;
        v93 = &off_10086E188;
        v35 = [NSDictionary dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v29 = [HKQuantitySample quantitySampleWithType:v30 quantity:v32 startDate:startDate endDate:endDate metadata:v35];

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
  unitManager = [(CHWorkoutDataCalculator *)self unitManager];
  v38 = [unitManager userDistanceHKUnitForDistanceType:3];

  v39 = v79[5];
  v40 = v85[5];
  v41 = [HKQuantity quantityWithUnit:v38 doubleValue:100.0];
  v42 = [(CHWorkoutDataCalculator *)self _swimmingSplitsForWorkout:workoutCopy workoutActivity:activityCopy distanceSamples:v39 strokeSamples:v40 forDelimeterUnit:v38 splitDelimiter:v41];

  v43 = v79[5];
  v44 = v85[5];
  v45 = [HKQuantity quantityWithUnit:v38 doubleValue:50.0];
  v46 = [(CHWorkoutDataCalculator *)self _swimmingSplitsForWorkout:workoutCopy workoutActivity:activityCopy distanceSamples:v43 strokeSamples:v44 forDelimeterUnit:v38 splitDelimiter:v45];

  v47 = v79[5];
  v48 = v85[5];
  v49 = [HKQuantity quantityWithUnit:v38 doubleValue:25.0];
  v50 = [(CHWorkoutDataCalculator *)self _swimmingSplitsForWorkout:workoutCopy workoutActivity:activityCopy distanceSamples:v47 strokeSamples:v48 forDelimeterUnit:v38 splitDelimiter:v49];

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

- (id)_uuidForWorkout:(id)workout workoutActivity:(id)activity
{
  if (activity)
  {
    workoutCopy = activity;
  }

  else
  {
    workoutCopy = workout;
  }

  uUID = [workoutCopy UUID];

  return uUID;
}

- (id)_predicateForObjectsFromWorkout:(id)workout withinWorkoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  v7 = [HKQuery predicateForObjectsFromWorkout:workoutCopy];
  v8 = objc_alloc_init(NSMutableArray);
  v9 = v8;
  if (activityCopy)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000D6B7C;
    v17[3] = &unk_10083B5B0;
    v10 = &v18;
    v18 = v8;
    v11 = v17;
    v12 = activityCopy;
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
    v12 = workoutCopy;
  }

  [v12 _enumerateActiveTimePeriods:v11];

  v13 = [NSCompoundPredicate orPredicateWithSubpredicates:v9];
  v21[0] = v7;
  v21[1] = v13;
  v14 = [NSArray arrayWithObjects:v21 count:2];
  v15 = [NSCompoundPredicate andPredicateWithSubpredicates:v14];

  return v15;
}

- (id)_activeDateIntervalsForWorkout:(id)workout workoutActivity:(id)activity
{
  workoutCopy = workout;
  activityCopy = activity;
  v7 = objc_alloc_init(NSMutableArray);
  v8 = v7;
  if (activityCopy)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_1000D6DA0;
    v16 = &unk_10083B5B0;
    v9 = &v17;
    v17 = v7;
    v10 = &v13;
    v11 = activityCopy;
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
    v11 = workoutCopy;
  }

  [v11 _enumerateActiveTimePeriods:{v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22}];

  return v8;
}

- (id)_predicateForActiveDateIntervals:(id)intervals
{
  v3 = [intervals hk_map:&stru_10083B868];
  v4 = [NSCompoundPredicate orPredicateWithSubpredicates:v3];

  return v4;
}

- (BOOL)_activeDateIntervals:(id)intervals containsDate:(id)date
{
  intervalsCopy = intervals;
  dateCopy = date;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = intervalsCopy;
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
        startDate = [v11 startDate];
        [startDate timeIntervalSinceReferenceDate];
        v14 = v13;

        endDate = [v11 endDate];
        [endDate timeIntervalSinceReferenceDate];
        v17 = v16;

        [dateCopy timeIntervalSinceReferenceDate];
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

- (id)_activeDateIntervalsForWorkout:(id)workout during:(id)during
{
  duringCopy = during;
  workoutCopy = workout;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D7164;
  v12[3] = &unk_10083B890;
  v13 = duringCopy;
  v7 = objc_alloc_init(NSMutableArray);
  v14 = v7;
  v8 = duringCopy;
  [workoutCopy _enumerateActiveTimePeriods:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)_activeDateIntervalsForWorkoutActivity:(id)activity during:(id)during
{
  duringCopy = during;
  activityCopy = activity;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000D73BC;
  v12[3] = &unk_10083B890;
  v13 = duringCopy;
  v7 = objc_alloc_init(NSMutableArray);
  v14 = v7;
  v8 = duringCopy;
  [activityCopy _enumerateActiveTimePeriods:v12];

  v9 = v14;
  v10 = v7;

  return v7;
}

- (id)_endDateInWorkout:(id)workout reachingAccumulatedTime:(double)time fromStartDate:(id)date
{
  workoutCopy = workout;
  dateCopy = date;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000D7804;
  v35[3] = &unk_10083B5B0;
  v9 = objc_alloc_init(NSMutableArray);
  v36 = v9;
  [workoutCopy _enumerateActiveTimePeriods:v35];
  v10 = 0;
  if (time > 0.0 && dateCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = v9;
    v10 = [v11 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v10)
    {
      v30 = workoutCopy;
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
          endDate = [v15 endDate];
          startDate = [v15 startDate];
          [endDate timeIntervalSinceDate:startDate];
          v19 = v18;

          if (v19 >= 2.22044605e-16)
          {
            endDate2 = [v15 endDate];
            v21 = [endDate2 compare:dateCopy];

            if (v21 == 1)
            {
              startDate2 = [v15 startDate];
              startDate3 = [v15 startDate];
              v24 = [startDate3 compare:dateCopy];

              if (v24 == -1)
              {
                v25 = dateCopy;

                endDate3 = [v15 endDate];
                [endDate3 timeIntervalSinceDate:v25];
                v19 = v27;

                startDate2 = v25;
              }

              v28 = v13 + v19;
              if (v28 >= time)
              {
                v10 = [startDate2 dateByAddingTimeInterval:time - v13];

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
      workoutCopy = v30;
    }
  }

  return v10;
}

- (id)_endDateInWorkout:(id)workout reachingAccumulatedDistance:(double)distance fromStartDate:(id)date
{
  workoutCopy = workout;
  dateCopy = date;
  v10 = [NSDateInterval alloc];
  endDate = [workoutCopy endDate];
  v12 = [v10 initWithStartDate:dateCopy endDate:endDate];

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
  distanceCopy = distance;
  v21 = v15;
  v22 = &v24;
  [(CHWorkoutDataCalculator *)self distanceSamplesForWorkout:workoutCopy workoutActivity:0 completion:v19];
  v16 = dispatch_time(0, 20000000000);
  dispatch_group_wait(v14, v16);
  v17 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v17;
}

- (id)_testMarkersForWorkout:(id)workout
{
  workoutCopy = workout;
  endDate = [workoutCopy endDate];
  startDate = [workoutCopy startDate];
  [endDate timeIntervalSinceDate:startDate];
  v7 = v6;

  v8 = v7 / 3.0;
  v9 = [NSDateInterval alloc];
  startDate2 = [workoutCopy startDate];
  v11 = [startDate2 dateByAddingTimeInterval:v8];
  v12 = [v9 initWithStartDate:v11 duration:0.0];
  v13 = FIUIPrivateMetadataKeyMarkerEventSubtype;
  v27 = FIUIPrivateMetadataKeyMarkerEventSubtype;
  v28 = &off_10086E1E8;
  v14 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
  v15 = [HKWorkoutEvent workoutEventWithType:4 dateInterval:v12 metadata:v14];

  v16 = [NSDateInterval alloc];
  startDate3 = [workoutCopy startDate];

  v18 = [startDate3 dateByAddingTimeInterval:v8 + v8];
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

- (id)_testTrackLapsForWorkout:(id)workout
{
  workoutCopy = workout;
  [workoutCopy duration];
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
    startDate = [workoutCopy startDate];
    v23 = [startDate dateByAddingTimeInterval:v4 * v7];
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

- (BOOL)_workoutSupportsDistanceAndPace:(id)pace
{
  paceCopy = pace;
  fiui_activityType = [paceCopy fiui_activityType];
  v5 = [FIUIWorkoutDefaultMetricsProvider metricsVersionForWorkout:paceCopy];
  v6 = [FIUIWorkoutDefaultMetricsProvider alloc];
  _activityMoveMode = [paceCopy _activityMoveMode];
  v8 = FIUIDeviceSupportsElevationGain();
  v9 = [v6 initWithMetricsVersion:v5 activityType:fiui_activityType activityMoveMode:_activityMoveMode deviceSupportsElevationMetrics:v8 deviceSupportsGroundElevationMetrics:FIUIDeviceSupportsGroundElevation()];
  fiui_isConnectedGymWorkout = [paceCopy fiui_isConnectedGymWorkout];

  LOBYTE(paceCopy) = [v9 isMetricTypeSupported:1 isMachineWorkout:fiui_isConnectedGymWorkout activityType:fiui_activityType];
  return paceCopy;
}

- (void)_setDistanceSamples:(id)samples forWorkout:(id)workout
{
  workoutCopy = workout;
  samplesCopy = samples;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:0];
  [v8 setDistanceSamples:samplesCopy];

  [(CHWorkoutDataCalculator *)self saveContainerToCache:v8 forWorkout:workoutCopy workoutActivity:0];
}

- (void)_setStrokeSamples:(id)samples forWorkout:(id)workout
{
  workoutCopy = workout;
  samplesCopy = samples;
  v8 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workoutCopy workoutActivity:0];
  [v8 setStrokeSamples:samplesCopy];

  [(CHWorkoutDataCalculator *)self saveContainerToCache:v8 forWorkout:workoutCopy workoutActivity:0];
}

- (id)_getDistanceSamplesForWorkout:(id)workout
{
  v3 = [(CHWorkoutDataCalculator *)self cacheContainerForWorkout:workout workoutActivity:0];
  distanceSamples = [v3 distanceSamples];

  return distanceSamples;
}

@end