@interface PLVideoEditingOverlayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation PLVideoEditingOverlayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PLVideoEditingOverlayView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"PLVideoEditingOverlayView" hasInstanceVariable:@"_bodyLabel" withType:"UITextView"];
}

- (id)accessibilityLabel
{
  v3 = [(PLVideoEditingOverlayViewAccessibility *)self safeValueForKey:@"_titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(PLVideoEditingOverlayViewAccessibility *)self safeValueForKey:@"_bodyLabel"];
  v8 = [v5 accessibilityValue];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end