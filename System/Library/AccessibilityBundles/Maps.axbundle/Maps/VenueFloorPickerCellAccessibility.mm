@interface VenueFloorPickerCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_axVenueFloorViewController;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation VenueFloorPickerCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VenueFloorPickerCell" hasInstanceMethod:@"floorName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VenueFloorPickerCell" hasInstanceMethod:@"floorOrdinal" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VenueFloorPickerCell" hasInstanceMethod:@"isUserLocation" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"VenueFloorPickerCell" hasInstanceMethod:@"lacksSearchResults" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"VenueFloorViewController" hasInstanceMethod:@"isOpen" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"VenueFloorViewController" hasInstanceMethod:@"venue" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKVenueFeatureMarker" hasInstanceMethod:@"buildings" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKVenueBuildingFeatureMarker" hasInstanceMethod:@"floorNames" withFullSignature:{"@", 0}];
}

- (id)_axVenueFloorViewController
{
  objc_opt_class();
  v3 = [(VenueFloorPickerCellAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v4 = __UIAccessibilityCastAsClass();

  _accessibilityViewController = [v4 _accessibilityViewController];

  return _accessibilityViewController;
}

- (BOOL)isAccessibilityElement
{
  _axVenueFloorViewController = [(VenueFloorPickerCellAccessibility *)self _axVenueFloorViewController];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  if ([_axVenueFloorViewController safeBoolForKey:@"isOpen"])
  {
    isSelected = 1;
  }

  else
  {
    isSelected = [v3 isSelected];
  }

  return isSelected;
}

- (id)accessibilityLabel
{
  v32 = *MEMORY[0x29EDCA608];
  _axVenueFloorViewController = [(VenueFloorPickerCellAccessibility *)self _axVenueFloorViewController];
  v4 = [_axVenueFloorViewController safeValueForKey:@"venue"];

  v30 = 0;
  objc_opt_class();
  v24 = v4;
  v5 = [v4 safeValueForKey:@"buildings"];
  v6 = __UIAccessibilityCastAsClass();

  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v30 = 0;
        objc_opt_class();
        v12 = [v11 safeValueForKey:@"floorNames"];
        v13 = __UIAccessibilityCastAsClass();

        if (v30 == 1)
        {
LABEL_22:
          abort();
        }

        v14 = [(VenueFloorPickerCellAccessibility *)self safeValueForKey:@"floorOrdinal"];
        if (v14)
        {
          v30 = 0;
          objc_opt_class();
          v15 = [v13 objectForKeyedSubscript:v14];
          v16 = __UIAccessibilityCastAsClass();

          if (v30 == 1)
          {
            goto LABEL_22;
          }

          if (v16)
          {

            goto LABEL_15;
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v16 = [(VenueFloorPickerCellAccessibility *)self safeStringForKey:@"floorName"];
LABEL_15:
  if ([(VenueFloorPickerCellAccessibility *)self safeBoolForKey:@"isUserLocation"])
  {
    v21 = AXMapsLocString(@"CURRENT_FLOOR");
    v23 = @"__AXStringForVariablesSentinel";
    v17 = __AXStringForVariables();

    v16 = v17;
  }

  if ([(VenueFloorPickerCellAccessibility *)self safeBoolForKey:@"lacksSearchResults", v21, v23])
  {
    v22 = AXMapsLocString(@"NO_POIS_ON_FLOOR");
    v18 = __AXStringForVariables();

    v16 = v18;
  }

  v19 = *MEMORY[0x29EDCA608];

  return v16;
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = VenueFloorPickerCellAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(VenueFloorPickerCellAccessibility *)&v8 accessibilityTraits];
  _axVenueFloorViewController = [(VenueFloorPickerCellAccessibility *)self _axVenueFloorViewController];
  v5 = [_axVenueFloorViewController safeBoolForKey:@"isOpen"];

  if (v5)
  {
    v6 = -1;
  }

  else
  {
    v6 = ~*MEMORY[0x29EDC7FC0];
  }

  return v6 & v3;
}

@end