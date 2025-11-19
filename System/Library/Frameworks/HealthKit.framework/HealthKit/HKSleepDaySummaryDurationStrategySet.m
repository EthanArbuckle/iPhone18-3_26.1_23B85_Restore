@interface HKSleepDaySummaryDurationStrategySet
- (BOOL)containsStrategy:(id)a3;
- (HKSleepDaySummaryDurationStrategySet)initWithStrategies:(id)a3;
- (id)strategyForType:(int64_t)a3;
- (void)enumerateWithBlock:(id)a3;
@end

@implementation HKSleepDaySummaryDurationStrategySet

- (HKSleepDaySummaryDurationStrategySet)initWithStrategies:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKSleepDaySummaryDurationStrategySet;
  v5 = [(HKSleepDaySummaryDurationStrategySet *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    strategies = v5->_strategies;
    v5->_strategies = v6;
  }

  return v5;
}

- (id)strategyForType:(int64_t)a3
{
  strategies = self->_strategies;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSDictionary *)strategies objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)containsStrategy:(id)a3
{
  strategies = self->_strategies;
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "strategyType")}];
  v7 = [(NSDictionary *)strategies objectForKeyedSubscript:v6];
  v8 = [v7 isEqualTo:v5];

  return v8;
}

- (void)enumerateWithBlock:(id)a3
{
  v4 = a3;
  strategies = self->_strategies;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__HKSleepDaySummaryDurationStrategySet_enumerateWithBlock___block_invoke;
  v7[3] = &unk_1E7384C98;
  v8 = v4;
  v6 = v4;
  [(NSDictionary *)strategies enumerateKeysAndObjectsUsingBlock:v7];
}

@end