@interface VKMapViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- ($01BB1521EC52D44A8E7628F5261DCEC8)_axBoundsOfElements;
- ($01BB1521EC52D44A8E7628F5261DCEC8)accessibilityBounds;
- ($F24F406B2B787EFB06265DBA3D28CBD5)accessibilityCenter;
- ($F24F406B2B787EFB06265DBA3D28CBD5)accessibilityConvertScreenPointToCoordinate:(CGPoint)coordinate;
- (BOOL)_accessibilityMapsExplorationIsActive;
- (BOOL)_accessibilityMapsExplorationIsPending;
- (BOOL)_axElementsInvalidForVisibleBounds;
- (BOOL)_axShouldSummarizeVisibleBounds;
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityIsInTourGuideMode;
- (BOOL)accessibilityIsShowingCalloutAnnotationView;
- (BOOL)accessibilityIsShowingRoutes;
- (BOOL)accessibilityMapLoadingComplete;
- (BOOL)accessibilityPerformEscape;
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (BOOL)accessibilityViewBoundsContainsPathPoint:(CGPoint)point;
- (BOOL)accessibilityZoom:(double)zoom point:(CGPoint)point animated:(BOOL)animated completionHandler:(id)handler;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)point;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)point;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityMapViewPointForZoomPoint:(CGPoint)point;
- (CGPoint)_axIntersectionBetweenRoad:(id)road andOtherRoad:(id)otherRoad;
- (CGPoint)accessibilityConvertCoordinateToWindow:(id)window;
- (CGRect)accessibilityPositionFrameForElement:(id)element;
- (CGRect)accessibilityVisibleAXViewBounds;
- (double)accessibilityYaw;
- (float)accessibilityDistance:(CGPoint)distance forAngle:(float)angle toRoad:(id)road withElement:(id)element;
- (float)accessibilityDistanceToEndOfRoad:(CGPoint)road forAngle:(float)angle withElement:(id)element;
- (float)accessibilityRealDistanceBetweenPoint:(CGPoint)point screenPoint2:(CGPoint)point2;
- (float)accessibilityZoomLevel;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilityMapsExplorationCurrentIntersectionDescription;
- (id)_accessibilityMapsExplorationCurrentRoadsWithAngles;
- (id)_accessibilityMapsExplorationDecreaseVerbosity;
- (id)_accessibilityMapsExplorationIncreaseVerbosity;
- (id)_accessibilityScrollStatus;
- (id)_axElements;
- (id)_axMapViewDelegate;
- (id)_axMapsDelegate;
- (id)_axTourGuideElement;
- (id)_axTourGuideManager;
- (id)_axUserLocationMarker;
- (id)_axWalkAssistManager;
- (id)_axWindow;
- (id)accessibilityElementManager;
- (id)accessibilityElements;
- (id)accessibilityHint;
- (id)accessibilityIdentifier;
- (id)accessibilityIntersectorsForRoad:(id)road withPoint:(CGPoint)point;
- (id)accessibilityLabel;
- (id)accessibilityTourStatus;
- (id)accessibilityUpcomingRoadsForPoint:(CGPoint)point forAngle:(float)angle withElement:(id)element;
- (id)initShouldRasterize:(BOOL)rasterize inBackground:(BOOL)background contentScale:(double)scale auditToken:(id)token mapViewPurpose:(int64_t)purpose allowsAntialiasing:(BOOL)antialiasing;
- (int)_accessibilityMapType;
- (int64_t)_axOrientationOfElements;
- (int64_t)_axTrackingMode;
- (int64_t)accessibilityContainerType;
- (int64_t)accessibilityOrientation;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMapViewDidChangeRegionAnimated:(BOOL)animated;
- (void)_accessibilityMapViewDidChangeVisibleRegion;
- (void)_accessibilityMapsExplorationContinueWithVertexIndex:(unint64_t)index;
- (void)_accessibilityMapsExplorationEnd;
- (void)_accessibilityMapsExplorationRecordTouchpoint:(CGPoint)touchpoint;
- (void)_axHandleLabelsDidLayout;
- (void)_axInitializeTimers;
- (void)_axLoadAccessibility;
- (void)_axMapVisibleRegionDidChange;
- (void)_axMapsAccessibilityPotentiallyEnabled;
- (void)_axStartListeningForMapAccessibilityEnabled;
- (void)_axStartListeningForMapVisibleRegionChanged;
- (void)_axStartListeningForUpdateAccessibilityElementsComplete;
- (void)_axStartListeningForUserTrackingModeChange;
- (void)_axSummaryForVisibleBounds;
- (void)_axUpdateElements;
- (void)_axUpdateElementsComplete:(id)complete;
- (void)_axUserTrackingModeChange:(id)change;
- (void)accessibilitySetMapZoomLevel:(double)level center:(id)center yaw:(double)yaw completionHandler:(id)handler;
- (void)didUpdateSceneStatus:(unsigned __int8)status;
- (void)labelManagerDidLayout;
- (void)setCurrentLocationText:(id)text;
- (void)setMapType:(int)type;
@end

@implementation VKMapViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"initShouldRasterize:inBackground:contentScale:auditToken:mapViewPurpose:allowsAntialiasing:" withFullSignature:{"@", "B", "B", "d", "@", "q", "B", 0}];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"setMapType:" withFullSignature:{"v", "i", 0}];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"zoomToLevel: withFocusPoint:" withFullSignature:{"v", "d", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"zoom: withFocusPoint: completionHandler:" withFullSignature:{"v", "d", "{CGPoint=dd}", "@?", 0}];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"setCurrentLocationText:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"mapDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"cameraDelegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"didUpdateSceneStatus:" withFullSignature:{"v", "C", 0}];
  [validationsCopy validateClass:@"VKMapView" hasInstanceMethod:@"labelManagerDidLayout" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"VKMapCameraController"];
  [validationsCopy validateClass:@"VKMapView" hasInstanceVariable:@"_navigationCameraController" withType:"VKNavCameraController"];
  [validationsCopy validateClass:@"VKMapView" hasInstanceVariable:@"_mapCameraController" withType:"VKMapCameraController"];
  [validationsCopy validateClass:@"VKMapCameraController" hasInstanceMethod:@"tapZoom: levels: completionHandler:" withFullSignature:{"v", "{CGPoint=dd}", "d", "@?", 0}];
  [validationsCopy validateClass:@"VKScreenCameraController"];
  [validationsCopy validateClass:@"VKMapCameraController" isKindOfClass:@"VKScreenCameraController"];
  [validationsCopy validateClass:@"VKScreenCameraController" hasInstanceMethod:@"startPanningAtPoint: panAtStartPoint:" withFullSignature:{"v", "{CGPoint=dd}", "B", 0}];
  [validationsCopy validateClass:@"VKScreenCameraController" hasInstanceMethod:@"updatePanWithTranslation:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"VKScreenCameraController" hasInstanceVariable:@"_gestureCameraControllerBehavior" withType:"VKGestureCameraBehavior"];
  objc_opt_class();
  [validationsCopy validateClass:@"VKGestureCameraBehavior" hasInstanceVariable:@"_panLastScreenPoint" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [validationsCopy validateClass:@"VKMapView" hasInstanceVariable:@"_canvas" withType:"VKMapCanvas"];
  [validationsCopy validateClass:@"VKScreenCanvas"];
  [validationsCopy validateClass:@"VKMapCanvas" isKindOfClass:@"VKScreenCanvas"];
  [validationsCopy validateClass:@"VKCamera"];
  objc_opt_class();
  [validationsCopy validateClass:@"VKScreenCanvas" hasInstanceVariable:@"_vkCamera" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"userTrackingMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"setUserTrackingMode:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"MKUserLocation"];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"_zoomLevel" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"_maximumZoomLevel" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MKMapView" hasInstanceMethod:@"_minimumZoomLevel" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"MKAnnotationContainerView" hasInstanceMethod:@"userLocationView" withFullSignature:{"@", 0}];
}

- (void)_axInitializeTimers
{
  _axMapLabelLayoutTimer = [(VKMapViewAccessibility *)self _axMapLabelLayoutTimer];

  if (!_axMapLabelLayoutTimer)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v5 = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(VKMapViewAccessibility *)self _axSetMapLabelLayoutTimer:v5];
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VKMapViewAccessibility;
  [(VKMapViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VKMapViewAccessibility *)self _accessibilityMapViewDidChangeVisibleRegion];
  [(VKMapViewAccessibility *)self _axInitializeTimers];
}

- (id)accessibilityElements
{
  v41[1] = *MEMORY[0x29EDCA608];
  [(VKMapViewAccessibility *)self _axLoadAccessibility];
  if ([(VKMapViewAccessibility *)self accessibilityIsShowingRoutes])
  {
    accessibilityOnlyShowRouteNodesDuringTransit = [(VKMapViewAccessibility *)self accessibilityOnlyShowRouteNodesDuringTransit];
  }

  else
  {
    accessibilityOnlyShowRouteNodesDuringTransit = 0;
  }

  accessibilityIsInTourGuideMode = [(VKMapViewAccessibility *)self accessibilityIsInTourGuideMode];
  accessibilityIsShowingCalloutAnnotationView = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  v6 = AXRequiresMapAccessibilityPurelyForAutomation();
  v7 = MEMORY[0x29EDC7620];
  v8 = *MEMORY[0x29EDC7620];
  if (v6 || !accessibilityIsInTourGuideMode && !accessibilityIsShowingCalloutAnnotationView)
  {
    _axElements2 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:v8];
    if ([(VKMapViewAccessibility *)self _accessibilityMapsExplorationIsActive])
    {
      array = [MEMORY[0x29EDB8DE8] array];
      accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
      currentExplorationElement = [accessibilityElementManager currentExplorationElement];
      [array axSafelyAddObject:currentExplorationElement];

      accessibilityElementManager2 = [(VKMapViewAccessibility *)self accessibilityElementManager];
      neighborExplorationElements = [accessibilityElementManager2 neighborExplorationElements];
      [array axSafelyAddObjectsFromArray:neighborExplorationElements];

      v17 = array;
      v18 = +[VKMapDebugView sharedInstance];
      accessibilityElementManager3 = [(VKMapViewAccessibility *)self accessibilityElementManager];
      currentExplorationVertex = [accessibilityElementManager3 currentExplorationVertex];
      [v18 setCurrentExplorationVertex:currentExplorationVertex];

      _axElements2 = v17;
    }

    else if (!_axElements2)
    {
      if (accessibilityOnlyShowRouteNodesDuringTransit)
      {
        v21 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        _axElements = [(VKMapViewAccessibility *)self _axElements];
        v23 = [_axElements countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v23)
        {
          v24 = *v37;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(_axElements);
              }

              v26 = *(*(&v36 + 1) + 8 * i);
              if ([v26 isRouteEta])
              {
                [v21 addObject:v26];
              }
            }

            v23 = [_axElements countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v23);
        }

        _axElements2 = [v21 copy];
      }

      else
      {
        _axElements2 = [(VKMapViewAccessibility *)self _axElements];
      }

      [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:_axElements2 forKey:*v7];
    }

    _axTourGuideElement = +[VKMapDebugView sharedInstance];
    [_axTourGuideElement removePointsAndPaths];
    v27 = objc_opt_class();
    v28 = AXVKAccessibilityPaths(_axElements2, v27, 25);
    [_axTourGuideElement addBuildingPaths:v28];

    v29 = objc_opt_class();
    v30 = AXVKAccessibilityPaths(_axElements2, v29, 0);
    [_axTourGuideElement addPOIPaths:v30];

    v31 = objc_opt_class();
    v32 = AXVKAccessibilityPaths(_axElements2, v31, 1);
    [_axTourGuideElement addRoadPaths:v32];

    v33 = objc_opt_class();
    v34 = AXVKAccessibilityPoints(_axElements2, v33, 1);
    [_axTourGuideElement addRoadPoints:v34];
  }

  else
  {
    [(VKMapViewAccessibility *)self _accessibilityRemoveValueForKey:v8];
    if (accessibilityIsShowingCalloutAnnotationView || accessibilityOnlyShowRouteNodesDuringTransit)
    {
      v9 = +[VKMapDebugView sharedInstance];
      [v9 removePointsAndPaths];
    }

    if (!accessibilityIsInTourGuideMode)
    {
      _axElements2 = 0;
      goto LABEL_29;
    }

    _axTourGuideElement = [(VKMapViewAccessibility *)self _axTourGuideElement];
    v41[0] = _axTourGuideElement;
    _axElements2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v41 count:1];
  }

LABEL_29:

  return _axElements2;
}

- (CGPoint)accessibilityConvertCoordinateToWindow:(id)window
{
  var1 = window.var1;
  var0 = window.var0;
  _axWindow = [(VKMapViewAccessibility *)self _axWindow];
  layer = [_axWindow layer];
  [(VKMapViewAccessibility *)self convertCoordinate:layer toPointToLayer:var0, var1];
  v9 = v8;
  v11 = v10;

  if (_axWindow)
  {
    [_axWindow convertPoint:0 toWindow:{v9, v11}];
    v9 = v12;
    v11 = v13;
  }

  v14 = v9;
  v15 = v11;
  result.y = v15;
  result.x = v14;
  return result;
}

- (BOOL)accessibilityActivate
{
  if ([(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView])
  {

    return [(VKMapViewAccessibility *)self accessibilityPerformEscape];
  }

  else
  {
    v4.receiver = self;
    v4.super_class = VKMapViewAccessibility;
    return [(VKMapViewAccessibility *)&v4 accessibilityActivate];
  }
}

- (id)accessibilityHint
{
  isAccessibilityElement = [(VKMapViewAccessibility *)self isAccessibilityElement];
  accessibilityIsShowingCalloutAnnotationView = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v10.receiver = self;
  v10.super_class = VKMapViewAccessibility;
  accessibilityHint = [(VKMapViewAccessibility *)&v10 accessibilityHint];
  if ([(VKMapViewAccessibility *)self accessibilityMapLoadingComplete]|| !IsVoiceOverRunning)
  {
    if (!isAccessibilityElement || !IsVoiceOverRunning)
    {
      goto LABEL_8;
    }

    if (accessibilityIsShowingCalloutAnnotationView)
    {
      UIKitAccessibilityLocalizedString();
    }

    else
    {
      AXVectorKitLocString(@"MAP_NO_ELEMENTS_HINT");
    }
    v7 = ;
  }

  else
  {
    v7 = AXVectorKitLocString(@"MAP_LOADING_HINT");
  }

  v8 = v7;

  accessibilityHint = v8;
LABEL_8:

  return accessibilityHint;
}

- (id)accessibilityLabel
{
  isAccessibilityElement = [(VKMapViewAccessibility *)self isAccessibilityElement];
  accessibilityIsShowingCalloutAnnotationView = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v10.receiver = self;
  v10.super_class = VKMapViewAccessibility;
  accessibilityLabel = [(VKMapViewAccessibility *)&v10 accessibilityLabel];
  if (isAccessibilityElement && accessibilityIsShowingCalloutAnnotationView && IsVoiceOverRunning)
  {
    UIKitAccessibilityLocalizedString();
    accessibilityLabel = _axCurrentLocationText = accessibilityLabel;
LABEL_8:

    goto LABEL_9;
  }

  if (AXDoesRequestingClientDeserveAutomation())
  {
    _axCurrentLocationText = [(VKMapViewAccessibility *)self _axCurrentLocationText];
    if ([_axCurrentLocationText length])
    {
      v8 = _axCurrentLocationText;

      accessibilityLabel = v8;
    }

    goto LABEL_8;
  }

  if (!accessibilityLabel)
  {
    accessibilityLabel = AXVectorKitLocString(@"MAP");
  }

LABEL_9:

  return accessibilityLabel;
}

- (id)accessibilityIdentifier
{
  accessibilityIsShowingCalloutAnnotationView = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  v6.receiver = self;
  v6.super_class = VKMapViewAccessibility;
  accessibilityIdentifier = [(VKMapViewAccessibility *)&v6 accessibilityIdentifier];
  if (accessibilityIsShowingCalloutAnnotationView)
  {

    accessibilityIdentifier = @"PopoverDismissRegion";
  }

  return accessibilityIdentifier;
}

- (BOOL)accessibilityPerformEscape
{
  if ([(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView])
  {
    _axMapViewDelegate = [(VKMapViewAccessibility *)self _axMapViewDelegate];
    v4 = [_axMapViewDelegate safeValueForKey:@"_annotationContainer"];
    accessibilityPerformEscape = [v4 accessibilityPerformEscape];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VKMapViewAccessibility;
    return [(VKMapViewAccessibility *)&v7 accessibilityPerformEscape];
  }

  return accessibilityPerformEscape;
}

- (CGRect)accessibilityPositionFrameForElement:(id)element
{
  if (UIAccessibilityIsVoiceOverRunning() && ![(VKMapViewAccessibility *)self accessibilityMapTypeSupportsAccessibility])
  {
    v16 = *MEMORY[0x29EDB90E0];
    v17 = *(MEMORY[0x29EDB90E0] + 8);
    v22 = *(MEMORY[0x29EDB90E0] + 16);
    v23 = *(MEMORY[0x29EDB90E0] + 24);
  }

  else
  {
    VKLocationCoordinate2DForVKPoint();
    v5 = v4;
    v7 = v6;
    VKLocationCoordinate2DForVKPoint();
    v9 = v8;
    v11 = v10;
    [(VKMapViewAccessibility *)self convertCoordinate:self toPointToLayer:v5, v7];
    v13 = v12;
    v15 = v14;
    [(VKMapViewAccessibility *)self convertCoordinate:self toPointToLayer:v9, v11];
    v18 = v16;
    v19 = v17;
    v20 = v13 <= v16;
    if (v13 < v16)
    {
      v16 = v13;
    }

    if (!v20)
    {
      v18 = v13;
    }

    v21 = v15 <= v17;
    if (v15 < v17)
    {
      v17 = v15;
    }

    if (!v21)
    {
      v19 = v15;
    }

    v22 = v18 - v16;
    v23 = v19 - v17;
  }

  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (float)accessibilityRealDistanceBetweenPoint:(CGPoint)point screenPoint2:(CGPoint)point2
{
  y = point2.y;
  x = point2.x;
  [(VKMapViewAccessibility *)self accessibilityConvertScreenPointToCoordinate:point.x, point.y];
  v8 = v7;
  v10 = v9;
  [(VKMapViewAccessibility *)self accessibilityConvertScreenPointToCoordinate:x, y];
  v11 = v8 * 0.0174532925;
  v13 = v12 * 0.0174532925;
  v15 = v14 * 0.0174532925;
  v16 = v13 - v8 * 0.0174532925;
  v17 = v15 - v10 * 0.0174532925;
  v18 = sin(v16 * 0.5);
  v19 = v18 * v18;
  v20 = sin(v17 * 0.5);
  v21 = cos(v11) * (v20 * v20);
  v22 = cos(v13);
  v23 = atan2(sqrt(v19 + v21 * v22), sqrt(1.0 - (v19 + v21 * v22)));
  return (v23 + v23) * 6378137.0;
}

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  _axMapViewDelegate = [(VKMapViewAccessibility *)self _axMapViewDelegate];
  v6 = [_axMapViewDelegate safeValueForKey:@"scrollEnabled"];

  if (!v6 || ([v6 BOOLValue] & 1) != 0)
  {
    [(VKMapViewAccessibility *)self frame];
    if ([(VKMapViewAccessibility *)self mapType]== 5)
    {
      v7 = [(VKMapViewAccessibility *)self safeValueForKey:@"_navigationCameraController"];
      v8 = __UIAccessibilitySafeClass();

      AX_CGRectGetCenter();
    }

    else
    {
      v9 = [(VKMapViewAccessibility *)self safeValueForKey:@"_mapCameraController"];
      v8 = __UIAccessibilitySafeClass();

      v10 = [v8 safeValueForKey:@"_gestureCameraControllerBehavior"];
      v11 = [v10 safeValueForKey:@"_panLastScreenPoint"];
      [v11 CGPointValue];
    }

    v12 = v8;
    AXPerformSafeBlock();
    v13 = 0;
    if (scroll > 2)
    {
      if (scroll != 3 && scroll != 4)
      {
        goto LABEL_15;
      }
    }

    else if (scroll != 1 && scroll != 2)
    {
      goto LABEL_15;
    }

    v15 = v12;
    AXPerformSafeBlock();
    [(VKMapViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"ScrollNotification"];
    AXPerformSafeBlock();

    v13 = 1;
LABEL_15:

    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

uint64_t __46__VKMapViewAccessibility_accessibilityScroll___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  AX_CGRectGetCenter();

  return [v1 startPanningAtPoint:1 panAtStartPoint:?];
}

void __46__VKMapViewAccessibility_accessibilityScroll___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) safeValueForKey:@"cameraDelegate"];
  [v1 mapLayerDidChangeVisibleRegion];
}

- (int64_t)accessibilityContainerType
{
  if ([(VKMapViewAccessibility *)self isAccessibilityElement])
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

- (unint64_t)accessibilityTraits
{
  v10.receiver = self;
  v10.super_class = VKMapViewAccessibility;
  accessibilityTraits = [(VKMapViewAccessibility *)&v10 accessibilityTraits];
  accessibilityIsShowingCalloutAnnotationView = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  v5 = *MEMORY[0x29EDC7538];
  if (accessibilityIsShowingCalloutAnnotationView)
  {
    v5 = 0;
  }

  v6 = v5 | accessibilityTraits;
  accessibilityIsInTourGuideMode = [(VKMapViewAccessibility *)self accessibilityIsInTourGuideMode];
  v8 = *MEMORY[0x29EDBDBF0];
  if (!accessibilityIsInTourGuideMode)
  {
    v8 = 0;
  }

  return v6 | v8;
}

- (CGPoint)_axIntersectionBetweenRoad:(id)road andOtherRoad:(id)otherRoad
{
  v38 = *MEMORY[0x29EDCA608];
  otherRoadCopy = otherRoad;
  v29 = 0;
  v30 = &v29;
  v31 = 0x4012000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = &unk_29C723C02;
  v35 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  paths = [road paths];
  v19 = paths;
  v6 = [paths countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v6)
  {
    v7 = *v26;
    v17 = *v26;
    do
    {
      v8 = 0;
      v18 = v6;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(paths);
        }

        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        originalPaths = [otherRoadCopy originalPaths];
        v10 = [originalPaths countByEnumeratingWithState:&v21 objects:v36 count:16];
        if (v10)
        {
          v11 = *v22;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(originalPaths);
              }

              AX_CGPathEnumerateElementsUsingBlock();
              v13 = v30[6];
              if (v13 < 3.40282347e38)
              {
                v14 = v30[7];

                goto LABEL_18;
              }
            }

            v10 = [originalPaths countByEnumeratingWithState:&v21 objects:v36 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        ++v8;
        paths = v19;
        v7 = v17;
      }

      while (v8 != v18);
      v6 = [v19 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v6);
  }

  v13 = v30[6];
  v14 = v30[7];
LABEL_18:
  _Block_object_dispose(&v29, 8);

  v15 = v13;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

BOOL __66__VKMapViewAccessibility__axIntersectionBetweenRoad_andOtherRoad___block_invoke(uint64_t a1, uint64_t a2, CGFloat *a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = *a3;
  v9 = a3[1];
  v12.x = *a3;
  v12.y = v9;
  result = CGPathContainsPoint(*(a1 + 32), 0, v12, 0);
  if (result)
  {
    v11 = *(*(a1 + 40) + 8);
    *(v11 + 48) = v8;
    *(v11 + 56) = v9;
    *a6 = 1;
  }

  return result;
}

- (void)_accessibilityMapsExplorationContinueWithVertexIndex:(unint64_t)index
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  [accessibilityElementManager accessibilityMapsExplorationContinueWithVertexIndex:index];
}

- (void)_accessibilityMapsExplorationRecordTouchpoint:(CGPoint)touchpoint
{
  y = touchpoint.y;
  x = touchpoint.x;
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  [accessibilityElementManager setExplorationLastTouchPoint:{x, y}];
}

- (id)_accessibilityMapsExplorationCurrentRoadsWithAngles
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  accessibilityMapsExplorationCurrentRoadsWithAngles = [accessibilityElementManager accessibilityMapsExplorationCurrentRoadsWithAngles];

  return accessibilityMapsExplorationCurrentRoadsWithAngles;
}

- (id)_accessibilityMapsExplorationCurrentIntersectionDescription
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  accessibilityMapsExplorationCurrentIntersectionDescription = [accessibilityElementManager accessibilityMapsExplorationCurrentIntersectionDescription];

  return accessibilityMapsExplorationCurrentIntersectionDescription;
}

- (id)_accessibilityMapsExplorationIncreaseVerbosity
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [accessibilityElementManager accessibilityMapsExplorationChangeVerbosityIncreasing:1];

  return v3;
}

- (id)_accessibilityMapsExplorationDecreaseVerbosity
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [accessibilityElementManager accessibilityMapsExplorationChangeVerbosityIncreasing:0];

  return v3;
}

- (BOOL)_accessibilityMapsExplorationIsActive
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [accessibilityElementManager explorationState] == 2;

  return v3;
}

- (BOOL)_accessibilityMapsExplorationIsPending
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [accessibilityElementManager explorationState] == 1;

  return v3;
}

- (void)_accessibilityMapsExplorationEnd
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  [accessibilityElementManager accessibilityMapsExplorationEnd];
}

- (id)accessibilityIntersectorsForRoad:(id)road withPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v71 = *MEMORY[0x29EDCA608];
  roadCopy = road;
  v63 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [roadCopy featureSet];
  v6 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v6)
  {
    v55 = *v66;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v66 != v55)
        {
          objc_enumerationMutation(obj);
        }

        feature = [*(*(&v65 + 1) + 8 * i) feature];
        v56Feature = [feature feature];
        containingTile = [v56Feature containingTile];

        if (!containingTile)
        {
          _AXAssert();
        }

        geoConnectivityPointOnRoad = [containingTile geoConnectivityPointOnRoad];
        junctionsWithoutFeature = [containingTile junctionsWithoutFeature];
        lines = [containingTile lines];
        v9 = feature;
        geoSortedConnectivityPointOnRoad = [containingTile geoSortedConnectivityPointOnRoad];
        roadPointIndex = [v9 roadPointIndex];
        roadPointCount = [v9 roadPointCount];
        if (roadPointCount)
        {
          v12 = 0;
          v59 = geoSortedConnectivityPointOnRoad + 8 * roadPointIndex;
          do
          {
            v13 = *(v59 + 8 * v12);
            v62 = [junctionsWithoutFeature objectAtIndexedSubscript:*v13];
            pointsOnRoadIndex = [v62 pointsOnRoadIndex];
            pointsOnRoadCount = [v62 pointsOnRoadCount];
            if (pointsOnRoadCount)
            {
              v16 = (geoConnectivityPointOnRoad + 16 * pointsOnRoadIndex);
              v17 = pointsOnRoadCount;
              do
              {
                if (v16 != v13)
                {
                  v18 = [lines objectAtIndexedSubscript:v16[1]];
                  if ((GEOMultiSectionFeatureIsSameRoad() & 1) == 0)
                  {
                    v20 = v13[2];
                    v19 = v13[3];
                    GEOMultiSectionFeatureGetSectionData();
                    v21 = v69[2 * v20 + 100];
                    [containingTile geoTileKey];
                    VKWorldBoundsFromGEOTileKey();
                    AXVKPointForTileGLPoint(v22, v23, v24, v25, *&v69[v21 + v19]);
                    VKLocationCoordinate2DForVKPoint();
                    v28 = [[AXVKIntersector alloc] initWithFeature:v18 coordinates:0 isDeadEnd:v26, v27];
                    [v63 addObject:v28];
                  }
                }

                v16 += 4;
                --v17;
              }

              while (v17);
            }

            ++v12;
          }

          while (v12 != roadPointCount);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v6);
  }

  v29 = [roadCopy featureAndPointIndicesForPoint:{x, y}];
  if (v29 != -1)
  {
    consolidatedAndOrderedFeatures = [roadCopy consolidatedAndOrderedFeatures];
    v31 = [consolidatedAndOrderedFeatures objectAtIndex:v29];
    firstObject = [v31 firstObject];
    lastObject = [v31 lastObject];
    [firstObject CGPointValue];
    v35 = v34;
    v37 = v36;
    [lastObject CGPointValue];
    v39 = v38;
    v41 = v40;
    v42 = [AXVKIntersector alloc];
    pointToFeatureDict = [roadCopy pointToFeatureDict];
    v44 = [pointToFeatureDict objectForKey:firstObject];
    [(VKMapViewAccessibility *)selfCopy accessibilityConvertScreenPointToCoordinate:v35, v37];
    v45 = [(AXVKIntersector *)v42 initWithFeatureWrapper:v44 coordinates:1 isDeadEnd:?];

    v46 = [AXVKIntersector alloc];
    pointToFeatureDict2 = [roadCopy pointToFeatureDict];
    v48 = [pointToFeatureDict2 objectForKey:lastObject];
    [(VKMapViewAccessibility *)selfCopy accessibilityConvertScreenPointToCoordinate:v39, v41];
    v49 = [(AXVKIntersector *)v46 initWithFeatureWrapper:v48 coordinates:1 isDeadEnd:?];

    [v63 addObject:v45];
    [v63 addObject:v49];
  }

  allObjects = [v63 allObjects];

  return allObjects;
}

- (void)accessibilitySetMapZoomLevel:(double)level center:(id)center yaw:(double)yaw completionHandler:(id)handler
{
  var1 = center.var1;
  var0 = center.var0;
  handlerCopy = handler;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __84__VKMapViewAccessibility_accessibilitySetMapZoomLevel_center_yaw_completionHandler___block_invoke;
  v17[3] = &unk_29F3187D8;
  v17[4] = self;
  levelCopy = level;
  v20 = var0;
  v21 = var1;
  v12 = handlerCopy;
  v18 = v12;
  v13 = MEMORY[0x29ED3F700](v17);
  [(VKMapViewAccessibility *)self altitude];
  v15 = v14;
  [(VKMapViewAccessibility *)self pitch];
  [(VKMapViewAccessibility *)self setCenterCoordinate:*MEMORY[0x29EDC82C0] altitude:v13 yaw:var0 pitch:var1 duration:v15 timingCurve:yaw completion:v16, 0.1];
}

uint64_t __84__VKMapViewAccessibility_accessibilitySetMapZoomLevel_center_yaw_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) accessibilityZoomLevel];
  v4 = v2 - v3;
  [*(a1 + 32) accessibilityConvertCoordinateToWindow:{*(a1 + 56), *(a1 + 64)}];
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 accessibilityZoom:0 point:v8 animated:v4 completionHandler:{v5, v6}];
}

- (id)accessibilityUpcomingRoadsForPoint:(CGPoint)point forAngle:(float)angle withElement:(id)element
{
  y = point.y;
  x = point.x;
  v72 = *MEMORY[0x29EDCA608];
  elementCopy = element;
  intersectingRoads = [elementCopy intersectingRoads];
  if (!intersectingRoads)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    obj = [MEMORY[0x29EDB8DE8] array];
    [elementCopy setIntersectingRoads:?];
    accessibilityElements = [(VKMapViewAccessibility *)self accessibilityElements];
    v11 = [accessibilityElements copy];

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v13)
    {
      v14 = *v64;
      v15 = MEMORY[0x29EDB90B8];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v64 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v63 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & (v17 != elementCopy)) != 0)
          {
            [(VKMapViewAccessibility *)self _axIntersectionBetweenRoad:elementCopy andOtherRoad:v17];
            v20 = v19;
            v21 = fabs(v19 + -3.40282347e38);
            if (v21 >= 0.001)
            {
              v24 = v18;
            }

            else
            {
              [(VKMapViewAccessibility *)self _axIntersectionBetweenRoad:v17 andOtherRoad:elementCopy];
              v20 = v22;
              v24 = v23;
              v21 = fabs(v22 + -3.40282347e38);
            }

            if (v21 > 0.001 && (*v15 != v20 || v15[1] != v24))
            {
              v70[0] = v17;
              v26 = [MEMORY[0x29EDBA168] valueWithCGPoint:{v20, v24}];
              v70[1] = v26;
              v27 = [MEMORY[0x29EDB8D80] arrayWithObjects:v70 count:2];
              [obj addObject:v27];

              v28 = [MEMORY[0x29EDBA168] valueWithCGPoint:{v20, v24}];
              [array addObject:v28];
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v13);
    }

    intersectingRoads = obj;
    v29 = +[VKMapDebugView sharedInstance];
    [v29 addIntersectionPoints:array];
  }

  if ([intersectingRoads count])
  {
    array2 = [MEMORY[0x29EDB8DE8] array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v51 = intersectingRoads;
    obja = intersectingRoads;
    v30 = [obja countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v30)
    {
      v31 = *v60;
      angleCopy = angle;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v60 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v34 = *(*(&v59 + 1) + 8 * j);
          v35 = [v34 objectAtIndex:1];
          [v35 CGPointValue];
          v37 = v36;
          v39 = v38;

          v57 = 0.0;
          v58 = 0.0;
          v74.x = x;
          v74.y = y;
          v75.x = v37;
          v75.y = v39;
          AXVKMathGetVectorAndDistanceForPoints(&v58, &v57, v74, v75);
          v40 = v57;
          if (vabdd_f64(v58, angleCopy) < 35.0 && v57 < 40.0)
          {
            v67[0] = @"distance";
            v42 = [MEMORY[0x29EDBA070] numberWithDouble:v57];
            v67[1] = @"item";
            v68[0] = v42;
            firstObject = [v34 firstObject];
            v68[1] = firstObject;
            v44 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
            [array2 addObject:v44];
          }
        }

        v30 = [obja countByEnumeratingWithState:&v59 objects:v69 count:{16, v40}];
      }

      while (v30);
    }

    [array2 sortUsingComparator:&__block_literal_global_4];
    firstObject2 = [array2 firstObject];
    v46 = [firstObject2 objectForKey:@"item"];

    if ([array2 count] < 2)
    {
      v48 = 0;
    }

    else
    {
      v47 = [array2 objectAtIndex:1];
      v48 = [v47 objectForKey:@"item"];
    }

    v49 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v46, v48}];

    intersectingRoads = v51;
  }

  else
  {
    v49 = 0;
  }

  return v49;
}

uint64_t __82__VKMapViewAccessibility_accessibilityUpcomingRoadsForPoint_forAngle_withElement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"distance"];
  v6 = [v4 objectForKeyedSubscript:@"distance"];
  v7 = [v5 compare:v6];

  return v7;
}

- (float)accessibilityDistance:(CGPoint)distance forAngle:(float)angle toRoad:(id)road withElement:(id)element
{
  y = distance.y;
  x = distance.x;
  [(VKMapViewAccessibility *)self _axIntersectionBetweenRoad:element andOtherRoad:road];
  v14.x = v8;
  v14.y = v9;
  v11 = 0.0;
  v12 = 0.0;
  v13.x = x;
  v13.y = y;
  AXVKMathGetVectorAndDistanceForPoints(&v12, &v11, v13, v14);
  return v11;
}

- (float)accessibilityDistanceToEndOfRoad:(CGPoint)road forAngle:(float)angle withElement:(id)element
{
  y = road.y;
  x = road.x;
  originalPaths = [element originalPaths];
  v8 = [originalPaths count];
  if (v8 < 1)
  {
    v10 = 3.4028e38;
  }

  else
  {
    v9 = 0;
    v10 = 3.4028e38;
    do
    {
      [originalPaths objectAtIndex:v9];
      AX_CGPathGetStartingAndEndingPoints();
      v15 = 0.0;
      v16 = 0.0;
      v19.x = x;
      v19.y = y;
      AXVKMathGetVectorAndDistanceForPoints(&v16, &v15, v18, v19);
      v11 = v15;
      v20.x = x;
      v20.y = y;
      AXVKMathGetVectorAndDistanceForPoints(&v16, &v15, v17, v20);
      if (v11 >= v10)
      {
        v13 = v10;
      }

      else
      {
        v12 = v11;
        v13 = v12;
      }

      if (v15 >= v13)
      {
        v10 = v13;
      }

      else
      {
        v10 = v15;
      }

      ++v9;
    }

    while (v8 != v9);
  }

  return v10;
}

- (CGRect)accessibilityVisibleAXViewBounds
{
  v2 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"AXStoredVisibleViewBounds"];
  [v2 CGRectValue];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)accessibilityViewBoundsContainsPathPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"AXStoredVisibleViewBounds"];
  v7 = v6;
  if (v6)
  {
    [v6 CGRectValue];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    [(VKMapViewAccessibility *)self bounds];
    _axWindow = [(VKMapViewAccessibility *)self _axWindow];
    v17 = [_axWindow _accessibilityFindSubviewDescendant:&__block_literal_global_502];

    if (([v17 isHidden] & 1) == 0)
    {
      [v17 frame];
      CGRectGetMaxY(v27);
    }

    accessibilityContainer = [(VKMapViewAccessibility *)self accessibilityContainer];
    UIAccessibilityFrameForBounds();
    v9 = v19;
    v11 = v20;
    v13 = v21;
    v15 = v22;

    v23 = [MEMORY[0x29EDBA168] valueWithCGRect:{v9, v11, v13, v15}];
    [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:v23 forKey:@"AXStoredVisibleViewBounds"];
  }

  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v26.x = x;
  v26.y = y;
  v24 = CGRectContainsPoint(v28, v26);

  return v24;
}

uint64_t __67__VKMapViewAccessibility_accessibilityViewBoundsContainsPathPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (CGPoint)_accessibilityMapViewPointForZoomPoint:(CGPoint)point
{
  if (point.x < 0.0 || (y = point.y, point.y < 0.0))
  {
    [(VKMapViewAccessibility *)self bounds];

    AX_CGRectGetCenter();
  }

  else
  {
    x = point.x;
    _accessibilityWindow = [(VKMapViewAccessibility *)self _accessibilityWindow];
    layer = [_accessibilityWindow layer];
    [(VKMapViewAccessibility *)self convertPoint:layer fromLayer:x, y];
    v9 = v8;
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)point
{
  [(VKMapViewAccessibility *)self _accessibilityMapViewPointForZoomPoint:point.x, point.y];

  return [(VKMapViewAccessibility *)self accessibilityZoom:0 point:1.0 completionHandler:v4, v5];
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)point
{
  [(VKMapViewAccessibility *)self _accessibilityMapViewPointForZoomPoint:point.x, point.y];

  return [(VKMapViewAccessibility *)self accessibilityZoom:0 point:-1.0 completionHandler:v4, v5];
}

- (BOOL)accessibilityMapLoadingComplete
{
  v2 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"MapLoadingComplete"];
  v3 = v2;
  if (v2)
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (BOOL)accessibilityIsInTourGuideMode
{
  _axTourGuideManager = [(VKMapViewAccessibility *)self _axTourGuideManager];
  isRunning = [_axTourGuideManager isRunning];

  return isRunning;
}

- (BOOL)accessibilityIsShowingCalloutAnnotationView
{
  accessibilityCalloutAnnotationView = [(VKMapViewAccessibility *)self accessibilityCalloutAnnotationView];
  [accessibilityCalloutAnnotationView accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  if (CGRectIsEmpty(v22))
  {
    return 0;
  }

  [(VKMapViewAccessibility *)self accessibilityFrame];
  v17 = v5;
  v18 = v7;
  v19 = v9;
  v20 = v11;

  return CGRectContainsRect(*&v13, *&v17);
}

- (BOOL)accessibilityZoom:(double)zoom point:(CGPoint)point animated:(BOOL)animated completionHandler:(id)handler
{
  v36 = *MEMORY[0x29EDCA608];
  handlerCopy = handler;
  v9 = [(VKMapViewAccessibility *)self safeValueForKey:@"mapDelegate"];
  v10 = v9;
  if (zoom == 0.0)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (![v9 conformsToProtocol:&unk_2A23B4998])
  {
    goto LABEL_11;
  }

  v11 = [v10 safeValueForKey:@"maximumZoomLevel"];
  [v11 floatValue];
  v13 = v12;

  v14 = [v10 safeValueForKey:@"minimumZoomLevel"];
  [v14 floatValue];
  v16 = v15;

  v17 = [v10 safeValueForKey:@"_zoomLevel"];
  [v17 floatValue];
  v19 = roundf(v18);

  if (zoom > 0.0 && v19 >= roundf(v13) || zoom < 0.0 && v19 <= roundf(v16))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA40]);
    if (handlerCopy)
    {
LABEL_10:
      handlerCopy[2](handlerCopy);
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if ([(VKMapViewAccessibility *)self _axTrackingEnabled]|| [(VKMapViewAccessibility *)self _axTrackingWithHeadingEnabled])
  {
    buf[0] = 0;
    objc_opt_class();
    _axUserLocationMarker = [(VKMapViewAccessibility *)self _axUserLocationMarker];
    v23 = __UIAccessibilityCastAsClass();

    if (v23)
    {
      [v23 _presentationCoordinate];
      VKLocationCoordinate2DMake();
      [(VKMapViewAccessibility *)self accessibilityConvertCoordinateToWindow:?];
    }

    else
    {
      _AXAssert();
      [(VKMapViewAccessibility *)self bounds];
      CGRectGetMidX(v37);
      [(VKMapViewAccessibility *)self bounds];
      CGRectGetMidY(v38);
    }

    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  accessibilityLayerHostingView = [(VKMapViewAccessibility *)self accessibilityLayerHostingView];
  UIAccessibilityPointToPoint();

  [(VKMapViewAccessibility *)self bounds];
  if (![(VKMapViewAccessibility *)self accessibilityIsInTourGuideMode])
  {
    [(VKMapViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"ZoomNotification"];
  }

  v26 = AXLogCommon();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = @"out";
    if (zoom > 0.0)
    {
      v27 = @"in";
    }

    *buf = 138412802;
    v31 = v27;
    if (v24)
    {
      v28 = @"at user";
    }

    else
    {
      v28 = @"at point";
    }

    v32 = 2048;
    zoomCopy = zoom;
    v34 = 2112;
    v35 = v28;
    _os_log_impl(&dword_29C6F1000, v26, OS_LOG_TYPE_INFO, "Attempting to zoom %@ %f levels %@", buf, 0x20u);
  }

  v29 = handlerCopy;
  AXPerformSafeBlock();

  v20 = 1;
LABEL_12:

  return v20;
}

void __77__VKMapViewAccessibility_accessibilityZoom_point_animated_completionHandler___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  [v2 zoom:*(a1 + 40) withFocusPoint:*(a1 + 48) completionHandler:{*(a1 + 56), *(a1 + 64)}];
}

- (float)accessibilityZoomLevel
{
  v2 = [(VKMapViewAccessibility *)self safeValueForKey:@"mapDelegate"];
  NSClassFromString(&cfstr_Mkmapview.isa);
  v3 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    [v2 safeFloatForKey:@"_zoomLevel"];
    v3 = roundf(v4);
  }

  return v3;
}

- (int)_accessibilityMapType
{
  v2 = [(VKMapViewAccessibility *)self safeValueForKey:@"mapType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)isAccessibilityElement
{
  if ([(VKMapViewAccessibility *)self accessibilityIsShowingRoutes])
  {
    accessibilityMapTypeShouldShowTransit = [(VKMapViewAccessibility *)self accessibilityMapTypeShouldShowTransit];
  }

  else
  {
    accessibilityMapTypeShouldShowTransit = 1;
  }

  accessibilityElements = [(VKMapViewAccessibility *)self accessibilityElements];
  v5 = [accessibilityElements count];

  return !v5 && accessibilityMapTypeShouldShowTransit;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  _accessibilityParentView = [(VKMapViewAccessibility *)self _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v10 = v9;
  v12 = v11;

  accessibilityElements = [(VKMapViewAccessibility *)self accessibilityElements];
  v14 = [accessibilityElements copy];

  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__644;
  v30 = __Block_byref_object_dispose__645;
  v31 = 0;
  v19[0] = MEMORY[0x29EDCA5F8];
  v19[1] = 3221225472;
  v19[2] = __58__VKMapViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
  v19[3] = &unk_29F318868;
  v22 = v10;
  v23 = v12;
  v24 = x;
  v25 = y;
  v21 = &v26;
  v19[4] = self;
  v15 = eventCopy;
  v20 = v15;
  [v14 enumerateObjectsUsingBlock:v19];
  selfCopy = v27[5];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  v17 = selfCopy;

  _Block_object_dispose(&v26, 8);

  return v17;
}

void __58__VKMapViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v14 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if ([v14 pointInside:{*(a1 + 56), *(a1 + 64)}])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = *(a1 + 32);
      v10 = [v14 layer];
      [v9 convertPoint:v10 toLayer:{v7, v8}];
      v7 = v11;
      v8 = v12;
    }

    v13 = [v14 _accessibilityHitTest:*(a1 + 40) withEvent:{v7, v8}];
    if ([v13 isAccessibilityElement])
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v13);
      *a4 = 1;
    }
  }
}

- (id)_accessibilityScrollStatus
{
  if ([(VKMapViewAccessibility *)self _axTrackingWithHeadingEnabled])
  {
    accessibilityTourStatus = [(VKMapViewAccessibility *)self accessibilityTourStatus];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VKMapViewAccessibility;
    accessibilityTourStatus = [(VKMapViewAccessibility *)&v5 _accessibilityScrollStatus];
  }

  return accessibilityTourStatus;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)accessibilityBounds
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x5012000000;
  v34 = __Block_byref_object_copy__652;
  v35 = __Block_byref_object_dispose__653;
  v36 = &unk_29C723C02;
  v2 = *(MEMORY[0x29EDB90E0] + 16);
  v37 = *MEMORY[0x29EDB90E0];
  v38 = v2;
  v25 = MEMORY[0x29EDCA5F8];
  v26 = 3221225472;
  v27 = __45__VKMapViewAccessibility_accessibilityBounds__block_invoke;
  v28 = &unk_29F318890;
  selfCopy = self;
  v30 = &v31;
  AXPerformSafeBlock();
  CGRectGetMaxX(*(v32 + 6));
  CGRectGetMaxY(*(v32 + 6));
  CGRectGetMinX(*(v32 + 6));
  CGRectGetMinY(*(v32 + 6));
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x4012000000;
  v22[3] = __Block_byref_object_copy__655;
  v22[4] = __Block_byref_object_dispose__656;
  v22[5] = &unk_29C723C02;
  v23 = 0;
  v24 = 0;
  VKLocationCoordinate2DMake();
  v23 = v3;
  v24 = v4;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x4012000000;
  v19[3] = __Block_byref_object_copy__655;
  v19[4] = __Block_byref_object_dispose__656;
  v19[5] = &unk_29C723C02;
  v20 = 0;
  v21 = 0;
  VKLocationCoordinate2DMake();
  v20 = v5;
  v21 = v6;
  AXPerformSafeBlock();
  VKPointForVKLocationCoordinate2D();
  v8 = v7;
  v10 = v9;
  VKPointForVKLocationCoordinate2D();
  if (v8 <= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (v8 >= v11)
  {
    v8 = v11;
  }

  if (v10 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v10;
  }

  if (v10 >= v12)
  {
    v10 = v12;
  }

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v31, 8);
  v15 = v8;
  v16 = v13;
  v17 = v10;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

uint64_t __45__VKMapViewAccessibility_accessibilityBounds__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) bounds];
  v3 = *(*(a1 + 40) + 8);
  v3[6] = v4;
  v3[7] = v5;
  v3[8] = v6;
  v3[9] = v7;
  return result;
}

uint64_t __45__VKMapViewAccessibility_accessibilityBounds__block_invoke_659(uint64_t a1)
{
  [*(a1 + 32) convertPoint:*(a1 + 32) toCoordinateFromLayer:{*(a1 + 56), *(a1 + 64)}];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  result = [*(a1 + 32) convertPoint:*(a1 + 32) toCoordinateFromLayer:{*(a1 + 72), *(a1 + 80)}];
  v6 = *(*(a1 + 48) + 8);
  *(v6 + 48) = v7;
  *(v6 + 56) = v8;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)accessibilityCenter
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4812000000;
  v11[3] = __Block_byref_object_copy__660;
  v11[4] = __Block_byref_object_dispose__661;
  v11[5] = &unk_29C723C02;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  VKLocationCoordinate3DMake();
  v12 = v2;
  v13 = v3;
  v14 = v4;
  AXPerformSafeBlock();
  VKLocationCoordinate2DMake();
  v6 = v5;
  v8 = v7;
  _Block_object_dispose(v11, 8);
  v9 = v6;
  v10 = v8;
  result.var1 = v10;
  result.var0 = v9;
  return result;
}

uint64_t __45__VKMapViewAccessibility_accessibilityCenter__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) centerCoordinate];
  v3 = *(*(a1 + 40) + 8);
  v3[6] = v4;
  v3[7] = v5;
  v3[8] = v6;
  return result;
}

- (int64_t)accessibilityOrientation
{
  _accessibilityParentView = [(VKMapViewAccessibility *)self _accessibilityParentView];
  window = [_accessibilityParentView window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return interfaceOrientation;
}

- (double)accessibilityYaw
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  AXPerformSafeBlock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __42__VKMapViewAccessibility_accessibilityYaw__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) yaw];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (id)_axMapViewDelegate
{
  v2 = [(VKMapViewAccessibility *)self safeValueForKey:@"mapDelegate"];
  NSClassFromString(&cfstr_Mklookaroundvi.isa);
  if (objc_opt_isKindOfClass())
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
  }

  return v3;
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

- (id)_axWindow
{
  accessibilityContainer = [(VKMapViewAccessibility *)self accessibilityContainer];
  v3 = [accessibilityContainer safeValueForKey:@"window"];

  return v3;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)accessibilityConvertScreenPointToCoordinate:(CGPoint)coordinate
{
  y = coordinate.y;
  x = coordinate.x;
  [(VKMapViewAccessibility *)self frame];
  _axWindow = [(VKMapViewAccessibility *)self _axWindow];
  [_axWindow convertPoint:0 fromWindow:{x, y}];
  v8 = v7;
  v10 = v9;

  _axWindow2 = [(VKMapViewAccessibility *)self _axWindow];
  layer = [_axWindow2 layer];
  [(VKMapViewAccessibility *)self convertPoint:layer fromLayer:v8, v10];

  v13 = [(VKMapViewAccessibility *)self safeValueForKey:@"currentCanvas"];
  [v13 valueForKey:@"_vkCamera"];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x4812000000;
  v21[3] = __Block_byref_object_copy__679;
  v21[4] = __Block_byref_object_dispose__680;
  v20 = v21[5] = &unk_29C723C02;
  AXPerformSafeBlock();
  VKLocationCoordinate2DForVKPoint();
  v15 = v14;
  v17 = v16;

  _Block_object_dispose(v21, 8);
  v18 = v15;
  v19 = v17;
  result.var1 = v19;
  result.var0 = v18;
  return result;
}

uint64_t __70__VKMapViewAccessibility_accessibilityConvertScreenPointToCoordinate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) groundPointFromScreenPoint:{*(a1 + 48), *(a1 + 56)}];
  v3 = *(*(a1 + 40) + 8);
  v3[6] = v4;
  v3[7] = v5;
  v3[8] = v6;
  return result;
}

- (void)_axSummaryForVisibleBounds
{
  v44 = *MEMORY[0x29EDCA608];
  accessibilityElements = [(VKMapViewAccessibility *)self accessibilityElements];
  v3 = [accessibilityElements copy];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v4 = v3;
  v5 = 0;
  v6 = [v4 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v6)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v7 = *v40;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        if (([v9 _accessibilityIsFrameOutOfBounds] & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            if ([v10 mapFeatureType] == 25)
            {
              ++v5;
            }

            else if ([v10 isRoad])
            {
              ++v37;
            }

            else if ([v10 mapFeatureType] && v36 <= 2)
            {
              accessibilityLabel = [v10 accessibilityLabel];
              v33 = @"__AXStringForVariablesSentinel";
              v11 = __UIAXStringForVariables();

              v35 = v11;
              ++v36;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v6);
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v12 = MEMORY[0x29EDBA0F8];
  v13 = AXVectorKitLocString(@"ROAD_SUMMARY_FORMAT");
  v38 = [v12 localizedStringWithFormat:v13, v37];

  v14 = MEMORY[0x29EDBA0F8];
  v15 = AXVectorKitLocString(@"POI_SUMMARY");
  v16 = v35;
  if (!v35)
  {
    v16 = AXFormatInteger();
  }

  v17 = [v14 localizedStringWithFormat:v15, v16];
  if (!v35)
  {
  }

  v18 = MEMORY[0x29EDBA0F8];
  v19 = AXVectorKitLocString(@"BUILDING_SUMMARY_FORMAT");
  v20 = [v18 localizedStringWithFormat:v19, v5];

  v21 = __UIAXStringForVariables();
  if ([(VKMapViewAccessibility *)self _accessibilityBoolValueForKey:@"TransitionNotification", v38, v20, @"__AXStringForVariablesSentinel"])
  {
    if (![v21 length])
    {
      goto LABEL_31;
    }

    _axLastSummaryForVisibleBounds = [(VKMapViewAccessibility *)self _axLastSummaryForVisibleBounds];
    v23 = [v21 isEqualToString:_axLastSummaryForVisibleBounds];

    if (v23)
    {
      goto LABEL_31;
    }

    v24 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v21];
    [v24 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD978]];
    v25 = +[VKMapViewOutputManager sharedOutputManager];
    [v25 queueOutput:v24];
  }

  else
  {
    if (![(VKMapViewAccessibility *)self _accessibilityBoolValueForKey:@"ZoomNotification"])
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EF0], v21);
      selfCopy2 = self;
      goto LABEL_33;
    }

    [(VKMapViewAccessibility *)self accessibilityZoomLevel];
    v26 = MEMORY[0x29EDBA0F8];
    v27 = AXVectorKitLocString(@"ZOOM_STEP_LEVEL");
    v28 = AXFormatInteger();
    v24 = [v26 localizedStringWithFormat:v27, v28];

    v29 = __UIAXStringForVariables();

    v30 = [VKMapViewOutputManager sharedOutputManager:0];
    [v30 clearOutputQueue];

    v25 = +[VKMapViewOutputManager sharedOutputManager];
    [v25 queueOutput:v29];
    v21 = v29;
  }

LABEL_31:
  selfCopy2 = self;
LABEL_33:
  [(VKMapViewAccessibility *)selfCopy2 _accessibilitySetBoolValue:0 forKey:@"ScrollNotification"];
  [(VKMapViewAccessibility *)selfCopy2 _accessibilitySetBoolValue:0 forKey:@"TransitionNotification"];
  [(VKMapViewAccessibility *)selfCopy2 _accessibilitySetBoolValue:0 forKey:@"ZoomNotification"];
  [(VKMapViewAccessibility *)selfCopy2 _axSetLastSummaryForVisibleBounds:v21];
}

- (void)_accessibilityMapViewDidChangeVisibleRegion
{
  if (_UIAccessibilityIsEnabled() && ![(VKMapViewAccessibility *)self _axTrackingWithHeadingEnabled]&& ([(VKMapViewAccessibility *)self accessibilityElementsHidden]& 1) == 0)
  {
    _axMapLabelLayoutTimer = [(VKMapViewAccessibility *)self _axMapLabelLayoutTimer];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = __69__VKMapViewAccessibility__accessibilityMapViewDidChangeVisibleRegion__block_invoke;
    v4[3] = &unk_29F318908;
    objc_copyWeak(&v5, &location);
    [_axMapLabelLayoutTimer afterDelay:v4 processBlock:0.25];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __69__VKMapViewAccessibility__accessibilityMapViewDidChangeVisibleRegion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axUpdateElements];
}

- (void)_accessibilityMapViewDidChangeRegionAnimated:(BOOL)animated
{
  if (_UIAccessibilityIsEnabled())
  {
    if ([(VKMapViewAccessibility *)self _axTrackingEnabled])
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }
  }
}

void __71__VKMapViewAccessibility__accessibilityMapViewDidChangeRegionAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axElements];
  v3 = [v2 count];

  if (!v3)
  {
    [*(a1 + 32) _accessibilitySetBoolValue:1 forKey:@"TransitionNotification"];
    v4 = *(a1 + 32);

    [v4 _axUpdateElements];
  }
}

- (BOOL)_axElementsInvalidForVisibleBounds
{
  [(VKMapViewAccessibility *)self accessibilityBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(VKMapViewAccessibility *)self _axBoundsOfElements];
  return !AXVKRectEqualToRect(v4, v6, v8, v10, v11, v12, v13, v14);
}

- (int64_t)_axTrackingMode
{
  _axMapViewDelegate = [(VKMapViewAccessibility *)self _axMapViewDelegate];
  v3 = [_axMapViewDelegate safeValueForKey:@"userTrackingMode"];
  integerValue = [v3 integerValue];

  return integerValue;
}

void __45__VKMapViewAccessibility__axSetTrackingMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axMapViewDelegate];
  [v2 setUserTrackingMode:*(a1 + 40)];
}

- (BOOL)accessibilityIsShowingRoutes
{
  _axMapsDelegate = [(VKMapViewAccessibility *)self _axMapsDelegate];
  v3 = [_axMapsDelegate safeValueForKey:@"chromeViewController"];

  v4 = [v3 safeValueForKey:@"routeAnnotationsController"];
  v5 = [v4 safeValueForKey:@"configuration"];
  v6 = [v5 safeArrayForKey:@"routes"];
  objc_opt_class();
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && [v6 count] != 0;
  v8 = [v5 safeIntegerForKey:@"routeMarkerOptions"] != 0;

  return v8 && v7;
}

- (id)accessibilityElementManager
{
  if (AXRequiresMapAccessibility())
  {
    v3 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"AccessibilityElementManager"];
    if (!v3)
    {
      v3 = objc_opt_new();
      [v3 setDelegate:self];
      [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"AccessibilityElementManager"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_axTourGuideManager
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"TourGuideManager"];
    if (!v3)
    {
      v4 = [VKMapViewTourGuideManager alloc];
      accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
      v3 = [(VKMapViewTourGuideManager *)v4 initWithMapView:self elementManager:accessibilityElementManager];

      [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"TourGuideManager"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_axWalkAssistManager
{
  if (UIAccessibilityIsVoiceOverRunning() && (AXDeviceIsPad() & 1) == 0)
  {
    v3 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"WalkAssistManager"];
    if (!v3)
    {
      v3 = objc_opt_new();
      [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"WalkAssistManager"];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_axStartListeningForUpdateAccessibilityElementsComplete
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  [defaultCenter addObserver:self selector:sel__axUpdateElementsComplete_ name:@"UpdateAccessibilityElementsComplete" object:accessibilityElementManager];
}

- (void)_axStartListeningForUserTrackingModeChange
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__axUserTrackingModeChange_ name:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:0];
}

- (void)_axStartListeningForMapAccessibilityEnabled
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = AXNotificationsForMapAccessibilityClients();
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
        [defaultCenter addObserver:self selector:sel__axMapsAccessibilityPotentiallyEnabled name:v7 object:0];
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_axStartListeningForMapVisibleRegionChanged
{
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:self selector:sel__axMapVisibleRegionDidChange name:@"AXMapVisibleRegionDidChange" object:0];
}

- (BOOL)_axShouldSummarizeVisibleBounds
{
  v3 = [(VKMapViewAccessibility *)self _accessibilityBoolValueForKey:@"ScrollNotification"];
  v4 = [(VKMapViewAccessibility *)self _accessibilityBoolValueForKey:@"TransitionNotification"];
  return (v3 | v4 | [(VKMapViewAccessibility *)self _accessibilityBoolValueForKey:@"ZoomNotification"]) & 1;
}

- (id)_axUserLocationMarker
{
  v2 = [(VKMapViewAccessibility *)self safeValueForKey:@"mapDelegate"];
  v3 = [v2 safeValueForKey:@"_annotationContainer"];
  v4 = [v3 safeValueForKey:@"userLocationView"];

  return v4;
}

- (id)_axTourGuideElement
{
  _axUserLocationMarker = [(VKMapViewAccessibility *)self _axUserLocationMarker];
  v4 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"TourGuideElement"];
  v5 = v4;
  if (!v4 || ([(VKTourGuideAccessibilityElement *)v4 userLocationMarker], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != _axUserLocationMarker))
  {
    v7 = [[VKTourGuideAccessibilityElement alloc] initWithAccessibilityContainer:self userLocationMarker:_axUserLocationMarker];

    v5 = v7;
    [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:v7 forKey:@"TourGuideElement"];
  }

  return v5;
}

- (void)_axLoadAccessibility
{
  v3 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"didLoadAccessibility"];
  bOOLValue = [v3 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:MEMORY[0x29EDB8EB0] forKey:@"didLoadAccessibility"];
    [(VKMapViewAccessibility *)self _axStartListeningForUpdateAccessibilityElementsComplete];
    [(VKMapViewAccessibility *)self _axStartListeningForUserTrackingModeChange];
    [(VKMapViewAccessibility *)self _axStartListeningForMapAccessibilityEnabled];

    [(VKMapViewAccessibility *)self _axStartListeningForMapVisibleRegionChanged];
  }
}

- (id)_axElements
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  if (objc_opt_respondsToSelector())
  {
    v4 = [accessibilityElementManager accessibilityElementsForMapView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_axBoundsOfElements
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  if (objc_opt_respondsToSelector())
  {
    [accessibilityElementManager boundsForMapView:self];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.var3 = v15;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (int64_t)_axOrientationOfElements
{
  accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
  if (objc_opt_respondsToSelector())
  {
    v4 = [accessibilityElementManager orientationForMapView:self];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_axUpdateElements
{
  if (([(VKMapViewAccessibility *)self accessibilityElementsHidden]& 1) == 0)
  {
    accessibilityElementManager = [(VKMapViewAccessibility *)self accessibilityElementManager];
    if (objc_opt_respondsToSelector())
    {
      [accessibilityElementManager updateAccessibilityElementsForMapView:self];
    }
  }
}

- (id)accessibilityTourStatus
{
  _axTourGuideManager = [(VKMapViewAccessibility *)self _axTourGuideManager];
  if ([_axTourGuideManager isRunning])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [_axTourGuideManager tourStatusForMapView:self];
    }

    else
    {
      v4 = 0;
    }

    _axUserLocationMarker = [(VKMapViewAccessibility *)self _axUserLocationMarker];
    v7 = [_axUserLocationMarker safeValueForKey:@"annotation"];
    v8 = [v7 safeValueForKey:@"accessibilityLocality"];

    v5 = __UIAXStringForVariables();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_axUpdateElementsComplete:(id)complete
{
  completeCopy = complete;
  if (![(VKMapViewAccessibility *)self accessibilityIsInTourGuideMode])
  {
    if ([(VKMapViewAccessibility *)self _axElementsInvalidForVisibleBounds]|| ([(VKMapViewAccessibility *)self _axElements], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      [(VKMapViewAccessibility *)self _axUpdateElements];
    }

    else
    {
      [(VKMapViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
      userInfo = [completeCopy userInfo];
      v6 = [userInfo objectForKey:@"AXVKUpdateAccessibilityElementsFocusedElementKey"];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v6);
      if ([(VKMapViewAccessibility *)self _axShouldSummarizeVisibleBounds])
      {
        [(VKMapViewAccessibility *)self _axSummaryForVisibleBounds];
      }
    }
  }
}

- (void)_axUserTrackingModeChange:(id)change
{
  _axTourGuideManager = [(VKMapViewAccessibility *)self _axTourGuideManager];
  if ([(VKMapViewAccessibility *)self _axTrackingWithHeadingEnabled])
  {
    if (([_axTourGuideManager isRunning] & 1) == 0)
    {
      [_axTourGuideManager startTour];
    }
  }

  else if ([_axTourGuideManager isRunning])
  {
    [_axTourGuideManager stopTour];
  }

  _axWalkAssistManager = [(VKMapViewAccessibility *)self _axWalkAssistManager];
  if ([_axWalkAssistManager isInWalkingNavigatingState] && (objc_msgSend(_axWalkAssistManager, "hasArrived") & 1) == 0)
  {
    if (([_axWalkAssistManager isRunning] & 1) == 0)
    {
      [_axWalkAssistManager start];
    }
  }

  else if ([_axWalkAssistManager isRunning])
  {
    [_axWalkAssistManager stop];
  }
}

- (void)_axMapsAccessibilityPotentiallyEnabled
{
  v3 = +[VKMapDebugView sharedInstance];
  [v3 removePointsAndPaths];

  if (AXRequiresMapAccessibility())
  {

    [(VKMapViewAccessibility *)self _axUpdateElements];
  }
}

- (void)_axMapVisibleRegionDidChange
{
  if (AXRequiresMapAccessibility())
  {

    [(VKMapViewAccessibility *)self _axUpdateElements];
  }
}

- (id)initShouldRasterize:(BOOL)rasterize inBackground:(BOOL)background contentScale:(double)scale auditToken:(id)token mapViewPurpose:(int64_t)purpose allowsAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  backgroundCopy = background;
  rasterizeCopy = rasterize;
  tokenCopy = token;
  v18.receiver = self;
  v18.super_class = VKMapViewAccessibility;
  v15 = [(VKMapViewAccessibility *)&v18 initShouldRasterize:rasterizeCopy inBackground:backgroundCopy contentScale:tokenCopy auditToken:purpose mapViewPurpose:antialiasingCopy allowsAntialiasing:scale];
  v16 = v15;
  if (v15)
  {
    [v15 _axInitializeTimers];
  }

  return v16;
}

- (void)didUpdateSceneStatus:(unsigned __int8)status
{
  statusCopy = status;
  v5.receiver = self;
  v5.super_class = VKMapViewAccessibility;
  [(VKMapViewAccessibility *)&v5 didUpdateSceneStatus:?];
  if (statusCopy)
  {
    UIAccessibilityPostNotification(0xBD4u, 0);
    [(VKMapViewAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"MapLoadingComplete"];
    [(VKMapViewAccessibility *)self _accessibilityMapViewDidChangeVisibleRegion];
  }

  else
  {
    [(VKMapViewAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"MapLoadingComplete"];
  }
}

- (void)labelManagerDidLayout
{
  v3.receiver = self;
  v3.super_class = VKMapViewAccessibility;
  [(VKMapViewAccessibility *)&v3 labelManagerDidLayout];
  [(VKMapViewAccessibility *)self _axHandleLabelsDidLayout];
}

- (void)_axHandleLabelsDidLayout
{
  if (([(VKMapViewAccessibility *)self accessibilityElementsHidden]& 1) == 0)
  {
    [(VKMapViewAccessibility *)self _axInitializeTimers];
    _axMapLabelLayoutTimer = [(VKMapViewAccessibility *)self _axMapLabelLayoutTimer];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = __50__VKMapViewAccessibility__axHandleLabelsDidLayout__block_invoke;
    v4[3] = &unk_29F318908;
    objc_copyWeak(&v5, &location);
    [_axMapLabelLayoutTimer afterDelay:v4 processBlock:0.25];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __50__VKMapViewAccessibility__axHandleLabelsDidLayout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axUpdateElements];
}

- (void)setMapType:(int)type
{
  v3.receiver = self;
  v3.super_class = VKMapViewAccessibility;
  [(VKMapViewAccessibility *)&v3 setMapType:*&type];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)setCurrentLocationText:(id)text
{
  textCopy = text;
  v5.receiver = self;
  v5.super_class = VKMapViewAccessibility;
  [(VKMapViewAccessibility *)&v5 setCurrentLocationText:textCopy];
  [(VKMapViewAccessibility *)self _axSetCurrentLocationText:textCopy];
}

@end