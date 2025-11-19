@interface VehiclePickerButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VehiclePickerButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VehiclePickerButton" hasInstanceMethod:@"colorView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VehiclePickerButton" hasInstanceMethod:@"isActive" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(VehiclePickerButtonAccessibility *)self safeUIViewForKey:@"colorView"];
  v3 = [v2 backgroundColor];
  v4 = AXMapsStringForVehicleColor(v3);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = VehiclePickerButtonAccessibility;
  v3 = [(VehiclePickerButtonAccessibility *)&v7 accessibilityTraits];
  v4 = [(VehiclePickerButtonAccessibility *)self safeBoolForKey:@"isActive"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

@end