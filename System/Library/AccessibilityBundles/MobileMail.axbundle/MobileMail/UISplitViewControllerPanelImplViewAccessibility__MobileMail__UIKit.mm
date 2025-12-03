@interface UISplitViewControllerPanelImplViewAccessibility__MobileMail__UIKit
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityScannerGroupElements;
@end

@implementation UISplitViewControllerPanelImplViewAccessibility__MobileMail__UIKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MailAppController"];
  [validationsCopy validateClass:@"MailAppController" hasInstanceMethod:@"mostRecentMainScene" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MailMainScene" hasInstanceMethod:@"splitViewController" withFullSignature:{"@", 0}];
}

- (id)_accessibilityScannerGroupElements
{
  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  NSClassFromString(&cfstr_Mailappcontrol_0.isa);
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = [mEMORY[0x29EDC7938] safeValueForKey:@"mostRecentMainScene"];
    v5 = __UIAccessibilityCastAsClass();

    v13 = 0;
    objc_opt_class();
    v6 = [v5 safeValueForKey:@"splitViewController"];
    v7 = __UIAccessibilityCastAsClass();

    view = [v7 view];

    if (view != self || (v13 = 0, objc_opt_class(), __UIAccessibilityCastAsSafeCategory(), v10 = objc_claimAutoreleasedReturnValue(), [v10 _accessibilitySplitViewControllerScannerGroupElements], _accessibilityScannerGroupElements = objc_claimAutoreleasedReturnValue(), v10, !_accessibilityScannerGroupElements))
    {
      v12.receiver = self;
      v12.super_class = UISplitViewControllerPanelImplViewAccessibility__MobileMail__UIKit;
      _accessibilityScannerGroupElements = [(UISplitViewControllerPanelImplViewAccessibility__MobileMail__UIKit *)&v12 _accessibilityScannerGroupElements];
    }
  }

  else
  {
    _accessibilityScannerGroupElements = 0;
  }

  return _accessibilityScannerGroupElements;
}

@end