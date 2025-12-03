@interface UIKeyboardDockItemButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (unint64_t)accessibilityTraits;
@end

@implementation UIKeyboardDockItemButtonAccessibility

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
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UIKeyboardDockItemButtonAccessibility;
  accessibilityTraits = [(UIKeyboardDockItemButtonAccessibility *)&v3 accessibilityTraits];
  accessibilityTraits |= *MEMORY[0x29EDBDAD0];
  return accessibilityTraits | *MEMORY[0x29EDBDB00];
}

@end