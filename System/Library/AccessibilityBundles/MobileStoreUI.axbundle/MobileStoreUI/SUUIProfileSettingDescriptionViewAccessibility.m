@interface SUUIProfileSettingDescriptionViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SUUIProfileSettingDescriptionViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SUUIProfileSettingDescriptionViewAccessibility;
  [(SUUIProfileSettingDescriptionViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SUUIProfileSettingDescriptionViewAccessibility *)self safeValueForKey:@"_imageView"];
  [v3 setIsAccessibilityElement:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SUUIProfileSettingDescriptionViewAccessibility;
  [(SUUIProfileSettingDescriptionViewAccessibility *)&v3 layoutSubviews];
  [(SUUIProfileSettingDescriptionViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end