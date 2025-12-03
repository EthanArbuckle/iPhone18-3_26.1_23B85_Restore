@interface HUChevronButtonAccessibility
- (HUChevronButtonAccessibility)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation HUChevronButtonAccessibility

- (id)accessibilityLabel
{
  v2 = [(HUChevronButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HUChevronButtonAccessibility;
  [(HUChevronButtonAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HUChevronButtonAccessibility *)self safeValueForKey:@"titleLabel"];
  [v3 setIsAccessibilityElement:0];
}

- (HUChevronButtonAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = HUChevronButtonAccessibility;
  v3 = [(HUChevronButtonAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(HUChevronButtonAccessibility *)v3 _accessibilityLoadAccessibilityInformation];

  return v3;
}

@end