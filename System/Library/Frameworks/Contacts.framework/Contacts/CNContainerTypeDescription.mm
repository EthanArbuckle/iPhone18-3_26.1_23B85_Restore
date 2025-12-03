@interface CNContainerTypeDescription
- (BOOL)isConvertibleABValue:(void *)value;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error;
- (id)CNValueForContainer:(id)container;
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
- (void)setCNValue:(id)value onContainer:(id)container;
@end

@implementation CNContainerTypeDescription

- (BOOL)isValidValue:(id)value error:(id *)error
{
  integerValue = [value integerValue];
  v6 = integerValue;
  if (integerValue >= 4 && integerValue - 1002 >= 3 && *error)
  {
    *error = [CNErrorFactory errorWithCode:301 userInfo:0];
  }

  return v6 < 4 || v6 - 1002 < 3;
}

- (id)CNValueForContainer:(id)container
{
  v3 = MEMORY[0x1E696AD98];
  type = [container type];

  return [v3 numberWithInteger:type];
}

- (void)setCNValue:(id)value onContainer:(id)container
{
  containerCopy = container;
  [containerCopy setType:{objc_msgSend(value, "integerValue")}];
}

- (BOOL)isConvertibleABValue:(void *)value
{
  valuePtr = 0;
  Value = CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
  if (Value)
  {
    v4 = valuePtr > 7 || ((1 << valuePtr) & 0x93) == 0;
    LOBYTE(Value) = !v4 || (valuePtr - 16777217 <= 3 ? (v5 = valuePtr == 16777218) : (v5 = 1), !v5);
  }

  return Value;
}

- (void)ABValueFromCNValue:(id)value
{
  valueCopy = value;
  v4 = +[CNiOSABConstantsMapping CNToABSourceTypeConstantsMapping];
  v5 = [v4 mappedConstant:valueCopy];

  null = [MEMORY[0x1E695DFB0] null];

  if (v5 == null)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)CNValueFromABValue:(void *)value
{
  v4 = +[CNiOSABConstantsMapping ABToCNContainerTypeConstantsMapping];
  v5 = [v4 mappedConstant:value];

  return v5;
}

- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error
{
  if (!value)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CNContainerTypeDescription;
  return [(CNContainerPropertyDescription *)&v6 setABValue:value onABSource:source error:error];
}

@end