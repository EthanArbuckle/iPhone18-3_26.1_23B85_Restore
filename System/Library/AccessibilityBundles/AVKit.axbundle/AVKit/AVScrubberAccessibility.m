@interface AVScrubberAccessibility
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGRect)accessibilityFrame;
@end

@implementation AVScrubberAccessibility

- (CGRect)accessibilityFrame
{
  v6.receiver = self;
  v6.super_class = AVScrubberAccessibility;
  [(AVScrubberAccessibility *)&v6 accessibilityFrame];
  if (v5 == 0.0)
  {
    v5 = 5.0;
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = AVScrubberAccessibility;
  v4 = [(AVScrubberAccessibility *)&v6 continueTrackingWithTouch:a3 withEvent:a4];
  AXPerformSafeBlock();
  return v4;
}

@end