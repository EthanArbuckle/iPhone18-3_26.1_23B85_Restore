@interface HKSleepDaySummaryDurationCollection
+ (id)computeDurationsFromSleepPeriod:(id)a3 sleepDayInterval:(id)a4;
+ (id)computeDurationsFromSleepPeriod:(id)a3 sleepDayInterval:(id)a4 strategies:(id)a5;
- (id)durationsByAdding:(id)a3;
- (id)durationsForStrategyType:(int64_t)a3;
- (id)initWithDurations:(id *)a1;
@end

@implementation HKSleepDaySummaryDurationCollection

+ (id)computeDurationsFromSleepPeriod:(id)a3 sleepDayInterval:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKSleepDaySummaryDurationStrategy standardStrategiesForSleepDayInterval:v6];
  v9 = [a1 computeDurationsFromSleepPeriod:v7 sleepDayInterval:v6 strategies:v8];

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

- (id)durationsForStrategyType:(int64_t)a3
{
  durations = self->_durations;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSDictionary *)durations objectForKeyedSubscript:v6];

  if (!v7)
  {
    [(HKSleepDaySummaryDurationCollection *)a2 durationsForStrategyType:?];
  }

  return v7;
}

- (id)initWithDurations:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = HKSleepDaySummaryDurationCollection;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

+ (id)computeDurationsFromSleepPeriod:(id)a3 sleepDayInterval:(id)a4 strategies:(id)a5
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF90];
  v8 = a5;
  v9 = objc_alloc_init(v7);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __99__HKSleepDaySummaryDurationCollection_computeDurationsFromSleepPeriod_sleepDayInterval_strategies___block_invoke;
  v19 = &unk_1E7383E10;
  v20 = v6;
  v21 = v9;
  v10 = v9;
  v11 = v6;
  [v8 enumerateWithBlock:&v16];

  v12 = [HKSleepDaySummaryDurationCollection alloc];
  v13 = [v10 copy];
  v14 = [(HKSleepDaySummaryDurationCollection *)&v12->super.isa initWithDurations:v13];

  return v14;
}

- (id)durationsByAdding:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v11 = [v10 integerValue];
        v12 = [(HKSleepDaySummaryDurationCollection *)self durationsForStrategyType:v11];
        v13 = [v4 durationsForStrategyType:v11];
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