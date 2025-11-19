@interface COSHelloAppleWatchViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation COSHelloAppleWatchViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSHelloAppleWatchViewController" isKindOfClass:@"BPSWelcomeOptinViewController"];
  [v3 validateClass:@"BPSWelcomeOptinViewController" hasInstanceMethod:@"okayButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = COSHelloAppleWatchViewControllerAccessibility;
  [(COSHelloAppleWatchViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(COSHelloAppleWatchViewControllerAccessibility *)self safeValueForKey:@"okayButton"];
  [v3 setAccessibilityIdentifier:@"GoToBridgeButton"];
  v4 = [v3 accessibilityLabel];
  v5 = [v4 length];

  if (!v5)
  {
    v6 = accessibilityLocalizedString(@"go.to.bridge");
    [v3 setAccessibilityLabel:v6];
  }
}

@end