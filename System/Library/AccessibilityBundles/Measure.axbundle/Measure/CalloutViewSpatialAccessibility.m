@interface CalloutViewSpatialAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (void)updateText:(int64_t)a3;
@end

@implementation CalloutViewSpatialAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.CalloutViewSpatial" hasInstanceMethod:@"updateText:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"Measure.CalloutViewSpatial" hasInstanceMethod:@"boxLayer" withFullSignature:{"@", 0}];
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
    v13 = [v12 path];
    if (v13)
    {
      v14 = v13;
      objc_opt_class();
      v15 = __UIAccessibilityCastAsClass();
      v16 = [v15 layer];
      BoundingBox = CGPathGetBoundingBox(v14);
      [v16 convertRect:v12 fromLayer:{BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height}];

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

- (void)updateText:(int64_t)a3
{
  v5 = [(CalloutViewAccessibility *)self axCalloutText];
  v6.receiver = self;
  v6.super_class = CalloutViewSpatialAccessibility;
  [(CalloutViewSpatialAccessibility *)&v6 updateText:a3];
  [(CalloutViewAccessibility *)self axDidUpdateFromPreviousCalloutText:v5];
}

@end