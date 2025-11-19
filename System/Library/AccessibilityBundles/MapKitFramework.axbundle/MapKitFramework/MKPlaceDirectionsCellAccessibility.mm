@interface MKPlaceDirectionsCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axSpokenStringForDuration:(double)a3;
- (void)_axUpdateElements;
- (void)updateETAFor:(unint64_t)a3 button:(id)a4 label:(id)a5;
@end

@implementation MKPlaceDirectionsCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKPlaceDirectionsCell" hasInstanceMethod:@"updateETAFor: button: label:" withFullSignature:{"v", "Q", "@", "@", 0}];
  [v3 validateClass:@"_MKRouteETA" hasInstanceMethod:@"travelTime" withFullSignature:{"d", 0}];
  [v3 validateClass:@"_MKQuickRouteManager" hasInstanceMethod:@"routeETAForTransportType:" withFullSignature:{"@", "Q", 0}];
  [v3 validateClass:@"MKPlaceDirectionsCell" hasInstanceVariable:@"_quickRouteManager" withType:"_MKQuickRouteManager"];
  [v3 validateClass:@"MKPlaceDirectionsCell" hasInstanceVariable:@"_directionsButton" withType:"UIButton"];
  [v3 validateClass:@"MKPlaceDirectionsCell" hasInstanceVariable:@"_walkButton" withType:"UIButton"];
  [v3 validateClass:@"MKPlaceDirectionsCell" hasInstanceVariable:@"_transitButton" withType:"UIButton"];
  [v3 validateClass:@"MKPlaceDirectionsCell" hasInstanceVariable:@"_driveButton" withType:"UIButton"];
}

- (void)_axUpdateElements
{
  v7 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:4];
  v3 = [(MKPlaceDirectionsCellAccessibility *)self safeValueForKey:@"_directionsButton"];
  v4 = [(MKPlaceDirectionsCellAccessibility *)self safeValueForKey:@"_driveButton"];
  v5 = [(MKPlaceDirectionsCellAccessibility *)self safeValueForKey:@"_walkButton"];
  v6 = [(MKPlaceDirectionsCellAccessibility *)self safeValueForKey:@"_transitButton"];
  [v7 axSafelyAddObject:v3];
  if (([v4 isHidden] & 1) == 0)
  {
    [v7 axSafelyAddObject:v4];
  }

  if (([v5 isHidden] & 1) == 0)
  {
    [v7 axSafelyAddObject:v5];
  }

  if (([v6 isHidden] & 1) == 0)
  {
    [v7 axSafelyAddObject:v6];
  }

  [(MKPlaceDirectionsCellAccessibility *)self setAccessibilityElements:v7];
}

- (id)_axSpokenStringForDuration:(double)a3
{
  MNGetHoursAndMinutesForTimeInterval();
  v3 = objc_alloc_init(MEMORY[0x29EDB8DB8]);
  [v3 setHour:0];
  [v3 setMinute:0];
  v4 = [MEMORY[0x29EDB9F70] localizedStringFromDateComponents:v3 unitsStyle:4];

  return v4;
}

- (void)updateETAFor:(unint64_t)a3 button:(id)a4 label:(id)a5
{
  v8 = a4;
  v9 = a5;
  v22.receiver = self;
  v22.super_class = MKPlaceDirectionsCellAccessibility;
  [(MKPlaceDirectionsCellAccessibility *)&v22 updateETAFor:a3 button:v8 label:v9];
  if (([v8 isHidden] & 1) == 0)
  {
    switch(a3)
    {
      case 4uLL:
        v10 = @"TRANSIT_TIME_FORMAT";
        break;
      case 2uLL:
        v10 = @"WALKING_TIME_FORMAT";
        break;
      case 1uLL:
        v10 = @"DRIVING_TIME_FORMAT";
        break;
      default:
        _AXAssert();
        v11 = &stru_2A21DAE00;
        goto LABEL_10;
    }

    v11 = AXMapKitLocString(v10);
LABEL_10:
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v16 = MEMORY[0x29EDCA5F8];
    v17 = a3;
    AXPerformSafeBlock();
    v12 = v19[3];
    _Block_object_dispose(&v18, 8);
    v13 = MEMORY[0x29EDBA0F8];
    v14 = [(MKPlaceDirectionsCellAccessibility *)self _axSpokenStringForDuration:v12];
    v15 = [v13 localizedStringWithFormat:v11, v14, v16, 3221225472, __64__MKPlaceDirectionsCellAccessibility_updateETAFor_button_label___block_invoke, &unk_29F2CB208, self, &v18, v17];

    [v8 setAccessibilityLabel:v15];
  }

  [(MKPlaceDirectionsCellAccessibility *)self _axUpdateElements];
}

void __64__MKPlaceDirectionsCellAccessibility_updateETAFor_button_label___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) safeValueForKey:@"_quickRouteManager"];
  v2 = [v4 routeETAForTransportType:*(a1 + 48)];
  [v2 safeDoubleForKey:@"travelTime"];
  *(*(*(a1 + 40) + 8) + 24) = v3;
}

@end