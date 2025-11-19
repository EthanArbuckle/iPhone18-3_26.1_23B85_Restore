@interface HKActivitySummary
+ (BOOL)_validateActivitySummaryDateComponents:(id)a3 errorMessage:(id *)a4;
+ (BOOL)_validateActivitySummaryDateComponentsRange:(id)a3 endDateComponents:(id)a4 errorMessage:(id *)a5;
+ (id)_mostRecentlyCreatedCacheAmongCaches:(id)a3;
+ (id)_mostSignificantCacheAmongCaches:(id)a3;
- (BOOL)_allFieldsAreEqual:(id)a3;
- (BOOL)_hasAppleMoveTimeGoal;
- (BOOL)_hasEnergyBurnedGoal;
- (BOOL)_hasExerciseGoal;
- (BOOL)_hasMoveGoal;
- (BOOL)_hasStandHoursGoal;
- (BOOL)_isStandalonePhoneSummary;
- (BOOL)_lock_isEqual:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPaused;
- (BOOL)paused;
- (HKActivitySummary)init;
- (HKActivitySummary)initWithCoder:(id)a3;
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
- (double)_lock_percentageCompleteWithQuantity:(id)a3 goalQuantity:(id)a4 unit:(id)a5;
- (double)_moveMinutesCompletionPercentage;
- (double)_standHoursCompletionPercentage;
- (id)_decodeQuantityFromCoder:(id)a3 forKey:(id)a4 unit:(id)a5;
- (id)_initWithActivityCache:(id)a3 shouldIncludePrivateProperties:(BOOL)a4;
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_wheelchairUse;
- (unint64_t)hash;
- (void)_lock_encodeQuantity:(id)a3 withCoder:(id)a4 key:(id)a5 unit:(id)a6;
- (void)_setActivitySummaryIndex:(int64_t)a3;
- (void)_setDeepBreathingDuration:(id)a3;
- (void)_setFlightsClimbed:(id)a3;
- (void)_setGregorianDateComponents:(id)a3;
- (void)_setPushCount:(id)a3;
- (void)_setWheelchairUse:(int64_t)a3;
- (void)_validateQuantityAssignment:(id)a3 expectedUnit:(id)a4 propertyName:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)setActiveEnergyBurned:(HKQuantity *)activeEnergyBurned;
- (void)setActiveEnergyBurnedGoal:(HKQuantity *)activeEnergyBurnedGoal;
- (void)setActivityMoveMode:(HKActivityMoveMode)activityMoveMode;
- (void)setAppleExerciseTime:(HKQuantity *)appleExerciseTime;
- (void)setAppleExerciseTimeGoal:(HKQuantity *)appleExerciseTimeGoal;
- (void)setAppleMoveTime:(HKQuantity *)appleMoveTime;
- (void)setAppleMoveTimeGoal:(HKQuantity *)appleMoveTimeGoal;
- (void)setAppleStandHours:(HKQuantity *)appleStandHours;
- (void)setAppleStandHoursGoal:(HKQuantity *)appleStandHoursGoal;
- (void)setDeprecatedPauseForInternalSwiftClient:(BOOL)a3;
- (void)setDistanceWalkingRunning:(id)a3;
- (void)setExerciseTimeGoal:(HKQuantity *)exerciseTimeGoal;
- (void)setPaused:(BOOL)a3;
- (void)setStandHoursGoal:(HKQuantity *)standHoursGoal;
- (void)setStepCount:(id)a3;
@end

@implementation HKActivitySummary

- (HKQuantity)activeEnergyBurned
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_activeEnergyBurned];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)appleExerciseTime
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_appleExerciseTime];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)appleStandHours
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_appleStandHours];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)activeEnergyBurnedGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_activeEnergyBurnedGoal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)appleExerciseTimeGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_appleExerciseTimeGoal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)appleStandHoursGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_appleStandHoursGoal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)distanceWalkingRunning
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_distanceWalkingRunning];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)stepCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_stepCount];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)_deepBreathingDuration
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_deepBreathingDuration];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)_pushCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_pushCount];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HKQuantity)_flightsClimbed
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _lock_flightsClimbed];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
    v68 = [(HKActivitySummary *)self _lock_stepCount];
    v66 = +[HKUnit countUnit];
    [v68 doubleValueForUnit:v66];
    v58 = [v7 numberWithDouble:?];
    v8 = MEMORY[0x1E696AD98];
    v64 = [(HKActivitySummary *)self _lock_distanceWalkingRunning];
    v62 = +[HKUnit meterUnit];
    [v64 doubleValueForUnit:v62];
    v9 = [v8 numberWithDouble:?];
    v10 = MEMORY[0x1E696AD98];
    v60 = [(HKActivitySummary *)self _lock_pushCount];
    v56 = +[HKUnit countUnit];
    [v60 doubleValueForUnit:v56];
    v11 = [v10 numberWithDouble:?];
    v12 = MEMORY[0x1E696AD98];
    v13 = [(HKActivitySummary *)self _lock_flightsClimbed];
    v14 = +[HKUnit countUnit];
    [v13 doubleValueForUnit:v14];
    v15 = [v12 numberWithDouble:?];
    v16 = MEMORY[0x1E696AD98];
    v17 = [(HKActivitySummary *)self _lock_deepBreathingDuration];
    v18 = +[HKUnit secondUnit];
    [v17 doubleValueForUnit:v18];
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
  v51 = [(NSDateComponents *)self->_dateComponents year];
  v50 = [(NSDateComponents *)self->_dateComponents month];
  v47 = [(NSDateComponents *)self->_dateComponents day];
  v67 = [*(v4 + 3480) numberWithInteger:self->_activityMoveMode];
  v20 = @"NO";
  if (self->_paused)
  {
    v20 = @"YES";
  }

  v46 = v20;
  v21 = *(v4 + 3480);
  v59 = [(HKActivitySummary *)self _lock_activeEnergyBurned];
  v57 = [(__objc2_class *)v5[198] kilocalorieUnit];
  [v59 doubleValueForUnit:v57];
  v65 = [v21 numberWithDouble:?];
  v22 = *(v4 + 3480);
  v55 = [(HKActivitySummary *)self _lock_activeEnergyBurnedGoal];
  v54 = [(__objc2_class *)v5[198] kilocalorieUnit];
  [v55 doubleValueForUnit:v54];
  v63 = [v22 numberWithDouble:?];
  v23 = *(v4 + 3480);
  v49 = [(HKActivitySummary *)self _lock_appleMoveTime];
  v48 = [(__objc2_class *)v5[198] minuteUnit];
  [v49 doubleValueForUnit:v48];
  v61 = [v23 numberWithDouble:?];
  v24 = *(v4 + 3480);
  v45 = [(HKActivitySummary *)self _lock_appleMoveTimeGoal];
  v44 = [(__objc2_class *)v5[198] minuteUnit];
  [v45 doubleValueForUnit:v44];
  v39 = [v24 numberWithDouble:?];
  v25 = *(v4 + 3480);
  v43 = [(HKActivitySummary *)self _lock_appleExerciseTime];
  v42 = [(__objc2_class *)v5[198] minuteUnit];
  [v43 doubleValueForUnit:v42];
  v26 = [v25 numberWithDouble:?];
  v27 = *(v4 + 3480);
  v41 = [(HKActivitySummary *)self _lock_appleExerciseTimeGoal];
  v40 = [(__objc2_class *)v5[198] minuteUnit];
  [v41 doubleValueForUnit:v40];
  v28 = [v27 numberWithDouble:?];
  v29 = v5;
  v30 = *(v4 + 3480);
  v31 = [(HKActivitySummary *)self _lock_appleStandHours];
  v32 = [(__objc2_class *)v29[198] countUnit];
  [v31 doubleValueForUnit:v32];
  v33 = [v30 numberWithDouble:?];
  v34 = *(v4 + 3480);
  v35 = [(HKActivitySummary *)self _lock_appleStandHoursGoal];
  v36 = [(__objc2_class *)v29[198] countUnit];
  [v35 doubleValueForUnit:v36];
  v37 = [v34 numberWithDouble:?];
  v53 = [v52 stringWithFormat:@"<%@: Date=(Year: %zd, Month: %zd, Day: %zd)%@ Move Mode=(%@) Paused=(%@) Active Energy Burned=(%@/%@) Apple Move Minutes=(%@/%@) Apple Exercise Minutes=(%@/%@) Apple Stand Hours=(%@/%@)%@>", v69, v51, v50, v47, v72, v67, v46, v65, v63, v61, v39, v26, v28, v33, v37, v71];

  os_unfair_lock_unlock(&self->_lock);

  return v53;
}

- (BOOL)_hasMoveGoal
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(HKActivitySummary *)self _hasEnergyBurnedGoal];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
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

- (BOOL)_lock_isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if (v5)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && self->_activitySummaryIndex == v6->_activitySummaryIndex)
      {
        v7 = [(HKActivitySummary *)self _lock_activeEnergyBurned];
        v8 = [(HKActivitySummary *)v6 _lock_activeEnergyBurned];
        v84 = v7 != v8;
        if (v7 != v8)
        {
          v86 = [(HKActivitySummary *)v6 _lock_activeEnergyBurned];
          if (!v86)
          {
            v11 = 0;

            goto LABEL_106;
          }

          v9 = [(HKActivitySummary *)self _lock_activeEnergyBurned];
          v10 = [(HKActivitySummary *)v6 _lock_activeEnergyBurned];
          if (![v9 isEqual:v10])
          {
            v11 = 0;
LABEL_56:

LABEL_105:
            goto LABEL_106;
          }

          v80 = v10;
          v81 = v9;
        }

        v12 = [(HKActivitySummary *)self _lock_appleMoveTime];
        v13 = [(HKActivitySummary *)v6 _lock_appleMoveTime];
        if (v12 != v13)
        {
          v14 = [(HKActivitySummary *)v6 _lock_appleMoveTime];
          if (!v14)
          {

            v11 = 0;
            if (v7 == v8)
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

          v3 = v14;
          v15 = [(HKActivitySummary *)self _lock_appleMoveTime];
          v78 = [(HKActivitySummary *)v6 _lock_appleMoveTime];
          v79 = v15;
          if (![v15 isEqual:?])
          {
            v11 = 0;
LABEL_54:

            goto LABEL_55;
          }
        }

        v16 = [(HKActivitySummary *)self _lock_appleExerciseTime];
        [(HKActivitySummary *)v6 _lock_appleExerciseTime];
        v83 = v82 = v16;
        v17 = v16 != v83;
        if (v16 != v83)
        {
          v18 = [(HKActivitySummary *)v6 _lock_appleExerciseTime];
          if (!v18)
          {

            v11 = 0;
            if (v12 != v13)
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

          v73 = v18;
          v19 = [(HKActivitySummary *)self _lock_appleExerciseTime];
          v74 = [(HKActivitySummary *)v6 _lock_appleExerciseTime];
          v75 = v19;
          if (![v19 isEqual:?])
          {
            v11 = 0;
            v20 = v82;
            goto LABEL_53;
          }
        }

        v21 = [(HKActivitySummary *)self _lock_appleStandHours];
        v77 = [(HKActivitySummary *)v6 _lock_appleStandHours];
        v69 = v21 != v77;
        if (v21 == v77)
        {
          v70 = v17;
          v68 = v3;
        }

        else
        {
          v22 = [(HKActivitySummary *)v6 _lock_appleStandHours];
          if (!v22)
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
          v65 = v22;
          v23 = [(HKActivitySummary *)self _lock_appleStandHours];
          v66 = [(HKActivitySummary *)v6 _lock_appleStandHours];
          v67 = v23;
          if (![v23 isEqual:?])
          {
            v76 = v21;
            v11 = 0;
            v20 = v82;
            goto LABEL_52;
          }

          v68 = v3;
        }

        v25 = [(HKActivitySummary *)self _lock_activeEnergyBurnedGoal];
        [(HKActivitySummary *)v6 _lock_activeEnergyBurnedGoal];
        v72 = v71 = v25;
        v26 = v25 != v72;
        v76 = v21;
        if (v25 != v72)
        {
          v27 = [(HKActivitySummary *)v6 _lock_activeEnergyBurnedGoal];
          if (!v27)
          {

            v37 = v21;
            v11 = 0;
            v3 = v68;
            v20 = v82;
            v30 = v70;
            if (v37 != v77)
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

              v24 = v12 != v13;
              if (v12 != v13)
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

          v63 = v27;
          v28 = [(HKActivitySummary *)self _lock_activeEnergyBurnedGoal];
          v29 = [(HKActivitySummary *)v6 _lock_activeEnergyBurnedGoal];
          v64 = v28;
          if (![v28 isEqual:v29])
          {
            v11 = 0;
            v20 = v82;
LABEL_51:

            v3 = v68;
            v30 = v70;
            if (v76 == v77)
            {
              goto LABEL_96;
            }

LABEL_52:

            if (v20 != v83)
            {
LABEL_53:

              if (v12 != v13)
              {
                goto LABEL_54;
              }

LABEL_102:

              if (v7 == v8)
              {
                goto LABEL_104;
              }

              goto LABEL_103;
            }

            goto LABEL_99;
          }

          v60 = v29;
        }

        v31 = [(HKActivitySummary *)self _lock_appleMoveTimeGoal];
        v32 = [(HKActivitySummary *)v6 _lock_appleMoveTimeGoal];
        v33 = v32;
        if (v31 == v32)
        {
          v62 = v32;
        }

        else
        {
          v34 = [(HKActivitySummary *)v6 _lock_appleMoveTimeGoal];
          if (!v34)
          {

            v11 = 0;
            v20 = v82;
            if (v71 != v72)
            {
              goto LABEL_88;
            }

            goto LABEL_91;
          }

          v59 = v34;
          v62 = v33;
          v35 = [(HKActivitySummary *)self _lock_appleMoveTimeGoal];
          v57 = [(HKActivitySummary *)v6 _lock_appleMoveTimeGoal];
          v58 = v35;
          if (![v35 isEqual:?])
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

        v39 = [(HKActivitySummary *)self _lock_appleExerciseTimeGoal];
        v61 = [(HKActivitySummary *)v6 _lock_appleExerciseTimeGoal];
        if (v39 == v61)
        {
          v56 = v31;
        }

        else
        {
          v40 = [(HKActivitySummary *)v6 _lock_appleExerciseTimeGoal];
          if (!v40)
          {
            v11 = 0;
            v20 = v82;
            goto LABEL_83;
          }

          v53 = v39;
          v55 = v40;
          v41 = [(HKActivitySummary *)self _lock_appleExerciseTimeGoal];
          v42 = [(HKActivitySummary *)v6 _lock_appleExerciseTimeGoal];
          if (([v41 isEqual:v42] & 1) == 0)
          {

            v11 = 0;
            v48 = v62;
LABEL_70:
            if (v31 != v48)
            {
            }

            if (v71 != v72)
            {
            }

            if (v76 != v77)
            {
            }

            if (v82 != v83)
            {
            }

            if (v12 != v13)
            {
            }

LABEL_55:

            v10 = v80;
            v9 = v81;
            if (v7 != v8)
            {
              goto LABEL_56;
            }

LABEL_106:

            goto LABEL_107;
          }

          v56 = v31;
          v51 = v42;
          v52 = v41;
          v39 = v53;
        }

        v43 = [(HKActivitySummary *)self _lock_appleStandHoursGoal];
        v44 = [(HKActivitySummary *)v6 _lock_appleStandHoursGoal];
        v11 = v43 == v44;
        if (v43 == v44)
        {
        }

        else
        {
          v54 = v44;
          v45 = [(HKActivitySummary *)v6 _lock_appleStandHoursGoal];
          if (v45)
          {
            v85 = v45;
            v46 = [(HKActivitySummary *)self _lock_appleStandHoursGoal];
            v47 = [(HKActivitySummary *)v6 _lock_appleStandHoursGoal];
            v11 = [v46 isEqual:v47];

            if (v39 != v61)
            {
            }

            v48 = v62;
            v31 = v56;
            goto LABEL_70;
          }
        }

        if (v39 == v61)
        {

          v33 = v62;
          v31 = v56;
          v49 = v56 == v62;
          v20 = v82;
          goto LABEL_85;
        }

        v20 = v82;
        v31 = v56;
LABEL_83:

        v33 = v62;
        v49 = v31 == v62;
LABEL_85:
        v36 = v72;
        if (!v49)
        {
          goto LABEL_86;
        }

        v29 = v60;
        if (v71 == v72)
        {
LABEL_93:

          v3 = v68;
          v38 = v69;
          v30 = v70;
          if (v76 != v77)
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

- (BOOL)isEqual:(id)a3
{
  v4 = [a3 copy];
  os_unfair_lock_lock(&self->_lock);
  v5 = [(HKActivitySummary *)self _lock_isEqual:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)_allFieldsAreEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v20 = 1;
    goto LABEL_82;
  }

  if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

  v8 = [(HKActivitySummary *)self _lock_distanceWalkingRunning];
  v9 = [v6 _lock_distanceWalkingRunning];
  LODWORD(v145[5]) = v8 != v9;
  v139 = v9;
  v140 = v8;
  if (v8 != v9)
  {
    v10 = [v6 _lock_distanceWalkingRunning];
    if (!v10)
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

    v136 = v10;
    v11 = [(HKActivitySummary *)self _lock_distanceWalkingRunning];
    v132 = [v6 _lock_distanceWalkingRunning];
    v133 = v11;
    if (![v11 isEqual:?])
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

  v33 = [(HKActivitySummary *)self _lock_stepCount];
  v34 = [v6 _lock_stepCount];
  HIDWORD(v145[4]) = v33 != v34;
  v134 = v34;
  v135 = v33;
  if (v33 != v34)
  {
    v35 = [v6 _lock_stepCount];
    if (!v35)
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

    v131 = v35;
    v36 = [(HKActivitySummary *)self _lock_stepCount];
    v127 = [v6 _lock_stepCount];
    v128 = v36;
    if (![v36 isEqual:?])
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

  v37 = [(HKActivitySummary *)self _lock_deepBreathingDuration];
  v38 = [v6 _lock_deepBreathingDuration];
  LODWORD(v145[4]) = v37 != v38;
  v129 = v38;
  v130 = v37;
  if (v37 != v38)
  {
    v39 = [v6 _lock_deepBreathingDuration];
    if (!v39)
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

    v141 = v39;
    v40 = [(HKActivitySummary *)self _lock_deepBreathingDuration];
    v123 = [v6 _lock_deepBreathingDuration];
    v124 = v40;
    if (![v40 isEqual:?])
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

  v41 = [(HKActivitySummary *)self _startDate];
  v125 = [v6 _startDate];
  v126 = v41;
  v42 = v41 != v125;
  if (v41 != v125)
  {
    v43 = [v6 _startDate];
    if (!v43)
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

    v122 = v43;
    v44 = [(HKActivitySummary *)self _startDate];
    v118 = [v6 _startDate];
    v119 = v44;
    if (![v44 isEqual:?])
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

  v45 = [(HKActivitySummary *)self _endDate];
  v120 = [v6 _endDate];
  HIDWORD(v145[3]) = v45 != v120;
  LODWORD(v145[0]) = v42;
  v121 = v45;
  if (v45 != v120)
  {
    v46 = [v6 _endDate];
    if (!v46)
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

    v117 = v46;
    v47 = [(HKActivitySummary *)self _endDate];
    v113 = [v6 _endDate];
    v114 = v47;
    if (![v47 isEqual:?])
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

  v49 = [(HKActivitySummary *)self _creationDate];
  v115 = [v6 _creationDate];
  LODWORD(v145[3]) = v49 != v115;
  v116 = v49;
  if (v49 != v115)
  {
    v50 = [v6 _creationDate];
    if (!v50)
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

    v112 = v50;
    v51 = [(HKActivitySummary *)self _creationDate];
    v108 = [v6 _creationDate];
    v109 = v51;
    if (![v51 isEqual:?])
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

  v54 = [(HKActivitySummary *)self _energyBurnedGoalDate];
  v110 = [v6 _energyBurnedGoalDate];
  v111 = v54;
  v55 = v54 == v110;
  v56 = v54 != v110;
  if (v55)
  {
    HIDWORD(v145[2]) = v56;
  }

  else
  {
    v57 = [v6 _energyBurnedGoalDate];
    if (!v57)
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
    v107 = v57;
    v58 = [(HKActivitySummary *)self _energyBurnedGoalDate];
    v103 = [v6 _energyBurnedGoalDate];
    v104 = v58;
    if (![v58 isEqual:?])
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

  v61 = [(HKActivitySummary *)self _moveTimeGoalDate];
  v62 = [v6 _moveTimeGoalDate];
  LODWORD(v145[2]) = v61 != v62;
  v105 = v62;
  v106 = v61;
  if (v61 != v62)
  {
    v63 = [v6 _moveTimeGoalDate];
    if (!v63)
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

    v102 = v63;
    v64 = [(HKActivitySummary *)self _moveTimeGoalDate];
    v98 = [v6 _moveTimeGoalDate];
    v99 = v64;
    if (![v64 isEqual:?])
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

  v66 = [(HKActivitySummary *)self _briskMinutesGoalDate];
  v100 = [v6 _briskMinutesGoalDate];
  HIDWORD(v145[1]) = v66 != v100;
  v101 = v66;
  if (v66 != v100)
  {
    v67 = [v6 _briskMinutesGoalDate];
    if (!v67)
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

    v97 = v67;
    v68 = [(HKActivitySummary *)self _briskMinutesGoalDate];
    v93 = [v6 _briskMinutesGoalDate];
    v94 = v68;
    if (![v68 isEqual:?])
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

  v70 = [(HKActivitySummary *)self _activeHoursGoalDate];
  v71 = [v6 _activeHoursGoalDate];
  LODWORD(v145[1]) = v70 != v71;
  v95 = v71;
  v96 = v70;
  if (v70 != v71)
  {
    v72 = [v6 _activeHoursGoalDate];
    if (!v72)
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

    v92 = v72;
    v73 = [(HKActivitySummary *)self _activeHoursGoalDate];
    v88 = [v6 _activeHoursGoalDate];
    v89 = v73;
    if (![v73 isEqual:?])
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

  v74 = [(HKActivitySummary *)self _lock_pushCount];
  v90 = [v6 _lock_pushCount];
  HIDWORD(v145[0]) = v74 != v90;
  v91 = v74;
  if (v74 != v90)
  {
    v75 = [v6 _lock_pushCount];
    if (!v75)
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

    v87 = v75;
    v76 = [(HKActivitySummary *)self _lock_pushCount];
    v83 = [v6 _lock_pushCount];
    v84 = v76;
    if (![v76 isEqual:?])
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

  v77 = [(HKActivitySummary *)self _lock_flightsClimbed];
  v85 = [v6 _lock_flightsClimbed];
  v86 = v77;
  v138 = v77 != v85;
  if (v77 == v85)
  {
    goto LABEL_143;
  }

  v78 = [v6 _lock_flightsClimbed];
  v7 = HIDWORD(v145[2]);
  if (!v78)
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

  v82 = v78;
  v79 = [(HKActivitySummary *)self _lock_flightsClimbed];
  v80 = [v6 _lock_flightsClimbed];
  v81 = v79;
  if ([v79 isEqual:?])
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
  v7 = v80;
LABEL_12:
  if (v19)
  {
    v137 = v5;
    v22 = self;
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
    self = v22;
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

- (id)copyWithZone:(_NSZone *)a3
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

- (HKActivitySummary)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKActivitySummary *)self init];
  if (v5)
  {
    -[HKActivitySummary _setActivitySummaryIndex:](v5, "_setActivitySummaryIndex:", [v4 decodeInt64ForKey:@"index"]);
    v6 = objc_opt_class();
    v7 = objc_alloc(MEMORY[0x1E695DFD8]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    v10 = +[HKUnit kilocalorieUnit];
    v11 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"activeEnergy" unit:v10];
    activeEnergyBurned = v5->_activeEnergyBurned;
    v5->_activeEnergyBurned = v11;

    v13 = +[HKUnit minuteUnit];
    v14 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"moveTime" unit:v13];
    appleMoveTime = v5->_appleMoveTime;
    v5->_appleMoveTime = v14;

    v16 = +[HKUnit minuteUnit];
    v17 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"exerciseTime" unit:v16];
    appleExerciseTime = v5->_appleExerciseTime;
    v5->_appleExerciseTime = v17;

    v19 = +[HKUnit countUnit];
    v20 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"standHours" unit:v19];
    appleStandHours = v5->_appleStandHours;
    v5->_appleStandHours = v20;

    v22 = +[HKUnit meterUnit];
    v23 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"distanceWalking" unit:v22];
    distanceWalkingRunning = v5->_distanceWalkingRunning;
    v5->_distanceWalkingRunning = v23;

    v25 = +[HKUnit countUnit];
    v26 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"stepCount" unit:v25];
    stepCount = v5->_stepCount;
    v5->_stepCount = v26;

    v28 = +[HKUnit kilocalorieUnit];
    v29 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"energyBurnedGoal" unit:v28];
    activeEnergyBurnedGoal = v5->_activeEnergyBurnedGoal;
    v5->_activeEnergyBurnedGoal = v29;

    v31 = +[HKUnit minuteUnit];
    v32 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"moveMinutesGoal" unit:v31];
    appleMoveTimeGoal = v5->_appleMoveTimeGoal;
    v5->_appleMoveTimeGoal = v32;

    v34 = +[HKUnit countUnit];
    v35 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"activeHoursGoal" unit:v34];
    appleStandHoursGoal = v5->_appleStandHoursGoal;
    v5->_appleStandHoursGoal = v35;

    v37 = +[HKUnit minuteUnit];
    v38 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"briskMinutesGoal" unit:v37];
    appleExerciseTimeGoal = v5->_appleExerciseTimeGoal;
    v5->_appleExerciseTimeGoal = v38;

    v40 = +[HKUnit secondUnit];
    v41 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"deepBreathingDuration" unit:v40];
    deepBreathingDuration = v5->_deepBreathingDuration;
    v5->_deepBreathingDuration = v41;

    v43 = +[HKUnit countUnit];
    v44 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"pushCount" unit:v43];
    pushCount = v5->_pushCount;
    v5->_pushCount = v44;

    v46 = +[HKUnit countUnit];
    v47 = [(HKActivitySummary *)v5 _decodeQuantityFromCoder:v4 forKey:@"flightsClimbed" unit:v46];
    flightsClimbed = v5->_flightsClimbed;
    v5->_flightsClimbed = v47;

    v5->_wheelchairUse = [v4 decodeIntegerForKey:@"wheelchairUse"];
    v49 = [v4 decodeObjectOfClasses:v9 forKey:@"dailyEnergyBurnedStatistics"];
    dailyEnergyBurnedStatistics = v5->_dailyEnergyBurnedStatistics;
    v5->_dailyEnergyBurnedStatistics = v49;

    v51 = [v4 decodeObjectOfClasses:v9 forKey:@"dailyMoveMinutesStatistics"];
    dailyMoveTimeStatistics = v5->_dailyMoveTimeStatistics;
    v5->_dailyMoveTimeStatistics = v51;

    v53 = [v4 decodeObjectOfClasses:v9 forKey:@"dailyBriskMinutesStatistics"];
    dailyBriskMinutesStatistics = v5->_dailyBriskMinutesStatistics;
    v5->_dailyBriskMinutesStatistics = v53;

    v5->_dataLoading = [v4 decodeBoolForKey:@"dataLoading"];
    v55 = [v4 decodeObjectOfClass:v6 forKey:@"energyBurnedGoalDate"];
    energyBurnedGoalDate = v5->_energyBurnedGoalDate;
    v5->_energyBurnedGoalDate = v55;

    v57 = [v4 decodeObjectOfClass:v6 forKey:@"moveTimeGoalDate"];
    moveTimeGoalDate = v5->_moveTimeGoalDate;
    v5->_moveTimeGoalDate = v57;

    v59 = [v4 decodeObjectOfClass:v6 forKey:@"briskMinutesGoalDate"];
    briskMinutesGoalDate = v5->_briskMinutesGoalDate;
    v5->_briskMinutesGoalDate = v59;

    v61 = [v4 decodeObjectOfClass:v6 forKey:@"activeHoursGoalDate"];
    activeHoursGoalDate = v5->_activeHoursGoalDate;
    v5->_activeHoursGoalDate = v61;

    v63 = [v4 decodeObjectOfClass:v6 forKey:@"creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v63;

    v65 = [v4 decodeObjectOfClass:v6 forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v65;

    v67 = [v4 decodeObjectOfClass:v6 forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v67;

    v5->_activityMoveMode = [v4 decodeIntegerForKey:@"activityMoveMode"];
    v5->_paused = [v4 decodeBoolForKey:@"paused"];
  }

  return v5;
}

- (id)_decodeQuantityFromCoder:(id)a3 forKey:(id)a4 unit:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 containsValueForKey:v8])
  {
    [v7 decodeDoubleForKey:v8];
    v10 = [HKQuantity quantityWithUnit:v9 doubleValue:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeInt64:self->_activitySummaryIndex forKey:@"index"];
  activeEnergyBurned = self->_activeEnergyBurned;
  v6 = +[HKUnit kilocalorieUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:activeEnergyBurned withCoder:v4 key:@"activeEnergy" unit:v6];

  appleMoveTime = self->_appleMoveTime;
  v8 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleMoveTime withCoder:v4 key:@"moveTime" unit:v8];

  appleExerciseTime = self->_appleExerciseTime;
  v10 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleExerciseTime withCoder:v4 key:@"exerciseTime" unit:v10];

  appleStandHours = self->_appleStandHours;
  v12 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleStandHours withCoder:v4 key:@"standHours" unit:v12];

  distanceWalkingRunning = self->_distanceWalkingRunning;
  v14 = +[HKUnit meterUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:distanceWalkingRunning withCoder:v4 key:@"distanceWalking" unit:v14];

  stepCount = self->_stepCount;
  v16 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:stepCount withCoder:v4 key:@"stepCount" unit:v16];

  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  v18 = +[HKUnit kilocalorieUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:activeEnergyBurnedGoal withCoder:v4 key:@"energyBurnedGoal" unit:v18];

  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  v20 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleMoveTimeGoal withCoder:v4 key:@"moveMinutesGoal" unit:v20];

  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  v22 = +[HKUnit minuteUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleExerciseTimeGoal withCoder:v4 key:@"briskMinutesGoal" unit:v22];

  appleStandHoursGoal = self->_appleStandHoursGoal;
  v24 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:appleStandHoursGoal withCoder:v4 key:@"activeHoursGoal" unit:v24];

  deepBreathingDuration = self->_deepBreathingDuration;
  v26 = +[HKUnit secondUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:deepBreathingDuration withCoder:v4 key:@"deepBreathingDuration" unit:v26];

  pushCount = self->_pushCount;
  v28 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:pushCount withCoder:v4 key:@"pushCount" unit:v28];

  flightsClimbed = self->_flightsClimbed;
  v30 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _lock_encodeQuantity:flightsClimbed withCoder:v4 key:@"flightsClimbed" unit:v30];

  [v4 encodeInteger:self->_wheelchairUse forKey:@"wheelchairUse"];
  [v4 encodeObject:self->_dailyEnergyBurnedStatistics forKey:@"dailyEnergyBurnedStatistics"];
  [v4 encodeObject:self->_dailyMoveTimeStatistics forKey:@"dailyMoveMinutesStatistics"];
  [v4 encodeObject:self->_dailyBriskMinutesStatistics forKey:@"dailyBriskMinutesStatistics"];
  [v4 encodeBool:self->_dataLoading forKey:@"dataLoading"];
  [v4 encodeObject:self->_energyBurnedGoalDate forKey:@"energyBurnedGoalDate"];
  [v4 encodeObject:self->_moveTimeGoalDate forKey:@"moveTimeGoalDate"];
  [v4 encodeObject:self->_briskMinutesGoalDate forKey:@"briskMinutesGoalDate"];
  [v4 encodeObject:self->_activeHoursGoalDate forKey:@"activeHoursGoalDate"];
  [v4 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v4 encodeObject:self->_startDate forKey:@"startDate"];
  [v4 encodeObject:self->_endDate forKey:@"endDate"];
  [v4 encodeInteger:self->_activityMoveMode forKey:@"activityMoveMode"];
  [v4 encodeBool:self->_paused forKey:@"paused"];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_encodeQuantity:(id)a3 withCoder:(id)a4 key:(id)a5 unit:(id)a6
{
  v13 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v13)
  {
    [v13 doubleValueForUnit:v12];
    [v10 encodeDouble:v11 forKey:?];
  }
}

- (NSDateComponents)dateComponentsForCalendar:(NSCalendar *)calendar
{
  v4 = calendar;
  os_unfair_lock_lock(&self->_lock);
  if (self->_dateComponents)
  {
    v5 = [(NSCalendar *)v4 calendarIdentifier];
    v6 = [v5 isEqualToString:*MEMORY[0x1E695D850]];

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
  v3 = [(HKActivitySummary *)self _lock_appleMoveTime];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
  v3 = [(HKActivitySummary *)self _lock_appleMoveTimeGoal];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
  v2 = [(HKActivitySummary *)self activeEnergyBurnedGoal];
  v3 = +[HKUnit kilocalorieUnit];
  v4 = [HKQuantity quantityWithUnit:v3 doubleValue:0.0];
  v5 = [v2 compare:v4] == 1;

  return v5;
}

- (BOOL)_hasAppleMoveTimeGoal
{
  v2 = [(HKActivitySummary *)self appleMoveTimeGoal];
  v3 = +[HKUnit minuteUnit];
  v4 = [HKQuantity quantityWithUnit:v3 doubleValue:0.0];
  v5 = [v2 compare:v4] == 1;

  return v5;
}

- (BOOL)_hasExerciseGoal
{
  v2 = [(HKActivitySummary *)self exerciseTimeGoal];
  v3 = +[HKUnit minuteUnit];
  v4 = [HKQuantity quantityWithUnit:v3 doubleValue:0.0];
  v5 = [v2 compare:v4] == 1;

  return v5;
}

- (BOOL)_hasStandHoursGoal
{
  v2 = [(HKActivitySummary *)self standHoursGoal];
  v3 = +[HKUnit countUnit];
  v4 = [HKQuantity quantityWithUnit:v3 doubleValue:0.0];
  v5 = [v2 compare:v4] == 1;

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
  v3 = [(HKActivitySummary *)self exerciseTimeGoal];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(HKActivitySummary *)self standHoursGoal];
    v4 = v5 == 0;
  }

  return v4;
}

- (void)_validateQuantityAssignment:(id)a3 expectedUnit:(id)a4 propertyName:(id)a5
{
  v14 = a3;
  v7 = a4;
  v8 = a5;
  if (v14 && ([v14 isCompatibleWithUnit:v7] & 1) == 0)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = [v7 unitString];
    v12 = [v14 _unit];
    v13 = [v12 unitString];
    [v9 raise:v10 format:{@"%@ expects units compatible with %@, received %@", v8, v11, v13}];
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

- (void)setDistanceWalkingRunning:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit meterUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"distanceWalkingRunning"];

  os_unfair_lock_lock(&self->_lock);
  distanceWalkingRunning = self->_distanceWalkingRunning;
  self->_distanceWalkingRunning = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStepCount:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"stepCount"];

  os_unfair_lock_lock(&self->_lock);
  stepCount = self->_stepCount;
  self->_stepCount = v4;

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

- (void)_setDeepBreathingDuration:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit secondUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"deepBreathingDuration"];

  os_unfair_lock_lock(&self->_lock);
  deepBreathingDuration = self->_deepBreathingDuration;
  self->_deepBreathingDuration = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setPushCount:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"pushCount"];

  os_unfair_lock_lock(&self->_lock);
  pushCount = self->_pushCount;
  self->_pushCount = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setFlightsClimbed:(id)a3
{
  v4 = a3;
  v5 = +[HKUnit countUnit];
  [(HKActivitySummary *)self _validateQuantityAssignment:v4 expectedUnit:v5 propertyName:@"flightsClimbed"];

  os_unfair_lock_lock(&self->_lock);
  flightsClimbed = self->_flightsClimbed;
  self->_flightsClimbed = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setWheelchairUse:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_wheelchairUse = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setActivityMoveMode:(HKActivityMoveMode)activityMoveMode
{
  os_unfair_lock_lock(&self->_lock);
  self->_activityMoveMode = activityMoveMode;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setPaused:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_paused = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDeprecatedPauseForInternalSwiftClient:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_paused = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setActivitySummaryIndex:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_activitySummaryIndex = a3;
  v5 = _HKActivityCacheDateComponentsFromCacheIndex(a3);
  dateComponents = self->_dateComponents;
  self->_dateComponents = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_setGregorianDateComponents:(id)a3
{
  v4 = a3;
  v7 = 0;
  v5 = [objc_opt_class() _validateActivitySummaryDateComponents:v4 errorMessage:&v7];
  v6 = v7;
  if (v5)
  {
    [(HKActivitySummary *)self _setActivitySummaryIndex:_HKCacheIndexFromDateComponents(v4)];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%@", v6}];
  }
}

+ (BOOL)_validateActivitySummaryDateComponents:(id)a3 errorMessage:(id *)a4
{
  v5 = a3;
  if ([v5 year] != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v5 month] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a4)
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

    if ([v5 day] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a4)
      {
        v6 = MEMORY[0x1E696AEC0];
        v15 = "";
        v7 = "day";
        goto LABEL_10;
      }

      goto LABEL_46;
    }

    if ([v5 hour] == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v5 minute] == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v5 second] == 0x7FFFFFFFFFFFFFFFLL)
        {
          if ([v5 nanosecond] == 0x7FFFFFFFFFFFFFFFLL)
          {
            if ([v5 weekday] == 0x7FFFFFFFFFFFFFFFLL)
            {
              if ([v5 weekdayOrdinal] == 0x7FFFFFFFFFFFFFFFLL)
              {
                if ([v5 quarter] == 0x7FFFFFFFFFFFFFFFLL)
                {
                  if ([v5 weekOfMonth] == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if ([v5 weekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
                    {
                      if ([v5 yearForWeekOfYear] == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        v10 = [v5 calendar];
                        v11 = [v5 calendar];

                        if (v11)
                        {
                          v12 = v10;
                          if ([v5 isValidDateInCalendar:v10])
                          {
                            v9 = 1;
LABEL_54:

                            goto LABEL_47;
                          }

                          if (a4)
                          {
                            v14 = @"Date components must represent a valid date.";
                            goto LABEL_52;
                          }
                        }

                        else
                        {
                          v12 = v10;
                          if (a4)
                          {
                            v14 = @"Date components require a calendar.";
LABEL_52:
                            v9 = 0;
                            *a4 = v14;
                            goto LABEL_54;
                          }
                        }

                        v9 = 0;
                        goto LABEL_54;
                      }

                      if (!a4)
                      {
                        goto LABEL_46;
                      }

                      v6 = MEMORY[0x1E696AEC0];
                      v15 = "not ";
                      v7 = "yearForWeekOfYear";
                    }

                    else
                    {
                      if (!a4)
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
                    if (!a4)
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
                  if (!a4)
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
                if (!a4)
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
              if (!a4)
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
            if (!a4)
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
          if (!a4)
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
        if (!a4)
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
      if (!a4)
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

  if (!a4)
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
  *a4 = v9 = 0;
LABEL_47:

  return v9;
}

+ (BOOL)_validateActivitySummaryDateComponentsRange:(id)a3 endDateComponents:(id)a4 errorMessage:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v22 = 0;
  v9 = [HKActivitySummary _validateActivitySummaryDateComponents:v7 errorMessage:&v22];
  v10 = v22;
  if (v9)
  {
    v21 = v10;
    v11 = [HKActivitySummary _validateActivitySummaryDateComponents:v8 errorMessage:&v21];
    v12 = v21;

    if (v11)
    {
      v13 = objc_alloc(MEMORY[0x1E695DEE8]);
      v14 = [v13 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
      v15 = [v7 hk_translateDateComponentsToCalendar:v14 calendarUnits:30];

      v16 = [v8 hk_translateDateComponentsToCalendar:v14 calendarUnits:30];

      v17 = [v14 dateFromComponents:v16];
      v18 = [v14 dateFromComponents:v15];
      if (v17 && [v17 hk_isBeforeDate:v18])
      {
        v19 = 0;
        if (a5)
        {
          *a5 = @"Start date must be earlier than end date.";
        }
      }

      else
      {
        v19 = 1;
      }

      v8 = v16;
      v7 = v15;
    }

    else if (a5)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"endDateComponents: %@", v12];
      *a5 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    if (a5)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"startDateComponents: %@", v10];
      *a5 = v19 = 0;
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

- (double)_lock_percentageCompleteWithQuantity:(id)a3 goalQuantity:(id)a4 unit:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  [v10 doubleValueForUnit:v9];
  v12 = v11;

  v13 = 0.0;
  if (v12 >= 0.00000011920929)
  {
    [v8 doubleValueForUnit:v9];
    v13 = v14 / v12;
  }

  return v13;
}

- (id)_initWithActivityCache:(id)a3 shouldIncludePrivateProperties:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(HKActivitySummary *)self init];
  if (v7)
  {
    v8 = +[HKUnit minuteUnit];
    v9 = +[HKUnit countUnit];
    [v6 moveMinutes];
    [HKQuantity quantityWithUnit:v8 doubleValue:?];
    v10 = v36 = v4;
    v40 = [v6 moveMinutesGoal];
    [v6 briskMinutes];
    v39 = v8;
    v11 = [HKQuantity quantityWithUnit:v8 doubleValue:?];
    v35 = [v6 briskMinutesGoal];
    [v6 activeHours];
    v12 = [HKQuantity quantityWithUnit:v9 doubleValue:?];
    v13 = [v6 activeHoursGoal];
    v14 = [v6 activityMoveMode];
    v15 = [v6 isPaused];
    -[HKActivitySummary _setActivitySummaryIndex:](v7, "_setActivitySummaryIndex:", [v6 cacheIndex]);
    v16 = [v6 energyBurned];
    [(HKActivitySummary *)v7 setActiveEnergyBurned:v16];

    [(HKActivitySummary *)v7 setAppleMoveTime:v10];
    v38 = v11;
    [(HKActivitySummary *)v7 setAppleExerciseTime:v11];
    [(HKActivitySummary *)v7 setAppleStandHours:v12];
    v17 = [v6 energyBurnedGoal];
    [(HKActivitySummary *)v7 setActiveEnergyBurnedGoal:v17];

    [(HKActivitySummary *)v7 setAppleMoveTimeGoal:v40];
    [(HKActivitySummary *)v7 setExerciseTimeGoal:v35];
    [(HKActivitySummary *)v7 setStandHoursGoal:v13];
    [(HKActivitySummary *)v7 setActivityMoveMode:v14];
    [(HKActivitySummary *)v7 setPaused:v15];
    if (v36)
    {
      v37 = +[HKUnit secondUnit];
      v18 = [v6 wheelchairUse];
      v19 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", v9, [v6 stepCount]);
      [v6 deepBreathingDuration];
      v34 = [HKQuantity quantityWithUnit:v37 doubleValue:?];
      v33 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", v9, [v6 pushCount]);
      v32 = +[HKQuantity quantityWithUnit:doubleValue:](HKQuantity, "quantityWithUnit:doubleValue:", v9, [v6 flightsClimbed]);
      v20 = [v6 walkingAndRunningDistance];
      [(HKActivitySummary *)v7 setDistanceWalkingRunning:v20];

      [(HKActivitySummary *)v7 setStepCount:v19];
      v21 = [v6 energyBurnedGoalDate];
      [(HKActivitySummary *)v7 _setEnergyBurnedGoalDate:v21];

      v22 = [v6 moveMinutesGoalDate];
      [(HKActivitySummary *)v7 _setMoveTimeGoalDate:v22];

      v23 = [v6 briskMinutesGoalDate];
      [(HKActivitySummary *)v7 _setBriskMinutesGoalDate:v23];

      v24 = [v6 activeHoursGoalDate];
      [(HKActivitySummary *)v7 _setActiveHoursGoalDate:v24];

      v25 = [v6 startDate];
      [(HKActivitySummary *)v7 _setStartDate:v25];

      v26 = [v6 endDate];
      [(HKActivitySummary *)v7 _setEndDate:v26];

      [(HKActivitySummary *)v7 _setDeepBreathingDuration:v34];
      [(HKActivitySummary *)v7 _setPushCount:v33];
      [(HKActivitySummary *)v7 _setWheelchairUse:v18];
      [(HKActivitySummary *)v7 _setFlightsClimbed:v32];
      v27 = [v6 _creationDate];
      [(HKActivitySummary *)v7 _setCreationDate:v27];

      v28 = [v6 dailyEnergyBurnedStatistics];
      [(HKActivitySummary *)v7 _setDailyEnergyBurnedStatistics:v28];

      v29 = [v6 dailyMoveMinutesStatistics];
      [(HKActivitySummary *)v7 _setDailyMoveTimeStatistics:v29];

      v30 = [v6 dailyBriskMinutesStatistics];
      [(HKActivitySummary *)v7 _setDailyBriskMinutesStatistics:v30];
    }
  }

  return v7;
}

+ (id)_mostSignificantCacheAmongCaches:(id)a3
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hk_filter:&__block_literal_global_101];
  v83 = v5;
  v84 = v4;
  if ([v5 count])
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;
  v8 = [a1 _mostRecentlyCreatedCacheAmongCaches:v7];
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
        v16 = [v15 energyBurnedGoalDate];
        [v16 timeIntervalSinceReferenceDate];
        v18 = v17;
        v19 = [v8 energyBurnedGoalDate];
        [v19 timeIntervalSinceReferenceDate];
        v21 = v20;

        if (v18 > v21)
        {
          v22 = [v15 energyBurnedGoal];
          [v8 _setEnergyBurnedGoalOnly:v22];

          v23 = [v15 energyBurnedGoalDate];
          [v8 _setEnergyBurnedGoalDateOnly:v23];
        }

        v24 = [v15 moveMinutesGoalDate];
        [v24 timeIntervalSinceReferenceDate];
        v26 = v25;
        v27 = [v8 moveMinutesGoalDate];
        [v27 timeIntervalSinceReferenceDate];
        v29 = v28;

        if (v26 > v29)
        {
          v30 = [v15 moveMinutesGoal];
          [v8 _setMoveMinutesGoalOnly:v30];

          v31 = [v15 moveMinutesGoalDate];
          [v8 _setMoveMinutesGoalDateOnly:v31];
        }

        v32 = [v15 briskMinutesGoalDate];
        [v32 timeIntervalSinceReferenceDate];
        v34 = v33;
        v35 = [v8 briskMinutesGoalDate];
        [v35 timeIntervalSinceReferenceDate];
        v37 = v36;

        if (v34 > v37)
        {
          v38 = [v15 briskMinutesGoal];
          [v8 _setBriskMinutesGoalOnly:v38];

          v39 = [v15 briskMinutesGoalDate];
          [v8 _setBriskMinutesGoalDateOnly:v39];
        }

        v40 = [v15 activeHoursGoalDate];
        [v40 timeIntervalSinceReferenceDate];
        v42 = v41;
        v43 = [v8 activeHoursGoalDate];
        [v43 timeIntervalSinceReferenceDate];
        v45 = v44;

        if (v42 > v45)
        {
          v46 = [v15 activeHoursGoal];
          [v8 _setActiveHoursGoalOnly:v46];

          v47 = [v15 activeHoursGoalDate];
          [v8 _setActiveHoursGoalDateOnly:v47];
        }

        v48 = [v15 energyBurned];
        v49 = +[HKUnit kilocalorieUnit];
        [v48 doubleValueForUnit:v49];
        v51 = v50;

        v52 = [v8 energyBurned];
        v53 = +[HKUnit kilocalorieUnit];
        [v52 doubleValueForUnit:v53];
        v55 = v54;

        if (v51 > v55)
        {
          v56 = [v15 energyBurned];
          [v8 _setEnergyBurned:v56];
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

        v66 = [v15 stepCount];
        if (v66 > [v8 stepCount])
        {
          [v8 _setStepCount:{objc_msgSend(v15, "stepCount")}];
        }

        v67 = [v15 walkingAndRunningDistance];
        v68 = +[HKUnit meterUnit];
        [v67 doubleValueForUnit:v68];
        v70 = v69;

        v71 = [v8 walkingAndRunningDistance];
        v72 = +[HKUnit meterUnit];
        [v71 doubleValueForUnit:v72];
        v74 = v73;

        if (v70 > v74)
        {
          v75 = [v15 walkingAndRunningDistance];
          [v8 _setWalkingAndRunningDistance:v75];
        }

        v76 = [v15 pushCount];
        if (v76 > [v8 pushCount])
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

        v80 = [v15 flightsClimbed];
        if (v80 > [v8 flightsClimbed])
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

+ (id)_mostRecentlyCreatedCacheAmongCaches:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if (v6)
        {
          v10 = [*(*(&v19 + 1) + 8 * i) _creationDate];
          [v10 timeIntervalSinceReferenceDate];
          v12 = v11;
          v13 = [v6 _creationDate];
          [v13 timeIntervalSinceReferenceDate];
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

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
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