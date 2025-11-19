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
  if (![a1 _isHalfMarathonDistance])
  {
    return 1.79769313e308;
  }

  v2 = vcvtmd_u64_f64(*MEMORY[0x277CE8B98]);

  [a1 _bestDurationForKilometerCount:v2 activityType:37];
  return result;
}

- (double)aad_bestMarathonDuration
{
  if (![a1 _isMarathonDistance])
  {
    return 1.79769313e308;
  }

  v2 = vcvtmd_u64_f64(*MEMORY[0x277CE8BC0]);

  [a1 _bestDurationForKilometerCount:v2 activityType:37];
  return result;
}

- (double)aad_bestWheelchairHalfMarathonDuration
{
  if (![a1 _isHalfMarathonDistance])
  {
    return 1.79769313e308;
  }

  v2 = vcvtmd_u64_f64(*MEMORY[0x277CE8B98]);

  [a1 _bestDurationForKilometerCount:v2 activityType:71];
  return result;
}

- (double)aad_bestWheelchairMarathonDuration
{
  if (![a1 _isMarathonDistance])
  {
    return 1.79769313e308;
  }

  v2 = vcvtmd_u64_f64(*MEMORY[0x277CE8BC0]);

  [a1 _bestDurationForKilometerCount:v2 activityType:71];
  return result;
}

- (double)_bestDurationForKilometerCount:()ActivityAchievementsDaemon activityType:
{
  v36 = *MEMORY[0x277D85DE8];
  if ([a1 workoutActivityType] == a4)
  {
    v6 = MEMORY[0x277CCD7E8];
    v7 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
    v8 = [v6 quantityWithUnit:v7 doubleValue:1.0];

    v9 = [a1 workoutEvents];
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
          v18 = [v17 fi_splitDistance];
          if ([v8 compare:v18] != 1)
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
      v21 = [v20 dateInterval];
      v22 = [v21 endDate];
      [v22 timeIntervalSinceReferenceDate];
      v24 = v23;
      v25 = [v11 objectAtIndexedSubscript:0];
      v26 = [v25 dateInterval];
      v27 = [v26 startDate];
      [v27 timeIntervalSinceReferenceDate];
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
  v1 = [a1 totalDistance];
  v2 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  [v1 doubleValueForUnit:v2];
  v4 = v3 >= *MEMORY[0x277CE8BC0];

  return v4;
}

- (BOOL)_isHalfMarathonDistance
{
  v1 = [a1 totalDistance];
  v2 = [MEMORY[0x277CCDAB0] meterUnitWithMetricPrefix:9];
  [v1 doubleValueForUnit:v2];
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
  v3 = [a1 startDate];
  v4 = [v2 stringFromDate:v3];

  v5 = aad_redactedWorkoutDescription_formatter;
  v6 = [a1 endDate];
  v7 = [v5 stringFromDate:v6];

  v8 = MEMORY[0x277CCAB68];
  v9 = [a1 UUID];
  v10 = [v8 stringWithFormat:@"%@", v9];

  v11 = [a1 sourceRevision];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 version];
    v14 = [v12 productType];
    [v12 operatingSystemVersion];
    v15 = HKNSOperatingSystemVersionString();
    [v10 appendFormat:@"%@, %@ (%@)", v13, v14, v15];
  }

  v16 = [a1 device];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 name];
    [v10 appendFormat:@" %@ ", v18];
  }

  v19 = [a1 contributor];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 appleID];
    [v10 appendFormat:@", contributor %@", v21];
  }

  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@> (%ld) %@ (%@ - %@)", objc_opt_class(), *&a1[*MEMORY[0x277CCDE90]], v10, v4, v7];

  return v22;
}

@end