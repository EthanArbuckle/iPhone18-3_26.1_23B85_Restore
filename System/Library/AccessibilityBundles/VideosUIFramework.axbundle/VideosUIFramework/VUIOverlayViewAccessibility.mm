@interface VUIOverlayViewAccessibility
- (id)accessibilityLabel;
@end

@implementation VUIOverlayViewAccessibility

- (id)accessibilityLabel
{
  v2 = [(VUIOverlayViewAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end