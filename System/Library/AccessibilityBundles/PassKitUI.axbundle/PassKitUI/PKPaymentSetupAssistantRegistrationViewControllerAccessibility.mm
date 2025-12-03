@interface PKPaymentSetupAssistantRegistrationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation PKPaymentSetupAssistantRegistrationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentSetupAssistantRegistrationViewController" isKindOfClass:@"PKExplanationViewController"];
  [validationsCopy validateClass:@"PKExplanationViewController" hasInstanceMethod:@"explanationView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKExplanationView" hasInstanceVariable:@"_logoImageView" withType:"UIImageView"];
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