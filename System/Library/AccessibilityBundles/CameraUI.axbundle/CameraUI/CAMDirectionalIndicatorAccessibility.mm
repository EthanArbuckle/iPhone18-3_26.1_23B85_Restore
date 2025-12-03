@interface CAMDirectionalIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (int64_t)_accessibilityExpandedStatus;
- (unint64_t)accessibilityTraits;
- (void)_updateArrowShapeAnimated:(BOOL)animated;
@end

@implementation CAMDirectionalIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMDirectionalIndicator" hasInstanceMethod:@"direction" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMDirectionalIndicator" hasInstanceMethod:@"_updateArrowShapeAnimated:" withFullSignature:{"v", "B", 0}];
}

- (int64_t)_accessibilityExpandedStatus
{
  result = [(CAMDirectionalIndicatorAccessibility *)self safeIntegerForKey:@"direction"];
  if (!result)
  {
    return 2;
  }

  if (result != 1)
  {
    v4.receiver = self;
    v4.super_class = CAMDirectionalIndicatorAccessibility;
    return [(CAMDirectionalIndicatorAccessibility *)&v4 _accessibilityExpandedStatus];
  }

  return result;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = CAMDirectionalIndicatorAccessibility;
  return *MEMORY[0x29EDC7F70] | [(CAMDirectionalIndicatorAccessibility *)&v3 accessibilityTraits];
}

- (void)_updateArrowShapeAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CAMDirectionalIndicatorAccessibility;
  [(CAMDirectionalIndicatorAccessibility *)&v4 _updateArrowShapeAnimated:animated];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

@end