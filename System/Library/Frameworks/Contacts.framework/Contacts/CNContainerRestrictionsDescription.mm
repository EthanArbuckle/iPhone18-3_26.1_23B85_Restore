@interface CNContainerRestrictionsDescription
- (BOOL)isConvertibleABValue:(void *)a3;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5;
- (id)CNValueForContainer:(id)a3;
- (id)CNValueFromABValue:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
- (void)setCNValue:(id)a3 onContainer:(id)a4;
@end

@implementation CNContainerRestrictionsDescription

- (id)CNValueForContainer:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 restrictions];

  return [v3 numberWithUnsignedInteger:v4];
}

- (void)setCNValue:(id)a3 onContainer:(id)a4
{
  v5 = a4;
  [v5 setRestrictions:{objc_msgSend(a3, "unsignedIntegerValue")}];
}

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v5 = [a3 unsignedIntegerValue];
  if (v5 >= 8)
  {
    CNSetError(a4, 301, 0);
  }

  return v5 < 8;
}

- (BOOL)isConvertibleABValue:(void *)a3
{
  valuePtr = 0;
  if (CFNumberGetValue(a3, kCFNumberIntType, &valuePtr))
  {
    v3 = valuePtr >= 0x10;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (void)ABValueFromCNValue:(id)a3
{
  v3 = [a3 intValue];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3 & 3];
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

- (id)CNValueFromABValue:(void *)a3
{
  v3 = [a3 intValue] & 3;
  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithUnsignedInteger:v3];
}

- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5
{
  if (!a3)
  {
    return 1;
  }

  v6 = a3;
  [(CNContainerRestrictionsDescription *)self abPropertyID];
  ABRecordGetIntValue();
  [v6 intValue];

  [(CNContainerRestrictionsDescription *)self abPropertyID];

  return ABRecordSetIntValue();
}

@end