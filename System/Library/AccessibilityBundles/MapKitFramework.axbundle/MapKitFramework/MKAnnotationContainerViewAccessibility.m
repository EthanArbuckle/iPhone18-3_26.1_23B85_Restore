@interface MKAnnotationContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityZoom:(BOOL)a3 point:(CGPoint)a4;
- (id)_accessibilityAnnotationViews;
- (id)_accessibilityFilterVisibleElements:(id)a3;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MKAnnotationContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKAnnotationContainerView" hasInstanceMethod:@"deselectAnnotationView: animated:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"MKAnnotationContainerView" hasInstanceVariable:@"_annotationViews" withType:"NSMutableOrderedSet"];
  [v3 validateClass:@"MKAnnotationView" hasInstanceVariable:@"_calloutView" withType:"MKCalloutView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MKAnnotationContainerViewAccessibility;
  [(MKAnnotationContainerViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MKAnnotationContainerViewAccessibility *)self _accessibilitySetViewIsVisible:0];
}

- (id)accessibilityElements
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(MKAnnotationContainerViewAccessibility *)self _accessibilityAnnotationViews];
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        [(MKAnnotationContainerViewAccessibility *)self accessibilityFrame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        [v9 accessibilityFrame];
        v35.origin.x = v18;
        v35.origin.y = v19;
        v35.size.width = v20;
        v35.size.height = v21;
        v34.origin.x = v11;
        v34.origin.y = v13;
        v34.size.width = v15;
        v34.size.height = v17;
        if (CGRectContainsRect(v34, v35))
        {
          [v9 setAccessibilityContainer:self];
          [v3 axSafelyAddObject:v9];
        }

        if (_CFMZEnabled())
        {
          v22 = [v9 safeUIViewForKey:@"_calloutView"];
          v23 = AXMapKitLocString(@"INFO_PANEL");
          [v22 setAccessibilityLabel:v23];

          [v22 setAccessibilityContainer:self];
          [v3 axSafelyAddObject:v22];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  v24 = [(MKAnnotationContainerViewAccessibility *)self _accessibilityFilterVisibleElements:v3];

  v25 = *MEMORY[0x29EDCA608];

  return v24;
}

- (id)_accessibilityFilterVisibleElements:(id)a3
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%p-_accessibilityFilterVisibleElements", self];
  v35 = 0;
  PossiblyNilObjectForKey = _AXServerCacheGetPossiblyNilObjectForKey();
  v7 = 0;
  v8 = v7;
  if (PossiblyNilObjectForKey)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x29EDB8DE8] array];
    v10 = [(MKAnnotationContainerViewAccessibility *)self window];
    [v10 accessibilityFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = v4;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v32;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * i);
          if (AXRequestingClient() == 11)
          {
            goto LABEL_10;
          }

          [v24 accessibilityFrame];
          v40.origin.x = v25;
          v40.origin.y = v26;
          v40.size.width = v27;
          v40.size.height = v28;
          v39.origin.x = v12;
          v39.origin.y = v14;
          v39.size.width = v16;
          v39.size.height = v18;
          if (CGRectIntersectsRect(v39, v40))
          {
LABEL_10:
            [v9 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v21);
    }

    _AXServerCacheInsertPossiblyNilObjectForKey();
  }

  v29 = *MEMORY[0x29EDCA608];

  return v9;
}

- (id)_accessibilityAnnotationViews
{
  v2 = [(MKAnnotationContainerViewAccessibility *)self safeValueForKey:@"annotationViews"];
  v3 = __UIAccessibilitySafeClass();

  return v3;
}

- (BOOL)_accessibilityZoom:(BOOL)a3 point:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3;
  if (_accessibilityZoom_point___VKMapViewClassOnceToken != -1)
  {
    [MKAnnotationContainerViewAccessibility _accessibilityZoom:point:];
  }

  v8 = [(MKAnnotationContainerViewAccessibility *)self safeValueForKey:@"delegate"];
  v9 = [v8 safeValueForKey:@"_mapView"];

  if (objc_opt_isKindOfClass())
  {
    if (v6)
    {
      v10 = [v9 accessibilityZoomInAtPoint:{x, y}];
    }

    else
    {
      v10 = [v9 accessibilityZoomOutAtPoint:{x, y}];
    }

    v11 = v10;
  }

  else
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA40]);
    v11 = 1;
  }

  return v11;
}

Class __67__MKAnnotationContainerViewAccessibility__accessibilityZoom_point___block_invoke()
{
  result = NSClassFromString(&cfstr_Vkmapview.isa);
  _accessibilityZoom_point___VKMapViewClass = result;
  return result;
}

@end