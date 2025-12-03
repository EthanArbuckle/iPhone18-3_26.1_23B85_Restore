@interface PKExplanationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation PKExplanationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKExplanationView" hasInstanceVariable:@"_bodyTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"PKExplanationView" hasInstanceVariable:@"_titleLabel" withType:"PKTrailingAccessoryLabel"];
  [validationsCopy validateClass:@"PKExplanationView" hasInstanceVariable:@"_logoImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PKExplanationView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = PKExplanationViewAccessibility;
  [(PKExplanationViewAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v3 = *MEMORY[0x29EDC7F80];
  v4 = *MEMORY[0x29EDC7FD0];
  v5 = [(PKExplanationViewAccessibility *)self safeUIViewForKey:@"_titleLabel"];
  [v5 setAccessibilityTraits:v4 | v3];

  v6 = [(PKExplanationViewAccessibility *)self safeUIViewForKey:@"_bodyTextView"];
  [v6 _accessibilitySetTextViewShouldBreakUpParagraphs:1];

  v7 = [(PKExplanationViewAccessibility *)self safeUIViewForKey:@"_logoImageView"];
  objc_initWeak(&location, v7);
  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __76__PKExplanationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v12 = &unk_29F2E1D18;
  objc_copyWeak(&v13, &location);
  [v7 _setIsAccessibilityElementBlock:&v9];
  v8 = accessibilityLocalizedString(@"apple.pay.label");
  [v7 setAccessibilityLabel:{v8, v9, v10, v11, v12}];

  [v7 setAccessibilityTraits:v3];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

uint64_t __76__PKExplanationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _accessibilityViewIsVisible])
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = [v3 accessibilityIdentifier];
    v5 = [v4 isEqualToString:@"Payment_SetupLogo"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKExplanationViewAccessibility;
  [(PKExplanationViewAccessibility *)&v3 layoutSubviews];
  [(PKExplanationViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end