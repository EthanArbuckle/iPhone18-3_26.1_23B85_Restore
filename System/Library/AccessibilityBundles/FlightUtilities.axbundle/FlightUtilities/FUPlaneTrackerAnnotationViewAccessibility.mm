@interface FUPlaneTrackerAnnotationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityGeocodingGroup;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setCoordinate:(CLLocationCoordinate2D)coordinate;
@end

@implementation FUPlaneTrackerAnnotationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FUPlaneTrackerAnnotationView" hasInstanceMethod:@"currentProgress" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"FUPlaneTrackerAnnotationView" hasInstanceMethod:@"currentLocation" withFullSignature:{"{CLLocationCoordinate2D=dd}", 0}];
  [validationsCopy validateClass:@"FUPlaneTrackerAnnotationView" hasInstanceVariable:@"_showsPlane" withType:"B"];
  [validationsCopy validateClass:@"FUPlaneTrackerAnnotationView" isKindOfClass:@"MKAnnotationView"];
  [validationsCopy validateClass:@"FUPlaneTrackerAnnotationView" conformsToProtocol:@"MKAnnotation"];
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FUPlaneTrackerAnnotationViewAccessibility;
  return *MEMORY[0x29EDC7FF0] | [(FUPlaneTrackerAnnotationViewAccessibility *)&v3 accessibilityTraits];
}

- (void)setCoordinate:(CLLocationCoordinate2D)coordinate
{
  v4.receiver = self;
  v4.super_class = FUPlaneTrackerAnnotationViewAccessibility;
  [(FUPlaneTrackerAnnotationViewAccessibility *)&v4 setCoordinate:coordinate.latitude, coordinate.longitude];
  [(FUPlaneTrackerAnnotationViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)_accessibilityGeocodingGroup
{
  _accessibilityGetGeocodingGroup = [(FUPlaneTrackerAnnotationViewAccessibility *)self _accessibilityGetGeocodingGroup];

  if (!_accessibilityGetGeocodingGroup)
  {
    v4 = dispatch_group_create();
    [(FUPlaneTrackerAnnotationViewAccessibility *)self _accessibilitySetGeocodingGroup:v4];
  }

  return [(FUPlaneTrackerAnnotationViewAccessibility *)self _accessibilityGetGeocodingGroup];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v10.receiver = self;
  v10.super_class = FUPlaneTrackerAnnotationViewAccessibility;
  [(FUPlaneTrackerAnnotationViewAccessibility *)&v10 _accessibilityLoadAccessibilityInformation];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3010000000;
  v9[4] = 0;
  v9[5] = 0;
  v9[3] = &unk_29BDF2783;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  block[6] = MEMORY[0x29EDCA5F8];
  block[7] = 3221225472;
  block[8] = __87__FUPlaneTrackerAnnotationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  block[9] = &unk_29F2BF2F8;
  block[10] = self;
  block[11] = v9;
  block[12] = &v5;
  AXPerformSafeBlock();
  if (v6[3])
  {
    _accessibilityGeocodingGroup = [(FUPlaneTrackerAnnotationViewAccessibility *)self _accessibilityGeocodingGroup];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __87__FUPlaneTrackerAnnotationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
    block[3] = &unk_29F2BF348;
    block[4] = self;
    block[5] = v9;
    dispatch_group_notify(_accessibilityGeocodingGroup, MEMORY[0x29EDCA578], block);
  }

  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(v9, 8);
}

void __87__FUPlaneTrackerAnnotationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = __UIAccessibilityCastAsProtocol();
  [v2 coordinate];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __87__FUPlaneTrackerAnnotationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _accessibilityGeocodingGroup];
  dispatch_group_enter(v2);

  v3 = objc_alloc_init(MEMORY[0x29EDB9260]);
  v4 = [objc_alloc(MEMORY[0x29EDBD238]) initWithLatitude:*(*(*(a1 + 40) + 8) + 32) longitude:*(*(*(a1 + 40) + 8) + 40)];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __87__FUPlaneTrackerAnnotationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3;
  v5[3] = &unk_29F2BF320;
  v5[4] = *(a1 + 32);
  [v3 reverseGeocodeLocation:v4 completionHandler:v5];
}

void __87__FUPlaneTrackerAnnotationViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v19 = @"could not reverse-geocode flight location: %@";
    v20 = a3;
    LOBYTE(v18) = 1;
    _AXLogWithFacility();
    goto LABEL_17;
  }

  v4 = [a2 firstObject];
  v5 = [v4 locality];
  v6 = [v4 administrativeArea];
  v7 = [v4 country];
  v8 = [v4 inlandWater];
  v9 = [v4 ocean];
  v10 = v9;
  if (v5 && v6 && v7)
  {
    v11 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityLocalizedString(@"flight.location.city.state.country");
    [v11 stringWithFormat:v12, v5, v6, v7];
    v14 = LABEL_10:;
    goto LABEL_15;
  }

  if (v5 && v7)
  {
    v13 = MEMORY[0x29EDBA0F8];
    v12 = accessibilityLocalizedString(@"flight.location.city.country");
    [v13 stringWithFormat:v12, v5, v7, v20];
    goto LABEL_10;
  }

  v15 = v7;
  if (!v7)
  {
    v15 = v8;
    if (!v8)
    {
      v15 = v9;
      if (!v9)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }
  }

  v12 = v15;
  v16 = MEMORY[0x29EDBA0F8];
  v17 = accessibilityLocalizedString(@"flight.location.other");
  v14 = [v16 stringWithFormat:v17, v12];

LABEL_15:
LABEL_16:
  [*(a1 + 32) _accessibilitySetNearbyLocationDescription:v14];

LABEL_17:
  v21 = [*(a1 + 32) _accessibilityGeocodingGroup];
  dispatch_group_leave(v21);
}

- (id)accessibilityValue
{
  [(FUPlaneTrackerAnnotationViewAccessibility *)self safeCGFloatForKey:@"currentProgress"];
  _accessibilityNearbyLocationDescription = [(FUPlaneTrackerAnnotationViewAccessibility *)self _accessibilityNearbyLocationDescription];
  v4 = MEMORY[0x29EDBA0F8];
  v5 = accessibilityLocalizedString(@"flight.percent.complete");
  v6 = AXFormatFloatWithPercentage();
  v7 = [v4 stringWithFormat:v5, v6];
  v8 = __UIAXStringForVariables();

  return v8;
}

@end