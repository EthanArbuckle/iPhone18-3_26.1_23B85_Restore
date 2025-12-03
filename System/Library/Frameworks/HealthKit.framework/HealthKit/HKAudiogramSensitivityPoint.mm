@interface HKAudiogramSensitivityPoint
+ (BOOL)_validateAirConductionTests:(id)tests error:(id *)error;
+ (BOOL)_validateUnitForFrequency:(id)frequency;
+ (BOOL)_validateUnitForSensitivity:(id)sensitivity;
+ (BOOL)validFrequency:(id)frequency error:(id *)error;
+ (BOOL)validSensitivity:(id)sensitivity error:(id *)error;
+ (HKAudiogramSensitivityPoint)sensitivityPointWithFrequency:(HKQuantity *)frequency leftEarSensitivity:(HKQuantity *)leftEarSensitivity rightEarSensitivity:(HKQuantity *)rightEarSensitivity error:(NSError *)error;
+ (HKAudiogramSensitivityPoint)sensitivityPointWithFrequency:(id)frequency tests:(id)tests error:(id *)error;
+ (id)_createTestsFromLeftEarSensitivity:(id)sensitivity rightEarSensitivity:(id)earSensitivity leftEarClampingRange:(id)range rightEarClampingRange:(id)clampingRange error:(id *)error;
+ (id)_incompatibleUnit:(id)unit incompatibleWith:(id)with;
+ (id)_rangeViolationMin:(id)min max:(id)max value:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSensitivityPoint:(id)point;
- (HKAudiogramSensitivityPoint)initWithCoder:(id)coder;
- (HKAudiogramSensitivityPoint)initWithFrequency:(id)frequency leftEarSensitivity:(id)sensitivity rightEarSensitivity:(id)earSensitivity;
- (HKAudiogramSensitivityPoint)initWithFrequency:(id)frequency tests:(id)tests;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAudiogramSensitivityPoint

- (HKAudiogramSensitivityPoint)initWithFrequency:(id)frequency leftEarSensitivity:(id)sensitivity rightEarSensitivity:(id)earSensitivity
{
  frequencyCopy = frequency;
  sensitivityCopy = sensitivity;
  earSensitivityCopy = earSensitivity;
  v19.receiver = self;
  v19.super_class = HKAudiogramSensitivityPoint;
  v12 = [(HKAudiogramSensitivityPoint *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_frequency, frequency);
    objc_storeStrong(&v13->_leftEarSensitivity, sensitivity);
    objc_storeStrong(&v13->_rightEarSensitivity, earSensitivity);
    v18 = 0;
    v14 = [HKAudiogramSensitivityPoint _createTestsFromLeftEarSensitivity:sensitivityCopy rightEarSensitivity:earSensitivityCopy leftEarClampingRange:0 rightEarClampingRange:0 error:&v18];
    v15 = v18;
    if (v14)
    {
      objc_storeStrong(&v13->_tests, v14);
    }

    else
    {
      _HKInitializeLogging();
      v16 = HKLogDefault;
      if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_ERROR))
      {
        [HKAudiogramSensitivityPoint initWithFrequency:v15 leftEarSensitivity:v16 rightEarSensitivity:?];
      }
    }
  }

  return v13;
}

- (HKAudiogramSensitivityPoint)initWithFrequency:(id)frequency tests:(id)tests
{
  v46 = *MEMORY[0x1E69E9840];
  frequencyCopy = frequency;
  testsCopy = tests;
  v43.receiver = self;
  v43.super_class = HKAudiogramSensitivityPoint;
  v9 = [(HKAudiogramSensitivityPoint *)&v43 init];
  v10 = v9;
  if (v9)
  {
    v34 = frequencyCopy;
    objc_storeStrong(&v9->_frequency, frequency);
    objc_storeStrong(&v10->_tests, tests);
    v11 = [testsCopy hk_filter:&__block_literal_global_137];
    v12 = [v11 hk_filter:&__block_literal_global_6_1];
    v13 = [v11 hk_filter:&__block_literal_global_8_1];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v40;
LABEL_4:
      v18 = 0;
      while (1)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v39 + 1) + 8 * v18);
        masked = [v19 masked];
        sensitivity = [v19 sensitivity];
        leftEarSensitivity = v10->_leftEarSensitivity;
        v10->_leftEarSensitivity = sensitivity;

        if (!masked)
        {
          break;
        }

        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v39 objects:v45 count:16];
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v13;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v36;
LABEL_12:
      v27 = 0;
      while (1)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v35 + 1) + 8 * v27);
        masked2 = [v28 masked];
        sensitivity2 = [v28 sensitivity];
        rightEarSensitivity = v10->_rightEarSensitivity;
        v10->_rightEarSensitivity = sensitivity2;

        if (!masked2)
        {
          break;
        }

        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v35 objects:v44 count:16];
          if (v25)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    frequencyCopy = v34;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (HKAudiogramSensitivityPoint)sensitivityPointWithFrequency:(id)frequency tests:(id)tests error:(id *)error
{
  v21[1] = *MEMORY[0x1E69E9840];
  frequencyCopy = frequency;
  testsCopy = tests;
  if ([self _validateUnitForFrequency:frequencyCopy] && +[HKAudiogramSensitivityPoint validFrequency:error:](HKAudiogramSensitivityPoint, "validFrequency:error:", frequencyCopy, error))
  {
    if ([testsCopy count])
    {
      if ([HKAudiogramSensitivityPoint _validateAirConductionTests:testsCopy error:error])
      {
        v10 = [[HKAudiogramSensitivityPoint alloc] initWithFrequency:frequencyCopy tests:testsCopy];
        goto LABEL_12;
      }
    }

    else
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"There must be at least one test conducted"];
      v12 = MEMORY[0x1E696ABC0];
      v20 = *MEMORY[0x1E696A578];
      v21[0] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v14 = [v12 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v13];

      v15 = v14;
      v16 = v15;
      if (v15)
      {
        if (error)
        {
          v17 = v15;
          *error = v16;
        }

        else
        {
          _HKLogDroppedError(v15);
        }
      }
    }
  }

  v10 = 0;
LABEL_12:

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (HKAudiogramSensitivityPoint)sensitivityPointWithFrequency:(HKQuantity *)frequency leftEarSensitivity:(HKQuantity *)leftEarSensitivity rightEarSensitivity:(HKQuantity *)rightEarSensitivity error:(NSError *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  v10 = frequency;
  v11 = leftEarSensitivity;
  v12 = rightEarSensitivity;
  if ([self _validateUnitForFrequency:v10] && objc_msgSend(self, "_validateUnitForSensitivity:", v11) && objc_msgSend(self, "_validateUnitForSensitivity:", v12) && +[HKAudiogramSensitivityPoint validFrequency:error:](HKAudiogramSensitivityPoint, "validFrequency:error:", v10, error) && +[HKAudiogramSensitivityPoint validSensitivity:error:](HKAudiogramSensitivityPoint, "validSensitivity:error:", v11, error) && +[HKAudiogramSensitivityPoint validSensitivity:error:](HKAudiogramSensitivityPoint, "validSensitivity:error:", v12, error))
  {
    v13 = HKProgramSDKAtLeast();
    if (v12 || v11 || !v13)
    {
      v21 = [HKAudiogramSensitivityPoint _createTestsFromLeftEarSensitivity:v11 rightEarSensitivity:v12 leftEarClampingRange:0 rightEarClampingRange:0 error:error];
      if (v21)
      {
        v22 = [[HKAudiogramSensitivityPoint alloc] initWithFrequency:v10 tests:v21];
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_20;
    }

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"At least one sensitivity (left or right) must be set"];
    v15 = MEMORY[0x1E696ABC0];
    v25 = *MEMORY[0x1E696A578];
    v26[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v17 = [v15 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v16];

    v18 = v17;
    v19 = v18;
    if (v18)
    {
      if (error)
      {
        v20 = v18;
        *error = v19;
      }

      else
      {
        _HKLogDroppedError(v18);
      }
    }
  }

  v22 = 0;
LABEL_20:

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (id)_incompatibleUnit:(id)unit incompatibleWith:(id)with
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  withCopy = with;
  unitString = [unit unitString];
  unitString2 = [withCopy unitString];

  v9 = [v5 stringWithFormat:@"Unit '%@' is not compatible with unit '%@'", unitString, unitString2];

  v10 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v10 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_rangeViolationMin:(id)min max:(id)max value:(id)value
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AEC0];
  valueCopy = value;
  maxCopy = max;
  minCopy = min;
  _unit = [minCopy _unit];
  [valueCopy doubleValueForUnit:_unit];
  v13 = v12;

  _unit2 = [minCopy _unit];
  unitString = [_unit2 unitString];
  _unit3 = [minCopy _unit];
  [minCopy doubleValueForUnit:_unit3];
  v18 = v17;
  _unit4 = [maxCopy _unit];
  [maxCopy doubleValueForUnit:_unit4];
  v21 = v20;

  _unit5 = [minCopy _unit];

  unitString2 = [_unit5 unitString];
  v24 = [v7 stringWithFormat:@"Value %lg %@ is outside the range %lg - %lg %@", v13, unitString, v18, v21, unitString2];

  v25 = MEMORY[0x1E696ABC0];
  v30 = *MEMORY[0x1E696A578];
  v31[0] = v24;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v27 = [v25 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v26];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (BOOL)validFrequency:(id)frequency error:(id *)error
{
  frequencyCopy = frequency;
  v7 = +[HKUnit hertzUnit];
  v8 = [frequencyCopy isCompatibleWithUnit:v7];

  if (v8)
  {
    v9 = +[HKUnit hertzUnit];
    _unit = [HKQuantity quantityWithUnit:v9 doubleValue:0.0];

    v11 = +[HKUnit hertzUnit];
    v12 = [HKQuantity quantityWithUnit:v11 doubleValue:30000.0];

    if ([frequencyCopy compare:_unit] != -1 && objc_msgSend(frequencyCopy, "compare:", v12) != 1)
    {
      v17 = 1;
      goto LABEL_11;
    }

    v13 = [self _rangeViolationMin:_unit max:v12 value:frequencyCopy];
  }

  else
  {
    _unit = [frequencyCopy _unit];
    v12 = +[HKUnit hertzUnit];
    v13 = [self _incompatibleUnit:_unit incompatibleWith:v12];
  }

  v14 = v13;
  v15 = v14;
  if (v14)
  {
    if (error)
    {
      v16 = v14;
      *error = v15;
    }

    else
    {
      _HKLogDroppedError(v14);
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

+ (BOOL)validSensitivity:(id)sensitivity error:(id *)error
{
  sensitivityCopy = sensitivity;
  if (sensitivityCopy)
  {
    v7 = +[HKUnit decibelHearingLevelUnit];
    v8 = [sensitivityCopy isCompatibleWithUnit:v7];

    if (v8)
    {
      v9 = +[HKUnit decibelHearingLevelUnit];
      _unit = [HKQuantity quantityWithUnit:v9 doubleValue:-20.0];

      v11 = +[HKUnit decibelHearingLevelUnit];
      v12 = [HKQuantity quantityWithUnit:v11 doubleValue:160.0];

      if ([sensitivityCopy compare:_unit] != -1 && objc_msgSend(sensitivityCopy, "compare:", v12) != 1)
      {
        v14 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v13 = [self _rangeViolationMin:_unit max:v12 value:sensitivityCopy];
    }

    else
    {
      _unit = [sensitivityCopy _unit];
      v12 = +[HKUnit decibelHearingLevelUnit];
      v13 = [self _incompatibleUnit:_unit incompatibleWith:v12];
    }

    v15 = v13;
    v16 = v15;
    if (v15)
    {
      if (error)
      {
        v17 = v15;
        *error = v16;
      }

      else
      {
        _HKLogDroppedError(v15);
      }
    }

    v14 = 0;
    goto LABEL_13;
  }

  v14 = 1;
LABEL_14:

  return v14;
}

+ (BOOL)_validateUnitForSensitivity:(id)sensitivity
{
  sensitivityCopy = sensitivity;
  v5 = sensitivityCopy;
  if (!sensitivityCopy)
  {
    goto LABEL_4;
  }

  _unit = [sensitivityCopy _unit];
  if (!_unit)
  {
    goto LABEL_5;
  }

  v7 = _unit;
  v8 = +[HKUnit decibelHearingLevelUnit];
  v9 = [v5 isCompatibleWithUnit:v8];

  if (v9)
  {
LABEL_4:
    v10 = 1;
  }

  else
  {
LABEL_5:
    _unit2 = [v5 _unit];
    v12 = +[HKUnit decibelHearingLevelUnit];
    v13 = [self _incompatibleUnit:_unit2 incompatibleWith:v12];

    v14 = MEMORY[0x1E695DF30];
    localizedDescription = [v13 localizedDescription];
    [v14 raise:@"_HKObjectValidationFailureException" format:{@"%@", localizedDescription}];

    v10 = 0;
  }

  return v10;
}

+ (BOOL)_validateUnitForFrequency:(id)frequency
{
  v24[1] = *MEMORY[0x1E69E9840];
  frequencyCopy = frequency;
  v5 = frequencyCopy;
  if (!frequencyCopy)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Frequency is missing for sensitivity point."];
    v16 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = v13;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v17];

    v19 = MEMORY[0x1E695DF30];
    localizedDescription = [v18 localizedDescription];
    [v19 raise:@"_HKObjectValidationFailureException" format:{@"%@", localizedDescription}];

    goto LABEL_7;
  }

  _unit = [frequencyCopy _unit];
  if (!_unit || (v7 = _unit, +[HKUnit hertzUnit](HKUnit, "hertzUnit"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v5 isCompatibleWithUnit:v8], v8, v7, (v9 & 1) == 0))
  {
    _unit2 = [v5 _unit];
    v12 = +[HKUnit hertzUnit];
    v13 = [self _incompatibleUnit:_unit2 incompatibleWith:v12];

    v14 = MEMORY[0x1E695DF30];
    localizedDescription2 = [v13 localizedDescription];
    [v14 raise:@"_HKObjectValidationFailureException" format:{@"%@", localizedDescription2}];

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = 1;
LABEL_8:

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)_validateAirConductionTests:(id)tests error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = [tests hk_filter:&__block_literal_global_34_0];
  if ([v5 count])
  {
    if ([v5 count] < 3)
    {
      v6 = [v5 hk_filter:&__block_literal_global_39_1];
      v14 = [v5 hk_filter:&__block_literal_global_41_1];
      if ([v6 count] <= 1 && objc_msgSend(v14, "count") < 2)
      {
        v13 = 1;
LABEL_18:

        goto LABEL_19;
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sensitivity point cannot contain more than 1 test per ear"];
      v15 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A578];
      v24 = v11;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v17 = [v15 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v16];

      v18 = v17;
      v19 = v18;
      if (v18)
      {
        if (error)
        {
          v20 = v18;
          *error = v19;
        }

        else
        {
          _HKLogDroppedError(v18);
        }
      }
    }

    else
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sensitivity Point cannot contain more than 2 tests"];
      v7 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26[0] = v6;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v9 = [v7 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v8];

      v10 = v9;
      v11 = v10;
      if (v10)
      {
        if (error)
        {
          v12 = v10;
          *error = v11;
        }

        else
        {
          _HKLogDroppedError(v10);
        }
      }

      v14 = v11;
    }

    v13 = 0;
    goto LABEL_18;
  }

  v13 = 1;
LABEL_19:

  v21 = *MEMORY[0x1E69E9840];
  return v13;
}

+ (id)_createTestsFromLeftEarSensitivity:(id)sensitivity rightEarSensitivity:(id)earSensitivity leftEarClampingRange:(id)range rightEarClampingRange:(id)clampingRange error:(id *)error
{
  sensitivityCopy = sensitivity;
  earSensitivityCopy = earSensitivity;
  rangeCopy = range;
  clampingRangeCopy = clampingRange;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!sensitivityCopy)
  {
    v16 = 0;
    if (!earSensitivityCopy)
    {
LABEL_8:
      v17 = v15;
      goto LABEL_10;
    }

LABEL_6:
    v17 = [[HKAudiogramSensitivityTest alloc] initWithSensitivity:earSensitivityCopy type:0 masked:0 side:1 clampingRange:clampingRangeCopy error:error];
    if (!v17)
    {
      goto LABEL_10;
    }

    [v15 addObject:v17];

    goto LABEL_8;
  }

  v16 = [[HKAudiogramSensitivityTest alloc] initWithSensitivity:sensitivityCopy type:0 masked:0 side:0 clampingRange:rangeCopy error:error];
  if (v16)
  {
    [v15 addObject:v16];
    if (!earSensitivityCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v17 = 0;
LABEL_10:

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  frequency = self->_frequency;
  v7 = [v3 stringWithFormat:@"<%@:%p frequency=%@, tests=%@>", v5, self, frequency, self->_tests];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(HKAudiogramSensitivityPoint *)self isEqualToSensitivityPoint:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToSensitivityPoint:(id)point
{
  pointCopy = point;
  frequency = [(HKAudiogramSensitivityPoint *)self frequency];
  frequency2 = [pointCopy frequency];
  if (frequency != frequency2)
  {
    frequency3 = [pointCopy frequency];
    if (!frequency3)
    {
      v12 = 0;
      goto LABEL_39;
    }

    v5 = frequency3;
    frequency4 = [(HKAudiogramSensitivityPoint *)self frequency];
    frequency5 = [pointCopy frequency];
    if (![frequency4 isEqual:frequency5])
    {
      v12 = 0;
LABEL_38:

      goto LABEL_39;
    }
  }

  leftEarSensitivity = [(HKAudiogramSensitivityPoint *)self leftEarSensitivity];
  leftEarSensitivity2 = [pointCopy leftEarSensitivity];
  if (leftEarSensitivity == leftEarSensitivity2)
  {
    v43 = leftEarSensitivity;
  }

  else
  {
    leftEarSensitivity3 = [pointCopy leftEarSensitivity];
    if (!leftEarSensitivity3)
    {
      v12 = 0;
LABEL_31:

      goto LABEL_37;
    }

    v44 = frequency5;
    v16 = frequency4;
    v17 = v5;
    v41 = leftEarSensitivity3;
    leftEarSensitivity4 = [(HKAudiogramSensitivityPoint *)self leftEarSensitivity];
    leftEarSensitivity5 = [pointCopy leftEarSensitivity];
    if (([leftEarSensitivity4 isEqual:leftEarSensitivity5] & 1) == 0)
    {

      v12 = 0;
      v5 = v17;
      frequency4 = v16;
      frequency5 = v44;
      if (frequency == frequency2)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v37 = leftEarSensitivity5;
    v43 = leftEarSensitivity;
    v5 = v17;
    frequency4 = v16;
    frequency5 = v44;
  }

  rightEarSensitivity = [(HKAudiogramSensitivityPoint *)self rightEarSensitivity];
  rightEarSensitivity2 = [pointCopy rightEarSensitivity];
  v42 = rightEarSensitivity;
  v40 = leftEarSensitivity4;
  if (rightEarSensitivity == rightEarSensitivity2)
  {
    v38 = frequency4;
    v39 = leftEarSensitivity2;
    v45 = frequency5;
    [(HKAudiogramSensitivityPoint *)self tests];
  }

  else
  {
    rightEarSensitivity3 = [pointCopy rightEarSensitivity];
    if (!rightEarSensitivity3)
    {
      v12 = 0;
      v30 = rightEarSensitivity;
      goto LABEL_27;
    }

    v39 = leftEarSensitivity2;
    v36 = rightEarSensitivity3;
    rightEarSensitivity4 = [(HKAudiogramSensitivityPoint *)self rightEarSensitivity];
    leftEarSensitivity2 = [pointCopy rightEarSensitivity];
    if (([rightEarSensitivity4 isEqual:leftEarSensitivity2] & 1) == 0)
    {

      v12 = 0;
      leftEarSensitivity = v43;
      leftEarSensitivity2 = v39;
      v29 = v43 == v39;
LABEL_29:
      if (!v29)
      {
      }

      goto LABEL_31;
    }

    v45 = frequency5;
    v38 = frequency4;
    [(HKAudiogramSensitivityPoint *)self tests];
  }
  v22 = ;
  tests = [pointCopy tests];
  v24 = tests;
  v12 = v22 == tests;
  if (v22 == tests)
  {

    v30 = v42;
    if (v42 == rightEarSensitivity2)
    {
LABEL_33:

      v31 = v43;
      frequency5 = v45;
      frequency4 = v38;
      leftEarSensitivity2 = v39;
      goto LABEL_34;
    }
  }

  else
  {
    v35 = v5;
    tests2 = [pointCopy tests];
    if (tests2)
    {
      v26 = tests2;
      tests3 = [(HKAudiogramSensitivityPoint *)self tests];
      tests4 = [pointCopy tests];
      v12 = [tests3 isEqualToArray:tests4];

      if (v42 != rightEarSensitivity2)
      {
      }

      leftEarSensitivity = v43;
      frequency5 = v45;
      frequency4 = v38;
      leftEarSensitivity2 = v39;
      v29 = v43 == v39;
      v5 = v35;
      goto LABEL_29;
    }

    v30 = v42;
    if (v42 == rightEarSensitivity2)
    {
      goto LABEL_33;
    }
  }

  frequency4 = v38;
  leftEarSensitivity2 = v39;
  frequency5 = v45;
LABEL_27:

  v31 = v43;
LABEL_34:
  if (v31 != leftEarSensitivity2)
  {
  }

LABEL_37:
  if (frequency != frequency2)
  {
    goto LABEL_38;
  }

LABEL_39:

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  frequency = [(HKAudiogramSensitivityPoint *)self frequency];
  [coderCopy encodeObject:frequency forKey:@"FrequencyKey"];

  leftEarSensitivity = [(HKAudiogramSensitivityPoint *)self leftEarSensitivity];
  [coderCopy encodeObject:leftEarSensitivity forKey:@"LeftEarSensitivityKey"];

  rightEarSensitivity = [(HKAudiogramSensitivityPoint *)self rightEarSensitivity];
  [coderCopy encodeObject:rightEarSensitivity forKey:@"RightEarSensitivityKey"];

  tests = [(HKAudiogramSensitivityPoint *)self tests];
  [coderCopy encodeObject:tests forKey:@"TestsKey"];
}

- (HKAudiogramSensitivityPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FrequencyKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LeftEarSensitivityKey"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RightEarSensitivityKey"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LeftEarClampedRangeKey"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RightEarClampedRangeKey"];
  v10 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"TestsKey"];

  if (v10)
  {
    goto LABEL_4;
  }

  v16 = 0;
  v11 = [HKAudiogramSensitivityPoint _createTestsFromLeftEarSensitivity:v6 rightEarSensitivity:v7 leftEarClampingRange:v8 rightEarClampingRange:v9 error:&v16];
  v12 = v16;
  v10 = v12;
  if (v11)
  {

    v10 = v11;
LABEL_4:
    v13 = [[HKAudiogramSensitivityPoint alloc] initWithFrequency:v5 tests:v10];
    goto LABEL_5;
  }

  _HKInitializeLogging();
  v15 = HKLogDefault;
  if (os_log_type_enabled(HKLogDefault, OS_LOG_TYPE_FAULT))
  {
    [(HKAudiogramSensitivityPoint *)v10 initWithCoder:v15];
  }

  v13 = 0;
LABEL_5:

  return v13;
}

- (void)initWithFrequency:(uint64_t)a1 leftEarSensitivity:(NSObject *)a2 rightEarSensitivity:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Unable to create sensitivity point tests with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_19197B000, a2, OS_LOG_TYPE_FAULT, "Unable to decode the sensitivity point with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end