@interface AKSmoothPathViewAccessibility
- (void)terminateStroke;
@end

@implementation AKSmoothPathViewAccessibility

- (void)terminateStroke
{
  v4.receiver = self;
  v4.super_class = AKSmoothPathViewAccessibility;
  [(AKSmoothPathViewAccessibility *)&v4 terminateStroke];
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"sketch.drawing.ended");
  UIAccessibilityPostNotification(v2, v3);
}

@end