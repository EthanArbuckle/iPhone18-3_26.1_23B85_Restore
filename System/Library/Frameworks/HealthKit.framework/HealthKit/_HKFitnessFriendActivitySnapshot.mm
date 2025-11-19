@interface _HKFitnessFriendActivitySnapshot
+ (id)_fitnessFriendActivitySnapshotWithFriendUUID:(id)a3 sourceUUID:(id)a4 startDate:(id)a5 endDate:(id)a6 snapshotIndex:(int64_t)a7 snapshotUploadedDate:(id)a8;
+ (id)_fitnessFriendActivitySnapshotWithSnapshotIndex:(int64_t)a3 startDate:(id)a4 endDate:(id)a5 sourceUUID:(id)a6;
+ (id)_mostSignificantSnapshotAmongSnapshots:(id)a3;
+ (id)snapshotWithActivitySummary:(id)a3;
- (NSTimeZone)timeZone;
- (_HKFitnessFriendActivitySnapshot)initWithCoder:(id)a3;
- (double)activeHoursGoalPercentage;
- (double)briskMinutesGoalPercentage;
- (double)energyBurnedGoalPercentage;
- (double)mmgp;
- (id)_mostSignificantSnapshot:(id)a3;
- (id)activitySummary;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HKFitnessFriendActivitySnapshot

- (NSTimeZone)timeZone
{
  v3 = [MEMORY[0x1E695DFE8] localTimeZone];
  timeZoneOffsetFromUTCForNoon = self->_timeZoneOffsetFromUTCForNoon;
  if (timeZoneOffsetFromUTCForNoon)
  {
    v5 = [(NSNumber *)timeZoneOffsetFromUTCForNoon integerValue];
    v6 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:v5];

    v3 = v6;
  }

  return v3;
}

+ (id)_fitnessFriendActivitySnapshotWithFriendUUID:(id)a3 sourceUUID:(id)a4 startDate:(id)a5 endDate:(id)a6 snapshotIndex:(int64_t)a7 snapshotUploadedDate:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (v14)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:];
    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_10:
      +[_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:];
      if (v18)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  +[_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:];
  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v18)
  {
    goto LABEL_5;
  }

LABEL_11:
  +[_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:];
LABEL_5:
  v19 = +[HKObjectType fitnessFriendActivitySnapshotType];
  [v16 timeIntervalSinceReferenceDate];
  v21 = v20;
  [v17 timeIntervalSinceReferenceDate];
  v23 = v22;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __145___HKFitnessFriendActivitySnapshot__fitnessFriendActivitySnapshotWithFriendUUID_sourceUUID_startDate_endDate_snapshotIndex_snapshotUploadedDate___block_invoke;
  v30[3] = &unk_1E737C2B0;
  v31 = v14;
  v32 = v18;
  v33 = v15;
  v34 = a7;
  v29.receiver = a1;
  v29.super_class = &OBJC_METACLASS____HKFitnessFriendActivitySnapshot;
  v24 = v15;
  v25 = v18;
  v26 = v14;
  v27 = objc_msgSendSuper2(&v29, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v19, 0, 0, v30, v21, v23);

  return v27;
}

+ (id)_fitnessFriendActivitySnapshotWithSnapshotIndex:(int64_t)a3 startDate:(id)a4 endDate:(id)a5 sourceUUID:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = +[HKObjectType fitnessFriendActivitySnapshotType];
  [v12 timeIntervalSinceReferenceDate];
  v15 = v14;

  [v11 timeIntervalSinceReferenceDate];
  v17 = v16;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __113___HKFitnessFriendActivitySnapshot__fitnessFriendActivitySnapshotWithSnapshotIndex_startDate_endDate_sourceUUID___block_invoke;
  v22[3] = &unk_1E737C2D8;
  v23 = v10;
  v24 = a3;
  v21.receiver = a1;
  v21.super_class = &OBJC_METACLASS____HKFitnessFriendActivitySnapshot;
  v18 = v10;
  v19 = objc_msgSendSuper2(&v21, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v13, 0, 0, v22, v15, v17);

  return v19;
}

- (id)description
{
  energyBurned = self->_energyBurned;
  mmv = self->_mmv;
  briskMinutes = self->_briskMinutes;
  activeHours = self->_activeHours;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"FFActivitySnapshot(%f/%f, %f/%f, %f/%f, %f/%f, %lu, %f)", *&energyBurned, *&self->_energyBurnedGoal, *&mmv, *&self->_mmg, *&briskMinutes, *&self->_briskMinutesGoal, *&activeHours, *&self->_activeHoursGoal, self->_stepCount, *&self->_walkingAndRunningDistance];
}

+ (id)snapshotWithActivitySummary:(id)a3
{
  v3 = a3;
  v4 = [v3 _activitySummaryIndex];
  v5 = [v3 _startDate];
  v6 = [v3 _endDate];
  v7 = [_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithSnapshotIndex:v4 startDate:v5 endDate:v6 sourceUUID:0];

  [v7 setAmm:{objc_msgSend(v3, "activityMoveMode")}];
  v8 = [v3 appleMoveTime];
  v9 = +[HKUnit minuteUnit];
  [v8 doubleValueForUnit:v9];
  [v7 setMmv:?];

  v10 = [v3 appleMoveTimeGoal];
  v11 = +[HKUnit minuteUnit];
  [v10 doubleValueForUnit:v11];
  [v7 setMmg:?];

  v12 = [v3 activeEnergyBurned];
  v13 = +[HKUnit kilocalorieUnit];
  [v12 doubleValueForUnit:v13];
  [v7 setEnergyBurned:?];

  v14 = [v3 activeEnergyBurnedGoal];
  v15 = +[HKUnit kilocalorieUnit];
  [v14 doubleValueForUnit:v15];
  [v7 setEnergyBurnedGoal:?];

  v16 = [v3 appleExerciseTime];
  v17 = +[HKUnit minuteUnit];
  [v16 doubleValueForUnit:v17];
  [v7 setBriskMinutes:?];

  v18 = [v3 exerciseTimeGoal];
  v19 = +[HKUnit minuteUnit];
  [v18 doubleValueForUnit:v19];
  [v7 setBriskMinutesGoal:?];

  v20 = [v3 appleStandHours];
  v21 = +[HKUnit countUnit];
  [v20 doubleValueForUnit:v21];
  [v7 setActiveHours:?];

  v22 = [v3 standHoursGoal];
  v23 = +[HKUnit countUnit];
  [v22 doubleValueForUnit:v23];
  [v7 setActiveHoursGoal:?];

  v24 = [v3 stepCount];
  v25 = +[HKUnit countUnit];
  [v24 doubleValueForUnit:v25];
  [v7 setStepCount:v26];

  v27 = [v3 distanceWalkingRunning];
  v28 = +[HKUnit meterUnit];
  [v27 doubleValueForUnit:v28];
  [v7 setWalkingAndRunningDistance:?];

  v29 = [v3 _pushCount];
  v30 = +[HKUnit countUnit];
  [v29 doubleValueForUnit:v30];
  [v7 setPushCount:v31];

  v32 = [v3 _wheelchairUse];
  [v7 setWheelchairUse:v32];
  v33 = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  v34 = [MEMORY[0x1E695DF00] date];
  v35 = [v33 components:30 fromDate:v34];

  [v35 setHour:12];
  v36 = [v33 dateFromComponents:v35];
  v37 = [v33 timeZone];
  v38 = [v37 secondsFromGMTForDate:v36];

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
  [v7 setTimeZoneOffsetFromUTCForNoon:v39];

  return v7;
}

- (id)activitySummary
{
  v3 = objc_alloc_init(HKActivitySummary);
  [(HKActivitySummary *)v3 _setActivitySummaryIndex:[(_HKFitnessFriendActivitySnapshot *)self snapshotIndex]];
  v4 = [(HKSample *)self startDate];
  [(HKActivitySummary *)v3 _setStartDate:v4];

  v5 = [(HKSample *)self endDate];
  [(HKActivitySummary *)v3 _setEndDate:v5];

  v6 = +[HKUnit kilocalorieUnit];
  [(_HKFitnessFriendActivitySnapshot *)self energyBurned];
  v7 = [HKQuantity quantityWithUnit:v6 doubleValue:?];
  [(HKActivitySummary *)v3 setActiveEnergyBurned:v7];

  v8 = +[HKUnit kilocalorieUnit];
  [(_HKFitnessFriendActivitySnapshot *)self energyBurnedGoal];
  v9 = [HKQuantity quantityWithUnit:v8 doubleValue:?];
  [(HKActivitySummary *)v3 setActiveEnergyBurnedGoal:v9];

  v10 = +[HKUnit minuteUnit];
  [(_HKFitnessFriendActivitySnapshot *)self mmv];
  v11 = [HKQuantity quantityWithUnit:v10 doubleValue:?];
  [(HKActivitySummary *)v3 setAppleMoveTime:v11];

  v12 = +[HKUnit minuteUnit];
  [(_HKFitnessFriendActivitySnapshot *)self mmg];
  v13 = [HKQuantity quantityWithUnit:v12 doubleValue:?];
  [(HKActivitySummary *)v3 setAppleMoveTimeGoal:v13];

  [(HKActivitySummary *)v3 setActivityMoveMode:[(_HKFitnessFriendActivitySnapshot *)self amm]];
  v14 = +[HKUnit minuteUnit];
  [(_HKFitnessFriendActivitySnapshot *)self briskMinutes];
  v15 = [HKQuantity quantityWithUnit:v14 doubleValue:?];
  [(HKActivitySummary *)v3 setAppleExerciseTime:v15];

  [(_HKFitnessFriendActivitySnapshot *)self briskMinutesGoal];
  if (v16 > 0.0)
  {
    v17 = +[HKUnit minuteUnit];
    [(_HKFitnessFriendActivitySnapshot *)self briskMinutesGoal];
    v18 = [HKQuantity quantityWithUnit:v17 doubleValue:?];
    [(HKActivitySummary *)v3 setExerciseTimeGoal:v18];
  }

  v19 = +[HKUnit countUnit];
  [(_HKFitnessFriendActivitySnapshot *)self activeHours];
  v20 = [HKQuantity quantityWithUnit:v19 doubleValue:?];
  [(HKActivitySummary *)v3 setAppleStandHours:v20];

  [(_HKFitnessFriendActivitySnapshot *)self activeHoursGoal];
  if (v21 > 0.0)
  {
    v22 = +[HKUnit countUnit];
    [(_HKFitnessFriendActivitySnapshot *)self activeHoursGoal];
    v23 = [HKQuantity quantityWithUnit:v22 doubleValue:?];
    [(HKActivitySummary *)v3 setStandHoursGoal:v23];
  }

  v24 = +[HKUnit meterUnit];
  [(_HKFitnessFriendActivitySnapshot *)self walkingAndRunningDistance];
  v25 = [HKQuantity quantityWithUnit:v24 doubleValue:?];
  [(HKActivitySummary *)v3 setDistanceWalkingRunning:v25];

  v26 = +[HKUnit countUnit];
  [(_HKFitnessFriendActivitySnapshot *)self stepCount];
  v27 = [HKQuantity quantityWithUnit:v26 doubleValue:?];
  [(HKActivitySummary *)v3 setStepCount:v27];

  v28 = +[HKUnit countUnit];
  [(_HKFitnessFriendActivitySnapshot *)self pushCount];
  v29 = [HKQuantity quantityWithUnit:v28 doubleValue:?];
  [(HKActivitySummary *)v3 _setPushCount:v29];

  [(HKActivitySummary *)v3 _setWheelchairUse:[(_HKFitnessFriendActivitySnapshot *)self wheelchairUse]];

  return v3;
}

+ (id)_mostSignificantSnapshotAmongSnapshots:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [v10 _mostSignificantSnapshot:{*(*(&v13 + 1) + 8 * v9), v13}];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_mostSignificantSnapshot:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  [(_HKFitnessFriendActivitySnapshot *)v4 mmv];
  v7 = v6;
  [(_HKFitnessFriendActivitySnapshot *)self mmv];
  v8 = v5;
  if (v7 <= v9)
  {
    [(_HKFitnessFriendActivitySnapshot *)v5 energyBurned];
    v11 = v10;
    [(_HKFitnessFriendActivitySnapshot *)self energyBurned];
    v8 = v5;
    if (v11 <= v12)
    {
LABEL_4:
      v8 = self;
    }
  }

  v13 = v8;

  return v13;
}

- (double)energyBurnedGoalPercentage
{
  energyBurnedGoal = self->_energyBurnedGoal;
  result = 0.0;
  if (energyBurnedGoal > 0.0)
  {
    return self->_energyBurned / energyBurnedGoal;
  }

  return result;
}

- (double)mmgp
{
  mmg = self->_mmg;
  result = 0.0;
  if (mmg > 0.0)
  {
    return self->_mmv / mmg;
  }

  return result;
}

- (double)briskMinutesGoalPercentage
{
  briskMinutesGoal = self->_briskMinutesGoal;
  result = 0.0;
  if (briskMinutesGoal > 0.0)
  {
    return self->_briskMinutes / briskMinutesGoal;
  }

  return result;
}

- (double)activeHoursGoalPercentage
{
  activeHoursGoal = self->_activeHoursGoal;
  result = 0.0;
  if (activeHoursGoal > 0.0)
  {
    return self->_activeHours / activeHoursGoal;
  }

  return result;
}

- (_HKFitnessFriendActivitySnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _HKFitnessFriendActivitySnapshot;
  v5 = [(HKSample *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FriendUUID"];
    friendUUID = v5->_friendUUID;
    v5->_friendUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SourceUUID"];
    sourceUUID = v5->_sourceUUID;
    v5->_sourceUUID = v8;

    v5->_snapshotIndex = [v4 decodeInt64ForKey:@"SnapshotIndex"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotUploadedDate"];
    snapshotUploadedDate = v5->_snapshotUploadedDate;
    v5->_snapshotUploadedDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TimeZoneOffsetForNoonFromUTC"];
    timeZoneOffsetFromUTCForNoon = v5->_timeZoneOffsetFromUTCForNoon;
    v5->_timeZoneOffsetFromUTCForNoon = v12;

    [v4 decodeDoubleForKey:@"ActiveHours"];
    v5->_activeHours = v14;
    [v4 decodeDoubleForKey:@"ActiveHoursGoal"];
    v5->_activeHoursGoal = v15;
    [v4 decodeDoubleForKey:@"BriskMinutes"];
    v5->_briskMinutes = v16;
    [v4 decodeDoubleForKey:@"BriskMinutesGoal"];
    v5->_briskMinutesGoal = v17;
    [v4 decodeDoubleForKey:@"EnergyBurned"];
    v5->_energyBurned = v18;
    [v4 decodeDoubleForKey:@"EnergyBurnedGoal"];
    v5->_energyBurnedGoal = v19;
    [v4 decodeDoubleForKey:@"MoveMinutes"];
    v5->_mmv = v20;
    [v4 decodeDoubleForKey:@"MoveMinutesGoal"];
    v5->_mmg = v21;
    v5->_amm = [v4 decodeIntegerForKey:@"ActivityMoveMode"];
    [v4 decodeDoubleForKey:@"StepCount"];
    v5->_stepCount = v22;
    [v4 decodeDoubleForKey:@"PushCount"];
    v5->_pushCount = v23;
    v5->_wheelchairUse = [v4 decodeIntegerForKey:@"WheelchairUse"];
    [v4 decodeDoubleForKey:@"WalkingAndRunningDistance"];
    v5->_walkingAndRunningDistance = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = _HKFitnessFriendActivitySnapshot;
  v4 = a3;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_friendUUID forKey:{@"FriendUUID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_sourceUUID forKey:@"SourceUUID"];
  [v4 encodeInt64:self->_snapshotIndex forKey:@"SnapshotIndex"];
  [v4 encodeObject:self->_snapshotUploadedDate forKey:@"SnapshotUploadedDate"];
  [v4 encodeObject:self->_timeZoneOffsetFromUTCForNoon forKey:@"TimeZoneOffsetForNoonFromUTC"];
  [v4 encodeDouble:@"ActiveHours" forKey:self->_activeHours];
  [v4 encodeDouble:@"ActiveHoursGoal" forKey:self->_activeHoursGoal];
  [v4 encodeDouble:@"BriskMinutes" forKey:self->_briskMinutes];
  [v4 encodeDouble:@"BriskMinutesGoal" forKey:self->_briskMinutesGoal];
  [v4 encodeDouble:@"EnergyBurned" forKey:self->_energyBurned];
  [v4 encodeDouble:@"EnergyBurnedGoal" forKey:self->_energyBurnedGoal];
  [v4 encodeDouble:@"MoveMinutes" forKey:self->_mmv];
  [v4 encodeDouble:@"MoveMinutesGoal" forKey:self->_mmg];
  [v4 encodeInteger:self->_amm forKey:@"ActivityMoveMode"];
  [v4 encodeDouble:@"StepCount" forKey:self->_stepCount];
  [v4 encodeDouble:@"PushCount" forKey:self->_pushCount];
  [v4 encodeInteger:self->_wheelchairUse forKey:@"WheelchairUse"];
  [v4 encodeDouble:@"WalkingAndRunningDistance" forKey:self->_walkingAndRunningDistance];
}

+ (void)_fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"friendUUID != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"startDate != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"endDate != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"snapshotUploadedDate != nil" object:? file:? lineNumber:? description:?];
}

@end