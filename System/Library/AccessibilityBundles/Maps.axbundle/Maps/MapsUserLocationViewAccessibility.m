@interface MapsUserLocationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityMapSmartDescriptionDictionary;
- (id)_axVLFElements;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (id)vlfPuckModeCircleView;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotatePuck;
@end

@implementation MapsUserLocationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MapsUserLocationView" isKindOfClass:@"MKAnnotationView"];
  [v3 validateClass:@"MapsUserLocationView" hasInstanceMethod:@"isVLFBannerVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MapsUserLocationView" hasInstanceMethod:@"vlfPuckModeCircleView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MapsUserLocationView" hasInstanceVariable:@"_vlfPuckModeCircleView" withType:"VLFPuckModeCircleView"];
  [v3 validateClass:@"MapsUserLocationView" hasInstanceMethod:@"isVLFPuckVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MapsUserLocationView" isKindOfClass:@"_MKPuckAnnotationView"];
  [v3 validateClass:@"_MKPuckAnnotationView" hasInstanceMethod:@"lastLocation" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_MKPuckAnnotationView" hasInstanceVariable:@"_hasValidHeading" withType:"BOOL"];
  [v3 validateClass:@"_MKPuckAnnotationView" hasInstanceMethod:@"heading" withFullSignature:{"d", 0}];
  [v3 validateClass:@"VLFPuckModeCircleView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_distanceFromPoint:toPoint:fromView:withPrecision:" withFullSignature:{"d", "{CGPoint=dd}", "{CGPoint=dd}", "@", "q", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_mapLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"presentationYaw" withFullSignature:{"d", 0}];
}

- (void)_axAnnotatePuck
{
  v3 = [(MapsUserLocationViewAccessibility *)self _axPuck];
  [v3 setIsAccessibilityElement:1];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __52__MapsUserLocationViewAccessibility__axAnnotatePuck__block_invoke;
  v6[3] = &unk_29F2CC418;
  objc_copyWeak(&v7, &location);
  [v3 _setAccessibilityLabelBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __52__MapsUserLocationViewAccessibility__axAnnotatePuck__block_invoke_2;
  v4[3] = &unk_29F2CC4E0;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityTraitsBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

id __52__MapsUserLocationViewAccessibility__axAnnotatePuck__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityLabel];

  return v2;
}

uint64_t __52__MapsUserLocationViewAccessibility__axAnnotatePuck__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained accessibilityTraits];

  return v2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MapsUserLocationViewAccessibility;
  [(MapsUserLocationViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MapsUserLocationViewAccessibility *)self _axAnnotatePuck];
}

- (BOOL)isAccessibilityElement
{
  if ([(MapsUserLocationViewAccessibility *)self _axIsShowingVLFCallout])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = MapsUserLocationViewAccessibility;
  return [(MapsUserLocationViewAccessibility *)&v4 isAccessibilityElement];
}

- (id)accessibilityLabel
{
  if ([(MapsUserLocationViewAccessibility *)self _axIsShowingVLFUI])
  {
    v3 = AXMapsLocString(@"REFINE_MY_LOCATION");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsUserLocationViewAccessibility;
    v3 = [(MapsUserLocationViewAccessibility *)&v5 accessibilityLabel];
  }

  return v3;
}

- (id)accessibilityHint
{
  if ([(MapsUserLocationViewAccessibility *)self _axIsShowingVLFUI])
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MapsUserLocationViewAccessibility;
    v3 = [(MapsUserLocationViewAccessibility *)&v5 accessibilityHint];
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = MapsUserLocationViewAccessibility;
  v3 = [(MapsUserLocationViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(MapsUserLocationViewAccessibility *)self _axIsShowingVLFUI];
  v5 = *MEMORY[0x29EDC7F70];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (id)_axVLFElements
{
  v12[2] = *MEMORY[0x29EDCA608];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 _calloutView];

  if (!v4)
  {
    v5 = AXLogAppAccessibility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(MapsUserLocationViewAccessibility *)v5 _axVLFElements];
    }
  }

  v6 = [(MapsUserLocationViewAccessibility *)self _axPuck];
  v7 = v6;
  if (v6)
  {
    if (v4)
    {
      v12[0] = v6;
      v12[1] = v4;
      v8 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:2];
      goto LABEL_12;
    }
  }

  else
  {
    v9 = AXLogAppAccessibility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(MapsUserLocationViewAccessibility *)v9 _axVLFElements];
    }
  }

  v8 = 0;
LABEL_12:

  v10 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)accessibilityElements
{
  if (![(MapsUserLocationViewAccessibility *)self _axIsShowingVLFCallout]|| ([(MapsUserLocationViewAccessibility *)self _axVLFElements], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5.receiver = self;
    v5.super_class = MapsUserLocationViewAccessibility;
    v3 = [(MapsUserLocationViewAccessibility *)&v5 accessibilityElements];
  }

  return v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v27 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if ([(MapsUserLocationViewAccessibility *)self _axIsShowingVLFCallout])
  {
    v8 = [(MapsUserLocationViewAccessibility *)self _axVLFElements];
    if (v8)
    {
      v25 = 0;
      objc_opt_class();
      v9 = __UIAccessibilityCastAsClass();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            [v15 convertPoint:v9 fromView:{x, y}];
            v16 = [v15 _accessibilityHitTest:v7 withEvent:?];
            if (v16)
            {
              v17 = v16;

              goto LABEL_14;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v20.receiver = self;
  v20.super_class = MapsUserLocationViewAccessibility;
  v17 = [(MapsUserLocationViewAccessibility *)&v20 _accessibilityHitTest:v7 withEvent:x, y];
LABEL_14:

  v18 = *MEMORY[0x29EDCA608];

  return v17;
}

- (id)vlfPuckModeCircleView
{
  v5.receiver = self;
  v5.super_class = MapsUserLocationViewAccessibility;
  v3 = [(MapsUserLocationViewAccessibility *)&v5 vlfPuckModeCircleView];
  [(MapsUserLocationViewAccessibility *)self _axAnnotatePuck];

  return v3;
}

- (id)_accessibilityMapSmartDescriptionDictionary
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v4 = [(MapsUserLocationViewAccessibility *)self safeValueForKey:@"lastLocation"];
  v5 = __UIAccessibilitySafeClass();

  if (v5)
  {
    [v5 coordinate];
    v7 = v6;
    [v5 coordinate];
    if (v7 != -180.0)
    {
      v9 = v8;
      if (v8 != -180.0)
      {
        v10 = [MEMORY[0x29EDBA070] numberWithDouble:v7];
        [v3 setObject:v10 forKeyedSubscript:@"Latitude"];

        v11 = [MEMORY[0x29EDBA070] numberWithDouble:v9];
        [v3 setObject:v11 forKeyedSubscript:@"Longitude"];
      }
    }

    v12 = [MEMORY[0x29EDB8DE0] currentLocale];
    v13 = [v12 _navigation_distanceUsesMetricSystem];

    if (v13)
    {
      v14 = @"POI_DISTANCE_KM";
    }

    else
    {
      v14 = @"POI_DISTANCE_M";
    }

    v15 = AXVectorKitLocString(v14);
    v16 = [MEMORY[0x29EDBA0F8] localizedStringWithFormat:v15, 0];
    [v3 setObject:v16 forKeyedSubscript:@"DistanceAway"];
    if ([(MapsUserLocationViewAccessibility *)self safeBoolForKey:@"_hasValidHeading"])
    {
      [(MapsUserLocationViewAccessibility *)self safeDoubleForKey:@"heading"];
      v17 = AXDescriptionForHeadingInDegrees();
      [v3 setObject:v17 forKeyedSubscript:@"HeadingDirection"];
    }

    v18 = [(MapsUserLocationViewAccessibility *)self safeValueForKey:@"_mapView"];
    v19 = __UIAccessibilitySafeClass();

    if (v19)
    {
      [v19 visibleMapRect];
      v23 = AXMapWidthScaleString(v20, v21, v22);
      [v3 setObject:v23 forKeyedSubscript:@"MapWidthScale"];

      [v19 visibleMapRect];
      v28 = AXMapHeightScaleString(v24, v25, v26, v27);
      [v3 setObject:v28 forKeyedSubscript:@"MapHeightScale"];

      [v19 safeDoubleForKey:@"presentationYaw"];
      v29 = AXDescriptionForHeadingInDegrees();
      if (v29)
      {
        [v3 setObject:v29 forKeyedSubscript:@"MapHeadingDirection"];
      }
    }
  }

  return v3;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v13 = 0;
  v6 = [(MapsUserLocationViewAccessibility *)self safeValueForKey:@"_mapView"];
  v7 = __UIAccessibilitySafeClass();

  v8 = [v7 safeValueForKey:@"_mapLayer"];
  if (v8 && (NSClassFromString(&cfstr_Vkmapview.isa), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 accessibilityZoomInAtPoint:{x, y}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MapsUserLocationViewAccessibility;
    v9 = [(MapsUserLocationViewAccessibility *)&v12 accessibilityZoomInAtPoint:x, y];
  }

  v10 = v9;

  return v10;
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v13 = 0;
  v6 = [(MapsUserLocationViewAccessibility *)self safeValueForKey:@"_mapView"];
  v7 = __UIAccessibilitySafeClass();

  v8 = [v7 safeValueForKey:@"_mapLayer"];
  if (v8 && (NSClassFromString(&cfstr_Vkmapview.isa), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 accessibilityZoomOutAtPoint:{x, y}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MapsUserLocationViewAccessibility;
    v9 = [(MapsUserLocationViewAccessibility *)&v12 accessibilityZoomOutAtPoint:x, y];
  }

  v10 = v9;

  return v10;
}

@end