@interface SBUIProudLockIconViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityIsBuddyRunning;
- (BOOL)_accessibilityIsInSleepState;
- (BOOL)lockViewIsAccessibilityElement;
- (SBUIProudLockIconViewAccessibility)initWithFrame:(CGRect)a3;
- (id)lockViewAccessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBUIProudLockIconViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIProudLockIconView" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [v3 validateClass:@"SBUIProudLockIconView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"SBUIProudLockIconView" hasInstanceMethod:@"setState:animated:updateText:options:completion:" withFullSignature:{"v", "q", "B", "B", "q", "@?", 0}];
  [v3 validateClass:@"SBUIProudLockIconView" hasInstanceVariable:@"_lockView" withType:"SBUIProudLockIconContentView"];
  [v3 validateClass:@"SBUIProudLockIconContentView" hasInstanceVariable:@"_lockView" withType:"BSUICAPackageView"];
  [v3 validateClass:@"BSUICAPackageView" hasInstanceVariable:@"_stateController" withType:"CAStateController"];
  [v3 validateClass:@"BSUICAPackageView" hasInstanceVariable:@"_rootLayer" withType:"CALayer"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = SBUIProudLockIconViewAccessibility;
  [(SBUIProudLockIconViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  objc_initWeak(&location, self);
  v3 = [(SBUIProudLockIconViewAccessibility *)self safeValueForKey:@"_lockView"];
  v4 = [v3 safeUIViewForKey:@"_lockView"];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __80__SBUIProudLockIconViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v7[3] = &unk_29F302288;
  objc_copyWeak(&v8, &location);
  [v4 _setIsAccessibilityElementBlock:v7];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __80__SBUIProudLockIconViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v5[3] = &unk_29F302178;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

uint64_t __80__SBUIProudLockIconViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained lockViewIsAccessibilityElement];

  return v2;
}

id __80__SBUIProudLockIconViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained lockViewAccessibilityLabel];

  return v2;
}

- (BOOL)lockViewIsAccessibilityElement
{
  v3 = [(SBUIProudLockIconViewAccessibility *)self safeIntegerForKey:@"state"];
  v4 = AXRequestingClient();
  v5 = [(SBUIProudLockIconViewAccessibility *)self _accessibilityIsBuddyRunning];
  if (v3)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 4;
  }

  v7 = v6;
  return !v5 && v7;
}

- (id)lockViewAccessibilityLabel
{
  v8.receiver = self;
  v8.super_class = SBUIProudLockIconViewAccessibility;
  v3 = [(SBUIProudLockIconViewAccessibility *)&v8 accessibilityLabel];
  v4 = [(SBUIProudLockIconViewAccessibility *)self safeIntegerForKey:@"state"];
  if (v4 <= 3)
  {
    switch(v4)
    {
      case 1:
        v5 = @"lockscreen.lock.locked";
        break;
      case 2:
        v5 = @"lockscreen.lock.unlocked";
        break;
      case 3:
        v5 = @"lockscreen.lock.error";
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (v4 > 6)
  {
    if (v4 == 7)
    {
      v5 = @"lockscreen.lock.pearl.failed";
    }

    else
    {
      if (v4 != 25)
      {
        goto LABEL_18;
      }

      v5 = @"lockscreen.lock.pearl.not.looking";
    }
  }

  else if ((v4 - 4) >= 2)
  {
    if (v4 != 6)
    {
      goto LABEL_18;
    }

    v5 = @"lockscreen.lock.pearl.matched";
  }

  else
  {
    v5 = @"lockscreen.lock.pearl.authenticating";
  }

  v6 = accessibilitySBLocalizedString(v5);

  v3 = v6;
LABEL_18:

  return v3;
}

- (BOOL)_accessibilityIsInSleepState
{
  v2 = [(SBUIProudLockIconViewAccessibility *)self safeValueForKey:@"_lockView"];
  v3 = [v2 safeValueForKey:@"_lockView"];
  v4 = __UIAccessibilitySafeClass();

  objc_opt_class();
  v5 = [v4 safeValueForKey:@"_stateController"];
  v6 = __UIAccessibilityCastAsClass();

  objc_opt_class();
  v7 = [v4 safeValueForKey:@"_rootLayer"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = 0;
  if (v8 && v6)
  {
    v10 = [v6 stateOfLayer:v8];
    v11 = [v10 name];

    v9 = [v11 isEqualToString:@"Sleep"];
  }

  return v9;
}

- (BOOL)_accessibilityIsBuddyRunning
{
  v2 = [MEMORY[0x29EDBDFA8] server];
  v3 = [v2 purpleBuddyPID] != -1;

  return v3;
}

- (SBUIProudLockIconViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = SBUIProudLockIconViewAccessibility;
  v3 = [(SBUIProudLockIconViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(SBUIProudLockIconViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

void __86__SBUIProudLockIconViewAccessibility_setState_animated_updateText_options_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 == 7 || v1 == 3)
  {
    v3 = objc_alloc_init(MEMORY[0x29EDC7B90]);
    [v3 notificationOccurred:2];
  }

  else
  {
    if (v1 != 2)
    {
      return;
    }

    v3 = objc_alloc_init(MEMORY[0x29EDC7B90]);
    [v3 notificationOccurred:0];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA98]);
  }
}

@end