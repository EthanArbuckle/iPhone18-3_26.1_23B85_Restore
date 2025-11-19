@interface HKAudiogramSensitivityPoint
+ (BOOL)_validateAirConductionTests:(id)a3 error:(id *)a4;
+ (BOOL)_validateUnitForFrequency:(id)a3;
+ (BOOL)_validateUnitForSensitivity:(id)a3;
+ (BOOL)validFrequency:(id)a3 error:(id *)a4;
+ (BOOL)validSensitivity:(id)a3 error:(id *)a4;
+ (HKAudiogramSensitivityPoint)sensitivityPointWithFrequency:(HKQuantity *)frequency leftEarSensitivity:(HKQuantity *)leftEarSensitivity rightEarSensitivity:(HKQuantity *)rightEarSensitivity error:(NSError *)error;
+ (HKAudiogramSensitivityPoint)sensitivityPointWithFrequency:(id)a3 tests:(id)a4 error:(id *)a5;
+ (id)_createTestsFromLeftEarSensitivity:(id)a3 rightEarSensitivity:(id)a4 leftEarClampingRange:(id)a5 rightEarClampingRange:(id)a6 error:(id *)a7;
+ (id)_incompatibleUnit:(id)a3 incompatibleWith:(id)a4;
+ (id)_rangeViolationMin:(id)a3 max:(id)a4 value:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSensitivityPoint:(id)a3;
- (HKAudiogramSensitivityPoint)initWithCoder:(id)a3;
- (HKAudiogramSensitivityPoint)initWithFrequency:(id)a3 leftEarSensitivity:(id)a4 rightEarSensitivity:(id)a5;
- (HKAudiogramSensitivityPoint)initWithFrequency:(id)a3 tests:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAudiogramSensitivityPoint

- (HKAudiogramSensitivityPoint)initWithFrequency:(id)a3 leftEarSensitivity:(id)a4 rightEarSensitivity:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HKAudiogramSensitivityPoint;
  v12 = [(HKAudiogramSensitivityPoint *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_frequency, a3);
    objc_storeStrong(&v13->_leftEarSensitivity, a4);
    objc_storeStrong(&v13->_rightEarSensitivity, a5);
    v18 = 0;
    v14 = [HKAudiogramSensitivityPoint _createTestsFromLeftEarSensitivity:v10 rightEarSensitivity:v11 leftEarClampingRange:0 rightEarClampingRange:0 error:&v18];
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

- (HKAudiogramSensitivityPoint)initWithFrequency:(id)a3 tests:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v43.receiver = self;
  v43.super_class = HKAudiogramSensitivityPoint;
  v9 = [(HKAudiogramSensitivityPoint *)&v43 init];
  v10 = v9;
  if (v9)
  {
    v34 = v7;
    objc_storeStrong(&v9->_frequency, a3);
    objc_storeStrong(&v10->_tests, a4);
    v11 = [v8 hk_filter:&__block_literal_global_137];
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
        v20 = [v19 masked];
        v21 = [v19 sensitivity];
        leftEarSensitivity = v10->_leftEarSensitivity;
        v10->_leftEarSensitivity = v21;

        if (!v20)
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
        v29 = [v28 masked];
        v30 = [v28 sensitivity];
        rightEarSensitivity = v10->_rightEarSensitivity;
        v10->_rightEarSensitivity = v30;

        if (!v29)
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

    v7 = v34;
  }

  v32 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (HKAudiogramSensitivityPoint)sensitivityPointWithFrequency:(id)a3 tests:(id)a4 error:(id *)a5
{
  v21[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([a1 _validateUnitForFrequency:v8] && +[HKAudiogramSensitivityPoint validFrequency:error:](HKAudiogramSensitivityPoint, "validFrequency:error:", v8, a5))
  {
    if ([v9 count])
    {
      if ([HKAudiogramSensitivityPoint _validateAirConductionTests:v9 error:a5])
      {
        v10 = [[HKAudiogramSensitivityPoint alloc] initWithFrequency:v8 tests:v9];
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
        if (a5)
        {
          v17 = v15;
          *a5 = v16;
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
  if ([a1 _validateUnitForFrequency:v10] && objc_msgSend(a1, "_validateUnitForSensitivity:", v11) && objc_msgSend(a1, "_validateUnitForSensitivity:", v12) && +[HKAudiogramSensitivityPoint validFrequency:error:](HKAudiogramSensitivityPoint, "validFrequency:error:", v10, error) && +[HKAudiogramSensitivityPoint validSensitivity:error:](HKAudiogramSensitivityPoint, "validSensitivity:error:", v11, error) && +[HKAudiogramSensitivityPoint validSensitivity:error:](HKAudiogramSensitivityPoint, "validSensitivity:error:", v12, error))
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

+ (id)_incompatibleUnit:(id)a3 incompatibleWith:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AEC0];
  v6 = a4;
  v7 = [a3 unitString];
  v8 = [v6 unitString];

  v9 = [v5 stringWithFormat:@"Unit '%@' is not compatible with unit '%@'", v7, v8];

  v10 = MEMORY[0x1E696ABC0];
  v15 = *MEMORY[0x1E696A578];
  v16[0] = v9;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v10 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v11];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_rangeViolationMin:(id)a3 max:(id)a4 value:(id)a5
{
  v31[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E696AEC0];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 _unit];
  [v8 doubleValueForUnit:v11];
  v13 = v12;

  v14 = [v10 _unit];
  v15 = [v14 unitString];
  v16 = [v10 _unit];
  [v10 doubleValueForUnit:v16];
  v18 = v17;
  v19 = [v9 _unit];
  [v9 doubleValueForUnit:v19];
  v21 = v20;

  v22 = [v10 _unit];

  v23 = [v22 unitString];
  v24 = [v7 stringWithFormat:@"Value %lg %@ is outside the range %lg - %lg %@", v13, v15, v18, v21, v23];

  v25 = MEMORY[0x1E696ABC0];
  v30 = *MEMORY[0x1E696A578];
  v31[0] = v24;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v27 = [v25 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v26];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (BOOL)validFrequency:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKUnit hertzUnit];
  v8 = [v6 isCompatibleWithUnit:v7];

  if (v8)
  {
    v9 = +[HKUnit hertzUnit];
    v10 = [HKQuantity quantityWithUnit:v9 doubleValue:0.0];

    v11 = +[HKUnit hertzUnit];
    v12 = [HKQuantity quantityWithUnit:v11 doubleValue:30000.0];

    if ([v6 compare:v10] != -1 && objc_msgSend(v6, "compare:", v12) != 1)
    {
      v17 = 1;
      goto LABEL_11;
    }

    v13 = [a1 _rangeViolationMin:v10 max:v12 value:v6];
  }

  else
  {
    v10 = [v6 _unit];
    v12 = +[HKUnit hertzUnit];
    v13 = [a1 _incompatibleUnit:v10 incompatibleWith:v12];
  }

  v14 = v13;
  v15 = v14;
  if (v14)
  {
    if (a4)
    {
      v16 = v14;
      *a4 = v15;
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

+ (BOOL)validSensitivity:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = +[HKUnit decibelHearingLevelUnit];
    v8 = [v6 isCompatibleWithUnit:v7];

    if (v8)
    {
      v9 = +[HKUnit decibelHearingLevelUnit];
      v10 = [HKQuantity quantityWithUnit:v9 doubleValue:-20.0];

      v11 = +[HKUnit decibelHearingLevelUnit];
      v12 = [HKQuantity quantityWithUnit:v11 doubleValue:160.0];

      if ([v6 compare:v10] != -1 && objc_msgSend(v6, "compare:", v12) != 1)
      {
        v14 = 1;
LABEL_13:

        goto LABEL_14;
      }

      v13 = [a1 _rangeViolationMin:v10 max:v12 value:v6];
    }

    else
    {
      v10 = [v6 _unit];
      v12 = +[HKUnit decibelHearingLevelUnit];
      v13 = [a1 _incompatibleUnit:v10 incompatibleWith:v12];
    }

    v15 = v13;
    v16 = v15;
    if (v15)
    {
      if (a4)
      {
        v17 = v15;
        *a4 = v16;
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

+ (BOOL)_validateUnitForSensitivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = [v4 _unit];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
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
    v11 = [v5 _unit];
    v12 = +[HKUnit decibelHearingLevelUnit];
    v13 = [a1 _incompatibleUnit:v11 incompatibleWith:v12];

    v14 = MEMORY[0x1E695DF30];
    v15 = [v13 localizedDescription];
    [v14 raise:@"_HKObjectValidationFailureException" format:{@"%@", v15}];

    v10 = 0;
  }

  return v10;
}

+ (BOOL)_validateUnitForFrequency:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Frequency is missing for sensitivity point."];
    v16 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = v13;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v17];

    v19 = MEMORY[0x1E695DF30];
    v20 = [v18 localizedDescription];
    [v19 raise:@"_HKObjectValidationFailureException" format:{@"%@", v20}];

    goto LABEL_7;
  }

  v6 = [v4 _unit];
  if (!v6 || (v7 = v6, +[HKUnit hertzUnit](HKUnit, "hertzUnit"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v5 isCompatibleWithUnit:v8], v8, v7, (v9 & 1) == 0))
  {
    v11 = [v5 _unit];
    v12 = +[HKUnit hertzUnit];
    v13 = [a1 _incompatibleUnit:v11 incompatibleWith:v12];

    v14 = MEMORY[0x1E695DF30];
    v15 = [v13 localizedDescription];
    [v14 raise:@"_HKObjectValidationFailureException" format:{@"%@", v15}];

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v10 = 1;
LABEL_8:

  v21 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)_validateAirConductionTests:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 hk_filter:&__block_literal_global_34_0];
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
        if (a4)
        {
          v20 = v18;
          *a4 = v19;
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
        if (a4)
        {
          v12 = v10;
          *a4 = v11;
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

+ (id)_createTestsFromLeftEarSensitivity:(id)a3 rightEarSensitivity:(id)a4 leftEarClampingRange:(id)a5 rightEarClampingRange:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (!v11)
  {
    v16 = 0;
    if (!v12)
    {
LABEL_8:
      v17 = v15;
      goto LABEL_10;
    }

LABEL_6:
    v17 = [[HKAudiogramSensitivityTest alloc] initWithSensitivity:v12 type:0 masked:0 side:1 clampingRange:v14 error:a7];
    if (!v17)
    {
      goto LABEL_10;
    }

    [v15 addObject:v17];

    goto LABEL_8;
  }

  v16 = [[HKAudiogramSensitivityTest alloc] initWithSensitivity:v11 type:0 masked:0 side:0 clampingRange:v13 error:a7];
  if (v16)
  {
    [v15 addObject:v16];
    if (!v12)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
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

- (BOOL)isEqualToSensitivityPoint:(id)a3
{
  v8 = a3;
  v9 = [(HKAudiogramSensitivityPoint *)self frequency];
  v10 = [v8 frequency];
  if (v9 != v10)
  {
    v11 = [v8 frequency];
    if (!v11)
    {
      v12 = 0;
      goto LABEL_39;
    }

    v5 = v11;
    v3 = [(HKAudiogramSensitivityPoint *)self frequency];
    v4 = [v8 frequency];
    if (![v3 isEqual:v4])
    {
      v12 = 0;
LABEL_38:

      goto LABEL_39;
    }
  }

  v13 = [(HKAudiogramSensitivityPoint *)self leftEarSensitivity];
  v14 = [v8 leftEarSensitivity];
  if (v13 == v14)
  {
    v43 = v13;
  }

  else
  {
    v15 = [v8 leftEarSensitivity];
    if (!v15)
    {
      v12 = 0;
LABEL_31:

      goto LABEL_37;
    }

    v44 = v4;
    v16 = v3;
    v17 = v5;
    v41 = v15;
    v6 = [(HKAudiogramSensitivityPoint *)self leftEarSensitivity];
    v18 = [v8 leftEarSensitivity];
    if (([v6 isEqual:v18] & 1) == 0)
    {

      v12 = 0;
      v5 = v17;
      v3 = v16;
      v4 = v44;
      if (v9 == v10)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v37 = v18;
    v43 = v13;
    v5 = v17;
    v3 = v16;
    v4 = v44;
  }

  v19 = [(HKAudiogramSensitivityPoint *)self rightEarSensitivity];
  v46 = [v8 rightEarSensitivity];
  v42 = v19;
  v40 = v6;
  if (v19 == v46)
  {
    v38 = v3;
    v39 = v14;
    v45 = v4;
    [(HKAudiogramSensitivityPoint *)self tests];
  }

  else
  {
    v20 = [v8 rightEarSensitivity];
    if (!v20)
    {
      v12 = 0;
      v30 = v19;
      goto LABEL_27;
    }

    v39 = v14;
    v36 = v20;
    v21 = [(HKAudiogramSensitivityPoint *)self rightEarSensitivity];
    v14 = [v8 rightEarSensitivity];
    if (([v21 isEqual:v14] & 1) == 0)
    {

      v12 = 0;
      v13 = v43;
      v14 = v39;
      v29 = v43 == v39;
LABEL_29:
      if (!v29)
      {
      }

      goto LABEL_31;
    }

    v45 = v4;
    v38 = v3;
    [(HKAudiogramSensitivityPoint *)self tests];
  }
  v22 = ;
  v23 = [v8 tests];
  v24 = v23;
  v12 = v22 == v23;
  if (v22 == v23)
  {

    v30 = v42;
    if (v42 == v46)
    {
LABEL_33:

      v31 = v43;
      v4 = v45;
      v3 = v38;
      v14 = v39;
      goto LABEL_34;
    }
  }

  else
  {
    v35 = v5;
    v25 = [v8 tests];
    if (v25)
    {
      v26 = v25;
      v27 = [(HKAudiogramSensitivityPoint *)self tests];
      v28 = [v8 tests];
      v12 = [v27 isEqualToArray:v28];

      if (v42 != v46)
      {
      }

      v13 = v43;
      v4 = v45;
      v3 = v38;
      v14 = v39;
      v29 = v43 == v39;
      v5 = v35;
      goto LABEL_29;
    }

    v30 = v42;
    if (v42 == v46)
    {
      goto LABEL_33;
    }
  }

  v3 = v38;
  v14 = v39;
  v4 = v45;
LABEL_27:

  v31 = v43;
LABEL_34:
  if (v31 != v14)
  {
  }

LABEL_37:
  if (v9 != v10)
  {
    goto LABEL_38;
  }

LABEL_39:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKAudiogramSensitivityPoint *)self frequency];
  [v4 encodeObject:v5 forKey:@"FrequencyKey"];

  v6 = [(HKAudiogramSensitivityPoint *)self leftEarSensitivity];
  [v4 encodeObject:v6 forKey:@"LeftEarSensitivityKey"];

  v7 = [(HKAudiogramSensitivityPoint *)self rightEarSensitivity];
  [v4 encodeObject:v7 forKey:@"RightEarSensitivityKey"];

  v8 = [(HKAudiogramSensitivityPoint *)self tests];
  [v4 encodeObject:v8 forKey:@"TestsKey"];
}

- (HKAudiogramSensitivityPoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FrequencyKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LeftEarSensitivityKey"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RightEarSensitivityKey"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LeftEarClampedRangeKey"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RightEarClampedRangeKey"];
  v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"TestsKey"];

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