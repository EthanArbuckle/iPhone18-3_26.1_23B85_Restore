@interface LPCaptionBarButtonViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityConfigure;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)configureMenuButton:(id)a3;
- (void)configurePillButton:(id)a3;
@end

@implementation LPCaptionBarButtonViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LPCaptionBarButtonView" hasInstanceVariable:@"_button" withType:"UIButton"];
  [v3 validateClass:@"LPCaptionBarButtonView" hasInstanceMethod:@"configurePillButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"LPCaptionBarButtonView" hasInstanceMethod:@"configureMenuButton:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = LPCaptionBarButtonViewAccessibility;
  [(LPCaptionBarButtonViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(LPCaptionBarButtonViewAccessibility *)self _accessibilityConfigure];
}

- (void)configurePillButton:(id)a3
{
  v4.receiver = self;
  v4.super_class = LPCaptionBarButtonViewAccessibility;
  [(LPCaptionBarButtonViewAccessibility *)&v4 configurePillButton:a3];
  [(LPCaptionBarButtonViewAccessibility *)self _accessibilityConfigure];
}

- (void)configureMenuButton:(id)a3
{
  v4.receiver = self;
  v4.super_class = LPCaptionBarButtonViewAccessibility;
  [(LPCaptionBarButtonViewAccessibility *)&v4 configureMenuButton:a3];
  [(LPCaptionBarButtonViewAccessibility *)self _accessibilityConfigure];
}

- (void)_accessibilityConfigure
{
  objc_opt_class();
  v3 = [(LPCaptionBarButtonViewAccessibility *)self safeValueForKey:@"_button"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4)
  {
    v5 = [v4 accessibilityLabel];
    v6 = [v5 isEqualToString:@"person.2.fill"];

    if (v6)
    {
      v7 = accessibilityLocalizedString(@"caption.bar.collaborate.button");
      [v4 setAccessibilityLabel:v7];
    }
  }
}

@end