@interface _UIBadgeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation _UIBadgeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"_UIBadgeView" hasInstanceVariable:@"_label" withType:"UILabel"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(_UIBadgeViewAccessibility *)self safeValueForKey:@"_label"];
  accessibilityLabel = [v4[0] accessibilityLabel];
  objc_storeStrong(v4, 0);

  return accessibilityLabel;
}

@end