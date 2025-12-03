@interface HKHearingLevelSummary
+ (HKHearingLevelSummary)emptySummary;
+ (id)_roundWithPositiveZeroForSensitivity:(uint64_t)sensitivity;
+ (id)summaryForAudiogramSample:(id)sample;
- (BOOL)isEqual:(id)equal;
- (HKHearingLevelSummary)initWithLeftEarMetrics:(id)metrics rightEarMetrics:(id)earMetrics;
- (id)description;
- (uint64_t)isEqualToHearingLevelSummary:(void *)summary;
@end

@implementation HKHearingLevelSummary

- (HKHearingLevelSummary)initWithLeftEarMetrics:(id)metrics rightEarMetrics:(id)earMetrics
{
  metricsCopy = metrics;
  earMetricsCopy = earMetrics;
  v14.receiver = self;
  v14.super_class = HKHearingLevelSummary;
  v9 = [(HKHearingLevelSummary *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_leftEarMetrics, metrics);
    objc_storeStrong(&v10->_rightEarMetrics, earMetrics);
    v11 = [HKHearingLevelMetrics _overallMetricsFromLeftEarMetrics:metricsCopy rightEarMetrics:earMetricsCopy];
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

+ (id)summaryForAudiogramSample:(id)sample
{
  v72 = *MEMORY[0x1E69E9840];
  sampleCopy = sample;
  sensitivityPoints = [sampleCopy sensitivityPoints];
  v6 = [sensitivityPoints count];

  if (v6)
  {
    selfCopy = self;
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
    v56 = sampleCopy;
    obj = [sampleCopy sensitivityPoints];
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
          frequency = [v17 frequency];
          v20 = +[HKUnit hertzUnit];
          [frequency doubleValueForUnit:v20];
          v66 = [v18 numberWithDouble:?];

          tests = [v17 tests];
          v22 = [tests hk_filter:&__block_literal_global_22];

          tests2 = [v17 tests];
          v24 = [tests2 hk_filter:&__block_literal_global_67];

          if ([v22 count])
          {
            firstObject = [v22 firstObject];
            clampedSensitivity = [firstObject clampedSensitivity];
            v27 = clampedSensitivity;
            if (clampedSensitivity)
            {
              sensitivity = clampedSensitivity;
            }

            else
            {
              firstObject2 = [v22 firstObject];
              sensitivity = [firstObject2 sensitivity];
            }

            v30 = [HKHearingLevelSummary _roundWithPositiveZeroForSensitivity:sensitivity];
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
            firstObject3 = [v24 firstObject];
            clampedSensitivity2 = [firstObject3 clampedSensitivity];
            v37 = clampedSensitivity2;
            v38 = v14;
            if (clampedSensitivity2)
            {
              sensitivity2 = clampedSensitivity2;
            }

            else
            {
              firstObject4 = [v24 firstObject];
              sensitivity2 = [firstObject4 sensitivity];
            }

            v41 = [HKHearingLevelSummary _roundWithPositiveZeroForSensitivity:sensitivity2];
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
    v48 = [(HKHearingLevelSummary *)selfCopy _roundWithPositiveZeroForSensitivity:v46];

    v49 = [(HKHearingLevelSummary *)selfCopy _roundWithPositiveZeroForSensitivity:v47];

    v50 = [[HKHearingLevelMetrics alloc] initWithAverageSensitivity:v48 minimumSensitivity:v13 maximumSensitivity:v14];
    v51 = [[HKHearingLevelMetrics alloc] initWithAverageSensitivity:v49 minimumSensitivity:v15 maximumSensitivity:v65];
    v52 = [[HKHearingLevelSummary alloc] initWithLeftEarMetrics:v50 rightEarMetrics:v51];

    sampleCopy = v56;
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

+ (id)_roundWithPositiveZeroForSensitivity:(uint64_t)sensitivity
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

    _unit = [v2 _unit];
    v8 = [HKQuantity quantityWithUnit:_unit doubleValue:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
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
  overallMetrics = [(HKHearingLevelSummary *)self overallMetrics];
  leftEarMetrics = [(HKHearingLevelSummary *)self leftEarMetrics];
  rightEarMetrics = [(HKHearingLevelSummary *)self rightEarMetrics];
  v9 = [v3 stringWithFormat:@"<%@:%p overall = %@, left ear = %@, right ear = %@>", v5, self, overallMetrics, leftEarMetrics, rightEarMetrics];

  return v9;
}

- (uint64_t)isEqualToHearingLevelSummary:(void *)summary
{
  v5 = a2;
  if (!summary)
  {
    v14 = 0;
    goto LABEL_28;
  }

  leftEarMetrics = [summary leftEarMetrics];
  leftEarMetrics2 = [v5 leftEarMetrics];
  if (leftEarMetrics != leftEarMetrics2)
  {
    [v5 leftEarMetrics];
    if (!objc_claimAutoreleasedReturnValue())
    {
      v14 = 0;
      goto LABEL_27;
    }

    [OUTLINED_FUNCTION_1_4() leftEarMetrics];
    objc_claimAutoreleasedReturnValue();
    leftEarMetrics3 = [OUTLINED_FUNCTION_0_9() leftEarMetrics];
    if (![v2 isEqual:leftEarMetrics3])
    {
      v14 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v26 = leftEarMetrics3;
    v27 = v2;
  }

  rightEarMetrics = [summary rightEarMetrics];
  rightEarMetrics2 = [v5 rightEarMetrics];
  if (rightEarMetrics != rightEarMetrics2)
  {
    rightEarMetrics3 = [v5 rightEarMetrics];
    if (rightEarMetrics3)
    {
      v2 = rightEarMetrics3;
      rightEarMetrics4 = [summary rightEarMetrics];
      rightEarMetrics5 = [v5 rightEarMetrics];
      if ([rightEarMetrics4 isEqual:rightEarMetrics5])
      {
        v22 = rightEarMetrics5;
        v23 = rightEarMetrics4;
        v24 = v2;
        goto LABEL_11;
      }
    }

    v14 = 0;
LABEL_24:
    v20 = leftEarMetrics == leftEarMetrics2;
    goto LABEL_25;
  }

LABEL_11:
  [summary overallMetrics];
  objc_claimAutoreleasedReturnValue();
  overallMetrics = [OUTLINED_FUNCTION_0_9() overallMetrics];
  v16 = overallMetrics;
  v14 = v2 == overallMetrics;
  if (v2 == overallMetrics)
  {

LABEL_21:
    if (rightEarMetrics != rightEarMetrics2)
    {
    }

    goto LABEL_24;
  }

  v25 = rightEarMetrics;
  overallMetrics2 = [v5 overallMetrics];
  if (!overallMetrics2)
  {

    goto LABEL_21;
  }

  v18 = overallMetrics2;
  overallMetrics3 = [summary overallMetrics];
  [v5 overallMetrics];
  objc_claimAutoreleasedReturnValue();
  v14 = [OUTLINED_FUNCTION_1_4() isEqual:v3];

  if (v25 != rightEarMetrics2)
  {
  }

  v20 = leftEarMetrics == leftEarMetrics2;
LABEL_25:
  leftEarMetrics3 = v26;
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