@interface CNContainerTypeDescription
- (BOOL)isConvertibleABValue:(void *)a3;
- (BOOL)isValidValue:(id)a3 error:(id *)a4;
- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5;
- (id)CNValueForContainer:(id)a3;
- (id)CNValueFromABValue:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
- (void)setCNValue:(id)a3 onContainer:(id)a4;
@end

@implementation CNContainerTypeDescription

- (BOOL)isValidValue:(id)a3 error:(id *)a4
{
  v5 = [a3 integerValue];
  v6 = v5;
  if (v5 >= 4 && v5 - 1002 >= 3 && *a4)
  {
    *a4 = [CNErrorFactory errorWithCode:301 userInfo:0];
  }

  return v6 < 4 || v6 - 1002 < 3;
}

- (id)CNValueForContainer:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 type];

  return [v3 numberWithInteger:v4];
}

- (void)setCNValue:(id)a3 onContainer:(id)a4
{
  v5 = a4;
  [v5 setType:{objc_msgSend(a3, "integerValue")}];
}

- (BOOL)isConvertibleABValue:(void *)a3
{
  valuePtr = 0;
  Value = CFNumberGetValue(a3, kCFNumberIntType, &valuePtr);
  if (Value)
  {
    v4 = valuePtr > 7 || ((1 << valuePtr) & 0x93) == 0;
    LOBYTE(Value) = !v4 || (valuePtr - 16777217 <= 3 ? (v5 = valuePtr == 16777218) : (v5 = 1), !v5);
  }

  return Value;
}

- (void)ABValueFromCNValue:(id)a3
{
  v3 = a3;
  v4 = +[CNiOSABConstantsMapping CNToABSourceTypeConstantsMapping];
  v5 = [v4 mappedConstant:v3];

  v6 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)CNValueFromABValue:(void *)a3
{
  v4 = +[CNiOSABConstantsMapping ABToCNContainerTypeConstantsMapping];
  v5 = [v4 mappedConstant:a3];

  return v5;
}

- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5
{
  if (!a3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = CNContainerTypeDescription;
  return [(CNContainerPropertyDescription *)&v6 setABValue:a3 onABSource:a4 error:a5];
}

@end