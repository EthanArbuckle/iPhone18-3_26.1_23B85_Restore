@interface CNContainerGuardianRestrictedDescription
- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5;
- (id)CNValueForContainer:(id)a3;
- (id)CNValueFromABValue:(void *)a3;
- (void)ABValueFromCNValue:(id)a3;
- (void)setCNValue:(id)a3 onContainer:(id)a4;
@end

@implementation CNContainerGuardianRestrictedDescription

- (id)CNValueForContainer:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 isGuardianRestricted];

  return [v3 numberWithBool:v4];
}

- (void)setCNValue:(id)a3 onContainer:(id)a4
{
  v5 = a4;
  [v5 setGuardianRestricted:{objc_msgSend(a3, "BOOLValue")}];
}

- (BOOL)setABValue:(void *)a3 onABSource:(void *)a4 error:(__CFError *)a5
{
  if (!a3)
  {
    return 1;
  }

  v6 = a3;
  [(CNContainerGuardianRestrictedDescription *)self abPropertyID];
  ABRecordGetIntValue();
  [v6 intValue];

  [(CNContainerGuardianRestrictedDescription *)self abPropertyID];

  return ABRecordSetIntValue();
}

- (void)ABValueFromCNValue:(id)a3
{
  if ([a3 BOOLValue])
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithInt:v3];
}

- (id)CNValueFromABValue:(void *)a3
{
  if (([a3 intValue] & 4) != 0)
  {
    return MEMORY[0x1E695E118];
  }

  else
  {
    return MEMORY[0x1E695E110];
  }
}

@end