@interface _UIDatePickerLinkedLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UIDatePickerLinkedLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIDatePickerLinkedLabel" hasInstanceVariable:@"_renderingLabel" withType:"UILabel"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v3 = [(_UIDatePickerLinkedLabelAccessibility *)self safeUIViewForKey:@"_renderingLabel"];
  v4 = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

@end