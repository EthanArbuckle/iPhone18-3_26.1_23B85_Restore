@interface COSGetStartedViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation COSGetStartedViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSGetStartedViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"COSGetStartedViewController" hasInstanceVariable:@"_automationButton" withType:"UIButton"];
  [validationsCopy validateClass:@"COSGetStartedViewController" hasInstanceVariable:@"_marketingBannerImage" withType:"UIImageView"];
  [validationsCopy validateClass:@"COSGetStartedViewController" isKindOfClass:@"BPSWelcomeOptinViewController"];
  [validationsCopy validateClass:@"BPSWelcomeOptinViewController" hasInstanceMethod:@"suggestedChoiceButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BPSWelcomeOptinViewController" hasInstanceMethod:@"alternateChoiceButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = COSGetStartedViewControllerAccessibility;
  [(COSGetStartedViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(COSGetStartedViewControllerAccessibility *)self safeValueForKey:@"suggestedChoiceButton"];
  [v3 setAccessibilityIdentifier:@"StartPairingButton"];

  v4 = [(COSGetStartedViewControllerAccessibility *)self safeValueForKey:@"alternateChoiceButton"];
  [v4 setAccessibilityIdentifier:@"StartMigrationButton"];

  v5 = [(COSGetStartedViewControllerAccessibility *)self safeValueForKey:@"_automationButton"];
  [v5 setAccessibilityIdentifier:@"AutomationButton"];

  v6 = [(COSGetStartedViewControllerAccessibility *)self safeValueForKey:@"_marketingBannerImage"];
  [v6 setIsAccessibilityElement:1];
  v7 = accessibilityLocalizedString(@"apple.watch.photos");
  [v6 setAccessibilityLabel:v7];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = COSGetStartedViewControllerAccessibility;
  [(COSGetStartedViewControllerAccessibility *)&v3 viewDidLoad];
  [(COSGetStartedViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end