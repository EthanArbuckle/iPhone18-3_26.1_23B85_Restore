@interface UIKeyboardMenuViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)removeFromSuperview;
@end

@implementation UIKeyboardMenuViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIKeyboardMenuView" isKindOfClass:@"UIView"];
  objc_storeStrong(location, 0);
}

- (void)removeFromSuperview
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UIKeyboardMenuViewAccessibility;
  [(UIKeyboardMenuViewAccessibility *)&v2 removeFromSuperview];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end