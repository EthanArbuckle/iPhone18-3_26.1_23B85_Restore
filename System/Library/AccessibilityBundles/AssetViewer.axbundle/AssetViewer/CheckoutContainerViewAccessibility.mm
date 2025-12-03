@interface CheckoutContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CheckoutContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AssetViewer.CheckoutContainerView" hasInstanceMethod:@"verticalTextStackView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AssetViewer.CheckoutContainerView" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = CheckoutContainerViewAccessibility;
  [(CheckoutContainerViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(CheckoutContainerViewAccessibility *)self safeValueForKey:@"verticalTextStackView"];
  [v3 setShouldGroupAccessibilityChildren:1];

  v4 = [(CheckoutContainerViewAccessibility *)self safeValueForKey:@"titleLabel"];
  [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80] | *MEMORY[0x29EDC7FD0]];
}

@end