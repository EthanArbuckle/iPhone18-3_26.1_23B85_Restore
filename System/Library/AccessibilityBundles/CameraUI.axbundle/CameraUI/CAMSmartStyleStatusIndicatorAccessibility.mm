@interface CAMSmartStyleStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMSmartStyleStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMSmartStyleStatusIndicator" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMSmartStyleStatusIndicator" hasInstanceMethod:@"smartStyle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CEKSmartStyle" hasInstanceMethod:@"presetType" withFullSignature:{"q", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  if ([(CAMSmartStyleStatusIndicatorAccessibility *)self safeBoolForKey:@"isActive"])
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
  v2 = [(CAMSmartStyleStatusIndicatorAccessibility *)self safeValueForKey:@"smartStyle"];
  v3 = accessibilityDescriptionStringForPresetStyle([v2 safeIntegerForKey:@"presetType"]);

  return v3;
}

@end