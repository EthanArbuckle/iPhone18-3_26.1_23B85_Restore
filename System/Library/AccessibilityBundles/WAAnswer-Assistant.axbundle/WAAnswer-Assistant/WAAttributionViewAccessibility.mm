@interface WAAttributionViewAccessibility
- (CGPoint)accessibilityActivationPoint;
@end

@implementation WAAttributionViewAccessibility

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(WAAttributionViewAccessibility *)self safeValueForKey:@"_attributionButton"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

@end