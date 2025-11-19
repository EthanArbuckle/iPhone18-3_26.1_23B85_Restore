@interface _HKSleepDaySummaryDurationComputationStrategyComplete
- (_HKSleepDaySummaryDurationComputationStrategyComplete)initWithSleepDayInterval:(id)a3;
@end

@implementation _HKSleepDaySummaryDurationComputationStrategyComplete

- (_HKSleepDaySummaryDurationComputationStrategyComplete)initWithSleepDayInterval:(id)a3
{
  v4 = MEMORY[0x1E696AB80];
  v5 = a3;
  v6 = [v4 hk_allTime];
  v9.receiver = self;
  v9.super_class = _HKSleepDaySummaryDurationComputationStrategyComplete;
  v7 = [(HKSleepDaySummaryDurationStrategy *)&v9 initWithSleepDayInterval:v5 considerationInterval:v6];

  return v7;
}

@end