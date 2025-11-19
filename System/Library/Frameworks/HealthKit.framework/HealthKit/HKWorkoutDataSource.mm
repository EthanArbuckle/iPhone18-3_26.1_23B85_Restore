@interface HKWorkoutDataSource
+ (BOOL)_isBLECollectedDataType:(id)a3 indoorWorkout:(BOOL)a4;
+ (BOOL)_shouldCollectDistanceForActivityType:(unint64_t)a3 isIndoor:(BOOL)a4 isAppleWatch:(BOOL)a5;
+ (BOOL)_shouldCollectRunningMetricTypesForActivityType:(unint64_t)a3 moveMode:(int64_t)a4 connectedToFitnessMachine:(BOOL)a5 isIndoor:(BOOL)a6;
+ (BOOL)_shouldCollectSpeedForActivityType:(unint64_t)a3 isIndoor:(BOOL)a4 connectedToFitnessMachine:(BOOL)a5 isAppleWatch:(BOOL)a6;
+ (id)_heartRateTypeForActivityType:(unint64_t)a3;
+ (id)_stepCountTypeForActivityType:(unint64_t)a3;
+ (id)defaultConfigurationWithWorkoutConfiguration:(id)a3 activityMoveMode:(int64_t)a4;
@end

@implementation HKWorkoutDataSource

+ (id)defaultConfigurationWithWorkoutConfiguration:(id)a3 activityMoveMode:(int64_t)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 locationType];
    v27 = v7;
    v9 = +[HKWorkoutDataSource observedTypesForActivityType:isIndoor:connectedToFitnessMachine:activityMode:](HKWorkoutDataSource, "observedTypesForActivityType:isIndoor:connectedToFitnessMachine:activityMode:", [v7 activityType], v8 == 2, 0, a4);
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = v9;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          v16 = [a1 _sourcePredicateForSampleType:v15 isIndoor:v8 == 2];
          v17 = [MEMORY[0x1E695DFD8] setWithObject:v15];
          v18 = [v16 hk_filterRepresentationForDataTypes:v17];
          [v10 setObject:v18 forKeyedSubscript:v15];
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    v19 = [HKWorkoutDataSourceConfiguration alloc];
    v20 = [MEMORY[0x1E695DFD8] set];
    v7 = v27;
    v21 = [(HKWorkoutDataSourceConfiguration *)v19 initWithWorkoutConfiguration:v27 sampleTypesToCollect:obj filters:v10 eventTypesToCollect:v20 collectsDefaultTypes:1];
  }

  else
  {
    v22 = [HKWorkoutDataSourceConfiguration alloc];
    v23 = [MEMORY[0x1E695DFD8] set];
    v24 = [MEMORY[0x1E695DFD8] set];
    v21 = [(HKWorkoutDataSourceConfiguration *)v22 initWithWorkoutConfiguration:0 sampleTypesToCollect:v23 filters:MEMORY[0x1E695E0F8] eventTypesToCollect:v24 collectsDefaultTypes:1];
  }

  v25 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (BOOL)_isBLECollectedDataType:(id)a3 indoorWorkout:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (_isBLECollectedDataType_indoorWorkout__onceToken != -1)
  {
    +[HKWorkoutDataSource _isBLECollectedDataType:indoorWorkout:];
  }

  v6 = _isBLECollectedDataType_indoorWorkout___bleCollectedTypes;
  v7 = [v5 identifier];
  v8 = [v6 containsObject:v7];

  if ((v8 & 1) == 0 && v4)
  {
    v9 = [v5 identifier];
    v8 = v9 == @"HKQuantityTypeIdentifierDistanceCycling";
  }

  return v8;
}

void __61__HKWorkoutDataSource__isBLECollectedDataType_indoorWorkout___block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = +[_HKBehavior sharedBehavior];
  v1 = [v0 features];
  if (([v1 HRCoordinator] & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 isRealityDevice];

  if (v3)
  {
LABEL_5:
    v10 = @"HKQuantityTypeIdentifierCyclingPower";
    v11 = @"HKQuantityTypeIdentifierCyclingCadence";
    v12 = @"HKQuantityTypeIdentifierCyclingSpeed";
    v13 = @"HKQuantityTypeIdentifierHeartRate";
    v4 = MEMORY[0x1E695DEC8];
    v5 = &v10;
    v6 = 4;
    goto LABEL_6;
  }

  v14 = @"HKQuantityTypeIdentifierCyclingPower";
  v15 = @"HKQuantityTypeIdentifierCyclingCadence";
  v16 = @"HKQuantityTypeIdentifierCyclingSpeed";
  v4 = MEMORY[0x1E695DEC8];
  v5 = &v14;
  v6 = 3;
LABEL_6:
  v7 = [v4 arrayWithObjects:v5 count:{v6, v10, v11, v12, v13, v14, v15, v16}];
  v8 = _isBLECollectedDataType_indoorWorkout___bleCollectedTypes;
  _isBLECollectedDataType_indoorWorkout___bleCollectedTypes = v7;

  v9 = *MEMORY[0x1E69E9840];
}

void __62__HKWorkoutDataSource__sourcePredicateForSampleType_isIndoor___block_invoke()
{
  v21[2] = *MEMORY[0x1E69E9840];
  v0 = +[HKSource _localDeviceSource];
  v1 = [HKQuery predicateForObjectsFromSource:v0];
  v2 = _sourcePredicateForSampleType_isIndoor__defaultPredicate;
  _sourcePredicateForSampleType_isIndoor__defaultPredicate = v1;

  v3 = +[HKSource _blePeripheralSource];
  v4 = [HKQuery predicateForObjectsFromSource:v3];
  v5 = _sourcePredicateForSampleType_isIndoor__bleSourcePredicate;
  _sourcePredicateForSampleType_isIndoor__bleSourcePredicate = v4;

  v6 = +[HKSource _hrCoordinatorSource];
  v7 = [HKQuery predicateForObjectsFromSource:v6];
  v8 = _sourcePredicateForSampleType_isIndoor__hrCoordinatorSourcePredicate;
  _sourcePredicateForSampleType_isIndoor__hrCoordinatorSourcePredicate = v7;

  v9 = +[HKQuery _predicateForObjectsFromLocalSyncIdentity];
  v10 = _sourcePredicateForSampleType_isIndoor__localSyncIdentityPredicate;
  _sourcePredicateForSampleType_isIndoor__localSyncIdentityPredicate = v9;

  v11 = MEMORY[0x1E696AB28];
  v21[0] = _sourcePredicateForSampleType_isIndoor__defaultPredicate;
  v21[1] = _sourcePredicateForSampleType_isIndoor__bleSourcePredicate;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v13 = [v11 orPredicateWithSubpredicates:v12];
  v14 = _sourcePredicateForSampleType_isIndoor__bleOrLocalSourcePredicate;
  _sourcePredicateForSampleType_isIndoor__bleOrLocalSourcePredicate = v13;

  v15 = MEMORY[0x1E696AB28];
  v20[0] = _sourcePredicateForSampleType_isIndoor__defaultPredicate;
  v20[1] = _sourcePredicateForSampleType_isIndoor__bleSourcePredicate;
  v20[2] = _sourcePredicateForSampleType_isIndoor__hrCoordinatorSourcePredicate;
  v20[3] = _sourcePredicateForSampleType_isIndoor__localSyncIdentityPredicate;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
  v17 = [v15 orPredicateWithSubpredicates:v16];
  v18 = _sourcePredicateForSampleType_isIndoor__allHRSourcesPredicate;
  _sourcePredicateForSampleType_isIndoor__allHRSourcesPredicate = v17;

  v19 = *MEMORY[0x1E69E9840];
}

+ (id)_heartRateTypeForActivityType:(unint64_t)a3
{
  if ([a1 _shouldCollectHeartRateForActivityType:a3])
  {
    v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_stepCountTypeForActivityType:(unint64_t)a3
{
  if ([a1 _shouldCollectStepCountTypesForActivityType:a3])
  {
    v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierStepCount"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_shouldCollectDistanceForActivityType:(unint64_t)a3 isIndoor:(BOOL)a4 isAppleWatch:(BOOL)a5
{
  v5 = a3 - 16;
  if (a3 - 16 > 0x37)
  {
    goto LABEL_14;
  }

  if (((1 << v5) & 0xC0100000888200) == 0)
  {
    if (((1 << v5) & 0x30000010000001) != 0)
    {
      return 0;
    }

LABEL_14:
    if (a5)
    {
      return 1;
    }

    goto LABEL_5;
  }

  result = !a4;
  if (!a4 && !a5)
  {
LABEL_5:
    v7 = a3 - 13;
    if (a3 - 13 > 0x3A)
    {
      return 0;
    }

    if (((1 << v7) & 0x600000004440001) != 0)
    {
      return !a4;
    }

    return ((1 << v7) & 0x808001000800) != 0;
  }

  return result;
}

+ (BOOL)_shouldCollectSpeedForActivityType:(unint64_t)a3 isIndoor:(BOOL)a4 connectedToFitnessMachine:(BOOL)a5 isAppleWatch:(BOOL)a6
{
  v6 = a4;
  if (a3 <= 34)
  {
    if (a3 == 13)
    {
      if (a4)
      {
        goto LABEL_14;
      }

      return 0;
    }

    if (a3 != 31)
    {
      goto LABEL_14;
    }

LABEL_8:
    if (!a4)
    {
      goto LABEL_14;
    }

    return 0;
  }

  switch(a3)
  {
    case '<':
      goto LABEL_8;
    case '%':
      result = 0;
      if (a4 || a5)
      {
        return result;
      }

      break;
    case '#':
      goto LABEL_8;
  }

LABEL_14:
  v9 = +[_HKBehavior sharedBehavior];
  v10 = [v9 isAppleWatch];

  return (v10 & 1) != 0 || a3 <= 0x3C && ((1 << a3) & 0x100000A880000000) != 0 && !v6;
}

+ (BOOL)_shouldCollectRunningMetricTypesForActivityType:(unint64_t)a3 moveMode:(int64_t)a4 connectedToFitnessMachine:(BOOL)a5 isIndoor:(BOOL)a6
{
  result = 0;
  if (a4 != 2 && !a6 && !a5)
  {
    return a3 == 37 && (HKCoreMotionSupportsRunningMetrics() & 1) != 0;
  }

  return result;
}

@end