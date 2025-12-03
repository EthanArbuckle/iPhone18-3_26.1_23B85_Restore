@interface COSHelloAppleWatchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation COSHelloAppleWatchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSHelloAppleWatchViewController" isKindOfClass:@"BPSWelcomeOptinViewController"];
  [validationsCopy validateClass:@"BPSWelcomeOptinViewController" hasInstanceMethod:@"okayButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = COSHelloAppleWatchViewControllerAccessibility;
  [(COSHelloAppleWatchViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(COSHelloAppleWatchViewControllerAccessibility *)self safeValueForKey:@"okayButton"];
  [v3 setAccessibilityIdentifier:@"GoToBridgeButton"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [accessibilityLabel length];

  if (!v5)
  {
    v6 = accessibilityLocalizedString(@"go.to.bridge");
    [v3 setAccessibilityLabel:v6];
  }
}

@end