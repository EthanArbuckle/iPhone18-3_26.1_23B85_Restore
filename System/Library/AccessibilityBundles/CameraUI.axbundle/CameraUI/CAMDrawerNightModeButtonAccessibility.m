@interface CAMDrawerNightModeButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMDrawerNightModeButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [v3 validateClass:@"CAMDrawerNightModeButton" isKindOfClass:@"CAMControlDrawerCustomButton"];
  [v3 validateClass:@"CAMDrawerNightModeButton" hasInstanceMethod:@"isOn" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMDrawerNightModeButton" hasInstanceMethod:@"isDisabled" withFullSignature:{"B", 0}];
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
    v3 = [(CAMDrawerNightModeButtonAccessibility *)&v6 accessibilityValue];
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

    v3 = accessibilityCameraUILocalizedString(v4);
  }

  return v3;
}

- (id)accessibilityHint
{
  if (([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isExpanded"]& 1) != 0 || ([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isOn"]& 1) != 0 || ([(CAMDrawerNightModeButtonAccessibility *)self safeBoolForKey:@"isDisabled"]& 1) != 0)
  {
    v5.receiver = self;
    v5.super_class = CAMDrawerNightModeButtonAccessibility;
    v3 = [(CAMDrawerNightModeButtonAccessibility *)&v5 accessibilityHint];
  }

  else
  {
    v3 = accessibilityCameraUILocalizedString(@"auto");
  }

  return v3;
}

@end