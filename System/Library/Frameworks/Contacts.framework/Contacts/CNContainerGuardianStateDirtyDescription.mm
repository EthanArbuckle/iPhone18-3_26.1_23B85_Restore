@interface CNContainerGuardianStateDirtyDescription
- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5;
- (id)CNValueForContainer:(id)a3;
- (id)CNValueFromABValue:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
- (void)setCNValue:(id)a3 onContainer:(id)a4;
@end

@implementation CNContainerGuardianStateDirtyDescription

- (id)CNValueForContainer:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 isGuardianStateDirty];

  return [v3 numberWithBool:v4];
}

- (void)setCNValue:(id)a3 onContainer:(id)a4
{
  v5 = a4;
  [v5 setGuardianStateDirty:{objc_msgSend(a3, "BOOLValue")}];
}

- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5
{
  if (!a3)
  {
    return 1;
  }

  v6 = a3;
  [(CNContainerGuardianStateDirtyDescription *)self abPropertyID];
  ABRecordGetIntValue();
  [v6 intValue];

  [(CNContainerGuardianStateDirtyDescription *)self abPropertyID];

  return ABRecordSetIntValue();
}

- (void)ABValueFromCNValue:(id)a3
{
  if ([a3 BOOLValue])
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
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
  if (([a3 intValue] & 8) != 0)
  {
    return MEMORY[0x1E695E118];
  }

  else
  {
    return MEMORY[0x1E695E110];
  }
}

@end