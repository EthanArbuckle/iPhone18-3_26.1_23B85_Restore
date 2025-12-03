@interface _HKSleepDaySummaryDurationComputationStrategyBestFit
- (id)computeDurationsFromPeriod:(id)period;
@end

@implementation _HKSleepDaySummaryDurationComputationStrategyBestFit

- (id)computeDurationsFromPeriod:(id)period
{
  periodCopy = period;
  sleepDayInterval = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  considerationInterval = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:1 bestFittingSleepDayInterval:sleepDayInterval consideringInterval:considerationInterval];
  v8 = v7;

  sleepDayInterval2 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  considerationInterval2 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:3 bestFittingSleepDayInterval:sleepDayInterval2 consideringInterval:considerationInterval2];
  v12 = v11;

  sleepDayInterval3 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  considerationInterval3 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:4 bestFittingSleepDayInterval:sleepDayInterval3 consideringInterval:considerationInterval3];
  v16 = v15;

  sleepDayInterval4 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  considerationInterval4 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:5 bestFittingSleepDayInterval:sleepDayInterval4 consideringInterval:considerationInterval4];
  v20 = v19;

  sleepDayInterval5 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  considerationInterval5 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:2 bestFittingSleepDayInterval:sleepDayInterval5 consideringInterval:considerationInterval5];
  v24 = v23;

  sleepDayInterval6 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  considerationInterval6 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:0 bestFittingSleepDayInterval:sleepDayInterval6 consideringInterval:considerationInterval6];
  v28 = v27;

  v29 = [[HKSleepDaySummaryDurations alloc] initWithInBedDuration:v28 sleepDuration:v8 + v12 + v16 + v20 unspecifiedSleepDuration:v8 coreSleepDuration:v12 deepSleepDuration:v16 remSleepDuration:v20 awakeDuration:v24];

  return v29;
}

@end