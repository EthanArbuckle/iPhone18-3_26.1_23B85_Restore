@interface HUGridCameraCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation HUGridCameraCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUGridCameraCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUGridCameraCell" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HUGridCellAccessibility" hasInstanceMethod:@"_axIsActiveGridCell" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(HUGridCameraCellAccessibility *)self safeValueForKey:@"titleLabel"];
  v4 = [v3 accessibilityLabel];
  v5 = [(HUGridCameraCellAccessibility *)self safeValueForKey:@"descriptionLabel"];
  v8 = [v5 accessibilityLabel];
  v6 = __AXStringForVariables();

  return v6;
}

@end