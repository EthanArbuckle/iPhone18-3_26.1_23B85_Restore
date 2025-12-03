@interface PUTransparentViewAccessibility
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation PUTransparentViewAccessibility

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v8 = [(PUTransparentViewAccessibility *)self _accessibilityDescendantOfType:NSClassFromString(&cfstr_Plhighfidelity.isa)];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = PUTransparentViewAccessibility;
    v8 = [(PUTransparentViewAccessibility *)&v11 hitTest:eventCopy withEvent:x, y];
  }

  v9 = v8;

  return v9;
}

@end