@interface RectangleFillAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setState:(int64_t)state;
@end

@implementation RectangleFillAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.RectangleFill" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"Measure.RectangleFill" hasInstanceMethod:@"setState:" withFullSignature:{"v", "q", 0}];
}

- (void)setState:(int64_t)state
{
  v5 = [(RectangleFillAccessibility *)self safeIntegerForKey:@"state"];
  v9.receiver = self;
  v9.super_class = RectangleFillAccessibility;
  [(RectangleFillAccessibility *)&v9 setState:state];
  if (v5 != state)
  {
    switch(state)
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