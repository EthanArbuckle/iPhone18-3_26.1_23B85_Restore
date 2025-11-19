@interface PKPaymentSetupAssistantRegistrationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupAssistantRegistrationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKPaymentSetupAssistantRegistrationViewController" isKindOfClass:@"PKExplanationViewController"];
  [v3 validateClass:@"PKExplanationViewController" hasInstanceMethod:@"explanationView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKExplanationView" hasInstanceVariable:@"_logoImageView" withType:"UIImageView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PKPaymentSetupAssistantRegistrationViewControllerAccessibility;
  [(PKPaymentSetupAssistantRegistrationViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPaymentSetupAssistantRegistrationViewControllerAccessibility *)self safeValueForKey:@"explanationView"];
  v4 = [v3 safeValueForKey:@"_logoImageView"];

  v5 = accessibilityLocalizedString(@"apple.pay.label");
  [v4 setAccessibilityLabel:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupAssistantRegistrationViewControllerAccessibility;
  [(PKPaymentSetupAssistantRegistrationViewControllerAccessibility *)&v3 viewDidLoad];
  [(PKPaymentSetupAssistantRegistrationViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end