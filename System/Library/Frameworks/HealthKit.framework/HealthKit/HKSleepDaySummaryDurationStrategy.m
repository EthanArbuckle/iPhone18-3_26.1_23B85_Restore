@interface HKSleepDaySummaryDurationStrategy
+ (id)bestFitDurationStrategyForSleepDayInterval:(id)a3;
+ (id)bestFitDurationStrategyForSleepDayInterval:(id)a3 considerationInterval:(id)a4;
+ (id)clippedDurationStrategyForSleepDayInterval:(id)a3;
+ (id)completeDurationStrategyForSleepDayInterval:(id)a3;
+ (id)standardStrategiesForSleepDayInterval:(id)a3;
- (BOOL)isEqualTo:(id)a3;
- (HKSleepDaySummaryDurationStrategy)initWithSleepDayInterval:(id)a3 considerationInterval:(id)a4;
- (id)computeDurationsFromPeriod:(id)a3;
- (int64_t)strategyType;
@end

@implementation HKSleepDaySummaryDurationStrategy

- (HKSleepDaySummaryDurationStrategy)initWithSleepDayInterval:(id)a3 considerationInterval:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKSleepDaySummaryDurationStrategy;
  v9 = [(HKSleepDaySummaryDurationStrategy *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepDayInterval, a3);
    objc_storeStrong(&v10->_considerationInterval, a4);
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

- (id)computeDurationsFromPeriod:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:1 overlappingDateInterval:v5];
  v7 = v6;

  v8 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:3 overlappingDateInterval:v8];
  v10 = v9;

  v11 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:4 overlappingDateInterval:v11];
  v13 = v12;

  v14 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:5 overlappingDateInterval:v14];
  v16 = v15;

  v17 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:2 overlappingDateInterval:v17];
  v19 = v18;

  v20 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
  [v4 durationForCategory:0 overlappingDateInterval:v20];
  v22 = v21;

  v23 = [[HKSleepDaySummaryDurations alloc] initWithInBedDuration:v22 sleepDuration:v7 + v10 + v13 + v16 unspecifiedSleepDuration:v7 coreSleepDuration:v10 deepSleepDuration:v13 remSleepDuration:v16 awakeDuration:v19];

  return v23;
}

- (BOOL)isEqualTo:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDaySummaryDurationStrategy *)self sleepDayInterval];
  v6 = [v4 sleepDayInterval];
  if ([v5 isEqualToDateInterval:v6])
  {
    v7 = [(HKSleepDaySummaryDurationStrategy *)self considerationInterval];
    v8 = [v4 considerationInterval];
    if ([v7 isEqualToDateInterval:v8])
    {
      v9 = [(HKSleepDaySummaryDurationStrategy *)self strategyType];
      v10 = v9 == [v4 strategyType];
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

+ (id)clippedDurationStrategyForSleepDayInterval:(id)a3
{
  v3 = a3;
  v4 = [[_HKSleepDaySummaryDurationComputationStrategyClipped alloc] initWithSleepDayInterval:v3];

  return v4;
}

+ (id)completeDurationStrategyForSleepDayInterval:(id)a3
{
  v3 = a3;
  v4 = [[_HKSleepDaySummaryDurationComputationStrategyComplete alloc] initWithSleepDayInterval:v3];

  return v4;
}

+ (id)bestFitDurationStrategyForSleepDayInterval:(id)a3
{
  v4 = MEMORY[0x1E696AB80];
  v5 = a3;
  v6 = [v4 hk_allTime];
  v7 = [a1 bestFitDurationStrategyForSleepDayInterval:v5 considerationInterval:v6];

  return v7;
}

+ (id)bestFitDurationStrategyForSleepDayInterval:(id)a3 considerationInterval:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(HKSleepDaySummaryDurationStrategy *)[_HKSleepDaySummaryDurationComputationStrategyBestFit alloc] initWithSleepDayInterval:v6 considerationInterval:v5];

  return v7;
}

+ (id)standardStrategiesForSleepDayInterval:(id)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HKSleepDaySummaryDurationStrategySet alloc];
  v13[0] = &unk_1F06859D0;
  v6 = [a1 clippedDurationStrategyForSleepDayInterval:v4];
  v14[0] = v6;
  v13[1] = &unk_1F06859E8;
  v7 = [a1 completeDurationStrategyForSleepDayInterval:v4];
  v14[1] = v7;
  v13[2] = &unk_1F0685A00;
  v8 = [a1 bestFitDurationStrategyForSleepDayInterval:v4];

  v14[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v10 = [(HKSleepDaySummaryDurationStrategySet *)v5 initWithStrategies:v9];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

@end