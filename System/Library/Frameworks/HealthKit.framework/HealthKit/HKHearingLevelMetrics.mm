@interface HKHearingLevelMetrics
+ (HKHearingLevelMetrics)_overallMetricsFromLeftEarMetrics:(void *)a3 rightEarMetrics:;
- (BOOL)isEqual:(id)a3;
- (HKHearingLevelMetrics)initWithAverageSensitivity:(id)a3 minimumSensitivity:(id)a4 maximumSensitivity:(id)a5;
- (id)description;
- (uint64_t)isEqualToHearingLevelMetrics:(void *)a1;
@end

@implementation HKHearingLevelMetrics

- (HKHearingLevelMetrics)initWithAverageSensitivity:(id)a3 minimumSensitivity:(id)a4 maximumSensitivity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKHearingLevelMetrics;
  v12 = [(HKHearingLevelMetrics *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_averageSensitivity, a3);
    objc_storeStrong(&v13->_minimumSensitivity, a4);
    objc_storeStrong(&v13->_maximumSensitivity, a5);
  }

  return v13;
}

+ (HKHearingLevelMetrics)_overallMetricsFromLeftEarMetrics:(void *)a3 rightEarMetrics:
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  if (v4 | v5)
  {
    v7 = [v4 averageSensitivity];
    v8 = [v5 averageSensitivity];
    v9 = HKQuantityMin(v7, v8);

    v10 = [v4 minimumSensitivity];
    v11 = [v5 minimumSensitivity];
    v12 = HKQuantityMin(v10, v11);

    v13 = [v4 maximumSensitivity];
    v14 = [v5 maximumSensitivity];
    v15 = HKQuantityMax(v13, v14);

    v6 = [[HKHearingLevelMetrics alloc] initWithAverageSensitivity:v9 minimumSensitivity:v12 maximumSensitivity:v15];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (self == v4)
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
  v6 = [(HKHearingLevelMetrics *)self averageSensitivity];
  v7 = [(HKHearingLevelMetrics *)self minimumSensitivity];
  v8 = [(HKHearingLevelMetrics *)self maximumSensitivity];
  v9 = [v3 stringWithFormat:@"<%@:%p averageValue = %@, minValue = %@, maxValue = %@>", v5, self, v6, v7, v8];

  return v9;
}

- (uint64_t)isEqualToHearingLevelMetrics:(void *)a1
{
  v5 = a2;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v6 = [a1 averageSensitivity];
  v7 = [v5 averageSensitivity];
  if (v6 != v7)
  {
    [v5 averageSensitivity];
    if (!objc_claimAutoreleasedReturnValue())
    {
      v14 = 0;
      goto LABEL_27;
    }

    [OUTLINED_FUNCTION_1_4() averageSensitivity];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_0_9() averageSensitivity];
    if (![v2 isEqual:v8])
    {
      v14 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v26 = v8;
    v27 = v2;
  }

  v9 = [a1 minimumSensitivity];
  v10 = [v5 minimumSensitivity];
  if (v9 != v10)
  {
    v11 = [v5 minimumSensitivity];
    if (v11)
    {
      v2 = v11;
      v12 = [a1 minimumSensitivity];
      v13 = [v5 minimumSensitivity];
      if ([v12 isEqual:v13])
      {
        v22 = v13;
        v23 = v12;
        v24 = v2;
        goto LABEL_11;
      }
    }

    v14 = 0;
LABEL_24:
    v20 = v6 == v7;
    goto LABEL_25;
  }

LABEL_11:
  [a1 maximumSensitivity];
  objc_claimAutoreleasedReturnValue();
  v15 = [OUTLINED_FUNCTION_0_9() maximumSensitivity];
  v16 = v15;
  v14 = v2 == v15;
  if (v2 == v15)
  {

LABEL_21:
    if (v9 != v10)
    {
    }

    goto LABEL_24;
  }

  v25 = v9;
  v17 = [v5 maximumSensitivity];
  if (!v17)
  {

    goto LABEL_21;
  }

  v18 = v17;
  v19 = [a1 maximumSensitivity];
  [v5 maximumSensitivity];
  objc_claimAutoreleasedReturnValue();
  v14 = [OUTLINED_FUNCTION_1_4() isEqual:v3];

  if (v25 != v10)
  {
  }

  v20 = v6 == v7;
LABEL_25:
  v8 = v26;
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