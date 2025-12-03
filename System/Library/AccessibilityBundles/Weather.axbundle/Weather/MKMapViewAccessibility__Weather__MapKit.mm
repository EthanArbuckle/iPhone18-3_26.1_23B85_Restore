@interface MKMapViewAccessibility__Weather__MapKit
+ (Class)_axMKAttributionLabelClass;
+ (Class)_axVKFeatureAccessibilityElementClass;
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axApplyModel:(id)model ifElement:(id)element hasLocation:(id)location;
- (BOOL)_axLocationCoordinatesMatch:(id)match location:(id)location;
- (BOOL)_axRequestIsInFlightForLocation:(id)location;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_axAttributionElement;
- (id)_axCacheKeyForLocation:(id)location;
- (id)_axGetCurrentOverlayKeyFromDelegate;
- (id)_axLocationForVKFeatureAccessibilityElement:(id)element;
- (id)_axLocationFromVKLocationCoordinates:(VKLocationCoordinate2D)coordinates;
- (id)_axModelForLocation:(id)location;
- (id)_axVKFeaturePOIElements;
- (id)accessibilityCustomRotors;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyModelToVKFeatureAccessibilityElement:(id)element;
- (void)_axApplyModelsToVKFeatureAccessibilityElementsIfNeeded;
- (void)_axClearInFlightRequests;
- (void)_axInitialize;
- (void)_axScheduleUpdate;
- (void)_axSetAccessibilityModel:(id)model forElementWithLocation:(id)location;
- (void)_axSetRequestIsInFlight:(BOOL)flight forLocation:(id)location;
- (void)_axStoreModel:(id)model location:(id)location;
- (void)_axUpdateLocation:(id)location withModel:(id)model;
- (void)_axUpdateModelsForCurrentOverlayKind;
- (void)addOverlay:(id)overlay level:(int64_t)level;
- (void)mapLayerDidFinishLoadingTiles:(id)tiles;
- (void)setAccessibilityLabel:(id)label;
- (void)setDelegate:(id)delegate;
@end

@implementation MKMapViewAccessibility__Weather__MapKit

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"_mapLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"setDelegate:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceVariable:@"_annotationContainer" withType:"MKAnnotationContainerView"];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"accessibilityElementManager" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"convertPoint:toCoordinateFromView:" withFullSignature:{"{CLLocationCoordinate2D=dd}", "{CGPoint=dd}", "@", 0}];
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

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__axDidToggleAXSetting_ name:*MEMORY[0x29EDC8000] object:0];

  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__axDidToggleAXSetting_ name:*MEMORY[0x29EDC7F48] object:0];

  _axMapLayer = [(MKMapViewAccessibility__Weather__MapKit *)self _axMapLayer];
  v9 = [_axMapLayer safeValueForKey:@"accessibilityElementManager"];

  if (v9)
  {
    defaultCenter3 = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__axUpdateElementsComplete_ name:@"UpdateAccessibilityElementsComplete" object:v9];
  }

  [(MKMapViewAccessibility__Weather__MapKit *)self _axSetIsInitialized:1];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  _axAttributionElement = [(MKMapViewAccessibility__Weather__MapKit *)self _axAttributionElement];
  [_axAttributionElement accessibilityFrame];
  v13.x = x;
  v13.y = y;
  if (!CGRectContainsPoint(v14, v13))
  {
    v11.receiver = self;
    v11.super_class = MKMapViewAccessibility__Weather__MapKit;
    v9 = [(MKMapViewAccessibility__Weather__MapKit *)&v11 _accessibilityHitTest:eventCopy withEvent:x, y];

    _axAttributionElement = v9;
  }

  return _axAttributionElement;
}

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = MKMapViewAccessibility__Weather__MapKit;
  [(MKMapViewAccessibility__Weather__MapKit *)&v4 setDelegate:delegate];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axUpdateModelsForCurrentOverlayKind];
}

- (void)setAccessibilityLabel:(id)label
{
  v6.receiver = self;
  v6.super_class = MKMapViewAccessibility__Weather__MapKit;
  labelCopy = label;
  [(MKMapViewAccessibility__Weather__MapKit *)&v6 setAccessibilityLabel:labelCopy];
  v5 = [(MKMapViewAccessibility__Weather__MapKit *)self _axMapLayer:v6.receiver];
  [v5 setAccessibilityLabel:labelCopy];
}

- (void)addOverlay:(id)overlay level:(int64_t)level
{
  v5.receiver = self;
  v5.super_class = MKMapViewAccessibility__Weather__MapKit;
  [(MKMapViewAccessibility__Weather__MapKit *)&v5 addOverlay:overlay level:level];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axUpdateModelsForCurrentOverlayKind];
}

- (void)mapLayerDidFinishLoadingTiles:(id)tiles
{
  v4.receiver = self;
  v4.super_class = MKMapViewAccessibility__Weather__MapKit;
  [(MKMapViewAccessibility__Weather__MapKit *)&v4 mapLayerDidFinishLoadingTiles:tiles];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axScheduleUpdate];
}

- (id)accessibilityCustomRotors
{
  v15[1] = *MEMORY[0x29EDCA608];
  if (accessibilityCustomRotors_onceToken != -1)
  {
    [MKMapViewAccessibility__Weather__MapKit accessibilityCustomRotors];
  }

  _axFavoritesRotor = [(MKMapViewAccessibility__Weather__MapKit *)self _axFavoritesRotor];
  if (!_axFavoritesRotor)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x29EDC78E8]);
    v5 = AXWeatherLocString(@"FAVORITES_TITLE");
    v9 = MEMORY[0x29EDCA5F8];
    v10 = 3221225472;
    v11 = __68__MKMapViewAccessibility__Weather__MapKit_accessibilityCustomRotors__block_invoke_2;
    v12 = &unk_29F31ED30;
    objc_copyWeak(&v13, &location);
    _axFavoritesRotor = [v4 initWithName:v5 itemSearchBlock:&v9];

    [(MKMapViewAccessibility__Weather__MapKit *)self _axSetFavoritesRotor:_axFavoritesRotor, v9, v10, v11, v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v15[0] = _axFavoritesRotor;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v15 count:1];

  v7 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)_axScheduleUpdate
{
  _axUpdateDebounceTimer = [(MKMapViewAccessibility__Weather__MapKit *)self _axUpdateDebounceTimer];
  [_axUpdateDebounceTimer invalidate];

  v4 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__axApplyModelsToVKFeatureAccessibilityElementsIfNeeded selector:0 userInfo:0 repeats:0.25];
  [(MKMapViewAccessibility__Weather__MapKit *)self _axSetUpdateDebounceTimer:v4];
}

- (void)_axUpdateModelsForCurrentOverlayKind
{
  _axGetCurrentOverlayKeyFromDelegate = [(MKMapViewAccessibility__Weather__MapKit *)self _axGetCurrentOverlayKeyFromDelegate];
  if (_axGetCurrentOverlayKeyFromDelegate)
  {
    _axCurrentOverlayKey = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
    if (!_axCurrentOverlayKey || ([_axGetCurrentOverlayKeyFromDelegate isEqualToString:_axCurrentOverlayKey] & 1) == 0)
    {
      [(MKMapViewAccessibility__Weather__MapKit *)self _axSetCurrentOverlayKey:_axGetCurrentOverlayKeyFromDelegate];
      _axModelCache = [(MKMapViewAccessibility__Weather__MapKit *)self _axModelCache];
      [_axModelCache removeAllObjects];

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
    _axCurrentOverlayKey = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];

    if (!_axCurrentOverlayKey)
    {
      _axGetCurrentOverlayKeyFromDelegate = [(MKMapViewAccessibility__Weather__MapKit *)self _axGetCurrentOverlayKeyFromDelegate];
      if (!_axGetCurrentOverlayKeyFromDelegate)
      {
        goto LABEL_16;
      }

      v5 = _axGetCurrentOverlayKeyFromDelegate;
      [(MKMapViewAccessibility__Weather__MapKit *)self _axSetCurrentOverlayKey:_axGetCurrentOverlayKeyFromDelegate];
    }

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    _axVKFeaturePOIElements = [(MKMapViewAccessibility__Weather__MapKit *)self _axVKFeaturePOIElements];
    v7 = [_axVKFeaturePOIElements countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(_axVKFeaturePOIElements);
          }

          [(MKMapViewAccessibility__Weather__MapKit *)self _axApplyModelToVKFeatureAccessibilityElement:*(*(&v12 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [_axVKFeaturePOIElements countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
}

- (void)_axApplyModelToVKFeatureAccessibilityElement:(id)element
{
  elementCopy = element;
  [objc_opt_class() _axVKFeatureAccessibilityElementClass];
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MKMapViewAccessibility__Weather__MapKit *)self _axLocationForVKFeatureAccessibilityElement:elementCopy];
    if (!v5)
    {
LABEL_15:

      goto LABEL_16;
    }

    v6 = [(MKMapViewAccessibility__Weather__MapKit *)self _axModelForLocation:v5];
    if (v6)
    {
      _axCurrentOverlayKey = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
      if (_axCurrentOverlayKey && ([v6 overlayDescriptionKey], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(_axCurrentOverlayKey, "isEqualToString:", v8), v8, v9))
      {
        expiration = [v6 expiration];
        date = [MEMORY[0x29EDB8DB0] date];
        v12 = [expiration compare:date];

        accessibilityDescription = [v6 accessibilityDescription];
        [elementCopy setAccessibilityValue:accessibilityDescription];

        if (v12 == 1)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        [elementCopy setAccessibilityValue:0];
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

- (void)_axUpdateLocation:(id)location withModel:(id)model
{
  locationCopy = location;
  modelCopy = model;
  _axCurrentOverlayKey = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
  if (_axCurrentOverlayKey)
  {
    overlayDescriptionKey = [modelCopy overlayDescriptionKey];
    v9 = [overlayDescriptionKey isEqualToString:_axCurrentOverlayKey];

    if (v9)
    {
      [(MKMapViewAccessibility__Weather__MapKit *)self _axStoreModel:modelCopy location:locationCopy];
      [(MKMapViewAccessibility__Weather__MapKit *)self _axSetAccessibilityModel:modelCopy forElementWithLocation:locationCopy];
    }
  }
}

- (id)_axLocationFromVKLocationCoordinates:(VKLocationCoordinate2D)coordinates
{
  v3 = [objc_alloc(MEMORY[0x29EDBD238]) initWithLatitude:coordinates.var0 longitude:coordinates.var1];

  return v3;
}

- (id)_axLocationForVKFeatureAccessibilityElement:(id)element
{
  elementCopy = element;
  [objc_opt_class() _axVKFeatureAccessibilityElementClass];
  if (objc_opt_isKindOfClass())
  {
    [elementCopy accessibilityActivationPoint];
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

- (id)_axCacheKeyForLocation:(id)location
{
  v4 = MEMORY[0x29EDBA0F8];
  locationCopy = location;
  [locationCopy coordinate];
  v7 = v6;
  [locationCopy coordinate];
  v9 = v8;

  currentLocale = [MEMORY[0x29EDB8DE0] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  _axCurrentOverlayKey = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
  v13 = [v4 stringWithFormat:@"%.3f %.3f %@ %@", v7, v9, localeIdentifier, _axCurrentOverlayKey];

  return v13;
}

- (BOOL)_axApplyModel:(id)model ifElement:(id)element hasLocation:(id)location
{
  modelCopy = model;
  elementCopy = element;
  locationCopy = location;
  v11 = [(MKMapViewAccessibility__Weather__MapKit *)self _axLocationForVKFeatureAccessibilityElement:elementCopy];
  v12 = [(MKMapViewAccessibility__Weather__MapKit *)self _axLocationCoordinatesMatch:v11 location:locationCopy];

  if (v12)
  {
    _axCurrentOverlayKey = [(MKMapViewAccessibility__Weather__MapKit *)self _axCurrentOverlayKey];
    if (_axCurrentOverlayKey && ([modelCopy overlayDescriptionKey], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(_axCurrentOverlayKey, "isEqualToString:", v14), v14, v15))
    {
      accessibilityDescription = [modelCopy accessibilityDescription];
      [elementCopy setAccessibilityValue:accessibilityDescription];

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

- (void)_axSetAccessibilityModel:(id)model forElementWithLocation:(id)location
{
  v19 = *MEMORY[0x29EDCA608];
  modelCopy = model;
  locationCopy = location;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _axVKFeaturePOIElements = [(MKMapViewAccessibility__Weather__MapKit *)self _axVKFeaturePOIElements];
  v9 = [_axVKFeaturePOIElements countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(_axVKFeaturePOIElements);
      }

      if ([(MKMapViewAccessibility__Weather__MapKit *)self _axApplyModel:modelCopy ifElement:*(*(&v14 + 1) + 8 * v12) hasLocation:locationCopy])
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [_axVKFeaturePOIElements countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (BOOL)_axLocationCoordinatesMatch:(id)match location:(id)location
{
  locationCopy = location;
  matchCopy = match;
  [matchCopy coordinate];
  v8 = v7;
  [locationCopy coordinate];
  v10 = vabdd_f64(v8, v9) < 2.22044605e-16;
  [matchCopy coordinate];
  v12 = v11;

  [locationCopy coordinate];
  v14 = v13;

  return vabdd_f64(v12, v14) < 2.22044605e-16 && v10;
}

- (void)_axStoreModel:(id)model location:(id)location
{
  modelCopy = model;
  v8 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:location];
  _axModelCache = [(MKMapViewAccessibility__Weather__MapKit *)self _axModelCache];
  [_axModelCache setObject:modelCopy forKey:v8];
}

- (id)_axModelForLocation:(id)location
{
  locationCopy = location;
  _axModelCache = [(MKMapViewAccessibility__Weather__MapKit *)self _axModelCache];
  v6 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:locationCopy];

  v7 = [_axModelCache objectForKey:v6];

  return v7;
}

- (BOOL)_axRequestIsInFlightForLocation:(id)location
{
  locationCopy = location;
  _axInFlightRequests = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequests];
  v6 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:locationCopy];

  LOBYTE(locationCopy) = [_axInFlightRequests containsObject:v6];
  return locationCopy;
}

- (void)_axClearInFlightRequests
{
  _axInFlightRequests = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequests];
  [_axInFlightRequests removeAllObjects];

  _axInFlightRequestCleanupTimer = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequestCleanupTimer];
  [_axInFlightRequestCleanupTimer invalidate];

  [(MKMapViewAccessibility__Weather__MapKit *)self _axSetInFlightRequestCleanupTimer:0];
}

- (void)_axSetRequestIsInFlight:(BOOL)flight forLocation:(id)location
{
  flightCopy = flight;
  locationCopy = location;
  if (flightCopy)
  {
    _axInFlightRequests = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequests];
    v8 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:locationCopy];

    [_axInFlightRequests addObject:v8];
    _axInFlightRequestCleanupTimer = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequestCleanupTimer];

    if (_axInFlightRequestCleanupTimer)
    {
      return;
    }

    _axInFlightRequests2 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:self target:sel__axClearInFlightRequests selector:0 userInfo:0 repeats:60.0];
    [(MKMapViewAccessibility__Weather__MapKit *)self _axSetInFlightRequestCleanupTimer:?];
  }

  else
  {
    _axInFlightRequestCleanupTimer2 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequestCleanupTimer];
    [_axInFlightRequestCleanupTimer2 invalidate];

    [(MKMapViewAccessibility__Weather__MapKit *)self _axSetInFlightRequestCleanupTimer:0];
    _axInFlightRequests2 = [(MKMapViewAccessibility__Weather__MapKit *)self _axInFlightRequests];
    v11 = [(MKMapViewAccessibility__Weather__MapKit *)self _axCacheKeyForLocation:locationCopy];

    [_axInFlightRequests2 removeObject:v11];
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
  _axMapLayer = [(MKMapViewAccessibility__Weather__MapKit *)self _axMapLayer];
  [objc_opt_class() _axVKFeatureAccessibilityElementClass];
  accessibilityElements = [_axMapLayer accessibilityElements];
  v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{objc_msgSend(accessibilityElements, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = accessibilityElements;
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
  accessibilityElements = [(MKMapViewAccessibility__Weather__MapKit *)self accessibilityElements];
  reverseObjectEnumerator = [accessibilityElements reverseObjectEnumerator];

  v4 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        [objc_opt_class() _axMKAttributionLabelClass];
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [reverseObjectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
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