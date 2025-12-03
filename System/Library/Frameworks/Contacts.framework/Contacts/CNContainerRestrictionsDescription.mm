@interface CNContainerRestrictionsDescription
- (BOOL)isConvertibleABValue:(void *)value;
- (BOOL)isValidValue:(id)value error:(id *)error;
- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error;
- (id)CNValueForContainer:(id)container;
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
- (void)setCNValue:(id)value onContainer:(id)container;
@end

@implementation CNContainerRestrictionsDescription

- (id)CNValueForContainer:(id)container
{
  v3 = MEMORY[0x1E696AD98];
  restrictions = [container restrictions];

  return [v3 numberWithUnsignedInteger:restrictions];
}

- (void)setCNValue:(id)value onContainer:(id)container
{
  containerCopy = container;
  [containerCopy setRestrictions:{objc_msgSend(value, "unsignedIntegerValue")}];
}

- (BOOL)isValidValue:(id)value error:(id *)error
{
  unsignedIntegerValue = [value unsignedIntegerValue];
  if (unsignedIntegerValue >= 8)
  {
    CNSetError(error, 301, 0);
  }

  return unsignedIntegerValue < 8;
}

- (BOOL)isConvertibleABValue:(void *)value
{
  valuePtr = 0;
  if (CFNumberGetValue(value, kCFNumberIntType, &valuePtr))
  {
    v3 = valuePtr >= 0x10;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)ABValueFromCNValue:(id)value
{
  intValue = [value intValue];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:intValue & 3];
  if (!v4)
  {
    return 0;
  }

  v5 = CFRetain(v4);
  if (!v5)
  {
    return 0;
  }

  return CFAutorelease(v5);
}

- (id)CNValueFromABValue:(void *)value
{
  v3 = [value intValue] & 3;
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithUnsignedInteger:v3];
}

- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error
{
  if (!value)
  {
    return 1;
  }

  valueCopy = value;
  [(CNContainerRestrictionsDescription *)self abPropertyID];
  ABRecordGetIntValue();
  [valueCopy intValue];

  [(CNContainerRestrictionsDescription *)self abPropertyID];

  return ABRecordSetIntValue();
}

@end