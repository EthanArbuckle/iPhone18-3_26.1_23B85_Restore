@interface HKWorkoutDataSource
+ (BOOL)_isBLECollectedDataType:(id)type indoorWorkout:(BOOL)workout;
+ (BOOL)_shouldCollectDistanceForActivityType:(unint64_t)type isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch;
+ (BOOL)_shouldCollectRunningMetricTypesForActivityType:(unint64_t)type moveMode:(int64_t)mode connectedToFitnessMachine:(BOOL)machine isIndoor:(BOOL)indoor;
+ (BOOL)_shouldCollectSpeedForActivityType:(unint64_t)type isIndoor:(BOOL)indoor connectedToFitnessMachine:(BOOL)machine isAppleWatch:(BOOL)watch;
+ (id)_heartRateTypeForActivityType:(unint64_t)type;
+ (id)_stepCountTypeForActivityType:(unint64_t)type;
+ (id)defaultConfigurationWithWorkoutConfiguration:(id)configuration activityMoveMode:(int64_t)mode;
@end

@implementation HKWorkoutDataSource

+ (id)defaultConfigurationWithWorkoutConfiguration:(id)configuration activityMoveMode:(int64_t)mode
{
  v34 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v7 = configurationCopy;
  if (configurationCopy)
  {
    locationType = [configurationCopy locationType];
    v27 = v7;
    v9 = +[HKWorkoutDataSource observedTypesForActivityType:isIndoor:connectedToFitnessMachine:activityMode:](HKWorkoutDataSource, "observedTypesForActivityType:isIndoor:connectedToFitnessMachine:activityMode:", [v7 activityType], locationType == 2, 0, mode);
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
          v16 = [self _sourcePredicateForSampleType:v15 isIndoor:locationType == 2];
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

+ (BOOL)_isBLECollectedDataType:(id)type indoorWorkout:(BOOL)workout
{
  workoutCopy = workout;
  typeCopy = type;
  if (_isBLECollectedDataType_indoorWorkout__onceToken != -1)
  {
    +[HKWorkoutDataSource _isBLECollectedDataType:indoorWorkout:];
  }

  v6 = _isBLECollectedDataType_indoorWorkout___bleCollectedTypes;
  identifier = [typeCopy identifier];
  v8 = [v6 containsObject:identifier];

  if ((v8 & 1) == 0 && workoutCopy)
  {
    identifier2 = [typeCopy identifier];
    v8 = identifier2 == @"HKQuantityTypeIdentifierDistanceCycling";
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

+ (id)_heartRateTypeForActivityType:(unint64_t)type
{
  if ([self _shouldCollectHeartRateForActivityType:type])
  {
    v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierHeartRate"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_stepCountTypeForActivityType:(unint64_t)type
{
  if ([self _shouldCollectStepCountTypesForActivityType:type])
  {
    v3 = [HKObjectType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierStepCount"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_shouldCollectDistanceForActivityType:(unint64_t)type isIndoor:(BOOL)indoor isAppleWatch:(BOOL)watch
{
  v5 = type - 16;
  if (type - 16 > 0x37)
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
    if (watch)
    {
      return 1;
    }

    goto LABEL_5;
  }

  result = !indoor;
  if (!indoor && !watch)
  {
LABEL_5:
    v7 = type - 13;
    if (type - 13 > 0x3A)
    {
      return 0;
    }

    if (((1 << v7) & 0x600000004440001) != 0)
    {
      return !indoor;
    }

    return ((1 << v7) & 0x808001000800) != 0;
  }

  return result;
}

+ (BOOL)_shouldCollectSpeedForActivityType:(unint64_t)type isIndoor:(BOOL)indoor connectedToFitnessMachine:(BOOL)machine isAppleWatch:(BOOL)watch
{
  indoorCopy = indoor;
  if (type <= 34)
  {
    if (type == 13)
    {
      if (indoor)
      {
        goto LABEL_14;
      }

      return 0;
    }

    if (type != 31)
    {
      goto LABEL_14;
    }

LABEL_8:
    if (!indoor)
    {
      goto LABEL_14;
    }

    return 0;
  }

  switch(type)
  {
    case '<':
      goto LABEL_8;
    case '%':
      result = 0;
      if (indoor || machine)
      {
        return result;
      }

      break;
    case '#':
      goto LABEL_8;
  }

LABEL_14:
  v9 = +[_HKBehavior sharedBehavior];
  isAppleWatch = [v9 isAppleWatch];

  return (isAppleWatch & 1) != 0 || type <= 0x3C && ((1 << type) & 0x100000A880000000) != 0 && !indoorCopy;
}

+ (BOOL)_shouldCollectRunningMetricTypesForActivityType:(unint64_t)type moveMode:(int64_t)mode connectedToFitnessMachine:(BOOL)machine isIndoor:(BOOL)indoor
{
  result = 0;
  if (mode != 2 && !indoor && !machine)
  {
    return type == 37 && (HKCoreMotionSupportsRunningMetrics() & 1) != 0;
  }

  return result;
}

@end