@interface HKWorkoutUtilities
+ (BOOL)_validateFirstZone:(id)a3 error:(id *)a4;
+ (BOOL)_validateLastZone:(id)a3 error:(id *)a4;
+ (BOOL)_validateMiddleZones:(id)a3 previousEndQuantity:(id)a4 error:(id *)a5;
+ (BOOL)_validateStartAndEnd:(id)a3 end:(id)a4 error:(id *)a5;
+ (BOOL)isFirstPartyForIdentifier:(id)a3;
+ (BOOL)validateZones:(id)a3 error:(id *)a4;
+ (id)_calorieAndEffortTypes;
+ (id)calorieAndEffortTypesForActivityType:(unint64_t)a3 isIndoor:(BOOL)a4;
+ (id)cyclingTypes;
+ (id)divingTypes;
+ (id)gymKitTypes;
+ (id)maxDataTypesForWorkoutActivityType:(unint64_t)a3;
+ (id)observedDataTypesForAllWorkoutActivities;
+ (id)runningTypes;
+ (id)swimmingTypes;
@end

@implementation HKWorkoutUtilities

+ (id)maxDataTypesForWorkoutActivityType:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  v6 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierAppleMoveTime"];
  v7 = [v4 initWithObjects:{v5, v6, 0}];

  if (a3 > 43)
  {
    switch(a3)
    {
      case ',':
        v8 = +[HKWorkoutUtilities gymKitTypes];
        break;
      case 'T':
        if (!HKCoreMotionSupportsWaterSubmersion())
        {
          goto LABEL_15;
        }

        v8 = +[HKWorkoutUtilities divingTypes];
        break;
      case '.':
        v8 = +[HKWorkoutUtilities swimmingTypes];
        break;
      default:
        goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a3 == 13)
  {
    v8 = +[HKWorkoutUtilities cyclingTypes];
    goto LABEL_14;
  }

  if (a3 == 37)
  {
    v9 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierStepCount"];
    [v7 addObject:v9];

    if (HKCoreMotionSupportsRunningMetrics())
    {
      v8 = +[HKWorkoutUtilities runningTypes];
LABEL_14:
      v10 = v8;
      [v7 addObjectsFromArray:v8];
    }
  }

LABEL_15:
  v11 = +[HKWorkoutUtilities _calorieAndEffortTypes];
  [v7 addObjectsFromArray:v11];

  v12 = [HKWorkoutUtilities speedTypeForActivityType:a3];
  v13 = [HKWorkoutUtilities distanceTypeForActivityType:a3];
  if (v12)
  {
    [v7 addObject:v12];
  }

  if (v13)
  {
    [v7 addObject:v13];
  }

  return v7;
}

+ (id)observedDataTypesForAllWorkoutActivities
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DFA8]);
  v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  v4 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierAppleMoveTime"];
  v5 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierStepCount"];
  v6 = [v2 initWithObjects:{v3, v4, v5, 0}];

  v7 = +[HKWorkoutUtilities swimmingTypes];
  [v6 addObjectsFromArray:v7];

  v8 = +[HKWorkoutUtilities gymKitTypes];
  [v6 addObjectsFromArray:v8];

  v9 = +[HKWorkoutUtilities runningTypes];
  [v6 addObjectsFromArray:v9];

  v10 = +[HKWorkoutUtilities divingTypes];
  [v6 addObjectsFromArray:v10];

  v11 = +[HKWorkoutUtilities cyclingTypes];
  [v6 addObjectsFromArray:v11];

  v12 = +[HKWorkoutUtilities _calorieAndEffortTypes];
  [v6 addObjectsFromArray:v12];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = +[HKWorkout _allWorkoutActivityTypes];
  v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v23 + 1) + 8 * i) unsignedIntegerValue];
        v19 = [HKWorkoutUtilities speedTypeForActivityType:v18];
        v20 = [HKWorkoutUtilities distanceTypeForActivityType:v18];
        if (v19)
        {
          [v6 addObject:v19];
        }

        if (v20)
        {
          [v6 addObject:v20];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v21 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_calorieAndEffortTypes
{
  v2 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierActiveEnergyBurned"];
  v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
  v4 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"];
  v5 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v2, v3, v4, 0}];

  return v5;
}

+ (id)calorieAndEffortTypesForActivityType:(unint64_t)a3 isIndoor:(BOOL)a4
{
  v4 = a4;
  v6 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierActiveEnergyBurned"];
  v7 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, v7, 0}];
  if (HKCoreMotionSupportsEstimatedWorkoutEffortForActivityType(a3, v4))
  {
    v9 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"];
    [v8 addObject:v9];
  }

  return v8;
}

+ (id)swimmingTypes
{
  v2 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierSwimmingStrokeCount"];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v2, 0}];
  if (HKCoreMotionSupportsWaterSubmersion())
  {
    v4 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierWaterTemperature"];
    [v3 addObject:v4];
  }

  return v3;
}

+ (id)gymKitTypes
{
  v2 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierFlightsClimbed"];
  v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierStepCount"];
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v2, v3, 0}];

  return v4;
}

+ (id)runningTypes
{
  v2 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierRunningStrideLength"];
  v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierRunningVerticalOscillation"];
  v4 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierRunningGroundContactTime"];
  v5 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierRunningPower"];
  v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v2, v3, v4, v5, 0}];

  return v6;
}

+ (id)divingTypes
{
  v2 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierUnderwaterDepth"];
  v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierWaterTemperature"];
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v2, v3, 0}];

  return v4;
}

+ (id)cyclingTypes
{
  v2 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingPower"];
  v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierCyclingCadence"];
  v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v2, v3, 0}];

  return v4;
}

+ (BOOL)validateZones:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 count];
  if (!v7)
  {
    v9 = 1;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = v7;
  while (1)
  {
    v13 = v11;
    v14 = [v6 objectAtIndexedSubscript:v10];
    if (v10)
    {
      break;
    }

    if (([a1 _validateFirstZone:v14 error:a4] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    v11 = [v14 endQuantity];

    v9 = ++v10 >= v8;
    if (!--v12)
    {
      v9 = 1;
      v13 = v11;
      goto LABEL_14;
    }
  }

  if (v12 == 1)
  {
    if (([a1 _validateLastZone:v14 error:a4] & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ([a1 _validateMiddleZones:v14 previousEndQuantity:v11 error:a4])
  {
    goto LABEL_10;
  }

LABEL_13:

LABEL_14:
LABEL_15:

  return v9;
}

+ (BOOL)_validateFirstZone:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 endQuantity];

  if (v8)
  {
    v9 = [v7 startQuantity];

    v13 = 1;
    if (v9)
    {
      v10 = [v7 startQuantity];
      v11 = [v7 endQuantity];
      v12 = [a1 _validateStartAndEnd:v10 end:v11 error:a4];

      if (!v12)
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Start zone cannot have a nil end quantity"];
    v15 = v14;
    v13 = v14 == 0;
    if (v14)
    {
      if (a4)
      {
        v16 = v14;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }
  }

  return v13;
}

+ (BOOL)_validateLastZone:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 startQuantity];

  if (v8)
  {
    v9 = [v7 endQuantity];

    v13 = 1;
    if (v9)
    {
      v10 = [v7 startQuantity];
      v11 = [v7 endQuantity];
      v12 = [a1 _validateStartAndEnd:v10 end:v11 error:a4];

      if (!v12)
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"End zone cannot have a nil start quantity"];
    v15 = v14;
    v13 = v14 == 0;
    if (v14)
    {
      if (a4)
      {
        v16 = v14;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }
  }

  return v13;
}

+ (BOOL)_validateMiddleZones:(id)a3 previousEndQuantity:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 startQuantity];
  if (!v11 || (v12 = v11, [v9 endQuantity], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
  {
    v17 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Middle Zone quantity cannot be nil"];
    v18 = v17 == 0;
    if (!v17)
    {
LABEL_11:
      v16 = v17;
      goto LABEL_12;
    }

    if (!a5)
    {
LABEL_10:
      _HKLogDroppedError(v17);
      v18 = 0;
      goto LABEL_11;
    }

LABEL_7:
    v19 = v17;
    v18 = 0;
    *a5 = v17;
    goto LABEL_11;
  }

  v14 = [v9 startQuantity];
  v15 = [v14 isEqual:v10];

  if ((v15 & 1) == 0)
  {
    v17 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Zone start quantity must match previous zone end quantity"];
    v18 = v17 == 0;
    if (!v17)
    {
      goto LABEL_11;
    }

    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v16 = [v9 startQuantity];
  v17 = [v9 endQuantity];
  v18 = [a1 _validateStartAndEnd:v16 end:v17 error:a5];
LABEL_12:

  return v18;
}

+ (BOOL)_validateStartAndEnd:(id)a3 end:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 compare:v9] == 1 || !objc_msgSend(v8, "compare:", v9))
  {
    v11 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"start" class:objc_opt_class() selector:a2 format:@"Start quantity must be greater than end quantity"];
    v12 = v11;
    v10 = v11 == 0;
    if (v11)
    {
      if (a5)
      {
        v13 = v11;
        *a5 = v12;
      }

      else
      {
        _HKLogDroppedError(v11);
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (BOOL)isFirstPartyForIdentifier:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = @"com.apple.Fitness";
  v9 = @"com.apple.SessionTrackerApp";
  v10 = @"com.apple.Health";
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:&v8 count:3];
  LOBYTE(v3) = [v5 containsObject:{v4, v8, v9, v10, v11}];

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

@end