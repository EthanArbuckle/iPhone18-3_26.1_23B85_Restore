@interface CAMDrawerNightModeButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMDrawerNightModeButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [validationsCopy validateClass:@"CAMDrawerNightModeButton" isKindOfClass:@"CAMControlDrawerCustomButton"];
  [validationsCopy validateClass:@"CAMDrawerNightModeButton" hasInstanceMethod:@"isOn" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMDrawerNightModeButton" hasInstanceMethod:@"isDisabled" withFullSignature:{"B", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isExpanded"])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)accessibilityValue
{
  if (([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isExpanded"]& 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = CAMDrawerNightModeButtonAccessibility;
    accessibilityValue = [(CAMDrawerNightModeButtonAccessibility *)&v6 accessibilityValue];
  }

  else
  {
    if (([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isOn"]& 1) != 0)
    {
      v4 = @"on.state";
    }

    else
    {
      v4 = @"off.state";
    }

    accessibilityValue = accessibilityCameraUILocalizedString(v4);
  }

  return accessibilityValue;
}

- (id)accessibilityHint
{
  if (([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isExpanded"]& 1) != 0 || ([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isOn"]& 1) != 0 || ([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isDisabled"]& 1) != 0)
  {
    v5.receiver = self;
    v5.super_class = CAMDrawerNightModeButtonAccessibility;
    accessibilityHint = [(CAMDrawerNightModeButtonAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    accessibilityHint = accessibilityCameraUILocalizedString(@"auto");
  }

  return accessibilityHint;
}

@end