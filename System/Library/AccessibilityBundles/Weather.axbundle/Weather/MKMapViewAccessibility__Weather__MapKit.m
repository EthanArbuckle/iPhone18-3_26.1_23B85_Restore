@interface MKMapViewAccessibility__Weather__MapKit
+ (Class)_axMKAttributionLabelClass;
+ (Class)_axVKFeatureAccessibilityElementClass;
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axApplyModel:(id)a3 ifElement:(id)a4 hasLocation:(id)a5;
- (BOOL)_axLocationCoordinatesMatch:(id)a3 location:(id)a4;
- (BOOL)_axRequestIsInFlightForLocation:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_axAttributionElement;
- (id)_axCacheKeyForLocation:(id)a3;
- (id)_axGetCurrentOverlayKeyFromDelegate;
- (id)_axLocationForVKFeatureAccessibilityElement:(id)a3;
- (id)_axLocationFromVKLocationCoordinates:(VKLocationCoordinate2D)a3;
- (id)_axModelForLocation:(id)a3;
- (id)_axVKFeaturePOIElements;
- (id)accessibilityCustomRotors;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyModelToVKFeatureAccessibilityElement:(id)a3;
- (void)_axApplyModelsToVKFeatureAccessibilityElementsIfNeeded;
- (void)_axClearInFlightRequests;
- (void)_axInitialize;
- (void)_axScheduleUpdate;
- (void)_axSetAccessibilityModel:(id)a3 forElementWithLocation:(id)a4;
- (void)_axSetRequestIsInFlight:(BOOL)a3 forLocation:(id)a4;
- (void)_axStoreModel:(id)a3 location:(id)a4;
- (void)_axUpdateLocation:(id)a3 withModel:(id)a4;
- (void)_axUpdateModelsForCurrentOverlayKind;
- (void)addOverlay:(id)a3 level:(int64_t)a4;
- (void)mapLayerDidFinishLoadingTiles:(id)a3;
- (void)setAccessibilityLabel:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation MKMapViewAccessibility__Weather__MapKit

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_mapLayer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"setDelegate:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceVariable:@"_annotationContainer" withType:"MKAnnotationContainerView"];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"accessibilityElementManager" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"convertPoint:toCoordinateFromView:" withFullSignature:{"{CLLocationCoordinate2D=dd}", "{CGPoint=dd}", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = MKMapViewAccessibility__Weather__MapKit;
  [(MKMapViewAccessibility__Weather__MapKit *)&v3 _accessibilityLoadAccessibilityInformation];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axUpdateModelsForCurrentOverlayKind];
}

- (void)_axInitialize
{
  v3 = objc_opt_new();
  [(MKMapViewAccessibility__Weather__MapKit *)self _axSetModelCache:v3];

  v4 = objc_opt_new();
  [(MKMapViewAccessibility__Weather__MapKit *)self _axSetInFlightRequests:v4];

  v5 = [MEMORY[0x29EDBA068] defaultCenter];
  [v5 addObserver:self selector:sel__axDidToggleAXSetting_ name:*MEMORY[0x29EDC8000] object:0];

  v6 = [MEMORY[0x29EDBA068] defaultCenter];
  [v6 addObserver:self selector:sel__axDidToggleAXSetting_ name:*MEMORY[0x29EDC7F48] object:0];

  v7 = [(MKMapViewAccessibility__Weather__MapKit *)self _axMapLayer];
  v9 = [v7 safeValueForKey:@"accessibilityElementManager"];

  if (v9)
  {
    v8 = [MEMORY[0x29EDBA068] defaultCenter];
    [v8 addObserver:self selector:sel__axUpdateElementsComplete_ name:@"UpdateAccessibilityElementsComplete" object:v9];
  }

  [(MKMapViewAccessibility__Weather__MapKit *)self _axSetIsInitialized:1];
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(MKMapViewAccessibility__Weather__MapKit *)self _axAttributionElement];
  [v8 accessibilityFrame];
  v13.x = x;
  v13.y = y;
  if (!CGRectContainsPoint(v14, v13))
  {
    v11.receiver = self;
    v11.super_class = MKMapViewAccessibility__Weather__MapKit;
    v9 = [(MKMapViewAccessibility__Weather__MapKit *)&v11 _accessibilityHitTest:v7 withEvent:x, y];

    v8 = v9;
  }

  return v8;
}

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = MKMapViewAccessibility__Weather__MapKit;
  [(MKMapViewAccessibility__Weather__MapKit *)&v4 setDelegate:a3];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axUpdateModelsForCurrentOverlayKind];
}

- (void)setAccessibilityLabel:(id)a3
{
  v6.receiver = self;
  v6.super_class = MKMapViewAccessibility__Weather__MapKit;
  v4 = a3;
  [(MKMapViewAccessibility__Weather__MapKit *)&v6 setAccessibilityLabel:v4];
  v5 = [(MKMapViewAccessibility__Weather__MapKit *)self _axMapLayer:v6.receiver];
  [v5 setAccessibilityLabel:v4];
}

- (void)addOverlay:(id)a3 level:(int64_t)a4
{
  v5.receiver = self;
  v5.super_class = MKMapViewAccessibility__Weather__MapKit;
  [(MKMapViewAccessibility__Weather__MapKit *)&v5 addOverlay:a3 level:a4];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axUpdateModelsForCurrentOverlayKind];
}

- (void)mapLayerDidFinishLoadingTiles:(id)a3
{
  v4.receiver = self;
  v4.super_class = MKMapViewAccessibility__Weather__MapKit;
  [(MKMapViewAccessibility__Weather__MapKit *)&v4 mapLayerDidFinishLoadingTiles:a3];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axScheduleUpdate];
}

- (id)accessibilityCustomRotors
{
  v15[1] = *MEMORY[0x29EDCA608];
  if (accessibilityCustomRotors_onceToken != -1)
  {
    [MKMapViewAccessibility__Weather__MapKit accessibilityCustomRotors];
  }

  v3 = [(MKMapViewAccessibility__Weather__MapKit *)self _axFavoritesRotor];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x29EDC78E8]);
    v5 = AXWeatherLocString(@"FAVORITES_TITLE");
    v9 = MEMORY[0x29EDCA5F8];
    v10 = 3221225472;
    v11 = __68__MKMapViewAccessibility__Weather__MapKit_accessibilityCustomRotors__block_invoke_2;
    v12 = &unk_29F31ED30;
    objc_copyWeak(&v13, &location);
    v3 = [v4 initWithName:v5 itemSearchBlock:&v9];

    [(MKMapViewAccessibility__Weather__MapKit *)self _axSetFavoritesRotor:v3, v9, v10, v11, v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v15[0] = v3;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)_axScheduleUpdate
{
  v3 = [(MKMapViewAccessibility__Weather__MapKit *)self _axUpdateDebounceTimer];
  [v3 invalidate];

  v4 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__axApplyModelsToVKFeatureAccessibilityElementsIfNeeded selector:0 userInfo:0 repeats:0.25];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axSetUpdateDebounceTimer:v4];
}

- (void)_axUpdateModelsForCurrentOverlayKind
{
  v5 = [(MKMapViewAccessibility__Weather__MapKit *)self _axGetCurrentOverlayKeyFromDelegate];
  if (v5)
  {
    v3 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
    if (!v3 || ([v5 isEqualToString:v3] & 1) == 0)
    {
      [(MKMapViewAccessibility__Weather__MapKit *)self _axSetCurrentOverlayKey:v5];
      v4 = [(MKMapViewAccessibility__Weather__MapKit *)self _axModelCache];
      [v4 removeAllObjects];

      [(MKMapViewAccessibility__Weather__MapKit *)self _axApplyModelsToVKFeatureAccessibilityElementsIfNeeded];
    }
  }
}

- (id)_axGetCurrentOverlayKeyFromDelegate
{
  v3 = [(MKMapViewAccessibility__Weather__MapKit *)self safeValueForKey:@"delegate"];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 accessibilityModelOverlayKeyForMapView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_axApplyModelsToVKFeatureAccessibilityElementsIfNeeded
{
  v17 = *MEMORY[0x29EDCA608];
  if (![(MKMapViewAccessibility__Weather__MapKit *)self _axIsInitialized])
  {
    [(MKMapViewAccessibility__Weather__MapKit *)self _axInitialize];
  }

  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    v3 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];

    if (!v3)
    {
      v4 = [(MKMapViewAccessibility__Weather__MapKit *)self _axGetCurrentOverlayKeyFromDelegate];
      if (!v4)
      {
        goto LABEL_16;
      }

      v5 = v4;
      [(MKMapViewAccessibility__Weather__MapKit *)self _axSetCurrentOverlayKey:v4];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [(MKMapViewAccessibility__Weather__MapKit *)self _axVKFeaturePOIElements];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [(MKMapViewAccessibility__Weather__MapKit *)self _axApplyModelToVKFeatureAccessibilityElement:*(*(&v12 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
}

- (void)_axApplyModelToVKFeatureAccessibilityElement:(id)a3
{
  v4 = a3;
  [objc_opt_class() _axVKFeatureAccessibilityElementClass];
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MKMapViewAccessibility__Weather__MapKit *)self _axLocationForVKFeatureAccessibilityElement:v4];
    if (!v5)
    {
LABEL_15:

      goto LABEL_16;
    }

    v6 = [(MKMapViewAccessibility__Weather__MapKit *)self _axModelForLocation:v5];
    if (v6)
    {
      v7 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
      if (v7 && ([v6 overlayDescriptionKey], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v9))
      {
        v10 = [v6 expiration];
        v11 = [MEMORY[0x29EDB8DB0] date];
        v12 = [v10 compare:v11];

        v13 = [v6 accessibilityDescription];
        [v4 setAccessibilityValue:v13];

        if (v12 == 1)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        [v4 setAccessibilityValue:0];
      }
    }

    v14 = [(MKMapViewAccessibility__Weather__MapKit *)self safeValueForKey:@"delegate"];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, self);
      if (![(MKMapViewAccessibility__Weather__MapKit *)self _axRequestIsInFlightForLocation:v5])
      {
        v15 = MEMORY[0x29EDCA5F8];
        v16 = 3221225472;
        v17 = __88__MKMapViewAccessibility__Weather__MapKit__axApplyModelToVKFeatureAccessibilityElement___block_invoke;
        v18 = &unk_29F31ED58;
        objc_copyWeak(&v19, &location);
        [v14 mapView:self requestedAccessibilityModelForLocation:v5 completion:&v15];
        [(MKMapViewAccessibility__Weather__MapKit *)self _axSetRequestIsInFlight:1 forLocation:v5, v15, v16, v17, v18];
        objc_destroyWeak(&v19);
      }

      objc_destroyWeak(&location);
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)_axUpdateLocation:(id)a3 withModel:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
  if (v7)
  {
    v8 = [v6 overlayDescriptionKey];
    v9 = [v8 isEqualToString:v7];

    if (v9)
    {
      [(MKMapViewAccessibility__Weather__MapKit *)self _axStoreModel:v6 location:v10];
      [(MKMapViewAccessibility__Weather__MapKit *)self _axSetAccessibilityModel:v6 forElementWithLocation:v10];
    }
  }
}

- (id)_axLocationFromVKLocationCoordinates:(VKLocationCoordinate2D)a3
{
  v3 = [objc_alloc(MEMORY[0x29EDBD238]) initWithLatitude:a3.var0 longitude:a3.var1];

  return v3;
}

- (id)_axLocationForVKFeatureAccessibilityElement:(id)a3
{
  v4 = a3;
  [objc_opt_class() _axVKFeatureAccessibilityElementClass];
  if (objc_opt_isKindOfClass())
  {
    [v4 accessibilityActivationPoint];
    UIAccessibilityPointToPoint();
    [(MKMapViewAccessibility__Weather__MapKit *)self convertPoint:self toCoordinateFromView:?];
    v5 = [(MKMapViewAccessibility__Weather__MapKit *)self _axLocationFromVKLocationCoordinates:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_axCacheKeyForLocation:(id)a3
{
  v4 = MEMORY[0x29EDBA0F8];
  v5 = a3;
  [v5 coordinate];
  v7 = v6;
  [v5 coordinate];
  v9 = v8;

  v10 = [MEMORY[0x29EDB8DE0] currentLocale];
  v11 = [v10 localeIdentifier];
  v12 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
  v13 = [v4 stringWithFormat:@"%.3f %.3f %@ %@", v7, v9, v11, v12];

  return v13;
}

- (BOOL)_axApplyModel:(id)a3 ifElement:(id)a4 hasLocation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MKMapViewAccessibility__Weather__MapKit *)self _axLocationForVKFeatureAccessibilityElement:v9];
  v12 = [(MKMapViewAccessibility__Weather__MapKit *)self _axLocationCoordinatesMatch:v11 location:v10];

  if (v12)
  {
    v13 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
    if (v13 && ([v8 overlayDescriptionKey], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, v15))
    {
      v16 = [v8 accessibilityDescription];
      [v9 setAccessibilityValue:v16];

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_axSetAccessibilityModel:(id)a3 forElementWithLocation:(id)a4
{
  v19 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(MKMapViewAccessibility__Weather__MapKit *)self _axVKFeaturePOIElements];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v15 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if ([(MKMapViewAccessibility__Weather__MapKit *)self _axApplyModel:v6 ifElement:*(*(&v14 + 1) + 8 * v12) hasLocation:v7])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = *MEMORY[0x29EDCA608];
}

- (BOOL)_axLocationCoordinatesMatch:(id)a3 location:(id)a4
{
  v5 = a4;
  v6 = a3;
  [v6 coordinate];
  v8 = v7;
  [v5 coordinate];
  v10 = vabdd_f64(v8, v9) < 2.22044605e-16;
  [v6 coordinate];
  v12 = v11;

  [v5 coordinate];
  v14 = v13;

  return vabdd_f64(v12, v14) < 2.22044605e-16 && v10;
}

- (void)_axStoreModel:(id)a3 location:(id)a4
{
  v6 = a3;
  v8 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:a4];
  v7 = [(MKMapViewAccessibility__Weather__MapKit *)self _axModelCache];
  [v7 setObject:v6 forKey:v8];
}

- (id)_axModelForLocation:(id)a3
{
  v4 = a3;
  v5 = [(MKMapViewAccessibility__Weather__MapKit *)self _axModelCache];
  v6 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:v4];

  v7 = [v5 objectForKey:v6];

  return v7;
}

- (BOOL)_axRequestIsInFlightForLocation:(id)a3
{
  v4 = a3;
  v5 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequests];
  v6 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:v4];

  LOBYTE(v4) = [v5 containsObject:v6];
  return v4;
}

- (void)_axClearInFlightRequests
{
  v3 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequests];
  [v3 removeAllObjects];

  v4 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequestCleanupTimer];
  [v4 invalidate];

  [(MKMapViewAccessibility__Weather__MapKit *)self _axSetInFlightRequestCleanupTimer:0];
}

- (void)_axSetRequestIsInFlight:(BOOL)a3 forLocation:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequests];
    v8 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:v6];

    [v7 addObject:v8];
    v9 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequestCleanupTimer];

    if (v9)
    {
      return;
    }

    v12 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__axClearInFlightRequests selector:0 userInfo:0 repeats:60.0];
    [(MKMapViewAccessibility__Weather__MapKit *)self _axSetInFlightRequestCleanupTimer:?];
  }

  else
  {
    v10 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequestCleanupTimer];
    [v10 invalidate];

    [(MKMapViewAccessibility__Weather__MapKit *)self _axSetInFlightRequestCleanupTimer:0];
    v12 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequests];
    v11 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:v6];

    [v12 removeObject:v11];
  }
}

+ (Class)_axVKFeatureAccessibilityElementClass
{
  if (_axVKFeatureAccessibilityElementClass__VKFeatureAccessibilityElementClassOnceToken != -1)
  {
    +[MKMapViewAccessibility__Weather__MapKit _axVKFeatureAccessibilityElementClass];
  }

  v3 = _axVKFeatureAccessibilityElementClass__VKFeatureAccessibilityElementClass;

  return v3;
}

+ (Class)_axMKAttributionLabelClass
{
  if (_axMKAttributionLabelClass__MKAttributionLabelClassOnceToken != -1)
  {
    +[MKMapViewAccessibility__Weather__MapKit _axMKAttributionLabelClass];
  }

  v3 = _axMKAttributionLabelClass__MKAttributionLabelClass;

  return v3;
}

- (id)_axVKFeaturePOIElements
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = [(MKMapViewAccessibility__Weather__MapKit *)self _axMapLayer];
  [objc_opt_class() _axVKFeatureAccessibilityElementClass];
  v3 = [v2 accessibilityElements];
  v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 safeBoolForKey:{@"isPOI", v14}])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x29EDCA608];

  return v11;
}

- (id)_axAttributionElement
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(MKMapViewAccessibility__Weather__MapKit *)self accessibilityElements];
  v3 = [v2 reverseObjectEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [objc_opt_class() _axMKAttributionLabelClass];
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x29EDCA608];

  return v9;
}

@end