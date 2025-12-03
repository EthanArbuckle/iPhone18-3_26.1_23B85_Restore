@interface PKContinuityPaymentViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)loadView;
@end

@implementation PKContinuityPaymentViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKContinuityPaymentViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PKContinuityPaymentViewController" hasInstanceVariable:@"_priceView" withType:"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PKContinuityPaymentViewControllerAccessibility;
  [(PKContinuityPaymentViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKContinuityPaymentViewControllerAccessibility *)self safeValueForKey:@"_priceView"];
  [v3 setAccessibilityIdentifier:kAXPriceViewIdentifier];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = PKContinuityPaymentViewControllerAccessibility;
  [(PKContinuityPaymentViewControllerAccessibility *)&v3 loadView];
  [(PKContinuityPaymentViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

void __64__PKContinuityPaymentViewControllerAccessibility_viewDidAppear___block_invoke(uint64_t a1)
{
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7380], 0);
  v2 = *MEMORY[0x29EDC7488];
  v3 = [*(a1 + 32) safeValueForKey:@"_priceView"];
  UIAccessibilityPostNotification(v2, v3);
}

@end