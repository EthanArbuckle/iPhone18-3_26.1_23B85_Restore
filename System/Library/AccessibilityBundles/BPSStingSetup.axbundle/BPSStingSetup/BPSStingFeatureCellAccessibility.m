@interface BPSStingFeatureCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation BPSStingFeatureCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"BPSStingFeatureCell" hasProperty:@"titleLabel" withType:"@"];
  [v3 validateClass:@"BPSStingFeatureCell" hasProperty:@"subtitleLabel" withType:"@"];
}

- (id)accessibilityLabel
{
  v3 = [(BPSStingFeatureCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v6 = [(BPSStingFeatureCellAccessibility *)self safeValueForKey:@"subtitleLabel"];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end