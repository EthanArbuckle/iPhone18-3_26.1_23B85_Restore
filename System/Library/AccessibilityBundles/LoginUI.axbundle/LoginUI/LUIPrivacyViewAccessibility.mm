@interface LUIPrivacyViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMungeMoreButtonLabel;
- (void)setButtonTitle:(id)title;
@end

@implementation LUIPrivacyViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LUIPrivacyView" hasInstanceMethod:@"setButtonTitle:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"LUIPrivacyView" hasInstanceVariable:@"_moreInfoButton" withType:"UIButton"];
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

- (void)setButtonTitle:(id)title
{
  v4.receiver = self;
  v4.super_class = LUIPrivacyViewAccessibility;
  [(LUIPrivacyViewAccessibility *)&v4 setButtonTitle:title];
  [(LUIPrivacyViewAccessibility *)self _accessibilityMungeMoreButtonLabel];
}

@end