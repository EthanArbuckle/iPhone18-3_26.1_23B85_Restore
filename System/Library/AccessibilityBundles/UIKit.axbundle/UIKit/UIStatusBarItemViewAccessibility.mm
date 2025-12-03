@interface UIStatusBarItemViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityElementsHidden;
- (unint64_t)accessibilityTraits;
@end

@implementation UIStatusBarItemViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIStatusBarItemView" hasInstanceMethod:@"isVisible" withFullSignature:{"B", 0}];
  objc_storeStrong(v4, obj);
}

- (BOOL)accessibilityElementsHidden
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarItemViewAccessibility;
  if ([(UIStatusBarItemViewAccessibility *)&v3 accessibilityElementsHidden])
  {
    return 1;
  }

  else
  {
    return ([(UIStatusBarItemViewAccessibility *)selfCopy safeBoolForKey:@"isVisible"]^ 1) & 1;
  }
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UIStatusBarItemViewAccessibility;
  return [(UIStatusBarItemViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580];
}

@end