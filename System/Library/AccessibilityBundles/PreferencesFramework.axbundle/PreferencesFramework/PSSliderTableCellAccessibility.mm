@interface PSSliderTableCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
@end

@implementation PSSliderTableCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PSSliderTableCell" isKindOfClass:@"PSControlTableCell"];
  [v3 validateClass:@"PSControlTableCell" hasInstanceVariable:@"_control" withType:"UIControl"];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(PSSliderTableCellAccessibility *)self safeValueForKey:@"_control"];
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