@interface LUIPrivacyViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMungeMoreButtonLabel;
- (void)setButtonTitle:(id)a3;
@end

@implementation LUIPrivacyViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LUIPrivacyView" hasInstanceMethod:@"setButtonTitle:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"LUIPrivacyView" hasInstanceVariable:@"_moreInfoButton" withType:"UIButton"];
}

- (void)_accessibilityMungeMoreButtonLabel
{
  v3 = [(LUIPrivacyViewAccessibility *)self safeValueForKey:@"_moreInfoButton"];
  v2 = accessibilityLocalizedString(@"learn.more.label");
  [v3 setAccessibilityLabel:v2];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = LUIPrivacyViewAccessibility;
  [(LUIPrivacyViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(LUIPrivacyViewAccessibility *)self _accessibilityMungeMoreButtonLabel];
}

- (void)setButtonTitle:(id)a3
{
  v4.receiver = self;
  v4.super_class = LUIPrivacyViewAccessibility;
  [(LUIPrivacyViewAccessibility *)&v4 setButtonTitle:a3];
  [(LUIPrivacyViewAccessibility *)self _accessibilityMungeMoreButtonLabel];
}

@end