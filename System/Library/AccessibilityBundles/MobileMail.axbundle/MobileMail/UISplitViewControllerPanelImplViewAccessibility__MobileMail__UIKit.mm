@interface UISplitViewControllerPanelImplViewAccessibility__MobileMail__UIKit
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityScannerGroupElements;
@end

@implementation UISplitViewControllerPanelImplViewAccessibility__MobileMail__UIKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MailAppController"];
  [v3 validateClass:@"MailAppController" hasInstanceMethod:@"mostRecentMainScene" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MailMainScene" hasInstanceMethod:@"splitViewController" withFullSignature:{"@", 0}];
}

- (id)_accessibilityScannerGroupElements
{
  v3 = [MEMORY[0x29EDC7938] sharedApplication];
  NSClassFromString(&cfstr_Mailappcontrol_0.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = [v3 safeValueForKey:@"mostRecentMainScene"];
    v5 = __UIAccessibilityCastAsClass();

    v13 = 0;
    objc_opt_class();
    v6 = [v5 safeValueForKey:@"splitViewController"];
    v7 = __UIAccessibilityCastAsClass();

    v8 = [v7 view];

    if (v8 != self || (v13 = 0, objc_opt_class(), __UIAccessibilityCastAsSafeCategory(), v10 = objc_claimAutoreleasedReturnValue(), [v10 _accessibilitySplitViewControllerScannerGroupElements], v9 = objc_claimAutoreleasedReturnValue(), v10, !v9))
    {
      v12.receiver = self;
      v12.super_class = UISplitViewControllerPanelImplViewAccessibility__MobileMail__UIKit;
      v9 = [(UISplitViewControllerPanelImplViewAccessibility__MobileMail__UIKit *)&v12 _accessibilityScannerGroupElements];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end