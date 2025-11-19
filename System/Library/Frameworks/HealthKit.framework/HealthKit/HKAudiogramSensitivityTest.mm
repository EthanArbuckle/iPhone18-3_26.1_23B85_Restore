@interface HKAudiogramSensitivityTest
+ (BOOL)validateConductionType:(int64_t)a3 side:(int64_t)a4 error:(id *)a5;
+ (BOOL)validateSensitivity:(id)a3 error:(id *)a4;
+ (BOOL)validateUnitForSensitivity:(id)a3;
+ (id)_rangeViolationMin:(id)a3 max:(id)a4 value:(id)a5;
- (BOOL)isEqual:(id)a3;
- (HKAudiogramSensitivityTest)initWithCoder:(id)a3;
- (HKQuantity)clampedSensitivity;
- (id)_initWithSensitivity:(id)a3 type:(int64_t)a4 masked:(BOOL)a5 side:(int64_t)a6 clampingRange:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAudiogramSensitivityTest

- (id)_initWithSensitivity:(id)a3 type:(int64_t)a4 masked:(BOOL)a5 side:(int64_t)a6 clampingRange:(id)a7
{
  v12 = a3;
  v13 = a7;
  v20.receiver = self;
  v20.super_class = HKAudiogramSensitivityTest;
  v14 = [(HKAudiogramSensitivityTest *)&v20 init];
  if (v14)
  {
    v15 = [v12 copy];
    sensitivity = v14->_sensitivity;
    v14->_sensitivity = v15;

    v14->_masked = a5;
    v14->_type = a4;
    v14->_side = a6;
    v17 = [v13 copy];
    clampingRange = v14->_clampingRange;
    v14->_clampingRange = v17;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sensitivity = self->_sensitivity;
  if (self->_type)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", self->_type];
  }

  else
  {
    v7 = @"Air";
  }

  masked = self->_masked;
  side = self->_side;
  if (side)
  {
    if (side == 1)
    {
      v10 = @"Right";
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", self->_side];
    }
  }

  else
  {
    v10 = @"Left";
  }

  v11 = [v3 stringWithFormat:@"<%@:%p sensitivity=%@, type=%@, masked=%d, side=%@, clampingRange=%@>", v5, self, sensitivity, v7, masked, v10, self->_clampingRange];

  return v11;
}

+ (BOOL)validateUnitForSensitivity:(id)a3
{
  v3 = a3;
  v4 = +[HKUnit decibelHearingLevelUnit];
  v5 = [v3 isCompatibleWithUnit:v4];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Sensitivity must be a decibel unit"];
  }

  return v5;
}

+ (BOOL)validateSensitivity:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[HKUnit decibelHearingLevelUnit];
  v8 = [HKQuantity quantityWithUnit:v7 doubleValue:-20.0];

  v9 = +[HKUnit decibelHearingLevelUnit];
  v10 = [HKQuantity quantityWithUnit:v9 doubleValue:160.0];

  if ([v6 compare:v8] == -1)
  {
    v11 = [a1 _rangeViolationMin:v8 max:v10 value:v6];
    if (!v11)
    {
      goto LABEL_9;
    }

    if (!a4)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if ([v6 compare:v10] != 1)
  {
    v13 = 1;
    goto LABEL_11;
  }

  v11 = [a1 _rangeViolationMin:v8 max:v10 value:v6];
  if (v11)
  {
    if (!a4)
    {
LABEL_5:
      _HKLogDroppedError(v11);
      goto LABEL_9;
    }

LABEL_8:
    v12 = v11;
    *a4 = v11;
  }

LABEL_9:

  v13 = 0;
LABEL_11:

  return v13;
}

+ (BOOL)validateConductionType:(int64_t)a3 side:(int64_t)a4 error:(id *)a5
{
  if (a3)
  {
    v7 = @"Conduction type must be a valid type";
  }

  else
  {
    if (a4 < 2)
    {
      return 1;
    }

    v7 = @"Test side must be a valid side";
  }

  [MEMORY[0x1E696ABC0] hk_assignError:a5 code:3 format:{v7, v5, v6}];
  return 0;
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

- (HKQuantity)clampedSensitivity
{
  v3 = [(HKAudiogramSensitivityTest *)self sensitivity];
  v4 = [(HKAudiogramSensitivityTest *)self clampingRange];
  v5 = HKAudiogramClampedSensitivityPointQuantity(v3, v4);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      sensitivity = self->_sensitivity;
      v9 = [(HKAudiogramSensitivityTest *)v7 sensitivity];
      if (sensitivity != v9)
      {
        v10 = [(HKAudiogramSensitivityTest *)v7 sensitivity];
        if (!v10)
        {
          v12 = 0;
          goto LABEL_21;
        }

        v3 = v10;
        v11 = self->_sensitivity;
        v4 = [(HKAudiogramSensitivityTest *)v7 sensitivity];
        if (![(HKQuantity *)v11 isEqual:v4])
        {
          v12 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      type = self->_type;
      if (type == [(HKAudiogramSensitivityTest *)v7 type])
      {
        masked = self->_masked;
        if (masked == [(HKAudiogramSensitivityTest *)v7 masked])
        {
          side = self->_side;
          if (side == [(HKAudiogramSensitivityTest *)v7 side])
          {
            clampingRange = self->_clampingRange;
            v17 = [(HKAudiogramSensitivityTest *)v7 clampingRange];
            v18 = v17;
            if (clampingRange == v17)
            {

              v12 = 1;
              goto LABEL_19;
            }

            v19 = [(HKAudiogramSensitivityTest *)v7 clampingRange];
            if (v19)
            {
              v20 = v19;
              v21 = self->_clampingRange;
              v22 = [(HKAudiogramSensitivityTest *)v7 clampingRange];
              v12 = [(HKAudiogramSensitivityPointClampingRange *)v21 isEqual:v22];

              goto LABEL_19;
            }
          }
        }
      }

      v12 = 0;
LABEL_19:
      if (sensitivity != v9)
      {
        goto LABEL_20;
      }

LABEL_21:

      goto LABEL_22;
    }

    v12 = 0;
  }

LABEL_22:

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  sensitivity = self->_sensitivity;
  v5 = a3;
  [v5 encodeObject:sensitivity forKey:@"Sensitivity"];
  [v5 encodeInteger:self->_type forKey:@"Type"];
  [v5 encodeBool:self->_masked forKey:@"Masked"];
  [v5 encodeInteger:self->_side forKey:@"Side"];
  [v5 encodeObject:self->_clampingRange forKey:@"ClampingRange"];
}

- (HKAudiogramSensitivityTest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Sensitivity"];
  v6 = [v4 decodeIntegerForKey:@"Type"];
  v7 = [v4 decodeBoolForKey:@"Masked"];
  v8 = [v4 decodeIntegerForKey:@"Side"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClampingRange"];

  v10 = [(HKAudiogramSensitivityTest *)self _initWithSensitivity:v5 type:v6 masked:v7 side:v8 clampingRange:v9];
  return v10;
}

@end