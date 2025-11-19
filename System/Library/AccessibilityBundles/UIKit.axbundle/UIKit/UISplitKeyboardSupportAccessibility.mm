@interface UISplitKeyboardSupportAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axDescriptionForPoint:(double)a3 windowWidth:(double)a4 windowHeight:(double)a5;
- (id)_axLastLocationDescription;
- (void)_axSetLastLocationDescription:(uint64_t)a1;
- (void)translateDetected:(id)a3;
@end

@implementation UISplitKeyboardSupportAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UISplitKeyboardSupport" hasInstanceMethod:@"translateDetected:" withFullSignature:{"v", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (id)_axLastLocationDescription
{
  if (a1)
  {
    v2 = objc_getAssociatedObject(a1, &__UISplitKeyboardSupportAccessibility___axLastLocationDescription);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetLastLocationDescription:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (void)translateDetected:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = 0;
  objc_opt_class();
  v19 = __UIAccessibilityCastAsClass();
  v18 = MEMORY[0x29EDC9748](v19);
  objc_storeStrong(&v19, 0);
  v21 = v18;
  v17.receiver = v23;
  v17.super_class = UISplitKeyboardSupportAccessibility;
  [(UISplitKeyboardSupportAccessibility *)&v17 translateDetected:location[0]];
  if ([MEMORY[0x29EDC7B08] isFloating])
  {
    if ([v21 state] == 1)
    {
      notification = *MEMORY[0x29EDC7EA8];
      v9 = accessibilityLocalizedString(@"keyboard.floating.begin.move");
      UIAccessibilityPostNotification(notification, v9);
      MEMORY[0x29EDC9740](v9);
    }

    else if ([v21 state] == 2)
    {
      v16 = [(UISplitKeyboardSupportAccessibility *)v23 _axLastLocationDescription];
      v15 = [MEMORY[0x29EDC7B08] sharedInstance];
      v14 = [v15 window];
      [v14 bounds];
      v13 = v24;
      Width = CGRectGetWidth(v24);
      Height = CGRectGetHeight(v13);
      v7 = v23;
      [v15 bounds];
      AX_CGRectGetCenter();
      [v15 convertPoint:0 toView:{v3, v4}];
      argument = [(UISplitKeyboardSupportAccessibility *)v7 _axDescriptionForPoint:v5 windowWidth:v6 windowHeight:Width, Height];
      if (([v16 isEqualToString:argument] & 1) == 0)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument);
        [(UISplitKeyboardSupportAccessibility *)v23 _axSetLastLocationDescription:?];
      }

      objc_storeStrong(&argument, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

- (id)_axDescriptionForPoint:(double)a3 windowWidth:(double)a4 windowHeight:(double)a5
{
  v19 = a2;
  v20 = a3;
  v18 = a1;
  v17 = a4;
  v16 = a5;
  if (!a1)
  {
    v21 = 0;
    goto LABEL_22;
  }

  v15 = 0;
  if (v19 >= v17 / 3.0)
  {
    if (v19 <= 2.0 * v17 / 3.0)
    {
      if (v20 < v16 / 3.0)
      {
        v10 = accessibilityLocalizedString(@"keyboard.floating.top");
        v11 = v15;
        v15 = v10;
        MEMORY[0x29EDC9740](v11);
        goto LABEL_21;
      }

      if (v20 <= 2.0 * v16 / 3.0)
      {
        v7 = accessibilityLocalizedString(@"keyboard.floating.center");
      }

      else
      {
        v7 = accessibilityLocalizedString(@"keyboard.floating.bottom");
      }
    }

    else
    {
      if (v20 < v16 / 3.0)
      {
        v8 = accessibilityLocalizedString(@"keyboard.floating.top.right");
        v9 = v15;
        v15 = v8;
        MEMORY[0x29EDC9740](v9);
        goto LABEL_21;
      }

      if (v20 <= 2.0 * v16 / 3.0)
      {
        v7 = accessibilityLocalizedString(@"keyboard.floating.right");
      }

      else
      {
        v7 = accessibilityLocalizedString(@"keyboard.floating.bottom.right");
      }
    }

LABEL_19:
    v12 = v15;
    v15 = v7;
    MEMORY[0x29EDC9740](v12);
    goto LABEL_21;
  }

  if (v20 >= v16 / 3.0)
  {
    if (v20 <= 2.0 * v16 / 3.0)
    {
      v7 = accessibilityLocalizedString(@"keyboard.floating.left");
    }

    else
    {
      v7 = accessibilityLocalizedString(@"keyboard.floating.bottom.left");
    }

    goto LABEL_19;
  }

  v5 = accessibilityLocalizedString(@"keyboard.floating.top.left");
  v6 = v15;
  v15 = v5;
  MEMORY[0x29EDC9740](v6);
LABEL_21:
  v21 = MEMORY[0x29EDC9748](v15);
  objc_storeStrong(&v15, 0);
LABEL_22:
  v13 = v21;

  return v13;
}

@end