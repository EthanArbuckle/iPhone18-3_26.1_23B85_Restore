@interface NTKUtilityImageAndLabelsComplicationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation NTKUtilityImageAndLabelsComplicationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKUtilityImageAndLabelsComplicationView" hasInstanceVariable:@"_imageView" withType:"UIView<CDComplicationImageView>"];
  [v3 validateClass:@"NTKUtilityImageAndLabelsComplicationView" hasInstanceVariable:@"_firstLabel" withType:"CLKUIColoringLabel"];
  [v3 validateClass:@"NTKUtilityImageAndLabelsComplicationView" hasInstanceVariable:@"_secondLabel" withType:"CLKUIColoringLabel"];
}

- (id)accessibilityLabel
{
  v3 = [(NTKUtilityImageAndLabelsComplicationViewAccessibility *)self safeValueForKey:@"_imageView"];
  v4 = [v3 accessibilityLabel];
  v5 = [(NTKUtilityImageAndLabelsComplicationViewAccessibility *)self safeValueForKey:@"_firstLabel"];
  v6 = [v5 accessibilityLabel];
  v7 = [(NTKUtilityImageAndLabelsComplicationViewAccessibility *)self safeValueForKey:@"_secondLabel"];
  v10 = [v7 accessibilityLabel];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end