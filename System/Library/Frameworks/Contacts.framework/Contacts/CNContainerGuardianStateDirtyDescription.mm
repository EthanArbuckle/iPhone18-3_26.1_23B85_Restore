@interface CNContainerGuardianStateDirtyDescription
- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error;
- (id)CNValueForContainer:(id)container;
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
- (void)setCNValue:(id)value onContainer:(id)container;
@end

@implementation CNContainerGuardianStateDirtyDescription

- (id)CNValueForContainer:(id)container
{
  v3 = MEMORY[0x1E696AD98];
  isGuardianStateDirty = [container isGuardianStateDirty];

  return [v3 numberWithBool:isGuardianStateDirty];
}

- (void)setCNValue:(id)value onContainer:(id)container
{
  containerCopy = container;
  [containerCopy setGuardianStateDirty:{objc_msgSend(value, "BOOLValue")}];
}

- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error
{
  if (!value)
  {
    return 1;
  }

  valueCopy = value;
  [(CNContainerGuardianStateDirtyDescription *)self abPropertyID];
  ABRecordGetIntValue();
  [valueCopy intValue];

  [(CNContainerGuardianStateDirtyDescription *)self abPropertyID];

  return ABRecordSetIntValue();
}

- (void)ABValueFromCNValue:(id)value
{
  if ([value BOOLValue])
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

- (id)CNValueFromABValue:(void *)value
{
  if (([value intValue] & 8) != 0)
  {
    return MEMORY[0x1E695E118];
  }

  else
  {
    return MEMORY[0x1E695E110];
  }
}

@end