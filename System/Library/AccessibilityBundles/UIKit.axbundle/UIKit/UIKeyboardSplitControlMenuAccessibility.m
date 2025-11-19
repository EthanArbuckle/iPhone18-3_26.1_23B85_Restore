@interface UIKeyboardSplitControlMenuAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)updateSelectionWithPoint:(CGPoint)a3;
@end

@implementation UIKeyboardSplitControlMenuAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIInputSwitcherTableView" isKindOfClass:@"UITableView"];
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIKeyboardSplitControlMenu" isKindOfClass:@"UIKeyboardMenuView"];
  objc_storeStrong(location, 0);
}

- (void)updateSelectionWithPoint:(CGPoint)a3
{
  v18 = a3;
  v17 = self;
  v16[1] = a2;
  v15 = 0;
  objc_opt_class();
  v8 = [(UIKeyboardSplitControlMenuAccessibility *)v17 safeValueForKey:@"m_table"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16[0] = v13;
  v12 = [v13 indexPathForSelectedRow];
  v11.receiver = v17;
  v11.super_class = UIKeyboardSplitControlMenuAccessibility;
  [(UIKeyboardSplitControlMenuAccessibility *)&v11 updateSelectionWithPoint:v18.x, v18.y];
  v10 = [v16[0] indexPathForSelectedRow];
  if (v12 != v10 && ([v12 isEqual:v10] & 1) == 0)
  {
    if (v10)
    {
      v9 = [v16[0] cellForRowAtIndexPath:v10];
      if (v9)
      {
        v3 = *MEMORY[0x29EDC7EA8];
        v5 = [v9 textLabel];
        v4 = [v5 text];
        UIAccessibilityPostNotification(v3, v4);
        MEMORY[0x29EDC9740](v4);
        MEMORY[0x29EDC9740](v5);
      }

      objc_storeStrong(&v9, 0);
    }

    else
    {
      notification = *MEMORY[0x29EDC7EA8];
      v7 = accessibilityLocalizedString(@"keyboard.cancel");
      UIAccessibilityPostNotification(notification, v7);
      MEMORY[0x29EDC9740](v7);
    }
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(v16, 0);
}

@end