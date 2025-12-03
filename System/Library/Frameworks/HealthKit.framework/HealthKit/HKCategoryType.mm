@interface HKCategoryType
+ (id)_categoryTypeWithCode:(int64_t)code;
- (BOOL)_acceptsValue:(int64_t)value;
- (HKCategoryType)initWithIdentifier:(id)identifier;
- (id)_predicateForSDKVersionToken:(unint64_t)token;
- (int64_t)_categoryValueForValue:(int64_t)value;
- (int64_t)_defaultValue;
@end

@implementation HKCategoryType

- (HKCategoryType)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [HKObjectType categoryTypeForIdentifier:identifierCopy];

  if (!v5)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Invalid %@ identifier %@", objc_opt_class(), identifierCopy}];
  }

  return v5;
}

- (BOOL)_acceptsValue:(int64_t)value
{
  code = [(HKObjectType *)self code];

  return HKCategoryTypeAcceptsValue(code, value);
}

- (int64_t)_categoryValueForValue:(int64_t)value
{
  code = [(HKObjectType *)self code];
  if (code != 63)
  {
    if (code != 92)
    {
      return value;
    }

    v5 = HKProgramSDKAtLeast();
    if (value == 4 && !v5)
    {
      return 3;
    }
  }

  if ((HKProgramSDKAtLeast() & 1) == 0)
  {
    v6 = _HKCategoryValueSleepAnalysisAsleepValues();
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:value];
    v8 = [v6 containsObject:v7];

    if (v8)
    {
      return 1;
    }
  }

  return value;
}

+ (id)_categoryTypeWithCode:(int64_t)code
{
  v5 = objc_opt_class();

  return [self _dataTypeWithCode:code expectedClass:v5];
}

- (int64_t)_defaultValue
{
  if ([(HKObjectType *)self code]!= 63)
  {
    return 0;
  }

  return _HKCategoryValueSleepAnalysisDefaultAsleepValue();
}

- (id)_predicateForSDKVersionToken:(unint64_t)token
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