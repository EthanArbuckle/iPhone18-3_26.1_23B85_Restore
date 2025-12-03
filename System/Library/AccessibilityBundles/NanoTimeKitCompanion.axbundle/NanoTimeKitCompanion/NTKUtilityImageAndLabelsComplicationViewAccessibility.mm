@interface NTKUtilityImageAndLabelsComplicationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation NTKUtilityImageAndLabelsComplicationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKUtilityImageAndLabelsComplicationView" hasInstanceVariable:@"_imageView" withType:"UIView<CDComplicationImageView>"];
  [validationsCopy validateClass:@"NTKUtilityImageAndLabelsComplicationView" hasInstanceVariable:@"_firstLabel" withType:"CLKUIColoringLabel"];
  [validationsCopy validateClass:@"NTKUtilityImageAndLabelsComplicationView" hasInstanceVariable:@"_secondLabel" withType:"CLKUIColoringLabel"];
}

- (id)accessibilityLabel
{
  v3 = [(NTKUtilityImageAndLabelsComplicationViewAccessibility *)self safeValueForKey:@"_imageView"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(NTKUtilityImageAndLabelsComplicationViewAccessibility *)self safeValueForKey:@"_firstLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v7 = [(NTKUtilityImageAndLabelsComplicationViewAccessibility *)self safeValueForKey:@"_secondLabel"];
  accessibilityLabel3 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end