@interface MKMapViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityScroll:(int64_t)a3;
- (id)_axMapsDelegate;
- (id)accessibilityElements;
- (int64_t)_accessibilitySortPriority;
- (void)_didEndZoom;
@end

@implementation MKMapViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_setCompassVisible:animationAllowed:force:" withFullSignature:{"v", "B", "B", "B", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_mapLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_didEndZoom" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceVariable:@"_basicMapView" withType:"MKBasicMapView"];
  [v3 validateClass:@"MKMapView" hasInstanceVariable:@"_showsZoomControls" withType:"B"];
  [v3 validateClass:@"MKMapView" hasInstanceVariable:@"_compassVisible" withType:"B"];
  [v3 validateClass:@"MKMapView" hasInstanceVariable:@"_compassView" withType:"UIView<MKCompassView>"];
  [v3 validateClass:@"MKAttributionLabel"];
}

- (id)accessibilityElements
{
  v40 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v38 = 0;
  objc_opt_class();
  v4 = [(MKMapViewAccessibility *)self _axMapsDelegate];
  v5 = [v4 safeValueForKey:@"chromeViewController"];
  v6 = __UIAccessibilityCastAsClass();

  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [v6 childViewControllers];
  v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v35 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v34 + 1) + 8 * v11);
      NSClassFromString(&cfstr_Lookaroundpuck.isa);
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_13;
    }

    v7 = [v13 view];
    [v3 addObject:v7];
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

LABEL_13:
  if ([(MKMapViewAccessibility *)self safeBoolForKey:@"_compassVisible"])
  {
    v14 = [(MKMapViewAccessibility *)self safeValueForKey:@"_compassView"];
    v15 = v14;
    if (v14)
    {
      [v14 setAccessibilityContainer:self];
      [v3 addObject:v15];
    }
  }

  v16 = [(MKMapViewAccessibility *)self safeValueForKey:@"_basicMapView"];
  v17 = [MEMORY[0x29EDB8DE8] array];
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 3221225472;
  v28 = __47__MKMapViewAccessibility_accessibilityElements__block_invoke;
  v29 = &unk_29F2CB168;
  v18 = v3;
  v30 = v18;
  v19 = v16;
  v31 = v19;
  v32 = 0;
  v33 = v17;
  v20 = v17;
  v21 = [(MKMapViewAccessibility *)self _accessibilityFindUnsortedSubviewDescendantsPassingTest:&v26];
  if (v19)
  {
    [v19 setAccessibilityContainer:{self, v26, v27, v28, v29, v30, v31, v32}];
    [v18 addObject:v19];
  }

  [(MKMapViewAccessibility *)self safeBoolForKey:@"_showsZoomControls", v26, v27, v28, v29];
  [v18 addObjectsFromArray:v20];
  v22 = v33;
  v23 = v18;

  v24 = *MEMORY[0x29EDCA608];
  return v18;
}

uint64_t __47__MKMapViewAccessibility_accessibilityElements__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (([a1[4] containsObject:v3] & 1) != 0 || a1[5] == v3 || a1[6] == v3)
  {
    v6 = 1;
  }

  else
  {
    if ([v3 isAccessibilityElement])
    {
      NSClassFromString(&cfstr_Mkattributionl_0.isa);
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = 4;
      if (isKindOfClass)
      {
        v5 = 7;
      }

      [a1[v5] addObject:v3];
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v4 = [(MKMapViewAccessibility *)self safeValueForKey:@"_mapLayer"];
  LOBYTE(a3) = [v4 accessibilityScroll:a3];

  return a3;
}

- (int64_t)_accessibilitySortPriority
{
  v2 = __UIAccessibilitySafeClass();
  v3 = [v2 traitCollection];
  if ([v3 horizontalSizeClass] == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (id)_axMapsDelegate
{
  if (objc_opt_respondsToSelector())
  {
    v2 = [MEMORY[0x29EDC7938] safeValueForKey:@"sharedMapsDelegate"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_didEndZoom
{
  v4.receiver = self;
  v4.super_class = MKMapViewAccessibility;
  [(MKMapViewAccessibility *)&v4 _didEndZoom];
  v3 = [(MKMapViewAccessibility *)self safeValueForKey:@"_mapLayer"];
  [v3 _accessibilitySetBoolValue:1 forKey:@"ZoomNotification"];
}

@end