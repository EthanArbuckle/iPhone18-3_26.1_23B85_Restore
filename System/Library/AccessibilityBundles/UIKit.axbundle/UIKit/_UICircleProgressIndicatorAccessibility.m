@interface _UICircleProgressIndicatorAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation _UICircleProgressIndicatorAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UICircleProgressIndicator";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"isIndeterminate" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityValue
{
  v5 = [(_UICircleProgressIndicatorAccessibility *)self safeValueForKey:@"indeterminate"];
  v6 = [v5 BOOLValue];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    v8 = accessibilityLocalizedString(@"circle.inprogress.indeterminate");
  }

  else
  {
    v4 = [(_UICircleProgressIndicatorAccessibility *)self safeValueForKey:@"progress", v2];
    [v4 floatValue];
    MEMORY[0x29EDC9740](v4);
    v8 = AXFormatFloatWithPercentage();
  }

  return v8;
}

@end