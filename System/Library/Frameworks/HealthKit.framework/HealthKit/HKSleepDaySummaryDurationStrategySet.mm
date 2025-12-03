@interface HKSleepDaySummaryDurationStrategySet
- (BOOL)containsStrategy:(id)strategy;
- (HKSleepDaySummaryDurationStrategySet)initWithStrategies:(id)strategies;
- (id)strategyForType:(int64_t)type;
- (void)enumerateWithBlock:(id)block;
@end

@implementation HKSleepDaySummaryDurationStrategySet

- (HKSleepDaySummaryDurationStrategySet)initWithStrategies:(id)strategies
{
  strategiesCopy = strategies;
  v9.receiver = self;
  v9.super_class = HKSleepDaySummaryDurationStrategySet;
  v5 = [(HKSleepDaySummaryDurationStrategySet *)&v9 init];
  if (v5)
  {
    v6 = [strategiesCopy copy];
    strategies = v5->_strategies;
    v5->_strategies = v6;
  }

  return v5;
}

- (id)strategyForType:(int64_t)type
{
  strategies = self->_strategies;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  v5 = [(NSDictionary *)strategies objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)containsStrategy:(id)strategy
{
  strategies = self->_strategies;
  v4 = MEMORY[0x1E696AD98];
  strategyCopy = strategy;
  v6 = [v4 numberWithInteger:{objc_msgSend(strategyCopy, "strategyType")}];
  v7 = [(NSDictionary *)strategies objectForKeyedSubscript:v6];
  v8 = [v7 isEqualTo:strategyCopy];

  return v8;
}

- (void)enumerateWithBlock:(id)block
{
  blockCopy = block;
  strategies = self->_strategies;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__HKSleepDaySummaryDurationStrategySet_enumerateWithBlock___block_invoke;
  v7[3] = &unk_1E7384C98;
  v8 = blockCopy;
  v6 = blockCopy;
  [(NSDictionary *)strategies enumerateKeysAndObjectsUsingBlock:v7];
}

@end