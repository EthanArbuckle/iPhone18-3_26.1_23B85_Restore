@interface CAMDrawerIntensityButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMDrawerIntensityButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [validationsCopy validateClass:@"CAMDrawerIntensityButton" isKindOfClass:@"CAMControlDrawerCustomButton"];
  [validationsCopy validateClass:@"CAMDrawerIntensityButton" hasInstanceMethod:@"isOn" withFullSignature:{"B", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(CAMDrawerIntensityButtonAccessibility *)self safeBoolForKey:@"isExpanded"])
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
  if (([(CAMDrawerIntensityButtonAccessibility *)self safeBoolForKey:@"isExpanded"]& 1) != 0)
  {
    v6.receiver = self;
    v6.super_class = CAMDrawerIntensityButtonAccessibility;
    accessibilityValue = [(CAMDrawerIntensityButtonAccessibility *)&v6 accessibilityValue];
  }

  else
  {
    if (([(CAMDrawerIntensityButtonAccessibility *)self safeBoolForKey:@"isOn"]& 1) != 0)
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

@end