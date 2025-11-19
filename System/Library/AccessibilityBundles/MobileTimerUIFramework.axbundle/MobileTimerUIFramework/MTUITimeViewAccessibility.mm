@interface MTUITimeViewAccessibility
- (id)accessibilityLabel;
@end

@implementation MTUITimeViewAccessibility

- (id)accessibilityLabel
{
  v5.receiver = self;
  v5.super_class = MTUITimeViewAccessibility;
  v2 = [(MTUITimeViewAccessibility *)&v5 accessibilityLabel];
  v3 = AXLocalizeDurationTime();

  return v3;
}

@end