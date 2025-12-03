@interface UIMenuControllerAccessibility
- (void)setMenuItems:(id)items;
@end

@implementation UIMenuControllerAccessibility

- (void)setMenuItems:(id)items
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, items);
  v3.receiver = selfCopy;
  v3.super_class = UIMenuControllerAccessibility;
  [(UIMenuControllerAccessibility *)&v3 setMenuItems:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  objc_storeStrong(location, 0);
}

@end