@interface SessionHeartRateViewAccessibility
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SessionHeartRateViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SessionHeartRateViewAccessibility;
  [(SessionHeartRateViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = accessibilityLocalizedString(@"waiting.for.heart.rate.data");
  [(SessionHeartRateViewAccessibility *)self setAccessibilityLabel:v3];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = SessionHeartRateViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(SessionHeartRateViewAccessibility *)&v3 accessibilityTraits];
}

@end