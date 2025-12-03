@interface _HKFitnessFriendActivitySnapshot
+ (id)_fitnessFriendActivitySnapshotWithFriendUUID:(id)d sourceUUID:(id)iD startDate:(id)date endDate:(id)endDate snapshotIndex:(int64_t)index snapshotUploadedDate:(id)uploadedDate;
+ (id)_fitnessFriendActivitySnapshotWithSnapshotIndex:(int64_t)index startDate:(id)date endDate:(id)endDate sourceUUID:(id)d;
+ (id)_mostSignificantSnapshotAmongSnapshots:(id)snapshots;
+ (id)snapshotWithActivitySummary:(id)summary;
- (NSTimeZone)timeZone;
- (_HKFitnessFriendActivitySnapshot)initWithCoder:(id)coder;
- (double)activeHoursGoalPercentage;
- (double)briskMinutesGoalPercentage;
- (double)energyBurnedGoalPercentage;
- (double)mmgp;
- (id)_mostSignificantSnapshot:(id)snapshot;
- (id)activitySummary;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HKFitnessFriendActivitySnapshot

- (NSTimeZone)timeZone
{
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  timeZoneOffsetFromUTCForNoon = self->_timeZoneOffsetFromUTCForNoon;
  if (timeZoneOffsetFromUTCForNoon)
  {
    integerValue = [(NSNumber *)timeZoneOffsetFromUTCForNoon integerValue];
    v6 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:integerValue];

    localTimeZone = v6;
  }

  return localTimeZone;
}

+ (id)_fitnessFriendActivitySnapshotWithFriendUUID:(id)d sourceUUID:(id)iD startDate:(id)date endDate:(id)endDate snapshotIndex:(int64_t)index snapshotUploadedDate:(id)uploadedDate
{
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  endDateCopy = endDate;
  uploadedDateCopy = uploadedDate;
  if (dCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    +[_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:];
    if (dateCopy)
    {
LABEL_3:
      if (endDateCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      +[_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:];
      if (uploadedDateCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  +[_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:];
  if (!endDateCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (uploadedDateCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  +[_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithFriendUUID:sourceUUID:startDate:endDate:snapshotIndex:snapshotUploadedDate:];
LABEL_5:
  v19 = +[HKObjectType fitnessFriendActivitySnapshotType];
  [dateCopy timeIntervalSinceReferenceDate];
  v21 = v20;
  [endDateCopy timeIntervalSinceReferenceDate];
  v23 = v22;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __145___HKFitnessFriendActivitySnapshot__fitnessFriendActivitySnapshotWithFriendUUID_sourceUUID_startDate_endDate_snapshotIndex_snapshotUploadedDate___block_invoke;
  v30[3] = &unk_1E737C2B0;
  v31 = dCopy;
  v32 = uploadedDateCopy;
  v33 = iDCopy;
  indexCopy = index;
  v29.receiver = self;
  v29.super_class = &OBJC_METACLASS____HKFitnessFriendActivitySnapshot;
  v24 = iDCopy;
  v25 = uploadedDateCopy;
  v26 = dCopy;
  v27 = objc_msgSendSuper2(&v29, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v19, 0, 0, v30, v21, v23);

  return v27;
}

+ (id)_fitnessFriendActivitySnapshotWithSnapshotIndex:(int64_t)index startDate:(id)date endDate:(id)endDate sourceUUID:(id)d
{
  dCopy = d;
  endDateCopy = endDate;
  dateCopy = date;
  v13 = +[HKObjectType fitnessFriendActivitySnapshotType];
  [dateCopy timeIntervalSinceReferenceDate];
  v15 = v14;

  [endDateCopy timeIntervalSinceReferenceDate];
  v17 = v16;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __113___HKFitnessFriendActivitySnapshot__fitnessFriendActivitySnapshotWithSnapshotIndex_startDate_endDate_sourceUUID___block_invoke;
  v22[3] = &unk_1E737C2D8;
  v23 = dCopy;
  indexCopy = index;
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS____HKFitnessFriendActivitySnapshot;
  v18 = dCopy;
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

+ (id)snapshotWithActivitySummary:(id)summary
{
  summaryCopy = summary;
  _activitySummaryIndex = [summaryCopy _activitySummaryIndex];
  _startDate = [summaryCopy _startDate];
  _endDate = [summaryCopy _endDate];
  v7 = [_HKFitnessFriendActivitySnapshot _fitnessFriendActivitySnapshotWithSnapshotIndex:_activitySummaryIndex startDate:_startDate endDate:_endDate sourceUUID:0];

  [v7 setAmm:{objc_msgSend(summaryCopy, "activityMoveMode")}];
  appleMoveTime = [summaryCopy appleMoveTime];
  v9 = +[HKUnit minuteUnit];
  [appleMoveTime doubleValueForUnit:v9];
  [v7 setMmv:?];

  appleMoveTimeGoal = [summaryCopy appleMoveTimeGoal];
  v11 = +[HKUnit minuteUnit];
  [appleMoveTimeGoal doubleValueForUnit:v11];
  [v7 setMmg:?];

  activeEnergyBurned = [summaryCopy activeEnergyBurned];
  v13 = +[HKUnit kilocalorieUnit];
  [activeEnergyBurned doubleValueForUnit:v13];
  [v7 setEnergyBurned:?];

  activeEnergyBurnedGoal = [summaryCopy activeEnergyBurnedGoal];
  v15 = +[HKUnit kilocalorieUnit];
  [activeEnergyBurnedGoal doubleValueForUnit:v15];
  [v7 setEnergyBurnedGoal:?];

  appleExerciseTime = [summaryCopy appleExerciseTime];
  v17 = +[HKUnit minuteUnit];
  [appleExerciseTime doubleValueForUnit:v17];
  [v7 setBriskMinutes:?];

  exerciseTimeGoal = [summaryCopy exerciseTimeGoal];
  v19 = +[HKUnit minuteUnit];
  [exerciseTimeGoal doubleValueForUnit:v19];
  [v7 setBriskMinutesGoal:?];

  appleStandHours = [summaryCopy appleStandHours];
  v21 = +[HKUnit countUnit];
  [appleStandHours doubleValueForUnit:v21];
  [v7 setActiveHours:?];

  standHoursGoal = [summaryCopy standHoursGoal];
  v23 = +[HKUnit countUnit];
  [standHoursGoal doubleValueForUnit:v23];
  [v7 setActiveHoursGoal:?];

  stepCount = [summaryCopy stepCount];
  v25 = +[HKUnit countUnit];
  [stepCount doubleValueForUnit:v25];
  [v7 setStepCount:v26];

  distanceWalkingRunning = [summaryCopy distanceWalkingRunning];
  v28 = +[HKUnit meterUnit];
  [distanceWalkingRunning doubleValueForUnit:v28];
  [v7 setWalkingAndRunningDistance:?];

  _pushCount = [summaryCopy _pushCount];
  v30 = +[HKUnit countUnit];
  [_pushCount doubleValueForUnit:v30];
  [v7 setPushCount:v31];

  _wheelchairUse = [summaryCopy _wheelchairUse];
  [v7 setWheelchairUse:_wheelchairUse];
  hk_gregorianCalendar = [MEMORY[0x1E695DEE8] hk_gregorianCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v35 = [hk_gregorianCalendar components:30 fromDate:date];

  [v35 setHour:12];
  v36 = [hk_gregorianCalendar dateFromComponents:v35];
  timeZone = [hk_gregorianCalendar timeZone];
  v38 = [timeZone secondsFromGMTForDate:v36];

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:v38];
  [v7 setTimeZoneOffsetFromUTCForNoon:v39];

  return v7;
}

- (id)activitySummary
{
  v3 = objc_alloc_init(HKActivitySummary);
  [(HKActivitySummary *)v3 _setActivitySummaryIndex:[(_HKFitnessFriendActivitySnapshot *)self snapshotIndex]];
  startDate = [(HKSample *)self startDate];
  [(HKActivitySummary *)v3 _setStartDate:startDate];

  endDate = [(HKSample *)self endDate];
  [(HKActivitySummary *)v3 _setEndDate:endDate];

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

+ (id)_mostSignificantSnapshotAmongSnapshots:(id)snapshots
{
  v18 = *MEMORY[0x1E69E9840];
  snapshotsCopy = snapshots;
  firstObject = [snapshotsCopy firstObject];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = snapshotsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      v10 = firstObject;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        firstObject = [v10 _mostSignificantSnapshot:{*(*(&v13 + 1) + 8 * v9), v13}];

        ++v9;
        v10 = firstObject;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (id)_mostSignificantSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = snapshotCopy;
  if (!snapshotCopy)
  {
    goto LABEL_4;
  }

  [(_HKFitnessFriendActivitySnapshot *)snapshotCopy mmv];
  v7 = v6;
  [(_HKFitnessFriendActivitySnapshot *)self mmv];
  selfCopy = v5;
  if (v7 <= v9)
  {
    [(_HKFitnessFriendActivitySnapshot *)v5 energyBurned];
    v11 = v10;
    [(_HKFitnessFriendActivitySnapshot *)self energyBurned];
    selfCopy = v5;
    if (v11 <= v12)
    {
LABEL_4:
      selfCopy = self;
    }
  }

  v13 = selfCopy;

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

- (_HKFitnessFriendActivitySnapshot)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = _HKFitnessFriendActivitySnapshot;
  v5 = [(HKSample *)&v26 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FriendUUID"];
    friendUUID = v5->_friendUUID;
    v5->_friendUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SourceUUID"];
    sourceUUID = v5->_sourceUUID;
    v5->_sourceUUID = v8;

    v5->_snapshotIndex = [coderCopy decodeInt64ForKey:@"SnapshotIndex"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SnapshotUploadedDate"];
    snapshotUploadedDate = v5->_snapshotUploadedDate;
    v5->_snapshotUploadedDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TimeZoneOffsetForNoonFromUTC"];
    timeZoneOffsetFromUTCForNoon = v5->_timeZoneOffsetFromUTCForNoon;
    v5->_timeZoneOffsetFromUTCForNoon = v12;

    [coderCopy decodeDoubleForKey:@"ActiveHours"];
    v5->_activeHours = v14;
    [coderCopy decodeDoubleForKey:@"ActiveHoursGoal"];
    v5->_activeHoursGoal = v15;
    [coderCopy decodeDoubleForKey:@"BriskMinutes"];
    v5->_briskMinutes = v16;
    [coderCopy decodeDoubleForKey:@"BriskMinutesGoal"];
    v5->_briskMinutesGoal = v17;
    [coderCopy decodeDoubleForKey:@"EnergyBurned"];
    v5->_energyBurned = v18;
    [coderCopy decodeDoubleForKey:@"EnergyBurnedGoal"];
    v5->_energyBurnedGoal = v19;
    [coderCopy decodeDoubleForKey:@"MoveMinutes"];
    v5->_mmv = v20;
    [coderCopy decodeDoubleForKey:@"MoveMinutesGoal"];
    v5->_mmg = v21;
    v5->_amm = [coderCopy decodeIntegerForKey:@"ActivityMoveMode"];
    [coderCopy decodeDoubleForKey:@"StepCount"];
    v5->_stepCount = v22;
    [coderCopy decodeDoubleForKey:@"PushCount"];
    v5->_pushCount = v23;
    v5->_wheelchairUse = [coderCopy decodeIntegerForKey:@"WheelchairUse"];
    [coderCopy decodeDoubleForKey:@"WalkingAndRunningDistance"];
    v5->_walkingAndRunningDistance = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _HKFitnessFriendActivitySnapshot;
  coderCopy = coder;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_friendUUID forKey:{@"FriendUUID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_sourceUUID forKey:@"SourceUUID"];
  [coderCopy encodeInt64:self->_snapshotIndex forKey:@"SnapshotIndex"];
  [coderCopy encodeObject:self->_snapshotUploadedDate forKey:@"SnapshotUploadedDate"];
  [coderCopy encodeObject:self->_timeZoneOffsetFromUTCForNoon forKey:@"TimeZoneOffsetForNoonFromUTC"];
  [coderCopy encodeDouble:@"ActiveHours" forKey:self->_activeHours];
  [coderCopy encodeDouble:@"ActiveHoursGoal" forKey:self->_activeHoursGoal];
  [coderCopy encodeDouble:@"BriskMinutes" forKey:self->_briskMinutes];
  [coderCopy encodeDouble:@"BriskMinutesGoal" forKey:self->_briskMinutesGoal];
  [coderCopy encodeDouble:@"EnergyBurned" forKey:self->_energyBurned];
  [coderCopy encodeDouble:@"EnergyBurnedGoal" forKey:self->_energyBurnedGoal];
  [coderCopy encodeDouble:@"MoveMinutes" forKey:self->_mmv];
  [coderCopy encodeDouble:@"MoveMinutesGoal" forKey:self->_mmg];
  [coderCopy encodeInteger:self->_amm forKey:@"ActivityMoveMode"];
  [coderCopy encodeDouble:@"StepCount" forKey:self->_stepCount];
  [coderCopy encodeDouble:@"PushCount" forKey:self->_pushCount];
  [coderCopy encodeInteger:self->_wheelchairUse forKey:@"WheelchairUse"];
  [coderCopy encodeDouble:@"WalkingAndRunningDistance" forKey:self->_walkingAndRunningDistance];
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