@interface HUDownloadControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUDownloadControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUDownloadControl" hasInstanceVariable:@"_controlTitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"HUDownloadControl" hasInstanceVariable:@"_downloadProgressView" withType:"HUDownloadProgressView"];
}

- (id)accessibilityLabel
{
  v3 = [(HUDownloadControlAccessibility *)self safeUIViewForKey:@"_controlTitleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  v8.receiver = self;
  v8.super_class = HUDownloadControlAccessibility;
  accessibilityLabel2 = [(HUDownloadControlAccessibility *)&v8 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(HUDownloadControlAccessibility *)self safeValueForKey:@"_downloadProgressView"];
  accessibilityValue = [v3 accessibilityValue];

  v8.receiver = self;
  v8.super_class = HUDownloadControlAccessibility;
  accessibilityValue2 = [(HUDownloadControlAccessibility *)&v8 accessibilityValue];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = HUDownloadControlAccessibility;
  return *MEMORY[0x29EDC7F70] | [(HUDownloadControlAccessibility *)&v3 accessibilityTraits];
}

@end