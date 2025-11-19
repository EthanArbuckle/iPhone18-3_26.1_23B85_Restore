@interface RectangleFillAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)setState:(int64_t)a3;
@end

@implementation RectangleFillAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.RectangleFill" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [v3 validateClass:@"Measure.RectangleFill" hasInstanceMethod:@"setState:" withFullSignature:{"v", "q", 0}];
}

- (void)setState:(int64_t)a3
{
  v5 = [(RectangleFillAccessibility *)self safeIntegerForKey:@"state"];
  v9.receiver = self;
  v9.super_class = RectangleFillAccessibility;
  [(RectangleFillAccessibility *)&v9 setState:a3];
  if (v5 != a3)
  {
    switch(a3)
    {
      case 1:
        v6 = @"RECTANGLE_REMOVED";
        break;
      case 5:
        v6 = @"RECTANGLE_CONFIRMED";
        break;
      case 6:
        v6 = @"RECTANGLE_ADDED";
        break;
      default:
        return;
    }

    v7 = accessibilityLocalizedString(v6);
    if (v7)
    {
      v8 = v7;
      AXMeasureSpeakMeasurementAnnouncement(v7);
    }
  }
}

@end