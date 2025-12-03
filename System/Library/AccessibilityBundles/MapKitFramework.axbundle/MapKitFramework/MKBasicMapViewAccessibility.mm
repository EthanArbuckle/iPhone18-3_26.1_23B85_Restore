@interface MKBasicMapViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityCustomActions;
- (id)accessibilityCustomRotors;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MKBasicMapViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKBasicMapView" hasInstanceMethod:@"initWithFrame:andGlobe:shouldRasterize:allowsAntialiasing:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "B", "B", "B", 0}];
  [validationsCopy validateClass:@"MKBasicMapView" hasInstanceMethod:@"mapView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"setUserTrackingMode:" withFullSignature:{"v", "q", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = MKBasicMapViewAccessibility;
  [(MKBasicMapViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  accessibilityElements = [(MKBasicMapViewAccessibility *)self accessibilityElements];
}

- (id)accessibilityLabel
{
  v2 = [(MKBasicMapViewAccessibility *)self safeValueForKey:@"mapView"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityElements
{
  v3 = objc_opt_new();
  v4 = [(MKBasicMapViewAccessibility *)self safeValueForKey:@"mapView"];
  v5 = v4;
  if (v4)
  {
    [v4 setAccessibilityContainer:self];
    [v3 addObject:v5];
  }

  v6 = [(MKBasicMapViewAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v7 = [v6 safeValueForKey:@"_annotationContainer"];

  if (v7)
  {
    [v7 setAccessibilityContainer:self];
    [v3 addObject:v7];
  }

  return v3;
}

- (id)accessibilityCustomRotors
{
  v34[4] = *MEMORY[0x29EDCA608];
  if (accessibilityCustomRotors__VKFeatureAccessibilityElementClassOnceToken != -1)
  {
    [MKBasicMapViewAccessibility accessibilityCustomRotors];
  }

  v3 = [(MKBasicMapViewAccessibility *)self safeValueForKey:@"mapView"];
  v4 = [v3 safeBoolForKey:@"accessibilityIsInTourGuideMode"];
  v5 = [v3 safeBoolForKey:@"accessibilityIsShowingRoutes"];
  v6 = [v3 safeBoolForKey:@"accessibilityIsInExplorationMode"];
  v7 = 0;
  if ((v4 & 1) == 0 && (v5 & 1) == 0 && (v6 & 1) == 0)
  {
    v8 = [(MKBasicMapViewAccessibility *)self _accessibilityValueForKey:@"AXPOIRotor"];
    v9 = [(MKBasicMapViewAccessibility *)self _accessibilityValueForKey:@"AXTransitStopsRotor"];
    v10 = [(MKBasicMapViewAccessibility *)self _accessibilityValueForKey:@"AXTransitLinesRotor"];
    v11 = [(MKBasicMapViewAccessibility *)self _accessibilityValueForKey:@"AXCurrentLocationRotor"];
    if (!v8)
    {
      objc_initWeak(&location, self);
      v12 = objc_alloc(MEMORY[0x29EDC78E8]);
      v13 = AXMapKitLocString(@"POI_TITLE");
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 3221225472;
      v31[2] = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_2;
      v31[3] = &unk_29F2CB118;
      objc_copyWeak(&v32, &location);
      v8 = [v12 initWithName:v13 itemSearchBlock:v31];

      [(MKBasicMapViewAccessibility *)self _accessibilitySetRetainedValue:v8 forKey:@"AXPOIRotor"];
      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }

    if (!v9)
    {
      objc_initWeak(&location, self);
      v14 = objc_alloc(MEMORY[0x29EDC78E8]);
      v15 = AXMapKitLocString(@"TRANSIT_STOPS_TITLE");
      v29[0] = MEMORY[0x29EDCA5F8];
      v29[1] = 3221225472;
      v29[2] = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_4;
      v29[3] = &unk_29F2CB118;
      objc_copyWeak(&v30, &location);
      v9 = [v14 initWithName:v15 itemSearchBlock:v29];

      [(MKBasicMapViewAccessibility *)self _accessibilitySetRetainedValue:v9 forKey:@"AXTransitStopsRotor"];
      objc_destroyWeak(&v30);
      objc_destroyWeak(&location);
    }

    if (!v10)
    {
      objc_initWeak(&location, self);
      v16 = objc_alloc(MEMORY[0x29EDC78E8]);
      v17 = AXMapKitLocString(@"TRANSIT_LINES_TITLE");
      v27[0] = MEMORY[0x29EDCA5F8];
      v27[1] = 3221225472;
      v27[2] = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_6;
      v27[3] = &unk_29F2CB118;
      objc_copyWeak(&v28, &location);
      v10 = [v16 initWithName:v17 itemSearchBlock:v27];

      [(MKBasicMapViewAccessibility *)self _accessibilitySetRetainedValue:v10 forKey:@"AXTransitLinesRotor"];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }

    if (!v11)
    {
      objc_initWeak(&location, self);
      v18 = objc_alloc(MEMORY[0x29EDC78E8]);
      v19 = AXMapKitLocString(@"CURRENT_LOCATION_TITLE");
      v22 = MEMORY[0x29EDCA5F8];
      v23 = 3221225472;
      v24 = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_8;
      v25 = &unk_29F2CB118;
      objc_copyWeak(&v26, &location);
      v11 = [v18 initWithName:v19 itemSearchBlock:&v22];

      [(MKBasicMapViewAccessibility *)self _accessibilitySetRetainedValue:v11 forKey:@"AXCurrentLocationRotor", v22, v23, v24, v25];
      objc_destroyWeak(&v26);
      objc_destroyWeak(&location);
    }

    v34[0] = v8;
    v34[1] = v9;
    v34[2] = v10;
    v34[3] = v11;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v34 count:4];
  }

  v20 = *MEMORY[0x29EDCA608];

  return v7;
}

Class __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke()
{
  result = NSClassFromString(&cfstr_Vkfeatureacces.isa);
  accessibilityCustomRotors__VKFeatureAccessibilityElementClass = result;
  return result;
}

id __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained safeValueForKey:@"mapView"];

  v6 = objc_opt_new();
  v7 = [v5 accessibilityElements];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_3;
  v12[3] = &unk_29F2CB0F0;
  v13 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v12];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 _accessibilityCustomRotorResultHelper:v3 array:v8];

  return v10;
}

void __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 safeBoolForKey:@"isPOI"])
  {
    [*(a1 + 32) addObject:v3];
  }
}

id __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained safeValueForKey:@"mapView"];

  v6 = objc_opt_new();
  v7 = [v5 accessibilityElements];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_5;
  v12[3] = &unk_29F2CB0F0;
  v13 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v12];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 _accessibilityCustomRotorResultHelper:v3 array:v8];

  return v10;
}

void __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 safeBoolForKey:@"isTransitStop"])
  {
    [*(a1 + 32) addObject:v3];
  }
}

id __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained safeValueForKey:@"mapView"];

  v6 = objc_opt_new();
  v7 = [v5 accessibilityElements];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_7;
  v12[3] = &unk_29F2CB0F0;
  v13 = v6;
  v8 = v6;
  [v7 enumerateObjectsUsingBlock:v12];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 _accessibilityCustomRotorResultHelper:v3 array:v8];

  return v10;
}

void __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 safeBoolForKey:@"isTransitLine"])
  {
    [*(a1 + 32) addObject:v3];
  }
}

id __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _accessibilityAncestorIsKindOf:objc_opt_class()];

  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_9;
  v21 = &unk_29F2CB140;
  v22 = v5;
  v6 = v5;
  AXPerformSafeBlock();
  v7 = objc_opt_new();
  v8 = [v6 accessibilityElements];
  v13 = MEMORY[0x29EDCA5F8];
  v14 = 3221225472;
  v15 = __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_10;
  v16 = &unk_29F2CB0F0;
  v17 = v7;
  v9 = v7;
  [v8 enumerateObjectsUsingBlock:&v13];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 _accessibilityCustomRotorResultHelper:v3 array:{v9, v13, v14, v15, v16}];

  return v11;
}

void __56__MKBasicMapViewAccessibility_accessibilityCustomRotors__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 safeIntForKey:@"_accessibilityMapFeatureType"] == 28)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)accessibilityCustomActions
{
  v2 = [(MKBasicMapViewAccessibility *)self safeValueForKey:@"mapView"];
  accessibilityCustomActions = [v2 accessibilityCustomActions];

  return accessibilityCustomActions;
}

@end