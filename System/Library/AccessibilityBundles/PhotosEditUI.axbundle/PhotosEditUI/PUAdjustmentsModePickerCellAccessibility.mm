@interface PUAdjustmentsModePickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateButton;
@end

@implementation PUAdjustmentsModePickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUAdjustmentsModePickerCell" hasInstanceVariable:@"_accessoryButton" withType:"UIButton"];
  [v3 validateClass:@"PUAdjustmentsModePickerCell" hasInstanceMethod:@"localizedModeName" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PUAdjustmentsModePickerCell" hasInstanceMethod:@"_updateButton" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = PUAdjustmentsModePickerCellAccessibility;
  [(PUAdjustmentsModePickerCellAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(PUAdjustmentsModePickerCellAccessibility *)self safeValueForKey:@"_accessoryButton"];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [(PUAdjustmentsModePickerCellAccessibility *)self safeStringForKey:@"localizedModeName"];
  [v4 setAccessibilityValue:v5];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = PUAdjustmentsModePickerCellAccessibility;
  return *MEMORY[0x29EDC7F70] | [(PUAdjustmentsModePickerCellAccessibility *)&v3 accessibilityTraits];
}

- (void)_updateButton
{
  v3.receiver = self;
  v3.super_class = PUAdjustmentsModePickerCellAccessibility;
  [(PUAdjustmentsModePickerCellAccessibility *)&v3 _updateButton];
  [(PUAdjustmentsModePickerCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end