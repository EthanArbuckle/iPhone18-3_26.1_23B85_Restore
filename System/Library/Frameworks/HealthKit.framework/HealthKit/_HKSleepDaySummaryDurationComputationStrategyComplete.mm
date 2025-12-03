@interface _HKSleepDaySummaryDurationComputationStrategyComplete
- (_HKSleepDaySummaryDurationComputationStrategyComplete)initWithSleepDayInterval:(id)interval;
@end

@implementation _HKSleepDaySummaryDurationComputationStrategyComplete

- (_HKSleepDaySummaryDurationComputationStrategyComplete)initWithSleepDayInterval:(id)interval
{
  v4 = MEMORY[0x1E696AB80];
  intervalCopy = interval;
  hk_allTime = [v4 hk_allTime];
  v9.receiver = self;
  v9.super_class = _HKSleepDaySummaryDurationComputationStrategyComplete;
  v7 = [(HKSleepDaySummaryDurationStrategy *)&v9 initWithSleepDayInterval:intervalCopy considerationInterval:hk_allTime];

  return v7;
}

@end