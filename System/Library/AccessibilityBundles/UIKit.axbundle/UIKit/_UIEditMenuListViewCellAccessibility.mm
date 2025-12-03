@interface _UIEditMenuListViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)automationElements;
@end

@implementation _UIEditMenuListViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:? hasProperty:? withType:?];
  [location[0] validateClass:@"_UIEditMenuListViewCell" hasProperty:@"titleLabel" withType:"@"];
  [location[0] validateClass:@"_UIEditMenuListViewCell" hasProperty:@"imageView" withType:"@"];
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  location[1] = a2;
  v5 = [(_UIEditMenuListViewCellAccessibility *)self safeValueForKey:@"titleLabel"];
  location[0] = [v5 accessibilityLabel];
  if ([location[0] length])
  {
    accessibilityLabel = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v4 = [(_UIEditMenuListViewCellAccessibility *)selfCopy safeValueForKey:@"imageView"];
    accessibilityLabel = [v4 accessibilityLabel];
    MEMORY[0x29EDC9740](v4);
  }

  objc_storeStrong(location, 0);
  v2 = accessibilityLabel;

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