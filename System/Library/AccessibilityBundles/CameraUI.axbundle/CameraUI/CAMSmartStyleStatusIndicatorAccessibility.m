@interface CAMSmartStyleStatusIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
@end

@implementation CAMSmartStyleStatusIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMSmartStyleStatusIndicator" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CAMSmartStyleStatusIndicator" hasInstanceMethod:@"smartStyle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CEKSmartStyle" hasInstanceMethod:@"presetType" withFullSignature:{"q", 0}];
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