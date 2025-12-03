@interface HKActivityCache
+ (id)_activityCacheWithStartDate:(id)date endDate:(id)endDate dateComponents:(id)components sequence:(int64_t)sequence energyBurned:(id)burned energyBurnedGoal:(id)goal walkingAndRunningDistance:(id)distance metadata:(id)self0;
+ (id)_activityCacheWithStartDate:(id)date endDate:(id)endDate dateComponents:(id)components sequence:(int64_t)sequence metadata:(id)metadata;
+ (id)_activityCacheWithUUID:(id)d startDate:(id)date endDate:(id)endDate dateComponents:(id)components sequence:(int64_t)sequence;
- (BOOL)_isEqualToActivityCache:(id)cache;
- (BOOL)_lock_isEqualToActivityCache:(id)cache;
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
- (HKActivityCache)initWithCoder:(id)coder;
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
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)_lock_setActiveHours:(double)hours;
- (void)_lock_setActiveHoursGoal:(id)goal date:(id)date;
- (void)_lock_setActiveHoursGoalDateOnly:(id)only;
- (void)_lock_setActiveHoursGoalOnly:(id)only;
- (void)_lock_setActivityMoveMode:(int64_t)mode;
- (void)_lock_setBriskMinutes:(double)minutes;
- (void)_lock_setBriskMinutesGoal:(id)goal date:(id)date;
- (void)_lock_setBriskMinutesGoalDateOnly:(id)only;
- (void)_lock_setBriskMinutesGoalOnly:(id)only;
- (void)_lock_setCacheIndex:(int64_t)index;
- (void)_lock_setDailyBriskMinutesStatistics:(id)statistics;
- (void)_lock_setDailyEnergyBurnedStatistics:(id)statistics;
- (void)_lock_setDailyMoveMinutesStatistics:(id)statistics;
- (void)_lock_setDeepBreathingDuration:(double)duration;
- (void)_lock_setEndDate:(id)date;
- (void)_lock_setEnergyBurned:(id)burned;
- (void)_lock_setEnergyBurnedGoal:(id)goal date:(id)date;
- (void)_lock_setEnergyBurnedGoalDateOnly:(id)only;
- (void)_lock_setEnergyBurnedGoalOnly:(id)only;
- (void)_lock_setFlightsClimbed:(int64_t)climbed;
- (void)_lock_setMetadata:(id)metadata;
- (void)_lock_setMoveMinutes:(double)minutes;
- (void)_lock_setMoveMinutesGoal:(id)goal date:(id)date;
- (void)_lock_setMoveMinutesGoalDateOnly:(id)only;
- (void)_lock_setMoveMinutesGoalOnly:(id)only;
- (void)_lock_setPushCount:(int64_t)count;
- (void)_lock_setStartDate:(id)date;
- (void)_lock_setStepCount:(int64_t)count;
- (void)_lock_setWalkingAndRunningDistance:(id)distance;
- (void)_lock_setWheelchairUse:(int64_t)use;
- (void)_setActiveHours:(double)hours;
- (void)_setActiveHoursGoal:(id)goal date:(id)date;
- (void)_setActiveHoursGoalDateOnly:(id)only;
- (void)_setActiveHoursGoalOnly:(id)only;
- (void)_setActivityMoveMode:(int64_t)mode;
- (void)_setBriskMinutes:(double)minutes;
- (void)_setBriskMinutesGoal:(id)goal date:(id)date;
- (void)_setBriskMinutesGoalDateOnly:(id)only;
- (void)_setBriskMinutesGoalOnly:(id)only;
- (void)_setCacheIndex:(int64_t)index;
- (void)_setDailyBriskMinutesStatistics:(id)statistics;
- (void)_setDailyEnergyBurnedStatistics:(id)statistics;
- (void)_setDailyMoveMinutesStatistics:(id)statistics;
- (void)_setDeepBreathingDuration:(double)duration;
- (void)_setEndDate:(id)date;
- (void)_setEnergyBurned:(id)burned;
- (void)_setEnergyBurnedGoal:(id)goal date:(id)date;
- (void)_setEnergyBurnedGoalDateOnly:(id)only;
- (void)_setEnergyBurnedGoalOnly:(id)only;
- (void)_setFlightsClimbed:(int64_t)climbed;
- (void)_setMetadata:(id)metadata;
- (void)_setMoveMinutes:(double)minutes;
- (void)_setMoveMinutesGoal:(id)goal date:(id)date;
- (void)_setMoveMinutesGoalDateOnly:(id)only;
- (void)_setMoveMinutesGoalOnly:(id)only;
- (void)_setPushCount:(int64_t)count;
- (void)_setSequence:(int64_t)sequence;
- (void)_setStartDate:(id)date;
- (void)_setStepCount:(int64_t)count;
- (void)_setVersion:(int64_t)version;
- (void)_setWalkingAndRunningDistance:(id)distance;
- (void)_setWheelchairUse:(int64_t)use;
- (void)encodeWithCoder:(id)coder;
- (void)reset;
@end

@implementation HKActivityCache

- (int64_t)cacheIndex
{
  os_unfair_lock_lock(&self->_lock);
  _lock_cacheIndex = [(HKActivityCache *)self _lock_cacheIndex];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_cacheIndex;
}

- (BOOL)hasBriskMinutes
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasBriskMinutes = [(HKActivityCache *)self _lock_hasBriskMinutes];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasBriskMinutes;
}

- (BOOL)hasActiveHours
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasActiveHours = [(HKActivityCache *)self _lock_hasActiveHours];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasActiveHours;
}

- (BOOL)hasStepCount
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasStepCount = [(HKActivityCache *)self _lock_hasStepCount];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasStepCount;
}

- (BOOL)hasPushCount
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasPushCount = [(HKActivityCache *)self _lock_hasPushCount];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasPushCount;
}

- (BOOL)hasWheelchairUse
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasWheelchairUse = [(HKActivityCache *)self _lock_hasWheelchairUse];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasWheelchairUse;
}

- (BOOL)hasDeepBreathingDuration
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasDeepBreathingDuration = [(HKActivityCache *)self _lock_hasDeepBreathingDuration];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasDeepBreathingDuration;
}

- (BOOL)hasFlightsClimbed
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasFlightsClimbed = [(HKActivityCache *)self _lock_hasFlightsClimbed];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasFlightsClimbed;
}

- (NSDateComponents)dateComponents
{
  os_unfair_lock_lock(&self->_lock);
  _lock_dateComponents = [(HKActivityCache *)self _lock_dateComponents];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_dateComponents;
}

- (HKQuantity)energyBurned
{
  os_unfair_lock_lock(&self->_lock);
  _lock_energyBurned = [(HKActivityCache *)self _lock_energyBurned];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_energyBurned;
}

- (HKQuantity)walkingAndRunningDistance
{
  os_unfair_lock_lock(&self->_lock);
  _lock_walkingAndRunningDistance = [(HKActivityCache *)self _lock_walkingAndRunningDistance];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_walkingAndRunningDistance;
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
  _lock_stepCount = [(HKActivityCache *)self _lock_stepCount];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_stepCount;
}

- (int64_t)pushCount
{
  os_unfair_lock_lock(&self->_lock);
  _lock_pushCount = [(HKActivityCache *)self _lock_pushCount];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_pushCount;
}

- (int64_t)wheelchairUse
{
  os_unfair_lock_lock(&self->_lock);
  _lock_wheelchairUse = [(HKActivityCache *)self _lock_wheelchairUse];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_wheelchairUse;
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
  _lock_hasEnergyBurnedGoal = [(HKActivityCache *)self _lock_hasEnergyBurnedGoal];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasEnergyBurnedGoal;
}

- (HKQuantity)energyBurnedGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_energyBurnedGoal = [(HKActivityCache *)self _lock_energyBurnedGoal];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_energyBurnedGoal;
}

- (NSDate)energyBurnedGoalDate
{
  os_unfair_lock_lock(&self->_lock);
  _lock_energyBurnedGoalDate = [(HKActivityCache *)self _lock_energyBurnedGoalDate];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_energyBurnedGoalDate;
}

- (int64_t)flightsClimbed
{
  os_unfair_lock_lock(&self->_lock);
  _lock_flightsClimbed = [(HKActivityCache *)self _lock_flightsClimbed];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_flightsClimbed;
}

- (NSArray)dailyEnergyBurnedStatistics
{
  os_unfair_lock_lock(&self->_lock);
  _lock_dailyEnergyBurnedStatistics = [(HKActivityCache *)self _lock_dailyEnergyBurnedStatistics];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_dailyEnergyBurnedStatistics;
}

- (NSArray)dailyBriskMinutesStatistics
{
  os_unfair_lock_lock(&self->_lock);
  _lock_dailyBriskMinutesStatistics = [(HKActivityCache *)self _lock_dailyBriskMinutesStatistics];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_dailyBriskMinutesStatistics;
}

- (BOOL)hasActiveHoursGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasActiveHoursGoal = [(HKActivityCache *)self _lock_hasActiveHoursGoal];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasActiveHoursGoal;
}

- (HKQuantity)activeHoursGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_activeHoursGoal = [(HKActivityCache *)self _lock_activeHoursGoal];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_activeHoursGoal;
}

- (BOOL)hasEnergyBurned
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasEnergyBurned = [(HKActivityCache *)self _lock_hasEnergyBurned];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasEnergyBurned;
}

- (BOOL)hasBriskMinutesGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasBriskMinutesGoal = [(HKActivityCache *)self _lock_hasBriskMinutesGoal];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasBriskMinutesGoal;
}

- (HKQuantity)briskMinutesGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_briskMinutesGoal = [(HKActivityCache *)self _lock_briskMinutesGoal];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_briskMinutesGoal;
}

- (BOOL)hasWalkingAndRunningDistance
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasWalkingAndRunningDistance = [(HKActivityCache *)self _lock_hasWalkingAndRunningDistance];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasWalkingAndRunningDistance;
}

- (BOOL)hasDailyEnergyBurnedStatistics
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasDailyEnergyBurnedStatistics = [(HKActivityCache *)self _lock_hasDailyEnergyBurnedStatistics];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasDailyEnergyBurnedStatistics;
}

- (BOOL)hasDailyBriskMinutesStatistics
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasDailyBriskMinutesStatistics = [(HKActivityCache *)self _lock_hasDailyBriskMinutesStatistics];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasDailyBriskMinutesStatistics;
}

- (id)_valueDescription
{
  os_unfair_lock_lock(&self->_lock);
  v30 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sequence];
  _lock_hasEnergyBurned = [(HKActivityCache *)self _lock_hasEnergyBurned];
  if (_lock_hasEnergyBurned)
  {
    v4 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_energyBurnedInKilocalories];
    v44 = [v4 numberWithDouble:?];
  }

  else
  {
    v44 = 0;
  }

  _lock_hasEnergyBurnedGoal = [(HKActivityCache *)self _lock_hasEnergyBurnedGoal];
  if (_lock_hasEnergyBurnedGoal)
  {
    v5 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_energyBurnedGoalInKilocalories];
    v43 = [v5 numberWithDouble:?];
  }

  else
  {
    v43 = 0;
  }

  _lock_hasMoveMinutes = [(HKActivityCache *)self _lock_hasMoveMinutes];
  if (_lock_hasMoveMinutes)
  {
    v42 = [MEMORY[0x1E696AD98] numberWithDouble:self->_moveMinutes];
  }

  else
  {
    v42 = 0;
  }

  _lock_hasMoveMinutesGoal = [(HKActivityCache *)self _lock_hasMoveMinutesGoal];
  if (_lock_hasMoveMinutesGoal)
  {
    v6 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_moveMinutesGoalInMinutes];
    v41 = [v6 numberWithDouble:?];
  }

  else
  {
    v41 = 0;
  }

  _lock_hasBriskMinutes = [(HKActivityCache *)self _lock_hasBriskMinutes];
  if (_lock_hasBriskMinutes)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithDouble:self->_briskMinutes];
  }

  else
  {
    v40 = 0;
  }

  _lock_hasBriskMinutesGoal = [(HKActivityCache *)self _lock_hasBriskMinutesGoal];
  if (_lock_hasBriskMinutesGoal)
  {
    v7 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_briskMinutesGoalInMinutes];
    v39 = [v7 numberWithDouble:?];
  }

  else
  {
    v39 = 0;
  }

  _lock_hasActiveHours = [(HKActivityCache *)self _lock_hasActiveHours];
  if (_lock_hasActiveHours)
  {
    v38 = [MEMORY[0x1E696AD98] numberWithDouble:self->_activeHours];
  }

  else
  {
    v38 = 0;
  }

  _lock_hasActiveHoursGoal = [(HKActivityCache *)self _lock_hasActiveHoursGoal];
  if (_lock_hasActiveHoursGoal)
  {
    v8 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_activeHoursGoalCount];
    v37 = [v8 numberWithDouble:?];
  }

  else
  {
    v37 = 0;
  }

  _lock_hasStepCount = [(HKActivityCache *)self _lock_hasStepCount];
  if (_lock_hasStepCount)
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:self->_stepCount];
  }

  else
  {
    v36 = 0;
  }

  _lock_hasPushCount = [(HKActivityCache *)self _lock_hasPushCount];
  if (_lock_hasPushCount)
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:self->_pushCount];
  }

  else
  {
    v35 = 0;
  }

  _lock_hasWalkingAndRunningDistance = [(HKActivityCache *)self _lock_hasWalkingAndRunningDistance];
  if (_lock_hasWalkingAndRunningDistance)
  {
    v10 = MEMORY[0x1E696AD98];
    [(HKActivityCache *)self _lock_walkingAndRunningDistanceInMeters];
    v34 = [v10 numberWithDouble:?];
  }

  else
  {
    v34 = 0;
  }

  _lock_hasDeepBreathingDuration = [(HKActivityCache *)self _lock_hasDeepBreathingDuration];
  if (_lock_hasDeepBreathingDuration)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_deepBreathingDuration];
  }

  else
  {
    v12 = 0;
  }

  _lock_hasFlightsClimbed = [(HKActivityCache *)self _lock_hasFlightsClimbed];
  v14 = v3;
  if (_lock_hasFlightsClimbed)
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

  if (_lock_hasFlightsClimbed)
  {

    if (!_lock_hasDeepBreathingDuration)
    {
LABEL_45:
      if (!_lock_hasWalkingAndRunningDistance)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if (!_lock_hasDeepBreathingDuration)
  {
    goto LABEL_45;
  }

  if (_lock_hasWalkingAndRunningDistance)
  {
LABEL_46:
  }

LABEL_47:
  if (_lock_hasPushCount)
  {
  }

  if (_lock_hasStepCount)
  {
  }

  if (_lock_hasActiveHoursGoal)
  {
  }

  if (_lock_hasActiveHours)
  {
  }

  if (_lock_hasBriskMinutesGoal)
  {
  }

  if (_lock_hasBriskMinutes)
  {
  }

  if (_lock_hasMoveMinutesGoal)
  {
  }

  if (_lock_hasMoveMinutes)
  {
  }

  if (_lock_hasEnergyBurnedGoal)
  {
  }

  if (_lock_hasEnergyBurned)
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

+ (id)_activityCacheWithStartDate:(id)date endDate:(id)endDate dateComponents:(id)components sequence:(int64_t)sequence energyBurned:(id)burned energyBurnedGoal:(id)goal walkingAndRunningDistance:(id)distance metadata:(id)self0
{
  distanceCopy = distance;
  goalCopy = goal;
  burnedCopy = burned;
  v20 = [self _activityCacheWithStartDate:date endDate:endDate dateComponents:components sequence:sequence metadata:metadata];
  [v20 _setEnergyBurned:burnedCopy];

  [v20 _setEnergyBurnedGoal:goalCopy];
  [v20 _setWalkingAndRunningDistance:distanceCopy];

  return v20;
}

+ (id)_activityCacheWithStartDate:(id)date endDate:(id)endDate dateComponents:(id)components sequence:(int64_t)sequence metadata:(id)metadata
{
  v7 = 0;
  if (endDate && date && components)
  {
    metadataCopy = metadata;
    componentsCopy = components;
    endDateCopy = endDate;
    dateCopy = date;
    v17 = _HKCachedImmutableGregorianCalendarWithUTCTimeZone();
    v32 = 0;
    v18 = _HKDerivedCacheIndexAndDateComponents(v17, componentsCopy, &v32);

    v19 = v32;
    v20 = +[HKObjectType activityCacheType];
    [dateCopy timeIntervalSinceReferenceDate];
    v22 = v21;

    [endDateCopy timeIntervalSinceReferenceDate];
    v24 = v23;

    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __88__HKActivityCache__activityCacheWithStartDate_endDate_dateComponents_sequence_metadata___block_invoke;
    v28[3] = &unk_1E7381408;
    v29 = v19;
    v30 = v18;
    sequenceCopy = sequence;
    v27.receiver = self;
    v27.super_class = &OBJC_METACLASS___HKActivityCache;
    v25 = v19;
    v7 = objc_msgSendSuper2(&v27, sel__newSampleWithType_startDate_endDate_device_metadata_config_, v20, 0, metadataCopy, v28, v22, v24);
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

+ (id)_activityCacheWithUUID:(id)d startDate:(id)date endDate:(id)endDate dateComponents:(id)components sequence:(int64_t)sequence
{
  dCopy = d;
  v13 = dCopy;
  v14 = 0;
  if (endDate && date && dCopy && components)
  {
    componentsCopy = components;
    endDateCopy = endDate;
    dateCopy = date;
    v18 = _HKCachedImmutableGregorianCalendarWithUTCTimeZone();
    v34 = 0;
    v19 = _HKDerivedCacheIndexAndDateComponents(v18, componentsCopy, &v34);

    v20 = v34;
    v21 = +[HKObjectType activityCacheType];
    [dateCopy timeIntervalSinceReferenceDate];
    v23 = v22;

    [endDateCopy timeIntervalSinceReferenceDate];
    v25 = v24;

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __84__HKActivityCache__activityCacheWithUUID_startDate_endDate_dateComponents_sequence___block_invoke;
    v29[3] = &unk_1E7381430;
    v32 = v19;
    sequenceCopy = sequence;
    v30 = v20;
    v31 = v13;
    v28.receiver = self;
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
  startDate = [(HKSample *)&v5 startDate];

  return startDate;
}

- (id)startDate
{
  os_unfair_lock_lock(&self->_lock);
  _lock_startDate = [(HKActivityCache *)self _lock_startDate];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_startDate;
}

- (void)_lock_setStartDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  [(HKSample *)&v5 _setStartDate:dateCopy];
}

- (void)_setStartDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setStartDate:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_endDate
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  endDate = [(HKSample *)&v5 endDate];

  return endDate;
}

- (id)endDate
{
  os_unfair_lock_lock(&self->_lock);
  _lock_endDate = [(HKActivityCache *)self _lock_endDate];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_endDate;
}

- (void)_lock_setEndDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  [(HKSample *)&v5 _setEndDate:dateCopy];
}

- (void)_setEndDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEndDate:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_metadata
{
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  metadata = [(HKObject *)&v5 metadata];

  return metadata;
}

- (id)metadata
{
  os_unfair_lock_lock(&self->_lock);
  _lock_metadata = [(HKActivityCache *)self _lock_metadata];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_metadata;
}

- (void)_lock_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  os_unfair_lock_assert_owner(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  [(HKObject *)&v5 _setMetadata:metadataCopy];
}

- (void)_setMetadata:(id)metadata
{
  metadataCopy = metadata;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMetadata:metadataCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)_isEqualToActivityCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKActivityCache *)self _lock_isEqualToActivityCache:cacheCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (BOOL)_lock_isEqualToActivityCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!cacheCopy)
  {
    goto LABEL_55;
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_energyBurned];
  energyBurned = [cacheCopy energyBurned];
  v7 = energyBurned;
  if (_lock_energyBurned == energyBurned)
  {
  }

  else
  {
    energyBurned2 = [cacheCopy energyBurned];
    if (!energyBurned2)
    {
      goto LABEL_54;
    }

    v9 = energyBurned2;
    _lock_energyBurned2 = [(HKActivityCache *)self _lock_energyBurned];
    energyBurned3 = [cacheCopy energyBurned];
    v12 = [_lock_energyBurned2 isEqual:energyBurned3];

    if (!v12)
    {
      goto LABEL_55;
    }
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_energyBurnedGoal];
  energyBurnedGoal = [cacheCopy energyBurnedGoal];
  v7 = energyBurnedGoal;
  if (_lock_energyBurned == energyBurnedGoal)
  {
  }

  else
  {
    energyBurnedGoal2 = [cacheCopy energyBurnedGoal];
    if (!energyBurnedGoal2)
    {
      goto LABEL_54;
    }

    v15 = energyBurnedGoal2;
    _lock_energyBurnedGoal = [(HKActivityCache *)self _lock_energyBurnedGoal];
    energyBurnedGoal3 = [cacheCopy energyBurnedGoal];
    v18 = [_lock_energyBurnedGoal isEqual:energyBurnedGoal3];

    if (!v18)
    {
      goto LABEL_55;
    }
  }

  [(HKActivityCache *)self _lock_moveMinutes];
  v20 = v19;
  [cacheCopy moveMinutes];
  if (v20 != v21)
  {
    goto LABEL_55;
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_moveMinutesGoal];
  moveMinutesGoal = [cacheCopy moveMinutesGoal];
  v7 = moveMinutesGoal;
  if (_lock_energyBurned == moveMinutesGoal)
  {
  }

  else
  {
    moveMinutesGoal2 = [cacheCopy moveMinutesGoal];
    if (!moveMinutesGoal2)
    {
      goto LABEL_54;
    }

    v24 = moveMinutesGoal2;
    _lock_moveMinutesGoal = [(HKActivityCache *)self _lock_moveMinutesGoal];
    moveMinutesGoal3 = [cacheCopy moveMinutesGoal];
    v27 = [_lock_moveMinutesGoal isEqual:moveMinutesGoal3];

    if (!v27)
    {
      goto LABEL_55;
    }
  }

  [(HKActivityCache *)self _lock_briskMinutes];
  v29 = v28;
  [cacheCopy briskMinutes];
  if (v29 != v30)
  {
    goto LABEL_55;
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_briskMinutesGoal];
  briskMinutesGoal = [cacheCopy briskMinutesGoal];
  v7 = briskMinutesGoal;
  if (_lock_energyBurned == briskMinutesGoal)
  {
  }

  else
  {
    briskMinutesGoal2 = [cacheCopy briskMinutesGoal];
    if (!briskMinutesGoal2)
    {
      goto LABEL_54;
    }

    v33 = briskMinutesGoal2;
    _lock_briskMinutesGoal = [(HKActivityCache *)self _lock_briskMinutesGoal];
    briskMinutesGoal3 = [cacheCopy briskMinutesGoal];
    v36 = [_lock_briskMinutesGoal isEqual:briskMinutesGoal3];

    if (!v36)
    {
      goto LABEL_55;
    }
  }

  [(HKActivityCache *)self _lock_activeHours];
  v38 = v37;
  [cacheCopy activeHours];
  if (v38 != v39)
  {
    goto LABEL_55;
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_activeHoursGoal];
  activeHoursGoal = [cacheCopy activeHoursGoal];
  v7 = activeHoursGoal;
  if (_lock_energyBurned == activeHoursGoal)
  {
  }

  else
  {
    activeHoursGoal2 = [cacheCopy activeHoursGoal];
    if (!activeHoursGoal2)
    {
      goto LABEL_54;
    }

    v42 = activeHoursGoal2;
    _lock_activeHoursGoal = [(HKActivityCache *)self _lock_activeHoursGoal];
    activeHoursGoal3 = [cacheCopy activeHoursGoal];
    v45 = [_lock_activeHoursGoal isEqual:activeHoursGoal3];

    if (!v45)
    {
      goto LABEL_55;
    }
  }

  _lock_stepCount = [(HKActivityCache *)self _lock_stepCount];
  if (_lock_stepCount != [cacheCopy stepCount])
  {
    goto LABEL_55;
  }

  _lock_pushCount = [(HKActivityCache *)self _lock_pushCount];
  if (_lock_pushCount != [cacheCopy pushCount])
  {
    goto LABEL_55;
  }

  _lock_wheelchairUse = [(HKActivityCache *)self _lock_wheelchairUse];
  if (_lock_wheelchairUse != [cacheCopy wheelchairUse])
  {
    goto LABEL_55;
  }

  [(HKActivityCache *)self _lock_deepBreathingDuration];
  v50 = v49;
  [cacheCopy deepBreathingDuration];
  if (v50 != v51)
  {
    goto LABEL_55;
  }

  _lock_flightsClimbed = [(HKActivityCache *)self _lock_flightsClimbed];
  if (_lock_flightsClimbed != [cacheCopy flightsClimbed])
  {
    goto LABEL_55;
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_walkingAndRunningDistance];
  walkingAndRunningDistance = [cacheCopy walkingAndRunningDistance];
  v7 = walkingAndRunningDistance;
  if (_lock_energyBurned == walkingAndRunningDistance)
  {
  }

  else
  {
    walkingAndRunningDistance2 = [cacheCopy walkingAndRunningDistance];
    if (!walkingAndRunningDistance2)
    {
      goto LABEL_54;
    }

    v55 = walkingAndRunningDistance2;
    _lock_walkingAndRunningDistance = [(HKActivityCache *)self _lock_walkingAndRunningDistance];
    walkingAndRunningDistance3 = [cacheCopy walkingAndRunningDistance];
    v58 = [_lock_walkingAndRunningDistance isEqual:walkingAndRunningDistance3];

    if (!v58)
    {
      goto LABEL_55;
    }
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_startDate];
  startDate = [cacheCopy startDate];
  v7 = startDate;
  if (_lock_energyBurned == startDate)
  {
  }

  else
  {
    startDate2 = [cacheCopy startDate];
    if (!startDate2)
    {
      goto LABEL_54;
    }

    v61 = startDate2;
    _lock_startDate = [(HKActivityCache *)self _lock_startDate];
    startDate3 = [cacheCopy startDate];
    v64 = [_lock_startDate isEqual:startDate3];

    if (!v64)
    {
      goto LABEL_55;
    }
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_endDate];
  endDate = [cacheCopy endDate];
  v7 = endDate;
  if (_lock_energyBurned == endDate)
  {
  }

  else
  {
    endDate2 = [cacheCopy endDate];
    if (!endDate2)
    {
      goto LABEL_54;
    }

    v67 = endDate2;
    _lock_endDate = [(HKActivityCache *)self _lock_endDate];
    endDate3 = [cacheCopy endDate];
    v70 = [_lock_endDate isEqual:endDate3];

    if (!v70)
    {
      goto LABEL_55;
    }
  }

  _lock_energyBurned = [(HKActivityCache *)self _lock_dateComponents];
  dateComponents = [cacheCopy dateComponents];
  v7 = dateComponents;
  if (_lock_energyBurned != dateComponents)
  {
    dateComponents2 = [cacheCopy dateComponents];
    if (dateComponents2)
    {
      v73 = dateComponents2;
      _lock_dateComponents = [(HKActivityCache *)self _lock_dateComponents];
      dateComponents3 = [cacheCopy dateComponents];
      v76 = [_lock_dateComponents isEqual:dateComponents3];

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
  _lock_activityMoveMode = [(HKActivityCache *)self _lock_activityMoveMode];
  if (_lock_activityMoveMode == [cacheCopy activityMoveMode])
  {
    _lock_isPaused = [(HKActivityCache *)self _lock_isPaused];
    if (_lock_isPaused == [cacheCopy isPaused])
    {
      _lock_version = [(HKActivityCache *)self _lock_version];
      v77 = _lock_version == [cacheCopy version];
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

- (void)_lock_setEnergyBurned:(id)burned
{
  burnedCopy = burned;
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurned = self->_energyBurned;
  self->_energyBurned = burnedCopy;
}

- (void)_setEnergyBurned:(id)burned
{
  burnedCopy = burned;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEnergyBurned:burnedCopy];

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

- (void)_lock_setMoveMinutes:(double)minutes
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_moveMinutes = minutes;
  self->_knownFields |= 0x4000uLL;
}

- (void)_setMoveMinutes:(double)minutes
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMoveMinutes:minutes];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasMoveMinutes
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasMoveMinutes = [(HKActivityCache *)self _lock_hasMoveMinutes];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasMoveMinutes;
}

- (void)_lock_setBriskMinutes:(double)minutes
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_briskMinutes = minutes;
  self->_knownFields |= 4uLL;
}

- (void)_setBriskMinutes:(double)minutes
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setBriskMinutes:minutes];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setActiveHours:(double)hours
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_activeHours = hours;
  self->_knownFields |= 8uLL;
}

- (void)_setActiveHours:(double)hours
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActiveHours:hours];

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

- (void)_lock_setEnergyBurnedGoal:(id)goal date:(id)date
{
  goalCopy = goal;
  dateCopy = date;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!dateCopy || (energyBurnedGoalDate = self->_energyBurnedGoalDate) == 0 || -[NSDate compare:](energyBurnedGoalDate, "compare:", dateCopy) == NSOrderedAscending && (-[HKActivityCache _lock_endDate](self, "_lock_endDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [dateCopy compare:v9], v9, v10 == -1))
  {
    objc_storeStrong(&self->_energyBurnedGoal, goal);
    objc_storeStrong(&self->_energyBurnedGoalDate, date);
  }
}

- (void)_setEnergyBurnedGoal:(id)goal date:(id)date
{
  dateCopy = date;
  goalCopy = goal;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEnergyBurnedGoal:goalCopy date:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setEnergyBurnedGoalOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurnedGoal = self->_energyBurnedGoal;
  self->_energyBurnedGoal = onlyCopy;
}

- (void)_setEnergyBurnedGoalOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEnergyBurnedGoalOnly:onlyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setEnergyBurnedGoalDateOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_assert_owner(&self->_lock);
  energyBurnedGoalDate = self->_energyBurnedGoalDate;
  self->_energyBurnedGoalDate = onlyCopy;
}

- (void)_setEnergyBurnedGoalDateOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setEnergyBurnedGoalDateOnly:onlyCopy];

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
  _lock_moveMinutesGoal = [(HKActivityCache *)self _lock_moveMinutesGoal];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_moveMinutesGoal;
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
  _lock_moveMinutesGoalDate = [(HKActivityCache *)self _lock_moveMinutesGoalDate];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_moveMinutesGoalDate;
}

- (void)_lock_setMoveMinutesGoal:(id)goal date:(id)date
{
  goalCopy = goal;
  dateCopy = date;
  os_unfair_lock_assert_owner(&self->_lock);
  if (!dateCopy || (moveMinutesGoalDate = self->_moveMinutesGoalDate) == 0 || -[NSDate compare:](moveMinutesGoalDate, "compare:", dateCopy) == NSOrderedAscending && (-[HKActivityCache _lock_endDate](self, "_lock_endDate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [dateCopy compare:v9], v9, v10 == -1))
  {
    objc_storeStrong(&self->_moveMinutesGoal, goal);
    objc_storeStrong(&self->_moveMinutesGoalDate, date);
  }
}

- (void)_setMoveMinutesGoal:(id)goal date:(id)date
{
  dateCopy = date;
  goalCopy = goal;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMoveMinutesGoal:goalCopy date:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setMoveMinutesGoalOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_assert_owner(&self->_lock);
  moveMinutesGoal = self->_moveMinutesGoal;
  self->_moveMinutesGoal = onlyCopy;
}

- (void)_setMoveMinutesGoalOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMoveMinutesGoalOnly:onlyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setMoveMinutesGoalDateOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_assert_owner(&self->_lock);
  moveMinutesGoalDate = self->_moveMinutesGoalDate;
  self->_moveMinutesGoalDate = onlyCopy;
}

- (void)_setMoveMinutesGoalDateOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setMoveMinutesGoalDateOnly:onlyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasMoveMinutesGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasMoveMinutesGoal = [(HKActivityCache *)self _lock_hasMoveMinutesGoal];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasMoveMinutesGoal;
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
    _lock_fallbackBriskMinutesGoal = briskMinutesGoal;
  }

  else
  {
    _lock_fallbackBriskMinutesGoal = [(HKActivityCache *)self _lock_fallbackBriskMinutesGoal];
  }

  return _lock_fallbackBriskMinutesGoal;
}

- (void)_lock_setBriskMinutesGoal:(id)goal date:(id)date
{
  goalCopy = goal;
  dateCopy = date;
  os_unfair_lock_assert_owner(&self->_lock);
  if (goalCopy && [goalCopy _isZero])
  {
    [HKActivityCache _lock_setBriskMinutesGoal:a2 date:self];
  }

  if (!dateCopy || (briskMinutesGoalDate = self->_briskMinutesGoalDate) == 0 || -[NSDate compare:](briskMinutesGoalDate, "compare:", dateCopy) == NSOrderedAscending && (-[HKActivityCache _lock_endDate](self, "_lock_endDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [dateCopy compare:v10], v10, v11 == -1))
  {
    objc_storeStrong(&self->_briskMinutesGoal, goal);
    objc_storeStrong(&self->_briskMinutesGoalDate, date);
  }
}

- (void)_setBriskMinutesGoal:(id)goal date:(id)date
{
  dateCopy = date;
  goalCopy = goal;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setBriskMinutesGoal:goalCopy date:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setBriskMinutesGoalOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_assert_owner(&self->_lock);
  briskMinutesGoal = self->_briskMinutesGoal;
  self->_briskMinutesGoal = onlyCopy;
}

- (void)_setBriskMinutesGoalOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setBriskMinutesGoalOnly:onlyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setBriskMinutesGoalDateOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_assert_owner(&self->_lock);
  briskMinutesGoalDate = self->_briskMinutesGoalDate;
  self->_briskMinutesGoalDate = onlyCopy;
}

- (void)_setBriskMinutesGoalDateOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setBriskMinutesGoalDateOnly:onlyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasBriskMinutesGoalDate
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasBriskMinutesGoalDate = [(HKActivityCache *)self _lock_hasBriskMinutesGoalDate];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasBriskMinutesGoalDate;
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
    _lock_fallbackActiveHoursGoal = activeHoursGoal;
  }

  else
  {
    _lock_fallbackActiveHoursGoal = [(HKActivityCache *)self _lock_fallbackActiveHoursGoal];
  }

  return _lock_fallbackActiveHoursGoal;
}

- (void)_lock_setActiveHoursGoal:(id)goal date:(id)date
{
  goalCopy = goal;
  dateCopy = date;
  os_unfair_lock_assert_owner(&self->_lock);
  if (goalCopy && [goalCopy _isZero])
  {
    [HKActivityCache _lock_setActiveHoursGoal:a2 date:self];
  }

  if (!dateCopy || (activeHoursGoalDate = self->_activeHoursGoalDate) == 0 || -[NSDate compare:](activeHoursGoalDate, "compare:", dateCopy) == NSOrderedAscending && (-[HKActivityCache _lock_endDate](self, "_lock_endDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [dateCopy compare:v10], v10, v11 == -1))
  {
    objc_storeStrong(&self->_activeHoursGoal, goal);
    objc_storeStrong(&self->_activeHoursGoalDate, date);
  }
}

- (void)_setActiveHoursGoal:(id)goal date:(id)date
{
  dateCopy = date;
  goalCopy = goal;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActiveHoursGoal:goalCopy date:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setActiveHoursGoalOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_assert_owner(&self->_lock);
  activeHoursGoal = self->_activeHoursGoal;
  self->_activeHoursGoal = onlyCopy;
}

- (void)_setActiveHoursGoalOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActiveHoursGoalOnly:onlyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setActiveHoursGoalDateOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_assert_owner(&self->_lock);
  activeHoursGoalDate = self->_activeHoursGoalDate;
  self->_activeHoursGoalDate = onlyCopy;
}

- (void)_setActiveHoursGoalDateOnly:(id)only
{
  onlyCopy = only;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActiveHoursGoalDateOnly:onlyCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasActiveHoursGoalDate
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasActiveHoursGoalDate = [(HKActivityCache *)self _lock_hasActiveHoursGoalDate];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasActiveHoursGoalDate;
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
  _lock_hasBriskMinutesGoal = [(HKActivityCache *)self _lock_hasBriskMinutesGoal];
  result = 0.0;
  if (_lock_hasBriskMinutesGoal)
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
  _lock_hasActiveHoursGoal = [(HKActivityCache *)self _lock_hasActiveHoursGoal];
  result = 0.0;
  if (_lock_hasActiveHoursGoal)
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

- (void)_lock_setCacheIndex:(int64_t)index
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_cacheIndex = index;
  v5 = _HKActivityCacheDateComponentsFromCacheIndex(index);
  dateComponents = self->_dateComponents;
  self->_dateComponents = v5;

  MEMORY[0x1EEE66BB8](v5, dateComponents);
}

- (void)_setCacheIndex:(int64_t)index
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setCacheIndex:index];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)sequence
{
  os_unfair_lock_lock(&self->_lock);
  _lock_sequence = [(HKActivityCache *)self _lock_sequence];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_sequence;
}

- (void)_setSequence:(int64_t)sequence
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setSequence:sequence];

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
  _lock_hasDateComponents = [(HKActivityCache *)self _lock_hasDateComponents];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasDateComponents;
}

- (void)_lock_setStepCount:(int64_t)count
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_stepCount = count;
  self->_knownFields |= 0x80uLL;
}

- (void)_setStepCount:(int64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setStepCount:count];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setPushCount:(int64_t)count
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_pushCount = count;
  self->_knownFields |= 0x800uLL;
}

- (void)_setPushCount:(int64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setPushCount:count];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setWheelchairUse:(int64_t)use
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_wheelchairUse = use;
  self->_knownFields |= 0x2000uLL;
}

- (void)_setWheelchairUse:(int64_t)use
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setWheelchairUse:use];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setDeepBreathingDuration:(double)duration
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_deepBreathingDuration = duration;
  self->_knownFields |= 0x400uLL;
}

- (void)_setDeepBreathingDuration:(double)duration
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setDeepBreathingDuration:duration];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_walkingAndRunningDistance
{
  os_unfair_lock_assert_owner(&self->_lock);
  walkingAndRunningDistance = self->_walkingAndRunningDistance;

  return walkingAndRunningDistance;
}

- (void)_lock_setWalkingAndRunningDistance:(id)distance
{
  distanceCopy = distance;
  os_unfair_lock_assert_owner(&self->_lock);
  walkingAndRunningDistance = self->_walkingAndRunningDistance;
  self->_walkingAndRunningDistance = distanceCopy;
}

- (void)_setWalkingAndRunningDistance:(id)distance
{
  distanceCopy = distance;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setWalkingAndRunningDistance:distanceCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setFlightsClimbed:(int64_t)climbed
{
  os_unfair_lock_assert_owner(&self->_lock);
  self->_flightsClimbed = climbed;
  self->_knownFields |= 0x1000uLL;
}

- (void)_setFlightsClimbed:(int64_t)climbed
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setFlightsClimbed:climbed];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_dailyEnergyBurnedStatistics
{
  os_unfair_lock_assert_owner(&self->_lock);
  dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;

  return dailyEnergyBurnedStatistics;
}

- (void)_lock_setDailyEnergyBurnedStatistics:(id)statistics
{
  statisticsCopy = statistics;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [statisticsCopy copy];

  dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;
  self->_dailyEnergyBurnedStatistics = v5;
}

- (void)_setDailyEnergyBurnedStatistics:(id)statistics
{
  statisticsCopy = statistics;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setDailyEnergyBurnedStatistics:statisticsCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasDailyMoveMinutesStatistics
{
  os_unfair_lock_lock(&self->_lock);
  _lock_hasDailyMoveMinutesStatistics = [(HKActivityCache *)self _lock_hasDailyMoveMinutesStatistics];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_hasDailyMoveMinutesStatistics;
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
  _lock_dailyMoveMinutesStatistics = [(HKActivityCache *)self _lock_dailyMoveMinutesStatistics];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_dailyMoveMinutesStatistics;
}

- (void)_lock_setDailyMoveMinutesStatistics:(id)statistics
{
  statisticsCopy = statistics;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [statisticsCopy copy];

  dailyMoveMinutesStatistics = self->_dailyMoveMinutesStatistics;
  self->_dailyMoveMinutesStatistics = v5;
}

- (void)_setDailyMoveMinutesStatistics:(id)statistics
{
  statisticsCopy = statistics;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setDailyMoveMinutesStatistics:statisticsCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lock_dailyBriskMinutesStatistics
{
  os_unfair_lock_assert_owner(&self->_lock);
  dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;

  return dailyBriskMinutesStatistics;
}

- (void)_lock_setDailyBriskMinutesStatistics:(id)statistics
{
  statisticsCopy = statistics;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [statisticsCopy copy];

  dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;
  self->_dailyBriskMinutesStatistics = v5;
}

- (void)_setDailyBriskMinutesStatistics:(id)statistics
{
  statisticsCopy = statistics;
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setDailyBriskMinutesStatistics:statisticsCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)activityMoveMode
{
  os_unfair_lock_lock(&self->_lock);
  _lock_activityMoveMode = [(HKActivityCache *)self _lock_activityMoveMode];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_activityMoveMode;
}

- (void)_lock_setActivityMoveMode:(int64_t)mode
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!mode)
  {
    [(HKActivityCache *)a2 _lock_setActivityMoveMode:?];
  }

  self->_activityMoveMode = mode;
}

- (void)_setActivityMoveMode:(int64_t)mode
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setActivityMoveMode:mode];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPaused
{
  os_unfair_lock_lock(&self->_lock);
  _lock_isPaused = [(HKActivityCache *)self _lock_isPaused];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_isPaused;
}

- (int64_t)version
{
  os_unfair_lock_lock(&self->_lock);
  _lock_version = [(HKActivityCache *)self _lock_version];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_version;
}

- (void)_setVersion:(int64_t)version
{
  os_unfair_lock_lock(&self->_lock);
  [(HKActivityCache *)self _lock_setVersion:version];

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

  _lock_hasBriskMinutes = [(HKActivityCache *)self _lock_hasBriskMinutes];
  v5 = 4;
  if (!_lock_hasBriskMinutes)
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

  _lock_hasEnergyBurnedGoal = [(HKActivityCache *)self _lock_hasEnergyBurnedGoal];
  v9 = 16;
  if (!_lock_hasEnergyBurnedGoal)
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

  _lock_hasActiveHoursGoal = [(HKActivityCache *)self _lock_hasActiveHoursGoal];
  v13 = 64;
  if (!_lock_hasActiveHoursGoal)
  {
    v13 = 0;
  }

  v14 = v11 | v13;
  _lock_hasStepCount = [(HKActivityCache *)self _lock_hasStepCount];
  v16 = 128;
  if (!_lock_hasStepCount)
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

  _lock_hasWalkingAndRunningDistance = [(HKActivityCache *)self _lock_hasWalkingAndRunningDistance];
  v20 = 256;
  if (!_lock_hasWalkingAndRunningDistance)
  {
    v20 = 0;
  }

  v21 = v18 | v20;
  _lock_hasPushCount = [(HKActivityCache *)self _lock_hasPushCount];
  v23 = 2048;
  if (!_lock_hasPushCount)
  {
    v23 = 0;
  }

  v24 = v21 | v23;
  _lock_hasWheelchairUse = [(HKActivityCache *)self _lock_hasWheelchairUse];
  v26 = 0x2000;
  if (!_lock_hasWheelchairUse)
  {
    v26 = 0;
  }

  v27 = v17 | v24 | v26;
  _lock_hasFlightsClimbed = [(HKActivityCache *)self _lock_hasFlightsClimbed];
  v29 = 4096;
  if (!_lock_hasFlightsClimbed)
  {
    v29 = 0;
  }

  return v27 | v29;
}

- (unint64_t)knownFields
{
  os_unfair_lock_lock(&self->_lock);
  _lock_knownFields = [(HKActivityCache *)self _lock_knownFields];
  os_unfair_lock_unlock(&self->_lock);
  return _lock_knownFields;
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

- (id)copyWithZone:(_NSZone *)zone
{
  os_unfair_lock_lock(&self->_lock);
  _lock_startDate = [(HKActivityCache *)self _lock_startDate];
  _lock_endDate = [(HKActivityCache *)self _lock_endDate];
  _lock_dateComponents = [(HKActivityCache *)self _lock_dateComponents];
  _lock_sequence = [(HKActivityCache *)self _lock_sequence];
  _lock_metadata = [(HKActivityCache *)self _lock_metadata];
  v9 = [HKActivityCache _activityCacheWithStartDate:_lock_startDate endDate:_lock_endDate dateComponents:_lock_dateComponents sequence:_lock_sequence metadata:_lock_metadata];

  uUID = [(HKObject *)self UUID];
  [v9 _setUUID:uUID];

  if ([(HKActivityCache *)self _lock_hasEnergyBurned])
  {
    _lock_energyBurned = [(HKActivityCache *)self _lock_energyBurned];
    [v9 _setEnergyBurned:_lock_energyBurned];
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
    _lock_walkingAndRunningDistance = [(HKActivityCache *)self _lock_walkingAndRunningDistance];
    [v9 _setWalkingAndRunningDistance:_lock_walkingAndRunningDistance];
  }

  if ([(HKActivityCache *)self _lock_hasDeepBreathingDuration])
  {
    [(HKActivityCache *)self _lock_deepBreathingDuration];
    [v9 _setDeepBreathingDuration:?];
  }

  if ([(HKActivityCache *)self _lock_hasEnergyBurnedGoal])
  {
    _lock_energyBurnedGoal = [(HKActivityCache *)self _lock_energyBurnedGoal];
    _lock_energyBurnedGoalDate = [(HKActivityCache *)self _lock_energyBurnedGoalDate];
    [v9 _setEnergyBurnedGoal:_lock_energyBurnedGoal date:_lock_energyBurnedGoalDate];
  }

  if ([(HKActivityCache *)self _lock_hasMoveMinutesGoal])
  {
    _lock_moveMinutesGoal = [(HKActivityCache *)self _lock_moveMinutesGoal];
    _lock_moveMinutesGoalDate = [(HKActivityCache *)self _lock_moveMinutesGoalDate];
    [v9 _setMoveMinutesGoal:_lock_moveMinutesGoal date:_lock_moveMinutesGoalDate];
  }

  if ([(HKActivityCache *)self _lock_hasBriskMinutesGoal])
  {
    _lock_briskMinutesGoal = [(HKActivityCache *)self _lock_briskMinutesGoal];
    [v9 _setBriskMinutesGoal:_lock_briskMinutesGoal];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHoursGoal])
  {
    _lock_activeHoursGoal = [(HKActivityCache *)self _lock_activeHoursGoal];
    [v9 _setActiveHoursGoal:_lock_activeHoursGoal];
  }

  if ([(HKActivityCache *)self _lock_hasFlightsClimbed])
  {
    [v9 _setFlightsClimbed:{-[HKActivityCache _lock_flightsClimbed](self, "_lock_flightsClimbed")}];
  }

  _lock_dailyEnergyBurnedStatistics = [(HKActivityCache *)self _lock_dailyEnergyBurnedStatistics];
  [v9 _setDailyEnergyBurnedStatistics:_lock_dailyEnergyBurnedStatistics];

  _lock_dailyMoveMinutesStatistics = [(HKActivityCache *)self _lock_dailyMoveMinutesStatistics];
  [v9 _setDailyMoveMinutesStatistics:_lock_dailyMoveMinutesStatistics];

  _lock_dailyBriskMinutesStatistics = [(HKActivityCache *)self _lock_dailyBriskMinutesStatistics];
  [v9 _setDailyBriskMinutesStatistics:_lock_dailyBriskMinutesStatistics];

  [v9 _setActivityMoveMode:{-[HKActivityCache _lock_activityMoveMode](self, "_lock_activityMoveMode")}];
  [v9 _setPaused:{-[HKActivityCache _lock_isPaused](self, "_lock_isPaused")}];
  [v9 _setVersion:{-[HKActivityCache _lock_version](self, "_lock_version")}];
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (HKActivityCache)initWithCoder:(id)coder
{
  v57[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v54.receiver = self;
  v54.super_class = HKActivityCache;
  v5 = [(HKSample *)&v54 initWithCoder:coderCopy];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_49;
  }

  v5->_lock._os_unfair_lock_opaque = 0;
  os_unfair_lock_lock(&v5->_lock);
  -[HKActivityCache _lock_setCacheIndex:](v6, "_lock_setCacheIndex:", [coderCopy decodeInt64ForKey:@"cacheIndex"]);
  -[HKActivityCache _lock_setSequence:](v6, "_lock_setSequence:", [coderCopy decodeInt64ForKey:@"sequence"]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"energyBurned"];
  energyBurned = v6->_energyBurned;
  v6->_energyBurned = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"energyBurnedGoal"];
  energyBurnedGoal = v6->_energyBurnedGoal;
  v6->_energyBurnedGoal = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"energyBurnedGoalDate"];
  energyBurnedGoalDate = v6->_energyBurnedGoalDate;
  v6->_energyBurnedGoalDate = v11;

  if ([coderCopy containsValueForKey:@"moveMinutes"])
  {
    [coderCopy decodeDoubleForKey:@"moveMinutes"];
    [(HKActivityCache *)v6 _lock_setMoveMinutes:?];
  }

  if ([coderCopy containsValueForKey:@"moveMinutesGoalQuantity"])
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"moveMinutesGoalQuantity"];
    moveMinutesGoal = v6->_moveMinutesGoal;
    v6->_moveMinutesGoal = v13;
  }

  else
  {
    if (![coderCopy containsValueForKey:@"moveMinutesGoal"])
    {
      goto LABEL_9;
    }

    [coderCopy decodeDoubleForKey:@"moveMinutesGoal"];
    v16 = v15;
    moveMinutesGoal = +[HKUnit minuteUnit];
    v17 = [HKQuantity quantityWithUnit:moveMinutesGoal doubleValue:v16];
    v18 = v6->_moveMinutesGoal;
    v6->_moveMinutesGoal = v17;
  }

LABEL_9:
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"moveMinutesGoalDate"];
  moveMinutesGoalDate = v6->_moveMinutesGoalDate;
  v6->_moveMinutesGoalDate = v19;

  if ([coderCopy containsValueForKey:@"activeHours"])
  {
    [coderCopy decodeDoubleForKey:@"activeHours"];
    [(HKActivityCache *)v6 _lock_setActiveHours:?];
  }

  if ([coderCopy containsValueForKey:@"activeHoursGoalQuantity"])
  {
    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeHoursGoalQuantity"];
    [(HKActivityCache *)v6 _lock_setActiveHoursGoalOnly:v21];
  }

  else
  {
    if (![coderCopy containsValueForKey:@"activeHoursGoal"])
    {
      goto LABEL_16;
    }

    [coderCopy decodeDoubleForKey:@"activeHoursGoal"];
    v23 = v22;
    v21 = +[HKUnit countUnit];
    v24 = [HKQuantity quantityWithUnit:v21 doubleValue:v23];
    [(HKActivityCache *)v6 _lock_setActiveHoursGoalOnly:v24];
  }

LABEL_16:
  if ([coderCopy containsValueForKey:@"activeHoursGoalDate"])
  {
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeHoursGoalDate"];
    [(HKActivityCache *)v6 _lock_setActiveHoursGoalDateOnly:v25];
  }

  if ([coderCopy containsValueForKey:@"briskMinutes"])
  {
    [coderCopy decodeDoubleForKey:@"briskMinutes"];
    [(HKActivityCache *)v6 _lock_setBriskMinutes:?];
  }

  if ([coderCopy containsValueForKey:@"briskMinutesGoalQuantity"])
  {
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"briskMinutesGoalQuantity"];
    [(HKActivityCache *)v6 _lock_setBriskMinutesGoalOnly:v26];
LABEL_24:

    goto LABEL_25;
  }

  if ([coderCopy containsValueForKey:@"briskMinutesGoal"])
  {
    [coderCopy decodeDoubleForKey:@"briskMinutesGoal"];
    v28 = v27;
    v26 = +[HKUnit minuteUnit];
    v29 = [HKQuantity quantityWithUnit:v26 doubleValue:v28];
    [(HKActivityCache *)v6 _lock_setBriskMinutesGoalOnly:v29];

    goto LABEL_24;
  }

LABEL_25:
  if ([coderCopy containsValueForKey:@"briskMinutesGoalDate"])
  {
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"briskMinutesGoalDate"];
    [(HKActivityCache *)v6 _lock_setBriskMinutesGoalDateOnly:v30];
  }

  if ([coderCopy containsValueForKey:@"stepCount"])
  {
    -[HKActivityCache _lock_setStepCount:](v6, "_lock_setStepCount:", [coderCopy decodeIntegerForKey:@"stepCount"]);
  }

  if ([coderCopy containsValueForKey:@"pushCount"])
  {
    -[HKActivityCache _lock_setPushCount:](v6, "_lock_setPushCount:", [coderCopy decodeIntegerForKey:@"pushCount"]);
  }

  if ([coderCopy containsValueForKey:@"wheelchairUse"])
  {
    -[HKActivityCache _lock_setWheelchairUse:](v6, "_lock_setWheelchairUse:", [coderCopy decodeIntegerForKey:@"wheelchairUse"]);
  }

  if ([coderCopy containsValueForKey:@"deepBreathingDuration"])
  {
    [coderCopy decodeDoubleForKey:@"deepBreathingDuration"];
    [(HKActivityCache *)v6 _lock_setDeepBreathingDuration:?];
  }

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"walkRunDistance"];
  walkingAndRunningDistance = v6->_walkingAndRunningDistance;
  v6->_walkingAndRunningDistance = v31;

  if ([coderCopy containsValueForKey:@"flightsClimbed"])
  {
    -[HKActivityCache _lock_setFlightsClimbed:](v6, "_lock_setFlightsClimbed:", [coderCopy decodeIntegerForKey:@"flightsClimbed"]);
  }

  v33 = MEMORY[0x1E695DFD8];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v35 = [v33 setWithArray:v34];
  v36 = [coderCopy decodeObjectOfClasses:v35 forKey:@"dailyEnergyBurnedStatistics"];
  dailyEnergyBurnedStatistics = v6->_dailyEnergyBurnedStatistics;
  v6->_dailyEnergyBurnedStatistics = v36;

  v38 = MEMORY[0x1E695DFD8];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v40 = [v38 setWithArray:v39];
  v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"dailyMoveMinutesStatistics"];
  dailyMoveMinutesStatistics = v6->_dailyMoveMinutesStatistics;
  v6->_dailyMoveMinutesStatistics = v41;

  v43 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v45 = [v43 setWithArray:v44];
  v46 = [coderCopy decodeObjectOfClasses:v45 forKey:@"dailyBriskMinutesStatistics"];
  dailyBriskMinutesStatistics = v6->_dailyBriskMinutesStatistics;
  v6->_dailyBriskMinutesStatistics = v46;

  if ([coderCopy containsValueForKey:@"activityMoveMode"])
  {
    v48 = [coderCopy decodeIntegerForKey:@"activityMoveMode"];
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
  if ([coderCopy containsValueForKey:@"paused"])
  {
    v50 = [coderCopy decodeBoolForKey:@"paused"];
  }

  else
  {
    v50 = 0;
  }

  [(HKActivityCache *)v6 _lock_setPaused:v50];
  if ([coderCopy containsValueForKey:@"version"])
  {
    v51 = [coderCopy decodeIntegerForKey:@"version"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  v5.receiver = self;
  v5.super_class = HKActivityCache;
  [(HKSample *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_cacheIndex forKey:@"cacheIndex"];
  [coderCopy encodeInt64:self->_sequence forKey:@"sequence"];
  [coderCopy encodeObject:self->_energyBurned forKey:@"energyBurned"];
  [coderCopy encodeObject:self->_energyBurnedGoal forKey:@"energyBurnedGoal"];
  [coderCopy encodeObject:self->_energyBurnedGoalDate forKey:@"energyBurnedGoalDate"];
  [coderCopy encodeDouble:@"moveMinutes" forKey:self->_moveMinutes];
  [coderCopy encodeObject:self->_moveMinutesGoal forKey:@"moveMinutesGoalQuantity"];
  [coderCopy encodeObject:self->_moveMinutesGoalDate forKey:@"moveMinutesGoalDate"];
  if ([(HKActivityCache *)self _lock_hasBriskMinutes])
  {
    [coderCopy encodeDouble:@"briskMinutes" forKey:self->_briskMinutes];
  }

  if ([(HKActivityCache *)self _lock_hasBriskMinutesGoal])
  {
    [coderCopy encodeObject:self->_briskMinutesGoal forKey:@"briskMinutesGoalQuantity"];
  }

  if ([(HKActivityCache *)self _lock_hasBriskMinutesGoalDate])
  {
    [coderCopy encodeObject:self->_briskMinutesGoalDate forKey:@"briskMinutesGoalDate"];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHours])
  {
    [coderCopy encodeDouble:@"activeHours" forKey:self->_activeHours];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHoursGoal])
  {
    [coderCopy encodeObject:self->_activeHoursGoal forKey:@"activeHoursGoalQuantity"];
  }

  if ([(HKActivityCache *)self _lock_hasActiveHoursGoalDate])
  {
    [coderCopy encodeObject:self->_activeHoursGoalDate forKey:@"activeHoursGoalDate"];
  }

  if ([(HKActivityCache *)self _lock_hasStepCount])
  {
    [coderCopy encodeInteger:self->_stepCount forKey:@"stepCount"];
  }

  if ([(HKActivityCache *)self _lock_hasPushCount])
  {
    [coderCopy encodeInteger:self->_pushCount forKey:@"pushCount"];
  }

  if ([(HKActivityCache *)self _lock_hasWheelchairUse])
  {
    [coderCopy encodeInteger:self->_wheelchairUse forKey:@"wheelchairUse"];
  }

  if ([(HKActivityCache *)self _lock_hasDeepBreathingDuration])
  {
    [coderCopy encodeDouble:@"deepBreathingDuration" forKey:self->_deepBreathingDuration];
  }

  if ([(HKActivityCache *)self _lock_hasFlightsClimbed])
  {
    [coderCopy encodeInteger:self->_flightsClimbed forKey:@"flightsClimbed"];
  }

  [coderCopy encodeObject:self->_walkingAndRunningDistance forKey:@"walkRunDistance"];
  [coderCopy encodeObject:self->_dailyEnergyBurnedStatistics forKey:@"dailyEnergyBurnedStatistics"];
  [coderCopy encodeObject:self->_dailyBriskMinutesStatistics forKey:@"dailyBriskMinutesStatistics"];
  [coderCopy encodeInteger:self->_activityMoveMode forKey:@"activityMoveMode"];
  [coderCopy encodeBool:self->_paused forKey:@"paused"];
  [coderCopy encodeInteger:self->_version forKey:@"version"];
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