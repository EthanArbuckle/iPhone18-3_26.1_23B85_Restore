@interface HKAudiogramSensitivityPointClampingRange
+ (BOOL)_validateLowerBound:(id)bound upperBound:(id)upperBound error:(id *)error;
+ (id)clampingRangeWithLowerBound:(id)bound upperBound:(id)upperBound error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClampedRange:(id)range;
- (HKAudiogramSensitivityPointClampingRange)initWithCoder:(id)coder;
- (id)_initWithLowerBound:(id)bound upperBound:(id)upperBound;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKAudiogramSensitivityPointClampingRange

- (id)_initWithLowerBound:(id)bound upperBound:(id)upperBound
{
  boundCopy = bound;
  upperBoundCopy = upperBound;
  v12.receiver = self;
  v12.super_class = HKAudiogramSensitivityPointClampingRange;
  v9 = [(HKAudiogramSensitivityPointClampingRange *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_lowerBound, bound);
    objc_storeStrong(p_isa + 2, upperBound);
  }

  return p_isa;
}

+ (id)clampingRangeWithLowerBound:(id)bound upperBound:(id)upperBound error:(id *)error
{
  boundCopy = bound;
  upperBoundCopy = upperBound;
  if ([self _validateLowerBound:boundCopy upperBound:upperBoundCopy error:error])
  {
    v10 = _HKDecibleQuantity(boundCopy);
    v11 = _HKDecibleQuantity(upperBoundCopy);
    v12 = [[HKAudiogramSensitivityPointClampingRange alloc] _initWithLowerBound:v10 upperBound:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_validateLowerBound:(id)bound upperBound:(id)upperBound error:(id *)error
{
  v28[1] = *MEMORY[0x1E69E9840];
  boundCopy = bound;
  upperBoundCopy = upperBound;
  v9 = upperBoundCopy;
  if (!(boundCopy | upperBoundCopy))
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Clamped range must have some bound."];
    v11 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = v10;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v12];

    v14 = v13;
    if (!v14)
    {
LABEL_11:

      v16 = 0;
      goto LABEL_12;
    }

    if (error)
    {
LABEL_4:
      v15 = v14;
      *error = v14;
      goto LABEL_11;
    }

LABEL_10:
    _HKLogDroppedError(v14);
    goto LABEL_11;
  }

  v16 = 1;
  if (boundCopy)
  {
    if (upperBoundCopy)
    {
      [boundCopy doubleValue];
      v18 = v17;
      [v9 doubleValue];
      if (v18 > v19)
      {
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Lower bound for clamped range must be less than upper bound."];
        v20 = MEMORY[0x1E696ABC0];
        v25 = *MEMORY[0x1E696A578];
        v26 = v10;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v22 = [v20 errorWithDomain:@"com.apple.healthkit" code:3 userInfo:v21];

        v14 = v22;
        if (!v14)
        {
          goto LABEL_11;
        }

        if (error)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }
  }

LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return v16;
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
    v6 = [(HKAudiogramSensitivityPointClampingRange *)self isEqualToClampedRange:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToClampedRange:(id)range
{
  rangeCopy = range;
  lowerBound = [(HKAudiogramSensitivityPointClampingRange *)self lowerBound];
  lowerBound2 = [rangeCopy lowerBound];
  if (lowerBound != lowerBound2)
  {
    lowerBound3 = [rangeCopy lowerBound];
    if (!lowerBound3)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v3 = lowerBound3;
    lowerBound4 = [(HKAudiogramSensitivityPointClampingRange *)self lowerBound];
    lowerBound5 = [rangeCopy lowerBound];
    if (![lowerBound4 isEqual:lowerBound5])
    {
      v18 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v20 = lowerBound5;
    v22 = lowerBound4;
  }

  v11 = [(HKAudiogramSensitivityPointClampingRange *)self upperBound:v20];
  upperBound = [rangeCopy upperBound];
  v13 = upperBound;
  if (v11 == upperBound)
  {

    v18 = 1;
  }

  else
  {
    upperBound2 = [rangeCopy upperBound];
    if (upperBound2)
    {
      v15 = upperBound2;
      upperBound3 = [(HKAudiogramSensitivityPointClampingRange *)self upperBound];
      upperBound4 = [rangeCopy upperBound];
      v18 = [upperBound3 isEqual:upperBound4];
    }

    else
    {

      v18 = 0;
    }
  }

  lowerBound5 = v21;
  lowerBound4 = v23;
  if (lowerBound != lowerBound2)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lowerBound = [(HKAudiogramSensitivityPointClampingRange *)self lowerBound];

  if (lowerBound)
  {
    lowerBound2 = [(HKAudiogramSensitivityPointClampingRange *)self lowerBound];
    [coderCopy encodeObject:lowerBound2 forKey:@"LowerBoundKey"];
  }

  upperBound = [(HKAudiogramSensitivityPointClampingRange *)self upperBound];

  if (upperBound)
  {
    upperBound2 = [(HKAudiogramSensitivityPointClampingRange *)self upperBound];
    [coderCopy encodeObject:upperBound2 forKey:@"UpperBoundKey"];
  }
}

- (HKAudiogramSensitivityPointClampingRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LowerBoundKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UpperBoundKey"];

  v7 = [(HKAudiogramSensitivityPointClampingRange *)self _initWithLowerBound:v5 upperBound:v6];
  return v7;
}

@end