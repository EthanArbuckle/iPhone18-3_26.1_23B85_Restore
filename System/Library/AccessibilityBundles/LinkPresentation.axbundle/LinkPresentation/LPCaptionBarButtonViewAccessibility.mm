@interface LPCaptionBarButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityConfigure;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)configureMenuButton:(id)button;
- (void)configurePillButton:(id)button;
@end

@implementation LPCaptionBarButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LPCaptionBarButtonView" hasInstanceVariable:@"_button" withType:"UIButton"];
  [validationsCopy validateClass:@"LPCaptionBarButtonView" hasInstanceMethod:@"configurePillButton:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"LPCaptionBarButtonView" hasInstanceMethod:@"configureMenuButton:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = LPCaptionBarButtonViewAccessibility;
  [(LPCaptionBarButtonViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(LPCaptionBarButtonViewAccessibility *)self _accessibilityConfigure];
}

- (void)configurePillButton:(id)button
{
  v4.receiver = self;
  v4.super_class = LPCaptionBarButtonViewAccessibility;
  [(LPCaptionBarButtonViewAccessibility *)&v4 configurePillButton:button];
  [(LPCaptionBarButtonViewAccessibility *)self _accessibilityConfigure];
}

- (void)configureMenuButton:(id)button
{
  v4.receiver = self;
  v4.super_class = LPCaptionBarButtonViewAccessibility;
  [(LPCaptionBarButtonViewAccessibility *)&v4 configureMenuButton:button];
  [(LPCaptionBarButtonViewAccessibility *)self _accessibilityConfigure];
}

- (void)_accessibilityConfigure
{
  objc_opt_class();
  v3 = [(LPCaptionBarButtonViewAccessibility *)self safeValueForKey:@"_button"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    accessibilityLabel = [v4 accessibilityLabel];
    v6 = [accessibilityLabel isEqualToString:@"person.2.fill"];

    if (v6)
    {
      v7 = accessibilityLocalizedString(@"caption.bar.collaborate.button");
      [v4 setAccessibilityLabel:v7];
    }
  }
}

@end