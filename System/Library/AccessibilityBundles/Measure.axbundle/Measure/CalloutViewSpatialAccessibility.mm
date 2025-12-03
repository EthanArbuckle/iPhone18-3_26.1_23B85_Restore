@interface CalloutViewSpatialAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (void)updateText:(int64_t)text;
@end

@implementation CalloutViewSpatialAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.CalloutViewSpatial" hasInstanceMethod:@"updateText:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"Measure.CalloutViewSpatial" hasInstanceMethod:@"boxLayer" withFullSignature:{"@", 0}];
}

- (CGRect)accessibilityFrame
{
  v25.receiver = self;
  v25.super_class = CalloutViewSpatialAccessibility;
  [(CalloutViewSpatialAccessibility *)&v25 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  v11 = [(CalloutViewSpatialAccessibility *)self safeValueForKey:@"boxLayer"];
  v12 = __UIAccessibilityCastAsClass();

  if (v12)
  {
    path = [v12 path];
    if (path)
    {
      v14 = path;
      objc_opt_class();
      v15 = __UIAccessibilityCastAsClass();
      layer = [v15 layer];
      BoundingBox = CGPathGetBoundingBox(v14);
      [layer convertRect:v12 fromLayer:{BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height}];

      UIAccessibilityFrameForBounds();
      v4 = v17;
      v6 = v18;
      v8 = v19;
      v10 = v20;
    }
  }

  v21 = v4;
  v22 = v6;
  v23 = v8;
  v24 = v10;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (void)updateText:(int64_t)text
{
  axCalloutText = [(CalloutViewAccessibility *)self axCalloutText];
  v6.receiver = self;
  v6.super_class = CalloutViewSpatialAccessibility;
  [(CalloutViewSpatialAccessibility *)&v6 updateText:text];
  [(CalloutViewAccessibility *)self axDidUpdateFromPreviousCalloutText:axCalloutText];
}

@end