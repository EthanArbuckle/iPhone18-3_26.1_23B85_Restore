@interface UIKeyboardFloatingTransitionControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)_axAnnounceFloating:(uint64_t)floating;
- (void)finalizeTransition;
- (void)setProgress:(double)progress;
@end

@implementation UIKeyboardFloatingTransitionControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = "d";
  v4 = @"UIKeyboardFloatingTransitionController";
  v5 = "v";
  [location[0] validateClass:"d" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"progress" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"startedFromFloating" withFullSignature:{"B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"finalizeTransition" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (double)_axAnnounceFloating:(uint64_t)floating
{
  if (floating)
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

- (void)setProgress:(double)progress
{
  selfCopy = self;
  v13 = a2;
  progressCopy = progress;
  [(UIKeyboardFloatingTransitionControllerAccessibility *)self safeDoubleForKey:@"progress"];
  v11 = v3;
  v10 = [(UIKeyboardFloatingTransitionControllerAccessibility *)selfCopy safeBoolForKey:@"startedFromFloating"];
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
  v8.receiver = selfCopy;
  v8.super_class = UIKeyboardFloatingTransitionControllerAccessibility;
  [(UIKeyboardFloatingTransitionControllerAccessibility *)&v8 setProgress:progressCopy];
  if (progressCopy >= 0.5 || (v5 = 1, (v10 & 1) == 0))
  {
    v4 = 0;
    if (progressCopy >= 0.5)
    {
      v4 = v10 ^ 1;
    }

    v5 = v4;
  }

  if ((v9 & 1) != (v5 & 1))
  {
    [(UIKeyboardFloatingTransitionControllerAccessibility *)selfCopy _axAnnounceFloating:?];
  }
}

- (void)finalizeTransition
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = UIKeyboardFloatingTransitionControllerAccessibility;
  [(UIKeyboardFloatingTransitionControllerAccessibility *)&v5 finalizeTransition];
  v2 = -[UIKeyboardFloatingTransitionControllerAccessibility _axAnnounceFloating:](selfCopy, [MEMORY[0x29EDC7B08] isFloating]);
  notification = *MEMORY[0x29EDC7ED8];
  mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
  UIAccessibilityPostNotification(notification, mEMORY[0x29EDC7B08]);
  MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]);
}

@end