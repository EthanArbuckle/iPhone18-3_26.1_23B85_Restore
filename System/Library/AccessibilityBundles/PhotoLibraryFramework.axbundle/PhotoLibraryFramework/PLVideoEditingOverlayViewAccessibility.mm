@interface PLVideoEditingOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation PLVideoEditingOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLVideoEditingOverlayView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PLVideoEditingOverlayView" hasInstanceVariable:@"_bodyLabel" withType:"UITextView"];
}

- (id)accessibilityLabel
{
  v3 = [(PLVideoEditingOverlayViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(PLVideoEditingOverlayViewAccessibility *)self safeValueForKey:@"_bodyLabel"];
  accessibilityValue = [v5 accessibilityValue];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end