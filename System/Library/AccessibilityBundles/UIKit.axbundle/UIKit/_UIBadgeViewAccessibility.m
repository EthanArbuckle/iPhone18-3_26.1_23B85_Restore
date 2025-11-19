@interface _UIBadgeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation _UIBadgeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIBadgeView" hasInstanceVariable:@"_label" withType:"UILabel"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [(_UIBadgeViewAccessibility *)self safeValueForKey:@"_label"];
  v3 = [v4[0] accessibilityLabel];
  objc_storeStrong(v4, 0);

  return v3;
}

@end