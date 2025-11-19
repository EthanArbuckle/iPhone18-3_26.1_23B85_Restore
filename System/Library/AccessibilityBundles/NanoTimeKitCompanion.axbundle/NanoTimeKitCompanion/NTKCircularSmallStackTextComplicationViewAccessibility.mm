@interface NTKCircularSmallStackTextComplicationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NTKCircularSmallStackTextComplicationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKCircularSmallStackTextComplicationView" hasInstanceVariable:@"_firstLineLabel" withType:"CLKUIColoringLabel"];
  [v3 validateClass:@"NTKCircularSmallStackTextComplicationView" hasInstanceVariable:@"_secondLineLabel" withType:"CLKUIColoringLabel"];
  [v3 validateClass:@"CLKUIColoringLabel" hasInstanceMethod:@"textProvider" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NTKCircularSmallStackTextComplicationViewAccessibility *)self safeValueForKey:@"_firstLineLabel"];
  v4 = [v3 safeValueForKey:@"textProvider"];
  v5 = [v4 accessibilityLabel];

  v6 = [(NTKCircularSmallStackTextComplicationViewAccessibility *)self safeValueForKey:@"_secondLineLabel"];
  v7 = [v6 safeValueForKey:@"textProvider"];
  v8 = [v7 accessibilityLabel];

  v9 = __UIAXStringForVariables();

  return v9;
}

@end