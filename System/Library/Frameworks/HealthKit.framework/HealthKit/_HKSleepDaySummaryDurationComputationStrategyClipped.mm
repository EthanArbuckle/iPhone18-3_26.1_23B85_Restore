@interface _HKSleepDaySummaryDurationComputationStrategyClipped
- (_HKSleepDaySummaryDurationComputationStrategyClipped)initWithSleepDayInterval:(id)interval;
@end

@implementation _HKSleepDaySummaryDurationComputationStrategyClipped

- (_HKSleepDaySummaryDurationComputationStrategyClipped)initWithSleepDayInterval:(id)interval
{
  v4.receiver = self;
  v4.super_class = _HKSleepDaySummaryDurationComputationStrategyClipped;
  return [(HKSleepDaySummaryDurationStrategy *)&v4 initWithSleepDayInterval:interval considerationInterval:interval];
}

@end