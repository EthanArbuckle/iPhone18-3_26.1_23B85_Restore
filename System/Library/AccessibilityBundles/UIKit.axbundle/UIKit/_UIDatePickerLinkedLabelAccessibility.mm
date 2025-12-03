@interface _UIDatePickerLinkedLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _UIDatePickerLinkedLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIDatePickerLinkedLabel" hasInstanceVariable:@"_renderingLabel" withType:"UILabel"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v3 = [(_UIDatePickerLinkedLabelAccessibility *)self safeUIViewForKey:@"_renderingLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  MEMORY[0x29EDC9740](v3);

  return accessibilityLabel;
}

@end