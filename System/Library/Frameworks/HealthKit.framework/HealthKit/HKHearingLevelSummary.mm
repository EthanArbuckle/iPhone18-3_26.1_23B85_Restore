@interface HKHearingLevelSummary
+ (HKHearingLevelSummary)emptySummary;
+ (id)_roundWithPositiveZeroForSensitivity:(uint64_t)a1;
+ (id)summaryForAudiogramSample:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKHearingLevelSummary)initWithLeftEarMetrics:(id)a3 rightEarMetrics:(id)a4;
- (id)description;
- (uint64_t)isEqualToHearingLevelSummary:(void *)a1;
@end

@implementation HKHearingLevelSummary

- (HKHearingLevelSummary)initWithLeftEarMetrics:(id)a3 rightEarMetrics:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HKHearingLevelSummary;
  v9 = [(HKHearingLevelSummary *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_leftEarMetrics, a3);
    objc_storeStrong(&v10->_rightEarMetrics, a4);
    v11 = [HKHearingLevelMetrics _overallMetricsFromLeftEarMetrics:v7 rightEarMetrics:v8];
    overallMetrics = v10->_overallMetrics;
    v10->_overallMetrics = v11;
  }

  return v10;
}

+ (HKHearingLevelSummary)emptySummary
{
  objc_opt_self();
  v0 = [[HKHearingLevelSummary alloc] initWithLeftEarMetrics:0 rightEarMetrics:0];

  return v0;
}

+ (id)summaryForAudiogramSample:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 sensitivityPoints];
  v6 = [v5 count];

  if (v6)
  {
    v55 = a1;
    v7 = +[HKUnit decibelHearingLevelUnit];
    v8 = [HKQuantity quantityWithUnit:v7 doubleValue:1.79769313e308];

    v9 = +[HKUnit decibelHearingLevelUnit];
    v10 = [HKQuantity quantityWithUnit:v9 doubleValue:-1.79769313e308];

    v11 = v8;
    v12 = v10;
    v60 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v13 = v11;
    v14 = v12;
    v59 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v56 = v4;
    obj = [v4 sensitivityPoints];
    v65 = v14;
    v15 = v13;
    v57 = v14;
    v58 = v13;
    v63 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
    if (v63)
    {
      v62 = *v68;
      v65 = v14;
      v15 = v13;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v68 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v67 + 1) + 8 * i);
          v18 = MEMORY[0x1E696AD98];
          v19 = [v17 frequency];
          v20 = +[HKUnit hertzUnit];
          [v19 doubleValueForUnit:v20];
          v66 = [v18 numberWithDouble:?];

          v21 = [v17 tests];
          v22 = [v21 hk_filter:&__block_literal_global_22];

          v23 = [v17 tests];
          v24 = [v23 hk_filter:&__block_literal_global_67];

          if ([v22 count])
          {
            v25 = [v22 firstObject];
            v26 = [v25 clampedSensitivity];
            v27 = v26;
            if (v26)
            {
              v28 = v26;
            }

            else
            {
              v29 = [v22 firstObject];
              v28 = [v29 sensitivity];
            }

            v30 = [HKHearingLevelSummary _roundWithPositiveZeroForSensitivity:v28];
            v31 = HKQuantityMin(v13, v30);

            v32 = HKQuantityMax(v14, v30);

            v33 = HKHearingLevelClassificationPureToneAverageFrequencies();
            v34 = [v33 containsObject:v66];

            if (v34)
            {
              [v60 addObject:v30];
            }

            v14 = v32;
            v13 = v31;
          }

          if ([v24 count])
          {
            v64 = v13;
            v35 = [v24 firstObject];
            v36 = [v35 clampedSensitivity];
            v37 = v36;
            v38 = v14;
            if (v36)
            {
              v39 = v36;
            }

            else
            {
              v40 = [v24 firstObject];
              v39 = [v40 sensitivity];
            }

            v41 = [HKHearingLevelSummary _roundWithPositiveZeroForSensitivity:v39];
            v42 = HKQuantityMin(v15, v41);

            v43 = HKQuantityMax(v65, v41);

            v44 = HKHearingLevelClassificationPureToneAverageFrequencies();
            v45 = [v44 containsObject:v66];

            if (v45)
            {
              [v59 addObject:v41];
            }

            v65 = v43;
            v15 = v42;
            v14 = v38;
            v13 = v64;
          }
        }

        v63 = [obj countByEnumeratingWithState:&v67 objects:v71 count:16];
      }

      while (v63);
    }

    v46 = HKPureToneAverageFromPureToneSensitivityPoints(v60);
    v47 = HKPureToneAverageFromPureToneSensitivityPoints(v59);
    v48 = [(HKHearingLevelSummary *)v55 _roundWithPositiveZeroForSensitivity:v46];

    v49 = [(HKHearingLevelSummary *)v55 _roundWithPositiveZeroForSensitivity:v47];

    v50 = [[HKHearingLevelMetrics alloc] initWithAverageSensitivity:v48 minimumSensitivity:v13 maximumSensitivity:v14];
    v51 = [[HKHearingLevelMetrics alloc] initWithAverageSensitivity:v49 minimumSensitivity:v15 maximumSensitivity:v65];
    v52 = [[HKHearingLevelSummary alloc] initWithLeftEarMetrics:v50 rightEarMetrics:v51];

    v4 = v56;
  }

  else
  {
    v52 = +[HKHearingLevelSummary emptySummary];
  }

  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

BOOL __51__HKHearingLevelSummary_summaryForAudiogramSample___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 side] == 0;
  }

  return v3;
}

BOOL __51__HKHearingLevelSummary_summaryForAudiogramSample___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 side] == 1;
  }

  return v3;
}

+ (id)_roundWithPositiveZeroForSensitivity:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    [v2 _value];
    v4 = round(v3);
    if (v4 == 0.0)
    {
      [v2 _value];
      v5 = fabs(v4);
      if (v6 < 0.0)
      {
        v4 = v5;
      }
    }

    v7 = [v2 _unit];
    v8 = [HKQuantity quantityWithUnit:v7 doubleValue:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
      v6 = [(HKHearingLevelSummary *)self isEqualToHearingLevelSummary:v5];
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
  v6 = [(HKHearingLevelSummary *)self overallMetrics];
  v7 = [(HKHearingLevelSummary *)self leftEarMetrics];
  v8 = [(HKHearingLevelSummary *)self rightEarMetrics];
  v9 = [v3 stringWithFormat:@"<%@:%p overall = %@, left ear = %@, right ear = %@>", v5, self, v6, v7, v8];

  return v9;
}

- (uint64_t)isEqualToHearingLevelSummary:(void *)a1
{
  v5 = a2;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v6 = [a1 leftEarMetrics];
  v7 = [v5 leftEarMetrics];
  if (v6 != v7)
  {
    [v5 leftEarMetrics];
    if (!objc_claimAutoreleasedReturnValue())
    {
      v14 = 0;
      goto LABEL_27;
    }

    [OUTLINED_FUNCTION_1_4() leftEarMetrics];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_0_9() leftEarMetrics];
    if (![v2 isEqual:v8])
    {
      v14 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v26 = v8;
    v27 = v2;
  }

  v9 = [a1 rightEarMetrics];
  v10 = [v5 rightEarMetrics];
  if (v9 != v10)
  {
    v11 = [v5 rightEarMetrics];
    if (v11)
    {
      v2 = v11;
      v12 = [a1 rightEarMetrics];
      v13 = [v5 rightEarMetrics];
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
  [a1 overallMetrics];
  objc_claimAutoreleasedReturnValue();
  v15 = [OUTLINED_FUNCTION_0_9() overallMetrics];
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
  v17 = [v5 overallMetrics];
  if (!v17)
  {

    goto LABEL_21;
  }

  v18 = v17;
  v19 = [a1 overallMetrics];
  [v5 overallMetrics];
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