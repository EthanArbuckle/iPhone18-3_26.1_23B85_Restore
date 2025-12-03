@interface NTKWorldClockComplicationAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityComplicationSubType;
@end

@implementation NTKWorldClockComplicationAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKWorldClockComplication" hasInstanceVariable:@"_city" withType:"WorldClockCity"];
  [validationsCopy validateClass:@"WorldClockCity" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)_accessibilityComplicationSubType
{
  v2 = [(NTKWorldClockComplicationAccessibility *)self safeValueForKey:@"_city"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end