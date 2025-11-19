@interface HUChevronButtonAccessibility
- (HUChevronButtonAccessibility)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUChevronButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(HUChevronButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HUChevronButtonAccessibility;
  [(HUChevronButtonAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUChevronButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setIsAccessibilityElement:0];
}

- (HUChevronButtonAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = HUChevronButtonAccessibility;
  v3 = [(HUChevronButtonAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(HUChevronButtonAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end