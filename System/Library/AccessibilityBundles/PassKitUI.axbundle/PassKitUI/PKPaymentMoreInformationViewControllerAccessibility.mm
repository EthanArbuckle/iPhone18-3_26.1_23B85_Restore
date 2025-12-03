@interface PKPaymentMoreInformationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation PKPaymentMoreInformationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPaymentMoreInformationViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKPaymentMoreInformationViewController" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PKPaymentMoreInformationViewControllerAccessibility;
  [(PKPaymentMoreInformationViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = [(PKPaymentMoreInformationViewControllerAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  [v4 setAccessibilityTraits:v3];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PKPaymentMoreInformationViewControllerAccessibility;
  [(PKPaymentMoreInformationViewControllerAccessibility *)&v3 loadView];
  [(PKPaymentMoreInformationViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end