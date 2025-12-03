@interface HKWorkout
+ (BOOL)_validateObjects:(id)objects forClass:(Class)class error:(id *)error;
+ (BOOL)_workoutWithActivityType:(unint64_t)type acceptsSubActivityType:(unint64_t)activityType;
+ (id)_allWorkoutActivityTypes;
+ (id)_allWorkoutTypeNames;
+ (id)_statisticsFromTotalActiveEnergyBurned:(id)burned totalBasalEnergyBurned:(id)energyBurned totalDistance:(id)distance totalSwimmingStrokeCount:(id)count totalFlightsClimbed:(id)climbed workoutActivityType:(unint64_t)type startDate:(id)date endDate:(id)self0;
+ (id)_stringFromWorkoutActivityType:(unint64_t)type;
+ (id)_workoutWithActivityType:(unint64_t)type startDate:(id)date endDate:(id)endDate workoutEvents:(id)events workoutActivities:(id)activities duration:(double)duration statistics:(id)statistics goalType:(unint64_t)self0 goal:(id)self1 device:(id)self2 metadata:(id)self3;
+ (id)_workoutWithActivityType:(unint64_t)type startDate:(id)date endDate:(id)endDate workoutEvents:(id)events workoutActivities:(id)activities duration:(double)duration totalActiveEnergyBurned:(id)burned totalBasalEnergyBurned:(id)self0 totalDistance:(id)self1 totalSwimmingStrokeCount:(id)self2 totalFlightsClimbed:(id)self3 goalType:(unint64_t)self4 goal:(id)self5 device:(id)self6 metadata:(id)self7;
+ (unint64_t)_workoutActivityTypeFromString:(id)string;
- (BOOL)acceptsAssociationWithObject:(id)object;
- (HKQuantity)_totalBasalEnergyBurned;
- (HKQuantity)totalDistance;
- (HKQuantity)totalEnergyBurned;
- (HKQuantity)totalFlightsClimbed;
- (HKQuantity)totalSwimmingStrokeCount;
- (HKWorkout)initWithCoder:(id)coder;
- (HKWorkoutActivityType)workoutActivityType;
- (NSArray)workoutActivities;
- (NSArray)workoutEvents;
- (NSString)description;
- (double)_goalInCanonicalUnit;
- (double)_totalBasalEnergyBurnedInCanonicalUnit;
- (double)_totalDistanceInCanonicalUnit;
- (double)_totalDistanceIncludingAllTypesForUnit:(id)unit;
- (double)_totalEnergyBurnedInCanonicalUnit;
- (double)_totalFlightsClimbedInCanonicalUnit;
- (double)_totalSwimmingStrokeCountInCanonicalUnit;
- (id)_deepCopy;
- (id)_detailedDescriptionComponents;
- (id)_detailedDescriptionString;
- (id)_routeSmoothingActivities;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)_validateWorkoutActivities:(id)activities withConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)_validateWorkoutEvents:(id)events withConfiguration:(HKObjectValidationConfiguration)configuration;
- (id)subObjectFromUUID:(id)d;
- (int64_t)_activityMoveMode;
- (void)_enumerateActiveTimePeriods:(id)periods;
- (void)_enumerateTimePeriodsWithBlock:(id)block;
- (void)_setTotalBasalEnergyBurned:(id)burned;
- (void)_setTotalDistance:(id)distance;
- (void)_setTotalEnergyBurned:(id)burned;
- (void)_setTotalFlightsClimbed:(id)climbed;
- (void)_setTotalSwimmingStrokeCount:(id)count;
- (void)_setUUID:(id)d;
- (void)_setWorkoutEvents:(id)events;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKWorkout

- (HKWorkoutActivityType)workoutActivityType
{
  if (HKProgramSDKAtLeast())
  {
    return self->_workoutActivityType;
  }

  if (HKProgramSDKAtLeast())
  {
    workoutActivityType = self->_workoutActivityType;
    v5 = workoutActivityType == HKWorkoutActivityTypeUnderwaterDiving;
LABEL_7:
    v6 = HKWorkoutActivityTypeOther;
LABEL_8:
    if (v5)
    {
      return v6;
    }

    else
    {
      return workoutActivityType;
    }
  }

  if (HKProgramSDKAtLeast())
  {
    workoutActivityType = self->_workoutActivityType;
    v5 = (workoutActivityType & 0xFFFFFFFFFFFFFFFELL) == 82;
    goto LABEL_7;
  }

  if (HKProgramSDKAtLeast())
  {
    v7 = self->_workoutActivityType;
    v8 = v7 - 77 >= 4;
  }

  else
  {
    if (!HKProgramSDKAtLeast())
    {
      v9 = HKProgramSDKAtLeast();
      workoutActivityType = self->_workoutActivityType;
      v6 = HKWorkoutActivityTypeOther;
      if (workoutActivityType - 58 >= 0xE)
      {
        v6 = self->_workoutActivityType;
      }

      if (workoutActivityType - 72 < 3)
      {
        workoutActivityType = HKWorkoutActivityTypeOther;
      }

      v5 = v9 == 0;
      goto LABEL_8;
    }

    v7 = self->_workoutActivityType;
    v8 = v7 - 75 >= 2;
  }

  if (v8)
  {
    return v7;
  }

  else
  {
    return 3000;
  }
}

- (HKQuantity)totalEnergyBurned
{
  v3 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierActiveEnergyBurned"];
  v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
  sumQuantity = [v4 sumQuantity];

  return sumQuantity;
}

- (HKQuantity)_totalBasalEnergyBurned
{
  v3 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
  v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
  sumQuantity = [v4 sumQuantity];

  return sumQuantity;
}

- (HKQuantity)totalDistance
{
  v3 = _HKWorkoutDistanceTypeForActivityType([(HKWorkout *)self workoutActivityType]);
  if (v3)
  {
    v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
    sumQuantity = [v4 sumQuantity];
  }

  else
  {
    sumQuantity = 0;
  }

  return sumQuantity;
}

- (HKQuantity)totalSwimmingStrokeCount
{
  v3 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierSwimmingStrokeCount"];
  v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
  sumQuantity = [v4 sumQuantity];

  return sumQuantity;
}

- (HKQuantity)totalFlightsClimbed
{
  v3 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierFlightsClimbed"];
  v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
  sumQuantity = [v4 sumQuantity];

  return sumQuantity;
}

- (NSArray)workoutEvents
{
  v3 = HKProgramSDKAtLeast();
  workoutEvents = self->_workoutEvents;
  if (v3)
  {
    v5 = workoutEvents;
  }

  else
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_616];
    v5 = [(NSArray *)workoutEvents filteredArrayUsingPredicate:v6];
  }

  return v5;
}

- (void)_enumerateTimePeriodsWithBlock:(id)block
{
  v38 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  workoutEvents = [(HKWorkout *)self workoutEvents];
  v7 = [workoutEvents count] == 0;

  if (v7)
  {
    startDate = [(HKSample *)self startDate];
    endDate = [(HKSample *)self endDate];
    [(HKWorkout *)self duration];
    v11 = v10;
    [endDate timeIntervalSinceDate:startDate];
    v13 = v12;
    if (v11 <= 0.00000011920929 || v12 - v11 <= 0.00000011920929)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate endDate:endDate];
      [v5 addObject:v16];
      v11 = v13;
      v15 = endDate;
    }

    else
    {
      v14 = MEMORY[0x1E695DF00];
      [(HKWorkout *)self duration];
      v15 = [v14 dateWithTimeInterval:startDate sinceDate:?];

      v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate endDate:v15];
      [v5 addObject:v16];
    }

    v34[3] = v11;
  }

  else
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __74__HKWorkout_HKWorkoutDataSourceUtilities___enumerateTimePeriodsWithBlock___block_invoke;
    v30[3] = &unk_1E737F578;
    v31 = v5;
    v32 = &v33;
    [(HKWorkout *)self _enumerateActiveTimePeriods:v30];
    startDate = v31;
  }

  [(HKWorkout *)self duration];
  if (v17 - v34[3] <= 0.1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    endDate2 = v5;
    v22 = [endDate2 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v22)
    {
      v23 = *v27;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(endDate2);
          }

          blockCopy[2](blockCopy, *(*(&v26 + 1) + 8 * i));
        }

        v22 = [endDate2 countByEnumeratingWithState:&v26 objects:v37 count:16];
      }

      while (v22);
    }
  }

  else
  {
    endDate2 = [(HKSample *)self endDate];
    [(HKWorkout *)self duration];
    v20 = [endDate2 dateByAddingTimeInterval:-v19];
    v21 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v20 endDate:endDate2];
    (blockCopy)[2](blockCopy, v21);
  }

  _Block_object_dispose(&v33, 8);
  v25 = *MEMORY[0x1E69E9840];
}

double __74__HKWorkout_HKWorkoutDataSourceUtilities___enumerateTimePeriodsWithBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x1E696AB80];
  v7 = a3;
  v8 = a2;
  v9 = [[v6 alloc] initWithStartDate:v8 endDate:v7];
  [v5 addObject:v9];

  [v7 timeIntervalSinceDate:v8];
  v11 = v10;

  v12 = *(*(a1 + 40) + 8);
  result = v11 + *(v12 + 24);
  *(v12 + 24) = result;
  return result;
}

+ (id)_workoutWithActivityType:(unint64_t)type startDate:(id)date endDate:(id)endDate workoutEvents:(id)events workoutActivities:(id)activities duration:(double)duration totalActiveEnergyBurned:(id)burned totalBasalEnergyBurned:(id)self0 totalDistance:(id)self1 totalSwimmingStrokeCount:(id)self2 totalFlightsClimbed:(id)self3 goalType:(unint64_t)self4 goal:(id)self5 device:(id)self6 metadata:(id)self7
{
  metadataCopy = metadata;
  deviceCopy = device;
  goalCopy = goal;
  activitiesCopy = activities;
  eventsCopy = events;
  endDateCopy = endDate;
  dateCopy = date;
  v31 = [self _statisticsFromTotalActiveEnergyBurned:burned totalBasalEnergyBurned:energyBurned totalDistance:distance totalSwimmingStrokeCount:count totalFlightsClimbed:climbed workoutActivityType:type startDate:dateCopy endDate:endDateCopy];
  v32 = [self _workoutWithActivityType:type startDate:dateCopy endDate:endDateCopy workoutEvents:eventsCopy workoutActivities:activitiesCopy duration:v31 statistics:duration goalType:goalType goal:goalCopy device:deviceCopy metadata:metadataCopy];

  return v32;
}

+ (id)_statisticsFromTotalActiveEnergyBurned:(id)burned totalBasalEnergyBurned:(id)energyBurned totalDistance:(id)distance totalSwimmingStrokeCount:(id)count totalFlightsClimbed:(id)climbed workoutActivityType:(unint64_t)type startDate:(id)date endDate:(id)self0
{
  burnedCopy = burned;
  energyBurnedCopy = energyBurned;
  distanceCopy = distance;
  countCopy = count;
  climbedCopy = climbed;
  dateCopy = date;
  endDateCopy = endDate;
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = off_1E7375000;
  if (burnedCopy)
  {
    v23 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierActiveEnergyBurned"];
    v24 = _HKStatisticsForTotal(v23, burnedCopy, dateCopy, endDateCopy);
    [v21 setObject:v24 forKeyedSubscript:v23];

    v22 = off_1E7375000;
  }

  if (energyBurnedCopy)
  {
    v25 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
    v26 = _HKStatisticsForTotal(v25, energyBurnedCopy, dateCopy, endDateCopy);
    [v21 setObject:v26 forKeyedSubscript:v25];

    v22 = off_1E7375000;
  }

  if (distanceCopy)
  {
    v27 = _HKWorkoutDistanceTypeForActivityType(type);
    v28 = v27;
    if (v27)
    {
      v29 = _HKStatisticsForTotal(v27, distanceCopy, dateCopy, endDateCopy);
      [v21 setObject:v29 forKeyedSubscript:v28];

      v22 = off_1E7375000;
    }
  }

  if (countCopy)
  {
    v30 = [(__objc2_class *)v22[120] quantityTypeForIdentifier:@"HKQuantityTypeIdentifierSwimmingStrokeCount"];
    v31 = _HKStatisticsForTotal(v30, countCopy, dateCopy, endDateCopy);
    [v21 setObject:v31 forKeyedSubscript:v30];

    v22 = off_1E7375000;
  }

  if (climbedCopy)
  {
    v32 = [(__objc2_class *)v22[120] quantityTypeForIdentifier:@"HKQuantityTypeIdentifierFlightsClimbed"];
    v33 = _HKStatisticsForTotal(v32, climbedCopy, dateCopy, endDateCopy);
    [v21 setObject:v33 forKeyedSubscript:v32];
  }

  return v21;
}

+ (id)_workoutWithActivityType:(unint64_t)type startDate:(id)date endDate:(id)endDate workoutEvents:(id)events workoutActivities:(id)activities duration:(double)duration statistics:(id)statistics goalType:(unint64_t)self0 goal:(id)self1 device:(id)self2 metadata:(id)self3
{
  dateCopy = date;
  endDateCopy = endDate;
  eventsCopy = events;
  activitiesCopy = activities;
  statisticsCopy = statistics;
  goalCopy = goal;
  deviceCopy = device;
  metadataCopy = metadata;
  v25 = +[HKObjectType workoutType];
  if (dateCopy)
  {
    [dateCopy timeIntervalSinceReferenceDate];
    v27 = v26;
    if (endDateCopy)
    {
LABEL_3:
      [endDateCopy timeIntervalSinceReferenceDate];
      v29 = v28;
      goto LABEL_6;
    }
  }

  else
  {
    v27 = 2.22507386e-308;
    if (endDateCopy)
    {
      goto LABEL_3;
    }
  }

  v29 = 2.22507386e-308;
LABEL_6:
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __138__HKWorkout__workoutWithActivityType_startDate_endDate_workoutEvents_workoutActivities_duration_statistics_goalType_goal_device_metadata___block_invoke;
  v42[3] = &unk_1E7384588;
  durationCopy = duration;
  v43 = eventsCopy;
  v44 = dateCopy;
  v45 = endDateCopy;
  v46 = activitiesCopy;
  v47 = metadataCopy;
  v48 = statisticsCopy;
  goalTypeCopy = goalType;
  v49 = goalCopy;
  typeCopy = type;
  v30 = goalCopy;
  v31 = statisticsCopy;
  v32 = metadataCopy;
  v33 = activitiesCopy;
  v34 = endDateCopy;
  v35 = dateCopy;
  v36 = eventsCopy;
  v37 = [self _newSampleWithType:v25 startDate:deviceCopy endDate:v32 device:v42 metadata:v27 config:v29];

  return v37;
}

void __138__HKWorkout__workoutWithActivityType_startDate_endDate_workoutEvents_workoutActivities_duration_statistics_goalType_goal_device_metadata___block_invoke(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v3[12] = *(a1 + 88);
  v4 = &OBJC_IVAR___HKFeatureAvailabilityRequirementEvaluationDataSource__userNotificationSettingsDataSource;
  if ([*(a1 + 32) count])
  {
    v5 = [*(a1 + 32) sortedArrayUsingComparator:&__block_literal_global_126];
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      v11 = 2;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [v13 type];
          if ((v11 - 1) > 1 || v11 != v14)
          {
            v11 = [v13 type];
            [v6 addObject:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    v4 = &OBJC_IVAR___HKFeatureAvailabilityRequirementEvaluationDataSource__userNotificationSettingsDataSource;
    objc_storeStrong(v3 + 14, v6);
  }

  else
  {
    v6 = 0;
  }

  v15 = *(a1 + 96);
  if (v15 <= 0.0)
  {
    v15 = _HKCalculateWorkoutDuration(*(a1 + 40), *(a1 + 48), v3[14]);
  }

  *(v3 + 13) = v15;
  if ([v6 count] && objc_msgSend(*(a1 + 56), "count"))
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = *(a1 + 56);
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v30 + 1) + 8 * j) copy];
          [v22 _filterAndSetWorkoutEvents:v6];
          [v16 addObject:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v19);
    }

    v4 = &OBJC_IVAR___HKFeatureAvailabilityRequirementEvaluationDataSource__userNotificationSettingsDataSource;
  }

  else
  {
    v16 = [*(a1 + 56) copy];
  }

  v23 = v3[19];
  v3[19] = v16;

  v24 = _HKWorkoutConfigurationWithActivityTypeAndMetadata(*(a1 + 88), *(a1 + 64));
  v25 = [HKWorkoutActivity alloc];
  v26 = [v3 UUID];
  v27 = [(HKWorkoutActivity *)v25 _initWithUUID:v26 workoutConfiguration:v24 startDate:*(a1 + 40) endDate:*(a1 + 48) workoutEvents:*(v3 + v4[166]) startsPaused:0 duration:*(v3 + 13) metadata:0 statisticsPerType:*(a1 + 72)];
  v28 = v3[18];
  v3[18] = v27;

  v3[15] = *(a1 + 104);
  objc_storeStrong(v3 + 16, *(a1 + 80));

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t __138__HKWorkout__workoutWithActivityType_startDate_endDate_workoutEvents_workoutActivities_duration_statistics_goalType_goal_device_metadata___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateInterval];
  v6 = [v5 startDate];
  v7 = [v4 dateInterval];

  v8 = [v7 startDate];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)_deepCopy
{
  v26 = [(NSArray *)self->_subActivities hk_map:&__block_literal_global_101_1];
  v3 = objc_opt_class();
  workoutActivityType = self->_workoutActivityType;
  startDate = [(HKSample *)self startDate];
  v5 = [startDate copy];
  endDate = [(HKSample *)self endDate];
  v23 = [endDate copy];
  v21 = [(NSArray *)self->_workoutEvents copy];
  duration = self->_duration;
  allStatistics = [(HKWorkoutActivity *)self->_primaryActivity allStatistics];
  _goalType = [(HKWorkout *)self _goalType];
  v8 = [(HKQuantity *)self->_goal copy];
  device = [(HKObject *)self device];
  v10 = [device copy];
  metadata = [(HKObject *)self metadata];
  v12 = [metadata copy];
  v22 = [v3 _workoutWithActivityType:workoutActivityType startDate:v5 endDate:v23 workoutEvents:v21 workoutActivities:v26 duration:allStatistics statistics:duration goalType:_goalType goal:v8 device:v10 metadata:v12];

  sourceRevision = [(HKObject *)self sourceRevision];
  v14 = [sourceRevision copy];
  [v22 _setSourceRevision:v14];

  _primaryActivity = [(HKWorkout *)self _primaryActivity];
  _deepCopy = [_primaryActivity _deepCopy];
  [v22 _setPrimaryActivity:_deepCopy];

  v17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_zonesByType copyItems:1];
  [v22 _setZonesByType:v17];
  v18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_workoutZonesByType copyItems:1];
  [v22 _setWorkoutZonesByType:v18];

  return v22;
}

+ (id)_stringFromWorkoutActivityType:(unint64_t)type
{
  _activityTypeMappings = [self _activityTypeMappings];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__HKWorkout__stringFromWorkoutActivityType___block_invoke;
  v8[3] = &__block_descriptor_40_e35_B32__0__NSString_8__NSNumber_16_B24l;
  v8[4] = type;
  v5 = [_activityTypeMappings keysOfEntriesPassingTest:v8];

  anyObject = [v5 anyObject];

  return anyObject;
}

+ (unint64_t)_workoutActivityTypeFromString:(id)string
{
  stringCopy = string;
  _activityTypeMappings = [self _activityTypeMappings];
  v6 = [_activityTypeMappings objectForKeyedSubscript:stringCopy];

  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

+ (id)_allWorkoutTypeNames
{
  _activityTypeMappings = [self _activityTypeMappings];
  allKeys = [_activityTypeMappings allKeys];

  return allKeys;
}

+ (id)_allWorkoutActivityTypes
{
  _activityTypeMappings = [self _activityTypeMappings];
  allValues = [_activityTypeMappings allValues];

  return allValues;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  workoutActivityType = self->_workoutActivityType;
  v9.receiver = self;
  v9.super_class = HKWorkout;
  v6 = [(HKSample *)&v9 description];
  v7 = [v3 stringWithFormat:@"<%@> (%ld) %@", v4, workoutActivityType, v6];

  return v7;
}

- (id)_detailedDescriptionComponents
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = MEMORY[0x1E696AEC0];
  v5 = _HKWorkoutActivityNameForActivityType(self->_workoutActivityType);
  v6 = [v4 stringWithFormat:@"activity=%@", v5];
  [v3 addObject:v6];

  v7 = MEMORY[0x1E696AEC0];
  startDate = [(HKSample *)self startDate];
  v9 = [v7 stringWithFormat:@"startDate=%@", startDate];
  [v3 addObject:v9];

  v10 = MEMORY[0x1E696AEC0];
  endDate = [(HKSample *)self endDate];
  v12 = [v10 stringWithFormat:@"endDate=%@", endDate];
  [v3 addObject:v12];

  v13 = MEMORY[0x1E696AEC0];
  [(HKWorkout *)self duration];
  v15 = [v13 stringWithFormat:@"duration=%f", v14];
  [v3 addObject:v15];

  allStatistics = [(HKWorkout *)self allStatistics];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __43__HKWorkout__detailedDescriptionComponents__block_invoke;
  v25 = &unk_1E73845F0;
  v17 = v3;
  v26 = v17;
  [allStatistics enumerateKeysAndObjectsUsingBlock:&v22];

  v18 = MEMORY[0x1E696AEC0];
  metadata = [(HKObject *)self metadata];
  v20 = [v18 stringWithFormat:@"metadata=%@", metadata, v22, v23, v24, v25];
  [v17 addObject:v20];

  return v17;
}

void __43__HKWorkout__detailedDescriptionComponents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v15 aggregationStyle];
  if ((v6 - 1) >= 2)
  {
    if (v6)
    {
      v8 = *(a1 + 32);
      v12 = MEMORY[0x1E696AEC0];
      v10 = [v15 identifier];
      [v12 stringWithFormat:@"%@=<Statistic output not set>", v10];
      goto LABEL_8;
    }

    v8 = *(a1 + 32);
    v9 = MEMORY[0x1E696AEC0];
    v10 = [v15 identifier];
    v11 = [v5 sumQuantity];
    goto LABEL_11;
  }

  v7 = [v15 code];
  v8 = *(a1 + 32);
  v9 = MEMORY[0x1E696AEC0];
  if (v7 != 277)
  {
    if (v7 == 269)
    {
      v10 = [v5 maximumQuantity];
      [v9 stringWithFormat:@"max_underwaterDepth=%@", v10];
      v13 = LABEL_8:;
      [v8 addObject:v13];
      goto LABEL_13;
    }

    v10 = [v15 identifier];
    v11 = [v5 averageQuantity];
LABEL_11:
    v13 = v11;
    [v9 stringWithFormat:@"%@=%@", v10, v11];
    goto LABEL_12;
  }

  v10 = [v5 minimumQuantity];
  v13 = [v5 maximumQuantity];
  [v9 stringWithFormat:@"waterTemperature=%@-%@", v10, v13];
  v14 = LABEL_12:;
  [v8 addObject:v14];

LABEL_13:
}

- (id)_detailedDescriptionString
{
  _detailedDescriptionComponents = [(HKWorkout *)self _detailedDescriptionComponents];
  v3 = [_detailedDescriptionComponents componentsJoinedByString:{@", "}];

  return v3;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)configuration
{
  var1 = configuration.var1;
  var0 = configuration.var0;
  v57[1] = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = HKWorkout;
  var1 = [(HKSample *)&v55 _validateWithConfiguration:?];
  if (var1)
  {
    goto LABEL_2;
  }

  sampleType = [(HKSample *)self sampleType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    sampleType2 = [(HKSample *)self sampleType];
    var12 = [v15 hk_errorForInvalidArgument:@"@" class:v16 selector:a2 format:{@"Invalid workout type %@", sampleType2}];

    goto LABEL_3;
  }

  var1 = [(HKWorkout *)self _validateWorkoutEvents:self->_workoutEvents withConfiguration:var0, var1];
  if (var1 || ([(HKWorkout *)self _validateWorkoutActivities:self->_subActivities withConfiguration:var0, var1], (var1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_2:
    var12 = var1;
    goto LABEL_3;
  }

  if (self->_primaryActivity)
  {
    v57[0] = self->_primaryActivity;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    var12 = [(HKWorkout *)self _validateWorkoutActivities:v13 withConfiguration:var0, var1];

    if (var12)
    {
      goto LABEL_3;
    }

    primaryActivity = self->_primaryActivity;
  }

  else
  {
    primaryActivity = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [(HKWorkoutActivity *)primaryActivity allStatistics];
  v18 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (!v18)
  {
    goto LABEL_29;
  }

  v19 = v18;
  v50 = *v52;
  while (2)
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v52 != v50)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v51 + 1) + 8 * i);
      v22 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v21];
      canonicalUnit = [v21 canonicalUnit];
      sumQuantity = [v22 sumQuantity];
      if (sumQuantity)
      {
        v25 = sumQuantity;
        sumQuantity2 = [v22 sumQuantity];
        v27 = [sumQuantity2 isCompatibleWithUnit:canonicalUnit];

        if ((v27 & 1) == 0)
        {
          v43 = MEMORY[0x1E696ABC0];
          v44 = objc_opt_class();
          identifier = [v21 identifier];
          sumQuantity3 = [v22 sumQuantity];
          v47 = sumQuantity3;
          v48 = @"Incompatible unit for %@ sum quantity, received %@";
LABEL_36:
          var12 = [v43 hk_errorForInvalidArgument:@"@" class:v44 selector:a2 format:{v48, identifier, sumQuantity3}];

          goto LABEL_3;
        }
      }

      averageQuantity = [v22 averageQuantity];
      if (averageQuantity)
      {
        v29 = averageQuantity;
        averageQuantity2 = [v22 averageQuantity];
        v31 = [averageQuantity2 isCompatibleWithUnit:canonicalUnit];

        if ((v31 & 1) == 0)
        {
          v43 = MEMORY[0x1E696ABC0];
          v44 = objc_opt_class();
          identifier = [v21 identifier];
          sumQuantity3 = [v22 averageQuantity];
          v47 = sumQuantity3;
          v48 = @"Incompatible unit for %@ average quantity, received %@";
          goto LABEL_36;
        }
      }

      minimumQuantity = [v22 minimumQuantity];
      if (minimumQuantity)
      {
        v33 = minimumQuantity;
        minimumQuantity2 = [v22 minimumQuantity];
        v35 = [minimumQuantity2 isCompatibleWithUnit:canonicalUnit];

        if ((v35 & 1) == 0)
        {
          v43 = MEMORY[0x1E696ABC0];
          v44 = objc_opt_class();
          identifier = [v21 identifier];
          sumQuantity3 = [v22 minimumQuantity];
          v47 = sumQuantity3;
          v48 = @"Incompatible unit for %@ minimum quantity, received %@";
          goto LABEL_36;
        }
      }

      maximumQuantity = [v22 maximumQuantity];
      if (maximumQuantity)
      {
        v37 = maximumQuantity;
        maximumQuantity2 = [v22 maximumQuantity];
        v39 = [maximumQuantity2 isCompatibleWithUnit:canonicalUnit];

        if ((v39 & 1) == 0)
        {
          v43 = MEMORY[0x1E696ABC0];
          v44 = objc_opt_class();
          identifier = [v21 identifier];
          sumQuantity3 = [v22 maximumQuantity];
          v47 = sumQuantity3;
          v48 = @"Incompatible unit for %@ maximum quantity, received %@";
          goto LABEL_36;
        }
      }
    }

    v19 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v19)
    {
      continue;
    }

    break;
  }

LABEL_29:

  if ((_HKWorkoutGoalTypeAcceptsQuantity(self->_goalType, self->_goal) & 1) == 0)
  {
    v40 = MEMORY[0x1E696ABC0];
    v41 = objc_opt_class();
    goal = self->_goal;
    var1 = [v40 hk_errorForInvalidArgument:@"@" class:v41 selector:a2 format:{@"Incompatible goal (%@) for goal type %ld", goal, self->_goalType}];
    goto LABEL_2;
  }

  var12 = 0;
LABEL_3:
  v9 = *MEMORY[0x1E69E9840];

  return var12;
}

- (id)_validateWorkoutEvents:(id)events withConfiguration:(HKObjectValidationConfiguration)configuration
{
  var1 = configuration.var1;
  var0 = configuration.var0;
  eventsCopy = events;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__53;
  v21 = __Block_byref_object_dispose__53;
  v22 = 0;
  firstObject = [eventsCopy firstObject];
  v10 = firstObject;
  if (firstObject && [firstObject type] == 2)
  {
    v11 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:a2 format:{@"First event cannot be resume, workouts begin in the running state"}];
    v12 = v18[5];
    v18[5] = v11;
  }

  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 2;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __54__HKWorkout__validateWorkoutEvents_withConfiguration___block_invoke;
  v15[3] = &unk_1E7384618;
  v15[6] = v16;
  v15[7] = var0;
  v15[4] = self;
  v15[5] = &v17;
  v15[8] = var1;
  v15[9] = a2;
  [eventsCopy enumerateObjectsUsingBlock:v15];
  v13 = v18[5];
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(&v17, 8);

  return v13;
}

void __54__HKWorkout__validateWorkoutEvents_withConfiguration___block_invoke(uint64_t a1, void *a2)
{
  v31 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v22 = MEMORY[0x1E696ABC0];
    v23 = *(a1 + 32);
    v24 = objc_opt_class();
    v25 = [v22 hk_errorForInvalidArgument:@"@" class:v24 selector:*(a1 + 72) format:{@"Workout events must be of class %@, received (%@)", objc_opt_class(), v31}];
    v26 = *(*(a1 + 40) + 8);
    v16 = *(v26 + 40);
    *(v26 + 40) = v25;
    goto LABEL_11;
  }

  v3 = [v31 _validateWithConfiguration:{*(a1 + 56), *(a1 + 64)}];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [v31 type];
  v7 = v6;
  v8 = *(*(a1 + 48) + 8);
  if ((v6 - 1) <= 1 && v6 == *(v8 + 24))
  {
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 72) format:{@"Two pause/resume workout events with the same type occurred in a row: (%ld) and (%ld)", *(*(*(a1 + 48) + 8) + 24), v7}];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    v8 = *(*(a1 + 48) + 8);
  }

  *(v8 + 24) = v7;
  v13 = objc_alloc(MEMORY[0x1E696AB80]);
  v14 = [*(a1 + 32) startDate];
  v15 = [*(a1 + 32) endDate];
  v16 = [v13 initWithStartDate:v14 endDate:v15];

  v17 = [v31 dateInterval];
  v18 = [v17 startDate];
  if (([v16 containsDate:v18] & 1) == 0)
  {

    goto LABEL_10;
  }

  v19 = [v31 dateInterval];
  v20 = [v19 endDate];
  v21 = [v16 containsDate:v20];

  if ((v21 & 1) == 0)
  {
LABEL_10:
    v27 = *(a1 + 32);
    v28 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 72) format:{@"Workout event (%@) did not occur during this workout", v31}];
    v29 = *(*(a1 + 40) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
  }

LABEL_11:
}

- (id)_validateWorkoutActivities:(id)activities withConfiguration:(HKObjectValidationConfiguration)configuration
{
  var1 = configuration.var1;
  var0 = configuration.var0;
  activitiesCopy = activities;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__53;
  v16 = __Block_byref_object_dispose__53;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__HKWorkout__validateWorkoutActivities_withConfiguration___block_invoke;
  v11[3] = &unk_1E7384640;
  v11[6] = var0;
  v11[7] = var1;
  v11[4] = self;
  v11[5] = &v12;
  v11[8] = a2;
  [activitiesCopy enumerateObjectsUsingBlock:v11];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __58__HKWorkout__validateWorkoutActivities_withConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v22 = a2;
  v6 = [v22 _validateWithConfiguration:{*(a1 + 48), *(a1 + 56)}];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v9 = 1;
    goto LABEL_11;
  }

  v10 = objc_alloc(MEMORY[0x1E696AB80]);
  v11 = [*(a1 + 32) startDate];
  v12 = [*(a1 + 32) endDate];
  v13 = [v10 initWithStartDate:v11 endDate:v12];

  v14 = [v22 startDate];
  if (([v13 containsDate:v14] & 1) == 0)
  {

LABEL_8:
    v19 = *(a1 + 32);
    v20 = [MEMORY[0x1E696ABC0] hk_errorForInvalidArgument:@"@" class:objc_opt_class() selector:*(a1 + 64) format:{@"Workout activity (%@) did not occur during this workout", v22}];
    v21 = *(*(a1 + 40) + 8);
    v14 = *(v21 + 40);
    *(v21 + 40) = v20;
    goto LABEL_9;
  }

  v15 = [v22 endDate];
  if (v15)
  {
    v16 = v15;
    v17 = [v22 endDate];
    v18 = [v13 containsDate:v17];

    if (v18)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

LABEL_9:

LABEL_10:
  v9 = *(*(*(a1 + 40) + 8) + 40) != 0;
LABEL_11:
  *a4 = v9;
}

- (void)_setUUID:(id)d
{
  v5.receiver = self;
  v5.super_class = HKWorkout;
  dCopy = d;
  [(HKObject *)&v5 _setUUID:dCopy];
  [(HKWorkoutActivity *)self->_primaryActivity _setUUID:dCopy, v5.receiver, v5.super_class];
}

- (BOOL)acceptsAssociationWithObject:(id)object
{
  objectCopy = object;
  v4 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierWorkoutEffortScore"];
  v5 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"];
  sampleType = [objectCopy sampleType];
  if ([sampleType isEqual:v4])
  {
    v7 = 1;
  }

  else
  {
    sampleType2 = [objectCopy sampleType];
    v7 = [sampleType2 isEqual:v5];
  }

  return v7;
}

- (id)subObjectFromUUID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  _subActivities = [(HKWorkout *)self _subActivities];
  v6 = [_subActivities countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(_subActivities);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        uUID = [v9 UUID];
        uUIDString = [uUID UUIDString];
        uUIDString2 = [dCopy UUIDString];
        v13 = [uUIDString isEqualToString:uUIDString2];

        if (v13)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [_subActivities countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (BOOL)_validateObjects:(id)objects forClass:(Class)class error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  if (![objectsCopy count])
  {
    [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{@"%@: %@ data cannot be nil or empty.", objc_opt_class(), class}];
    v24 = 0;
    goto LABEL_26;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = objectsCopy;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v8)
  {
    v23 = 1;
    goto LABEL_25;
  }

  v9 = v8;
  errorCopy = error;
  v10 = *v39;
  v35 = objectsCopy;
  v11 = off_1E7375000;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v39 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v38 + 1) + 8 * i);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = MEMORY[0x1E696ABC0];
        v26 = objc_opt_class();
        [v25 hk_assignError:errorCopy code:3 format:{@"%@: Invalid object of type %@. Expecting %@.", v26, objc_opt_class(), class}];
        v23 = 0;
        LOBYTE(error) = 0;
        goto LABEL_24;
      }

      v14 = v11[136];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v15 = v10;
      classCopy = class;
      v17 = v11;
      v18 = v13;
      v19 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierWorkoutEffortScore"];
      v20 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"];
      sampleType = [v18 sampleType];
      v37 = v19;
      if ([sampleType isEqual:v19])
      {

LABEL_19:
        error = MEMORY[0x1E696ABC0];
        v27 = objc_opt_class();
        sampleType2 = [v18 sampleType];
        v29 = [error hk_error:3 format:{@"%@: Sample of type %@ must be related to a workout", v27, sampleType2}];
        v30 = v29;
        LOBYTE(error) = v29 == 0;
        if (v29)
        {
          if (errorCopy)
          {
            v31 = v29;
            *errorCopy = v30;
          }

          else
          {
            _HKLogDroppedError(v29);
          }
        }

        v23 = 0;
LABEL_24:
        objectsCopy = v35;
        goto LABEL_25;
      }

      error = [v18 sampleType];
      v22 = [error isEqual:v20];

      if (v22)
      {
        goto LABEL_19;
      }

      v11 = v17;
      class = classCopy;
      v10 = v15;
    }

    v9 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    v23 = 1;
    objectsCopy = v35;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v24 = v23 | error;
LABEL_26:

  v32 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HKWorkout;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_workoutActivityType forKey:{@"workoutActivityType", v5.receiver, v5.super_class}];
  [coderCopy encodeDouble:@"duration" forKey:self->_duration];
  [coderCopy encodeInteger:self->_goalType forKey:@"goalType"];
  [coderCopy encodeObject:self->_goal forKey:@"goal"];
  [coderCopy encodeObject:self->_workoutEvents forKey:@"workoutEvents"];
  [coderCopy encodeObject:self->_subActivities forKey:@"subActivities"];
  [coderCopy encodeObject:self->_primaryActivity forKey:@"primaryActivity"];
  [coderCopy encodeObject:self->_zonesByType forKey:@"zonesByType"];
  [coderCopy encodeObject:self->_workoutZonesByType forKey:@"workoutZonesByType"];
}

- (HKWorkout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v57.receiver = self;
  v57.super_class = HKWorkout;
  v5 = [(HKSample *)&v57 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_workoutActivityType = [coderCopy decodeIntegerForKey:@"workoutActivityType"];
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
    v5->_goalType = [coderCopy decodeIntegerForKey:@"goalType"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"workoutEvents"];
    workoutEvents = v5->_workoutEvents;
    v5->_workoutEvents = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"subActivities"];
    subActivities = v5->_subActivities;
    v5->_subActivities = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryActivity"];
    primaryActivity = v5->_primaryActivity;
    v5->_primaryActivity = v19;

    if (!v5->_primaryActivity)
    {
      workoutActivityType = v5->_workoutActivityType;
      metadata = [(HKObject *)v5 metadata];
      v54 = _HKWorkoutConfigurationWithActivityTypeAndMetadata(workoutActivityType, metadata);

      v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalEnergyBurned"];
      v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalBasalEnergyBurned"];
      v53 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDistance"];
      v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalSwimmingStrokeCount"];
      v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalFlightsClimbed"];
      v23 = objc_opt_class();
      v24 = v5->_workoutActivityType;
      startDate = [(HKSample *)v5 startDate];
      endDate = [(HKSample *)v5 endDate];
      v27 = [v23 _statisticsFromTotalActiveEnergyBurned:v56 totalBasalEnergyBurned:v55 totalDistance:v53 totalSwimmingStrokeCount:v52 totalFlightsClimbed:v51 workoutActivityType:v24 startDate:startDate endDate:endDate];

      v28 = [HKWorkoutActivity alloc];
      uUID = [(HKObject *)v5 UUID];
      startDate2 = [(HKSample *)v5 startDate];
      endDate2 = [(HKSample *)v5 endDate];
      v32 = v5->_workoutEvents;
      duration = v5->_duration;
      metadata2 = [(HKObject *)v5 metadata];
      v35 = [(HKWorkoutActivity *)v28 _initWithUUID:uUID workoutConfiguration:v54 startDate:startDate2 endDate:endDate2 workoutEvents:v32 startsPaused:0 duration:duration metadata:metadata2 statisticsPerType:v27];
      v36 = v5->_primaryActivity;
      v5->_primaryActivity = v35;
    }

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"zonesByType"];
    zonesByType = v5->_zonesByType;
    v5->_zonesByType = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v43 setWithObjects:{v44, v45, v46, objc_opt_class(), 0}];
    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"workoutZonesByType"];
    workoutZonesByType = v5->_workoutZonesByType;
    v5->_workoutZonesByType = v48;
  }

  return v5;
}

- (void)_setWorkoutEvents:(id)events
{
  v4 = [events sortedArrayUsingComparator:&__block_literal_global_618];
  workoutEvents = self->_workoutEvents;
  self->_workoutEvents = v4;

  MEMORY[0x1EEE66BB8](v4, workoutEvents);
}

uint64_t __31__HKWorkout__setWorkoutEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateInterval];
  v6 = [v4 dateInterval];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_setTotalEnergyBurned:(id)burned
{
  burnedCopy = burned;
  v8 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierActiveEnergyBurned"];
  startDate = [(HKSample *)self startDate];
  endDate = [(HKSample *)self endDate];
  v7 = _HKStatisticsForTotal(v8, burnedCopy, startDate, endDate);

  [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v8];
}

- (void)_setTotalBasalEnergyBurned:(id)burned
{
  burnedCopy = burned;
  v8 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
  startDate = [(HKSample *)self startDate];
  endDate = [(HKSample *)self endDate];
  v7 = _HKStatisticsForTotal(v8, burnedCopy, startDate, endDate);

  [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v8];
}

- (void)_setTotalDistance:(id)distance
{
  distanceCopy = distance;
  v4 = _HKWorkoutDistanceTypeForActivityType([(HKWorkout *)self workoutActivityType]);
  if (v4)
  {
    startDate = [(HKSample *)self startDate];
    endDate = [(HKSample *)self endDate];
    v7 = _HKStatisticsForTotal(v4, distanceCopy, startDate, endDate);

    [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v4];
  }
}

- (void)_setTotalSwimmingStrokeCount:(id)count
{
  countCopy = count;
  v8 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierSwimmingStrokeCount"];
  startDate = [(HKSample *)self startDate];
  endDate = [(HKSample *)self endDate];
  v7 = _HKStatisticsForTotal(v8, countCopy, startDate, endDate);

  [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v8];
}

- (void)_setTotalFlightsClimbed:(id)climbed
{
  climbedCopy = climbed;
  v8 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierFlightsClimbed"];
  startDate = [(HKSample *)self startDate];
  endDate = [(HKSample *)self endDate];
  v7 = _HKStatisticsForTotal(v8, climbedCopy, startDate, endDate);

  [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v8];
}

- (double)_totalEnergyBurnedInCanonicalUnit
{
  totalEnergyBurned = [(HKWorkout *)self totalEnergyBurned];
  v3 = +[HKUnit kilocalorieUnit];
  [totalEnergyBurned doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_totalBasalEnergyBurnedInCanonicalUnit
{
  _totalBasalEnergyBurned = [(HKWorkout *)self _totalBasalEnergyBurned];
  v3 = +[HKUnit kilocalorieUnit];
  [_totalBasalEnergyBurned doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_totalDistanceInCanonicalUnit
{
  totalDistance = [(HKWorkout *)self totalDistance];
  v3 = [HKUnit meterUnitWithMetricPrefix:9];
  [totalDistance doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_totalDistanceIncludingAllTypesForUnit:(id)unit
{
  v23[5] = *MEMORY[0x1E69E9840];
  unitCopy = unit;
  v23[0] = @"HKQuantityTypeIdentifierDistanceCycling";
  v23[1] = @"HKQuantityTypeIdentifierDistanceWalkingRunning";
  v23[2] = @"HKQuantityTypeIdentifierDistanceSwimming";
  v23[3] = @"HKQuantityTypeIdentifierDistanceDownhillSnowSports";
  v23[4] = @"HKQuantityTypeIdentifierDistanceWheelchair";
  [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:5];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v21 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:*(*(&v18 + 1) + 8 * i), v18];
        v12 = [(HKWorkout *)self statisticsForType:v11];
        sumQuantity = [v12 sumQuantity];
        [sumQuantity doubleValueForUnit:unitCopy];
        v15 = v14;

        v9 = v9 + v15;
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 0.0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

- (double)_totalSwimmingStrokeCountInCanonicalUnit
{
  totalSwimmingStrokeCount = [(HKWorkout *)self totalSwimmingStrokeCount];
  v3 = +[HKUnit countUnit];
  [totalSwimmingStrokeCount doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_totalFlightsClimbedInCanonicalUnit
{
  totalFlightsClimbed = [(HKWorkout *)self totalFlightsClimbed];
  v3 = +[HKUnit countUnit];
  [totalFlightsClimbed doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_goalInCanonicalUnit
{
  goal = self->_goal;
  v3 = _HKWorkoutCanonicalUnitForGoalType(self->_goalType);
  [(HKQuantity *)goal doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (int64_t)_activityMoveMode
{
  metadata = [(HKObject *)self metadata];
  v3 = [metadata objectForKeyedSubscript:@"_HKPrivateWorkoutActivityMoveMode"];

  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = 1;
  }

  return integerValue;
}

- (NSArray)workoutActivities
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_subActivities count])
  {
    v3 = self->_subActivities;
  }

  else
  {
    v6[0] = self->_primaryActivity;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_routeSmoothingActivities
{
  v8[1] = *MEMORY[0x1E69E9840];
  workoutConfiguration = [(HKWorkoutActivity *)self->_primaryActivity workoutConfiguration];
  activityType = [workoutConfiguration activityType];

  if (activityType == 82)
  {
    workoutActivities = [(HKWorkout *)self workoutActivities];
  }

  else
  {
    v8[0] = self->_primaryActivity;
    workoutActivities = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  v6 = *MEMORY[0x1E69E9840];

  return workoutActivities;
}

- (void)_enumerateActiveTimePeriods:(id)periods
{
  periodsCopy = periods;
  startDate = [(HKSample *)self startDate];
  endDate = [(HKSample *)self endDate];
  _HKEnumerateActiveWorkoutIntervalsStartingPaused(startDate, endDate, self->_workoutEvents, 0, periodsCopy);
}

+ (BOOL)_workoutWithActivityType:(unint64_t)type acceptsSubActivityType:(unint64_t)activityType
{
  if (type != 82)
  {
    return type == activityType;
  }

  result = 1;
  if (activityType - 37 > 0x2E || ((1 << (activityType - 37)) & 0x400000000201) == 0)
  {
    return activityType == 13;
  }

  return result;
}

@end