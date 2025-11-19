@interface SignatureCreationViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SignatureCreationViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SignatureCreationViewControllerAccessibility;
  [(SignatureCreationViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(SignatureCreationViewControllerAccessibility *)self safeSwiftValueForKey:@"signatureView"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setIsAccessibilityElement:1];
  [v4 _accessibilityAddTrait:*MEMORY[0x29EDC7F68]];
  [v4 setAccessibilityActivateBlock:&__block_literal_global_0];
}

@end