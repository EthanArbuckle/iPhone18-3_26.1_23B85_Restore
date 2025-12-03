@interface HKSleepDaySummary
+ (id)_computeDurationsForPeriods:(id)periods sleepDayInterval:(id)interval strategies:(id)strategies periodDurations:(id *)durations;
+ (id)_computePeriodDurationsForPeriods:(id)periods sleepDayInterval:(id)interval strategies:(id)strategies;
+ (id)_computeTotalDurationsFromPeriodDurations:(id)durations;
+ (id)daySummaryWithMorningIndex:(int64_t)index dateInterval:(id)interval calendar:(id)calendar periods:(id)periods schedules:(id)schedules sleepDurationGoal:(id)goal minimumRecommendedSleepDurationGoal:(id)durationGoal creationInterval:(id)self0;
- (BOOL)getData:(id *)data error:(id *)error;
- (BOOL)hasNonZeroSleepDurationGoal;
- (BOOL)hasSleepStageData;
- (BOOL)isEqual:(id)equal;
- (BOOL)isWeeklyAggregatedSummary;
- (HKSleepDaySummary)initWithCoder:(id)coder;
- (HKSleepDaySummary)initWithMorningIndex:(int64_t)index dateInterval:(id)interval calendar:(id)calendar periods:(id)periods schedules:(id)schedules sleepDurationGoal:(id)goal minimumRecommendedSleepDurationGoal:(id)durationGoal creationInterval:(id)self0;
- (HKSleepPeriod)lastSleepPeriod;
- (HKSleepSchedule)primarySchedule;
- (NSString)description;
- (NSString)hk_redactedDescription;
- (double)awakeDuration;
- (double)coreSleepDuration;
- (double)deepSleepDuration;
- (double)inBedDuration;
- (double)remSleepDuration;
- (double)sleepDuration;
- (double)unspecifiedSleepDuration;
- (id)_recomputeDurationsForStrategy:(id)strategy;
- (id)_updatingPeriods:(id)periods;
- (id)durationsForStrategy:(id)strategy;
- (id)durationsForStrategyType:(int64_t)type;
- (id)primarySleepPeriodUsingSummaryDurationStrategyType:(int64_t)type;
- (id)summaryFilteredWithOptions:(unint64_t)options strategyType:(int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSleepDaySummary

- (HKSleepDaySummary)initWithMorningIndex:(int64_t)index dateInterval:(id)interval calendar:(id)calendar periods:(id)periods schedules:(id)schedules sleepDurationGoal:(id)goal minimumRecommendedSleepDurationGoal:(id)durationGoal creationInterval:(id)self0
{
  intervalCopy = interval;
  calendarCopy = calendar;
  periodsCopy = periods;
  schedulesCopy = schedules;
  goalCopy = goal;
  durationGoalCopy = durationGoal;
  creationIntervalCopy = creationInterval;
  v50.receiver = self;
  v50.super_class = HKSleepDaySummary;
  v23 = [(HKSleepDaySummary *)&v50 init];
  v24 = v23;
  if (v23)
  {
    v23->_morningIndex = index;
    v25 = [intervalCopy copy];
    dateInterval = v24->_dateInterval;
    v24->_dateInterval = v25;

    v27 = [calendarCopy copy];
    gregorianCalendar = v24->_gregorianCalendar;
    v24->_gregorianCalendar = v27;

    v29 = [periodsCopy copy];
    periods = v24->_periods;
    v24->_periods = v29;

    v31 = [schedulesCopy copy];
    schedules = v24->_schedules;
    v24->_schedules = v31;

    v33 = [goalCopy copy];
    sleepDurationGoal = v24->_sleepDurationGoal;
    v24->_sleepDurationGoal = v33;

    v35 = [durationGoalCopy copy];
    minimumRecommendedSleepDurationGoal = v24->_minimumRecommendedSleepDurationGoal;
    v24->_minimumRecommendedSleepDurationGoal = v35;

    v37 = [HKSleepDaySummaryDurationStrategy standardStrategiesForSleepDayInterval:intervalCopy];
    strategies = v24->_strategies;
    v24->_strategies = v37;

    v39 = objc_opt_class();
    v40 = v24->_strategies;
    v49 = 0;
    v41 = [v39 _computeDurationsForPeriods:periodsCopy sleepDayInterval:intervalCopy strategies:v40 periodDurations:&v49];
    v42 = v49;
    totalDurations = v24->_totalDurations;
    v24->_totalDurations = v41;

    v44 = [v42 copy];
    periodDurations = v24->_periodDurations;
    v24->_periodDurations = v44;

    v46 = [creationIntervalCopy copy];
    creationInterval = v24->_creationInterval;
    v24->_creationInterval = v46;
  }

  return v24;
}

+ (id)daySummaryWithMorningIndex:(int64_t)index dateInterval:(id)interval calendar:(id)calendar periods:(id)periods schedules:(id)schedules sleepDurationGoal:(id)goal minimumRecommendedSleepDurationGoal:(id)durationGoal creationInterval:(id)self0
{
  creationIntervalCopy = creationInterval;
  durationGoalCopy = durationGoal;
  goalCopy = goal;
  schedulesCopy = schedules;
  periodsCopy = periods;
  calendarCopy = calendar;
  intervalCopy = interval;
  v23 = [[HKSleepDaySummary alloc] initWithMorningIndex:index dateInterval:intervalCopy calendar:calendarCopy periods:periodsCopy schedules:schedulesCopy sleepDurationGoal:goalCopy minimumRecommendedSleepDurationGoal:durationGoalCopy creationInterval:creationIntervalCopy];

  return v23;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_morningIndex];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  periods = self->_periods;
  v10 = [v3 stringWithFormat:@"<%@:%p %@ (%@ - %@), goal = %@/%@, schedules = %@, periods = %@, calendar = %@>", v5, self, v6, startDate, endDate, self->_sleepDurationGoal, self->_minimumRecommendedSleepDurationGoal, self->_schedules, periods, self->_gregorianCalendar];

  return v10;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_morningIndex];
  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  v9 = [v3 stringWithFormat:@"<%@:%p %@ (%@ - %@)>", v5, self, v6, startDate, endDate, 0];

  return v9;
}

- (BOOL)hasNonZeroSleepDurationGoal
{
  sleepDurationGoal = self->_sleepDurationGoal;
  if (sleepDurationGoal)
  {
    v3 = +[HKUnit secondUnit];
    [(HKQuantity *)sleepDurationGoal doubleValueForUnit:v3];
    LOBYTE(sleepDurationGoal) = v4 > 0.0;
  }

  return sleepDurationGoal;
}

- (double)inBedDuration
{
  v2 = [(HKSleepDaySummary *)self durationsForStrategyType:1];
  [v2 inBedDuration];
  v4 = v3;

  return v4;
}

- (double)sleepDuration
{
  v2 = [(HKSleepDaySummary *)self durationsForStrategyType:1];
  [v2 sleepDuration];
  v4 = v3;

  return v4;
}

- (double)unspecifiedSleepDuration
{
  v2 = [(HKSleepDaySummary *)self durationsForStrategyType:1];
  [v2 unspecifiedSleepDuration];
  v4 = v3;

  return v4;
}

- (double)coreSleepDuration
{
  v2 = [(HKSleepDaySummary *)self durationsForStrategyType:1];
  [v2 coreSleepDuration];
  v4 = v3;

  return v4;
}

- (double)deepSleepDuration
{
  v2 = [(HKSleepDaySummary *)self durationsForStrategyType:1];
  [v2 deepSleepDuration];
  v4 = v3;

  return v4;
}

- (double)remSleepDuration
{
  v2 = [(HKSleepDaySummary *)self durationsForStrategyType:1];
  [v2 remSleepDuration];
  v4 = v3;

  return v4;
}

- (double)awakeDuration
{
  v2 = [(HKSleepDaySummary *)self durationsForStrategyType:1];
  [v2 awakeDuration];
  v4 = v3;

  return v4;
}

+ (id)_computePeriodDurationsForPeriods:(id)periods sleepDayInterval:(id)interval strategies:(id)strategies
{
  intervalCopy = interval;
  strategiesCopy = strategies;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__HKSleepDaySummary__computePeriodDurationsForPeriods_sleepDayInterval_strategies___block_invoke;
  v13[3] = &unk_1E737DCF0;
  v14 = intervalCopy;
  v15 = strategiesCopy;
  v9 = strategiesCopy;
  v10 = intervalCopy;
  v11 = [periods hk_map:v13];

  return v11;
}

+ (id)_computeTotalDurationsFromPeriodDurations:(id)durations
{
  v18 = *MEMORY[0x1E69E9840];
  durationsCopy = durations;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [durationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(durationsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v6)
        {
          v10 = [v6 durationsByAdding:v9];

          v6 = v10;
        }

        else
        {
          v6 = v9;
        }
      }

      v5 = [durationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)_computeDurationsForPeriods:(id)periods sleepDayInterval:(id)interval strategies:(id)strategies periodDurations:(id *)durations
{
  v8 = [self _computePeriodDurationsForPeriods:periods sleepDayInterval:interval strategies:strategies];
  v9 = v8;
  if (durations)
  {
    v10 = v8;
    *durations = v9;
  }

  v11 = [self _computeTotalDurationsFromPeriodDurations:v9];

  return v11;
}

- (id)durationsForStrategy:(id)strategy
{
  strategyCopy = strategy;
  if ([(HKSleepDaySummaryDurationStrategySet *)self->_strategies containsStrategy:strategyCopy])
  {
    v5 = -[HKSleepDaySummary durationsForStrategyType:](self, "durationsForStrategyType:", [strategyCopy strategyType]);
  }

  else
  {
    v6 = [(HKSleepDaySummary *)self _recomputeDurationsForStrategy:strategyCopy];
    v5 = [v6 durationsForStrategyType:{objc_msgSend(strategyCopy, "strategyType")}];
  }

  return v5;
}

- (id)_recomputeDurationsForStrategy:(id)strategy
{
  v13[1] = *MEMORY[0x1E69E9840];
  strategyCopy = strategy;
  v5 = [HKSleepDaySummaryDurationStrategySet alloc];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(strategyCopy, "strategyType")}];
  v12 = v6;
  v13[0] = strategyCopy;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = [(HKSleepDaySummaryDurationStrategySet *)v5 initWithStrategies:v7];

  v9 = [objc_opt_class() _computeDurationsForPeriods:self->_periods sleepDayInterval:self->_dateInterval strategies:v8 periodDurations:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (HKSleepPeriod)lastSleepPeriod
{
  periods = [(HKSleepDaySummary *)self periods];
  lastObject = [periods lastObject];

  return lastObject;
}

- (HKSleepSchedule)primarySchedule
{
  schedules = self->_schedules;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__HKSleepDaySummary_primarySchedule__block_invoke;
  v5[3] = &unk_1E737DD18;
  v5[4] = self;
  v3 = [(NSArray *)schedules hk_firstObjectWithMaximumValueUsingEvaluationBlock:v5];

  return v3;
}

double __36__HKSleepDaySummary_primarySchedule__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bedtimeDateIntervalForMorningIndex:*(*(a1 + 32) + 8) calendar:*(*(a1 + 32) + 64)];
  v4 = [v3 intersectionWithDateInterval:*(*(a1 + 32) + 16)];
  [v4 duration];
  v6 = v5;

  return v6;
}

- (BOOL)hasSleepStageData
{
  [(HKSleepDaySummary *)self coreSleepDuration];
  if (v3 > 0.0)
  {
    return 1;
  }

  [(HKSleepDaySummary *)self deepSleepDuration];
  if (v4 > 0.0)
  {
    return 1;
  }

  [(HKSleepDaySummary *)self remSleepDuration];
  return v6 > 0.0;
}

- (BOOL)isWeeklyAggregatedSummary
{
  v3 = MEMORY[0x1E696AB80];
  morningIndex = [(HKSleepDaySummary *)self morningIndex];
  calendar = [(HKSleepDaySummary *)self calendar];
  v6 = [v3 hk_sleepWeekIntervalForMorningIndex:morningIndex calendar:calendar];

  dateInterval = [(HKSleepDaySummary *)self dateInterval];
  LOBYTE(morningIndex) = [v6 isEqual:dateInterval];

  return morningIndex;
}

- (void)encodeWithCoder:(id)coder
{
  morningIndex = self->_morningIndex;
  coderCopy = coder;
  [coderCopy encodeInteger:morningIndex forKey:@"MorningIndex"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"DateInterval"];
  [coderCopy encodeObject:self->_gregorianCalendar forKey:@"Calendar"];
  [coderCopy encodeObject:self->_periods forKey:@"Periods"];
  [coderCopy encodeObject:self->_schedules forKey:@"Schedules"];
  [coderCopy encodeObject:self->_sleepDurationGoal forKey:@"SleepDurationGoal"];
  [coderCopy encodeObject:self->_minimumRecommendedSleepDurationGoal forKey:@"MinimumRecommendedSleepDurationGoal"];
  [coderCopy encodeObject:self->_creationInterval forKey:@"CreationInterval"];
}

- (HKSleepDaySummary)initWithCoder:(id)coder
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"MorningIndex"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Calendar"];
  v6 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18 = [v6 setWithArray:v20];
  v7 = [coderCopy decodeObjectOfClasses:v18 forKey:@"Periods"];
  v8 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Schedules"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SleepDurationGoal"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MinimumRecommendedSleepDurationGoal"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationInterval"];

  v15 = [(HKSleepDaySummary *)self initWithMorningIndex:v5 dateInterval:v21 calendar:v19 periods:v7 schedules:v11 sleepDurationGoal:v12 minimumRecommendedSleepDurationGoal:v13 creationInterval:v14];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  schedules = [(HKSleepDaySummary *)self schedules];
  v6 = [schedules count];
  schedules2 = [equalCopy schedules];
  v8 = [schedules2 count];

  if (v6 == v8)
  {
    schedules3 = [(HKSleepDaySummary *)self schedules];
    v10 = [schedules3 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        schedules4 = [(HKSleepDaySummary *)self schedules];
        v13 = [schedules4 objectAtIndexedSubscript:v11];
        schedules5 = [equalCopy schedules];
        v15 = [schedules5 objectAtIndexedSubscript:v11];
        v16 = [v13 isEquivalent:v15];

        if ((v16 & 1) == 0)
        {
          goto LABEL_11;
        }

        ++v11;
        schedules6 = [(HKSleepDaySummary *)self schedules];
        schedules2 = [schedules6 count];
      }

      while (v11 < schedules2);
    }

    morningIndex = [(HKSleepDaySummary *)self morningIndex];
    if (morningIndex == [equalCopy morningIndex])
    {
      dateInterval = [(HKSleepDaySummary *)self dateInterval];
      dateInterval2 = [equalCopy dateInterval];
      if (dateInterval != dateInterval2)
      {
        dateInterval3 = [equalCopy dateInterval];
        if (!dateInterval3)
        {
          v24 = 0;
          goto LABEL_41;
        }

        schedules2 = dateInterval3;
        dateInterval4 = [(HKSleepDaySummary *)self dateInterval];
        dateInterval5 = [equalCopy dateInterval];
        if (![dateInterval4 isEqual:dateInterval5])
        {
          v24 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v87 = dateInterval5;
        v88 = dateInterval4;
      }

      calendar = [(HKSleepDaySummary *)self calendar];
      calendar2 = [equalCopy calendar];
      if (calendar != calendar2)
      {
        calendar3 = [equalCopy calendar];
        if (!calendar3)
        {
          goto LABEL_37;
        }

        v29 = calendar3;
        calendar4 = [(HKSleepDaySummary *)self calendar];
        calendar5 = [equalCopy calendar];
        if (([calendar4 isEqual:calendar5] & 1) == 0)
        {

          goto LABEL_37;
        }

        v80 = calendar5;
        v81 = calendar4;
        v82 = v29;
      }

      periods = [(HKSleepDaySummary *)self periods];
      periods2 = [equalCopy periods];
      v34 = periods2;
      v86 = periods;
      if (periods == periods2)
      {
        v84 = calendar2;
        v37 = calendar;
        v38 = schedules2;
        v39 = periods2;
        goto LABEL_24;
      }

      periods3 = [equalCopy periods];
      if (periods3)
      {
        v79 = periods3;
        periods = [(HKSleepDaySummary *)self periods];
        periods4 = [equalCopy periods];
        if ([periods isEqual:periods4])
        {
          v84 = calendar2;
          v37 = calendar;
          v38 = schedules2;
          v39 = v34;
          v76 = periods4;
LABEL_24:
          sleepDurationGoal = [(HKSleepDaySummary *)self sleepDurationGoal];
          [equalCopy sleepDurationGoal];
          v83 = v85 = sleepDurationGoal;
          if (sleepDurationGoal == v83)
          {
            v78 = v39;
            schedules2 = v38;
LABEL_30:
            minimumRecommendedSleepDurationGoal = [(HKSleepDaySummary *)self minimumRecommendedSleepDurationGoal];
            [equalCopy minimumRecommendedSleepDurationGoal];
            v75 = v74 = v37;
            v77 = periods;
            if (minimumRecommendedSleepDurationGoal == v75)
            {
              v72 = schedules2;
              v50 = v37;
              v49 = v84;
            }

            else
            {
              minimumRecommendedSleepDurationGoal2 = [equalCopy minimumRecommendedSleepDurationGoal];
              if (!minimumRecommendedSleepDurationGoal2)
              {
                v24 = 0;
                v63 = v76;
                v64 = v86;
                v49 = v84;
                goto LABEL_63;
              }

              v69 = minimumRecommendedSleepDurationGoal2;
              minimumRecommendedSleepDurationGoal3 = [(HKSleepDaySummary *)self minimumRecommendedSleepDurationGoal];
              minimumRecommendedSleepDurationGoal4 = [equalCopy minimumRecommendedSleepDurationGoal];
              if (([minimumRecommendedSleepDurationGoal3 isEqual:minimumRecommendedSleepDurationGoal4] & 1) == 0)
              {

                v24 = 0;
                v58 = v85;
                v52 = v86;
                v59 = v83;
                v61 = v76;
                v60 = v71;
                v50 = v74;
                if (v85 != v83)
                {
LABEL_49:

                  v42 = v78;
                  v51 = v61;
LABEL_50:
                  v62 = v84;

                  if (v52 == v42)
                  {
LABEL_52:

                    if (v50 != v62)
                    {
                    }

                    goto LABEL_39;
                  }

LABEL_51:

                  goto LABEL_52;
                }

LABEL_71:

                v42 = v78;
                v51 = v61;
                v62 = v84;
                if (v52 == v78)
                {
                  goto LABEL_52;
                }

                goto LABEL_51;
              }

              v67 = minimumRecommendedSleepDurationGoal4;
              v68 = minimumRecommendedSleepDurationGoal3;
              v72 = schedules2;
              v49 = v84;
              v50 = v74;
            }

            creationInterval = [(HKSleepDaySummary *)self creationInterval];
            creationInterval2 = [equalCopy creationInterval];
            v24 = creationInterval == creationInterval2;
            if (creationInterval != creationInterval2)
            {
              creationInterval3 = [equalCopy creationInterval];
              if (creationInterval3)
              {
                v84 = v49;
                v66 = creationInterval3;
                creationInterval4 = [(HKSleepDaySummary *)self creationInterval];
                creationInterval5 = [equalCopy creationInterval];
                v24 = [creationInterval4 isEqual:creationInterval5];

                if (minimumRecommendedSleepDurationGoal != v75)
                {
                }

                v58 = v85;
                v52 = v86;
                v59 = v83;
                v60 = v71;
                schedules2 = v72;
                v61 = v76;
                if (v85 != v83)
                {
                  goto LABEL_49;
                }

                goto LABEL_71;
              }
            }

            if (minimumRecommendedSleepDurationGoal == v75)
            {

              v64 = v86;
              v65 = v83;
              schedules2 = v72;
              v63 = v76;
              if (v85 == v83)
              {
                goto LABEL_65;
              }

              goto LABEL_64;
            }

            schedules2 = v72;
            v63 = v76;
            v64 = v86;
LABEL_63:

            v65 = v83;
            if (v85 == v83)
            {
LABEL_65:

              if (v64 != v78)
              {
              }

              if (v74 != v49)
              {
              }

LABEL_39:
              dateInterval5 = v87;
              dateInterval4 = v88;
              if (dateInterval != dateInterval2)
              {
                goto LABEL_40;
              }

LABEL_41:

              goto LABEL_12;
            }

LABEL_64:

            v65 = v83;
            goto LABEL_65;
          }

          sleepDurationGoal2 = [equalCopy sleepDurationGoal];
          v42 = v39;
          if (!sleepDurationGoal2)
          {
            v77 = periods;
            v24 = 0;
            v51 = v76;
            v52 = v86;
            schedules2 = v38;
            v50 = v37;
            goto LABEL_50;
          }

          v78 = v39;
          v73 = sleepDurationGoal2;
          sleepDurationGoal3 = [(HKSleepDaySummary *)self sleepDurationGoal];
          sleepDurationGoal4 = [equalCopy sleepDurationGoal];
          schedules2 = v38;
          if ([sleepDurationGoal3 isEqual:sleepDurationGoal4])
          {
            v70 = sleepDurationGoal3;
            v71 = sleepDurationGoal4;
            goto LABEL_30;
          }

          if (v86 != v78)
          {
          }

          if (v37 != v84)
          {
          }

LABEL_38:
          v24 = 0;
          goto LABEL_39;
        }
      }

      if (calendar != calendar2)
      {
      }

LABEL_37:

      goto LABEL_38;
    }
  }

LABEL_11:
  v24 = 0;
LABEL_12:

  return v24;
}

- (unint64_t)hash
{
  morningIndex = [(HKSleepDaySummary *)self morningIndex];
  dateInterval = [(HKSleepDaySummary *)self dateInterval];
  v4 = [dateInterval hash] ^ morningIndex;
  calendar = [(HKSleepDaySummary *)self calendar];
  v6 = [calendar hash];
  periods = [(HKSleepDaySummary *)self periods];
  v8 = v4 ^ v6 ^ [periods hash];
  schedules = [(HKSleepDaySummary *)self schedules];
  v10 = [schedules hash];
  sleepDurationGoal = [(HKSleepDaySummary *)self sleepDurationGoal];
  hk_secondsNumber = [sleepDurationGoal hk_secondsNumber];
  v13 = v8 ^ v10 ^ [hk_secondsNumber hash];
  minimumRecommendedSleepDurationGoal = [(HKSleepDaySummary *)self minimumRecommendedSleepDurationGoal];
  hk_secondsNumber2 = [minimumRecommendedSleepDurationGoal hk_secondsNumber];
  v16 = [hk_secondsNumber2 hash];
  creationInterval = [(HKSleepDaySummary *)self creationInterval];
  v18 = v16 ^ [creationInterval hash];

  return v13 ^ v18;
}

- (BOOL)getData:(id *)data error:(id *)error
{
  v15 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v15];
  v8 = v15;
  if (v7)
  {
    if (data)
    {
      v9 = v7;
      *data = v7;
    }
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogSleep;
    if (os_log_type_enabled(HKLogSleep, OS_LOG_TYPE_ERROR))
    {
      [(HKSleepDaySummary *)v10 getData:v8 error:?];
    }

    v11 = v8;
    v12 = v11;
    if (v11)
    {
      if (error)
      {
        v13 = v11;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError(v11);
      }
    }
  }

  return v7 != 0;
}

- (id)summaryFilteredWithOptions:(unint64_t)options strategyType:(int64_t)type
{
  optionsCopy = options;
  v21[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v7 = selfCopy;
  if (optionsCopy)
  {
    v12 = [(HKSleepDaySummary *)selfCopy primarySleepPeriodUsingSummaryDurationStrategyType:type];
    v9 = v12;
    if (v12)
    {
      v21[0] = v12;
      v10 = MEMORY[0x1E695DEC8];
      v11 = v21;
      goto LABEL_7;
    }

LABEL_8:
    v13 = MEMORY[0x1E695E0F0];
    goto LABEL_9;
  }

  if ((optionsCopy & 2) == 0)
  {
    goto LABEL_12;
  }

  lastSleepPeriod = [(HKSleepDaySummary *)selfCopy lastSleepPeriod];
  v9 = lastSleepPeriod;
  if (!lastSleepPeriod)
  {
    goto LABEL_8;
  }

  v20 = lastSleepPeriod;
  v10 = MEMORY[0x1E695DEC8];
  v11 = &v20;
LABEL_7:
  v13 = [v10 arrayWithObjects:v11 count:1];
LABEL_9:
  v14 = [v7 _updatingPeriods:v13];

  if (v9)
  {
  }

  v7 = v14;
LABEL_12:
  if ((optionsCopy & 4) != 0)
  {
    periods = [v7 periods];
    v16 = [periods hk_map:&__block_literal_global_57];

    v17 = [v7 _updatingPeriods:v16];

    v7 = v17;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v7;
}

id __61__HKSleepDaySummary_summaryFilteredWithOptions_strategyType___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v4 = [v2 segments];
  v5 = [v4 firstObject];
  v6 = [v5 category];

  if (v6 == 2)
  {
    [v3 addIndex:0];
  }

  v7 = [v2 segments];
  v8 = [v7 lastObject];
  v9 = [v8 category];

  if (v9 == 2)
  {
    v10 = [v2 segments];
    [v3 addIndex:{objc_msgSend(v10, "count") - 1}];
  }

  v11 = [v3 count];
  v12 = [v2 segments];
  v13 = v12;
  if (v11)
  {
    v14 = [v12 mutableCopy];

    [v14 removeObjectsAtIndexes:v3];
    v13 = [v14 copy];
  }

  v15 = [v2 dateInterval];
  v16 = [v2 isIncomplete];
  v17 = [v2 timezoneName];
  v18 = [HKSleepPeriod sleepPeriodWithDateInterval:v15 segments:v13 isIncomplete:v16 timezoneName:v17];

  return v18;
}

- (id)_updatingPeriods:(id)periods
{
  periodsCopy = periods;
  v5 = periodsCopy;
  if (periodsCopy && [periodsCopy count])
  {
    v6 = [HKSleepDaySummary alloc];
    morningIndex = [(HKSleepDaySummary *)self morningIndex];
    dateInterval = [(HKSleepDaySummary *)self dateInterval];
    calendar = [(HKSleepDaySummary *)self calendar];
    schedules = [(HKSleepDaySummary *)self schedules];
    sleepDurationGoal = [(HKSleepDaySummary *)self sleepDurationGoal];
    minimumRecommendedSleepDurationGoal = [(HKSleepDaySummary *)self minimumRecommendedSleepDurationGoal];
    creationInterval = [(HKSleepDaySummary *)self creationInterval];
    v14 = [(HKSleepDaySummary *)v6 initWithMorningIndex:morningIndex dateInterval:dateInterval calendar:calendar periods:v5 schedules:schedules sleepDurationGoal:sleepDurationGoal minimumRecommendedSleepDurationGoal:minimumRecommendedSleepDurationGoal creationInterval:creationInterval];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)durationsForStrategyType:(int64_t)type
{
  if (self)
  {
    self = self->_totalDurations;
  }

  return [(HKSleepDaySummary *)self durationsForStrategyType:type];
}

- (id)primarySleepPeriodUsingSummaryDurationStrategyType:(int64_t)type
{
  v5 = 0;
  v6 = 0;
  v7 = 0.0;
  if (!self)
  {
    goto LABEL_9;
  }

LABEL_2:
  for (i = self->_periodDurations; v5 < [(NSArray *)i count]; i = 0)
  {
    if (self)
    {
      periodDurations = self->_periodDurations;
    }

    else
    {
      periodDurations = 0;
    }

    v10 = [(NSArray *)periodDurations objectAtIndexedSubscript:v5];
    v11 = [v10 durationsForStrategyType:type];
    [v11 maxDuration];
    v13 = v12;

    if (v13 > v7)
    {
      periods = [(HKSleepDaySummary *)self periods];
      v15 = [periods objectAtIndexedSubscript:v5];

      v7 = v13;
      v6 = v15;
    }

    ++v5;
    if (self)
    {
      goto LABEL_2;
    }

LABEL_9:
    ;
  }

  return v6;
}

- (void)getData:(uint64_t)a3 error:.cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v8 = 138543874;
  v9 = objc_opt_class();
  v10 = 2114;
  v11 = a2;
  v12 = 2114;
  v13 = a3;
  v6 = v9;
  _os_log_error_impl(&dword_19197B000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Error archiving summary %{public}@ for caching: %{public}@", &v8, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

@end