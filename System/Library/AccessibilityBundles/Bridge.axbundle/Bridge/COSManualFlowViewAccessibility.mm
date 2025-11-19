@interface COSManualFlowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (COSManualFlowViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation COSManualFlowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"COSManualFlowView" hasInstanceVariable:@"_deviceNameTextField" withType:"UITextField"];
  [v3 validateClass:@"COSManualFlowView" hasInstanceVariable:@"_btDataTextField" withType:"UITextField"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = COSManualFlowViewAccessibility;
  [(COSManualFlowViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(COSManualFlowViewAccessibility *)self safeValueForKey:@"_deviceNameTextField"];
  [v3 setAccessibilityIdentifier:@"DeviceNameField"];

  v4 = [(COSManualFlowViewAccessibility *)self safeValueForKey:@"_btDataTextField"];
  [v4 setAccessibilityIdentifier:@"BTDataField"];
}

- (COSManualFlowViewAccessibility)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = COSManualFlowViewAccessibility;
  v3 = [(COSManualFlowViewAccessibility *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(COSManualFlowViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end