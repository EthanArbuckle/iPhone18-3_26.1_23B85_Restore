@interface MarketingViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MarketingViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = MarketingViewAccessibility;
  [(MarketingViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(MarketingViewAccessibility *)self safeValueForKey:@"logoImageView"];
  [v3 setIsAccessibilityElement:1];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7FD0]];
  v4 = accessibilityLocalizedString(@"product.logo");
  [v3 setAccessibilityLabel:v4];
}

@end