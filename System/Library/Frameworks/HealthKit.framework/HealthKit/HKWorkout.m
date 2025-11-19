@interface HKWorkout
+ (BOOL)_validateObjects:(id)a3 forClass:(Class)a4 error:(id *)a5;
+ (BOOL)_workoutWithActivityType:(unint64_t)a3 acceptsSubActivityType:(unint64_t)a4;
+ (id)_allWorkoutActivityTypes;
+ (id)_allWorkoutTypeNames;
+ (id)_statisticsFromTotalActiveEnergyBurned:(id)a3 totalBasalEnergyBurned:(id)a4 totalDistance:(id)a5 totalSwimmingStrokeCount:(id)a6 totalFlightsClimbed:(id)a7 workoutActivityType:(unint64_t)a8 startDate:(id)a9 endDate:(id)a10;
+ (id)_stringFromWorkoutActivityType:(unint64_t)a3;
+ (id)_workoutWithActivityType:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 workoutEvents:(id)a6 workoutActivities:(id)a7 duration:(double)a8 statistics:(id)a9 goalType:(unint64_t)a10 goal:(id)a11 device:(id)a12 metadata:(id)a13;
+ (id)_workoutWithActivityType:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 workoutEvents:(id)a6 workoutActivities:(id)a7 duration:(double)a8 totalActiveEnergyBurned:(id)a9 totalBasalEnergyBurned:(id)a10 totalDistance:(id)a11 totalSwimmingStrokeCount:(id)a12 totalFlightsClimbed:(id)a13 goalType:(unint64_t)a14 goal:(id)a15 device:(id)a16 metadata:(id)a17;
+ (unint64_t)_workoutActivityTypeFromString:(id)a3;
- (BOOL)acceptsAssociationWithObject:(id)a3;
- (HKQuantity)_totalBasalEnergyBurned;
- (HKQuantity)totalDistance;
- (HKQuantity)totalEnergyBurned;
- (HKQuantity)totalFlightsClimbed;
- (HKQuantity)totalSwimmingStrokeCount;
- (HKWorkout)initWithCoder:(id)a3;
- (HKWorkoutActivityType)workoutActivityType;
- (NSArray)workoutActivities;
- (NSArray)workoutEvents;
- (NSString)description;
- (double)_goalInCanonicalUnit;
- (double)_totalBasalEnergyBurnedInCanonicalUnit;
- (double)_totalDistanceInCanonicalUnit;
- (double)_totalDistanceIncludingAllTypesForUnit:(id)a3;
- (double)_totalEnergyBurnedInCanonicalUnit;
- (double)_totalFlightsClimbedInCanonicalUnit;
- (double)_totalSwimmingStrokeCountInCanonicalUnit;
- (id)_deepCopy;
- (id)_detailedDescriptionComponents;
- (id)_detailedDescriptionString;
- (id)_routeSmoothingActivities;
- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3;
- (id)_validateWorkoutActivities:(id)a3 withConfiguration:(HKObjectValidationConfiguration)a4;
- (id)_validateWorkoutEvents:(id)a3 withConfiguration:(HKObjectValidationConfiguration)a4;
- (id)subObjectFromUUID:(id)a3;
- (int64_t)_activityMoveMode;
- (void)_enumerateActiveTimePeriods:(id)a3;
- (void)_enumerateTimePeriodsWithBlock:(id)a3;
- (void)_setTotalBasalEnergyBurned:(id)a3;
- (void)_setTotalDistance:(id)a3;
- (void)_setTotalEnergyBurned:(id)a3;
- (void)_setTotalFlightsClimbed:(id)a3;
- (void)_setTotalSwimmingStrokeCount:(id)a3;
- (void)_setUUID:(id)a3;
- (void)_setWorkoutEvents:(id)a3;
- (void)encodeWithCoder:(id)a3;
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
  v5 = [v4 sumQuantity];

  return v5;
}

- (HKQuantity)_totalBasalEnergyBurned
{
  v3 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
  v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
  v5 = [v4 sumQuantity];

  return v5;
}

- (HKQuantity)totalDistance
{
  v3 = _HKWorkoutDistanceTypeForActivityType([(HKWorkout *)self workoutActivityType]);
  if (v3)
  {
    v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
    v5 = [v4 sumQuantity];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HKQuantity)totalSwimmingStrokeCount
{
  v3 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierSwimmingStrokeCount"];
  v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
  v5 = [v4 sumQuantity];

  return v5;
}

- (HKQuantity)totalFlightsClimbed
{
  v3 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierFlightsClimbed"];
  v4 = [(HKWorkoutActivity *)self->_primaryActivity statisticsForType:v3];
  v5 = [v4 sumQuantity];

  return v5;
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

- (void)_enumerateTimePeriodsWithBlock:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v6 = [(HKWorkout *)self workoutEvents];
  v7 = [v6 count] == 0;

  if (v7)
  {
    v8 = [(HKSample *)self startDate];
    v9 = [(HKSample *)self endDate];
    [(HKWorkout *)self duration];
    v11 = v10;
    [v9 timeIntervalSinceDate:v8];
    v13 = v12;
    if (v11 <= 0.00000011920929 || v12 - v11 <= 0.00000011920929)
    {
      v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v9];
      [v5 addObject:v16];
      v11 = v13;
      v15 = v9;
    }

    else
    {
      v14 = MEMORY[0x1E695DF00];
      [(HKWorkout *)self duration];
      v15 = [v14 dateWithTimeInterval:v8 sinceDate:?];

      v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v8 endDate:v15];
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
    v8 = v31;
  }

  [(HKWorkout *)self duration];
  if (v17 - v34[3] <= 0.1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = v5;
    v22 = [v18 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v22)
    {
      v23 = *v27;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v27 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v4[2](v4, *(*(&v26 + 1) + 8 * i));
        }

        v22 = [v18 countByEnumeratingWithState:&v26 objects:v37 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v18 = [(HKSample *)self endDate];
    [(HKWorkout *)self duration];
    v20 = [v18 dateByAddingTimeInterval:-v19];
    v21 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v20 endDate:v18];
    (v4)[2](v4, v21);
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

+ (id)_workoutWithActivityType:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 workoutEvents:(id)a6 workoutActivities:(id)a7 duration:(double)a8 totalActiveEnergyBurned:(id)a9 totalBasalEnergyBurned:(id)a10 totalDistance:(id)a11 totalSwimmingStrokeCount:(id)a12 totalFlightsClimbed:(id)a13 goalType:(unint64_t)a14 goal:(id)a15 device:(id)a16 metadata:(id)a17
{
  v24 = a17;
  v25 = a16;
  v26 = a15;
  v27 = a7;
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v31 = [a1 _statisticsFromTotalActiveEnergyBurned:a9 totalBasalEnergyBurned:a10 totalDistance:a11 totalSwimmingStrokeCount:a12 totalFlightsClimbed:a13 workoutActivityType:a3 startDate:v30 endDate:v29];
  v32 = [a1 _workoutWithActivityType:a3 startDate:v30 endDate:v29 workoutEvents:v28 workoutActivities:v27 duration:v31 statistics:a8 goalType:a14 goal:v26 device:v25 metadata:v24];

  return v32;
}

+ (id)_statisticsFromTotalActiveEnergyBurned:(id)a3 totalBasalEnergyBurned:(id)a4 totalDistance:(id)a5 totalSwimmingStrokeCount:(id)a6 totalFlightsClimbed:(id)a7 workoutActivityType:(unint64_t)a8 startDate:(id)a9 endDate:(id)a10
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a9;
  v20 = a10;
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v22 = off_1E7375000;
  if (v14)
  {
    v23 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierActiveEnergyBurned"];
    v24 = _HKStatisticsForTotal(v23, v14, v19, v20);
    [v21 setObject:v24 forKeyedSubscript:v23];

    v22 = off_1E7375000;
  }

  if (v15)
  {
    v25 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
    v26 = _HKStatisticsForTotal(v25, v15, v19, v20);
    [v21 setObject:v26 forKeyedSubscript:v25];

    v22 = off_1E7375000;
  }

  if (v16)
  {
    v27 = _HKWorkoutDistanceTypeForActivityType(a8);
    v28 = v27;
    if (v27)
    {
      v29 = _HKStatisticsForTotal(v27, v16, v19, v20);
      [v21 setObject:v29 forKeyedSubscript:v28];

      v22 = off_1E7375000;
    }
  }

  if (v17)
  {
    v30 = [(__objc2_class *)v22[120] quantityTypeForIdentifier:@"HKQuantityTypeIdentifierSwimmingStrokeCount"];
    v31 = _HKStatisticsForTotal(v30, v17, v19, v20);
    [v21 setObject:v31 forKeyedSubscript:v30];

    v22 = off_1E7375000;
  }

  if (v18)
  {
    v32 = [(__objc2_class *)v22[120] quantityTypeForIdentifier:@"HKQuantityTypeIdentifierFlightsClimbed"];
    v33 = _HKStatisticsForTotal(v32, v18, v19, v20);
    [v21 setObject:v33 forKeyedSubscript:v32];
  }

  return v21;
}

+ (id)_workoutWithActivityType:(unint64_t)a3 startDate:(id)a4 endDate:(id)a5 workoutEvents:(id)a6 workoutActivities:(id)a7 duration:(double)a8 statistics:(id)a9 goalType:(unint64_t)a10 goal:(id)a11 device:(id)a12 metadata:(id)a13
{
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a11;
  v41 = a12;
  v24 = a13;
  v25 = +[HKObjectType workoutType];
  if (v18)
  {
    [v18 timeIntervalSinceReferenceDate];
    v27 = v26;
    if (v19)
    {
LABEL_3:
      [v19 timeIntervalSinceReferenceDate];
      v29 = v28;
      goto LABEL_6;
    }
  }

  else
  {
    v27 = 2.22507386e-308;
    if (v19)
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
  v51 = a8;
  v43 = v20;
  v44 = v18;
  v45 = v19;
  v46 = v21;
  v47 = v24;
  v48 = v22;
  v52 = a10;
  v49 = v23;
  v50 = a3;
  v30 = v23;
  v31 = v22;
  v32 = v24;
  v33 = v21;
  v34 = v19;
  v35 = v18;
  v36 = v20;
  v37 = [a1 _newSampleWithType:v25 startDate:v41 endDate:v32 device:v42 metadata:v27 config:v29];

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
  v25 = [(HKSample *)self startDate];
  v5 = [v25 copy];
  v24 = [(HKSample *)self endDate];
  v23 = [v24 copy];
  v21 = [(NSArray *)self->_workoutEvents copy];
  duration = self->_duration;
  v20 = [(HKWorkoutActivity *)self->_primaryActivity allStatistics];
  v7 = [(HKWorkout *)self _goalType];
  v8 = [(HKQuantity *)self->_goal copy];
  v9 = [(HKObject *)self device];
  v10 = [v9 copy];
  v11 = [(HKObject *)self metadata];
  v12 = [v11 copy];
  v22 = [v3 _workoutWithActivityType:workoutActivityType startDate:v5 endDate:v23 workoutEvents:v21 workoutActivities:v26 duration:v20 statistics:duration goalType:v7 goal:v8 device:v10 metadata:v12];

  v13 = [(HKObject *)self sourceRevision];
  v14 = [v13 copy];
  [v22 _setSourceRevision:v14];

  v15 = [(HKWorkout *)self _primaryActivity];
  v16 = [v15 _deepCopy];
  [v22 _setPrimaryActivity:v16];

  v17 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_zonesByType copyItems:1];
  [v22 _setZonesByType:v17];
  v18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:self->_workoutZonesByType copyItems:1];
  [v22 _setWorkoutZonesByType:v18];

  return v22;
}

+ (id)_stringFromWorkoutActivityType:(unint64_t)a3
{
  v4 = [a1 _activityTypeMappings];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__HKWorkout__stringFromWorkoutActivityType___block_invoke;
  v8[3] = &__block_descriptor_40_e35_B32__0__NSString_8__NSNumber_16_B24l;
  v8[4] = a3;
  v5 = [v4 keysOfEntriesPassingTest:v8];

  v6 = [v5 anyObject];

  return v6;
}

+ (unint64_t)_workoutActivityTypeFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 _activityTypeMappings];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_allWorkoutTypeNames
{
  v2 = [a1 _activityTypeMappings];
  v3 = [v2 allKeys];

  return v3;
}

+ (id)_allWorkoutActivityTypes
{
  v2 = [a1 _activityTypeMappings];
  v3 = [v2 allValues];

  return v3;
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
  v8 = [(HKSample *)self startDate];
  v9 = [v7 stringWithFormat:@"startDate=%@", v8];
  [v3 addObject:v9];

  v10 = MEMORY[0x1E696AEC0];
  v11 = [(HKSample *)self endDate];
  v12 = [v10 stringWithFormat:@"endDate=%@", v11];
  [v3 addObject:v12];

  v13 = MEMORY[0x1E696AEC0];
  [(HKWorkout *)self duration];
  v15 = [v13 stringWithFormat:@"duration=%f", v14];
  [v3 addObject:v15];

  v16 = [(HKWorkout *)self allStatistics];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __43__HKWorkout__detailedDescriptionComponents__block_invoke;
  v25 = &unk_1E73845F0;
  v17 = v3;
  v26 = v17;
  [v16 enumerateKeysAndObjectsUsingBlock:&v22];

  v18 = MEMORY[0x1E696AEC0];
  v19 = [(HKObject *)self metadata];
  v20 = [v18 stringWithFormat:@"metadata=%@", v19, v22, v23, v24, v25];
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
  v2 = [(HKWorkout *)self _detailedDescriptionComponents];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

- (id)_validateWithConfiguration:(HKObjectValidationConfiguration)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v57[1] = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = HKWorkout;
  v7 = [(HKSample *)&v55 _validateWithConfiguration:?];
  if (v7)
  {
    goto LABEL_2;
  }

  v11 = [(HKSample *)self sampleType];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = objc_opt_class();
    v17 = [(HKSample *)self sampleType];
    v8 = [v15 hk_errorForInvalidArgument:@"@" class:v16 selector:a2 format:{@"Invalid workout type %@", v17}];

    goto LABEL_3;
  }

  v7 = [(HKWorkout *)self _validateWorkoutEvents:self->_workoutEvents withConfiguration:var0, var1];
  if (v7 || ([(HKWorkout *)self _validateWorkoutActivities:self->_subActivities withConfiguration:var0, var1], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
LABEL_2:
    v8 = v7;
    goto LABEL_3;
  }

  if (self->_primaryActivity)
  {
    v57[0] = self->_primaryActivity;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:1];
    v8 = [(HKWorkout *)self _validateWorkoutActivities:v13 withConfiguration:var0, var1];

    if (v8)
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
      v23 = [v21 canonicalUnit];
      v24 = [v22 sumQuantity];
      if (v24)
      {
        v25 = v24;
        v26 = [v22 sumQuantity];
        v27 = [v26 isCompatibleWithUnit:v23];

        if ((v27 & 1) == 0)
        {
          v43 = MEMORY[0x1E696ABC0];
          v44 = objc_opt_class();
          v45 = [v21 identifier];
          v46 = [v22 sumQuantity];
          v47 = v46;
          v48 = @"Incompatible unit for %@ sum quantity, received %@";
LABEL_36:
          v8 = [v43 hk_errorForInvalidArgument:@"@" class:v44 selector:a2 format:{v48, v45, v46}];

          goto LABEL_3;
        }
      }

      v28 = [v22 averageQuantity];
      if (v28)
      {
        v29 = v28;
        v30 = [v22 averageQuantity];
        v31 = [v30 isCompatibleWithUnit:v23];

        if ((v31 & 1) == 0)
        {
          v43 = MEMORY[0x1E696ABC0];
          v44 = objc_opt_class();
          v45 = [v21 identifier];
          v46 = [v22 averageQuantity];
          v47 = v46;
          v48 = @"Incompatible unit for %@ average quantity, received %@";
          goto LABEL_36;
        }
      }

      v32 = [v22 minimumQuantity];
      if (v32)
      {
        v33 = v32;
        v34 = [v22 minimumQuantity];
        v35 = [v34 isCompatibleWithUnit:v23];

        if ((v35 & 1) == 0)
        {
          v43 = MEMORY[0x1E696ABC0];
          v44 = objc_opt_class();
          v45 = [v21 identifier];
          v46 = [v22 minimumQuantity];
          v47 = v46;
          v48 = @"Incompatible unit for %@ minimum quantity, received %@";
          goto LABEL_36;
        }
      }

      v36 = [v22 maximumQuantity];
      if (v36)
      {
        v37 = v36;
        v38 = [v22 maximumQuantity];
        v39 = [v38 isCompatibleWithUnit:v23];

        if ((v39 & 1) == 0)
        {
          v43 = MEMORY[0x1E696ABC0];
          v44 = objc_opt_class();
          v45 = [v21 identifier];
          v46 = [v22 maximumQuantity];
          v47 = v46;
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
    v7 = [v40 hk_errorForInvalidArgument:@"@" class:v41 selector:a2 format:{@"Incompatible goal (%@) for goal type %ld", goal, self->_goalType}];
    goto LABEL_2;
  }

  v8 = 0;
LABEL_3:
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_validateWorkoutEvents:(id)a3 withConfiguration:(HKObjectValidationConfiguration)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__53;
  v21 = __Block_byref_object_dispose__53;
  v22 = 0;
  v9 = [v8 firstObject];
  v10 = v9;
  if (v9 && [v9 type] == 2)
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
  [v8 enumerateObjectsUsingBlock:v15];
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

- (id)_validateWorkoutActivities:(id)a3 withConfiguration:(HKObjectValidationConfiguration)a4
{
  var1 = a4.var1;
  var0 = a4.var0;
  v8 = a3;
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
  [v8 enumerateObjectsUsingBlock:v11];
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

- (void)_setUUID:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKWorkout;
  v4 = a3;
  [(HKObject *)&v5 _setUUID:v4];
  [(HKWorkoutActivity *)self->_primaryActivity _setUUID:v4, v5.receiver, v5.super_class];
}

- (BOOL)acceptsAssociationWithObject:(id)a3
{
  v3 = a3;
  v4 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierWorkoutEffortScore"];
  v5 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"];
  v6 = [v3 sampleType];
  if ([v6 isEqual:v4])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v3 sampleType];
    v7 = [v8 isEqual:v5];
  }

  return v7;
}

- (id)subObjectFromUUID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(HKWorkout *)self _subActivities];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 UUID];
        v11 = [v10 UUIDString];
        v12 = [v4 UUIDString];
        v13 = [v11 isEqualToString:v12];

        if (v13)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

+ (BOOL)_validateObjects:(id)a3 forClass:(Class)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (![v7 count])
  {
    [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{@"%@: %@ data cannot be nil or empty.", objc_opt_class(), a4}];
    v24 = 0;
    goto LABEL_26;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (!v8)
  {
    v23 = 1;
    goto LABEL_25;
  }

  v9 = v8;
  v34 = a5;
  v10 = *v39;
  v35 = v7;
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
        [v25 hk_assignError:v34 code:3 format:{@"%@: Invalid object of type %@. Expecting %@.", v26, objc_opt_class(), a4}];
        v23 = 0;
        LOBYTE(a5) = 0;
        goto LABEL_24;
      }

      v14 = v11[136];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }

      v15 = v10;
      v16 = a4;
      v17 = v11;
      v18 = v13;
      v19 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierWorkoutEffortScore"];
      v20 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierEstimatedWorkoutEffortScore"];
      v21 = [v18 sampleType];
      v37 = v19;
      if ([v21 isEqual:v19])
      {

LABEL_19:
        a5 = MEMORY[0x1E696ABC0];
        v27 = objc_opt_class();
        v28 = [v18 sampleType];
        v29 = [a5 hk_error:3 format:{@"%@: Sample of type %@ must be related to a workout", v27, v28}];
        v30 = v29;
        LOBYTE(a5) = v29 == 0;
        if (v29)
        {
          if (v34)
          {
            v31 = v29;
            *v34 = v30;
          }

          else
          {
            _HKLogDroppedError(v29);
          }
        }

        v23 = 0;
LABEL_24:
        v7 = v35;
        goto LABEL_25;
      }

      a5 = [v18 sampleType];
      v22 = [a5 isEqual:v20];

      if (v22)
      {
        goto LABEL_19;
      }

      v11 = v17;
      a4 = v16;
      v10 = v15;
    }

    v9 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    v23 = 1;
    v7 = v35;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_25:

  v24 = v23 | a5;
LABEL_26:

  v32 = *MEMORY[0x1E69E9840];
  return v24 & 1;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = HKWorkout;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_workoutActivityType forKey:{@"workoutActivityType", v5.receiver, v5.super_class}];
  [v4 encodeDouble:@"duration" forKey:self->_duration];
  [v4 encodeInteger:self->_goalType forKey:@"goalType"];
  [v4 encodeObject:self->_goal forKey:@"goal"];
  [v4 encodeObject:self->_workoutEvents forKey:@"workoutEvents"];
  [v4 encodeObject:self->_subActivities forKey:@"subActivities"];
  [v4 encodeObject:self->_primaryActivity forKey:@"primaryActivity"];
  [v4 encodeObject:self->_zonesByType forKey:@"zonesByType"];
  [v4 encodeObject:self->_workoutZonesByType forKey:@"workoutZonesByType"];
}

- (HKWorkout)initWithCoder:(id)a3
{
  v4 = a3;
  v57.receiver = self;
  v57.super_class = HKWorkout;
  v5 = [(HKSample *)&v57 initWithCoder:v4];
  if (v5)
  {
    v5->_workoutActivityType = [v4 decodeIntegerForKey:@"workoutActivityType"];
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
    v5->_goalType = [v4 decodeIntegerForKey:@"goalType"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"goal"];
    goal = v5->_goal;
    v5->_goal = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"workoutEvents"];
    workoutEvents = v5->_workoutEvents;
    v5->_workoutEvents = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"subActivities"];
    subActivities = v5->_subActivities;
    v5->_subActivities = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryActivity"];
    primaryActivity = v5->_primaryActivity;
    v5->_primaryActivity = v19;

    if (!v5->_primaryActivity)
    {
      workoutActivityType = v5->_workoutActivityType;
      v22 = [(HKObject *)v5 metadata];
      v54 = _HKWorkoutConfigurationWithActivityTypeAndMetadata(workoutActivityType, v22);

      v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalEnergyBurned"];
      v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalBasalEnergyBurned"];
      v53 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDistance"];
      v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalSwimmingStrokeCount"];
      v51 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalFlightsClimbed"];
      v23 = objc_opt_class();
      v24 = v5->_workoutActivityType;
      v25 = [(HKSample *)v5 startDate];
      v26 = [(HKSample *)v5 endDate];
      v27 = [v23 _statisticsFromTotalActiveEnergyBurned:v56 totalBasalEnergyBurned:v55 totalDistance:v53 totalSwimmingStrokeCount:v52 totalFlightsClimbed:v51 workoutActivityType:v24 startDate:v25 endDate:v26];

      v28 = [HKWorkoutActivity alloc];
      v29 = [(HKObject *)v5 UUID];
      v30 = [(HKSample *)v5 startDate];
      v31 = [(HKSample *)v5 endDate];
      v32 = v5->_workoutEvents;
      duration = v5->_duration;
      v34 = [(HKObject *)v5 metadata];
      v35 = [(HKWorkoutActivity *)v28 _initWithUUID:v29 workoutConfiguration:v54 startDate:v30 endDate:v31 workoutEvents:v32 startsPaused:0 duration:duration metadata:v34 statisticsPerType:v27];
      v36 = v5->_primaryActivity;
      v5->_primaryActivity = v35;
    }

    v37 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v39 = objc_opt_class();
    v40 = [v37 setWithObjects:{v38, v39, objc_opt_class(), 0}];
    v41 = [v4 decodeObjectOfClasses:v40 forKey:@"zonesByType"];
    zonesByType = v5->_zonesByType;
    v5->_zonesByType = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = [v43 setWithObjects:{v44, v45, v46, objc_opt_class(), 0}];
    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"workoutZonesByType"];
    workoutZonesByType = v5->_workoutZonesByType;
    v5->_workoutZonesByType = v48;
  }

  return v5;
}

- (void)_setWorkoutEvents:(id)a3
{
  v4 = [a3 sortedArrayUsingComparator:&__block_literal_global_618];
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

- (void)_setTotalEnergyBurned:(id)a3
{
  v4 = a3;
  v8 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierActiveEnergyBurned"];
  v5 = [(HKSample *)self startDate];
  v6 = [(HKSample *)self endDate];
  v7 = _HKStatisticsForTotal(v8, v4, v5, v6);

  [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v8];
}

- (void)_setTotalBasalEnergyBurned:(id)a3
{
  v4 = a3;
  v8 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierBasalEnergyBurned"];
  v5 = [(HKSample *)self startDate];
  v6 = [(HKSample *)self endDate];
  v7 = _HKStatisticsForTotal(v8, v4, v5, v6);

  [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v8];
}

- (void)_setTotalDistance:(id)a3
{
  v8 = a3;
  v4 = _HKWorkoutDistanceTypeForActivityType([(HKWorkout *)self workoutActivityType]);
  if (v4)
  {
    v5 = [(HKSample *)self startDate];
    v6 = [(HKSample *)self endDate];
    v7 = _HKStatisticsForTotal(v4, v8, v5, v6);

    [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v4];
  }
}

- (void)_setTotalSwimmingStrokeCount:(id)a3
{
  v4 = a3;
  v8 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierSwimmingStrokeCount"];
  v5 = [(HKSample *)self startDate];
  v6 = [(HKSample *)self endDate];
  v7 = _HKStatisticsForTotal(v8, v4, v5, v6);

  [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v8];
}

- (void)_setTotalFlightsClimbed:(id)a3
{
  v4 = a3;
  v8 = [(HKObjectType *)HKQuantityType quantityTypeForIdentifier:@"HKQuantityTypeIdentifierFlightsClimbed"];
  v5 = [(HKSample *)self startDate];
  v6 = [(HKSample *)self endDate];
  v7 = _HKStatisticsForTotal(v8, v4, v5, v6);

  [(HKWorkoutActivity *)self->_primaryActivity _setStatistics:v7 forType:v8];
}

- (double)_totalEnergyBurnedInCanonicalUnit
{
  v2 = [(HKWorkout *)self totalEnergyBurned];
  v3 = +[HKUnit kilocalorieUnit];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_totalBasalEnergyBurnedInCanonicalUnit
{
  v2 = [(HKWorkout *)self _totalBasalEnergyBurned];
  v3 = +[HKUnit kilocalorieUnit];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_totalDistanceInCanonicalUnit
{
  v2 = [(HKWorkout *)self totalDistance];
  v3 = [HKUnit meterUnitWithMetricPrefix:9];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_totalDistanceIncludingAllTypesForUnit:(id)a3
{
  v23[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v13 = [v12 sumQuantity];
        [v13 doubleValueForUnit:v4];
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
  v2 = [(HKWorkout *)self totalSwimmingStrokeCount];
  v3 = +[HKUnit countUnit];
  [v2 doubleValueForUnit:v3];
  v5 = v4;

  return v5;
}

- (double)_totalFlightsClimbedInCanonicalUnit
{
  v2 = [(HKWorkout *)self totalFlightsClimbed];
  v3 = +[HKUnit countUnit];
  [v2 doubleValueForUnit:v3];
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
  v2 = [(HKObject *)self metadata];
  v3 = [v2 objectForKeyedSubscript:@"_HKPrivateWorkoutActivityMoveMode"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
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
  v3 = [(HKWorkoutActivity *)self->_primaryActivity workoutConfiguration];
  v4 = [v3 activityType];

  if (v4 == 82)
  {
    v5 = [(HKWorkout *)self workoutActivities];
  }

  else
  {
    v8[0] = self->_primaryActivity;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_enumerateActiveTimePeriods:(id)a3
{
  v4 = a3;
  v6 = [(HKSample *)self startDate];
  v5 = [(HKSample *)self endDate];
  _HKEnumerateActiveWorkoutIntervalsStartingPaused(v6, v5, self->_workoutEvents, 0, v4);
}

+ (BOOL)_workoutWithActivityType:(unint64_t)a3 acceptsSubActivityType:(unint64_t)a4
{
  if (a3 != 82)
  {
    return a3 == a4;
  }

  result = 1;
  if (a4 - 37 > 0x2E || ((1 << (a4 - 37)) & 0x400000000201) == 0)
  {
    return a4 == 13;
  }

  return result;
}

@end