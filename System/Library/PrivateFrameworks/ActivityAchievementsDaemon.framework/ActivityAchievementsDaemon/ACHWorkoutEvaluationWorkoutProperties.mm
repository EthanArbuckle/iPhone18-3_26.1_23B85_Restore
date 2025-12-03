@interface ACHWorkoutEvaluationWorkoutProperties
- (ACHWorkoutEvaluationWorkoutProperties)initWithWorkout:(id)workout healthStore:(id)store;
- (BOOL)_useSplitsForFastestDistance;
- (BOOL)_workoutIsDuathlon:(id)duathlon;
- (BOOL)_workoutIsTriathlon:(id)triathlon swimmingDistanceInKilometers:(double)kilometers cyclingDistanceInKilometers:(double)inKilometers runningDistanceInKilometers:(double)distanceInKilometers;
- (id)_nonMetaActivitiesForWorkout:(id)workout;
- (id)valueForUndefinedKey:(id)key;
@end

@implementation ACHWorkoutEvaluationWorkoutProperties

- (ACHWorkoutEvaluationWorkoutProperties)initWithWorkout:(id)workout healthStore:(id)store
{
  workoutCopy = workout;
  storeCopy = store;
  v56.receiver = self;
  v56.super_class = ACHWorkoutEvaluationWorkoutProperties;
  v8 = [(ACHWorkoutEvaluationWorkoutProperties *)&v56 init];
  if (!v8)
  {
    goto LABEL_16;
  }

  v8->_type = [workoutCopy workoutActivityType];
  [workoutCopy duration];
  v8->_duration = v9;
  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v11 = [workoutCopy statisticsForType:v10];
  sumQuantity = [v11 sumQuantity];
  kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [sumQuantity doubleValueForUnit:kilocalorieUnit];
  v8->_kilocalories = v14;

  totalDistance = [workoutCopy totalDistance];
  v16 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  [totalDistance doubleValueForUnit:v16];
  v8->_kilometers = v17;

  totalDistance2 = [workoutCopy totalDistance];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [totalDistance2 doubleValueForUnit:meterUnit];
  v8->_meters = v20;

  fi_elevationGain = [workoutCopy fi_elevationGain];
  v22 = [MEMORY[0x277CCDAB0] unitFromString:@"cm"];
  [fi_elevationGain doubleValueForUnit:v22];
  v8->_elevationGained = v23;

  fi_elevationGain2 = [workoutCopy fi_elevationGain];
  meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
  [fi_elevationGain2 doubleValueForUnit:meterUnit2];
  v8->_elevationGainedInMeters = v26;

  v8->_isDuathlon = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsDuathlon:workoutCopy];
  v27 = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsTriathlon:workoutCopy swimmingDistanceInKilometers:*MEMORY[0x277CE8B90] cyclingDistanceInKilometers:*MEMORY[0x277CE8B80] runningDistanceInKilometers:*MEMORY[0x277CE8B88]];
  v8->_isFullDistanceTriathlon = v27;
  if (v27)
  {
    v8->_isHalfDistanceTriathlon = 0;
    p_isHalfDistanceTriathlon = &v8->_isHalfDistanceTriathlon;
LABEL_6:
    v8->_isFiftyKilometerTriathlon = 0;
    goto LABEL_7;
  }

  v29 = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsTriathlon:workoutCopy swimmingDistanceInKilometers:*MEMORY[0x277CE8BB0] cyclingDistanceInKilometers:*MEMORY[0x277CE8BA0] runningDistanceInKilometers:*MEMORY[0x277CE8BA8]];
  v8->_isHalfDistanceTriathlon = v29;
  p_isHalfDistanceTriathlon = &v8->_isHalfDistanceTriathlon;
  if (v29 || v8->_isFullDistanceTriathlon)
  {
    goto LABEL_6;
  }

  v31 = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsTriathlon:workoutCopy swimmingDistanceInKilometers:*MEMORY[0x277CE8B70] cyclingDistanceInKilometers:*MEMORY[0x277CE8B60] runningDistanceInKilometers:*MEMORY[0x277CE8B68]];
  v8->_isFiftyKilometerTriathlon = v31;
  if (v31)
  {
LABEL_11:
    v30 = 0;
    goto LABEL_12;
  }

LABEL_7:
  if (*p_isHalfDistanceTriathlon || v8->_isFullDistanceTriathlon)
  {
    goto LABEL_11;
  }

  v30 = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsTriathlon:workoutCopy swimmingDistanceInKilometers:*MEMORY[0x277CE8C48] cyclingDistanceInKilometers:*MEMORY[0x277CE8C38] runningDistanceInKilometers:*MEMORY[0x277CE8C40]];
LABEL_12:
  v8->_isSprintTriathlon = v30;
  v8->_isDuathlon = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsDuathlon:workoutCopy];
  if ([(ACHWorkoutEvaluationWorkoutProperties *)v8 _useSplitsForFastestDistance])
  {
    [workoutCopy aad_best5KDuration];
    v8->_best5KDuration = v32;
    [workoutCopy aad_best10KDuration];
    v8->_best10KDuration = v33;
    [workoutCopy aad_bestWheelchair5KDuration];
    v8->_bestWheelchair5KDuration = v34;
    [workoutCopy aad_bestWheelchair10KDuration];
    v8->_bestWheelchair10KDuration = v35;
    [workoutCopy aad_bestHalfMarathonDuration];
    v8->_bestHalfMarathonDuration = v36;
    [workoutCopy aad_bestMarathonDuration];
    v8->_bestMarathonDuration = v37;
    [workoutCopy aad_bestWheelchairHalfMarathonDuration];
    v8->_bestWheelchairHalfMarathonDuration = v38;
    [workoutCopy aad_bestWheelchairMarathonDuration];
    v8->_bestWheelchairMarathonDuration = v39;
  }

  else
  {
    v40 = [[ACHFastestDistanceCalculator alloc] initWithHealthStore:storeCopy];
    v41 = [(ACHFastestDistanceCalculator *)v40 fastestDistancesFor:workoutCopy];
    [v41 best5KDuration];
    v8->_best5KDuration = v42;
    [v41 best10KDuration];
    v8->_best10KDuration = v43;
    [v41 bestWheelchair5KDuration];
    v8->_bestWheelchair5KDuration = v44;
    [v41 bestWheelchair10KDuration];
    v8->_bestWheelchair10KDuration = v45;
    [v41 bestHalfMarathonDuration];
    v8->_bestHalfMarathonDuration = v46;
    [v41 bestMarathonDuration];
    v8->_bestMarathonDuration = v47;
    [v41 bestWheelchairHalfMarathonDuration];
    v8->_bestWheelchairHalfMarathonDuration = v48;
    [v41 bestWheelchairMarathonDuration];
    v8->_bestWheelchairMarathonDuration = v49;
  }

  sourceRevision = [workoutCopy sourceRevision];
  source = [sourceRevision source];
  v8->_isFirstParty = [source _hasFirstPartyBundleID];

  metadata = [workoutCopy metadata];
  v53 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  bOOLValue = [v53 BOOLValue];

  v8->_isIndoor = bOOLValue;
LABEL_16:

  return v8;
}

- (BOOL)_useSplitsForFastestDistance
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CE8AB0]];
  v4 = [v3 BOOLForKey:@"UseSplitsForFastestDistance"];

  return v4;
}

- (id)_nonMetaActivitiesForWorkout:(id)workout
{
  workoutActivities = [workout workoutActivities];
  v4 = [workoutActivities hk_filter:&__block_literal_global_13];

  return v4;
}

BOOL __70__ACHWorkoutEvaluationWorkoutProperties__nonMetaActivitiesForWorkout___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 workoutConfiguration];
  if ([v3 activityType] == 82)
  {
    v4 = 0;
  }

  else
  {
    v5 = [v2 workoutConfiguration];
    v4 = [v5 activityType] != 83;
  }

  return v4;
}

- (BOOL)_workoutIsDuathlon:(id)duathlon
{
  duathlonCopy = duathlon;
  if ([duathlonCopy workoutActivityType] == 82)
  {
    v5 = [(ACHWorkoutEvaluationWorkoutProperties *)self _nonMetaActivitiesForWorkout:duathlonCopy];
    if ([v5 count] != 3)
    {
      LOBYTE(v18) = 0;
LABEL_26:

      goto LABEL_27;
    }

    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v5 objectAtIndexedSubscript:1];
    v8 = [v5 objectAtIndexedSubscript:2];
    workoutConfiguration = [v6 workoutConfiguration];
    if ([workoutConfiguration activityType] == 37)
    {
      workoutConfiguration2 = [v7 workoutConfiguration];
      if ([workoutConfiguration2 activityType] == 13)
      {
        workoutConfiguration3 = [v8 workoutConfiguration];
        activityType = [workoutConfiguration3 activityType];

        if (activityType != 37)
        {
          LOBYTE(v18) = 0;
LABEL_25:

          goto LABEL_26;
        }

        workoutConfiguration = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
        v13 = *MEMORY[0x277CE8B50];
        workoutConfiguration2 = [MEMORY[0x277CCD7E8] quantityWithUnit:workoutConfiguration doubleValue:*MEMORY[0x277CE8B50]];
        v29 = [MEMORY[0x277CCD7E8] quantityWithUnit:workoutConfiguration doubleValue:*MEMORY[0x277CE8B48]];
        v28 = [MEMORY[0x277CCD7E8] quantityWithUnit:workoutConfiguration doubleValue:v13];
        v14 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
        v15 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
        v25 = [v6 statisticsForType:v14];
        sumQuantity = [v25 sumQuantity];
        v26 = v15;
        v24 = [v7 statisticsForType:v15];
        sumQuantity2 = [v24 sumQuantity];
        v27 = v14;
        v23 = [v8 statisticsForType:v14];
        sumQuantity3 = [v23 sumQuantity];
        v22 = sumQuantity;
        if (sumQuantity)
        {
          v18 = [workoutConfiguration2 compare:sumQuantity] != 1;
        }

        else
        {
          v18 = 0;
        }

        if (sumQuantity2)
        {
          v19 = [v29 compare:?] != 1;
        }

        else
        {
          v19 = 0;
        }

        if (sumQuantity3)
        {
          v20 = [v28 compare:sumQuantity3] != 1;
        }

        else
        {
          v20 = 0;
        }

        if (v18)
        {
          LOBYTE(v18) = v19 && v20;
        }
      }

      else
      {
        LOBYTE(v18) = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    goto LABEL_25;
  }

  LOBYTE(v18) = 0;
LABEL_27:

  return v18;
}

- (BOOL)_workoutIsTriathlon:(id)triathlon swimmingDistanceInKilometers:(double)kilometers cyclingDistanceInKilometers:(double)inKilometers runningDistanceInKilometers:(double)distanceInKilometers
{
  triathlonCopy = triathlon;
  if ([triathlonCopy workoutActivityType] == 82)
  {
    v11 = [(ACHWorkoutEvaluationWorkoutProperties *)self _nonMetaActivitiesForWorkout:triathlonCopy];
    if ([v11 count] != 3)
    {
      LOBYTE(v24) = 0;
LABEL_26:

      goto LABEL_27;
    }

    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v11 objectAtIndexedSubscript:1];
    v14 = [v11 objectAtIndexedSubscript:2];
    workoutConfiguration = [v12 workoutConfiguration];
    if ([workoutConfiguration activityType] == 46)
    {
      workoutConfiguration2 = [v13 workoutConfiguration];
      if ([workoutConfiguration2 activityType] == 13)
      {
        workoutConfiguration3 = [v14 workoutConfiguration];
        activityType = [workoutConfiguration3 activityType];

        if (activityType != 37)
        {
          LOBYTE(v24) = 0;
LABEL_25:

          goto LABEL_26;
        }

        workoutConfiguration = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
        workoutConfiguration2 = [MEMORY[0x277CCD7E8] quantityWithUnit:workoutConfiguration doubleValue:kilometers];
        v36 = [MEMORY[0x277CCD7E8] quantityWithUnit:workoutConfiguration doubleValue:inKilometers];
        v35 = [MEMORY[0x277CCD7E8] quantityWithUnit:workoutConfiguration doubleValue:distanceInKilometers];
        v19 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
        v20 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
        v21 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
        v34 = v19;
        v31 = [v12 statisticsForType:v19];
        sumQuantity = [v31 sumQuantity];
        v33 = v20;
        v30 = [v13 statisticsForType:v20];
        sumQuantity2 = [v30 sumQuantity];
        v32 = v21;
        v29 = [v14 statisticsForType:v21];
        sumQuantity3 = [v29 sumQuantity];
        v28 = sumQuantity;
        if (sumQuantity)
        {
          v24 = [workoutConfiguration2 compare:{sumQuantity, sumQuantity}] != 1;
        }

        else
        {
          v24 = 0;
        }

        if (sumQuantity2)
        {
          v25 = [v36 compare:?] != 1;
        }

        else
        {
          v25 = 0;
        }

        if (sumQuantity3)
        {
          v26 = [v35 compare:sumQuantity3] != 1;
        }

        else
        {
          v26 = 0;
        }

        if (v24)
        {
          LOBYTE(v24) = v25 && v26;
        }
      }

      else
      {
        LOBYTE(v24) = 0;
      }
    }

    else
    {
      LOBYTE(v24) = 0;
    }

    goto LABEL_25;
  }

  LOBYTE(v24) = 0;
LABEL_27:

  return v24;
}

- (id)valueForUndefinedKey:(id)key
{
  v9 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = ACHLogWorkouts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = keyCopy;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Workout Evaluation workout properties asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

@end