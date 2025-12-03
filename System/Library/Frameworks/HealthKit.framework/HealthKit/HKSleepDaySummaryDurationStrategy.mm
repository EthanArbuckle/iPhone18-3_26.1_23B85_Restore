@interface HKSleepDaySummaryDurationStrategy
+ (id)bestFitDurationStrategyForSleepDayInterval:(id)interval;
+ (id)bestFitDurationStrategyForSleepDayInterval:(id)interval considerationInterval:(id)considerationInterval;
+ (id)clippedDurationStrategyForSleepDayInterval:(id)interval;
+ (id)completeDurationStrategyForSleepDayInterval:(id)interval;
+ (id)standardStrategiesForSleepDayInterval:(id)interval;
- (BOOL)isEqualTo:(id)to;
- (HKSleepDaySummaryDurationStrategy)initWithSleepDayInterval:(id)interval considerationInterval:(id)considerationInterval;
- (id)computeDurationsFromPeriod:(id)period;
- (int64_t)strategyType;
@end

@implementation HKSleepDaySummaryDurationStrategy

- (HKSleepDaySummaryDurationStrategy)initWithSleepDayInterval:(id)interval considerationInterval:(id)considerationInterval
{
  intervalCopy = interval;
  considerationIntervalCopy = considerationInterval;
  v12.receiver = self;
  v12.super_class = HKSleepDaySummaryDurationStrategy;
  v9 = [(HKSleepDaySummaryDurationStrategy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepDayInterval, interval);
    objc_storeStrong(&v10->_considerationInterval, considerationInterval);
  }

  return v10;
}

- (int64_t)strategyType
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)computeDurationsFromPeriod:(id)period
{
  periodCopy = period;
  considerationInterval = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:1 overlappingDateInterval:considerationInterval];
  v7 = v6;

  considerationInterval2 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:3 overlappingDateInterval:considerationInterval2];
  v10 = v9;

  considerationInterval3 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:4 overlappingDateInterval:considerationInterval3];
  v13 = v12;

  considerationInterval4 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:5 overlappingDateInterval:considerationInterval4];
  v16 = v15;

  considerationInterval5 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:2 overlappingDateInterval:considerationInterval5];
  v19 = v18;

  considerationInterval6 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [periodCopy durationForCategory:0 overlappingDateInterval:considerationInterval6];
  v22 = v21;

  v23 = [[HKSleepDaySummaryDurations alloc] initWithInBedDuration:v22 sleepDuration:v7 + v10 + v13 + v16 unspecifiedSleepDuration:v7 coreSleepDuration:v10 deepSleepDuration:v13 remSleepDuration:v16 awakeDuration:v19];

  return v23;
}

- (BOOL)isEqualTo:(id)to
{
  toCopy = to;
  sleepDayInterval = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  sleepDayInterval2 = [toCopy sleepDayInterval];
  if ([sleepDayInterval isEqualToDateInterval:sleepDayInterval2])
  {
    considerationInterval = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
    considerationInterval2 = [toCopy considerationInterval];
    if ([considerationInterval isEqualToDateInterval:considerationInterval2])
    {
      strategyType = [(HKSleepDaySummaryDurationStrategy *)self strategyType];
      v10 = strategyType == [toCopy strategyType];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)clippedDurationStrategyForSleepDayInterval:(id)interval
{
  intervalCopy = interval;
  v4 = [[_HKSleepDaySummaryDurationComputationStrategyClipped alloc] initWithSleepDayInterval:intervalCopy];

  return v4;
}

+ (id)completeDurationStrategyForSleepDayInterval:(id)interval
{
  intervalCopy = interval;
  v4 = [[_HKSleepDaySummaryDurationComputationStrategyComplete alloc] initWithSleepDayInterval:intervalCopy];

  return v4;
}

+ (id)bestFitDurationStrategyForSleepDayInterval:(id)interval
{
  v4 = MEMORY[0x1E696AB80];
  intervalCopy = interval;
  hk_allTime = [v4 hk_allTime];
  v7 = [self bestFitDurationStrategyForSleepDayInterval:intervalCopy considerationInterval:hk_allTime];

  return v7;
}

+ (id)bestFitDurationStrategyForSleepDayInterval:(id)interval considerationInterval:(id)considerationInterval
{
  considerationIntervalCopy = considerationInterval;
  intervalCopy = interval;
  v7 = [(HKSleepDaySummaryDurationStrategy *)[_HKSleepDaySummaryDurationComputationStrategyBestFit alloc] initWithSleepDayInterval:intervalCopy considerationInterval:considerationIntervalCopy];

  return v7;
}

+ (id)standardStrategiesForSleepDayInterval:(id)interval
{
  v14[3] = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  v5 = [HKSleepDaySummaryDurationStrategySet alloc];
  v13[0] = &unk_1F06859D0;
  v6 = [self clippedDurationStrategyForSleepDayInterval:intervalCopy];
  v14[0] = v6;
  v13[1] = &unk_1F06859E8;
  v7 = [self completeDurationStrategyForSleepDayInterval:intervalCopy];
  v14[1] = v7;
  v13[2] = &unk_1F0685A00;
  v8 = [self bestFitDurationStrategyForSleepDayInterval:intervalCopy];

  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [(HKSleepDaySummaryDurationStrategySet *)v5 initWithStrategies:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end