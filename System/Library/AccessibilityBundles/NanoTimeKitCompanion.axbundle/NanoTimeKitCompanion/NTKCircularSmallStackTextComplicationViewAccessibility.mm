@interface NTKCircularSmallStackTextComplicationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NTKCircularSmallStackTextComplicationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKCircularSmallStackTextComplicationView" hasInstanceVariable:@"_firstLineLabel" withType:"CLKUIColoringLabel"];
  [validationsCopy validateClass:@"NTKCircularSmallStackTextComplicationView" hasInstanceVariable:@"_secondLineLabel" withType:"CLKUIColoringLabel"];
  [validationsCopy validateClass:@"CLKUIColoringLabel" hasInstanceMethod:@"textProvider" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(NTKCircularSmallStackTextComplicationViewAccessibility *)self safeValueForKey:@"_firstLineLabel"];
  v4 = [v3 safeValueForKey:@"textProvider"];
  accessibilityLabel = [v4 accessibilityLabel];

  v6 = [(NTKCircularSmallStackTextComplicationViewAccessibility *)self safeValueForKey:@"_secondLineLabel"];
  v7 = [v6 safeValueForKey:@"textProvider"];
  accessibilityLabel2 = [v7 accessibilityLabel];

  v9 = __UIAXStringForVariables();

  return v9;
}

@end