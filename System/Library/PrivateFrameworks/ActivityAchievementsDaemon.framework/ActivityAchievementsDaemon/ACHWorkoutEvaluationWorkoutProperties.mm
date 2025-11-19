@interface ACHWorkoutEvaluationWorkoutProperties
- (ACHWorkoutEvaluationWorkoutProperties)initWithWorkout:(id)a3 healthStore:(id)a4;
- (BOOL)_useSplitsForFastestDistance;
- (BOOL)_workoutIsDuathlon:(id)a3;
- (BOOL)_workoutIsTriathlon:(id)a3 swimmingDistanceInKilometers:(double)a4 cyclingDistanceInKilometers:(double)a5 runningDistanceInKilometers:(double)a6;
- (id)_nonMetaActivitiesForWorkout:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
@end

@implementation ACHWorkoutEvaluationWorkoutProperties

- (ACHWorkoutEvaluationWorkoutProperties)initWithWorkout:(id)a3 healthStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v56.receiver = self;
  v56.super_class = ACHWorkoutEvaluationWorkoutProperties;
  v8 = [(ACHWorkoutEvaluationWorkoutProperties *)&v56 init];
  if (!v8)
  {
    goto LABEL_16;
  }

  v8->_type = [v6 workoutActivityType];
  [v6 duration];
  v8->_duration = v9;
  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v11 = [v6 statisticsForType:v10];
  v12 = [v11 sumQuantity];
  v13 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
  [v12 doubleValueForUnit:v13];
  v8->_kilocalories = v14;

  v15 = [v6 totalDistance];
  v16 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  [v15 doubleValueForUnit:v16];
  v8->_kilometers = v17;

  v18 = [v6 totalDistance];
  v19 = [MEMORY[0x277CCDAB0] meterUnit];
  [v18 doubleValueForUnit:v19];
  v8->_meters = v20;

  v21 = [v6 fi_elevationGain];
  v22 = [MEMORY[0x277CCDAB0] unitFromString:@"cm"];
  [v21 doubleValueForUnit:v22];
  v8->_elevationGained = v23;

  v24 = [v6 fi_elevationGain];
  v25 = [MEMORY[0x277CCDAB0] meterUnit];
  [v24 doubleValueForUnit:v25];
  v8->_elevationGainedInMeters = v26;

  v8->_isDuathlon = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsDuathlon:v6];
  v27 = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsTriathlon:v6 swimmingDistanceInKilometers:*MEMORY[0x277CE8B90] cyclingDistanceInKilometers:*MEMORY[0x277CE8B80] runningDistanceInKilometers:*MEMORY[0x277CE8B88]];
  v8->_isFullDistanceTriathlon = v27;
  if (v27)
  {
    v8->_isHalfDistanceTriathlon = 0;
    p_isHalfDistanceTriathlon = &v8->_isHalfDistanceTriathlon;
LABEL_6:
    v8->_isFiftyKilometerTriathlon = 0;
    goto LABEL_7;
  }

  v29 = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsTriathlon:v6 swimmingDistanceInKilometers:*MEMORY[0x277CE8BB0] cyclingDistanceInKilometers:*MEMORY[0x277CE8BA0] runningDistanceInKilometers:*MEMORY[0x277CE8BA8]];
  v8->_isHalfDistanceTriathlon = v29;
  p_isHalfDistanceTriathlon = &v8->_isHalfDistanceTriathlon;
  if (v29 || v8->_isFullDistanceTriathlon)
  {
    goto LABEL_6;
  }

  v31 = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsTriathlon:v6 swimmingDistanceInKilometers:*MEMORY[0x277CE8B70] cyclingDistanceInKilometers:*MEMORY[0x277CE8B60] runningDistanceInKilometers:*MEMORY[0x277CE8B68]];
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

  v30 = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsTriathlon:v6 swimmingDistanceInKilometers:*MEMORY[0x277CE8C48] cyclingDistanceInKilometers:*MEMORY[0x277CE8C38] runningDistanceInKilometers:*MEMORY[0x277CE8C40]];
LABEL_12:
  v8->_isSprintTriathlon = v30;
  v8->_isDuathlon = [(ACHWorkoutEvaluationWorkoutProperties *)v8 _workoutIsDuathlon:v6];
  if ([(ACHWorkoutEvaluationWorkoutProperties *)v8 _useSplitsForFastestDistance])
  {
    [v6 aad_best5KDuration];
    v8->_best5KDuration = v32;
    [v6 aad_best10KDuration];
    v8->_best10KDuration = v33;
    [v6 aad_bestWheelchair5KDuration];
    v8->_bestWheelchair5KDuration = v34;
    [v6 aad_bestWheelchair10KDuration];
    v8->_bestWheelchair10KDuration = v35;
    [v6 aad_bestHalfMarathonDuration];
    v8->_bestHalfMarathonDuration = v36;
    [v6 aad_bestMarathonDuration];
    v8->_bestMarathonDuration = v37;
    [v6 aad_bestWheelchairHalfMarathonDuration];
    v8->_bestWheelchairHalfMarathonDuration = v38;
    [v6 aad_bestWheelchairMarathonDuration];
    v8->_bestWheelchairMarathonDuration = v39;
  }

  else
  {
    v40 = [[ACHFastestDistanceCalculator alloc] initWithHealthStore:v7];
    v41 = [(ACHFastestDistanceCalculator *)v40 fastestDistancesFor:v6];
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

  v50 = [v6 sourceRevision];
  v51 = [v50 source];
  v8->_isFirstParty = [v51 _hasFirstPartyBundleID];

  v52 = [v6 metadata];
  v53 = [v52 objectForKeyedSubscript:*MEMORY[0x277CCC4C0]];
  v54 = [v53 BOOLValue];

  v8->_isIndoor = v54;
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

- (id)_nonMetaActivitiesForWorkout:(id)a3
{
  v3 = [a3 workoutActivities];
  v4 = [v3 hk_filter:&__block_literal_global_13];

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

- (BOOL)_workoutIsDuathlon:(id)a3
{
  v4 = a3;
  if ([v4 workoutActivityType] == 82)
  {
    v5 = [(ACHWorkoutEvaluationWorkoutProperties *)self _nonMetaActivitiesForWorkout:v4];
    if ([v5 count] != 3)
    {
      LOBYTE(v18) = 0;
LABEL_26:

      goto LABEL_27;
    }

    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v5 objectAtIndexedSubscript:1];
    v8 = [v5 objectAtIndexedSubscript:2];
    v9 = [v6 workoutConfiguration];
    if ([v9 activityType] == 37)
    {
      v10 = [v7 workoutConfiguration];
      if ([v10 activityType] == 13)
      {
        v11 = [v8 workoutConfiguration];
        v12 = [v11 activityType];

        if (v12 != 37)
        {
          LOBYTE(v18) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v9 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
        v13 = *MEMORY[0x277CE8B50];
        v10 = [MEMORY[0x277CCD7E8] quantityWithUnit:v9 doubleValue:*MEMORY[0x277CE8B50]];
        v29 = [MEMORY[0x277CCD7E8] quantityWithUnit:v9 doubleValue:*MEMORY[0x277CE8B48]];
        v28 = [MEMORY[0x277CCD7E8] quantityWithUnit:v9 doubleValue:v13];
        v14 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
        v15 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
        v25 = [v6 statisticsForType:v14];
        v16 = [v25 sumQuantity];
        v26 = v15;
        v24 = [v7 statisticsForType:v15];
        v30 = [v24 sumQuantity];
        v27 = v14;
        v23 = [v8 statisticsForType:v14];
        v17 = [v23 sumQuantity];
        v22 = v16;
        if (v16)
        {
          v18 = [v10 compare:v16] != 1;
        }

        else
        {
          v18 = 0;
        }

        if (v30)
        {
          v19 = [v29 compare:?] != 1;
        }

        else
        {
          v19 = 0;
        }

        if (v17)
        {
          v20 = [v28 compare:v17] != 1;
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

- (BOOL)_workoutIsTriathlon:(id)a3 swimmingDistanceInKilometers:(double)a4 cyclingDistanceInKilometers:(double)a5 runningDistanceInKilometers:(double)a6
{
  v10 = a3;
  if ([v10 workoutActivityType] == 82)
  {
    v11 = [(ACHWorkoutEvaluationWorkoutProperties *)self _nonMetaActivitiesForWorkout:v10];
    if ([v11 count] != 3)
    {
      LOBYTE(v24) = 0;
LABEL_26:

      goto LABEL_27;
    }

    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v11 objectAtIndexedSubscript:1];
    v14 = [v11 objectAtIndexedSubscript:2];
    v15 = [v12 workoutConfiguration];
    if ([v15 activityType] == 46)
    {
      v16 = [v13 workoutConfiguration];
      if ([v16 activityType] == 13)
      {
        v17 = [v14 workoutConfiguration];
        v18 = [v17 activityType];

        if (v18 != 37)
        {
          LOBYTE(v24) = 0;
LABEL_25:

          goto LABEL_26;
        }

        v15 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
        v16 = [MEMORY[0x277CCD7E8] quantityWithUnit:v15 doubleValue:a4];
        v36 = [MEMORY[0x277CCD7E8] quantityWithUnit:v15 doubleValue:a5];
        v35 = [MEMORY[0x277CCD7E8] quantityWithUnit:v15 doubleValue:a6];
        v19 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
        v20 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
        v21 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
        v34 = v19;
        v31 = [v12 statisticsForType:v19];
        v22 = [v31 sumQuantity];
        v33 = v20;
        v30 = [v13 statisticsForType:v20];
        v37 = [v30 sumQuantity];
        v32 = v21;
        v29 = [v14 statisticsForType:v21];
        v23 = [v29 sumQuantity];
        v28 = v22;
        if (v22)
        {
          v24 = [v16 compare:{v22, v22}] != 1;
        }

        else
        {
          v24 = 0;
        }

        if (v37)
        {
          v25 = [v36 compare:?] != 1;
        }

        else
        {
          v25 = 0;
        }

        if (v23)
        {
          v26 = [v35 compare:v23] != 1;
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

- (id)valueForUndefinedKey:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = ACHLogWorkouts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_221DDC000, v4, OS_LOG_TYPE_DEFAULT, "Workout Evaluation workout properties asked for key it doesn't support: %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

@end