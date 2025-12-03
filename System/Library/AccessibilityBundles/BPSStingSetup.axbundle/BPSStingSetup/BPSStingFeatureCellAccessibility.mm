@interface BPSStingFeatureCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation BPSStingFeatureCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"BPSStingFeatureCell" hasProperty:@"titleLabel" withType:"@"];
  [validationsCopy validateClass:@"BPSStingFeatureCell" hasProperty:@"subtitleLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  v3 = [(BPSStingFeatureCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v6 = [(BPSStingFeatureCellAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end