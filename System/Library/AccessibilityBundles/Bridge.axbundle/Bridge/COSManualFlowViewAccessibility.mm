@interface COSManualFlowViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (COSManualFlowViewAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation COSManualFlowViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"COSManualFlowView" hasInstanceVariable:@"_deviceNameTextField" withType:"UITextField"];
  [validationsCopy validateClass:@"COSManualFlowView" hasInstanceVariable:@"_btDataTextField" withType:"UITextField"];
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

- (COSManualFlowViewAccessibility)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = COSManualFlowViewAccessibility;
  v3 = [(COSManualFlowViewAccessibility *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(COSManualFlowViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  return v3;
}

@end