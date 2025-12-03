@interface HKActivitySummary
+ (BOOL)_validateActivitySummaryDateComponents:(id)components errorMessage:(id *)message;
+ (BOOL)_validateActivitySummaryDateComponentsRange:(id)range endDateComponents:(id)components errorMessage:(id *)message;
+ (id)_mostRecentlyCreatedCacheAmongCaches:(id)caches;
+ (id)_mostSignificantCacheAmongCaches:(id)caches;
- (BOOL)_allFieldsAreEqual:(id)equal;
- (BOOL)_hasAppleMoveTimeGoal;
- (BOOL)_hasEnergyBurnedGoal;
- (BOOL)_hasExerciseGoal;
- (BOOL)_hasMoveGoal;
- (BOOL)_hasStandHoursGoal;
- (BOOL)_isStandalonePhoneSummary;
- (BOOL)_lock_isEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPaused;
- (BOOL)paused;
- (HKActivitySummary)init;
- (HKActivitySummary)initWithCoder:(id)coder;
- (HKQuantity)_deepBreathingDuration;
- (HKQuantity)_flightsClimbed;
- (HKQuantity)_pushCount;
- (HKQuantity)activeEnergyBurned;
- (HKQuantity)activeEnergyBurnedGoal;
- (HKQuantity)appleExerciseTime;
- (HKQuantity)appleExerciseTimeGoal;
- (HKQuantity)appleMoveTime;
- (HKQuantity)appleMoveTimeGoal;
- (HKQuantity)appleStandHours;
- (HKQuantity)appleStandHoursGoal;
- (HKQuantity)distanceWalkingRunning;
- (HKQuantity)exerciseTimeGoal;
- (HKQuantity)standHoursGoal;
- (HKQuantity)stepCount;
- (NSArray)_dailyBriskMinutesStatistics;
- (NSArray)_dailyEnergyBurnedStatistics;
- (NSArray)_dailyMoveTimeStatistics;
- (NSDateComponents)_gregorianDateComponents;
- (NSDateComponents)dateComponentsForCalendar:(NSCalendar *)calendar;
- (double)_activeEnergyCompletionPercentage;
- (double)_exerciseTimeCompletionPercentage;
- (double)_lock_percentageCompleteWithQuantity:(id)quantity goalQuantity:(id)goalQuantity unit:(id)unit;
- (double)_moveMinutesCompletionPercentage;
- (double)_standHoursCompletionPercentage;
- (id)_decodeQuantityFromCoder:(id)coder forKey:(id)key unit:(id)unit;
- (id)_initWithActivityCache:(id)cache shouldIncludePrivateProperties:(BOOL)properties;
- (id)_lock_activeEnergyBurned;
- (id)_lock_activeEnergyBurnedGoal;
- (id)_lock_appleExerciseTime;
- (id)_lock_appleExerciseTimeGoal;
- (id)_lock_appleMoveTime;
- (id)_lock_appleMoveTimeGoal;
- (id)_lock_appleStandHours;
- (id)_lock_appleStandHoursGoal;
- (id)_lock_deepBreathingDuration;
- (id)_lock_distanceWalkingRunning;
- (id)_lock_flightsClimbed;
- (id)_lock_pushCount;
- (id)_lock_stepCount;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)_wheelchairUse;
- (unint64_t)hash;
- (void)_lock_encodeQuantity:(id)quantity withCoder:(id)coder key:(id)key unit:(id)unit;
- (void)_setActivitySummaryIndex:(int64_t)index;
- (void)_setDeepBreathingDuration:(id)duration;
- (void)_setFlightsClimbed:(id)climbed;
- (void)_setGregorianDateComponents:(id)components;
- (void)_setPushCount:(id)count;
- (void)_setWheelchairUse:(int64_t)use;
- (void)_validateQuantityAssignment:(id)assignment expectedUnit:(id)unit propertyName:(id)name;
- (void)encodeWithCoder:(id)coder;
- (void)setActiveEnergyBurned:(HKQuantity *)activeEnergyBurned;
- (void)setActiveEnergyBurnedGoal:(HKQuantity *)activeEnergyBurnedGoal;
- (void)setActivityMoveMode:(HKActivityMoveMode)activityMoveMode;
- (void)setAppleExerciseTime:(HKQuantity *)appleExerciseTime;
- (void)setAppleExerciseTimeGoal:(HKQuantity *)appleExerciseTimeGoal;
- (void)setAppleMoveTime:(HKQuantity *)appleMoveTime;
- (void)setAppleMoveTimeGoal:(HKQuantity *)appleMoveTimeGoal;
- (void)setAppleStandHours:(HKQuantity *)appleStandHours;
- (void)setAppleStandHoursGoal:(HKQuantity *)appleStandHoursGoal;
- (void)setDeprecatedPauseForInternalSwiftClient:(BOOL)client;
- (void)setDistanceWalkingRunning:(id)running;
- (void)setExerciseTimeGoal:(HKQuantity *)exerciseTimeGoal;
- (void)setPaused:(BOOL)paused;
- (void)setStandHoursGoal:(HKQuantity *)standHoursGoal;
- (void)setStepCount:(id)count;
@end

@implementation HKActivitySummary

- (HKQuantity)activeEnergyBurned
{
  os_unfair_lock_lock(&self->_lock);
  _lock_activeEnergyBurned = [(HKActivitySummary *)self _lock_activeEnergyBurned];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_activeEnergyBurned;
}

- (HKQuantity)appleExerciseTime
{
  os_unfair_lock_lock(&self->_lock);
  _lock_appleExerciseTime = [(HKActivitySummary *)self _lock_appleExerciseTime];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_appleExerciseTime;
}

- (HKQuantity)appleStandHours
{
  os_unfair_lock_lock(&self->_lock);
  _lock_appleStandHours = [(HKActivitySummary *)self _lock_appleStandHours];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_appleStandHours;
}

- (HKQuantity)activeEnergyBurnedGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_activeEnergyBurnedGoal = [(HKActivitySummary *)self _lock_activeEnergyBurnedGoal];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_activeEnergyBurnedGoal;
}

- (HKQuantity)appleExerciseTimeGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_appleExerciseTimeGoal = [(HKActivitySummary *)self _lock_appleExerciseTimeGoal];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_appleExerciseTimeGoal;
}

- (HKQuantity)appleStandHoursGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_appleStandHoursGoal = [(HKActivitySummary *)self _lock_appleStandHoursGoal];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_appleStandHoursGoal;
}

- (HKQuantity)distanceWalkingRunning
{
  os_unfair_lock_lock(&self->_lock);
  _lock_distanceWalkingRunning = [(HKActivitySummary *)self _lock_distanceWalkingRunning];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_distanceWalkingRunning;
}

- (HKQuantity)stepCount
{
  os_unfair_lock_lock(&self->_lock);
  _lock_stepCount = [(HKActivitySummary *)self _lock_stepCount];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_stepCount;
}

- (HKQuantity)_deepBreathingDuration
{
  os_unfair_lock_lock(&self->_lock);
  _lock_deepBreathingDuration = [(HKActivitySummary *)self _lock_deepBreathingDuration];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_deepBreathingDuration;
}

- (HKQuantity)_pushCount
{
  os_unfair_lock_lock(&self->_lock);
  _lock_pushCount = [(HKActivitySummary *)self _lock_pushCount];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_pushCount;
}

- (HKQuantity)_flightsClimbed
{
  os_unfair_lock_lock(&self->_lock);
  _lock_flightsClimbed = [(HKActivitySummary *)self _lock_flightsClimbed];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_flightsClimbed;
}

- (int64_t)_wheelchairUse
{
  os_unfair_lock_lock(&self->_lock);
  wheelchairUse = self->_wheelchairUse;
  os_unfair_lock_unlock(&self->_lock);
  return wheelchairUse;
}

- (id)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = 0x1E696A000uLL;
  v4 = 0x1E696A000uLL;
  v5 = off_1E7375000;
  if (+[_HKBehavior isAppleInternalInstall])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" Summary Index=(%lli)", -[HKActivitySummary _activitySummaryIndex](self, "_activitySummaryIndex")];
    v70 = MEMORY[0x1E696AEC0];
    v72 = v6;
    v7 = MEMORY[0x1E696AD98];
    _lock_stepCount = [(HKActivitySummary *)self _lock_stepCount];
    v66 = +[HKUnit countUnit];
    [_lock_stepCount doubleValueForUnit:v66];
    v58 = [v7 numberWithDouble:?];
    v8 = MEMORY[0x1E696AD98];
    _lock_distanceWalkingRunning = [(HKActivitySummary *)self _lock_distanceWalkingRunning];
    v62 = +[HKUnit meterUnit];
    [_lock_distanceWalkingRunning doubleValueForUnit:v62];
    v9 = [v8 numberWithDouble:?];
    v10 = MEMORY[0x1E696AD98];
    _lock_pushCount = [(HKActivitySummary *)self _lock_pushCount];
    v56 = +[HKUnit countUnit];
    [_lock_pushCount doubleValueForUnit:v56];
    v11 = [v10 numberWithDouble:?];
    v12 = MEMORY[0x1E696AD98];
    _lock_flightsClimbed = [(HKActivitySummary *)self _lock_flightsClimbed];
    v14 = +[HKUnit countUnit];
    [_lock_flightsClimbed doubleValueForUnit:v14];
    v15 = [v12 numberWithDouble:?];
    v16 = MEMORY[0x1E696AD98];
    _lock_deepBreathingDuration = [(HKActivitySummary *)self _lock_deepBreathingDuration];
    v18 = +[HKUnit secondUnit];
    [_lock_deepBreathingDuration doubleValueForUnit:v18];
    v19 = [v16 numberWithDouble:?];
    v71 = [v70 stringWithFormat:@" Step Count=(%@) Meters=(%@) Pushes=(%@) Flights=(%@) Breathe=(%@)", v58, v9, v11, v15, v19, 0];

    v5 = off_1E7375000;
    v3 = 0x1E696A000;

    v4 = 0x1E696A000;
  }

  else
  {
    v71 = &stru_1F05FF230;
    v72 = &stru_1F05FF230;
  }

  v73.receiver = self;
  v73.super_class = HKActivitySummary;
  v69 = [(HKActivitySummary *)&v73 description];
  v52 = *(v3 + 3776);
  year = [(NSDateComponents *)self->_dateComponents year];
  month = [(NSDateComponents *)self->_dateComponents month];
  v47 = [(NSDateComponents *)self->_dateComponents day];
  v67 = [*(v4 + 3480) numberWithInteger:self->_activityMoveMode];
  v20 = @"NO";
  if (self->_paused)
  {
    v20 = @"YES";
  }

  v46 = v20;
  v21 = *(v4 + 3480);
  _lock_activeEnergyBurned = [(HKActivitySummary *)self _lock_activeEnergyBurned];
  kilocalorieUnit = [(__objc2_class *)v5[198] kilocalorieUnit];
  [_lock_activeEnergyBurned doubleValueForUnit:kilocalorieUnit];
  v65 = [v21 numberWithDouble:?];
  v22 = *(v4 + 3480);
  _lock_activeEnergyBurnedGoal = [(HKActivitySummary *)self _lock_activeEnergyBurnedGoal];
  kilocalorieUnit2 = [(__objc2_class *)v5[198] kilocalorieUnit];
  [_lock_activeEnergyBurnedGoal doubleValueForUnit:kilocalorieUnit2];
  v63 = [v22 numberWithDouble:?];
  v23 = *(v4 + 3480);
  _lock_appleMoveTime = [(HKActivitySummary *)self _lock_appleMoveTime];
  minuteUnit = [(__objc2_class *)v5[198] minuteUnit];
  [_lock_appleMoveTime doubleValueForUnit:minuteUnit];
  v61 = [v23 numberWithDouble:?];
  v24 = *(v4 + 3480);
  _lock_appleMoveTimeGoal = [(HKActivitySummary *)self _lock_appleMoveTimeGoal];
  minuteUnit2 = [(__objc2_class *)v5[198] minuteUnit];
  [_lock_appleMoveTimeGoal doubleValueForUnit:minuteUnit2];
  v39 = [v24 numberWithDouble:?];
  v25 = *(v4 + 3480);
  _lock_appleExerciseTime = [(HKActivitySummary *)self _lock_appleExerciseTime];
  minuteUnit3 = [(__objc2_class *)v5[198] minuteUnit];
  [_lock_appleExerciseTime doubleValueForUnit:minuteUnit3];
  v26 = [v25 numberWithDouble:?];
  v27 = *(v4 + 3480);
  _lock_appleExerciseTimeGoal = [(HKActivitySummary *)self _lock_appleExerciseTimeGoal];
  minuteUnit4 = [(__objc2_class *)v5[198] minuteUnit];
  [_lock_appleExerciseTimeGoal doubleValueForUnit:minuteUnit4];
  v28 = [v27 numberWithDouble:?];
  v29 = v5;
  v30 = *(v4 + 3480);
  _lock_appleStandHours = [(HKActivitySummary *)self _lock_appleStandHours];
  countUnit = [(__objc2_class *)v29[198] countUnit];
  [_lock_appleStandHours doubleValueForUnit:countUnit];
  v33 = [v30 numberWithDouble:?];
  v34 = *(v4 + 3480);
  _lock_appleStandHoursGoal = [(HKActivitySummary *)self _lock_appleStandHoursGoal];
  countUnit2 = [(__objc2_class *)v29[198] countUnit];
  [_lock_appleStandHoursGoal doubleValueForUnit:countUnit2];
  v37 = [v34 numberWithDouble:?];
  v53 = [v52 stringWithFormat:@"<%@: Date=(Year: %zd, Month: %zd, Day: %zd)%@ Move Mode=(%@) Paused=(%@) Active Energy Burned=(%@/%@) Apple Move Minutes=(%@/%@) Apple Exercise Minutes=(%@/%@) Apple Stand Hours=(%@/%@)%@>", v69, year, month, v47, v72, v67, v46, v65, v63, v61, v39, v26, v28, v33, v37, v71];

  os_unfair_lock_unlock(&self->_lock);

  return v53;
}

- (BOOL)_hasMoveGoal
{
  os_unfair_lock_lock(&self->_lock);
  _hasEnergyBurnedGoal = [(HKActivitySummary *)self _hasEnergyBurnedGoal];
  os_unfair_lock_unlock(&self->_lock);
  return _hasEnergyBurnedGoal;
}

- (NSDateComponents)_gregorianDateComponents
{
  v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
  v4 = [(HKActivitySummary *)self dateComponentsForCalendar:v3];

  return v4;
}

- (double)_activeEnergyCompletionPercentage
{
  os_unfair_lock_lock(&self->_lock);
  activeEnergyBurned = self->_activeEnergyBurned;
  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  v5 = +[HKUnit kilocalorieUnit];
  [(HKActivitySummary *)self _lock_percentageCompleteWithQuantity:activeEnergyBurned goalQuantity:activeEnergyBurnedGoal unit:v5];
  v7 = v6;

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (double)_exerciseTimeCompletionPercentage
{
  os_unfair_lock_lock(&self->_lock);
  appleExerciseTime = self->_appleExerciseTime;
  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  v5 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_percentageCompleteWithQuantity:appleExerciseTime goalQuantity:appleExerciseTimeGoal unit:v5];
  v7 = v6;

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (double)_standHoursCompletionPercentage
{
  os_unfair_lock_lock(&self->_lock);
  appleStandHours = self->_appleStandHours;
  appleStandHoursGoal = self->_appleStandHoursGoal;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_percentageCompleteWithQuantity:appleStandHours goalQuantity:appleStandHoursGoal unit:v5];
  v7 = v6;

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (NSArray)_dailyEnergyBurnedStatistics
{
  os_unfair_lock_lock(&self->_lock);
  dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;
  if (!dailyEnergyBurnedStatistics)
  {
    dailyEnergyBurnedStatistics = MEMORY[0x1E695E0F0];
  }

  v4 = dailyEnergyBurnedStatistics;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (NSArray)_dailyBriskMinutesStatistics
{
  os_unfair_lock_lock(&self->_lock);
  dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;
  if (!dailyBriskMinutesStatistics)
  {
    dailyBriskMinutesStatistics = MEMORY[0x1E695E0F0];
  }

  v4 = dailyBriskMinutesStatistics;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (HKActivitySummary)init
{
  v3.receiver = self;
  v3.super_class = HKActivitySummary;
  result = [(HKActivitySummary *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_activityMoveMode = 1;
    result->_paused = 0;
  }

  return result;
}

- (BOOL)_lock_isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && self->_activitySummaryIndex == v6->_activitySummaryIndex)
      {
        _lock_activeEnergyBurned = [(HKActivitySummary *)self _lock_activeEnergyBurned];
        _lock_activeEnergyBurned2 = [(HKActivitySummary *)v6 _lock_activeEnergyBurned];
        v84 = _lock_activeEnergyBurned != _lock_activeEnergyBurned2;
        if (_lock_activeEnergyBurned != _lock_activeEnergyBurned2)
        {
          _lock_activeEnergyBurned3 = [(HKActivitySummary *)v6 _lock_activeEnergyBurned];
          if (!_lock_activeEnergyBurned3)
          {
            v11 = 0;

            goto LABEL_106;
          }

          _lock_activeEnergyBurned4 = [(HKActivitySummary *)self _lock_activeEnergyBurned];
          _lock_activeEnergyBurned5 = [(HKActivitySummary *)v6 _lock_activeEnergyBurned];
          if (![_lock_activeEnergyBurned4 isEqual:_lock_activeEnergyBurned5])
          {
            v11 = 0;
LABEL_56:

LABEL_105:
            goto LABEL_106;
          }

          v80 = _lock_activeEnergyBurned5;
          v81 = _lock_activeEnergyBurned4;
        }

        _lock_appleMoveTime = [(HKActivitySummary *)self _lock_appleMoveTime];
        _lock_appleMoveTime2 = [(HKActivitySummary *)v6 _lock_appleMoveTime];
        if (_lock_appleMoveTime != _lock_appleMoveTime2)
        {
          _lock_appleMoveTime3 = [(HKActivitySummary *)v6 _lock_appleMoveTime];
          if (!_lock_appleMoveTime3)
          {

            v11 = 0;
            if (_lock_activeEnergyBurned == _lock_activeEnergyBurned2)
            {
              v84 = 0;
              goto LABEL_104;
            }

            v84 = 1;
LABEL_103:

LABEL_104:
            if (v84)
            {
              goto LABEL_105;
            }

            goto LABEL_106;
          }

          v3 = _lock_appleMoveTime3;
          _lock_appleMoveTime4 = [(HKActivitySummary *)self _lock_appleMoveTime];
          _lock_appleMoveTime5 = [(HKActivitySummary *)v6 _lock_appleMoveTime];
          v79 = _lock_appleMoveTime4;
          if (![_lock_appleMoveTime4 isEqual:?])
          {
            v11 = 0;
LABEL_54:

            goto LABEL_55;
          }
        }

        _lock_appleExerciseTime = [(HKActivitySummary *)self _lock_appleExerciseTime];
        [(HKActivitySummary *)v6 _lock_appleExerciseTime];
        v83 = v82 = _lock_appleExerciseTime;
        v17 = _lock_appleExerciseTime != v83;
        if (_lock_appleExerciseTime != v83)
        {
          _lock_appleExerciseTime2 = [(HKActivitySummary *)v6 _lock_appleExerciseTime];
          if (!_lock_appleExerciseTime2)
          {

            v11 = 0;
            if (_lock_appleMoveTime != _lock_appleMoveTime2)
            {
              LOBYTE(v24) = 1;
              goto LABEL_100;
            }

            v24 = 0;
LABEL_108:
            if (!v24)
            {
              goto LABEL_102;
            }

LABEL_101:

            goto LABEL_102;
          }

          v73 = _lock_appleExerciseTime2;
          _lock_appleExerciseTime3 = [(HKActivitySummary *)self _lock_appleExerciseTime];
          _lock_appleExerciseTime4 = [(HKActivitySummary *)v6 _lock_appleExerciseTime];
          v75 = _lock_appleExerciseTime3;
          if (![_lock_appleExerciseTime3 isEqual:?])
          {
            v11 = 0;
            v20 = v82;
            goto LABEL_53;
          }
        }

        _lock_appleStandHours = [(HKActivitySummary *)self _lock_appleStandHours];
        _lock_appleStandHours2 = [(HKActivitySummary *)v6 _lock_appleStandHours];
        v69 = _lock_appleStandHours != _lock_appleStandHours2;
        if (_lock_appleStandHours == _lock_appleStandHours2)
        {
          v70 = v17;
          v68 = v3;
        }

        else
        {
          _lock_appleStandHours3 = [(HKActivitySummary *)v6 _lock_appleStandHours];
          if (!_lock_appleStandHours3)
          {

            v11 = 0;
            v20 = v82;
            if (v82 != v83)
            {
              LOBYTE(v30) = 1;
              goto LABEL_97;
            }

            v30 = 0;
            goto LABEL_110;
          }

          v70 = v17;
          v65 = _lock_appleStandHours3;
          _lock_appleStandHours4 = [(HKActivitySummary *)self _lock_appleStandHours];
          _lock_appleStandHours5 = [(HKActivitySummary *)v6 _lock_appleStandHours];
          v67 = _lock_appleStandHours4;
          if (![_lock_appleStandHours4 isEqual:?])
          {
            v76 = _lock_appleStandHours;
            v11 = 0;
            v20 = v82;
            goto LABEL_52;
          }

          v68 = v3;
        }

        _lock_activeEnergyBurnedGoal = [(HKActivitySummary *)self _lock_activeEnergyBurnedGoal];
        [(HKActivitySummary *)v6 _lock_activeEnergyBurnedGoal];
        v72 = v71 = _lock_activeEnergyBurnedGoal;
        v26 = _lock_activeEnergyBurnedGoal != v72;
        v76 = _lock_appleStandHours;
        if (_lock_activeEnergyBurnedGoal != v72)
        {
          _lock_activeEnergyBurnedGoal2 = [(HKActivitySummary *)v6 _lock_activeEnergyBurnedGoal];
          if (!_lock_activeEnergyBurnedGoal2)
          {

            v37 = _lock_appleStandHours;
            v11 = 0;
            v3 = v68;
            v20 = v82;
            v30 = v70;
            if (v37 != _lock_appleStandHours2)
            {
              LOBYTE(v38) = 1;
              goto LABEL_94;
            }

            v38 = 0;
LABEL_112:
            if (!v38)
            {
LABEL_96:

              if (v20 != v83)
              {
LABEL_97:

                if (!v30)
                {
                  goto LABEL_99;
                }

                goto LABEL_98;
              }

LABEL_110:
              if (v30)
              {
LABEL_98:
              }

LABEL_99:

              v24 = _lock_appleMoveTime != _lock_appleMoveTime2;
              if (_lock_appleMoveTime != _lock_appleMoveTime2)
              {
LABEL_100:

                if (!v24)
                {
                  goto LABEL_102;
                }

                goto LABEL_101;
              }

              goto LABEL_108;
            }

LABEL_95:

            goto LABEL_96;
          }

          v63 = _lock_activeEnergyBurnedGoal2;
          _lock_activeEnergyBurnedGoal3 = [(HKActivitySummary *)self _lock_activeEnergyBurnedGoal];
          _lock_activeEnergyBurnedGoal4 = [(HKActivitySummary *)v6 _lock_activeEnergyBurnedGoal];
          v64 = _lock_activeEnergyBurnedGoal3;
          if (![_lock_activeEnergyBurnedGoal3 isEqual:_lock_activeEnergyBurnedGoal4])
          {
            v11 = 0;
            v20 = v82;
LABEL_51:

            v3 = v68;
            v30 = v70;
            if (v76 == _lock_appleStandHours2)
            {
              goto LABEL_96;
            }

LABEL_52:

            if (v20 != v83)
            {
LABEL_53:

              if (_lock_appleMoveTime != _lock_appleMoveTime2)
              {
                goto LABEL_54;
              }

LABEL_102:

              if (_lock_activeEnergyBurned == _lock_activeEnergyBurned2)
              {
                goto LABEL_104;
              }

              goto LABEL_103;
            }

            goto LABEL_99;
          }

          v60 = _lock_activeEnergyBurnedGoal4;
        }

        _lock_appleMoveTimeGoal = [(HKActivitySummary *)self _lock_appleMoveTimeGoal];
        _lock_appleMoveTimeGoal2 = [(HKActivitySummary *)v6 _lock_appleMoveTimeGoal];
        v33 = _lock_appleMoveTimeGoal2;
        if (_lock_appleMoveTimeGoal == _lock_appleMoveTimeGoal2)
        {
          v62 = _lock_appleMoveTimeGoal2;
        }

        else
        {
          _lock_appleMoveTimeGoal3 = [(HKActivitySummary *)v6 _lock_appleMoveTimeGoal];
          if (!_lock_appleMoveTimeGoal3)
          {

            v11 = 0;
            v20 = v82;
            if (v71 != v72)
            {
              goto LABEL_88;
            }

            goto LABEL_91;
          }

          v59 = _lock_appleMoveTimeGoal3;
          v62 = v33;
          _lock_appleMoveTimeGoal4 = [(HKActivitySummary *)self _lock_appleMoveTimeGoal];
          _lock_appleMoveTimeGoal5 = [(HKActivitySummary *)v6 _lock_appleMoveTimeGoal];
          v58 = _lock_appleMoveTimeGoal4;
          if (![_lock_appleMoveTimeGoal4 isEqual:?])
          {
            v11 = 0;
            v20 = v82;
            v36 = v72;
LABEL_86:

            if (v71 != v36)
            {
              LOBYTE(v26) = 1;
LABEL_88:

              if (!v26)
              {
                goto LABEL_93;
              }

LABEL_92:

              goto LABEL_93;
            }

            v26 = 0;
LABEL_91:
            if (!v26)
            {
              goto LABEL_93;
            }

            goto LABEL_92;
          }
        }

        _lock_appleExerciseTimeGoal = [(HKActivitySummary *)self _lock_appleExerciseTimeGoal];
        _lock_appleExerciseTimeGoal2 = [(HKActivitySummary *)v6 _lock_appleExerciseTimeGoal];
        if (_lock_appleExerciseTimeGoal == _lock_appleExerciseTimeGoal2)
        {
          v56 = _lock_appleMoveTimeGoal;
        }

        else
        {
          _lock_appleExerciseTimeGoal3 = [(HKActivitySummary *)v6 _lock_appleExerciseTimeGoal];
          if (!_lock_appleExerciseTimeGoal3)
          {
            v11 = 0;
            v20 = v82;
            goto LABEL_83;
          }

          v53 = _lock_appleExerciseTimeGoal;
          v55 = _lock_appleExerciseTimeGoal3;
          _lock_appleExerciseTimeGoal4 = [(HKActivitySummary *)self _lock_appleExerciseTimeGoal];
          _lock_appleExerciseTimeGoal5 = [(HKActivitySummary *)v6 _lock_appleExerciseTimeGoal];
          if (([_lock_appleExerciseTimeGoal4 isEqual:_lock_appleExerciseTimeGoal5] & 1) == 0)
          {

            v11 = 0;
            v48 = v62;
LABEL_70:
            if (_lock_appleMoveTimeGoal != v48)
            {
            }

            if (v71 != v72)
            {
            }

            if (v76 != _lock_appleStandHours2)
            {
            }

            if (v82 != v83)
            {
            }

            if (_lock_appleMoveTime != _lock_appleMoveTime2)
            {
            }

LABEL_55:

            _lock_activeEnergyBurned5 = v80;
            _lock_activeEnergyBurned4 = v81;
            if (_lock_activeEnergyBurned != _lock_activeEnergyBurned2)
            {
              goto LABEL_56;
            }

LABEL_106:

            goto LABEL_107;
          }

          v56 = _lock_appleMoveTimeGoal;
          v51 = _lock_appleExerciseTimeGoal5;
          v52 = _lock_appleExerciseTimeGoal4;
          _lock_appleExerciseTimeGoal = v53;
        }

        _lock_appleStandHoursGoal = [(HKActivitySummary *)self _lock_appleStandHoursGoal];
        _lock_appleStandHoursGoal2 = [(HKActivitySummary *)v6 _lock_appleStandHoursGoal];
        v11 = _lock_appleStandHoursGoal == _lock_appleStandHoursGoal2;
        if (_lock_appleStandHoursGoal == _lock_appleStandHoursGoal2)
        {
        }

        else
        {
          v54 = _lock_appleStandHoursGoal2;
          _lock_appleStandHoursGoal3 = [(HKActivitySummary *)v6 _lock_appleStandHoursGoal];
          if (_lock_appleStandHoursGoal3)
          {
            v85 = _lock_appleStandHoursGoal3;
            _lock_appleStandHoursGoal4 = [(HKActivitySummary *)self _lock_appleStandHoursGoal];
            _lock_appleStandHoursGoal5 = [(HKActivitySummary *)v6 _lock_appleStandHoursGoal];
            v11 = [_lock_appleStandHoursGoal4 isEqual:_lock_appleStandHoursGoal5];

            if (_lock_appleExerciseTimeGoal != _lock_appleExerciseTimeGoal2)
            {
            }

            v48 = v62;
            _lock_appleMoveTimeGoal = v56;
            goto LABEL_70;
          }
        }

        if (_lock_appleExerciseTimeGoal == _lock_appleExerciseTimeGoal2)
        {

          v33 = v62;
          _lock_appleMoveTimeGoal = v56;
          v49 = v56 == v62;
          v20 = v82;
          goto LABEL_85;
        }

        v20 = v82;
        _lock_appleMoveTimeGoal = v56;
LABEL_83:

        v33 = v62;
        v49 = _lock_appleMoveTimeGoal == v62;
LABEL_85:
        v36 = v72;
        if (!v49)
        {
          goto LABEL_86;
        }

        _lock_activeEnergyBurnedGoal4 = v60;
        if (v71 == v72)
        {
LABEL_93:

          v3 = v68;
          v38 = v69;
          v30 = v70;
          if (v76 != _lock_appleStandHours2)
          {
LABEL_94:

            if (!v38)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          goto LABEL_112;
        }

        goto LABEL_51;
      }
    }

    v11 = 0;
  }

LABEL_107:

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  v4 = [equal copy];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKActivitySummary *)self _lock_isEqual:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_allFieldsAreEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v20 = 1;
    goto LABEL_82;
  }

  if (!equalCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v20 = 0;
    goto LABEL_82;
  }

  v6 = [(HKActivitySummary *)v5 copy];
  os_unfair_lock_lock(&self->_lock);
  v144 = [(HKActivitySummary *)self _lock_isEqual:v6];
  if (!v144)
  {
    v12 = 0;
    memset(v145, 0, 44);
    v142 = 0;
    memset(v143, 0, sizeof(v143));
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_12;
  }

  _lock_distanceWalkingRunning = [(HKActivitySummary *)self _lock_distanceWalkingRunning];
  _lock_distanceWalkingRunning2 = [v6 _lock_distanceWalkingRunning];
  LODWORD(v145[5]) = _lock_distanceWalkingRunning != _lock_distanceWalkingRunning2;
  v139 = _lock_distanceWalkingRunning2;
  v140 = _lock_distanceWalkingRunning;
  if (_lock_distanceWalkingRunning != _lock_distanceWalkingRunning2)
  {
    _lock_distanceWalkingRunning3 = [v6 _lock_distanceWalkingRunning];
    if (!_lock_distanceWalkingRunning3)
    {
      v136 = 0;
      v12 = 0;
      memset(v145, 0, 40);
      v142 = 0;
      memset(v143, 0, sizeof(v143));
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      LODWORD(v145[5]) = 1;
      goto LABEL_12;
    }

    v136 = _lock_distanceWalkingRunning3;
    _lock_distanceWalkingRunning4 = [(HKActivitySummary *)self _lock_distanceWalkingRunning];
    _lock_distanceWalkingRunning5 = [v6 _lock_distanceWalkingRunning];
    v133 = _lock_distanceWalkingRunning4;
    if (![_lock_distanceWalkingRunning4 isEqual:?])
    {
      v12 = 0;
      memset(v145, 0, 40);
      memset(v143, 0, 48);
      v13 = 0;
      v142 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      LODWORD(v145[5]) = 1;
      v143[6] = 1;
      goto LABEL_12;
    }
  }

  _lock_stepCount = [(HKActivitySummary *)self _lock_stepCount];
  _lock_stepCount2 = [v6 _lock_stepCount];
  HIDWORD(v145[4]) = _lock_stepCount != _lock_stepCount2;
  v134 = _lock_stepCount2;
  v135 = _lock_stepCount;
  if (_lock_stepCount != _lock_stepCount2)
  {
    _lock_stepCount3 = [v6 _lock_stepCount];
    if (!_lock_stepCount3)
    {
      v131 = 0;
      v12 = 0;
      memset(v145, 0, 36);
      memset(v143, 0, 48);
      v13 = 0;
      v142 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v7 = 1;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v145[4]) = 1;
      goto LABEL_12;
    }

    v131 = _lock_stepCount3;
    _lock_stepCount4 = [(HKActivitySummary *)self _lock_stepCount];
    _lock_stepCount5 = [v6 _lock_stepCount];
    v128 = _lock_stepCount4;
    if (![_lock_stepCount4 isEqual:?])
    {
      v12 = 0;
      memset(v145, 0, 36);
      v13 = 0;
      v142 = 0;
      v14 = 0;
      memset(v143, 0, 44);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v7 = 1;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v145[4]) = 1;
      HIDWORD(v143[5]) = 1;
      goto LABEL_12;
    }
  }

  _lock_deepBreathingDuration = [(HKActivitySummary *)self _lock_deepBreathingDuration];
  _lock_deepBreathingDuration2 = [v6 _lock_deepBreathingDuration];
  LODWORD(v145[4]) = _lock_deepBreathingDuration != _lock_deepBreathingDuration2;
  v129 = _lock_deepBreathingDuration2;
  v130 = _lock_deepBreathingDuration;
  if (_lock_deepBreathingDuration != _lock_deepBreathingDuration2)
  {
    _lock_deepBreathingDuration3 = [v6 _lock_deepBreathingDuration];
    if (!_lock_deepBreathingDuration3)
    {
      v141 = 0;
      v142 = 0;
      memset(v145, 0, 32);
      v13 = 0;
      v14 = 0;
      memset(v143, 0, 44);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v7 = 1;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      LODWORD(v145[4]) = 1;
      goto LABEL_12;
    }

    v141 = _lock_deepBreathingDuration3;
    _lock_deepBreathingDuration4 = [(HKActivitySummary *)self _lock_deepBreathingDuration];
    _lock_deepBreathingDuration5 = [v6 _lock_deepBreathingDuration];
    v124 = _lock_deepBreathingDuration4;
    if (![_lock_deepBreathingDuration4 isEqual:?])
    {
      LODWORD(v143[5]) = 0;
      memset(v145, 0, 32);
      v13 = 0;
      v142 = 0;
      v14 = 0;
      memset(v143, 0, 36);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v7 = 1;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      LODWORD(v145[4]) = 1;
      HIDWORD(v143[4]) = 1;
      goto LABEL_12;
    }
  }

  _startDate = [(HKActivitySummary *)self _startDate];
  _startDate2 = [v6 _startDate];
  v126 = _startDate;
  v42 = _startDate != _startDate2;
  if (_startDate != _startDate2)
  {
    _startDate3 = [v6 _startDate];
    if (!_startDate3)
    {
      v122 = 0;
      v13 = 0;
      v142 = 0;
      v14 = 0;
      memset(&v145[1], 0, 24);
      memset(v143, 0, 36);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      HIDWORD(v143[6]) = 1;
      v7 = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      *(&v143[5] + 4) = *(&v145[4] + 4);
      v145[0] = 1;
      goto LABEL_12;
    }

    v122 = _startDate3;
    _startDate4 = [(HKActivitySummary *)self _startDate];
    _startDate5 = [v6 _startDate];
    v119 = _startDate4;
    if (![_startDate4 isEqual:?])
    {
      LODWORD(v143[4]) = 0;
      v13 = 0;
      v142 = 0;
      v14 = 0;
      memset(v143, 0, 28);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      HIDWORD(v143[6]) = 1;
      v7 = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      *(&v143[5] + 4) = *(&v145[4] + 4);
      LODWORD(v145[0]) = 1;
      memset(v145 + 4, 0, 28);
      HIDWORD(v143[3]) = 1;
      goto LABEL_12;
    }
  }

  _endDate = [(HKActivitySummary *)self _endDate];
  _endDate2 = [v6 _endDate];
  HIDWORD(v145[3]) = _endDate != _endDate2;
  LODWORD(v145[0]) = v42;
  v121 = _endDate;
  if (_endDate != _endDate2)
  {
    _endDate3 = [v6 _endDate];
    if (!_endDate3)
    {
      v117 = 0;
      v13 = 0;
      v53 = v42;
      v142 = 0;
      v14 = 0;
      memset(v145 + 4, 0, 24);
      memset(v143, 0, 28);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      v7 = 1;
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[3]) = v53;
      LODWORD(v143[4]) = 1;
      HIDWORD(v145[3]) = 1;
      goto LABEL_12;
    }

    v117 = _endDate3;
    _endDate4 = [(HKActivitySummary *)self _endDate];
    _endDate5 = [v6 _endDate];
    v114 = _endDate4;
    if (![_endDate4 isEqual:?])
    {
      LODWORD(v143[3]) = 0;
      v13 = 0;
      v48 = v42;
      v142 = 0;
      v14 = 0;
      memset(v145 + 4, 0, 24);
      memset(v143, 0, 20);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      v7 = 1;
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[3]) = v48;
      LODWORD(v143[4]) = 1;
      HIDWORD(v145[3]) = 1;
      HIDWORD(v143[2]) = 1;
      goto LABEL_12;
    }
  }

  _creationDate = [(HKActivitySummary *)self _creationDate];
  _creationDate2 = [v6 _creationDate];
  LODWORD(v145[3]) = _creationDate != _creationDate2;
  v116 = _creationDate;
  if (_creationDate != _creationDate2)
  {
    _creationDate3 = [v6 _creationDate];
    if (!_creationDate3)
    {
      v112 = 0;
      v13 = 0;
      v60 = v42;
      v142 = 0;
      v14 = 0;
      memset(v143, 0, 20);
      v15 = 0;
      memset(v145 + 4, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[3]) = v60;
      LODWORD(v143[4]) = 1;
      v7 = HIDWORD(v145[3]);
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      LODWORD(v145[3]) = 1;
      goto LABEL_12;
    }

    v112 = _creationDate3;
    _creationDate4 = [(HKActivitySummary *)self _creationDate];
    _creationDate5 = [v6 _creationDate];
    v109 = _creationDate4;
    if (![_creationDate4 isEqual:?])
    {
      LODWORD(v143[2]) = 0;
      *(v143 + 4) = 0;
      v13 = 0;
      v52 = v42;
      v142 = 0;
      v14 = 0;
      LODWORD(v143[0]) = 0;
      v15 = 0;
      memset(v145 + 4, 0, 20);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[3]) = v52;
      LODWORD(v143[4]) = 1;
      v7 = HIDWORD(v145[3]);
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      LODWORD(v145[3]) = 1;
      HIDWORD(v143[1]) = 1;
      goto LABEL_12;
    }
  }

  _energyBurnedGoalDate = [(HKActivitySummary *)self _energyBurnedGoalDate];
  _energyBurnedGoalDate2 = [v6 _energyBurnedGoalDate];
  v111 = _energyBurnedGoalDate;
  v55 = _energyBurnedGoalDate == _energyBurnedGoalDate2;
  v56 = _energyBurnedGoalDate != _energyBurnedGoalDate2;
  if (v55)
  {
    HIDWORD(v145[2]) = v56;
  }

  else
  {
    _energyBurnedGoalDate3 = [v6 _energyBurnedGoalDate];
    if (!_energyBurnedGoalDate3)
    {
      v107 = 0;
      *(v143 + 4) = 0;
      v13 = 0;
      *(v145 + 4) = 0uLL;
      v65 = v42;
      v142 = 0;
      v14 = 0;
      LODWORD(v143[0]) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[3]) = v65;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      v7 = LODWORD(v145[3]);
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      HIDWORD(v145[2]) = 1;
      goto LABEL_12;
    }

    HIDWORD(v145[2]) = v56;
    v107 = _energyBurnedGoalDate3;
    _energyBurnedGoalDate4 = [(HKActivitySummary *)self _energyBurnedGoalDate];
    _energyBurnedGoalDate5 = [v6 _energyBurnedGoalDate];
    v104 = _energyBurnedGoalDate4;
    if (![_energyBurnedGoalDate4 isEqual:?])
    {
      v13 = 0;
      *(v145 + 4) = 0uLL;
      v59 = v42;
      v142 = 0;
      v14 = 0;
      LODWORD(v143[1]) = 0;
      v143[0] = 0x100000000;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[3]) = v59;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      v7 = LODWORD(v145[3]);
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      HIDWORD(v145[2]) = 1;
      goto LABEL_12;
    }
  }

  _moveTimeGoalDate = [(HKActivitySummary *)self _moveTimeGoalDate];
  _moveTimeGoalDate2 = [v6 _moveTimeGoalDate];
  LODWORD(v145[2]) = _moveTimeGoalDate != _moveTimeGoalDate2;
  v105 = _moveTimeGoalDate2;
  v106 = _moveTimeGoalDate;
  if (_moveTimeGoalDate != _moveTimeGoalDate2)
  {
    _moveTimeGoalDate3 = [v6 _moveTimeGoalDate];
    if (!_moveTimeGoalDate3)
    {
      v102 = 0;
      v69 = v42;
      v142 = 0;
      v14 = 0;
      v145[1] = 0;
      LODWORD(v143[1]) = 0;
      LODWORD(v143[0]) = 0;
      v15 = 0;
      HIDWORD(v145[0]) = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[3]) = v69;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      v7 = LODWORD(v145[3]);
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      HIDWORD(v143[0]) = HIDWORD(v145[2]);
      v13 = 1;
      LODWORD(v145[2]) = 1;
      goto LABEL_12;
    }

    v102 = _moveTimeGoalDate3;
    _moveTimeGoalDate4 = [(HKActivitySummary *)self _moveTimeGoalDate];
    _moveTimeGoalDate5 = [v6 _moveTimeGoalDate];
    v99 = _moveTimeGoalDate4;
    if (![_moveTimeGoalDate4 isEqual:?])
    {
      v145[1] = 0;
      v142 = 0x100000000;
      LODWORD(v143[1]) = 0;
      LODWORD(v143[0]) = 0;
      v15 = 0;
      HIDWORD(v145[0]) = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      HIDWORD(v143[3]) = v42;
      LODWORD(v143[4]) = 1;
      v14 = 0;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      v7 = LODWORD(v145[3]);
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      HIDWORD(v143[0]) = HIDWORD(v145[2]);
      v13 = 1;
      LODWORD(v145[2]) = 1;
      goto LABEL_12;
    }
  }

  _briskMinutesGoalDate = [(HKActivitySummary *)self _briskMinutesGoalDate];
  _briskMinutesGoalDate2 = [v6 _briskMinutesGoalDate];
  HIDWORD(v145[1]) = _briskMinutesGoalDate != _briskMinutesGoalDate2;
  v101 = _briskMinutesGoalDate;
  if (_briskMinutesGoalDate != _briskMinutesGoalDate2)
  {
    _briskMinutesGoalDate3 = [v6 _briskMinutesGoalDate];
    if (!_briskMinutesGoalDate3)
    {
      v97 = 0;
      LODWORD(v142) = 0;
      LODWORD(v143[1]) = 0;
      *(v145 + 4) = 0;
      LODWORD(v143[0]) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      HIDWORD(v143[3]) = v42;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      v7 = HIDWORD(v145[2]);
      HIDWORD(v143[0]) = HIDWORD(v145[2]);
      v13 = 1;
      HIDWORD(v142) = v145[2];
      v14 = 1;
      HIDWORD(v145[1]) = 1;
      goto LABEL_12;
    }

    v97 = _briskMinutesGoalDate3;
    _briskMinutesGoalDate4 = [(HKActivitySummary *)self _briskMinutesGoalDate];
    _briskMinutesGoalDate5 = [v6 _briskMinutesGoalDate];
    v94 = _briskMinutesGoalDate4;
    if (![_briskMinutesGoalDate4 isEqual:?])
    {
      LODWORD(v143[1]) = 0;
      *(v145 + 4) = 0;
      LODWORD(v143[0]) = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      HIDWORD(v143[3]) = v42;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      v7 = HIDWORD(v145[2]);
      HIDWORD(v143[0]) = HIDWORD(v145[2]);
      v13 = 1;
      HIDWORD(v142) = v145[2];
      v14 = 1;
      HIDWORD(v145[1]) = 1;
      LODWORD(v142) = 1;
      goto LABEL_12;
    }
  }

  _activeHoursGoalDate = [(HKActivitySummary *)self _activeHoursGoalDate];
  _activeHoursGoalDate2 = [v6 _activeHoursGoalDate];
  LODWORD(v145[1]) = _activeHoursGoalDate != _activeHoursGoalDate2;
  v95 = _activeHoursGoalDate2;
  v96 = _activeHoursGoalDate;
  if (_activeHoursGoalDate != _activeHoursGoalDate2)
  {
    _activeHoursGoalDate3 = [v6 _activeHoursGoalDate];
    if (!_activeHoursGoalDate3)
    {
      v92 = 0;
      LODWORD(v143[0]) = 0;
      v15 = 0;
      HIDWORD(v145[0]) = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      HIDWORD(v143[3]) = v42;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      v7 = HIDWORD(v145[2]);
      v13 = 1;
      v14 = 1;
      v142 = *(&v145[1] + 4);
      HIDWORD(v143[0]) = HIDWORD(v145[2]);
      LODWORD(v143[1]) = 1;
      LODWORD(v145[1]) = 1;
      goto LABEL_12;
    }

    v92 = _activeHoursGoalDate3;
    _activeHoursGoalDate4 = [(HKActivitySummary *)self _activeHoursGoalDate];
    _activeHoursGoalDate5 = [v6 _activeHoursGoalDate];
    v89 = _activeHoursGoalDate4;
    if (![_activeHoursGoalDate4 isEqual:?])
    {
      v15 = 0;
      HIDWORD(v145[0]) = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      HIDWORD(v143[3]) = v42;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      v7 = HIDWORD(v145[2]);
      v13 = 1;
      v14 = 1;
      v142 = *(&v145[1] + 4);
      HIDWORD(v143[0]) = HIDWORD(v145[2]);
      LODWORD(v143[1]) = 1;
      LODWORD(v145[1]) = 1;
      LODWORD(v143[0]) = 1;
      goto LABEL_12;
    }
  }

  _lock_pushCount = [(HKActivitySummary *)self _lock_pushCount];
  _lock_pushCount2 = [v6 _lock_pushCount];
  HIDWORD(v145[0]) = _lock_pushCount != _lock_pushCount2;
  v91 = _lock_pushCount;
  if (_lock_pushCount != _lock_pushCount2)
  {
    _lock_pushCount3 = [v6 _lock_pushCount];
    if (!_lock_pushCount3)
    {
      v87 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      HIDWORD(v143[3]) = v42;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      v7 = HIDWORD(v145[2]);
      v13 = 1;
      v14 = 1;
      v142 = *(&v145[1] + 4);
      LODWORD(v143[1]) = 1;
      v143[0] = __PAIR64__(HIDWORD(v145[2]), v145[1]);
      v15 = 1;
      HIDWORD(v145[0]) = 1;
      goto LABEL_12;
    }

    v87 = _lock_pushCount3;
    _lock_pushCount4 = [(HKActivitySummary *)self _lock_pushCount];
    _lock_pushCount5 = [v6 _lock_pushCount];
    v84 = _lock_pushCount4;
    if (![_lock_pushCount4 isEqual:?])
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v143[6] = LODWORD(v145[5]) | 0x100000000;
      v12 = 1;
      HIDWORD(v143[4]) = v145[4];
      LODWORD(v143[5]) = 1;
      HIDWORD(v143[5]) = HIDWORD(v145[4]);
      HIDWORD(v143[3]) = v42;
      LODWORD(v143[4]) = 1;
      HIDWORD(v143[2]) = HIDWORD(v145[3]);
      LODWORD(v143[3]) = 1;
      HIDWORD(v143[1]) = v145[3];
      LODWORD(v143[2]) = 1;
      v7 = HIDWORD(v145[2]);
      v13 = 1;
      v14 = 1;
      v142 = *(&v145[1] + 4);
      LODWORD(v143[1]) = 1;
      v143[0] = __PAIR64__(HIDWORD(v145[2]), v145[1]);
      v15 = 1;
      HIDWORD(v145[0]) = 1;
      v16 = 1;
      goto LABEL_12;
    }
  }

  _lock_flightsClimbed = [(HKActivitySummary *)self _lock_flightsClimbed];
  _lock_flightsClimbed2 = [v6 _lock_flightsClimbed];
  v86 = _lock_flightsClimbed;
  v138 = _lock_flightsClimbed != _lock_flightsClimbed2;
  if (_lock_flightsClimbed == _lock_flightsClimbed2)
  {
    goto LABEL_143;
  }

  _lock_flightsClimbed3 = [v6 _lock_flightsClimbed];
  v7 = HIDWORD(v145[2]);
  if (!_lock_flightsClimbed3)
  {
    v82 = 0;
    v19 = 0;
    v20 = 0;
    v143[6] = LODWORD(v145[5]) | 0x100000000;
    v12 = 1;
    HIDWORD(v143[4]) = v145[4];
    LODWORD(v143[5]) = 1;
    HIDWORD(v143[5]) = HIDWORD(v145[4]);
    HIDWORD(v143[3]) = v42;
    LODWORD(v143[4]) = 1;
    HIDWORD(v143[2]) = HIDWORD(v145[3]);
    LODWORD(v143[3]) = 1;
    HIDWORD(v143[1]) = v145[3];
    LODWORD(v143[2]) = 1;
    v13 = 1;
    v142 = *(&v145[1] + 4);
    v14 = 1;
    LODWORD(v143[1]) = 1;
    v16 = HIDWORD(v145[0]);
    v143[0] = __PAIR64__(HIDWORD(v145[2]), v145[1]);
    v15 = 1;
    v17 = 1;
    v18 = 1;
    goto LABEL_12;
  }

  v82 = _lock_flightsClimbed3;
  _lock_flightsClimbed4 = [(HKActivitySummary *)self _lock_flightsClimbed];
  _lock_flightsClimbed5 = [v6 _lock_flightsClimbed];
  v81 = _lock_flightsClimbed4;
  if ([_lock_flightsClimbed4 isEqual:?])
  {
LABEL_143:
    if (self->_wheelchairUse == *(v6 + 136))
    {
      if (self->_activityMoveMode != *(v6 + 144) || self->_paused != *(v6 + 152))
      {
        v20 = 0;
        v143[6] = LODWORD(v145[5]) | 0x100000000;
        HIDWORD(v143[5]) = HIDWORD(v145[4]);
        v12 = 1;
        HIDWORD(v143[4]) = v145[4];
        LODWORD(v143[5]) = 1;
        HIDWORD(v143[3]) = v42;
        LODWORD(v143[4]) = 1;
        HIDWORD(v143[2]) = HIDWORD(v145[3]);
        LODWORD(v143[3]) = 1;
        HIDWORD(v143[1]) = v145[3];
        LODWORD(v143[2]) = 1;
        v13 = 1;
        v14 = 1;
        v142 = *(&v145[1] + 4);
        LODWORD(v143[1]) = 1;
        v16 = HIDWORD(v145[0]);
        v143[0] = __PAIR64__(HIDWORD(v145[2]), v145[1]);
        v15 = 1;
        v17 = 1;
        v18 = v138;
        v19 = v138;
        goto LABEL_151;
      }

      v20 = self->_dataLoading == *(v6 + 184);
    }

    else
    {
      v20 = 0;
    }

    v143[6] = LODWORD(v145[5]) | 0x100000000;
    v12 = 1;
    LODWORD(v143[5]) = 1;
    HIDWORD(v143[5]) = HIDWORD(v145[4]);
    LODWORD(v143[4]) = 1;
    HIDWORD(v143[4]) = v145[4];
    LODWORD(v143[3]) = 1;
    HIDWORD(v143[3]) = v42;
    LODWORD(v143[2]) = 1;
    HIDWORD(v143[2]) = HIDWORD(v145[3]);
    v13 = 1;
    v14 = 1;
    v142 = *(&v145[1] + 4);
    LODWORD(v143[1]) = 1;
    HIDWORD(v143[1]) = v145[3];
    v16 = HIDWORD(v145[0]);
    v143[0] = __PAIR64__(HIDWORD(v145[2]), v145[1]);
    v15 = 1;
    v17 = 1;
    v18 = v138;
    v19 = v138;
  }

  else
  {
    v20 = 0;
    v143[6] = LODWORD(v145[5]) | 0x100000000;
    v12 = 1;
    LODWORD(v143[5]) = 1;
    HIDWORD(v143[5]) = HIDWORD(v145[4]);
    LODWORD(v143[4]) = 1;
    HIDWORD(v143[4]) = v145[4];
    LODWORD(v143[3]) = 1;
    HIDWORD(v143[3]) = v42;
    LODWORD(v143[2]) = 1;
    HIDWORD(v143[2]) = HIDWORD(v145[3]);
    v13 = 1;
    v14 = 1;
    v142 = *(&v145[1] + 4);
    LODWORD(v143[1]) = 1;
    HIDWORD(v143[1]) = v145[3];
    v16 = HIDWORD(v145[0]);
    v143[0] = __PAIR64__(HIDWORD(v145[2]), v145[1]);
    v15 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
  }

LABEL_151:
  v7 = _lock_flightsClimbed5;
LABEL_12:
  if (v19)
  {
    v137 = v5;
    selfCopy = self;
    v23 = v20;
    v24 = v6;
    v25 = v16;
    v26 = v14;
    v27 = v15;
    v28 = v13;
    v29 = v17;
    v30 = v12;
    v31 = v18;

    v32 = v31;
    v12 = v30;
    v17 = v29;
    v13 = v28;
    v15 = v27;
    v14 = v26;
    v16 = v25;
    v6 = v24;
    v20 = v23;
    self = selfCopy;
    v5 = v137;
    if (!v32)
    {
LABEL_14:
      if (!v17)
      {
        goto LABEL_15;
      }

LABEL_85:

      if (!v16)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if (!v18)
  {
    goto LABEL_14;
  }

  if (v17)
  {
    goto LABEL_85;
  }

LABEL_15:
  if (v16)
  {
LABEL_16:
  }

LABEL_17:
  if (HIDWORD(v145[0]))
  {
  }

  if (v15)
  {
  }

  if (LODWORD(v143[0]))
  {
  }

  if (LODWORD(v145[1]))
  {
  }

  if (LODWORD(v143[1]))
  {
  }

  if (v142)
  {
  }

  if (HIDWORD(v145[1]))
  {
  }

  if (v14)
  {
  }

  if (HIDWORD(v142))
  {
  }

  if (LODWORD(v145[2]))
  {
  }

  if (v13)
  {
  }

  if (HIDWORD(v143[0]))
  {
  }

  if (HIDWORD(v145[2]))
  {
  }

  if (LODWORD(v143[2]))
  {
  }

  if (HIDWORD(v143[1]))
  {
  }

  if (LODWORD(v145[3]))
  {
  }

  if (LODWORD(v143[3]))
  {
  }

  if (HIDWORD(v143[2]))
  {
  }

  if (HIDWORD(v145[3]))
  {
  }

  if (LODWORD(v143[4]))
  {
  }

  if (HIDWORD(v143[3]))
  {
  }

  if (LODWORD(v145[0]))
  {
  }

  if (LODWORD(v143[5]))
  {
  }

  if (HIDWORD(v143[4]))
  {
  }

  if (LODWORD(v145[4]))
  {
  }

  if (v12)
  {
  }

  if (HIDWORD(v143[5]))
  {
  }

  if (HIDWORD(v145[4]))
  {
  }

  if (HIDWORD(v143[6]))
  {
  }

  if (LODWORD(v143[6]))
  {
  }

  if (LODWORD(v145[5]))
  {
  }

  if (v144)
  {
  }

  os_unfair_lock_unlock(&self->_lock);

LABEL_82:
  return v20;
}

- (unint64_t)hash
{
  os_unfair_lock_lock(&self->_lock);
  activitySummaryIndex = self->_activitySummaryIndex;
  os_unfair_lock_unlock(&self->_lock);
  return activitySummaryIndex;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HKActivitySummary);
  os_unfair_lock_lock(&self->_lock);
  [(HKActivitySummary *)v4 _setActivitySummaryIndex:self->_activitySummaryIndex];
  v5 = [(HKQuantity *)self->_activeEnergyBurned copy];
  activeEnergyBurned = v4->_activeEnergyBurned;
  v4->_activeEnergyBurned = v5;

  v7 = [(HKQuantity *)self->_appleMoveTime copy];
  appleMoveTime = v4->_appleMoveTime;
  v4->_appleMoveTime = v7;

  v9 = [(HKQuantity *)self->_appleExerciseTime copy];
  appleExerciseTime = v4->_appleExerciseTime;
  v4->_appleExerciseTime = v9;

  v11 = [(HKQuantity *)self->_appleStandHours copy];
  appleStandHours = v4->_appleStandHours;
  v4->_appleStandHours = v11;

  v13 = [(HKQuantity *)self->_distanceWalkingRunning copy];
  distanceWalkingRunning = v4->_distanceWalkingRunning;
  v4->_distanceWalkingRunning = v13;

  v15 = [(HKQuantity *)self->_stepCount copy];
  stepCount = v4->_stepCount;
  v4->_stepCount = v15;

  v17 = [(HKQuantity *)self->_activeEnergyBurnedGoal copy];
  activeEnergyBurnedGoal = v4->_activeEnergyBurnedGoal;
  v4->_activeEnergyBurnedGoal = v17;

  v19 = [(HKQuantity *)self->_appleMoveTimeGoal copy];
  appleMoveTimeGoal = v4->_appleMoveTimeGoal;
  v4->_appleMoveTimeGoal = v19;

  v21 = [(HKQuantity *)self->_appleExerciseTimeGoal copy];
  appleExerciseTimeGoal = v4->_appleExerciseTimeGoal;
  v4->_appleExerciseTimeGoal = v21;

  v23 = [(HKQuantity *)self->_appleStandHoursGoal copy];
  appleStandHoursGoal = v4->_appleStandHoursGoal;
  v4->_appleStandHoursGoal = v23;

  v25 = [(HKQuantity *)self->_deepBreathingDuration copy];
  deepBreathingDuration = v4->_deepBreathingDuration;
  v4->_deepBreathingDuration = v25;

  v27 = [(HKQuantity *)self->_pushCount copy];
  pushCount = v4->_pushCount;
  v4->_pushCount = v27;

  v4->_wheelchairUse = self->_wheelchairUse;
  v29 = [(NSDate *)self->_creationDate copy];
  creationDate = v4->_creationDate;
  v4->_creationDate = v29;

  v31 = [(NSDate *)self->_startDate copy];
  startDate = v4->_startDate;
  v4->_startDate = v31;

  v33 = [(NSDate *)self->_endDate copy];
  endDate = v4->_endDate;
  v4->_endDate = v33;

  v35 = [(NSDate *)self->_energyBurnedGoalDate copy];
  energyBurnedGoalDate = v4->_energyBurnedGoalDate;
  v4->_energyBurnedGoalDate = v35;

  v37 = [(NSDate *)self->_moveTimeGoalDate copy];
  moveTimeGoalDate = v4->_moveTimeGoalDate;
  v4->_moveTimeGoalDate = v37;

  v39 = [(HKQuantity *)self->_flightsClimbed copy];
  flightsClimbed = v4->_flightsClimbed;
  v4->_flightsClimbed = v39;

  v41 = [(NSArray *)self->_dailyEnergyBurnedStatistics copy];
  dailyEnergyBurnedStatistics = v4->_dailyEnergyBurnedStatistics;
  v4->_dailyEnergyBurnedStatistics = v41;

  v43 = [(NSArray *)self->_dailyMoveTimeStatistics copy];
  dailyMoveTimeStatistics = v4->_dailyMoveTimeStatistics;
  v4->_dailyMoveTimeStatistics = v43;

  v45 = [(NSArray *)self->_dailyBriskMinutesStatistics copy];
  dailyBriskMinutesStatistics = v4->_dailyBriskMinutesStatistics;
  v4->_dailyBriskMinutesStatistics = v45;

  v4->_activityMoveMode = self->_activityMoveMode;
  v4->_paused = self->_paused;
  v4->_dataLoading = self->_dataLoading;
  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (HKActivitySummary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(HKActivitySummary *)self init];
  if (v5)
  {
    -[HKActivitySummary _setActivitySummaryIndex:](v5, "_setActivitySummaryIndex:", [coderCopy decodeInt64ForKey:@"index"]);
    v6 = objc_opt_class();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    v10 = +[HKUnit kilocalorieUnit];
    v11 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"activeEnergy" unit:v10];
    activeEnergyBurned = v5->_activeEnergyBurned;
    v5->_activeEnergyBurned = v11;

    v13 = +[HKUnit minuteUnit];
    v14 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"moveTime" unit:v13];
    appleMoveTime = v5->_appleMoveTime;
    v5->_appleMoveTime = v14;

    v16 = +[HKUnit minuteUnit];
    v17 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"exerciseTime" unit:v16];
    appleExerciseTime = v5->_appleExerciseTime;
    v5->_appleExerciseTime = v17;

    v19 = +[HKUnit countUnit];
    v20 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"standHours" unit:v19];
    appleStandHours = v5->_appleStandHours;
    v5->_appleStandHours = v20;

    v22 = +[HKUnit meterUnit];
    v23 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"distanceWalking" unit:v22];
    distanceWalkingRunning = v5->_distanceWalkingRunning;
    v5->_distanceWalkingRunning = v23;

    v25 = +[HKUnit countUnit];
    v26 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"stepCount" unit:v25];
    stepCount = v5->_stepCount;
    v5->_stepCount = v26;

    v28 = +[HKUnit kilocalorieUnit];
    v29 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"energyBurnedGoal" unit:v28];
    activeEnergyBurnedGoal = v5->_activeEnergyBurnedGoal;
    v5->_activeEnergyBurnedGoal = v29;

    v31 = +[HKUnit minuteUnit];
    v32 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"moveMinutesGoal" unit:v31];
    appleMoveTimeGoal = v5->_appleMoveTimeGoal;
    v5->_appleMoveTimeGoal = v32;

    v34 = +[HKUnit countUnit];
    v35 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"activeHoursGoal" unit:v34];
    appleStandHoursGoal = v5->_appleStandHoursGoal;
    v5->_appleStandHoursGoal = v35;

    v37 = +[HKUnit minuteUnit];
    v38 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"briskMinutesGoal" unit:v37];
    appleExerciseTimeGoal = v5->_appleExerciseTimeGoal;
    v5->_appleExerciseTimeGoal = v38;

    v40 = +[HKUnit secondUnit];
    v41 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"deepBreathingDuration" unit:v40];
    deepBreathingDuration = v5->_deepBreathingDuration;
    v5->_deepBreathingDuration = v41;

    v43 = +[HKUnit countUnit];
    v44 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"pushCount" unit:v43];
    pushCount = v5->_pushCount;
    v5->_pushCount = v44;

    v46 = +[HKUnit countUnit];
    v47 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:coderCopy forKey:@"flightsClimbed" unit:v46];
    flightsClimbed = v5->_flightsClimbed;
    v5->_flightsClimbed = v47;

    v5->_wheelchairUse = [coderCopy decodeIntegerForKey:@"wheelchairUse"];
    v49 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dailyEnergyBurnedStatistics"];
    dailyEnergyBurnedStatistics = v5->_dailyEnergyBurnedStatistics;
    v5->_dailyEnergyBurnedStatistics = v49;

    v51 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dailyMoveMinutesStatistics"];
    dailyMoveTimeStatistics = v5->_dailyMoveTimeStatistics;
    v5->_dailyMoveTimeStatistics = v51;

    v53 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dailyBriskMinutesStatistics"];
    dailyBriskMinutesStatistics = v5->_dailyBriskMinutesStatistics;
    v5->_dailyBriskMinutesStatistics = v53;

    v5->_dataLoading = [coderCopy decodeBoolForKey:@"dataLoading"];
    v55 = [coderCopy decodeObjectOfClass:v6 forKey:@"energyBurnedGoalDate"];
    energyBurnedGoalDate = v5->_energyBurnedGoalDate;
    v5->_energyBurnedGoalDate = v55;

    v57 = [coderCopy decodeObjectOfClass:v6 forKey:@"moveTimeGoalDate"];
    moveTimeGoalDate = v5->_moveTimeGoalDate;
    v5->_moveTimeGoalDate = v57;

    v59 = [coderCopy decodeObjectOfClass:v6 forKey:@"briskMinutesGoalDate"];
    briskMinutesGoalDate = v5->_briskMinutesGoalDate;
    v5->_briskMinutesGoalDate = v59;

    v61 = [coderCopy decodeObjectOfClass:v6 forKey:@"activeHoursGoalDate"];
    activeHoursGoalDate = v5->_activeHoursGoalDate;
    v5->_activeHoursGoalDate = v61;

    v63 = [coderCopy decodeObjectOfClass:v6 forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v63;

    v65 = [coderCopy decodeObjectOfClass:v6 forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v65;

    v67 = [coderCopy decodeObjectOfClass:v6 forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v67;

    v5->_activityMoveMode = [coderCopy decodeIntegerForKey:@"activityMoveMode"];
    v5->_paused = [coderCopy decodeBoolForKey:@"paused"];
  }

  return v5;
}

- (id)_decodeQuantityFromCoder:(id)coder forKey:(id)key unit:(id)unit
{
  coderCopy = coder;
  keyCopy = key;
  unitCopy = unit;
  if ([coderCopy containsValueForKey:keyCopy])
  {
    [coderCopy decodeDoubleForKey:keyCopy];
    v10 = [HKQuantity quantityWithUnit:unitCopy doubleValue:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  os_unfair_lock_lock(&self->_lock);
  [coderCopy encodeInt64:self->_activitySummaryIndex forKey:@"index"];
  activeEnergyBurned = self->_activeEnergyBurned;
  v6 = +[HKUnit kilocalorieUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:activeEnergyBurned withCoder:coderCopy key:@"activeEnergy" unit:v6];

  appleMoveTime = self->_appleMoveTime;
  v8 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleMoveTime withCoder:coderCopy key:@"moveTime" unit:v8];

  appleExerciseTime = self->_appleExerciseTime;
  v10 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleExerciseTime withCoder:coderCopy key:@"exerciseTime" unit:v10];

  appleStandHours = self->_appleStandHours;
  v12 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleStandHours withCoder:coderCopy key:@"standHours" unit:v12];

  distanceWalkingRunning = self->_distanceWalkingRunning;
  v14 = +[HKUnit meterUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:distanceWalkingRunning withCoder:coderCopy key:@"distanceWalking" unit:v14];

  stepCount = self->_stepCount;
  v16 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:stepCount withCoder:coderCopy key:@"stepCount" unit:v16];

  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  v18 = +[HKUnit kilocalorieUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:activeEnergyBurnedGoal withCoder:coderCopy key:@"energyBurnedGoal" unit:v18];

  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  v20 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleMoveTimeGoal withCoder:coderCopy key:@"moveMinutesGoal" unit:v20];

  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  v22 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleExerciseTimeGoal withCoder:coderCopy key:@"briskMinutesGoal" unit:v22];

  appleStandHoursGoal = self->_appleStandHoursGoal;
  v24 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleStandHoursGoal withCoder:coderCopy key:@"activeHoursGoal" unit:v24];

  deepBreathingDuration = self->_deepBreathingDuration;
  v26 = +[HKUnit secondUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:deepBreathingDuration withCoder:coderCopy key:@"deepBreathingDuration" unit:v26];

  pushCount = self->_pushCount;
  v28 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:pushCount withCoder:coderCopy key:@"pushCount" unit:v28];

  flightsClimbed = self->_flightsClimbed;
  v30 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:flightsClimbed withCoder:coderCopy key:@"flightsClimbed" unit:v30];

  [coderCopy encodeInteger:self->_wheelchairUse forKey:@"wheelchairUse"];
  [coderCopy encodeObject:self->_dailyEnergyBurnedStatistics forKey:@"dailyEnergyBurnedStatistics"];
  [coderCopy encodeObject:self->_dailyMoveTimeStatistics forKey:@"dailyMoveMinutesStatistics"];
  [coderCopy encodeObject:self->_dailyBriskMinutesStatistics forKey:@"dailyBriskMinutesStatistics"];
  [coderCopy encodeBool:self->_dataLoading forKey:@"dataLoading"];
  [coderCopy encodeObject:self->_energyBurnedGoalDate forKey:@"energyBurnedGoalDate"];
  [coderCopy encodeObject:self->_moveTimeGoalDate forKey:@"moveTimeGoalDate"];
  [coderCopy encodeObject:self->_briskMinutesGoalDate forKey:@"briskMinutesGoalDate"];
  [coderCopy encodeObject:self->_activeHoursGoalDate forKey:@"activeHoursGoalDate"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeInteger:self->_activityMoveMode forKey:@"activityMoveMode"];
  [coderCopy encodeBool:self->_paused forKey:@"paused"];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_encodeQuantity:(id)quantity withCoder:(id)coder key:(id)key unit:(id)unit
{
  quantityCopy = quantity;
  coderCopy = coder;
  keyCopy = key;
  unitCopy = unit;
  os_unfair_lock_assert_owner(&self->_lock);
  if (quantityCopy)
  {
    [quantityCopy doubleValueForUnit:unitCopy];
    [coderCopy encodeDouble:keyCopy forKey:?];
  }
}

- (NSDateComponents)dateComponentsForCalendar:(NSCalendar *)calendar
{
  v4 = calendar;
  os_unfair_lock_lock(&self->_lock);
  if (self->_dateComponents)
  {
    calendarIdentifier = [(NSCalendar *)v4 calendarIdentifier];
    v6 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

    dateComponents = self->_dateComponents;
    if (v6)
    {
      v8 = dateComponents;
    }

    else
    {
      v8 = [(NSDateComponents *)dateComponents hk_translateDateComponentsToCalendar:v4 calendarUnits:30];
    }
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
  }

  v9 = v8;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (id)_lock_activeEnergyBurned
{
  activeEnergyBurned = self->_activeEnergyBurned;
  if (activeEnergyBurned)
  {
    v3 = activeEnergyBurned;
  }

  else
  {
    v4 = +[HKUnit kilocalorieUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (id)_lock_appleMoveTime
{
  appleMoveTime = self->_appleMoveTime;
  if (appleMoveTime)
  {
    v3 = appleMoveTime;
  }

  else
  {
    v4 = +[HKUnit minuteUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (HKQuantity)appleMoveTime
{
  os_unfair_lock_lock(&self->_lock);
  _lock_appleMoveTime = [(HKActivitySummary *)self _lock_appleMoveTime];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_appleMoveTime;
}

- (id)_lock_appleExerciseTime
{
  appleExerciseTime = self->_appleExerciseTime;
  if (appleExerciseTime)
  {
    v3 = appleExerciseTime;
  }

  else
  {
    v4 = +[HKUnit minuteUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (id)_lock_appleStandHours
{
  appleStandHours = self->_appleStandHours;
  if (appleStandHours)
  {
    v3 = appleStandHours;
  }

  else
  {
    v4 = +[HKUnit countUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (id)_lock_distanceWalkingRunning
{
  distanceWalkingRunning = self->_distanceWalkingRunning;
  if (distanceWalkingRunning)
  {
    v3 = distanceWalkingRunning;
  }

  else
  {
    v4 = +[HKUnit meterUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (id)_lock_stepCount
{
  stepCount = self->_stepCount;
  if (stepCount)
  {
    v3 = stepCount;
  }

  else
  {
    v4 = +[HKUnit countUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (id)_lock_activeEnergyBurnedGoal
{
  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  if (activeEnergyBurnedGoal)
  {
    v3 = activeEnergyBurnedGoal;
  }

  else
  {
    v4 = +[HKUnit kilocalorieUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (id)_lock_appleMoveTimeGoal
{
  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  if (appleMoveTimeGoal)
  {
    v3 = appleMoveTimeGoal;
  }

  else
  {
    v4 = +[HKUnit minuteUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (HKQuantity)appleMoveTimeGoal
{
  os_unfair_lock_lock(&self->_lock);
  _lock_appleMoveTimeGoal = [(HKActivitySummary *)self _lock_appleMoveTimeGoal];
  os_unfair_lock_unlock(&self->_lock);

  return _lock_appleMoveTimeGoal;
}

- (id)_lock_appleExerciseTimeGoal
{
  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  if (appleExerciseTimeGoal)
  {
    v3 = appleExerciseTimeGoal;
  }

  else
  {
    v4 = +[HKUnit minuteUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (HKQuantity)exerciseTimeGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_appleExerciseTimeGoal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_appleStandHoursGoal
{
  appleStandHoursGoal = self->_appleStandHoursGoal;
  if (appleStandHoursGoal)
  {
    v3 = appleStandHoursGoal;
  }

  else
  {
    v4 = +[HKUnit countUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (HKQuantity)standHoursGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_appleStandHoursGoal;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_lock_deepBreathingDuration
{
  deepBreathingDuration = self->_deepBreathingDuration;
  if (deepBreathingDuration)
  {
    v3 = deepBreathingDuration;
  }

  else
  {
    v4 = +[HKUnit secondUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (id)_lock_pushCount
{
  pushCount = self->_pushCount;
  if (pushCount)
  {
    v3 = pushCount;
  }

  else
  {
    v4 = +[HKUnit countUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (id)_lock_flightsClimbed
{
  flightsClimbed = self->_flightsClimbed;
  if (flightsClimbed)
  {
    v3 = flightsClimbed;
  }

  else
  {
    v4 = +[HKUnit countUnit];
    v3 = [HKQuantity quantityWithUnit:v4 doubleValue:0.0];
  }

  return v3;
}

- (NSArray)_dailyMoveTimeStatistics
{
  os_unfair_lock_lock(&self->_lock);
  dailyMoveTimeStatistics = self->_dailyMoveTimeStatistics;
  if (!dailyMoveTimeStatistics)
  {
    dailyMoveTimeStatistics = MEMORY[0x1E695E0F0];
  }

  v4 = dailyMoveTimeStatistics;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)_hasEnergyBurnedGoal
{
  activeEnergyBurnedGoal = [(HKActivitySummary *)self activeEnergyBurnedGoal];
  v3 = +[HKUnit kilocalorieUnit];
  v4 = [HKQuantity quantityWithUnit:v3 doubleValue:0.0];
  v5 = [activeEnergyBurnedGoal compare:v4] == 1;

  return v5;
}

- (BOOL)_hasAppleMoveTimeGoal
{
  appleMoveTimeGoal = [(HKActivitySummary *)self appleMoveTimeGoal];
  v3 = +[HKUnit minuteUnit];
  v4 = [HKQuantity quantityWithUnit:v3 doubleValue:0.0];
  v5 = [appleMoveTimeGoal compare:v4] == 1;

  return v5;
}

- (BOOL)_hasExerciseGoal
{
  exerciseTimeGoal = [(HKActivitySummary *)self exerciseTimeGoal];
  v3 = +[HKUnit minuteUnit];
  v4 = [HKQuantity quantityWithUnit:v3 doubleValue:0.0];
  v5 = [exerciseTimeGoal compare:v4] == 1;

  return v5;
}

- (BOOL)_hasStandHoursGoal
{
  standHoursGoal = [(HKActivitySummary *)self standHoursGoal];
  v3 = +[HKUnit countUnit];
  v4 = [HKQuantity quantityWithUnit:v3 doubleValue:0.0];
  v5 = [standHoursGoal compare:v4] == 1;

  return v5;
}

- (BOOL)isPaused
{
  os_unfair_lock_lock(&self->_lock);
  paused = self->_paused;
  os_unfair_lock_unlock(&self->_lock);
  return paused;
}

- (BOOL)paused
{
  os_unfair_lock_lock(&self->_lock);
  paused = self->_paused;
  os_unfair_lock_unlock(&self->_lock);
  return paused;
}

- (BOOL)_isStandalonePhoneSummary
{
  exerciseTimeGoal = [(HKActivitySummary *)self exerciseTimeGoal];
  if (exerciseTimeGoal)
  {
    v4 = 0;
  }

  else
  {
    standHoursGoal = [(HKActivitySummary *)self standHoursGoal];
    v4 = standHoursGoal == 0;
  }

  return v4;
}

- (void)_validateQuantityAssignment:(id)assignment expectedUnit:(id)unit propertyName:(id)name
{
  assignmentCopy = assignment;
  unitCopy = unit;
  nameCopy = name;
  if (assignmentCopy && ([assignmentCopy isCompatibleWithUnit:unitCopy] & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    unitString = [unitCopy unitString];
    _unit = [assignmentCopy _unit];
    unitString2 = [_unit unitString];
    [v9 raise:v10 format:{@"%@ expects units compatible with %@, received %@", nameCopy, unitString, unitString2}];
  }
}

- (void)setActiveEnergyBurned:(HKQuantity *)activeEnergyBurned
{
  v4 = activeEnergyBurned;
  v5 = +[HKUnit kilocalorieUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"activeEnergyBurned"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_activeEnergyBurned;
  self->_activeEnergyBurned = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppleMoveTime:(HKQuantity *)appleMoveTime
{
  v4 = appleMoveTime;
  v5 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"appleMoveTime"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_appleMoveTime;
  self->_appleMoveTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppleExerciseTime:(HKQuantity *)appleExerciseTime
{
  v4 = appleExerciseTime;
  v5 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"appleExerciseTime"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_appleExerciseTime;
  self->_appleExerciseTime = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppleStandHours:(HKQuantity *)appleStandHours
{
  v4 = appleStandHours;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"appleStandHours"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_appleStandHours;
  self->_appleStandHours = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDistanceWalkingRunning:(id)running
{
  runningCopy = running;
  v5 = +[HKUnit meterUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:runningCopy expectedUnit:v5 propertyName:@"distanceWalkingRunning"];

  os_unfair_lock_lock(&self->_lock);
  distanceWalkingRunning = self->_distanceWalkingRunning;
  self->_distanceWalkingRunning = runningCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStepCount:(id)count
{
  countCopy = count;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:countCopy expectedUnit:v5 propertyName:@"stepCount"];

  os_unfair_lock_lock(&self->_lock);
  stepCount = self->_stepCount;
  self->_stepCount = countCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setActiveEnergyBurnedGoal:(HKQuantity *)activeEnergyBurnedGoal
{
  v4 = activeEnergyBurnedGoal;
  v5 = +[HKUnit kilocalorieUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"activeEnergyBurnedGoal"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_activeEnergyBurnedGoal;
  self->_activeEnergyBurnedGoal = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppleMoveTimeGoal:(HKQuantity *)appleMoveTimeGoal
{
  v4 = appleMoveTimeGoal;
  v5 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"appleMoveTimeGoal"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_appleMoveTimeGoal;
  self->_appleMoveTimeGoal = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppleExerciseTimeGoal:(HKQuantity *)appleExerciseTimeGoal
{
  v4 = appleExerciseTimeGoal;
  v5 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"briskMinutesGoal"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_appleExerciseTimeGoal;
  self->_appleExerciseTimeGoal = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setExerciseTimeGoal:(HKQuantity *)exerciseTimeGoal
{
  v4 = exerciseTimeGoal;
  v5 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"exerciseTimeGoal"];

  os_unfair_lock_lock(&self->_lock);
  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  self->_appleExerciseTimeGoal = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppleStandHoursGoal:(HKQuantity *)appleStandHoursGoal
{
  v4 = appleStandHoursGoal;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"activeHoursGoal"];

  os_unfair_lock_lock(&self->_lock);
  v6 = self->_appleStandHoursGoal;
  self->_appleStandHoursGoal = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStandHoursGoal:(HKQuantity *)standHoursGoal
{
  v4 = standHoursGoal;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"standHoursGoal"];

  os_unfair_lock_lock(&self->_lock);
  appleStandHoursGoal = self->_appleStandHoursGoal;
  self->_appleStandHoursGoal = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setDeepBreathingDuration:(id)duration
{
  durationCopy = duration;
  v5 = +[HKUnit secondUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:durationCopy expectedUnit:v5 propertyName:@"deepBreathingDuration"];

  os_unfair_lock_lock(&self->_lock);
  deepBreathingDuration = self->_deepBreathingDuration;
  self->_deepBreathingDuration = durationCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setPushCount:(id)count
{
  countCopy = count;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:countCopy expectedUnit:v5 propertyName:@"pushCount"];

  os_unfair_lock_lock(&self->_lock);
  pushCount = self->_pushCount;
  self->_pushCount = countCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setFlightsClimbed:(id)climbed
{
  climbedCopy = climbed;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:climbedCopy expectedUnit:v5 propertyName:@"flightsClimbed"];

  os_unfair_lock_lock(&self->_lock);
  flightsClimbed = self->_flightsClimbed;
  self->_flightsClimbed = climbedCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setWheelchairUse:(int64_t)use
{
  os_unfair_lock_lock(&self->_lock);
  self->_wheelchairUse = use;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setActivityMoveMode:(HKActivityMoveMode)activityMoveMode
{
  os_unfair_lock_lock(&self->_lock);
  self->_activityMoveMode = activityMoveMode;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPaused:(BOOL)paused
{
  os_unfair_lock_lock(&self->_lock);
  self->_paused = paused;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDeprecatedPauseForInternalSwiftClient:(BOOL)client
{
  os_unfair_lock_lock(&self->_lock);
  self->_paused = client;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setActivitySummaryIndex:(int64_t)index
{
  os_unfair_lock_lock(&self->_lock);
  self->_activitySummaryIndex = index;
  v5 = _HKActivityCacheDateComponentsFromCacheIndex(index);
  dateComponents = self->_dateComponents;
  self->_dateComponents = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setGregorianDateComponents:(id)components
{
  componentsCopy = components;
  v7 = 0;
  v5 = [objc_opt_class() _validateActivitySummaryDateComponents:componentsCopy errorMessage:&v7];
  v6 = v7;
  if (v5)
  {
    [(HKActivitySummary *)self _setActivitySummaryIndex:_HKCacheIndexFromDateComponents(componentsCopy)];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v6}];
  }
}

+ (BOOL)_validateActivitySummaryDateComponents:(id)components errorMessage:(id *)message
{
  componentsCopy = components;
  if ([componentsCopy year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([componentsCopy month] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (message)
      {
        v6 = MEMORY[0x1E696AEC0];
        v15 = "";
        v7 = "month";
        goto LABEL_10;
      }

LABEL_46:
      v9 = 0;
      goto LABEL_47;
    }

    if ([componentsCopy day] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (message)
      {
        v6 = MEMORY[0x1E696AEC0];
        v15 = "";
        v7 = "day";
        goto LABEL_10;
      }

      goto LABEL_46;
    }

    if ([componentsCopy hour] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([componentsCopy minute] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([componentsCopy second] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([componentsCopy nanosecond] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([componentsCopy weekday] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([componentsCopy weekdayOrdinal] == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ([componentsCopy quarter] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  if ([componentsCopy weekOfMonth] == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if ([componentsCopy weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      if ([componentsCopy yearForWeekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        calendar = [componentsCopy calendar];
                        calendar2 = [componentsCopy calendar];

                        if (calendar2)
                        {
                          v12 = calendar;
                          if ([componentsCopy isValidDateInCalendar:calendar])
                          {
                            v9 = 1;
LABEL_54:

                            goto LABEL_47;
                          }

                          if (message)
                          {
                            v14 = @"Date components must represent a valid date.";
                            goto LABEL_52;
                          }
                        }

                        else
                        {
                          v12 = calendar;
                          if (message)
                          {
                            v14 = @"Date components require a calendar.";
LABEL_52:
                            v9 = 0;
                            *message = v14;
                            goto LABEL_54;
                          }
                        }

                        v9 = 0;
                        goto LABEL_54;
                      }

                      if (!message)
                      {
                        goto LABEL_46;
                      }

                      v6 = MEMORY[0x1E696AEC0];
                      v15 = "not ";
                      v7 = "yearForWeekOfYear";
                    }

                    else
                    {
                      if (!message)
                      {
                        goto LABEL_46;
                      }

                      v6 = MEMORY[0x1E696AEC0];
                      v15 = "not ";
                      v7 = "weekOfYear";
                    }
                  }

                  else
                  {
                    if (!message)
                    {
                      goto LABEL_46;
                    }

                    v6 = MEMORY[0x1E696AEC0];
                    v15 = "not ";
                    v7 = "weekOfMonth";
                  }
                }

                else
                {
                  if (!message)
                  {
                    goto LABEL_46;
                  }

                  v6 = MEMORY[0x1E696AEC0];
                  v15 = "not ";
                  v7 = "quarter";
                }
              }

              else
              {
                if (!message)
                {
                  goto LABEL_46;
                }

                v6 = MEMORY[0x1E696AEC0];
                v15 = "not ";
                v7 = "weekdayOrdinal";
              }
            }

            else
            {
              if (!message)
              {
                goto LABEL_46;
              }

              v6 = MEMORY[0x1E696AEC0];
              v15 = "not ";
              v7 = "weekday";
            }
          }

          else
          {
            if (!message)
            {
              goto LABEL_46;
            }

            v6 = MEMORY[0x1E696AEC0];
            v15 = "not ";
            v7 = "nanosecond";
          }
        }

        else
        {
          if (!message)
          {
            goto LABEL_46;
          }

          v6 = MEMORY[0x1E696AEC0];
          v15 = "not ";
          v7 = "second";
        }
      }

      else
      {
        if (!message)
        {
          goto LABEL_46;
        }

        v6 = MEMORY[0x1E696AEC0];
        v15 = "not ";
        v7 = "minute";
      }
    }

    else
    {
      if (!message)
      {
        goto LABEL_46;
      }

      v6 = MEMORY[0x1E696AEC0];
      v15 = "not ";
      v7 = "hour";
    }

    v8 = "";
    goto LABEL_11;
  }

  if (!message)
  {
    goto LABEL_46;
  }

  v6 = MEMORY[0x1E696AEC0];
  v15 = "";
  v7 = "year";
LABEL_10:
  v8 = "a valid ";
LABEL_11:
  [v6 stringWithFormat:@"Activity summary date components require %s%s to %sbe set.", v8, v7, v15];
  *message = v9 = 0;
LABEL_47:

  return v9;
}

+ (BOOL)_validateActivitySummaryDateComponentsRange:(id)range endDateComponents:(id)components errorMessage:(id *)message
{
  rangeCopy = range;
  componentsCopy = components;
  v22 = 0;
  v9 = [HKActivitySummary _validateActivitySummaryDateComponents:rangeCopy errorMessage:&v22];
  v10 = v22;
  if (v9)
  {
    v21 = v10;
    v11 = [HKActivitySummary _validateActivitySummaryDateComponents:componentsCopy errorMessage:&v21];
    v12 = v21;

    if (v11)
    {
      v13 = objc_alloc(MEMORY[0x1E695DEE8]);
      v14 = [v13 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      v15 = [rangeCopy hk_translateDateComponentsToCalendar:v14 calendarUnits:30];

      v16 = [componentsCopy hk_translateDateComponentsToCalendar:v14 calendarUnits:30];

      v17 = [v14 dateFromComponents:v16];
      v18 = [v14 dateFromComponents:v15];
      if (v17 && [v17 hk_isBeforeDate:v18])
      {
        v19 = 0;
        if (message)
        {
          *message = @"Start date must be earlier than end date.";
        }
      }

      else
      {
        v19 = 1;
      }

      componentsCopy = v16;
      rangeCopy = v15;
    }

    else if (message)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"endDateComponents: %@", v12];
      *message = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if (message)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"startDateComponents: %@", v10];
      *message = v19 = 0;
    }

    else
    {
      v19 = 0;
    }

    v12 = v10;
  }

  return v19;
}

- (double)_moveMinutesCompletionPercentage
{
  os_unfair_lock_lock(&self->_lock);
  appleMoveTime = self->_appleMoveTime;
  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  v5 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_percentageCompleteWithQuantity:appleMoveTime goalQuantity:appleMoveTimeGoal unit:v5];
  v7 = v6;

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (double)_lock_percentageCompleteWithQuantity:(id)quantity goalQuantity:(id)goalQuantity unit:(id)unit
{
  quantityCopy = quantity;
  unitCopy = unit;
  goalQuantityCopy = goalQuantity;
  os_unfair_lock_assert_owner(&self->_lock);
  [goalQuantityCopy doubleValueForUnit:unitCopy];
  v12 = v11;

  v13 = 0.0;
  if (v12 >= 0.00000011920929)
  {
    [quantityCopy doubleValueForUnit:unitCopy];
    v13 = v14 / v12;
  }

  return v13;
}

- (id)_initWithActivityCache:(id)cache shouldIncludePrivateProperties:(BOOL)properties
{
  propertiesCopy = properties;
  cacheCopy = cache;
  v7 = [(HKActivitySummary *)self init];
  if (v7)
  {
    v8 = +[HKUnit minuteUnit];
    v9 = +[HKUnit countUnit];
    [cacheCopy moveMinutes];
    [HKQuantity quantityWithUnit:v8 doubleValue:?];
    v10 = v36 = propertiesCopy;
    moveMinutesGoal = [cacheCopy moveMinutesGoal];
    [cacheCopy briskMinutes];
    v39 = v8;
    v11 = [HKQuantity quantityWithUnit:v8 doubleValue:?];
    briskMinutesGoal = [cacheCopy briskMinutesGoal];
    [cacheCopy activeHours];
    v12 = [HKQuantity quantityWithUnit:v9 doubleValue:?];
    activeHoursGoal = [cacheCopy activeHoursGoal];
    activityMoveMode = [cacheCopy activityMoveMode];
    isPaused = [cacheCopy isPaused];
    -[HKActivitySummary _setActivitySummaryIndex:](v7, "_setActivitySummaryIndex:", [cacheCopy cacheIndex]);
    energyBurned = [cacheCopy energyBurned];
    [(HKActivitySummary *)v7 setActiveEnergyBurned:energyBurned];

    [(HKActivitySummary *)v7 setAppleMoveTime:v10];
    v38 = v11;
    [(HKActivitySummary *)v7 setAppleExerciseTime:v11];
    [(HKActivitySummary *)v7 setAppleStandHours:v12];
    energyBurnedGoal = [cacheCopy energyBurnedGoal];
    [(HKActivitySummary *)v7 setActiveEnergyBurnedGoal:energyBurnedGoal];

    [(HKActivitySummary *)v7 setAppleMoveTimeGoal:moveMinutesGoal];
    [(HKActivitySummary *)v7 setExerciseTimeGoal:briskMinutesGoal];
    [(HKActivitySummary *)v7 setStandHoursGoal:activeHoursGoal];
    [(HKActivitySummary *)v7 setActivityMoveMode:activityMoveMode];
    [(HKActivitySummary *)v7 setPaused:isPaused];
    if (v36)
    {
      v37 = +[HKUnit secondUnit];
      wheelchairUse = [cacheCopy wheelchairUse];
      v19 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", v9, [cacheCopy stepCount]);
      [cacheCopy deepBreathingDuration];
      v34 = [HKQuantity quantityWithUnit:v37 doubleValue:?];
      v33 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", v9, [cacheCopy pushCount]);
      v32 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", v9, [cacheCopy flightsClimbed]);
      walkingAndRunningDistance = [cacheCopy walkingAndRunningDistance];
      [(HKActivitySummary *)v7 setDistanceWalkingRunning:walkingAndRunningDistance];

      [(HKActivitySummary *)v7 setStepCount:v19];
      energyBurnedGoalDate = [cacheCopy energyBurnedGoalDate];
      [(HKActivitySummary *)v7 _setEnergyBurnedGoalDate:energyBurnedGoalDate];

      moveMinutesGoalDate = [cacheCopy moveMinutesGoalDate];
      [(HKActivitySummary *)v7 _setMoveTimeGoalDate:moveMinutesGoalDate];

      briskMinutesGoalDate = [cacheCopy briskMinutesGoalDate];
      [(HKActivitySummary *)v7 _setBriskMinutesGoalDate:briskMinutesGoalDate];

      activeHoursGoalDate = [cacheCopy activeHoursGoalDate];
      [(HKActivitySummary *)v7 _setActiveHoursGoalDate:activeHoursGoalDate];

      startDate = [cacheCopy startDate];
      [(HKActivitySummary *)v7 _setStartDate:startDate];

      endDate = [cacheCopy endDate];
      [(HKActivitySummary *)v7 _setEndDate:endDate];

      [(HKActivitySummary *)v7 _setDeepBreathingDuration:v34];
      [(HKActivitySummary *)v7 _setPushCount:v33];
      [(HKActivitySummary *)v7 _setWheelchairUse:wheelchairUse];
      [(HKActivitySummary *)v7 _setFlightsClimbed:v32];
      _creationDate = [cacheCopy _creationDate];
      [(HKActivitySummary *)v7 _setCreationDate:_creationDate];

      dailyEnergyBurnedStatistics = [cacheCopy dailyEnergyBurnedStatistics];
      [(HKActivitySummary *)v7 _setDailyEnergyBurnedStatistics:dailyEnergyBurnedStatistics];

      dailyMoveMinutesStatistics = [cacheCopy dailyMoveMinutesStatistics];
      [(HKActivitySummary *)v7 _setDailyMoveTimeStatistics:dailyMoveMinutesStatistics];

      dailyBriskMinutesStatistics = [cacheCopy dailyBriskMinutesStatistics];
      [(HKActivitySummary *)v7 _setDailyBriskMinutesStatistics:dailyBriskMinutesStatistics];
    }
  }

  return v7;
}

+ (id)_mostSignificantCacheAmongCaches:(id)caches
{
  v90 = *MEMORY[0x1E69E9840];
  cachesCopy = caches;
  v5 = [cachesCopy hk_filter:&__block_literal_global_101];
  v83 = v5;
  v84 = cachesCopy;
  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = cachesCopy;
  }

  v7 = v6;
  v8 = [self _mostRecentlyCreatedCacheAmongCaches:v7];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v86;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v86 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v85 + 1) + 8 * i);
        energyBurnedGoalDate = [v15 energyBurnedGoalDate];
        [energyBurnedGoalDate timeIntervalSinceReferenceDate];
        v18 = v17;
        energyBurnedGoalDate2 = [v8 energyBurnedGoalDate];
        [energyBurnedGoalDate2 timeIntervalSinceReferenceDate];
        v21 = v20;

        if (v18 > v21)
        {
          energyBurnedGoal = [v15 energyBurnedGoal];
          [v8 _setEnergyBurnedGoalOnly:energyBurnedGoal];

          energyBurnedGoalDate3 = [v15 energyBurnedGoalDate];
          [v8 _setEnergyBurnedGoalDateOnly:energyBurnedGoalDate3];
        }

        moveMinutesGoalDate = [v15 moveMinutesGoalDate];
        [moveMinutesGoalDate timeIntervalSinceReferenceDate];
        v26 = v25;
        moveMinutesGoalDate2 = [v8 moveMinutesGoalDate];
        [moveMinutesGoalDate2 timeIntervalSinceReferenceDate];
        v29 = v28;

        if (v26 > v29)
        {
          moveMinutesGoal = [v15 moveMinutesGoal];
          [v8 _setMoveMinutesGoalOnly:moveMinutesGoal];

          moveMinutesGoalDate3 = [v15 moveMinutesGoalDate];
          [v8 _setMoveMinutesGoalDateOnly:moveMinutesGoalDate3];
        }

        briskMinutesGoalDate = [v15 briskMinutesGoalDate];
        [briskMinutesGoalDate timeIntervalSinceReferenceDate];
        v34 = v33;
        briskMinutesGoalDate2 = [v8 briskMinutesGoalDate];
        [briskMinutesGoalDate2 timeIntervalSinceReferenceDate];
        v37 = v36;

        if (v34 > v37)
        {
          briskMinutesGoal = [v15 briskMinutesGoal];
          [v8 _setBriskMinutesGoalOnly:briskMinutesGoal];

          briskMinutesGoalDate3 = [v15 briskMinutesGoalDate];
          [v8 _setBriskMinutesGoalDateOnly:briskMinutesGoalDate3];
        }

        activeHoursGoalDate = [v15 activeHoursGoalDate];
        [activeHoursGoalDate timeIntervalSinceReferenceDate];
        v42 = v41;
        activeHoursGoalDate2 = [v8 activeHoursGoalDate];
        [activeHoursGoalDate2 timeIntervalSinceReferenceDate];
        v45 = v44;

        if (v42 > v45)
        {
          activeHoursGoal = [v15 activeHoursGoal];
          [v8 _setActiveHoursGoalOnly:activeHoursGoal];

          activeHoursGoalDate3 = [v15 activeHoursGoalDate];
          [v8 _setActiveHoursGoalDateOnly:activeHoursGoalDate3];
        }

        energyBurned = [v15 energyBurned];
        v49 = +[HKUnit kilocalorieUnit];
        [energyBurned doubleValueForUnit:v49];
        v51 = v50;

        energyBurned2 = [v8 energyBurned];
        v53 = +[HKUnit kilocalorieUnit];
        [energyBurned2 doubleValueForUnit:v53];
        v55 = v54;

        if (v51 > v55)
        {
          energyBurned3 = [v15 energyBurned];
          [v8 _setEnergyBurned:energyBurned3];
        }

        [v15 moveMinutes];
        v58 = v57;
        [v8 moveMinutes];
        if (v58 > v59)
        {
          [v15 moveMinutes];
          [v8 _setMoveMinutes:?];
        }

        [v15 briskMinutes];
        v61 = v60;
        [v8 briskMinutes];
        if (v61 > v62)
        {
          [v15 briskMinutes];
          [v8 _setBriskMinutes:?];
        }

        [v15 activeHours];
        v64 = v63;
        [v8 activeHours];
        if (v64 > v65)
        {
          [v15 activeHours];
          [v8 _setActiveHours:?];
        }

        stepCount = [v15 stepCount];
        if (stepCount > [v8 stepCount])
        {
          [v8 _setStepCount:{objc_msgSend(v15, "stepCount")}];
        }

        walkingAndRunningDistance = [v15 walkingAndRunningDistance];
        v68 = +[HKUnit meterUnit];
        [walkingAndRunningDistance doubleValueForUnit:v68];
        v70 = v69;

        walkingAndRunningDistance2 = [v8 walkingAndRunningDistance];
        v72 = +[HKUnit meterUnit];
        [walkingAndRunningDistance2 doubleValueForUnit:v72];
        v74 = v73;

        if (v70 > v74)
        {
          walkingAndRunningDistance3 = [v15 walkingAndRunningDistance];
          [v8 _setWalkingAndRunningDistance:walkingAndRunningDistance3];
        }

        pushCount = [v15 pushCount];
        if (pushCount > [v8 pushCount])
        {
          [v8 _setPushCount:{objc_msgSend(v15, "pushCount")}];
        }

        [v15 deepBreathingDuration];
        v78 = v77;
        [v8 deepBreathingDuration];
        if (v78 > v79)
        {
          [v15 deepBreathingDuration];
          [v8 _setDeepBreathingDuration:?];
        }

        flightsClimbed = [v15 flightsClimbed];
        if (flightsClimbed > [v8 flightsClimbed])
        {
          [v8 _setFlightsClimbed:{objc_msgSend(v15, "flightsClimbed")}];
        }

        v12 |= [v15 isPaused];
      }

      v11 = [v9 countByEnumeratingWithState:&v85 objects:v89 count:16];
    }

    while (v11);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  [v8 _setPaused:v12 & 1];
  v81 = *MEMORY[0x1E69E9840];

  return v8;
}

BOOL __54__HKActivitySummary__mostSignificantCacheAmongCaches___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 briskMinutesGoal];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [v2 activeHoursGoal];
    v4 = v5 != 0;
  }

  return v4;
}

+ (id)_mostRecentlyCreatedCacheAmongCaches:(id)caches
{
  v24 = *MEMORY[0x1E69E9840];
  cachesCopy = caches;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [cachesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(cachesCopy);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (v6)
        {
          _creationDate = [*(*(&v19 + 1) + 8 * i) _creationDate];
          [_creationDate timeIntervalSinceReferenceDate];
          v12 = v11;
          _creationDate2 = [v6 _creationDate];
          [_creationDate2 timeIntervalSinceReferenceDate];
          v15 = v14;

          if (v12 > v15)
          {
            v16 = v9;

            v6 = v16;
          }
        }

        else
        {
          v6 = v9;
        }
      }

      v5 = [cachesCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v6;
}

@end