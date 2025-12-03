@interface PLProgressViewAccessibility
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateValueBasedOnPercentComplete:(float)complete;
- (void)setPercentComplete:(float)complete;
@end

@implementation PLProgressViewAccessibility

- (BOOL)isAccessibilityElement
{
  v2 = [(PLProgressViewAccessibility *)self safeValueForKey:@"alpha"];
  [v2 doubleValue];
  v4 = v3 > 0.0;

  return v4;
}

- (id)accessibilityLabel
{
  v2 = [(PLProgressViewAccessibility *)self safeValueForKey:@"_labelView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (void)_axUpdateValueBasedOnPercentComplete:(float)complete
{
  v4 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v5 = UIKitAccessibilityLocalizedString();
  v6 = AXFormatFloatWithPercentage();
  v7 = [v4 initWithFormat:v5, v6];

  [(PLProgressViewAccessibility *)self setAccessibilityValue:v7];
}

- (void)setPercentComplete:(float)complete
{
  v8.receiver = self;
  v8.super_class = PLProgressViewAccessibility;
  [(PLProgressViewAccessibility *)&v8 setPercentComplete:?];
  v4 = objc_allocWithZone(MEMORY[0x29EDBA0F8]);
  v5 = UIKitAccessibilityLocalizedString();
  v6 = AXFormatFloatWithPercentage();
  v7 = [v4 initWithFormat:v5, v6];

  [(PLProgressViewAccessibility *)self setAccessibilityValue:v7];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = PLProgressViewAccessibility;
  [(PLProgressViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(PLProgressViewAccessibility *)self safeValueForKey:@"percentComplete"];
  [v3 floatValue];
  [(PLProgressViewAccessibility *)self _axUpdateValueBasedOnPercentComplete:?];
}

@end