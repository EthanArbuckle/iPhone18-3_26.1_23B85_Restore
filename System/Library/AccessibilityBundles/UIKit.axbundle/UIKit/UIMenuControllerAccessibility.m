@interface UIMenuControllerAccessibility
- (void)setMenuItems:(id)a3;
@end

@implementation UIMenuControllerAccessibility

- (void)setMenuItems:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIMenuControllerAccessibility;
  [(UIMenuControllerAccessibility *)&v3 setMenuItems:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

@end