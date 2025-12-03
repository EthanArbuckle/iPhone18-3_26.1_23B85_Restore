@interface HUGridCameraCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation HUGridCameraCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUGridCameraCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridCameraCell" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUGridCellAccessibility" hasInstanceMethod:@"_axIsActiveGridCell" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HUGridCameraCellAccessibility *)self safeValueForKey:@"titleLabel"];
  accessibilityLabel = [v3 accessibilityLabel];
  v5 = [(HUGridCameraCellAccessibility *)self safeValueForKey:@"descriptionLabel"];
  accessibilityLabel2 = [v5 accessibilityLabel];
  v6 = __AXStringForVariables();

  return v6;
}

@end