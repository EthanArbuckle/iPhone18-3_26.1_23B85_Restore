@interface UIKeyboardDockItemButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
@end

@implementation UIKeyboardDockItemButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIKeyboardDockItemButtonAccessibility;
  v4 = [(UIKeyboardDockItemButtonAccessibility *)&v3 accessibilityTraits];
  v4 |= *MEMORY[0x29EDBDAD0];
  return v4 | *MEMORY[0x29EDBDB00];
}

@end