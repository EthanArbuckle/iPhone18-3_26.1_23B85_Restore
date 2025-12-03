@interface HKSleepDaySummaryDurationCollection
+ (id)computeDurationsFromSleepPeriod:(id)period sleepDayInterval:(id)interval;
+ (id)computeDurationsFromSleepPeriod:(id)period sleepDayInterval:(id)interval strategies:(id)strategies;
- (id)durationsByAdding:(id)adding;
- (id)durationsForStrategyType:(int64_t)type;
- (id)initWithDurations:(id *)durations;
@end

@implementation HKSleepDaySummaryDurationCollection

+ (id)computeDurationsFromSleepPeriod:(id)period sleepDayInterval:(id)interval
{
  intervalCopy = interval;
  periodCopy = period;
  v8 = [HKSleepDaySummaryDurationStrategy standardStrategiesForSleepDayInterval:intervalCopy];
  v9 = [self computeDurationsFromSleepPeriod:periodCopy sleepDayInterval:intervalCopy strategies:v8];

  return v9;
}

void __99__HKSleepDaySummaryDurationCollection_computeDurationsFromSleepPeriod_sleepDayInterval_strategies___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v9 = [v4 computeDurationsFromPeriod:v3];
  v5 = *(a1 + 40);
  v6 = MEMORY[0x1E696AD98];
  v7 = [v4 strategyType];

  v8 = [v6 numberWithInteger:v7];
  [v5 setObject:v9 forKeyedSubscript:v8];
}

- (id)durationsForStrategyType:(int64_t)type
{
  durations = self->_durations;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v7 = [(NSDictionary *)durations objectForKeyedSubscript:v6];

  if (!v7)
  {
    [(HKSleepDaySummaryDurationCollection *)a2 durationsForStrategyType:?];
  }

  return v7;
}

- (id)initWithDurations:(id *)durations
{
  v4 = a2;
  if (durations)
  {
    v7.receiver = durations;
    v7.super_class = HKSleepDaySummaryDurationCollection;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    durations = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return durations;
}

+ (id)computeDurationsFromSleepPeriod:(id)period sleepDayInterval:(id)interval strategies:(id)strategies
{
  periodCopy = period;
  v7 = MEMORY[0x1E695DF90];
  strategiesCopy = strategies;
  v9 = objc_alloc_init(v7);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __99__HKSleepDaySummaryDurationCollection_computeDurationsFromSleepPeriod_sleepDayInterval_strategies___block_invoke;
  v19 = &unk_1E7383E10;
  v20 = periodCopy;
  v21 = v9;
  v10 = v9;
  v11 = periodCopy;
  [strategiesCopy enumerateWithBlock:&v16];

  v12 = [HKSleepDaySummaryDurationCollection alloc];
  v13 = [v10 copy];
  v14 = [(HKSleepDaySummaryDurationCollection *)&v12->super.isa initWithDurations:v13];

  return v14;
}

- (id)durationsByAdding:(id)adding
{
  v26 = *MEMORY[0x1E69E9840];
  addingCopy = adding;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_durations;
  v6 = [(NSDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        integerValue = [v10 integerValue];
        v12 = [(HKSleepDaySummaryDurationCollection *)self durationsForStrategyType:integerValue];
        v13 = [addingCopy durationsForStrategyType:integerValue];
        v14 = [v12 durationsByAdding:v13];
        [v5 setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [(NSDictionary *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = [HKSleepDaySummaryDurationCollection alloc];
  v16 = [v5 copy];
  v17 = [(HKSleepDaySummaryDurationCollection *)&v15->super.isa initWithDurations:v16];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)durationsForStrategyType:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepDaySummaryDurations.m" lineNumber:92 description:@"Durations for a given strategy should never be nil"];
}

@end