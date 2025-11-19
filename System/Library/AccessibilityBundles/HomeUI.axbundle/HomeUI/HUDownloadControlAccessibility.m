@interface HUDownloadControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation HUDownloadControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUDownloadControl" hasInstanceVariable:@"_controlTitleLabel" withType:"UILabel"];
  [v3 validateClass:@"HUDownloadControl" hasInstanceVariable:@"_downloadProgressView" withType:"HUDownloadProgressView"];
}

- (id)accessibilityLabel
{
  v3 = [(HUDownloadControlAccessibility *)self safeUIViewForKey:@"_controlTitleLabel"];
  v4 = [v3 accessibilityLabel];

  v8.receiver = self;
  v8.super_class = HUDownloadControlAccessibility;
  v5 = [(HUDownloadControlAccessibility *)&v8 accessibilityLabel];
  v6 = __UIAXStringForVariables();

  return v6;
}

- (id)accessibilityValue
{
  v3 = [(HUDownloadControlAccessibility *)self safeValueForKey:@"_downloadProgressView"];
  v4 = [v3 accessibilityValue];

  v8.receiver = self;
  v8.super_class = HUDownloadControlAccessibility;
  v5 = [(HUDownloadControlAccessibility *)&v8 accessibilityValue];
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