@interface NTKWorldClockComplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityComplicationSubType;
@end

@implementation NTKWorldClockComplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKWorldClockComplication" hasInstanceVariable:@"_city" withType:"WorldClockCity"];
  [v3 validateClass:@"WorldClockCity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)_accessibilityComplicationSubType
{
  v2 = [(NTKWorldClockComplicationAccessibility *)self safeValueForKey:@"_city"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end