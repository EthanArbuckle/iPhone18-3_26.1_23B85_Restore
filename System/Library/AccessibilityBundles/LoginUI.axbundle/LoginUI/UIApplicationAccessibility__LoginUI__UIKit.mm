@interface UIApplicationAccessibility__LoginUI__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityActiveKeyboard;
- (id)_accessibilitySoftwareMimicKeyboard;
@end

@implementation UIApplicationAccessibility__LoginUI__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LUIUserLoginPasswordViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"LUIPasscodeView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"LUIPasscodeView" hasInstanceMethod:@"passCodeView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBUIPasscodeLockViewWithKeypad" hasInstanceMethod:@"_numberPad" withFullSignature:{"@", 0}];
}

- (id)_accessibilitySoftwareMimicKeyboard
{
  if (_accessibilitySoftwareMimicKeyboard_onceToken != -1)
  {
    [UIApplicationAccessibility__LoginUI__UIKit _accessibilitySoftwareMimicKeyboard];
  }

  if (_accessibilitySoftwareMimicKeyboard_LUIUserLoginPasswordViewController)
  {
    v3 = _accessibilitySoftwareMimicKeyboard_LUIPasscodeView == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v25 = _accessibilitySoftwareMimicKeyboard_LUIUserLoginPasswordViewController;
    v26 = _accessibilitySoftwareMimicKeyboard_LUIPasscodeView;
    v24 = @"Could not find classes: LUIUserLoginPasswordViewController=%@, LUIPasscodeView=%@";
    v23 = 1;
    _AXLogWithFacility();
  }

  else
  {
    v4 = [*MEMORY[0x29EDC8008] _accessibilityMainWindow];
    v5 = [v4 rootViewController];
    v6 = [v5 childViewControllers];

    v7 = [v6 indexOfObjectPassingTest:&__block_literal_global_314];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
      v29 = 0;
      objc_opt_class();
      v9 = [v6 objectAtIndex:v8];
      v10 = __UIAccessibilityCastAsClass();

      v11 = [v10 view];
      v12 = [v11 subviews];
      v13 = [v12 indexOfObjectPassingTest:&__block_literal_global_318];

      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = [v10 view];
        v15 = [v14 subviews];
        v16 = [v15 objectAtIndex:v13];

        objc_opt_class();
        v28 = 0;
        v17 = [v16 safeValueForKey:@"passCodeView"];
        v18 = __UIAccessibilitySafeClass();

        v19 = __UIAccessibilityCastAsClass();

        v29 = 0;
        objc_opt_class();
        v20 = [v19 safeValueForKey:@"_numberPad"];
        v21 = __UIAccessibilityCastAsClass();

        if ([v21 _accessibilityViewIsVisible])
        {

          goto LABEL_17;
        }
      }
    }
  }

  v27.receiver = self;
  v27.super_class = UIApplicationAccessibility__LoginUI__UIKit;
  v21 = [(UIApplicationAccessibility__LoginUI__UIKit *)&v27 _accessibilitySoftwareMimicKeyboard:v23];
LABEL_17:

  return v21;
}

- (id)_accessibilityActiveKeyboard
{
  v3 = [MEMORY[0x29EDC7AF8] activeKeyboard];
  v4 = v3;
  if (v3 && ([v3 window], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilityMainWindow"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v5 == v6))
  {
    v7 = v4;
    v8 = v7;
    while (1)
    {
      MEMORY[0x29C2DBC80](@"LUIPasscodeView");
      if (objc_opt_isKindOfClass())
      {
        if ([v8 _accessibilityViewIsVisible])
        {
          break;
        }
      }

      v9 = [v8 superview];

      v8 = v9;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    v10 = v7;
  }

  else
  {
LABEL_7:
    v12.receiver = self;
    v12.super_class = UIApplicationAccessibility__LoginUI__UIKit;
    v10 = [(UIApplicationAccessibility__LoginUI__UIKit *)&v12 _accessibilityActiveKeyboard];
  }

  return v10;
}

@end