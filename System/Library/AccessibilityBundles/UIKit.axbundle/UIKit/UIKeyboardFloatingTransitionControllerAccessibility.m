@interface UIKeyboardFloatingTransitionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)_axAnnounceFloating:(uint64_t)a1;
- (void)finalizeTransition;
- (void)setProgress:(double)a3;
@end

@implementation UIKeyboardFloatingTransitionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = "d";
  v4 = @"UIKeyboardFloatingTransitionController";
  v5 = "v";
  [location[0] validateClass:"d" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"progress" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"startedFromFloating" withFullSignature:{"B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"finalizeTransition" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (double)_axAnnounceFloating:(uint64_t)a1
{
  if (a1)
  {
    notification = *MEMORY[0x29EDC7EA8];
    v6 = 0;
    v4 = 0;
    if (a2)
    {
      v7 = accessibilityLocalizedString(@"keyboard.update.floating");
      v6 = 1;
      UIAccessibilityPostNotification(notification, v7);
    }

    else
    {
      v5 = accessibilityLocalizedString(@"keyboard.update.docked");
      v4 = 1;
      UIAccessibilityPostNotification(notification, v5);
    }

    if (v4)
    {
      *&result = MEMORY[0x29EDC9740](v5).n128_u64[0];
    }

    if (v6)
    {
      *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
    }
  }

  return result;
}

- (void)setProgress:(double)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  [(UIKeyboardFloatingTransitionControllerAccessibility *)self safeDoubleForKey:@"progress"];
  v11 = v3;
  v10 = [(UIKeyboardFloatingTransitionControllerAccessibility *)v14 safeBoolForKey:@"startedFromFloating"];
  if (v11 >= 0.5 || (v7 = 1, (v10 & 1) == 0))
  {
    v6 = 0;
    if (v11 >= 0.5)
    {
      v6 = v10 ^ 1;
    }

    v7 = v6;
  }

  v9 = v7 & 1;
  v8.receiver = v14;
  v8.super_class = UIKeyboardFloatingTransitionControllerAccessibility;
  [(UIKeyboardFloatingTransitionControllerAccessibility *)&v8 setProgress:v12];
  if (v12 >= 0.5 || (v5 = 1, (v10 & 1) == 0))
  {
    v4 = 0;
    if (v12 >= 0.5)
    {
      v4 = v10 ^ 1;
    }

    v5 = v4;
  }

  if ((v9 & 1) != (v5 & 1))
  {
    [(UIKeyboardFloatingTransitionControllerAccessibility *)v14 _axAnnounceFloating:?];
  }
}

- (void)finalizeTransition
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = UIKeyboardFloatingTransitionControllerAccessibility;
  [(UIKeyboardFloatingTransitionControllerAccessibility *)&v5 finalizeTransition];
  v2 = -[UIKeyboardFloatingTransitionControllerAccessibility _axAnnounceFloating:](v7, [MEMORY[0x29EDC7B08] isFloating]);
  notification = *MEMORY[0x29EDC7ED8];
  v4 = [MEMORY[0x29EDC7B08] sharedInstance];
  UIAccessibilityPostNotification(notification, v4);
  MEMORY[0x29EDC9740](v4);
}

@end