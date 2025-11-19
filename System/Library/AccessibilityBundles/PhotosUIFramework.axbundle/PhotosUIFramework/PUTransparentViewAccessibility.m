@interface PUTransparentViewAccessibility
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PUTransparentViewAccessibility

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v8 = [(PUTransparentViewAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Plhighfidelity.isa)];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUTransparentViewAccessibility;
    v8 = [(PUTransparentViewAccessibility *)&v11 hitTest:v7 withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

@end