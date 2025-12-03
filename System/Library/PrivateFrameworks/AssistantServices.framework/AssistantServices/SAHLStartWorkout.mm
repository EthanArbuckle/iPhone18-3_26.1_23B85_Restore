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
  workoutType = [(SAHLStartWorkout *)self workoutType];
  workoutCategory = [workoutType workoutCategory];

  if ([workoutCategory isEqualToString:SAHLWorkoutCategoryCyclingValue])
  {
    v5 = 2;
LABEL_15:
    v32 = v5;
    goto LABEL_16;
  }

  if ([workoutCategory isEqualToString:SAHLWorkoutCategoryEllipticalValue])
  {
    v5 = 3;
    goto LABEL_15;
  }

  if ([workoutCategory isEqualToString:SAHLWorkoutCategoryRowerValue])
  {
    v5 = 4;
    goto LABEL_15;
  }

  if ([workoutCategory isEqualToString:SAHLWorkoutCategoryRunningValue])
  {
    v5 = 5;
    goto LABEL_15;
  }

  if ([workoutCategory isEqualToString:SAHLWorkoutCategoryStair_StepperValue])
  {
    v5 = 6;
    goto LABEL_15;
  }

  if ([workoutCategory isEqualToString:SAHLWorkoutCategoryWalkingValue])
  {
    v5 = 7;
    goto LABEL_15;
  }

  if ([workoutCategory isEqualToString:SAHLWorkoutCategoryOtherValue])
  {
    v5 = 1;
    goto LABEL_15;
  }

  [workoutCategory isEqualToString:SAHLWorkoutCategoryUnspecifiedValue];
  v32 = 0;
LABEL_16:
  workoutType2 = [(SAHLStartWorkout *)self workoutType];
  workoutLocationType = [workoutType2 workoutLocationType];

  if ([workoutLocationType isEqualToString:SAHLWorkoutLocationTypeIndoorValue])
  {
    v8 = 1;
  }

  else
  {
    v9 = [workoutLocationType isEqualToString:SAHLWorkoutLocationTypeOutdoorValue];
    v8 = 2;
    if (!v9)
    {
      v8 = 0;
    }
  }

  v31 = v8;
  workoutUserMode = [(SAHLStartWorkout *)self workoutUserMode];
  v11 = [workoutUserMode isEqualToString:SAHLWorkoutUserModeWheelchairValue];

  workoutGoal = [(SAHLStartWorkout *)self workoutGoal];
  workoutGoalUnitType = [workoutGoal workoutGoalUnitType];

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeInchValue])
  {
    v14 = +[HKUnit inchUnit];
LABEL_41:
    v15 = v14;
    goto LABEL_42;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeMeterValue])
  {
    v14 = +[HKUnit meterUnit];
    goto LABEL_41;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeFootValue])
  {
    v14 = +[HKUnit footUnit];
    goto LABEL_41;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeYardsValue])
  {
    v14 = +[HKUnit yardUnit];
    goto LABEL_41;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeMileValue])
  {
    v14 = +[HKUnit mileUnit];
    goto LABEL_41;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeSecondValue])
  {
    v14 = +[HKUnit secondUnit];
    goto LABEL_41;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeMinuteValue])
  {
    v14 = +[HKUnit minuteUnit];
    goto LABEL_41;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeHourValue])
  {
    v14 = +[HKUnit hourUnit];
    goto LABEL_41;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeJouleValue])
  {
    v14 = +[HKUnit jouleUnit];
    goto LABEL_41;
  }

  if ([workoutGoalUnitType isEqualToString:SAHLWorkoutGoalUnitTypeKiloCalorieValue])
  {
    v14 = +[HKUnit kilocalorieUnit];
    goto LABEL_41;
  }

  v15 = 0;
LABEL_42:
  workoutGoal2 = [(SAHLStartWorkout *)self workoutGoal];
  [workoutGoal2 goalValue];
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
  isOpenGoal = [(SAHLStartWorkout *)self isOpenGoal];
  LOBYTE(v30) = [(SAHLStartWorkout *)self skipActivitySetup];
  v28 = [v26 _initWithType:v32 location:v31 goal:v17 goalType:v20 userMode:v25 isOpenGoal:isOpenGoal skipActivitySetup:v30];

  return v28;
}

@end