@interface HKAudiogramSensitivityPointClampingRange
+ (BOOL)_validateLowerBound:(id)a3 upperBound:(id)a4 error:(id *)a5;
+ (id)clampingRangeWithLowerBound:(id)a3 upperBound:(id)a4 error:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClampedRange:(id)a3;
- (HKAudiogramSensitivityPointClampingRange)initWithCoder:(id)a3;
- (id)_initWithLowerBound:(id)a3 upperBound:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKAudiogramSensitivityPointClampingRange

- (id)_initWithLowerBound:(id)a3 upperBound:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKAudiogramSensitivityPointClampingRange;
  v9 = [(HKAudiogramSensitivityPointClampingRange *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_lowerBound, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

+ (id)clampingRangeWithLowerBound:(id)a3 upperBound:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([a1 _validateLowerBound:v8 upperBound:v9 error:a5])
  {
    v10 = _HKDecibleQuantity(v8);
    v11 = _HKDecibleQuantity(v9);
    v12 = [[HKAudiogramSensitivityPointClampingRange alloc] _initWithLowerBound:v10 upperBound:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)_validateLowerBound:(id)a3 upperBound:(id)a4 error:(id *)a5
{
  v28[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!(v7 | v8))
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

    if (a5)
    {
LABEL_4:
      v15 = v14;
      *a5 = v14;
      goto LABEL_11;
    }

LABEL_10:
    _HKLogDroppedError(v14);
    goto LABEL_11;
  }

  v16 = 1;
  if (v7)
  {
    if (v8)
    {
      [v7 doubleValue];
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

        if (a5)
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

- (BOOL)isEqualToClampedRange:(id)a3
{
  v5 = a3;
  v6 = [(HKAudiogramSensitivityPointClampingRange *)self lowerBound];
  v7 = [v5 lowerBound];
  if (v6 != v7)
  {
    v8 = [v5 lowerBound];
    if (!v8)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v3 = v8;
    v9 = [(HKAudiogramSensitivityPointClampingRange *)self lowerBound];
    v10 = [v5 lowerBound];
    if (![v9 isEqual:v10])
    {
      v18 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v20 = v10;
    v22 = v9;
  }

  v11 = [(HKAudiogramSensitivityPointClampingRange *)self upperBound:v20];
  v12 = [v5 upperBound];
  v13 = v12;
  if (v11 == v12)
  {

    v18 = 1;
  }

  else
  {
    v14 = [v5 upperBound];
    if (v14)
    {
      v15 = v14;
      v16 = [(HKAudiogramSensitivityPointClampingRange *)self upperBound];
      v17 = [v5 upperBound];
      v18 = [v16 isEqual:v17];
    }

    else
    {

      v18 = 0;
    }
  }

  v10 = v21;
  v9 = v23;
  if (v6 != v7)
  {
    goto LABEL_13;
  }

LABEL_14:

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(HKAudiogramSensitivityPointClampingRange *)self lowerBound];

  if (v4)
  {
    v5 = [(HKAudiogramSensitivityPointClampingRange *)self lowerBound];
    [v8 encodeObject:v5 forKey:@"LowerBoundKey"];
  }

  v6 = [(HKAudiogramSensitivityPointClampingRange *)self upperBound];

  if (v6)
  {
    v7 = [(HKAudiogramSensitivityPointClampingRange *)self upperBound];
    [v8 encodeObject:v7 forKey:@"UpperBoundKey"];
  }
}

- (HKAudiogramSensitivityPointClampingRange)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LowerBoundKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpperBoundKey"];

  v7 = [(HKAudiogramSensitivityPointClampingRange *)self _initWithLowerBound:v5 upperBound:v6];
  return v7;
}

@end