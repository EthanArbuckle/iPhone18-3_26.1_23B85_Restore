@interface CAMDrawerApertureButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMDrawerApertureButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateProtocol:@"CAMControlDrawerExpandableButton" hasMethod:@"isExpanded" isInstanceMethod:1 isRequired:1];
  [validationsCopy validateClass:@"CAMControlDrawerCustomButton" conformsToProtocol:@"CAMControlDrawerExpandableButton"];
  [validationsCopy validateClass:@"CAMDrawerApertureButton" isKindOfClass:@"CAMControlDrawerCustomButton"];
  [validationsCopy validateClass:@"CAMDrawerApertureButton" hasInstanceMethod:@"isOn" withFullSignature:{"B", 0}];
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
    accessibilityValue = [(CAMDrawerApertureButtonAccessibility *)&v6 accessibilityValue];
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

    accessibilityValue = accessibilityCameraUILocalizedString(v4);
  }

  return accessibilityValue;
}

@end