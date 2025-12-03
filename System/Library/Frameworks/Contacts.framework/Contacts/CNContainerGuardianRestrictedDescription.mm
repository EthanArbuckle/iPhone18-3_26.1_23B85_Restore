@interface CNContainerGuardianRestrictedDescription
- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error;
- (id)CNValueForContainer:(id)container;
- (id)CNValueFromABValue:(void *)value;
- (void)ABValueFromCNValue:(id)value;
- (void)setCNValue:(id)value onContainer:(id)container;
@end

@implementation CNContainerGuardianRestrictedDescription

- (id)CNValueForContainer:(id)container
{
  v3 = MEMORY[0x1E696AD98];
  isGuardianRestricted = [container isGuardianRestricted];

  return [v3 numberWithBool:isGuardianRestricted];
}

- (void)setCNValue:(id)value onContainer:(id)container
{
  containerCopy = container;
  [containerCopy setGuardianRestricted:{objc_msgSend(value, "BOOLValue")}];
}

- (BOOL)setABValue:(void *)value onABSource:(void *)source error:(__CFError *)error
{
  if (!value)
  {
    return 1;
  }

  valueCopy = value;
  [(CNContainerGuardianRestrictedDescription *)self abPropertyID];
  ABRecordGetIntValue();
  [valueCopy intValue];

  [(CNContainerGuardianRestrictedDescription *)self abPropertyID];

  return ABRecordSetIntValue();
}

- (void)ABValueFromCNValue:(id)value
{
  if ([value BOOLValue])
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

- (id)CNValueFromABValue:(void *)value
{
  if (([value intValue] & 4) != 0)
  {
    return MEMORY[0x1E695E118];
  }

  else
  {
    return MEMORY[0x1E695E110];
  }
}

@end