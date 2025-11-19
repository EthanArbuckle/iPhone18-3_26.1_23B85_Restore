@interface VehicleDetailViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation VehicleDetailViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = VehicleDetailViewControllerAccessibility;
  [(VehicleDetailViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(VehicleDetailViewControllerAccessibility *)self safeUIViewForKey:@"vehicleColorView"];
  [v3 setIsAccessibilityElement:1];
  v4 = AXMapsLocString(@"VEHICLE_ICON");
  [v3 setAccessibilityLabel:v4];

  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __86__VehicleDetailViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2CC418;
  objc_copyWeak(&v6, &location);
  [v3 _setAccessibilityValueBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __86__VehicleDetailViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained backgroundColor];
  v3 = AXMapsStringForVehicleColor(v2);

  return v3;
}

@end