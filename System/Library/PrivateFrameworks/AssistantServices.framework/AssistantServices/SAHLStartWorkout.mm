@interface SAHLStartWorkout
- (id)_ad_transformedWorkoutRequest;
- (id)_ad_transformedWorkoutSuccessResponse;
@end

@implementation SAHLStartWorkout

- (id)_ad_transformedWorkoutSuccessResponse
{
  v2 = objc_alloc_init(SACommandSucceeded);

  return v2;
}

- (id)_ad_transformedWorkoutRequest
{
  v3 = [(SAHLStartWorkout *)self workoutType];
  v4 = [v3 workoutCategory];

  if ([v4 isEqualToString:SAHLWorkoutCategoryCyclingValue])
  {
    v5 = 2;
LABEL_15:
    v32 = v5;
    goto LABEL_16;
  }

  if ([v4 isEqualToString:SAHLWorkoutCategoryEllipticalValue])
  {
    v5 = 3;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:SAHLWorkoutCategoryRowerValue])
  {
    v5 = 4;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:SAHLWorkoutCategoryRunningValue])
  {
    v5 = 5;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:SAHLWorkoutCategoryStair_StepperValue])
  {
    v5 = 6;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:SAHLWorkoutCategoryWalkingValue])
  {
    v5 = 7;
    goto LABEL_15;
  }

  if ([v4 isEqualToString:SAHLWorkoutCategoryOtherValue])
  {
    v5 = 1;
    goto LABEL_15;
  }

  [v4 isEqualToString:SAHLWorkoutCategoryUnspecifiedValue];
  v32 = 0;
LABEL_16:
  v6 = [(SAHLStartWorkout *)self workoutType];
  v7 = [v6 workoutLocationType];

  if ([v7 isEqualToString:SAHLWorkoutLocationTypeIndoorValue])
  {
    v8 = 1;
  }

  else
  {
    v9 = [v7 isEqualToString:SAHLWorkoutLocationTypeOutdoorValue];
    v8 = 2;
    if (!v9)
    {
      v8 = 0;
    }
  }

  v31 = v8;
  v10 = [(SAHLStartWorkout *)self workoutUserMode];
  v11 = [v10 isEqualToString:SAHLWorkoutUserModeWheelchairValue];

  v12 = [(SAHLStartWorkout *)self workoutGoal];
  v13 = [v12 workoutGoalUnitType];

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeInchValue])
  {
    v14 = +[HKUnit inchUnit];
LABEL_41:
    v15 = v14;
    goto LABEL_42;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeMeterValue])
  {
    v14 = +[HKUnit meterUnit];
    goto LABEL_41;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeFootValue])
  {
    v14 = +[HKUnit footUnit];
    goto LABEL_41;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeYardsValue])
  {
    v14 = +[HKUnit yardUnit];
    goto LABEL_41;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeMileValue])
  {
    v14 = +[HKUnit mileUnit];
    goto LABEL_41;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeSecondValue])
  {
    v14 = +[HKUnit secondUnit];
    goto LABEL_41;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeMinuteValue])
  {
    v14 = +[HKUnit minuteUnit];
    goto LABEL_41;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeHourValue])
  {
    v14 = +[HKUnit hourUnit];
    goto LABEL_41;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeJouleValue])
  {
    v14 = +[HKUnit jouleUnit];
    goto LABEL_41;
  }

  if ([v13 isEqualToString:SAHLWorkoutGoalUnitTypeKiloCalorieValue])
  {
    v14 = +[HKUnit kilocalorieUnit];
    goto LABEL_41;
  }

  v15 = 0;
LABEL_42:
  v16 = [(SAHLStartWorkout *)self workoutGoal];
  [v16 goalValue];
  v17 = [HKQuantity quantityWithUnit:v15 doubleValue:?];

  v18 = +[HKUnit meterUnit];
  v19 = [v17 isCompatibleWithUnit:v18];

  if (v19)
  {
    v20 = 2;
  }

  else
  {
    v21 = +[HKUnit kilocalorieUnit];
    v22 = [v17 isCompatibleWithUnit:v21];

    if (v22)
    {
      v20 = 1;
    }

    else
    {
      v23 = +[HKUnit secondUnit];
      v24 = [v17 isCompatibleWithUnit:v23];

      if (v24)
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  v25 = v11;
  v26 = [STStartWorkoutRequest alloc];
  v27 = [(SAHLStartWorkout *)self isOpenGoal];
  LOBYTE(v30) = [(SAHLStartWorkout *)self skipActivitySetup];
  v28 = [v26 _initWithType:v32 location:v31 goal:v17 goalType:v20 userMode:v25 isOpenGoal:v27 skipActivitySetup:v30];

  return v28;
}

@end