@interface HKActivityCache
+ (id)_activityCacheWithStartDate:(id)a3 endDate:(id)a4 dateComponents:(id)a5 sequence:(int64_t)a6 energyBurned:(id)a7 energyBurnedGoal:(id)a8 walkingAndRunningDistance:(id)a9 metadata:(id)a10;
+ (id)_activityCacheWithStartDate:(id)a3 endDate:(id)a4 dateComponents:(id)a5 sequence:(int64_t)a6 metadata:(id)a7;
+ (id)_activityCacheWithUUID:(id)a3 startDate:(id)a4 endDate:(id)a5 dateComponents:(id)a6 sequence:(int64_t)a7;
- (BOOL)_isEqualToActivityCache:(id)a3;
- (BOOL)_lock_isEqualToActivityCache:(id)a3;
- (BOOL)hasActiveHours;
- (BOOL)hasActiveHoursGoal;
- (BOOL)hasActiveHoursGoalDate;
- (BOOL)hasBriskMinutes;
- (BOOL)hasBriskMinutesGoal;
- (BOOL)hasBriskMinutesGoalDate;
- (BOOL)hasDailyBriskMinutesStatistics;
- (BOOL)hasDailyEnergyBurnedStatistics;
- (BOOL)hasDailyMoveMinutesStatistics;
- (BOOL)hasDateComponents;
- (BOOL)hasDeepBreathingDuration;
- (BOOL)hasEnergyBurned;
- (BOOL)hasEnergyBurnedGoal;
- (BOOL)hasFlightsClimbed;
- (BOOL)hasMoveMinutes;
- (BOOL)hasMoveMinutesGoal;
- (BOOL)hasPushCount;
- (BOOL)hasStepCount;
- (BOOL)hasWalkingAndRunningDistance;
- (BOOL)hasWheelchairUse;
- (BOOL)isPaused;
- (HKActivityCache)initWithCoder:(id)a3;
- (HKQuantity)activeHoursGoal;
- (HKQuantity)briskMinutesGoal;
- (HKQuantity)energyBurned;
- (HKQuantity)energyBurnedGoal;
- (HKQuantity)moveMinutesGoal;
- (HKQuantity)walkingAndRunningDistance;
- (NSArray)dailyBriskMinutesStatistics;
- (NSArray)dailyEnergyBurnedStatistics;
- (NSArray)dailyMoveMinutesStatistics;
- (NSDate)energyBurnedGoalDate;
- (NSDate)moveMinutesGoalDate;
- (NSDateComponents)dateComponents;
- (double)_activeHoursGoalCount;
- (double)_briskMinutesGoalInMinutes;
- (double)_energyBurnedGoalInKilocalories;
- (double)_energyBurnedInKilocalories;
- (double)_lock_activeHoursGoalCount;
- (double)_lock_activeHoursGoalPercentage;
- (double)_lock_briskMinutesGoalInMinutes;
- (double)_lock_briskMinutesGoalPercentage;
- (double)_lock_energyBurnedGoalInKilocalories;
- (double)_lock_energyBurnedGoalPercentage;
- (double)_lock_energyBurnedInKilocalories;
- (double)_lock_moveMinutesGoalInMinutes;
- (double)_lock_moveMinutesGoalPercentage;
- (double)_lock_walkingAndRunningDistanceInMeters;
- (double)_moveMinutesGoalInMinutes;
- (double)_walkingAndRunningDistanceInMeters;
- (double)activeHours;
- (double)activeHoursGoalPercentage;
- (double)briskMinutes;
- (double)briskMinutesGoalPercentage;
- (double)deepBreathingDuration;
- (double)energyBurnedGoalPercentage;
- (double)moveMinutes;
- (double)moveMinutesGoalPercentage;
- (id)_lock_activeHoursGoal;
- (id)_lock_briskMinutesGoal;
- (id)_lock_dailyBriskMinutesStatistics;
- (id)_lock_dailyEnergyBurnedStatistics;
- (id)_lock_dailyMoveMinutesStatistics;
- (id)_lock_dateComponents;
- (id)_lock_endDate;
- (id)_lock_energyBurned;
- (id)_lock_energyBurnedGoal;
- (id)_lock_energyBurnedGoalDate;
- (id)_lock_fallbackActiveHoursGoal;
- (id)_lock_fallbackBriskMinutesGoal;
- (id)_lock_metadata;
- (id)_lock_moveMinutesGoal;
- (id)_lock_moveMinutesGoalDate;
- (id)_lock_startDate;
- (id)_lock_walkingAndRunningDistance;
- (id)_valueDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)endDate;
- (id)metadata;
- (id)startDate;
- (int64_t)activityMoveMode;
- (int64_t)cacheIndex;
- (int64_t)flightsClimbed;
- (int64_t)pushCount;
- (int64_t)sequence;
- (int64_t)stepCount;
- (int64_t)version;
- (int64_t)wheelchairUse;
- (unint64_t)_lock_knownFields;
- (unint64_t)knownFields;
- (void)_lock_setActiveHours:(double)a3;
- (void)_lock_setActiveHoursGoal:(id)a3 date:(id)a4;
- (void)_lock_setActiveHoursGoalDateOnly:(id)a3;
- (void)_lock_setActiveHoursGoalOnly:(id)a3;
- (void)_lock_setActivityMoveMode:(int64_t)a3;
- (void)_lock_setBriskMinutes:(double)a3;
- (void)_lock_setBriskMinutesGoal:(id)a3 date:(id)a4;
- (void)_lock_setBriskMinutesGoalDateOnly:(id)a3;
- (void)_lock_setBriskMinutesGoalOnly:(id)a3;
- (void)_lock_setCacheIndex:(int64_t)a3;
- (void)_lock_setDailyBriskMinutesStatistics:(id)a3;
- (void)_lock_setDailyEnergyBurnedStatistics:(id)a3;
- (void)_lock_setDailyMoveMinutesStatistics:(id)a3;
- (void)_lock_setDeepBreathingDuration:(double)a3;
- (void)_lock_setEndDate:(id)a3;
- (void)_lock_setEnergyBurned:(id)a3;
- (void)_lock_setEnergyBurnedGoal:(id)a3 date:(id)a4;
- (void)_lock_setEnergyBurnedGoalDateOnly:(id)a3;
- (void)_lock_setEnergyBurnedGoalOnly:(id)a3;
- (void)_lock_setFlightsClimbed:(int64_t)a3;
- (void)_lock_setMetadata:(id)a3;
- (void)_lock_setMoveMinutes:(double)a3;
- (void)_lock_setMoveMinutesGoal:(id)a3 date:(id)a4;
- (void)_lock_setMoveMinutesGoalDateOnly:(id)a3;
- (void)_lock_setMoveMinutesGoalOnly:(id)a3;
- (void)_lock_setPushCount:(int64_t)a3;
- (void)_lock_setStartDate:(id)a3;
- (void)_lock_setStepCount:(int64_t)a3;
- (void)_lock_setWalkingAndRunningDistance:(id)a3;
- (void)_lock_setWheelchairUse:(int64_t)a3;
- (void)_setActiveHours:(double)a3;
- (void)_setActiveHoursGoal:(id)a3 date:(id)a4;
- (void)_setActiveHoursGoalDateOnly:(id)a3;
- (void)_setActiveHoursGoalOnly:(id)a3;
- (void)_setActivityMoveMode:(int64_t)a3;
- (void)_setBriskMinutes:(double)a3;
- (void)_setBriskMinutesGoal:(id)a3 date:(id)a4;
- (void)_setBriskMinutesGoalDateOnly:(id)a3;
- (void)_setBriskMinutesGoalOnly:(id)a3;
- (void)_setCacheIndex:(int64_t)a3;
- (void)_setDailyBriskMinutesStatistics:(id)a3;
- (void)_setDailyEnergyBurnedStatistics:(id)a3;
- (void)_setDailyMoveMinutesStatistics:(id)a3;
- (void)_setDeepBreathingDuration:(double)a3;
- (void)_setEndDate:(id)a3;
- (void)_setEnergyBurned:(id)a3;
- (void)_setEnergyBurnedGoal:(id)a3 date:(id)a4;
- (void)_setEnergyBurnedGoalDateOnly:(id)a3;
- (void)_setEnergyBurnedGoalOnly:(id)a3;
- (void)_setFlightsClimbed:(int64_t)a3;
- (void)_setMetadata:(id)a3;
- (void)_setMoveMinutes:(double)a3;
- (void)_setMoveMinutesGoal:(id)a3 date:(id)a4;
- (void)_setMoveMinutesGoalDateOnly:(id)a3;
- (void)_setMoveMinutesGoalOnly:(id)a3;
- (void)_setPushCount:(int64_t)a3;
- (void)_setSequence:(int64_t)a3;
- (void)_setStartDate:(id)a3;
- (void)_setStepCount:(int64_t)a3;
- (void)_setVersion:(int64_t)a3;
- (void)_setWalkingAndRunningDistance:(id)a3;
- (void)_setWheelchairUse:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
@end

@implementation HKActivityCache

- (int64_t)cacheIndex
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_cacheIndex];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasBriskMinutes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasBriskMinutes];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasActiveHours
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasActiveHours];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasStepCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasStepCount];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasPushCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasPushCount];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasWheelchairUse
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasWheelchairUse];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasDeepBreathingDuration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasDeepBreathingDuration];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasFlightsClimbed
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasFlightsClimbed];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSDateComponents)dateComponents
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_dateComponents];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)energyBurned
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_energyBurned];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)walkingAndRunningDistance
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_walkingAndRunningDistance];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)briskMinutes
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_briskMinutes];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)activeHours
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_activeHours];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (int64_t)stepCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_stepCount];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int64_t)pushCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_pushCount];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int64_t)wheelchairUse
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_wheelchairUse];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (double)deepBreathingDuration
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_deepBreathingDuration];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (BOOL)hasEnergyBurnedGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasEnergyBurnedGoal];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (HKQuantity)energyBurnedGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_energyBurnedGoal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSDate)energyBurnedGoalDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_energyBurnedGoalDate];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)flightsClimbed
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_flightsClimbed];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSArray)dailyEnergyBurnedStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_dailyEnergyBurnedStatistics];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)dailyBriskMinutesStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_dailyBriskMinutesStatistics];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasActiveHoursGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasActiveHoursGoal];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (HKQuantity)activeHoursGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_activeHoursGoal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasEnergyBurned
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasEnergyBurned];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasBriskMinutesGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasBriskMinutesGoal];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (HKQuantity)briskMinutesGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_briskMinutesGoal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasWalkingAndRunningDistance
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasWalkingAndRunningDistance];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasDailyEnergyBurnedStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasDailyEnergyBurnedStatistics];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BOOL)hasDailyBriskMinutesStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasDailyBriskMinutesStatistics];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_valueDescription
{
  os_unfair_lock_lock(&self->_lock);
  v30 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sequence];
  v33 = [(HKActivityCache *)self _lock_hasEnergyBurned];
  if (v33)
  {
    v4 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_energyBurnedInKilocalories];
    v44 = [v4 numberWithDouble:?];
  }

  else
  {
    v44 = 0;
  }

  v32 = [(HKActivityCache *)self _lock_hasEnergyBurnedGoal];
  if (v32)
  {
    v5 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_energyBurnedGoalInKilocalories];
    v43 = [v5 numberWithDouble:?];
  }

  else
  {
    v43 = 0;
  }

  v31 = [(HKActivityCache *)self _lock_hasMoveMinutes];
  if (v31)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:self->_moveMinutes];
  }

  else
  {
    v42 = 0;
  }

  v29 = [(HKActivityCache *)self _lock_hasMoveMinutesGoal];
  if (v29)
  {
    v6 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_moveMinutesGoalInMinutes];
    v41 = [v6 numberWithDouble:?];
  }

  else
  {
    v41 = 0;
  }

  v28 = [(HKActivityCache *)self _lock_hasBriskMinutes];
  if (v28)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithDouble:self->_briskMinutes];
  }

  else
  {
    v40 = 0;
  }

  v27 = [(HKActivityCache *)self _lock_hasBriskMinutesGoal];
  if (v27)
  {
    v7 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_briskMinutesGoalInMinutes];
    v39 = [v7 numberWithDouble:?];
  }

  else
  {
    v39 = 0;
  }

  v26 = [(HKActivityCache *)self _lock_hasActiveHours];
  if (v26)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithDouble:self->_activeHours];
  }

  else
  {
    v38 = 0;
  }

  v25 = [(HKActivityCache *)self _lock_hasActiveHoursGoal];
  if (v25)
  {
    v8 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_activeHoursGoalCount];
    v37 = [v8 numberWithDouble:?];
  }

  else
  {
    v37 = 0;
  }

  v24 = [(HKActivityCache *)self _lock_hasStepCount];
  if (v24)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:self->_stepCount];
  }

  else
  {
    v36 = 0;
  }

  v23 = [(HKActivityCache *)self _lock_hasPushCount];
  if (v23)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:self->_pushCount];
  }

  else
  {
    v35 = 0;
  }

  v9 = [(HKActivityCache *)self _lock_hasWalkingAndRunningDistance];
  if (v9)
  {
    v10 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_walkingAndRunningDistanceInMeters];
    v34 = [v10 numberWithDouble:?];
  }

  else
  {
    v34 = 0;
  }

  v11 = [(HKActivityCache *)self _lock_hasDeepBreathingDuration];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_deepBreathingDuration];
  }

  else
  {
    v12 = 0;
  }

  v13 = [(HKActivityCache *)self _lock_hasFlightsClimbed];
  v14 = v3;
  if (v13)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_flightsClimbed];
  }

  else
  {
    v15 = 0;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activityMoveMode];
  if (self->_paused)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  v22 = v17;
  v19 = v14;
  v20 = [v30 stringWithFormat:@"{HKActivityCache: Sequence=%@ EnergyBurned=(%@/%@) MoveMinutes=(%@/%@) BriskMinutes=(%@/%@) ActiveHours=(%@/%@) StepCount=(%@) PushCount=(%@) Meters=(%@) BreatheDuration=(%@) Flights=(%@) ActivityModeMode=(%@) Paused=(%@) Version=(%@)}", v14, v44, v43, v42, v41, v40, v39, v38, v37, v36, v35, v34, v12, v15, v16, v22, v18];

  if (v13)
  {

    if (!v11)
    {
LABEL_45:
      if (!v9)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if (!v11)
  {
    goto LABEL_45;
  }

  if (v9)
  {
LABEL_46:
  }

LABEL_47:
  if (v23)
  {
  }

  if (v24)
  {
  }

  if (v25)
  {
  }

  if (v26)
  {
  }

  if (v27)
  {
  }

  if (v28)
  {
  }

  if (v29)
  {
  }

  if (v31)
  {
  }

  if (v32)
  {
  }

  if (v33)
  {
  }

  os_unfair_lock_unlock(&self->_lock);

  return v20;
}

- (double)_energyBurnedInKilocalories
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_energyBurnedInKilocalories];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)_energyBurnedGoalInKilocalories
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_energyBurnedGoalInKilocalories];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)_walkingAndRunningDistanceInMeters
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_walkingAndRunningDistanceInMeters];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

+ (id)_activityCacheWithStartDate:(id)a3 endDate:(id)a4 dateComponents:(id)a5 sequence:(int64_t)a6 energyBurned:(id)a7 energyBurnedGoal:(id)a8 walkingAndRunningDistance:(id)a9 metadata:(id)a10
{
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = [a1 _activityCacheWithStartDate:a3 endDate:a4 dateComponents:a5 sequence:a6 metadata:a10];
  [v20 _setEnergyBurned:v19];

  [v20 _setEnergyBurnedGoal:v18];
  [v20 _setWalkingAndRunningDistance:v17];

  return v20;
}

+ (id)_activityCacheWithStartDate:(id)a3 endDate:(id)a4 dateComponents:(id)a5 sequence:(int64_t)a6 metadata:(id)a7
{
  v7 = 0;
  if (a4 && a3 && a5)
  {
    v13 = a7;
    v14 = a5;
    v15 = a4;
    v16 = a3;
    v17 = _HKCachedImmutableGregorianCalendarWithUTCTimeZone();
    v32 = 0;
    v18 = _HKDerivedCacheIndexAndDateComponents(v17, v14, &v32);

    v19 = v32;
    v20 = +[HKObjectType activityCacheType];
    [v16 timeIntervalSinceReferenceDate];
    v22 = v21;

    [v15 timeIntervalSinceReferenceDate];
    v24 = v23;

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __88__HKActivityCache__activityCacheWithStartDate_endDate_dateComponents_sequence_metadata___block_invoke;
    v28[3] = &unk_1E7381408;
    v29 = v19;
    v30 = v18;
    v31 = a6;
    v27.receiver = a1;
    v27.super_class = &OBJC_METACLASS___HKActivityCache;
    v25 = v19;
    v7 = objc_msgSendSuper2(&v27, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v20, 0, v13, v28, v22, v24);
  }

  return v7;
}

void __88__HKActivityCache__activityCacheWithStartDate_endDate_dateComponents_sequence_metadata___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 104) = *(a1 + 40);
  objc_storeStrong((a2 + 120), *(a1 + 32));
  v4 = a2;
  v4[14] = *(a1 + 48);
  v4[37] = 1;
  *(v4 + 304) = 0;
  v4[39] = 2;
  *(v4 + 24) = 0;
}

+ (id)_activityCacheWithUUID:(id)a3 startDate:(id)a4 endDate:(id)a5 dateComponents:(id)a6 sequence:(int64_t)a7
{
  v12 = a3;
  v13 = v12;
  v14 = 0;
  if (a5 && a4 && v12 && a6)
  {
    v15 = a6;
    v16 = a5;
    v17 = a4;
    v18 = _HKCachedImmutableGregorianCalendarWithUTCTimeZone();
    v34 = 0;
    v19 = _HKDerivedCacheIndexAndDateComponents(v18, v15, &v34);

    v20 = v34;
    v21 = +[HKObjectType activityCacheType];
    [v17 timeIntervalSinceReferenceDate];
    v23 = v22;

    [v16 timeIntervalSinceReferenceDate];
    v25 = v24;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __84__HKActivityCache__activityCacheWithUUID_startDate_endDate_dateComponents_sequence___block_invoke;
    v29[3] = &unk_1E7381430;
    v32 = v19;
    v33 = a7;
    v30 = v20;
    v31 = v13;
    v28.receiver = a1;
    v28.super_class = &OBJC_METACLASS___HKActivityCache;
    v26 = v20;
    v14 = objc_msgSendSuper2(&v28, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v21, 0, 0, v29, v23, v25);
  }

  return v14;
}

void __84__HKActivityCache__activityCacheWithUUID_startDate_endDate_dateComponents_sequence___block_invoke(uint64_t a1, uint64_t a2)
{
  *(a2 + 104) = *(a1 + 48);
  objc_storeStrong((a2 + 120), *(a1 + 32));
  v4 = a2;
  v4[14] = *(a1 + 56);
  v4[37] = 1;
  *(v4 + 304) = 0;
  v4[39] = 2;
  *(v4 + 24) = 0;
  [v4 _setUUID:*(a1 + 40)];
}

- (id)_lock_startDate
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  v3 = [(HKSample *)&v5 startDate];

  return v3;
}

- (id)startDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_startDate];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_lock_setStartDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  [(HKSample *)&v5 _setStartDate:v4];
}

- (void)_setStartDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setStartDate:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_endDate
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  v3 = [(HKSample *)&v5 endDate];

  return v3;
}

- (id)endDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_endDate];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_lock_setEndDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  [(HKSample *)&v5 _setEndDate:v4];
}

- (void)_setEndDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEndDate:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_metadata
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  v3 = [(HKObject *)&v5 metadata];

  return v3;
}

- (id)metadata
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_metadata];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_lock_setMetadata:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  [(HKObject *)&v5 _setMetadata:v4];
}

- (void)_setMetadata:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMetadata:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_isEqualToActivityCache:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKActivityCache *)self _lock_isEqualToActivityCache:v4];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)_lock_isEqualToActivityCache:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!v4)
  {
    goto LABEL_55;
  }

  v5 = [(HKActivityCache *)self _lock_energyBurned];
  v6 = [v4 energyBurned];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [v4 energyBurned];
    if (!v8)
    {
      goto LABEL_54;
    }

    v9 = v8;
    v10 = [(HKActivityCache *)self _lock_energyBurned];
    v11 = [v4 energyBurned];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_55;
    }
  }

  v5 = [(HKActivityCache *)self _lock_energyBurnedGoal];
  v13 = [v4 energyBurnedGoal];
  v7 = v13;
  if (v5 == v13)
  {
  }

  else
  {
    v14 = [v4 energyBurnedGoal];
    if (!v14)
    {
      goto LABEL_54;
    }

    v15 = v14;
    v16 = [(HKActivityCache *)self _lock_energyBurnedGoal];
    v17 = [v4 energyBurnedGoal];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_55;
    }
  }

  [(HKActivityCache *)self _lock_moveMinutes];
  v20 = v19;
  [v4 moveMinutes];
  if (v20 != v21)
  {
    goto LABEL_55;
  }

  v5 = [(HKActivityCache *)self _lock_moveMinutesGoal];
  v22 = [v4 moveMinutesGoal];
  v7 = v22;
  if (v5 == v22)
  {
  }

  else
  {
    v23 = [v4 moveMinutesGoal];
    if (!v23)
    {
      goto LABEL_54;
    }

    v24 = v23;
    v25 = [(HKActivityCache *)self _lock_moveMinutesGoal];
    v26 = [v4 moveMinutesGoal];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_55;
    }
  }

  [(HKActivityCache *)self _lock_briskMinutes];
  v29 = v28;
  [v4 briskMinutes];
  if (v29 != v30)
  {
    goto LABEL_55;
  }

  v5 = [(HKActivityCache *)self _lock_briskMinutesGoal];
  v31 = [v4 briskMinutesGoal];
  v7 = v31;
  if (v5 == v31)
  {
  }

  else
  {
    v32 = [v4 briskMinutesGoal];
    if (!v32)
    {
      goto LABEL_54;
    }

    v33 = v32;
    v34 = [(HKActivityCache *)self _lock_briskMinutesGoal];
    v35 = [v4 briskMinutesGoal];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_55;
    }
  }

  [(HKActivityCache *)self _lock_activeHours];
  v38 = v37;
  [v4 activeHours];
  if (v38 != v39)
  {
    goto LABEL_55;
  }

  v5 = [(HKActivityCache *)self _lock_activeHoursGoal];
  v40 = [v4 activeHoursGoal];
  v7 = v40;
  if (v5 == v40)
  {
  }

  else
  {
    v41 = [v4 activeHoursGoal];
    if (!v41)
    {
      goto LABEL_54;
    }

    v42 = v41;
    v43 = [(HKActivityCache *)self _lock_activeHoursGoal];
    v44 = [v4 activeHoursGoal];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_55;
    }
  }

  v46 = [(HKActivityCache *)self _lock_stepCount];
  if (v46 != [v4 stepCount])
  {
    goto LABEL_55;
  }

  v47 = [(HKActivityCache *)self _lock_pushCount];
  if (v47 != [v4 pushCount])
  {
    goto LABEL_55;
  }

  v48 = [(HKActivityCache *)self _lock_wheelchairUse];
  if (v48 != [v4 wheelchairUse])
  {
    goto LABEL_55;
  }

  [(HKActivityCache *)self _lock_deepBreathingDuration];
  v50 = v49;
  [v4 deepBreathingDuration];
  if (v50 != v51)
  {
    goto LABEL_55;
  }

  v52 = [(HKActivityCache *)self _lock_flightsClimbed];
  if (v52 != [v4 flightsClimbed])
  {
    goto LABEL_55;
  }

  v5 = [(HKActivityCache *)self _lock_walkingAndRunningDistance];
  v53 = [v4 walkingAndRunningDistance];
  v7 = v53;
  if (v5 == v53)
  {
  }

  else
  {
    v54 = [v4 walkingAndRunningDistance];
    if (!v54)
    {
      goto LABEL_54;
    }

    v55 = v54;
    v56 = [(HKActivityCache *)self _lock_walkingAndRunningDistance];
    v57 = [v4 walkingAndRunningDistance];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_55;
    }
  }

  v5 = [(HKActivityCache *)self _lock_startDate];
  v59 = [v4 startDate];
  v7 = v59;
  if (v5 == v59)
  {
  }

  else
  {
    v60 = [v4 startDate];
    if (!v60)
    {
      goto LABEL_54;
    }

    v61 = v60;
    v62 = [(HKActivityCache *)self _lock_startDate];
    v63 = [v4 startDate];
    v64 = [v62 isEqual:v63];

    if (!v64)
    {
      goto LABEL_55;
    }
  }

  v5 = [(HKActivityCache *)self _lock_endDate];
  v65 = [v4 endDate];
  v7 = v65;
  if (v5 == v65)
  {
  }

  else
  {
    v66 = [v4 endDate];
    if (!v66)
    {
      goto LABEL_54;
    }

    v67 = v66;
    v68 = [(HKActivityCache *)self _lock_endDate];
    v69 = [v4 endDate];
    v70 = [v68 isEqual:v69];

    if (!v70)
    {
      goto LABEL_55;
    }
  }

  v5 = [(HKActivityCache *)self _lock_dateComponents];
  v71 = [v4 dateComponents];
  v7 = v71;
  if (v5 != v71)
  {
    v72 = [v4 dateComponents];
    if (v72)
    {
      v73 = v72;
      v74 = [(HKActivityCache *)self _lock_dateComponents];
      v75 = [v4 dateComponents];
      v76 = [v74 isEqual:v75];

      if (!v76)
      {
        goto LABEL_55;
      }

      goto LABEL_58;
    }

LABEL_54:

    goto LABEL_55;
  }

LABEL_58:
  v79 = [(HKActivityCache *)self _lock_activityMoveMode];
  if (v79 == [v4 activityMoveMode])
  {
    v80 = [(HKActivityCache *)self _lock_isPaused];
    if (v80 == [v4 isPaused])
    {
      v81 = [(HKActivityCache *)self _lock_version];
      v77 = v81 == [v4 version];
      goto LABEL_56;
    }
  }

LABEL_55:
  v77 = 0;
LABEL_56:

  return v77;
}

- (id)_lock_energyBurned
{
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurned = self->_energyBurned;

  return energyBurned;
}

- (void)_lock_setEnergyBurned:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurned = self->_energyBurned;
  self->_energyBurned = v4;
}

- (void)_setEnergyBurned:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEnergyBurned:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (double)moveMinutes
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_moveMinutes];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)_lock_setMoveMinutes:(double)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_moveMinutes = a3;
  self->_knownFields |= 0x4000uLL;
}

- (void)_setMoveMinutes:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMoveMinutes:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasMoveMinutes
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasMoveMinutes];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_lock_setBriskMinutes:(double)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_briskMinutes = a3;
  self->_knownFields |= 4uLL;
}

- (void)_setBriskMinutes:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setBriskMinutes:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setActiveHours:(double)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_activeHours = a3;
  self->_knownFields |= 8uLL;
}

- (void)_setActiveHours:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActiveHours:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_energyBurnedGoal
{
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurnedGoal = self->_energyBurnedGoal;

  return energyBurnedGoal;
}

- (id)_lock_energyBurnedGoalDate
{
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurnedGoalDate = self->_energyBurnedGoalDate;

  return energyBurnedGoalDate;
}

- (void)_lock_setEnergyBurnedGoal:(id)a3 date:(id)a4
{
  v11 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!v7 || (energyBurnedGoalDate = self->_energyBurnedGoalDate) == 0 || -[NSDate compare:](energyBurnedGoalDate, "compare:", v7) == NSOrderedAscending && (-[HKActivityCache _lock_endDate](self, "_lock_endDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v7 compare:v9], v9, v10 == -1))
  {
    objc_storeStrong(&self->_energyBurnedGoal, a3);
    objc_storeStrong(&self->_energyBurnedGoalDate, a4);
  }
}

- (void)_setEnergyBurnedGoal:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEnergyBurnedGoal:v7 date:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setEnergyBurnedGoalOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurnedGoal = self->_energyBurnedGoal;
  self->_energyBurnedGoal = v4;
}

- (void)_setEnergyBurnedGoalOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEnergyBurnedGoalOnly:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setEnergyBurnedGoalDateOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurnedGoalDate = self->_energyBurnedGoalDate;
  self->_energyBurnedGoalDate = v4;
}

- (void)_setEnergyBurnedGoalDateOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEnergyBurnedGoalDateOnly:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_moveMinutesGoal
{
  os_unfair_lock_assert_owner(&self->_lock);
  moveMinutesGoal = self->_moveMinutesGoal;

  return moveMinutesGoal;
}

- (HKQuantity)moveMinutesGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_moveMinutesGoal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_moveMinutesGoalDate
{
  os_unfair_lock_assert_owner(&self->_lock);
  moveMinutesGoalDate = self->_moveMinutesGoalDate;

  return moveMinutesGoalDate;
}

- (NSDate)moveMinutesGoalDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_moveMinutesGoalDate];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_lock_setMoveMinutesGoal:(id)a3 date:(id)a4
{
  v11 = a3;
  v7 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!v7 || (moveMinutesGoalDate = self->_moveMinutesGoalDate) == 0 || -[NSDate compare:](moveMinutesGoalDate, "compare:", v7) == NSOrderedAscending && (-[HKActivityCache _lock_endDate](self, "_lock_endDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v7 compare:v9], v9, v10 == -1))
  {
    objc_storeStrong(&self->_moveMinutesGoal, a3);
    objc_storeStrong(&self->_moveMinutesGoalDate, a4);
  }
}

- (void)_setMoveMinutesGoal:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMoveMinutesGoal:v7 date:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setMoveMinutesGoalOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  moveMinutesGoal = self->_moveMinutesGoal;
  self->_moveMinutesGoal = v4;
}

- (void)_setMoveMinutesGoalOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMoveMinutesGoalOnly:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setMoveMinutesGoalDateOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  moveMinutesGoalDate = self->_moveMinutesGoalDate;
  self->_moveMinutesGoalDate = v4;
}

- (void)_setMoveMinutesGoalDateOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMoveMinutesGoalDateOnly:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasMoveMinutesGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasMoveMinutesGoal];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_lock_fallbackBriskMinutesGoal
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_version <= 1)
  {
    v4 = +[HKUnit minuteUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:30.0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_lock_briskMinutesGoal
{
  os_unfair_lock_assert_owner(&self->_lock);
  briskMinutesGoal = self->_briskMinutesGoal;
  if (briskMinutesGoal)
  {
    v4 = briskMinutesGoal;
  }

  else
  {
    v4 = [(HKActivityCache *)self _lock_fallbackBriskMinutesGoal];
  }

  return v4;
}

- (void)_lock_setBriskMinutesGoal:(id)a3 date:(id)a4
{
  v12 = a3;
  v8 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v12 && [v12 _isZero])
  {
    [HKActivityCache _lock_setBriskMinutesGoal:a2 date:self];
  }

  if (!v8 || (briskMinutesGoalDate = self->_briskMinutesGoalDate) == 0 || -[NSDate compare:](briskMinutesGoalDate, "compare:", v8) == NSOrderedAscending && (-[HKActivityCache _lock_endDate](self, "_lock_endDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v8 compare:v10], v10, v11 == -1))
  {
    objc_storeStrong(&self->_briskMinutesGoal, a3);
    objc_storeStrong(&self->_briskMinutesGoalDate, a4);
  }
}

- (void)_setBriskMinutesGoal:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setBriskMinutesGoal:v7 date:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setBriskMinutesGoalOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  briskMinutesGoal = self->_briskMinutesGoal;
  self->_briskMinutesGoal = v4;
}

- (void)_setBriskMinutesGoalOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setBriskMinutesGoalOnly:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setBriskMinutesGoalDateOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  briskMinutesGoalDate = self->_briskMinutesGoalDate;
  self->_briskMinutesGoalDate = v4;
}

- (void)_setBriskMinutesGoalDateOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setBriskMinutesGoalDateOnly:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasBriskMinutesGoalDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasBriskMinutesGoalDate];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_lock_fallbackActiveHoursGoal
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_version <= 1)
  {
    v4 = 12;
    if (self->_activityMoveMode == 2)
    {
      v4 = 10;
    }

    v5 = v4;
    v6 = +[HKUnit countUnit];
    v3 = [HKQuantity quantityWithUnit:v6 doubleValue:v5];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_lock_activeHoursGoal
{
  os_unfair_lock_assert_owner(&self->_lock);
  activeHoursGoal = self->_activeHoursGoal;
  if (activeHoursGoal)
  {
    v4 = activeHoursGoal;
  }

  else
  {
    v4 = [(HKActivityCache *)self _lock_fallbackActiveHoursGoal];
  }

  return v4;
}

- (void)_lock_setActiveHoursGoal:(id)a3 date:(id)a4
{
  v12 = a3;
  v8 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v12 && [v12 _isZero])
  {
    [HKActivityCache _lock_setActiveHoursGoal:a2 date:self];
  }

  if (!v8 || (activeHoursGoalDate = self->_activeHoursGoalDate) == 0 || -[NSDate compare:](activeHoursGoalDate, "compare:", v8) == NSOrderedAscending && (-[HKActivityCache _lock_endDate](self, "_lock_endDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v8 compare:v10], v10, v11 == -1))
  {
    objc_storeStrong(&self->_activeHoursGoal, a3);
    objc_storeStrong(&self->_activeHoursGoalDate, a4);
  }
}

- (void)_setActiveHoursGoal:(id)a3 date:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActiveHoursGoal:v7 date:v6];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setActiveHoursGoalOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  activeHoursGoal = self->_activeHoursGoal;
  self->_activeHoursGoal = v4;
}

- (void)_setActiveHoursGoalOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActiveHoursGoalOnly:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setActiveHoursGoalDateOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  activeHoursGoalDate = self->_activeHoursGoalDate;
  self->_activeHoursGoalDate = v4;
}

- (void)_setActiveHoursGoalDateOnly:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActiveHoursGoalDateOnly:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasActiveHoursGoalDate
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasActiveHoursGoalDate];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (double)_lock_energyBurnedGoalPercentage
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(HKActivityCache *)self _lock_energyBurnedGoalInKilocalories];
  v4 = v3;
  result = 0.0;
  if (v4 > 0.0)
  {
    [(HKActivityCache *)self _lock_energyBurnedInKilocalories];
    return v6 / v4;
  }

  return result;
}

- (double)energyBurnedGoalPercentage
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_energyBurnedGoalPercentage];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)_lock_moveMinutesGoalPercentage
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(HKActivityCache *)self _lock_moveMinutesGoalInMinutes];
  v4 = 0.0;
  if (v3 > 0.0)
  {
    return self->_moveMinutes / v3;
  }

  return v4;
}

- (double)moveMinutesGoalPercentage
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_moveMinutesGoalPercentage];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)_lock_briskMinutesGoalPercentage
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasBriskMinutesGoal];
  result = 0.0;
  if (v3)
  {
    briskMinutes = self->_briskMinutes;
    [(HKActivityCache *)self _lock_briskMinutesGoalInMinutes];
    return briskMinutes / v6;
  }

  return result;
}

- (double)briskMinutesGoalPercentage
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_briskMinutesGoalPercentage];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)_lock_activeHoursGoalPercentage
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasActiveHoursGoal];
  result = 0.0;
  if (v3)
  {
    activeHours = self->_activeHours;
    [(HKActivityCache *)self _lock_activeHoursGoalCount];
    return activeHours / v6;
  }

  return result;
}

- (double)activeHoursGoalPercentage
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_activeHoursGoalPercentage];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)_lock_setCacheIndex:(int64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_cacheIndex = a3;
  v5 = _HKActivityCacheDateComponentsFromCacheIndex(a3);
  dateComponents = self->_dateComponents;
  self->_dateComponents = v5;

  MEMORY[0x1EEE66BB8](v5, dateComponents);
}

- (void)_setCacheIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setCacheIndex:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)sequence
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_sequence];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_setSequence:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setSequence:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_dateComponents
{
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = [(NSDateComponents *)self->_dateComponents copy];

  return v3;
}

- (BOOL)hasDateComponents
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasDateComponents];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_lock_setStepCount:(int64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_stepCount = a3;
  self->_knownFields |= 0x80uLL;
}

- (void)_setStepCount:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setStepCount:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setPushCount:(int64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_pushCount = a3;
  self->_knownFields |= 0x800uLL;
}

- (void)_setPushCount:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setPushCount:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setWheelchairUse:(int64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_wheelchairUse = a3;
  self->_knownFields |= 0x2000uLL;
}

- (void)_setWheelchairUse:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setWheelchairUse:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setDeepBreathingDuration:(double)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_deepBreathingDuration = a3;
  self->_knownFields |= 0x400uLL;
}

- (void)_setDeepBreathingDuration:(double)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setDeepBreathingDuration:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_walkingAndRunningDistance
{
  os_unfair_lock_assert_owner(&self->_lock);
  walkingAndRunningDistance = self->_walkingAndRunningDistance;

  return walkingAndRunningDistance;
}

- (void)_lock_setWalkingAndRunningDistance:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  walkingAndRunningDistance = self->_walkingAndRunningDistance;
  self->_walkingAndRunningDistance = v4;
}

- (void)_setWalkingAndRunningDistance:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setWalkingAndRunningDistance:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setFlightsClimbed:(int64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_flightsClimbed = a3;
  self->_knownFields |= 0x1000uLL;
}

- (void)_setFlightsClimbed:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setFlightsClimbed:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_dailyEnergyBurnedStatistics
{
  os_unfair_lock_assert_owner(&self->_lock);
  dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;

  return dailyEnergyBurnedStatistics;
}

- (void)_lock_setDailyEnergyBurnedStatistics:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 copy];

  dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;
  self->_dailyEnergyBurnedStatistics = v5;
}

- (void)_setDailyEnergyBurnedStatistics:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setDailyEnergyBurnedStatistics:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasDailyMoveMinutesStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_hasDailyMoveMinutesStatistics];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)_lock_dailyMoveMinutesStatistics
{
  os_unfair_lock_assert_owner(&self->_lock);
  dailyMoveMinutesStatistics = self->_dailyMoveMinutesStatistics;

  return dailyMoveMinutesStatistics;
}

- (NSArray)dailyMoveMinutesStatistics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_dailyMoveMinutesStatistics];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_lock_setDailyMoveMinutesStatistics:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 copy];

  dailyMoveMinutesStatistics = self->_dailyMoveMinutesStatistics;
  self->_dailyMoveMinutesStatistics = v5;
}

- (void)_setDailyMoveMinutesStatistics:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setDailyMoveMinutesStatistics:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_dailyBriskMinutesStatistics
{
  os_unfair_lock_assert_owner(&self->_lock);
  dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;

  return dailyBriskMinutesStatistics;
}

- (void)_lock_setDailyBriskMinutesStatistics:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [v4 copy];

  dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;
  self->_dailyBriskMinutesStatistics = v5;
}

- (void)_setDailyBriskMinutesStatistics:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setDailyBriskMinutesStatistics:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)activityMoveMode
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_activityMoveMode];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_lock_setActivityMoveMode:(int64_t)a3
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!a3)
  {
    [(HKActivityCache *)a2 _lock_setActivityMoveMode:?];
  }

  self->_activityMoveMode = a3;
}

- (void)_setActivityMoveMode:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActivityMoveMode:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPaused
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_isPaused];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int64_t)version
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_version];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)_setVersion:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setVersion:a3];

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)_lock_knownFields
{
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(HKActivityCache *)self _lock_hasEnergyBurned])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HKActivityCache *)self _lock_hasBriskMinutes];
  v5 = 4;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if ([(HKActivityCache *)self _lock_hasActiveHours])
  {
    v7 = 8;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HKActivityCache *)self _lock_hasEnergyBurnedGoal];
  v9 = 16;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v6 | v7 | v9;
  if ([(HKActivityCache *)self _lock_hasBriskMinutesGoal])
  {
    v11 = 32;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(HKActivityCache *)self _lock_hasActiveHoursGoal];
  v13 = 64;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  v15 = [(HKActivityCache *)self _lock_hasStepCount];
  v16 = 128;
  if (!v15)
  {
    v16 = 0;
  }

  v17 = v10 | v14 | v16;
  if ([(HKActivityCache *)self _lock_hasDeepBreathingDuration])
  {
    v18 = 1024;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(HKActivityCache *)self _lock_hasWalkingAndRunningDistance];
  v20 = 256;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = v18 | v20;
  v22 = [(HKActivityCache *)self _lock_hasPushCount];
  v23 = 2048;
  if (!v22)
  {
    v23 = 0;
  }

  v24 = v21 | v23;
  v25 = [(HKActivityCache *)self _lock_hasWheelchairUse];
  v26 = 0x2000;
  if (!v25)
  {
    v26 = 0;
  }

  v27 = v17 | v24 | v26;
  v28 = [(HKActivityCache *)self _lock_hasFlightsClimbed];
  v29 = 4096;
  if (!v28)
  {
    v29 = 0;
  }

  return v27 | v29;
}

- (unint64_t)knownFields
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivityCache *)self _lock_knownFields];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)reset
{
  os_unfair_lock_lock(&self->_lock);
  energyBurned = self->_energyBurned;
  self->_energyBurned = 0;

  energyBurnedGoal = self->_energyBurnedGoal;
  self->_energyBurnedGoal = 0;

  energyBurnedGoalDate = self->_energyBurnedGoalDate;
  self->_energyBurnedGoalDate = 0;

  self->_moveMinutes = 0.0;
  moveMinutesGoal = self->_moveMinutesGoal;
  self->_moveMinutesGoal = 0;

  moveMinutesGoalDate = self->_moveMinutesGoalDate;
  self->_moveMinutesGoalDate = 0;

  self->_briskMinutes = 0.0;
  briskMinutesGoal = self->_briskMinutesGoal;
  self->_briskMinutesGoal = 0;

  briskMinutesGoalDate = self->_briskMinutesGoalDate;
  self->_briskMinutesGoalDate = 0;

  self->_activeHours = 0.0;
  activeHoursGoal = self->_activeHoursGoal;
  self->_activeHoursGoal = 0;

  activeHoursGoalDate = self->_activeHoursGoalDate;
  self->_activeHoursGoalDate = 0;

  self->_stepCount = 0;
  walkingAndRunningDistance = self->_walkingAndRunningDistance;
  self->_walkingAndRunningDistance = 0;

  self->_deepBreathingDuration = 0.0;
  self->_pushCount = 0;
  self->_wheelchairUse = 0;
  self->_flightsClimbed = 0;
  dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;
  self->_dailyEnergyBurnedStatistics = 0;

  dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;
  self->_dailyBriskMinutesStatistics = 0;

  self->_activityMoveMode = 2;
  self->_paused = 0;
  self->_knownFields = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (double)_lock_energyBurnedInKilocalories
{
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurned = self->_energyBurned;
  v4 = +[HKUnit kilocalorieUnit];
  [(HKQuantity *)energyBurned doubleValueForUnit:v4];
  v6 = v5;

  return v6;
}

- (double)_lock_energyBurnedGoalInKilocalories
{
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurnedGoal = self->_energyBurnedGoal;
  v4 = +[HKUnit kilocalorieUnit];
  [(HKQuantity *)energyBurnedGoal doubleValueForUnit:v4];
  v6 = v5;

  return v6;
}

- (double)_lock_moveMinutesGoalInMinutes
{
  os_unfair_lock_assert_owner(&self->_lock);
  moveMinutesGoal = self->_moveMinutesGoal;
  v4 = +[HKUnit minuteUnit];
  [(HKQuantity *)moveMinutesGoal doubleValueForUnit:v4];
  v6 = v5;

  return v6;
}

- (double)_moveMinutesGoalInMinutes
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_moveMinutesGoalInMinutes];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)_lock_briskMinutesGoalInMinutes
{
  os_unfair_lock_assert_owner(&self->_lock);
  briskMinutesGoal = self->_briskMinutesGoal;
  v4 = +[HKUnit minuteUnit];
  [(HKQuantity *)briskMinutesGoal doubleValueForUnit:v4];
  v6 = v5;

  return v6;
}

- (double)_briskMinutesGoalInMinutes
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_briskMinutesGoalInMinutes];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)_lock_activeHoursGoalCount
{
  os_unfair_lock_assert_owner(&self->_lock);
  activeHoursGoal = self->_activeHoursGoal;
  v4 = +[HKUnit countUnit];
  [(HKQuantity *)activeHoursGoal doubleValueForUnit:v4];
  v6 = v5;

  return v6;
}

- (double)_activeHoursGoalCount
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_activeHoursGoalCount];
  v4 = v3;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (double)_lock_walkingAndRunningDistanceInMeters
{
  os_unfair_lock_assert_owner(&self->_lock);
  walkingAndRunningDistance = self->_walkingAndRunningDistance;
  v4 = +[HKUnit meterUnit];
  [(HKQuantity *)walkingAndRunningDistance doubleValueForUnit:v4];
  v6 = v5;

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v4 = [(HKActivityCache *)self _lock_startDate];
  v5 = [(HKActivityCache *)self _lock_endDate];
  v6 = [(HKActivityCache *)self _lock_dateComponents];
  v7 = [(HKActivityCache *)self _lock_sequence];
  v8 = [(HKActivityCache *)self _lock_metadata];
  v9 = [HKActivityCache _activityCacheWithStartDate:v4 endDate:v5 dateComponents:v6 sequence:v7 metadata:v8];

  v10 = [(HKObject *)self UUID];
  [v9 _setUUID:v10];

  if ([(HKActivityCache *)self _lock_hasEnergyBurned])
  {
    v11 = [(HKActivityCache *)self _lock_energyBurned];
    [v9 _setEnergyBurned:v11];
  }

  if ([(HKActivityCache *)self _lock_hasMoveMinutes])
  {
    [(HKActivityCache *)self _lock_moveMinutes];
    [v9 _setMoveMinutes:?];
  }

  if ([(HKActivityCache *)self _lock_hasBriskMinutes])
  {
    [(HKActivityCache *)self _lock_briskMinutes];
    [v9 _setBriskMinutes:?];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHours])
  {
    [(HKActivityCache *)self _lock_activeHours];
    [v9 _setActiveHours:?];
  }

  if ([(HKActivityCache *)self _lock_hasStepCount])
  {
    [v9 _setStepCount:{-[HKActivityCache _lock_stepCount](self, "_lock_stepCount")}];
  }

  if ([(HKActivityCache *)self _lock_hasPushCount])
  {
    [v9 _setPushCount:{-[HKActivityCache _lock_pushCount](self, "_lock_pushCount")}];
  }

  if ([(HKActivityCache *)self _lock_hasWheelchairUse])
  {
    [v9 _setWheelchairUse:{-[HKActivityCache _lock_wheelchairUse](self, "_lock_wheelchairUse")}];
  }

  if ([(HKActivityCache *)self _lock_hasWalkingAndRunningDistance])
  {
    v12 = [(HKActivityCache *)self _lock_walkingAndRunningDistance];
    [v9 _setWalkingAndRunningDistance:v12];
  }

  if ([(HKActivityCache *)self _lock_hasDeepBreathingDuration])
  {
    [(HKActivityCache *)self _lock_deepBreathingDuration];
    [v9 _setDeepBreathingDuration:?];
  }

  if ([(HKActivityCache *)self _lock_hasEnergyBurnedGoal])
  {
    v13 = [(HKActivityCache *)self _lock_energyBurnedGoal];
    v14 = [(HKActivityCache *)self _lock_energyBurnedGoalDate];
    [v9 _setEnergyBurnedGoal:v13 date:v14];
  }

  if ([(HKActivityCache *)self _lock_hasMoveMinutesGoal])
  {
    v15 = [(HKActivityCache *)self _lock_moveMinutesGoal];
    v16 = [(HKActivityCache *)self _lock_moveMinutesGoalDate];
    [v9 _setMoveMinutesGoal:v15 date:v16];
  }

  if ([(HKActivityCache *)self _lock_hasBriskMinutesGoal])
  {
    v17 = [(HKActivityCache *)self _lock_briskMinutesGoal];
    [v9 _setBriskMinutesGoal:v17];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHoursGoal])
  {
    v18 = [(HKActivityCache *)self _lock_activeHoursGoal];
    [v9 _setActiveHoursGoal:v18];
  }

  if ([(HKActivityCache *)self _lock_hasFlightsClimbed])
  {
    [v9 _setFlightsClimbed:{-[HKActivityCache _lock_flightsClimbed](self, "_lock_flightsClimbed")}];
  }

  v19 = [(HKActivityCache *)self _lock_dailyEnergyBurnedStatistics];
  [v9 _setDailyEnergyBurnedStatistics:v19];

  v20 = [(HKActivityCache *)self _lock_dailyMoveMinutesStatistics];
  [v9 _setDailyMoveMinutesStatistics:v20];

  v21 = [(HKActivityCache *)self _lock_dailyBriskMinutesStatistics];
  [v9 _setDailyBriskMinutesStatistics:v21];

  [v9 _setActivityMoveMode:{-[HKActivityCache _lock_activityMoveMode](self, "_lock_activityMoveMode")}];
  [v9 _setPaused:{-[HKActivityCache _lock_isPaused](self, "_lock_isPaused")}];
  [v9 _setVersion:{-[HKActivityCache _lock_version](self, "_lock_version")}];
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (HKActivityCache)initWithCoder:(id)a3
{
  v57[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v54.receiver = self;
  v54.super_class = HKActivityCache;
  v5 = [(HKSample *)&v54 initWithCoder:v4];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_49;
  }

  v5->_lock._os_unfair_lock_opaque = 0;
  os_unfair_lock_lock(&v5->_lock);
  -[HKActivityCache _lock_setCacheIndex:](v6, "_lock_setCacheIndex:", [v4 decodeInt64ForKey:@"cacheIndex"]);
  -[HKActivityCache _lock_setSequence:](v6, "_lock_setSequence:", [v4 decodeInt64ForKey:@"sequence"]);
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"energyBurned"];
  energyBurned = v6->_energyBurned;
  v6->_energyBurned = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"energyBurnedGoal"];
  energyBurnedGoal = v6->_energyBurnedGoal;
  v6->_energyBurnedGoal = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"energyBurnedGoalDate"];
  energyBurnedGoalDate = v6->_energyBurnedGoalDate;
  v6->_energyBurnedGoalDate = v11;

  if ([v4 containsValueForKey:@"moveMinutes"])
  {
    [v4 decodeDoubleForKey:@"moveMinutes"];
    [(HKActivityCache *)v6 _lock_setMoveMinutes:?];
  }

  if ([v4 containsValueForKey:@"moveMinutesGoalQuantity"])
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"moveMinutesGoalQuantity"];
    moveMinutesGoal = v6->_moveMinutesGoal;
    v6->_moveMinutesGoal = v13;
  }

  else
  {
    if (![v4 containsValueForKey:@"moveMinutesGoal"])
    {
      goto LABEL_9;
    }

    [v4 decodeDoubleForKey:@"moveMinutesGoal"];
    v16 = v15;
    moveMinutesGoal = +[HKUnit minuteUnit];
    v17 = [HKQuantity quantityWithUnit:moveMinutesGoal doubleValue:v16];
    v18 = v6->_moveMinutesGoal;
    v6->_moveMinutesGoal = v17;
  }

LABEL_9:
  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"moveMinutesGoalDate"];
  moveMinutesGoalDate = v6->_moveMinutesGoalDate;
  v6->_moveMinutesGoalDate = v19;

  if ([v4 containsValueForKey:@"activeHours"])
  {
    [v4 decodeDoubleForKey:@"activeHours"];
    [(HKActivityCache *)v6 _lock_setActiveHours:?];
  }

  if ([v4 containsValueForKey:@"activeHoursGoalQuantity"])
  {
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeHoursGoalQuantity"];
    [(HKActivityCache *)v6 _lock_setActiveHoursGoalOnly:v21];
  }

  else
  {
    if (![v4 containsValueForKey:@"activeHoursGoal"])
    {
      goto LABEL_16;
    }

    [v4 decodeDoubleForKey:@"activeHoursGoal"];
    v23 = v22;
    v21 = +[HKUnit countUnit];
    v24 = [HKQuantity quantityWithUnit:v21 doubleValue:v23];
    [(HKActivityCache *)v6 _lock_setActiveHoursGoalOnly:v24];
  }

LABEL_16:
  if ([v4 containsValueForKey:@"activeHoursGoalDate"])
  {
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeHoursGoalDate"];
    [(HKActivityCache *)v6 _lock_setActiveHoursGoalDateOnly:v25];
  }

  if ([v4 containsValueForKey:@"briskMinutes"])
  {
    [v4 decodeDoubleForKey:@"briskMinutes"];
    [(HKActivityCache *)v6 _lock_setBriskMinutes:?];
  }

  if ([v4 containsValueForKey:@"briskMinutesGoalQuantity"])
  {
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"briskMinutesGoalQuantity"];
    [(HKActivityCache *)v6 _lock_setBriskMinutesGoalOnly:v26];
LABEL_24:

    goto LABEL_25;
  }

  if ([v4 containsValueForKey:@"briskMinutesGoal"])
  {
    [v4 decodeDoubleForKey:@"briskMinutesGoal"];
    v28 = v27;
    v26 = +[HKUnit minuteUnit];
    v29 = [HKQuantity quantityWithUnit:v26 doubleValue:v28];
    [(HKActivityCache *)v6 _lock_setBriskMinutesGoalOnly:v29];

    goto LABEL_24;
  }

LABEL_25:
  if ([v4 containsValueForKey:@"briskMinutesGoalDate"])
  {
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"briskMinutesGoalDate"];
    [(HKActivityCache *)v6 _lock_setBriskMinutesGoalDateOnly:v30];
  }

  if ([v4 containsValueForKey:@"stepCount"])
  {
    -[HKActivityCache _lock_setStepCount:](v6, "_lock_setStepCount:", [v4 decodeIntegerForKey:@"stepCount"]);
  }

  if ([v4 containsValueForKey:@"pushCount"])
  {
    -[HKActivityCache _lock_setPushCount:](v6, "_lock_setPushCount:", [v4 decodeIntegerForKey:@"pushCount"]);
  }

  if ([v4 containsValueForKey:@"wheelchairUse"])
  {
    -[HKActivityCache _lock_setWheelchairUse:](v6, "_lock_setWheelchairUse:", [v4 decodeIntegerForKey:@"wheelchairUse"]);
  }

  if ([v4 containsValueForKey:@"deepBreathingDuration"])
  {
    [v4 decodeDoubleForKey:@"deepBreathingDuration"];
    [(HKActivityCache *)v6 _lock_setDeepBreathingDuration:?];
  }

  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"walkRunDistance"];
  walkingAndRunningDistance = v6->_walkingAndRunningDistance;
  v6->_walkingAndRunningDistance = v31;

  if ([v4 containsValueForKey:@"flightsClimbed"])
  {
    -[HKActivityCache _lock_setFlightsClimbed:](v6, "_lock_setFlightsClimbed:", [v4 decodeIntegerForKey:@"flightsClimbed"]);
  }

  v33 = MEMORY[0x1E695DFD8];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v35 = [v33 setWithArray:v34];
  v36 = [v4 decodeObjectOfClasses:v35 forKey:@"dailyEnergyBurnedStatistics"];
  dailyEnergyBurnedStatistics = v6->_dailyEnergyBurnedStatistics;
  v6->_dailyEnergyBurnedStatistics = v36;

  v38 = MEMORY[0x1E695DFD8];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v40 = [v38 setWithArray:v39];
  v41 = [v4 decodeObjectOfClasses:v40 forKey:@"dailyMoveMinutesStatistics"];
  dailyMoveMinutesStatistics = v6->_dailyMoveMinutesStatistics;
  v6->_dailyMoveMinutesStatistics = v41;

  v43 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v45 = [v43 setWithArray:v44];
  v46 = [v4 decodeObjectOfClasses:v45 forKey:@"dailyBriskMinutesStatistics"];
  dailyBriskMinutesStatistics = v6->_dailyBriskMinutesStatistics;
  v6->_dailyBriskMinutesStatistics = v46;

  if ([v4 containsValueForKey:@"activityMoveMode"])
  {
    v48 = [v4 decodeIntegerForKey:@"activityMoveMode"];
    if (v48 <= 1)
    {
      v49 = 1;
    }

    else
    {
      v49 = v48;
    }
  }

  else
  {
    v49 = 1;
  }

  [(HKActivityCache *)v6 _lock_setActivityMoveMode:v49];
  if ([v4 containsValueForKey:@"paused"])
  {
    v50 = [v4 decodeBoolForKey:@"paused"];
  }

  else
  {
    v50 = 0;
  }

  [(HKActivityCache *)v6 _lock_setPaused:v50];
  if ([v4 containsValueForKey:@"version"])
  {
    v51 = [v4 decodeIntegerForKey:@"version"];
  }

  else
  {
    v51 = 1;
  }

  [(HKActivityCache *)v6 _lock_setVersion:v51];
  os_unfair_lock_unlock(&v6->_lock);
LABEL_49:

  v52 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  [(HKSample *)&v5 encodeWithCoder:v4];
  [v4 encodeInt64:self->_cacheIndex forKey:@"cacheIndex"];
  [v4 encodeInt64:self->_sequence forKey:@"sequence"];
  [v4 encodeObject:self->_energyBurned forKey:@"energyBurned"];
  [v4 encodeObject:self->_energyBurnedGoal forKey:@"energyBurnedGoal"];
  [v4 encodeObject:self->_energyBurnedGoalDate forKey:@"energyBurnedGoalDate"];
  [v4 encodeDouble:@"moveMinutes" forKey:self->_moveMinutes];
  [v4 encodeObject:self->_moveMinutesGoal forKey:@"moveMinutesGoalQuantity"];
  [v4 encodeObject:self->_moveMinutesGoalDate forKey:@"moveMinutesGoalDate"];
  if ([(HKActivityCache *)self _lock_hasBriskMinutes])
  {
    [v4 encodeDouble:@"briskMinutes" forKey:self->_briskMinutes];
  }

  if ([(HKActivityCache *)self _lock_hasBriskMinutesGoal])
  {
    [v4 encodeObject:self->_briskMinutesGoal forKey:@"briskMinutesGoalQuantity"];
  }

  if ([(HKActivityCache *)self _lock_hasBriskMinutesGoalDate])
  {
    [v4 encodeObject:self->_briskMinutesGoalDate forKey:@"briskMinutesGoalDate"];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHours])
  {
    [v4 encodeDouble:@"activeHours" forKey:self->_activeHours];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHoursGoal])
  {
    [v4 encodeObject:self->_activeHoursGoal forKey:@"activeHoursGoalQuantity"];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHoursGoalDate])
  {
    [v4 encodeObject:self->_activeHoursGoalDate forKey:@"activeHoursGoalDate"];
  }

  if ([(HKActivityCache *)self _lock_hasStepCount])
  {
    [v4 encodeInteger:self->_stepCount forKey:@"stepCount"];
  }

  if ([(HKActivityCache *)self _lock_hasPushCount])
  {
    [v4 encodeInteger:self->_pushCount forKey:@"pushCount"];
  }

  if ([(HKActivityCache *)self _lock_hasWheelchairUse])
  {
    [v4 encodeInteger:self->_wheelchairUse forKey:@"wheelchairUse"];
  }

  if ([(HKActivityCache *)self _lock_hasDeepBreathingDuration])
  {
    [v4 encodeDouble:@"deepBreathingDuration" forKey:self->_deepBreathingDuration];
  }

  if ([(HKActivityCache *)self _lock_hasFlightsClimbed])
  {
    [v4 encodeInteger:self->_flightsClimbed forKey:@"flightsClimbed"];
  }

  [v4 encodeObject:self->_walkingAndRunningDistance forKey:@"walkRunDistance"];
  [v4 encodeObject:self->_dailyEnergyBurnedStatistics forKey:@"dailyEnergyBurnedStatistics"];
  [v4 encodeObject:self->_dailyBriskMinutesStatistics forKey:@"dailyBriskMinutesStatistics"];
  [v4 encodeInteger:self->_activityMoveMode forKey:@"activityMoveMode"];
  [v4 encodeBool:self->_paused forKey:@"paused"];
  [v4 encodeInteger:self->_version forKey:@"version"];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setBriskMinutesGoal:(uint64_t)a1 date:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKActivityCache.m" lineNumber:632 description:{@"Invalid parameter not satisfying: %@", @"(briskMinutesGoal == nil) || ![briskMinutesGoal _isZero]"}];
}

- (void)_lock_setActiveHoursGoal:(uint64_t)a1 date:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKActivityCache.m" lineNumber:728 description:{@"Invalid parameter not satisfying: %@", @"(activeHoursGoal == nil) || ![activeHoursGoal _isZero]"}];
}

- (void)_lock_setActivityMoveMode:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKActivityCache.m" lineNumber:1256 description:{@"Invalid parameter not satisfying: %@", @"activityMoveMode != 0"}];
}

@end