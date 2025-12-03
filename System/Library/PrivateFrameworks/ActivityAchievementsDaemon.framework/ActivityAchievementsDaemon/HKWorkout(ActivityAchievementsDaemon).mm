@interface HKWorkout(ActivityAchievementsDaemon)
- (BOOL)_isHalfMarathonDistance;
- (BOOL)_isMarathonDistance;
- (double)_bestDurationForKilometerCount:()ActivityAchievementsDaemon activityType:;
- (double)aad_bestHalfMarathonDuration;
- (double)aad_bestMarathonDuration;
- (double)aad_bestWheelchairHalfMarathonDuration;
- (double)aad_bestWheelchairMarathonDuration;
- (id)aad_redactedWorkoutDescription;
@end

@implementation HKWorkout(ActivityAchievementsDaemon)

- (double)aad_bestHalfMarathonDuration
{
  if (![self _isHalfMarathonDistance])
  {
    return 1.79769313e308;
  }

  v2 = vcvtmd_u64_f64(*MEMORY[0x277CE8B98]);

  [self _bestDurationForKilometerCount:v2 activityType:37];
  return result;
}

- (double)aad_bestMarathonDuration
{
  if (![self _isMarathonDistance])
  {
    return 1.79769313e308;
  }

  v2 = vcvtmd_u64_f64(*MEMORY[0x277CE8BC0]);

  [self _bestDurationForKilometerCount:v2 activityType:37];
  return result;
}

- (double)aad_bestWheelchairHalfMarathonDuration
{
  if (![self _isHalfMarathonDistance])
  {
    return 1.79769313e308;
  }

  v2 = vcvtmd_u64_f64(*MEMORY[0x277CE8B98]);

  [self _bestDurationForKilometerCount:v2 activityType:71];
  return result;
}

- (double)aad_bestWheelchairMarathonDuration
{
  if (![self _isMarathonDistance])
  {
    return 1.79769313e308;
  }

  v2 = vcvtmd_u64_f64(*MEMORY[0x277CE8BC0]);

  [self _bestDurationForKilometerCount:v2 activityType:71];
  return result;
}

- (double)_bestDurationForKilometerCount:()ActivityAchievementsDaemon activityType:
{
  v36 = *MEMORY[0x277D85DE8];
  if ([self workoutActivityType] == a4)
  {
    v6 = MEMORY[0x277CCD7E8];
    v7 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
    v8 = [v6 quantityWithUnit:v7 doubleValue:1.0];

    workoutEvents = [self workoutEvents];
    v10 = FISplitsForMeasuringSystemIdentifier();

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v31 + 1) + 8 * i);
          fi_splitDistance = [v17 fi_splitDistance];
          if ([v8 compare:fi_splitDistance] != 1)
          {
            [v11 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }

    if ([v11 count] >= a3)
    {
      [v11 sortUsingComparator:&__block_literal_global_2];
      v20 = [v11 objectAtIndexedSubscript:a3 - 1];
      dateInterval = [v20 dateInterval];
      endDate = [dateInterval endDate];
      [endDate timeIntervalSinceReferenceDate];
      v24 = v23;
      v25 = [v11 objectAtIndexedSubscript:0];
      dateInterval2 = [v25 dateInterval];
      startDate = [dateInterval2 startDate];
      [startDate timeIntervalSinceReferenceDate];
      v19 = v24 - v28;
    }

    else
    {
      v19 = 1.79769313e308;
    }
  }

  else
  {
    v19 = 1.79769313e308;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_isMarathonDistance
{
  totalDistance = [self totalDistance];
  v2 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  [totalDistance doubleValueForUnit:v2];
  v4 = v3 >= *MEMORY[0x277CE8BC0];

  return v4;
}

- (BOOL)_isHalfMarathonDistance
{
  totalDistance = [self totalDistance];
  v2 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  [totalDistance doubleValueForUnit:v2];
  v4 = v3 >= *MEMORY[0x277CE8B98];

  return v4;
}

- (id)aad_redactedWorkoutDescription
{
  if (aad_redactedWorkoutDescription_onceToken != -1)
  {
    [HKWorkout(ActivityAchievementsDaemon) aad_redactedWorkoutDescription];
  }

  v2 = aad_redactedWorkoutDescription_formatter;
  startDate = [self startDate];
  v4 = [v2 stringFromDate:startDate];

  v5 = aad_redactedWorkoutDescription_formatter;
  endDate = [self endDate];
  v7 = [v5 stringFromDate:endDate];

  v8 = MEMORY[0x277CCAB68];
  uUID = [self UUID];
  v10 = [v8 stringWithFormat:@"%@", uUID];

  sourceRevision = [self sourceRevision];
  v12 = sourceRevision;
  if (sourceRevision)
  {
    version = [sourceRevision version];
    productType = [v12 productType];
    [v12 operatingSystemVersion];
    v15 = HKNSOperatingSystemVersionString();
    [v10 appendFormat:@"%@, %@ (%@)", version, productType, v15];
  }

  device = [self device];
  v17 = device;
  if (device)
  {
    name = [device name];
    [v10 appendFormat:@" %@ ", name];
  }

  contributor = [self contributor];
  v20 = contributor;
  if (contributor)
  {
    appleID = [contributor appleID];
    [v10 appendFormat:@", contributor %@", appleID];
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@> (%ld) %@ (%@ - %@)", objc_opt_class(), *&self[*MEMORY[0x277CCDE90]], v10, v4, v7];

  return v22;
}

@end