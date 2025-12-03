@interface UIKeyboardSplitControlMenuAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)updateSelectionWithPoint:(CGPoint)point;
@end

@implementation UIKeyboardSplitControlMenuAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIInputSwitcherTableView" isKindOfClass:@"UITableView"];
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UIKeyboardSplitControlMenu" isKindOfClass:@"UIKeyboardMenuView"];
  objc_storeStrong(location, 0);
}

- (void)updateSelectionWithPoint:(CGPoint)point
{
  pointCopy = point;
  selfCopy = self;
  v16[1] = a2;
  v15 = 0;
  objc_opt_class();
  v8 = [(UIKeyboardSplitControlMenuAccessibility *)selfCopy safeValueForKey:@"m_table"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v8);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16[0] = v13;
  indexPathForSelectedRow = [v13 indexPathForSelectedRow];
  v11.receiver = selfCopy;
  v11.super_class = UIKeyboardSplitControlMenuAccessibility;
  [(UIKeyboardSplitControlMenuAccessibility *)&v11 updateSelectionWithPoint:pointCopy.x, pointCopy.y];
  indexPathForSelectedRow2 = [v16[0] indexPathForSelectedRow];
  if (indexPathForSelectedRow != indexPathForSelectedRow2 && ([indexPathForSelectedRow isEqual:indexPathForSelectedRow2] & 1) == 0)
  {
    if (indexPathForSelectedRow2)
    {
      v9 = [v16[0] cellForRowAtIndexPath:indexPathForSelectedRow2];
      if (v9)
      {
        v3 = *MEMORY[0x29EDC7EA8];
        textLabel = [v9 textLabel];
        text = [textLabel text];
        UIAccessibilityPostNotification(v3, text);
        MEMORY[0x29EDC9740](text);
        MEMORY[0x29EDC9740](textLabel);
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

  objc_storeStrong(&indexPathForSelectedRow2, 0);
  objc_storeStrong(&indexPathForSelectedRow, 0);
  objc_storeStrong(v16, 0);
}

@end