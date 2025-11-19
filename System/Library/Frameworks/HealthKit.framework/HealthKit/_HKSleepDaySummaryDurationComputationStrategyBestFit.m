@interface _HKSleepDaySummaryDurationComputationStrategyBestFit
- (id)computeDurationsFromPeriod:(id)a3;
@end

@implementation _HKSleepDaySummaryDurationComputationStrategyBestFit

- (id)computeDurationsFromPeriod:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  v6 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:1 bestFittingSleepDayInterval:v5 consideringInterval:v6];
  v8 = v7;

  v9 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  v10 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:3 bestFittingSleepDayInterval:v9 consideringInterval:v10];
  v12 = v11;

  v13 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  v14 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:4 bestFittingSleepDayInterval:v13 consideringInterval:v14];
  v16 = v15;

  v17 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  v18 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:5 bestFittingSleepDayInterval:v17 consideringInterval:v18];
  v20 = v19;

  v21 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  v22 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:2 bestFittingSleepDayInterval:v21 consideringInterval:v22];
  v24 = v23;

  v25 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  v26 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:0 bestFittingSleepDayInterval:v25 consideringInterval:v26];
  v28 = v27;

  v29 = [[HKSleepDaySummaryDurations alloc] initWithInBedDuration:v28 sleepDuration:v8 + v12 + v16 + v20 unspecifiedSleepDuration:v8 coreSleepDuration:v12 deepSleepDuration:v16 remSleepDuration:v20 awakeDuration:v24];

  return v29;
}

@end