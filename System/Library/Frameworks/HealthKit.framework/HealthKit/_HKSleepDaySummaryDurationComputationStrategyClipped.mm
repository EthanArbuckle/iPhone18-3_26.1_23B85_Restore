@interface _HKSleepDaySummaryDurationComputationStrategyClipped
- (_HKSleepDaySummaryDurationComputationStrategyClipped)initWithSleepDayInterval:(id)a3;
@end

@implementation _HKSleepDaySummaryDurationComputationStrategyClipped

- (_HKSleepDaySummaryDurationComputationStrategyClipped)initWithSleepDayInterval:(id)a3
{
  v4.receiver = self;
  v4.super_class = _HKSleepDaySummaryDurationComputationStrategyClipped;
  return [(HKSleepDaySummaryDurationStrategy *)&v4 initWithSleepDayInterval:a3 considerationInterval:a3];
}

@end