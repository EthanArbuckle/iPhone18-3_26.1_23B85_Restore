@interface CAMPanoramaViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CAMPanoramaViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CAMPanoramaViewAccessibility *)self safeValueForKey:@"_instructionLabel"];
  [(CAMPanoramaViewAccessibility *)self convertPoint:v8 toView:x, y];
  if ([v8 pointInside:v7 withEvent:?])
  {
    v9 = v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CAMPanoramaViewAccessibility;
    v9 = [(CAMPanoramaViewAccessibility *)&v12 _accessibilityHitTest:v7 withEvent:x, y];
  }

  v10 = v9;

  return v10;
}

@end