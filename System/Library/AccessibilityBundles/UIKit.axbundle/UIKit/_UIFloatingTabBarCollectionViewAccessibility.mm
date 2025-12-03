@interface _UIFloatingTabBarCollectionViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIFloatingTabBarCollectionViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIFloatingTabBarCollectionViewAccessibility;
  return [(_UIFloatingTabBarCollectionViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7FE0];
}

@end