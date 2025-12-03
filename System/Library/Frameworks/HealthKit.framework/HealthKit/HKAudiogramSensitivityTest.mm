@interface HKAudiogramSensitivityTest
+ (BOOL)validateConductionType:(int64_t)type side:(int64_t)side error:(id *)error;
+ (BOOL)validateSensitivity:(id)sensitivity error:(id *)error;
+ (BOOL)validateUnitForSensitivity:(id)sensitivity;
+ (id)_rangeViolationMin:(id)min max:(id)max value:(id)value;
- (BOOL)isEqual:(id)equal;
- (HKAudiogramSensitivityTest)initWithCoder:(id)coder;
- (HKQuantity)clampedSensitivity;
- (id)_initWithSensitivity:(id)sensitivity type:(int64_t)type masked:(BOOL)masked side:(int64_t)side clampingRange:(id)range;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAudiogramSensitivityTest

- (id)_initWithSensitivity:(id)sensitivity type:(int64_t)type masked:(BOOL)masked side:(int64_t)side clampingRange:(id)range
{
  sensitivityCopy = sensitivity;
  rangeCopy = range;
  v20.receiver = self;
  v20.super_class = HKAudiogramSensitivityTest;
  v14 = [(HKAudiogramSensitivityTest *)&v20 init];
  if (v14)
  {
    v15 = [sensitivityCopy copy];
    sensitivity = v14->_sensitivity;
    v14->_sensitivity = v15;

    v14->_masked = masked;
    v14->_type = type;
    v14->_side = side;
    v17 = [rangeCopy copy];
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

+ (BOOL)validateUnitForSensitivity:(id)sensitivity
{
  sensitivityCopy = sensitivity;
  v4 = +[HKUnit decibelHearingLevelUnit];
  v5 = [sensitivityCopy isCompatibleWithUnit:v4];

  if ((v5 & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Sensitivity must be a decibel unit"];
  }

  return v5;
}

+ (BOOL)validateSensitivity:(id)sensitivity error:(id *)error
{
  sensitivityCopy = sensitivity;
  v7 = +[HKUnit decibelHearingLevelUnit];
  v8 = [HKQuantity quantityWithUnit:v7 doubleValue:-20.0];

  v9 = +[HKUnit decibelHearingLevelUnit];
  v10 = [HKQuantity quantityWithUnit:v9 doubleValue:160.0];

  if ([sensitivityCopy compare:v8] == -1)
  {
    v11 = [self _rangeViolationMin:v8 max:v10 value:sensitivityCopy];
    if (!v11)
    {
      goto LABEL_9;
    }

    if (!error)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if ([sensitivityCopy compare:v10] != 1)
  {
    v13 = 1;
    goto LABEL_11;
  }

  v11 = [self _rangeViolationMin:v8 max:v10 value:sensitivityCopy];
  if (v11)
  {
    if (!error)
    {
LABEL_5:
      _HKLogDroppedError(v11);
      goto LABEL_9;
    }

LABEL_8:
    v12 = v11;
    *error = v11;
  }

LABEL_9:

  v13 = 0;
LABEL_11:

  return v13;
}

+ (BOOL)validateConductionType:(int64_t)type side:(int64_t)side error:(id *)error
{
  if (type)
  {
    v7 = @"Conduction type must be a valid type";
  }

  else
  {
    if (side < 2)
    {
      return 1;
    }

    v7 = @"Test side must be a valid side";
  }

  [MEMORY[0x1E696ABC0] hk_assignError:error code:3 format:{v7, v5, v6}];
  return 0;
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

- (HKQuantity)clampedSensitivity
{
  sensitivity = [(HKAudiogramSensitivityTest *)self sensitivity];
  clampingRange = [(HKAudiogramSensitivityTest *)self clampingRange];
  v5 = HKAudiogramClampedSensitivityPointQuantity(sensitivity, clampingRange);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      sensitivity = self->_sensitivity;
      sensitivity = [(HKAudiogramSensitivityTest *)v7 sensitivity];
      if (sensitivity != sensitivity)
      {
        sensitivity2 = [(HKAudiogramSensitivityTest *)v7 sensitivity];
        if (!sensitivity2)
        {
          v12 = 0;
          goto LABEL_21;
        }

        v3 = sensitivity2;
        v11 = self->_sensitivity;
        sensitivity3 = [(HKAudiogramSensitivityTest *)v7 sensitivity];
        if (![(HKQuantity *)v11 isEqual:sensitivity3])
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
            clampingRange = [(HKAudiogramSensitivityTest *)v7 clampingRange];
            v18 = clampingRange;
            if (clampingRange == clampingRange)
            {

              v12 = 1;
              goto LABEL_19;
            }

            clampingRange2 = [(HKAudiogramSensitivityTest *)v7 clampingRange];
            if (clampingRange2)
            {
              v20 = clampingRange2;
              v21 = self->_clampingRange;
              clampingRange3 = [(HKAudiogramSensitivityTest *)v7 clampingRange];
              v12 = [(HKAudiogramSensitivityPointClampingRange *)v21 isEqual:clampingRange3];

              goto LABEL_19;
            }
          }
        }
      }

      v12 = 0;
LABEL_19:
      if (sensitivity != sensitivity)
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

- (void)encodeWithCoder:(id)coder
{
  sensitivity = self->_sensitivity;
  coderCopy = coder;
  [coderCopy encodeObject:sensitivity forKey:@"Sensitivity"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeBool:self->_masked forKey:@"Masked"];
  [coderCopy encodeInteger:self->_side forKey:@"Side"];
  [coderCopy encodeObject:self->_clampingRange forKey:@"ClampingRange"];
}

- (HKAudiogramSensitivityTest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Sensitivity"];
  v6 = [coderCopy decodeIntegerForKey:@"Type"];
  v7 = [coderCopy decodeBoolForKey:@"Masked"];
  v8 = [coderCopy decodeIntegerForKey:@"Side"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClampingRange"];

  v10 = [(HKAudiogramSensitivityTest *)self _initWithSensitivity:v5 type:v6 masked:v7 side:v8 clampingRange:v9];
  return v10;
}

@end