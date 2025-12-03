@interface PKPeerPaymentExplanationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidLoad;
@end

@implementation PKPeerPaymentExplanationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKExplanationViewController" hasInstanceMethod:@"explanationView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PKPeerPaymentExplanationViewController" isKindOfClass:@"PKExplanationViewController"];
  [validationsCopy validateClass:@"PKExplanationView" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PKPeerPaymentExplanationViewControllerAccessibility;
  [(PKPeerPaymentExplanationViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPeerPaymentExplanationViewControllerAccessibility *)self safeValueForKey:@"explanationView"];
  v4 = [v3 safeValueForKey:@"imageView"];

  [v4 setIsAccessibilityElement:1];
  v5 = accessibilityLocalizedString(@"card.snapshot.label");
  [v4 setAccessibilityLabel:v5];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentExplanationViewControllerAccessibility;
  [(PKPeerPaymentExplanationViewControllerAccessibility *)&v3 viewDidLoad];
  [(PKPeerPaymentExplanationViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end