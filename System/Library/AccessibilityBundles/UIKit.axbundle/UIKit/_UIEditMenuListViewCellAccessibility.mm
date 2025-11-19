@interface _UIEditMenuListViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation _UIEditMenuListViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:? hasProperty:? withType:?];
  [location[0] validateClass:@"_UIEditMenuListViewCell" hasProperty:@"titleLabel" withType:"@"];
  [location[0] validateClass:@"_UIEditMenuListViewCell" hasProperty:@"imageView" withType:"@"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  v7 = self;
  location[1] = a2;
  v5 = [(_UIEditMenuListViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  location[0] = [v5 accessibilityLabel];
  if ([location[0] length])
  {
    v8 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4 = [(_UIEditMenuListViewCellAccessibility *)v7 safeValueForKey:@"imageView"];
    v8 = [v4 accessibilityLabel];
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)automationElements
{
  v3 = MEMORY[0x29EDB8D80];
  v4 = [(_UIEditMenuListViewCellAccessibility *)self safeValueForKey:@"contentStackView"];
  v5 = [v3 axArrayByIgnoringNilElementsWithCount:{1, v4}];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

@end