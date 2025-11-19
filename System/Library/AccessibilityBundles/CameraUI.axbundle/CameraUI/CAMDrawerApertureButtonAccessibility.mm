@interface CAMDrawerApertureButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMDrawerApertureButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [v3 validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [v3 validateClass:@"CAMDrawerApertureButton" isKindOfClass:@"CAMControlDrawerCustomButton"];
  [v3 validateClass:@"CAMDrawerApertureButton" hasInstanceMethod:@"isOn" withFullSignature:{"B", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(CAMDrawerApertureButtonAccessibility *)self safeBoolForKey:@"isExpanded"])
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
  if (([(CAMDrawerApertureButtonAccessibility *)self safeBoolForKey:@"isExpanded"]& 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = CAMDrawerApertureButtonAccessibility;
    v3 = [(CAMDrawerApertureButtonAccessibility *)&v6 accessibilityValue];
  }

  else
  {
    if (([(CAMDrawerApertureButtonAccessibility *)self safeBoolForKey:@"isOn"]& 1) != 0)
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

@end