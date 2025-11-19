@interface HKSleepDaySummary
+ (id)_computeDurationsForPeriods:(id)a3 sleepDayInterval:(id)a4 strategies:(id)a5 periodDurations:(id *)a6;
+ (id)_computePeriodDurationsForPeriods:(id)a3 sleepDayInterval:(id)a4 strategies:(id)a5;
+ (id)_computeTotalDurationsFromPeriodDurations:(id)a3;
+ (id)daySummaryWithMorningIndex:(int64_t)a3 dateInterval:(id)a4 calendar:(id)a5 periods:(id)a6 schedules:(id)a7 sleepDurationGoal:(id)a8 minimumRecommendedSleepDurationGoal:(id)a9 creationInterval:(id)a10;
- (BOOL)getData:(id *)a3 error:(id *)a4;
- (BOOL)hasNonZeroSleepDurationGoal;
- (BOOL)hasSleepStageData;
- (BOOL)isEqual:(id)a3;
- (BOOL)isWeeklyAggregatedSummary;
- (HKSleepDaySummary)initWithCoder:(id)a3;
- (HKSleepDaySummary)initWithMorningIndex:(int64_t)a3 dateInterval:(id)a4 calendar:(id)a5 periods:(id)a6 schedules:(id)a7 sleepDurationGoal:(id)a8 minimumRecommendedSleepDurationGoal:(id)a9 creationInterval:(id)a10;
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
- (id)_recomputeDurationsForStrategy:(id)a3;
- (id)_updatingPeriods:(id)a3;
- (id)durationsForStrategy:(id)a3;
- (id)durationsForStrategyType:(int64_t)a3;
- (id)primarySleepPeriodUsingSummaryDurationStrategyType:(int64_t)a3;
- (id)summaryFilteredWithOptions:(unint64_t)a3 strategyType:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSleepDaySummary

- (HKSleepDaySummary)initWithMorningIndex:(int64_t)a3 dateInterval:(id)a4 calendar:(id)a5 periods:(id)a6 schedules:(id)a7 sleepDurationGoal:(id)a8 minimumRecommendedSleepDurationGoal:(id)a9 creationInterval:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v50.receiver = self;
  v50.super_class = HKSleepDaySummary;
  v23 = [(HKSleepDaySummary *)&v50 init];
  v24 = v23;
  if (v23)
  {
    v23->_morningIndex = a3;
    v25 = [v16 copy];
    dateInterval = v24->_dateInterval;
    v24->_dateInterval = v25;

    v27 = [v17 copy];
    gregorianCalendar = v24->_gregorianCalendar;
    v24->_gregorianCalendar = v27;

    v29 = [v18 copy];
    periods = v24->_periods;
    v24->_periods = v29;

    v31 = [v19 copy];
    schedules = v24->_schedules;
    v24->_schedules = v31;

    v33 = [v20 copy];
    sleepDurationGoal = v24->_sleepDurationGoal;
    v24->_sleepDurationGoal = v33;

    v35 = [v21 copy];
    minimumRecommendedSleepDurationGoal = v24->_minimumRecommendedSleepDurationGoal;
    v24->_minimumRecommendedSleepDurationGoal = v35;

    v37 = [HKSleepDaySummaryDurationStrategy standardStrategiesForSleepDayInterval:v16];
    strategies = v24->_strategies;
    v24->_strategies = v37;

    v39 = objc_opt_class();
    v40 = v24->_strategies;
    v49 = 0;
    v41 = [v39 _computeDurationsForPeriods:v18 sleepDayInterval:v16 strategies:v40 periodDurations:&v49];
    v42 = v49;
    totalDurations = v24->_totalDurations;
    v24->_totalDurations = v41;

    v44 = [v42 copy];
    periodDurations = v24->_periodDurations;
    v24->_periodDurations = v44;

    v46 = [v22 copy];
    creationInterval = v24->_creationInterval;
    v24->_creationInterval = v46;
  }

  return v24;
}

+ (id)daySummaryWithMorningIndex:(int64_t)a3 dateInterval:(id)a4 calendar:(id)a5 periods:(id)a6 schedules:(id)a7 sleepDurationGoal:(id)a8 minimumRecommendedSleepDurationGoal:(id)a9 creationInterval:(id)a10
{
  v16 = a10;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = [[HKSleepDaySummary alloc] initWithMorningIndex:a3 dateInterval:v22 calendar:v21 periods:v20 schedules:v19 sleepDurationGoal:v18 minimumRecommendedSleepDurationGoal:v17 creationInterval:v16];

  return v23;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_morningIndex];
  v7 = [(NSDateInterval *)self->_dateInterval startDate];
  v8 = [(NSDateInterval *)self->_dateInterval endDate];
  periods = self->_periods;
  v10 = [v3 stringWithFormat:@"<%@:%p %@ (%@ - %@), goal = %@/%@, schedules = %@, periods = %@, calendar = %@>", v5, self, v6, v7, v8, self->_sleepDurationGoal, self->_minimumRecommendedSleepDurationGoal, self->_schedules, periods, self->_gregorianCalendar];

  return v10;
}

- (NSString)hk_redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_morningIndex];
  v7 = [(NSDateInterval *)self->_dateInterval startDate];
  v8 = [(NSDateInterval *)self->_dateInterval endDate];
  v9 = [v3 stringWithFormat:@"<%@:%p %@ (%@ - %@)>", v5, self, v6, v7, v8, 0];

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

+ (id)_computePeriodDurationsForPeriods:(id)a3 sleepDayInterval:(id)a4 strategies:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__HKSleepDaySummary__computePeriodDurationsForPeriods_sleepDayInterval_strategies___block_invoke;
  v13[3] = &unk_1E737DCF0;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [a3 hk_map:v13];

  return v11;
}

+ (id)_computeTotalDurationsFromPeriodDurations:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v3);
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

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

+ (id)_computeDurationsForPeriods:(id)a3 sleepDayInterval:(id)a4 strategies:(id)a5 periodDurations:(id *)a6
{
  v8 = [a1 _computePeriodDurationsForPeriods:a3 sleepDayInterval:a4 strategies:a5];
  v9 = v8;
  if (a6)
  {
    v10 = v8;
    *a6 = v9;
  }

  v11 = [a1 _computeTotalDurationsFromPeriodDurations:v9];

  return v11;
}

- (id)durationsForStrategy:(id)a3
{
  v4 = a3;
  if ([(HKSleepDaySummaryDurationStrategySet *)self->_strategies containsStrategy:v4])
  {
    v5 = -[HKSleepDaySummary durationsForStrategyType:](self, "durationsForStrategyType:", [v4 strategyType]);
  }

  else
  {
    v6 = [(HKSleepDaySummary *)self _recomputeDurationsForStrategy:v4];
    v5 = [v6 durationsForStrategyType:{objc_msgSend(v4, "strategyType")}];
  }

  return v5;
}

- (id)_recomputeDurationsForStrategy:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HKSleepDaySummaryDurationStrategySet alloc];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "strategyType")}];
  v12 = v6;
  v13[0] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v8 = [(HKSleepDaySummaryDurationStrategySet *)v5 initWithStrategies:v7];

  v9 = [objc_opt_class() _computeDurationsForPeriods:self->_periods sleepDayInterval:self->_dateInterval strategies:v8 periodDurations:0];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (HKSleepPeriod)lastSleepPeriod
{
  v2 = [(HKSleepDaySummary *)self periods];
  v3 = [v2 lastObject];

  return v3;
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
  v4 = [(HKSleepDaySummary *)self morningIndex];
  v5 = [(HKSleepDaySummary *)self calendar];
  v6 = [v3 hk_sleepWeekIntervalForMorningIndex:v4 calendar:v5];

  v7 = [(HKSleepDaySummary *)self dateInterval];
  LOBYTE(v4) = [v6 isEqual:v7];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  morningIndex = self->_morningIndex;
  v5 = a3;
  [v5 encodeInteger:morningIndex forKey:@"MorningIndex"];
  [v5 encodeObject:self->_dateInterval forKey:@"DateInterval"];
  [v5 encodeObject:self->_gregorianCalendar forKey:@"Calendar"];
  [v5 encodeObject:self->_periods forKey:@"Periods"];
  [v5 encodeObject:self->_schedules forKey:@"Schedules"];
  [v5 encodeObject:self->_sleepDurationGoal forKey:@"SleepDurationGoal"];
  [v5 encodeObject:self->_minimumRecommendedSleepDurationGoal forKey:@"MinimumRecommendedSleepDurationGoal"];
  [v5 encodeObject:self->_creationInterval forKey:@"CreationInterval"];
}

- (HKSleepDaySummary)initWithCoder:(id)a3
{
  v23[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"MorningIndex"];
  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DateInterval"];
  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Calendar"];
  v6 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v18 = [v6 setWithArray:v20];
  v7 = [v4 decodeObjectOfClasses:v18 forKey:@"Periods"];
  v8 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v10 = [v8 setWithArray:v9];
  v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Schedules"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SleepDurationGoal"];
  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MinimumRecommendedSleepDurationGoal"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationInterval"];

  v15 = [(HKSleepDaySummary *)self initWithMorningIndex:v5 dateInterval:v21 calendar:v19 periods:v7 schedules:v11 sleepDurationGoal:v12 minimumRecommendedSleepDurationGoal:v13 creationInterval:v14];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDaySummary *)self schedules];
  v6 = [v5 count];
  v7 = [v4 schedules];
  v8 = [v7 count];

  if (v6 == v8)
  {
    v9 = [(HKSleepDaySummary *)self schedules];
    v10 = [v9 count];

    if (v10)
    {
      v11 = 0;
      do
      {
        v12 = [(HKSleepDaySummary *)self schedules];
        v13 = [v12 objectAtIndexedSubscript:v11];
        v14 = [v4 schedules];
        v15 = [v14 objectAtIndexedSubscript:v11];
        v16 = [v13 isEquivalent:v15];

        if ((v16 & 1) == 0)
        {
          goto LABEL_11;
        }

        ++v11;
        v17 = [(HKSleepDaySummary *)self schedules];
        v7 = [v17 count];
      }

      while (v11 < v7);
    }

    v18 = [(HKSleepDaySummary *)self morningIndex];
    if (v18 == [v4 morningIndex])
    {
      v19 = [(HKSleepDaySummary *)self dateInterval];
      v20 = [v4 dateInterval];
      if (v19 != v20)
      {
        v21 = [v4 dateInterval];
        if (!v21)
        {
          v24 = 0;
          goto LABEL_41;
        }

        v7 = v21;
        v22 = [(HKSleepDaySummary *)self dateInterval];
        v23 = [v4 dateInterval];
        if (![v22 isEqual:v23])
        {
          v24 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v87 = v23;
        v88 = v22;
      }

      v26 = [(HKSleepDaySummary *)self calendar];
      v27 = [v4 calendar];
      if (v26 != v27)
      {
        v28 = [v4 calendar];
        if (!v28)
        {
          goto LABEL_37;
        }

        v29 = v28;
        v30 = [(HKSleepDaySummary *)self calendar];
        v31 = [v4 calendar];
        if (([v30 isEqual:v31] & 1) == 0)
        {

          goto LABEL_37;
        }

        v80 = v31;
        v81 = v30;
        v82 = v29;
      }

      v32 = [(HKSleepDaySummary *)self periods];
      v33 = [v4 periods];
      v34 = v33;
      v86 = v32;
      if (v32 == v33)
      {
        v84 = v27;
        v37 = v26;
        v38 = v7;
        v39 = v33;
        goto LABEL_24;
      }

      v35 = [v4 periods];
      if (v35)
      {
        v79 = v35;
        v32 = [(HKSleepDaySummary *)self periods];
        v36 = [v4 periods];
        if ([v32 isEqual:v36])
        {
          v84 = v27;
          v37 = v26;
          v38 = v7;
          v39 = v34;
          v76 = v36;
LABEL_24:
          v40 = [(HKSleepDaySummary *)self sleepDurationGoal];
          [v4 sleepDurationGoal];
          v83 = v85 = v40;
          if (v40 == v83)
          {
            v78 = v39;
            v7 = v38;
LABEL_30:
            v45 = [(HKSleepDaySummary *)self minimumRecommendedSleepDurationGoal];
            [v4 minimumRecommendedSleepDurationGoal];
            v75 = v74 = v37;
            v77 = v32;
            if (v45 == v75)
            {
              v72 = v7;
              v50 = v37;
              v49 = v84;
            }

            else
            {
              v46 = [v4 minimumRecommendedSleepDurationGoal];
              if (!v46)
              {
                v24 = 0;
                v63 = v76;
                v64 = v86;
                v49 = v84;
                goto LABEL_63;
              }

              v69 = v46;
              v47 = [(HKSleepDaySummary *)self minimumRecommendedSleepDurationGoal];
              v48 = [v4 minimumRecommendedSleepDurationGoal];
              if (([v47 isEqual:v48] & 1) == 0)
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

              v67 = v48;
              v68 = v47;
              v72 = v7;
              v49 = v84;
              v50 = v74;
            }

            v53 = [(HKSleepDaySummary *)self creationInterval];
            v54 = [v4 creationInterval];
            v24 = v53 == v54;
            if (v53 != v54)
            {
              v55 = [v4 creationInterval];
              if (v55)
              {
                v84 = v49;
                v66 = v55;
                v56 = [(HKSleepDaySummary *)self creationInterval];
                v57 = [v4 creationInterval];
                v24 = [v56 isEqual:v57];

                if (v45 != v75)
                {
                }

                v58 = v85;
                v52 = v86;
                v59 = v83;
                v60 = v71;
                v7 = v72;
                v61 = v76;
                if (v85 != v83)
                {
                  goto LABEL_49;
                }

                goto LABEL_71;
              }
            }

            if (v45 == v75)
            {

              v64 = v86;
              v65 = v83;
              v7 = v72;
              v63 = v76;
              if (v85 == v83)
              {
                goto LABEL_65;
              }

              goto LABEL_64;
            }

            v7 = v72;
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
              v23 = v87;
              v22 = v88;
              if (v19 != v20)
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

          v41 = [v4 sleepDurationGoal];
          v42 = v39;
          if (!v41)
          {
            v77 = v32;
            v24 = 0;
            v51 = v76;
            v52 = v86;
            v7 = v38;
            v50 = v37;
            goto LABEL_50;
          }

          v78 = v39;
          v73 = v41;
          v43 = [(HKSleepDaySummary *)self sleepDurationGoal];
          v44 = [v4 sleepDurationGoal];
          v7 = v38;
          if ([v43 isEqual:v44])
          {
            v70 = v43;
            v71 = v44;
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

      if (v26 != v27)
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
  v3 = [(HKSleepDaySummary *)self morningIndex];
  v20 = [(HKSleepDaySummary *)self dateInterval];
  v4 = [v20 hash] ^ v3;
  v5 = [(HKSleepDaySummary *)self calendar];
  v6 = [v5 hash];
  v7 = [(HKSleepDaySummary *)self periods];
  v8 = v4 ^ v6 ^ [v7 hash];
  v9 = [(HKSleepDaySummary *)self schedules];
  v10 = [v9 hash];
  v11 = [(HKSleepDaySummary *)self sleepDurationGoal];
  v12 = [v11 hk_secondsNumber];
  v13 = v8 ^ v10 ^ [v12 hash];
  v14 = [(HKSleepDaySummary *)self minimumRecommendedSleepDurationGoal];
  v15 = [v14 hk_secondsNumber];
  v16 = [v15 hash];
  v17 = [(HKSleepDaySummary *)self creationInterval];
  v18 = v16 ^ [v17 hash];

  return v13 ^ v18;
}

- (BOOL)getData:(id *)a3 error:(id *)a4
{
  v15 = 0;
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v15];
  v8 = v15;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v7;
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
      if (a4)
      {
        v13 = v11;
        *a4 = v12;
      }

      else
      {
        _HKLogDroppedError(v11);
      }
    }
  }

  return v7 != 0;
}

- (id)summaryFilteredWithOptions:(unint64_t)a3 strategyType:(int64_t)a4
{
  v5 = a3;
  v21[1] = *MEMORY[0x1E69E9840];
  v6 = self;
  v7 = v6;
  if (v5)
  {
    v12 = [(HKSleepDaySummary *)v6 primarySleepPeriodUsingSummaryDurationStrategyType:a4];
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

  if ((v5 & 2) == 0)
  {
    goto LABEL_12;
  }

  v8 = [(HKSleepDaySummary *)v6 lastSleepPeriod];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  v20 = v8;
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
  if ((v5 & 4) != 0)
  {
    v15 = [v7 periods];
    v16 = [v15 hk_map:&__block_literal_global_57];

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

- (id)_updatingPeriods:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [HKSleepDaySummary alloc];
    v7 = [(HKSleepDaySummary *)self morningIndex];
    v8 = [(HKSleepDaySummary *)self dateInterval];
    v9 = [(HKSleepDaySummary *)self calendar];
    v10 = [(HKSleepDaySummary *)self schedules];
    v11 = [(HKSleepDaySummary *)self sleepDurationGoal];
    v12 = [(HKSleepDaySummary *)self minimumRecommendedSleepDurationGoal];
    v13 = [(HKSleepDaySummary *)self creationInterval];
    v14 = [(HKSleepDaySummary *)v6 initWithMorningIndex:v7 dateInterval:v8 calendar:v9 periods:v5 schedules:v10 sleepDurationGoal:v11 minimumRecommendedSleepDurationGoal:v12 creationInterval:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)durationsForStrategyType:(int64_t)a3
{
  if (self)
  {
    self = self->_totalDurations;
  }

  return [(HKSleepDaySummary *)self durationsForStrategyType:a3];
}

- (id)primarySleepPeriodUsingSummaryDurationStrategyType:(int64_t)a3
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
    v11 = [v10 durationsForStrategyType:a3];
    [v11 maxDuration];
    v13 = v12;

    if (v13 > v7)
    {
      v14 = [(HKSleepDaySummary *)self periods];
      v15 = [v14 objectAtIndexedSubscript:v5];

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