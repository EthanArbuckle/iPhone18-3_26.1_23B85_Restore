@interface UIKeyboardMenuViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)removeFromSuperview;
@end

@implementation UIKeyboardMenuViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIKeyboardMenuView" isKindOfClass:@"UIView"];
  objc_storeStrong(location, 0);
}

- (void)removeFromSuperview
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardMenuViewAccessibility;
  [(UIKeyboardMenuViewAccessibility *)&v2 removeFromSuperview];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end