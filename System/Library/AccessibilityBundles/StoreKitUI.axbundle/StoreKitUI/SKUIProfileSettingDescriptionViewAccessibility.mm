@interface SKUIProfileSettingDescriptionViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SKUIProfileSettingDescriptionViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SKUIProfileSettingDescriptionViewAccessibility;
  [(SKUIProfileSettingDescriptionViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SKUIProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_imageView"];
  [v3 setIsAccessibilityElement:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SKUIProfileSettingDescriptionViewAccessibility;
  [(SKUIProfileSettingDescriptionViewAccessibility *)&v3 layoutSubviews];
  [(SKUIProfileSettingDescriptionViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end