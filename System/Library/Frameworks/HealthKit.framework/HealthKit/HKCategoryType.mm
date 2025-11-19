@interface HKCategoryType
+ (id)_categoryTypeWithCode:(int64_t)a3;
- (BOOL)_acceptsValue:(int64_t)a3;
- (HKCategoryType)initWithIdentifier:(id)a3;
- (id)_predicateForSDKVersionToken:(unint64_t)a3;
- (int64_t)_categoryValueForValue:(int64_t)a3;
- (int64_t)_defaultValue;
@end

@implementation HKCategoryType

- (HKCategoryType)initWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [HKObjectType categoryTypeForIdentifier:v4];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), v4}];
  }

  return v5;
}

- (BOOL)_acceptsValue:(int64_t)a3
{
  v4 = [(HKObjectType *)self code];

  return HKCategoryTypeAcceptsValue(v4, a3);
}

- (int64_t)_categoryValueForValue:(int64_t)a3
{
  v4 = [(HKObjectType *)self code];
  if (v4 != 63)
  {
    if (v4 != 92)
    {
      return a3;
    }

    v5 = HKProgramSDKAtLeast();
    if (a3 == 4 && !v5)
    {
      return 3;
    }
  }

  if ((HKProgramSDKAtLeast() & 1) == 0)
  {
    v6 = _HKCategoryValueSleepAnalysisAsleepValues();
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      return 1;
    }
  }

  return a3;
}

+ (id)_categoryTypeWithCode:(int64_t)a3
{
  v5 = objc_opt_class();

  return [a1 _dataTypeWithCode:a3 expectedClass:v5];
}

- (int64_t)_defaultValue
{
  if ([(HKObjectType *)self code]!= 63)
  {
    return 0;
  }

  return _HKCategoryValueSleepAnalysisDefaultAsleepValue();
}

- (id)_predicateForSDKVersionToken:(unint64_t)a3
{
  if ([(HKObjectType *)self code]== 63 && (HKProgramSDKTokenAtLeast() & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %ld", @"value", 2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end