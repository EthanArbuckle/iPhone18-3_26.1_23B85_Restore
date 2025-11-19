@interface LocationRefinementViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateSnapToUserLocationButton;
- (void)_triggerCrossHairLocationDecode;
- (void)viewDidLoad;
@end

@implementation LocationRefinementViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"LocationRefinementViewController" hasInstanceVariable:@"_snapToUserLocationButton" withType:"UIButton"];
  [v3 validateClass:@"LocationRefinementViewController" hasInstanceVariable:@"_crosshairImageView" withType:"UIImageView"];
  [v3 validateClass:@"LocationRefinementViewController" hasInstanceVariable:@"_mapView" withType:"MKMapView"];
  [v3 validateClass:@"LocationRefinementViewController" hasInstanceMethod:@"mapView:regionDidChangeAnimated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"LocationRefinementViewController" hasInstanceMethod:@"crosshairType" withFullSignature:{"Q", 0}];
}

- (void)_axAnnotateSnapToUserLocationButton
{
  v3 = [(LocationRefinementViewControllerAccessibility *)self safeValueForKey:@"_snapToUserLocationButton"];
  v2 = AXMapsLocString(@"SNAP_TO_USER_LOCATION_BUTTON");
  [v3 setAccessibilityLabel:v2];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = LocationRefinementViewControllerAccessibility;
  [(LocationRefinementViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  [(LocationRefinementViewControllerAccessibility *)self _axAnnotateSnapToUserLocationButton];
  v3 = [(LocationRefinementViewControllerAccessibility *)self safeUnsignedIntegerForKey:@"crosshairType"];
  if (v3 > 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = AXMapsLocString(off_29F2CC5A8[v3]);
  }

  v5 = [(LocationRefinementViewControllerAccessibility *)self safeValueForKey:@"_crosshairImageView"];
  [v5 setIsAccessibilityElement:1];
  [v5 setAccessibilityLabel:v4];
  [(LocationRefinementViewControllerAccessibility *)self _triggerCrossHairLocationDecode];
}

- (void)_triggerCrossHairLocationDecode
{
  v3 = [(LocationRefinementViewControllerAccessibility *)self safeValueForKey:@"_crosshairImageView"];
  v16 = 0;
  v4 = [(LocationRefinementViewControllerAccessibility *)self safeValueForKey:@"_mapView"];
  v5 = __UIAccessibilitySafeClass();

  v6 = objc_alloc(MEMORY[0x29EDBD238]);
  [v5 centerCoordinate];
  v8 = v7;
  [v5 centerCoordinate];
  v9 = [v6 initWithLatitude:v8 longitude:?];
  v10 = objc_alloc_init(MEMORY[0x29EDB9260]);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __80__LocationRefinementViewControllerAccessibility__triggerCrossHairLocationDecode__block_invoke;
  v13[3] = &unk_29F2CC588;
  v14 = v3;
  v15 = self;
  v11 = v3;
  v12 = MEMORY[0x29C2DD090](v13);
  [v10 reverseGeocodeLocation:v9 completionHandler:v12];
  [(LocationRefinementViewControllerAccessibility *)self _accessibilitySetRetainedValue:v10 forKey:@"CLGeocoder"];
}

void __80__LocationRefinementViewControllerAccessibility__triggerCrossHairLocationDecode__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 firstObject];
  v7 = v5;
  if (a3 || !v5)
  {
    [*(a1 + 40) _accessibilityRemoveValueForKey:@"CLGeocoder"];
  }

  else
  {
    v6 = AXShortAddressDescriptionForPlacemark(v5, 1);
    [*(a1 + 32) setAccessibilityValue:v6];
    [*(a1 + 40) _accessibilityRemoveValueForKey:@"CLGeocoder"];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = LocationRefinementViewControllerAccessibility;
  [(LocationRefinementViewControllerAccessibility *)&v3 viewDidLoad];
  [(LocationRefinementViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end