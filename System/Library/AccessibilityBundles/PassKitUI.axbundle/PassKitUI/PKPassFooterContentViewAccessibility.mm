@interface PKPassFooterContentViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PKPassFooterContentViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = PKPassFooterContentViewAccessibility;
  [(PKPassFooterContentViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKPassFooterContentViewAccessibility *)self safeValueForKey:@"_infoButton"];
  v4 = accessibilityLocalizedString(@"more.button");
  [v3 setAccessibilityLabel:v4];
}

@end