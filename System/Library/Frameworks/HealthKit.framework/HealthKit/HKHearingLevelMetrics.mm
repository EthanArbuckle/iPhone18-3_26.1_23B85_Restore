@interface HKHearingLevelMetrics
+ (HKHearingLevelMetrics)_overallMetricsFromLeftEarMetrics:(void *)metrics rightEarMetrics:;
- (BOOL)isEqual:(id)equal;
- (HKHearingLevelMetrics)initWithAverageSensitivity:(id)sensitivity minimumSensitivity:(id)minimumSensitivity maximumSensitivity:(id)maximumSensitivity;
- (id)description;
- (uint64_t)isEqualToHearingLevelMetrics:(void *)metrics;
@end

@implementation HKHearingLevelMetrics

- (HKHearingLevelMetrics)initWithAverageSensitivity:(id)sensitivity minimumSensitivity:(id)minimumSensitivity maximumSensitivity:(id)maximumSensitivity
{
  sensitivityCopy = sensitivity;
  minimumSensitivityCopy = minimumSensitivity;
  maximumSensitivityCopy = maximumSensitivity;
  v15.receiver = self;
  v15.super_class = HKHearingLevelMetrics;
  v12 = [(HKHearingLevelMetrics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_averageSensitivity, sensitivity);
    objc_storeStrong(&v13->_minimumSensitivity, minimumSensitivity);
    objc_storeStrong(&v13->_maximumSensitivity, maximumSensitivity);
  }

  return v13;
}

+ (HKHearingLevelMetrics)_overallMetricsFromLeftEarMetrics:(void *)metrics rightEarMetrics:
{
  v4 = a2;
  metricsCopy = metrics;
  objc_opt_self();
  if (v4 | metricsCopy)
  {
    averageSensitivity = [v4 averageSensitivity];
    averageSensitivity2 = [metricsCopy averageSensitivity];
    v9 = HKQuantityMin(averageSensitivity, averageSensitivity2);

    minimumSensitivity = [v4 minimumSensitivity];
    minimumSensitivity2 = [metricsCopy minimumSensitivity];
    v12 = HKQuantityMin(minimumSensitivity, minimumSensitivity2);

    maximumSensitivity = [v4 maximumSensitivity];
    maximumSensitivity2 = [metricsCopy maximumSensitivity];
    v15 = HKQuantityMax(maximumSensitivity, maximumSensitivity2);

    v6 = [[HKHearingLevelMetrics alloc] initWithAverageSensitivity:v9 minimumSensitivity:v12 maximumSensitivity:v15];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v6 = 1;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(HKHearingLevelMetrics *)self isEqualToHearingLevelMetrics:v5];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  averageSensitivity = [(HKHearingLevelMetrics *)self averageSensitivity];
  minimumSensitivity = [(HKHearingLevelMetrics *)self minimumSensitivity];
  maximumSensitivity = [(HKHearingLevelMetrics *)self maximumSensitivity];
  v9 = [v3 stringWithFormat:@"<%@:%p averageValue = %@, minValue = %@, maxValue = %@>", v5, self, averageSensitivity, minimumSensitivity, maximumSensitivity];

  return v9;
}

- (uint64_t)isEqualToHearingLevelMetrics:(void *)metrics
{
  v5 = a2;
  if (!metrics)
  {
    v14 = 0;
    goto LABEL_28;
  }

  averageSensitivity = [metrics averageSensitivity];
  averageSensitivity2 = [v5 averageSensitivity];
  if (averageSensitivity != averageSensitivity2)
  {
    [v5 averageSensitivity];
    if (!objc_claimAutoreleasedReturnValue())
    {
      v14 = 0;
      goto LABEL_27;
    }

    [OUTLINED_FUNCTION_1_4() averageSensitivity];
    objc_claimAutoreleasedReturnValue();
    averageSensitivity3 = [OUTLINED_FUNCTION_0_9() averageSensitivity];
    if (![v2 isEqual:averageSensitivity3])
    {
      v14 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v26 = averageSensitivity3;
    v27 = v2;
  }

  minimumSensitivity = [metrics minimumSensitivity];
  minimumSensitivity2 = [v5 minimumSensitivity];
  if (minimumSensitivity != minimumSensitivity2)
  {
    minimumSensitivity3 = [v5 minimumSensitivity];
    if (minimumSensitivity3)
    {
      v2 = minimumSensitivity3;
      minimumSensitivity4 = [metrics minimumSensitivity];
      minimumSensitivity5 = [v5 minimumSensitivity];
      if ([minimumSensitivity4 isEqual:minimumSensitivity5])
      {
        v22 = minimumSensitivity5;
        v23 = minimumSensitivity4;
        v24 = v2;
        goto LABEL_11;
      }
    }

    v14 = 0;
LABEL_24:
    v20 = averageSensitivity == averageSensitivity2;
    goto LABEL_25;
  }

LABEL_11:
  [metrics maximumSensitivity];
  objc_claimAutoreleasedReturnValue();
  maximumSensitivity = [OUTLINED_FUNCTION_0_9() maximumSensitivity];
  v16 = maximumSensitivity;
  v14 = v2 == maximumSensitivity;
  if (v2 == maximumSensitivity)
  {

LABEL_21:
    if (minimumSensitivity != minimumSensitivity2)
    {
    }

    goto LABEL_24;
  }

  v25 = minimumSensitivity;
  maximumSensitivity2 = [v5 maximumSensitivity];
  if (!maximumSensitivity2)
  {

    goto LABEL_21;
  }

  v18 = maximumSensitivity2;
  maximumSensitivity3 = [metrics maximumSensitivity];
  [v5 maximumSensitivity];
  objc_claimAutoreleasedReturnValue();
  v14 = [OUTLINED_FUNCTION_1_4() isEqual:v3];

  if (v25 != minimumSensitivity2)
  {
  }

  v20 = averageSensitivity == averageSensitivity2;
LABEL_25:
  averageSensitivity3 = v26;
  v2 = v27;
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_27:

LABEL_28:
  return v14;
}

@end