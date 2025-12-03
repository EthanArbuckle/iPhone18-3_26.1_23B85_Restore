@interface HKWorkoutUtilities
+ (BOOL)_validateFirstZone:(id)zone error:(id *)error;
+ (BOOL)_validateLastZone:(id)zone error:(id *)error;
+ (BOOL)_validateMiddleZones:(id)zones previousEndQuantity:(id)quantity error:(id *)error;
+ (BOOL)_validateStartAndEnd:(id)end end:(id)a4 error:(id *)error;
+ (BOOL)isFirstPartyForIdentifier:(id)identifier;
+ (BOOL)validateZones:(id)zones error:(id *)error;
+ (id)_calorieAndEffortTypes;
+ (id)calorieAndEffortTypesForActivityType:(unint64_t)type isIndoor:(BOOL)indoor;
+ (id)cyclingTypes;
+ (id)divingTypes;
+ (id)gymKitTypes;
+ (id)maxDataTypesForWorkoutActivityType:(unint64_t)type;
+ (id)observedDataTypesForAllWorkoutActivities;
+ (id)runningTypes;
+ (id)swimmingTypes;
@end

@implementation HKWorkoutUtilities

+ (id)maxDataTypesForWorkoutActivityType:(unint64_t)type
{
  v4 = objc_alloc(MEMORY[0x1E695DFA8]);
  v5 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  v6 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierAppleMoveTime"];
  v7 = [v4 initWithObjects:{v5, v6, 0}];

  if (type > 43)
  {
    switch(type)
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

  if (type == 13)
  {
    v8 = +[HKWorkoutUtilities cyclingTypes];
    goto LABEL_14;
  }

  if (type == 37)
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

  v12 = [HKWorkoutUtilities speedTypeForActivityType:type];
  v13 = [HKWorkoutUtilities distanceTypeForActivityType:type];
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

        unsignedIntegerValue = [*(*(&v23 + 1) + 8 * i) unsignedIntegerValue];
        v19 = [HKWorkoutUtilities speedTypeForActivityType:unsignedIntegerValue];
        v20 = [HKWorkoutUtilities distanceTypeForActivityType:unsignedIntegerValue];
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

+ (id)calorieAndEffortTypesForActivityType:(unint64_t)type isIndoor:(BOOL)indoor
{
  indoorCopy = indoor;
  v6 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierActiveEnergyBurned"];
  v7 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, v7, 0}];
  if (HKCoreMotionSupportsEstimatedWorkoutEffortForActivityType(type, indoorCopy))
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

+ (BOOL)validateZones:(id)zones error:(id *)error
{
  zonesCopy = zones;
  v7 = [zonesCopy count];
  if (!v7)
  {
    v9 = 1;
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  endQuantity = 0;
  v12 = v7;
  while (1)
  {
    v13 = endQuantity;
    v14 = [zonesCopy objectAtIndexedSubscript:v10];
    if (v10)
    {
      break;
    }

    if (([self _validateFirstZone:v14 error:error] & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_10:
    endQuantity = [v14 endQuantity];

    v9 = ++v10 >= v8;
    if (!--v12)
    {
      v9 = 1;
      v13 = endQuantity;
      goto LABEL_14;
    }
  }

  if (v12 == 1)
  {
    if (([self _validateLastZone:v14 error:error] & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ([self _validateMiddleZones:v14 previousEndQuantity:endQuantity error:error])
  {
    goto LABEL_10;
  }

LABEL_13:

LABEL_14:
LABEL_15:

  return v9;
}

+ (BOOL)_validateFirstZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  endQuantity = [zoneCopy endQuantity];

  if (endQuantity)
  {
    startQuantity = [zoneCopy startQuantity];

    v13 = 1;
    if (startQuantity)
    {
      startQuantity2 = [zoneCopy startQuantity];
      endQuantity2 = [zoneCopy endQuantity];
      v12 = [self _validateStartAndEnd:startQuantity2 end:endQuantity2 error:error];

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
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }
  }

  return v13;
}

+ (BOOL)_validateLastZone:(id)zone error:(id *)error
{
  zoneCopy = zone;
  startQuantity = [zoneCopy startQuantity];

  if (startQuantity)
  {
    endQuantity = [zoneCopy endQuantity];

    v13 = 1;
    if (endQuantity)
    {
      startQuantity2 = [zoneCopy startQuantity];
      endQuantity2 = [zoneCopy endQuantity];
      v12 = [self _validateStartAndEnd:startQuantity2 end:endQuantity2 error:error];

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
      if (error)
      {
        v16 = v14;
        *error = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }
  }

  return v13;
}

+ (BOOL)_validateMiddleZones:(id)zones previousEndQuantity:(id)quantity error:(id *)error
{
  zonesCopy = zones;
  quantityCopy = quantity;
  startQuantity = [zonesCopy startQuantity];
  if (!startQuantity || (v12 = startQuantity, [zonesCopy endQuantity], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, !v13))
  {
    endQuantity = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Middle Zone quantity cannot be nil"];
    v18 = endQuantity == 0;
    if (!endQuantity)
    {
LABEL_11:
      startQuantity3 = endQuantity;
      goto LABEL_12;
    }

    if (!error)
    {
LABEL_10:
      _HKLogDroppedError(endQuantity);
      v18 = 0;
      goto LABEL_11;
    }

LABEL_7:
    v19 = endQuantity;
    v18 = 0;
    *error = endQuantity;
    goto LABEL_11;
  }

  startQuantity2 = [zonesCopy startQuantity];
  v15 = [startQuantity2 isEqual:quantityCopy];

  if ((v15 & 1) == 0)
  {
    endQuantity = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"zone" class:objc_opt_class() selector:a2 format:@"Zone start quantity must match previous zone end quantity"];
    v18 = endQuantity == 0;
    if (!endQuantity)
    {
      goto LABEL_11;
    }

    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  startQuantity3 = [zonesCopy startQuantity];
  endQuantity = [zonesCopy endQuantity];
  v18 = [self _validateStartAndEnd:startQuantity3 end:endQuantity error:error];
LABEL_12:

  return v18;
}

+ (BOOL)_validateStartAndEnd:(id)end end:(id)a4 error:(id *)error
{
  endCopy = end;
  v9 = a4;
  if ([endCopy compare:v9] == 1 || !objc_msgSend(endCopy, "compare:", v9))
  {
    v11 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"start" class:objc_opt_class() selector:a2 format:@"Start quantity must be greater than end quantity"];
    v12 = v11;
    v10 = v11 == 0;
    if (v11)
    {
      if (error)
      {
        v13 = v11;
        *error = v12;
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

+ (BOOL)isFirstPartyForIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = @"com.apple.Fitness";
  v9 = @"com.apple.SessionTrackerApp";
  v10 = @"com.apple.Health";
  v3 = MEMORY[0x1E695DEC8];
  identifierCopy = identifier;
  v5 = [v3 arrayWithObjects:&v8 count:3];
  LOBYTE(v3) = [v5 containsObject:{identifierCopy, v8, v9, v10, v11}];

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

@end