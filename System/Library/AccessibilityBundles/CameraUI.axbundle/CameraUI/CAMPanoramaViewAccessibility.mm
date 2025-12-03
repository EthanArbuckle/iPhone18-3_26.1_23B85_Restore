@interface CAMPanoramaViewAccessibility
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation CAMPanoramaViewAccessibility

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v8 = [(CAMPanoramaViewAccessibility *)self safeValueForKey:@"_instructionLabel"];
  [(CAMPanoramaViewAccessibility *)self convertPoint:v8 toView:x, y];
  if ([v8 pointInside:eventCopy withEvent:?])
  {
    v9 = v8;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CAMPanoramaViewAccessibility;
    v9 = [(CAMPanoramaViewAccessibility *)&v12 _accessibilityHitTest:eventCopy withEvent:x, y];
  }

  v10 = v9;

  return v10;
}

@end