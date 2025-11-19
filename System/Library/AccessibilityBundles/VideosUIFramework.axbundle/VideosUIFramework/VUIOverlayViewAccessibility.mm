@interface VUIOverlayViewAccessibility
- (id)accessibilityLabel;
@end

@implementation VUIOverlayViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(VUIOverlayViewAccessibility *)self safeValueForKey:@"titleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end