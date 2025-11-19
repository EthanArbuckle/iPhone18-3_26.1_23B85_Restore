@interface VKMapViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- ($01BB1521EC52D44A8E7628F5261DCEC8)_axBoundsOfElements;
- ($01BB1521EC52D44A8E7628F5261DCEC8)accessibilityBounds;
- ($F24F406B2B787EFB06265DBA3D28CBD5)accessibilityCenter;
- ($F24F406B2B787EFB06265DBA3D28CBD5)accessibilityConvertScreenPointToCoordinate:(CGPoint)a3;
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
- (BOOL)accessibilityScroll:(int64_t)a3;
- (BOOL)accessibilityViewBoundsContainsPathPoint:(CGPoint)a3;
- (BOOL)accessibilityZoom:(double)a3 point:(CGPoint)a4 animated:(BOOL)a5 completionHandler:(id)a6;
- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3;
- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityMapViewPointForZoomPoint:(CGPoint)a3;
- (CGPoint)_axIntersectionBetweenRoad:(id)a3 andOtherRoad:(id)a4;
- (CGPoint)accessibilityConvertCoordinateToWindow:(id)a3;
- (CGRect)accessibilityPositionFrameForElement:(id)a3;
- (CGRect)accessibilityVisibleAXViewBounds;
- (double)accessibilityYaw;
- (float)accessibilityDistance:(CGPoint)a3 forAngle:(float)a4 toRoad:(id)a5 withElement:(id)a6;
- (float)accessibilityDistanceToEndOfRoad:(CGPoint)a3 forAngle:(float)a4 withElement:(id)a5;
- (float)accessibilityRealDistanceBetweenPoint:(CGPoint)a3 screenPoint2:(CGPoint)a4;
- (float)accessibilityZoomLevel;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
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
- (id)accessibilityIntersectorsForRoad:(id)a3 withPoint:(CGPoint)a4;
- (id)accessibilityLabel;
- (id)accessibilityTourStatus;
- (id)accessibilityUpcomingRoadsForPoint:(CGPoint)a3 forAngle:(float)a4 withElement:(id)a5;
- (id)initShouldRasterize:(BOOL)a3 inBackground:(BOOL)a4 contentScale:(double)a5 auditToken:(id)a6 mapViewPurpose:(int64_t)a7 allowsAntialiasing:(BOOL)a8;
- (int)_accessibilityMapType;
- (int64_t)_axOrientationOfElements;
- (int64_t)_axTrackingMode;
- (int64_t)accessibilityContainerType;
- (int64_t)accessibilityOrientation;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMapViewDidChangeRegionAnimated:(BOOL)a3;
- (void)_accessibilityMapViewDidChangeVisibleRegion;
- (void)_accessibilityMapsExplorationContinueWithVertexIndex:(unint64_t)a3;
- (void)_accessibilityMapsExplorationEnd;
- (void)_accessibilityMapsExplorationRecordTouchpoint:(CGPoint)a3;
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
- (void)_axUpdateElementsComplete:(id)a3;
- (void)_axUserTrackingModeChange:(id)a3;
- (void)accessibilitySetMapZoomLevel:(double)a3 center:(id)a4 yaw:(double)a5 completionHandler:(id)a6;
- (void)didUpdateSceneStatus:(unsigned __int8)a3;
- (void)labelManagerDidLayout;
- (void)setCurrentLocationText:(id)a3;
- (void)setMapType:(int)a3;
@end

@implementation VKMapViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"initShouldRasterize:inBackground:contentScale:auditToken:mapViewPurpose:allowsAntialiasing:" withFullSignature:{"@", "B", "B", "d", "@", "q", "B", 0}];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"setMapType:" withFullSignature:{"v", "i", 0}];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"zoomToLevel: withFocusPoint:" withFullSignature:{"v", "d", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"zoom: withFocusPoint: completionHandler:" withFullSignature:{"v", "d", "{CGPoint=dd}", "@?", 0}];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"setCurrentLocationText:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"mapDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"cameraDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"didUpdateSceneStatus:" withFullSignature:{"v", "C", 0}];
  [v3 validateClass:@"VKMapView" hasInstanceMethod:@"labelManagerDidLayout" withFullSignature:{"v", 0}];
  [v3 validateClass:@"VKMapCameraController"];
  [v3 validateClass:@"VKMapView" hasInstanceVariable:@"_navigationCameraController" withType:"VKNavCameraController"];
  [v3 validateClass:@"VKMapView" hasInstanceVariable:@"_mapCameraController" withType:"VKMapCameraController"];
  [v3 validateClass:@"VKMapCameraController" hasInstanceMethod:@"tapZoom: levels: completionHandler:" withFullSignature:{"v", "{CGPoint=dd}", "d", "@?", 0}];
  [v3 validateClass:@"VKScreenCameraController"];
  [v3 validateClass:@"VKMapCameraController" isKindOfClass:@"VKScreenCameraController"];
  [v3 validateClass:@"VKScreenCameraController" hasInstanceMethod:@"startPanningAtPoint: panAtStartPoint:" withFullSignature:{"v", "{CGPoint=dd}", "B", 0}];
  [v3 validateClass:@"VKScreenCameraController" hasInstanceMethod:@"updatePanWithTranslation:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"VKScreenCameraController" hasInstanceVariable:@"_gestureCameraControllerBehavior" withType:"VKGestureCameraBehavior"];
  objc_opt_class();
  [v3 validateClass:@"VKGestureCameraBehavior" hasInstanceVariable:@"_panLastScreenPoint" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [v3 validateClass:@"VKMapView" hasInstanceVariable:@"_canvas" withType:"VKMapCanvas"];
  [v3 validateClass:@"VKScreenCanvas"];
  [v3 validateClass:@"VKMapCanvas" isKindOfClass:@"VKScreenCanvas"];
  [v3 validateClass:@"VKCamera"];
  objc_opt_class();
  [v3 validateClass:@"VKScreenCanvas" hasInstanceVariable:@"_vkCamera" withType:__ax_verbose_encode_with_type_encoding_group_class()];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"userTrackingMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"setUserTrackingMode:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"MKUserLocation"];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_zoomLevel" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_maximumZoomLevel" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MKMapView" hasInstanceMethod:@"_minimumZoomLevel" withFullSignature:{"d", 0}];
  [v3 validateClass:@"MKAnnotationContainerView" hasInstanceMethod:@"userLocationView" withFullSignature:{"@", 0}];
}

- (void)_axInitializeTimers
{
  v3 = [(VKMapViewAccessibility *)self _axMapLabelLayoutTimer];

  if (!v3)
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
    v3 = [(VKMapViewAccessibility *)self accessibilityOnlyShowRouteNodesDuringTransit];
  }

  else
  {
    v3 = 0;
  }

  v4 = [(VKMapViewAccessibility *)self accessibilityIsInTourGuideMode];
  v5 = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  v6 = AXRequiresMapAccessibilityPurelyForAutomation();
  v7 = MEMORY[0x29EDC7620];
  v8 = *MEMORY[0x29EDC7620];
  if (v6 || !v4 && !v5)
  {
    v11 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:v8];
    if ([(VKMapViewAccessibility *)self _accessibilityMapsExplorationIsActive])
    {
      v12 = [MEMORY[0x29EDB8DE8] array];
      v13 = [(VKMapViewAccessibility *)self accessibilityElementManager];
      v14 = [v13 currentExplorationElement];
      [v12 axSafelyAddObject:v14];

      v15 = [(VKMapViewAccessibility *)self accessibilityElementManager];
      v16 = [v15 neighborExplorationElements];
      [v12 axSafelyAddObjectsFromArray:v16];

      v17 = v12;
      v18 = +[VKMapDebugView sharedInstance];
      v19 = [(VKMapViewAccessibility *)self accessibilityElementManager];
      v20 = [v19 currentExplorationVertex];
      [v18 setCurrentExplorationVertex:v20];

      v11 = v17;
    }

    else if (!v11)
    {
      if (v3)
      {
        v21 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v22 = [(VKMapViewAccessibility *)self _axElements];
        v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v23)
        {
          v24 = *v37;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(v22);
              }

              v26 = *(*(&v36 + 1) + 8 * i);
              if ([v26 isRouteEta])
              {
                [v21 addObject:v26];
              }
            }

            v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
          }

          while (v23);
        }

        v11 = [v21 copy];
      }

      else
      {
        v11 = [(VKMapViewAccessibility *)self _axElements];
      }

      [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:v11 forKey:*v7];
    }

    v10 = +[VKMapDebugView sharedInstance];
    [v10 removePointsAndPaths];
    v27 = objc_opt_class();
    v28 = AXVKAccessibilityPaths(v11, v27, 25);
    [v10 addBuildingPaths:v28];

    v29 = objc_opt_class();
    v30 = AXVKAccessibilityPaths(v11, v29, 0);
    [v10 addPOIPaths:v30];

    v31 = objc_opt_class();
    v32 = AXVKAccessibilityPaths(v11, v31, 1);
    [v10 addRoadPaths:v32];

    v33 = objc_opt_class();
    v34 = AXVKAccessibilityPoints(v11, v33, 1);
    [v10 addRoadPoints:v34];
  }

  else
  {
    [(VKMapViewAccessibility *)self _accessibilityRemoveValueForKey:v8];
    if (v5 || v3)
    {
      v9 = +[VKMapDebugView sharedInstance];
      [v9 removePointsAndPaths];
    }

    if (!v4)
    {
      v11 = 0;
      goto LABEL_29;
    }

    v10 = [(VKMapViewAccessibility *)self _axTourGuideElement];
    v41[0] = v10;
    v11 = [MEMORY[0x29EDB8D80] arrayWithObjects:v41 count:1];
  }

LABEL_29:

  return v11;
}

- (CGPoint)accessibilityConvertCoordinateToWindow:(id)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  v6 = [(VKMapViewAccessibility *)self _axWindow];
  v7 = [v6 layer];
  [(VKMapViewAccessibility *)self convertCoordinate:v7 toPointToLayer:var0, var1];
  v9 = v8;
  v11 = v10;

  if (v6)
  {
    [v6 convertPoint:0 toWindow:{v9, v11}];
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
  v3 = [(VKMapViewAccessibility *)self isAccessibilityElement];
  v4 = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v10.receiver = self;
  v10.super_class = VKMapViewAccessibility;
  v6 = [(VKMapViewAccessibility *)&v10 accessibilityHint];
  if ([(VKMapViewAccessibility *)self accessibilityMapLoadingComplete]|| !IsVoiceOverRunning)
  {
    if (!v3 || !IsVoiceOverRunning)
    {
      goto LABEL_8;
    }

    if (v4)
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

  v6 = v8;
LABEL_8:

  return v6;
}

- (id)accessibilityLabel
{
  v3 = [(VKMapViewAccessibility *)self isAccessibilityElement];
  v4 = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v10.receiver = self;
  v10.super_class = VKMapViewAccessibility;
  v6 = [(VKMapViewAccessibility *)&v10 accessibilityLabel];
  if (v3 && v4 && IsVoiceOverRunning)
  {
    UIKitAccessibilityLocalizedString();
    v6 = v7 = v6;
LABEL_8:

    goto LABEL_9;
  }

  if (AXDoesRequestingClientDeserveAutomation())
  {
    v7 = [(VKMapViewAccessibility *)self _axCurrentLocationText];
    if ([v7 length])
    {
      v8 = v7;

      v6 = v8;
    }

    goto LABEL_8;
  }

  if (!v6)
  {
    v6 = AXVectorKitLocString(@"MAP");
  }

LABEL_9:

  return v6;
}

- (id)accessibilityIdentifier
{
  v3 = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  v6.receiver = self;
  v6.super_class = VKMapViewAccessibility;
  v4 = [(VKMapViewAccessibility *)&v6 accessibilityIdentifier];
  if (v3)
  {

    v4 = @"PopoverDismissRegion";
  }

  return v4;
}

- (BOOL)accessibilityPerformEscape
{
  if ([(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView])
  {
    v3 = [(VKMapViewAccessibility *)self _axMapViewDelegate];
    v4 = [v3 safeValueForKey:@"_annotationContainer"];
    v5 = [v4 accessibilityPerformEscape];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VKMapViewAccessibility;
    return [(VKMapViewAccessibility *)&v7 accessibilityPerformEscape];
  }

  return v5;
}

- (CGRect)accessibilityPositionFrameForElement:(id)a3
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

- (float)accessibilityRealDistanceBetweenPoint:(CGPoint)a3 screenPoint2:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [(VKMapViewAccessibility *)self accessibilityConvertScreenPointToCoordinate:a3.x, a3.y];
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

- (BOOL)accessibilityScroll:(int64_t)a3
{
  v5 = [(VKMapViewAccessibility *)self _axMapViewDelegate];
  v6 = [v5 safeValueForKey:@"scrollEnabled"];

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
    if (a3 > 2)
    {
      if (a3 != 3 && a3 != 4)
      {
        goto LABEL_15;
      }
    }

    else if (a3 != 1 && a3 != 2)
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
  v3 = [(VKMapViewAccessibility *)&v10 accessibilityTraits];
  v4 = [(VKMapViewAccessibility *)self accessibilityIsShowingCalloutAnnotationView];
  v5 = *MEMORY[0x29EDC7538];
  if (v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  v7 = [(VKMapViewAccessibility *)self accessibilityIsInTourGuideMode];
  v8 = *MEMORY[0x29EDBDBF0];
  if (!v7)
  {
    v8 = 0;
  }

  return v6 | v8;
}

- (CGPoint)_axIntersectionBetweenRoad:(id)a3 andOtherRoad:(id)a4
{
  v38 = *MEMORY[0x29EDCA608];
  v20 = a4;
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
  v5 = [a3 paths];
  v19 = v5;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v37 count:16];
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
          objc_enumerationMutation(v5);
        }

        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = [v20 originalPaths];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v36 count:16];
        if (v10)
        {
          v11 = *v22;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v9);
              }

              AX_CGPathEnumerateElementsUsingBlock();
              v13 = v30[6];
              if (v13 < 3.40282347e38)
              {
                v14 = v30[7];

                goto LABEL_18;
              }
            }

            v10 = [v9 countByEnumeratingWithState:&v21 objects:v36 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

        ++v8;
        v5 = v19;
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

- (void)_accessibilityMapsExplorationContinueWithVertexIndex:(unint64_t)a3
{
  v4 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  [v4 accessibilityMapsExplorationContinueWithVertexIndex:a3];
}

- (void)_accessibilityMapsExplorationRecordTouchpoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  [v5 setExplorationLastTouchPoint:{x, y}];
}

- (id)_accessibilityMapsExplorationCurrentRoadsWithAngles
{
  v2 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [v2 accessibilityMapsExplorationCurrentRoadsWithAngles];

  return v3;
}

- (id)_accessibilityMapsExplorationCurrentIntersectionDescription
{
  v2 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [v2 accessibilityMapsExplorationCurrentIntersectionDescription];

  return v3;
}

- (id)_accessibilityMapsExplorationIncreaseVerbosity
{
  v2 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [v2 accessibilityMapsExplorationChangeVerbosityIncreasing:1];

  return v3;
}

- (id)_accessibilityMapsExplorationDecreaseVerbosity
{
  v2 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [v2 accessibilityMapsExplorationChangeVerbosityIncreasing:0];

  return v3;
}

- (BOOL)_accessibilityMapsExplorationIsActive
{
  v2 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [v2 explorationState] == 2;

  return v3;
}

- (BOOL)_accessibilityMapsExplorationIsPending
{
  v2 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  v3 = [v2 explorationState] == 1;

  return v3;
}

- (void)_accessibilityMapsExplorationEnd
{
  v2 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  [v2 accessibilityMapsExplorationEnd];
}

- (id)accessibilityIntersectorsForRoad:(id)a3 withPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v52 = self;
  v71 = *MEMORY[0x29EDCA608];
  v53 = a3;
  v63 = objc_alloc_init(MEMORY[0x29EDB8E20]);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [v53 featureSet];
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

        v56 = [*(*(&v65 + 1) + 8 * i) feature];
        v7 = [v56 feature];
        v64 = [v7 containingTile];

        if (!v64)
        {
          _AXAssert();
        }

        v58 = [v64 geoConnectivityPointOnRoad];
        v61 = [v64 junctionsWithoutFeature];
        v8 = [v64 lines];
        v9 = v56;
        v10 = [v64 geoSortedConnectivityPointOnRoad];
        v11 = [v9 roadPointIndex];
        v60 = [v9 roadPointCount];
        if (v60)
        {
          v12 = 0;
          v59 = v10 + 8 * v11;
          do
          {
            v13 = *(v59 + 8 * v12);
            v62 = [v61 objectAtIndexedSubscript:*v13];
            v14 = [v62 pointsOnRoadIndex];
            v15 = [v62 pointsOnRoadCount];
            if (v15)
            {
              v16 = (v58 + 16 * v14);
              v17 = v15;
              do
              {
                if (v16 != v13)
                {
                  v18 = [v8 objectAtIndexedSubscript:v16[1]];
                  if ((GEOMultiSectionFeatureIsSameRoad() & 1) == 0)
                  {
                    v20 = v13[2];
                    v19 = v13[3];
                    GEOMultiSectionFeatureGetSectionData();
                    v21 = v69[2 * v20 + 100];
                    [v64 geoTileKey];
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

          while (v12 != v60);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v6);
  }

  v29 = [v53 featureAndPointIndicesForPoint:{x, y}];
  if (v29 != -1)
  {
    v30 = [v53 consolidatedAndOrderedFeatures];
    v31 = [v30 objectAtIndex:v29];
    v32 = [v31 firstObject];
    v33 = [v31 lastObject];
    [v32 CGPointValue];
    v35 = v34;
    v37 = v36;
    [v33 CGPointValue];
    v39 = v38;
    v41 = v40;
    v42 = [AXVKIntersector alloc];
    v43 = [v53 pointToFeatureDict];
    v44 = [v43 objectForKey:v32];
    [(VKMapViewAccessibility *)v52 accessibilityConvertScreenPointToCoordinate:v35, v37];
    v45 = [(AXVKIntersector *)v42 initWithFeatureWrapper:v44 coordinates:1 isDeadEnd:?];

    v46 = [AXVKIntersector alloc];
    v47 = [v53 pointToFeatureDict];
    v48 = [v47 objectForKey:v33];
    [(VKMapViewAccessibility *)v52 accessibilityConvertScreenPointToCoordinate:v39, v41];
    v49 = [(AXVKIntersector *)v46 initWithFeatureWrapper:v48 coordinates:1 isDeadEnd:?];

    [v63 addObject:v45];
    [v63 addObject:v49];
  }

  v50 = [v63 allObjects];

  return v50;
}

- (void)accessibilitySetMapZoomLevel:(double)a3 center:(id)a4 yaw:(double)a5 completionHandler:(id)a6
{
  var1 = a4.var1;
  var0 = a4.var0;
  v11 = a6;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3221225472;
  v17[2] = __84__VKMapViewAccessibility_accessibilitySetMapZoomLevel_center_yaw_completionHandler___block_invoke;
  v17[3] = &unk_29F3187D8;
  v17[4] = self;
  v19 = a3;
  v20 = var0;
  v21 = var1;
  v12 = v11;
  v18 = v12;
  v13 = MEMORY[0x29ED3F700](v17);
  [(VKMapViewAccessibility *)self altitude];
  v15 = v14;
  [(VKMapViewAccessibility *)self pitch];
  [(VKMapViewAccessibility *)self setCenterCoordinate:*MEMORY[0x29EDC82C0] altitude:v13 yaw:var0 pitch:var1 duration:v15 timingCurve:a5 completion:v16, 0.1];
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

- (id)accessibilityUpcomingRoadsForPoint:(CGPoint)a3 forAngle:(float)a4 withElement:(id)a5
{
  y = a3.y;
  x = a3.x;
  v72 = *MEMORY[0x29EDCA608];
  v56 = a5;
  v9 = [v56 intersectingRoads];
  if (!v9)
  {
    v52 = [MEMORY[0x29EDB8DE8] array];
    obj = [MEMORY[0x29EDB8DE8] array];
    [v56 setIntersectingRoads:?];
    v10 = [(VKMapViewAccessibility *)self accessibilityElements];
    v11 = [v10 copy];

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
          if ((objc_opt_isKindOfClass() & (v17 != v56)) != 0)
          {
            [(VKMapViewAccessibility *)self _axIntersectionBetweenRoad:v56 andOtherRoad:v17];
            v20 = v19;
            v21 = fabs(v19 + -3.40282347e38);
            if (v21 >= 0.001)
            {
              v24 = v18;
            }

            else
            {
              [(VKMapViewAccessibility *)self _axIntersectionBetweenRoad:v17 andOtherRoad:v56];
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
              [v52 addObject:v28];
            }
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v13);
    }

    v9 = obj;
    v29 = +[VKMapDebugView sharedInstance];
    [v29 addIntersectionPoints:v52];
  }

  if ([v9 count])
  {
    v53 = [MEMORY[0x29EDB8DE8] array];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v51 = v9;
    obja = v9;
    v30 = [obja countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v30)
    {
      v31 = *v60;
      v32 = a4;
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
          if (vabdd_f64(v58, v32) < 35.0 && v57 < 40.0)
          {
            v67[0] = @"distance";
            v42 = [MEMORY[0x29EDBA070] numberWithDouble:v57];
            v67[1] = @"item";
            v68[0] = v42;
            v43 = [v34 firstObject];
            v68[1] = v43;
            v44 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
            [v53 addObject:v44];
          }
        }

        v30 = [obja countByEnumeratingWithState:&v59 objects:v69 count:{16, v40}];
      }

      while (v30);
    }

    [v53 sortUsingComparator:&__block_literal_global_4];
    v45 = [v53 firstObject];
    v46 = [v45 objectForKey:@"item"];

    if ([v53 count] < 2)
    {
      v48 = 0;
    }

    else
    {
      v47 = [v53 objectAtIndex:1];
      v48 = [v47 objectForKey:@"item"];
    }

    v49 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v46, v48}];

    v9 = v51;
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

- (float)accessibilityDistance:(CGPoint)a3 forAngle:(float)a4 toRoad:(id)a5 withElement:(id)a6
{
  y = a3.y;
  x = a3.x;
  [(VKMapViewAccessibility *)self _axIntersectionBetweenRoad:a6 andOtherRoad:a5];
  v14.x = v8;
  v14.y = v9;
  v11 = 0.0;
  v12 = 0.0;
  v13.x = x;
  v13.y = y;
  AXVKMathGetVectorAndDistanceForPoints(&v12, &v11, v13, v14);
  return v11;
}

- (float)accessibilityDistanceToEndOfRoad:(CGPoint)a3 forAngle:(float)a4 withElement:(id)a5
{
  y = a3.y;
  x = a3.x;
  v7 = [a5 originalPaths];
  v8 = [v7 count];
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
      [v7 objectAtIndex:v9];
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

- (BOOL)accessibilityViewBoundsContainsPathPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
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
    v16 = [(VKMapViewAccessibility *)self _axWindow];
    v17 = [v16 _accessibilityFindSubviewDescendant:&__block_literal_global_502];

    if (([v17 isHidden] & 1) == 0)
    {
      [v17 frame];
      CGRectGetMaxY(v27);
    }

    v18 = [(VKMapViewAccessibility *)self accessibilityContainer];
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

- (CGPoint)_accessibilityMapViewPointForZoomPoint:(CGPoint)a3
{
  if (a3.x < 0.0 || (y = a3.y, a3.y < 0.0))
  {
    [(VKMapViewAccessibility *)self bounds];

    AX_CGRectGetCenter();
  }

  else
  {
    x = a3.x;
    v6 = [(VKMapViewAccessibility *)self _accessibilityWindow];
    v7 = [v6 layer];
    [(VKMapViewAccessibility *)self convertPoint:v7 fromLayer:x, y];
    v9 = v8;
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  result.y = v13;
  result.x = v12;
  return result;
}

- (BOOL)accessibilityZoomInAtPoint:(CGPoint)a3
{
  [(VKMapViewAccessibility *)self _accessibilityMapViewPointForZoomPoint:a3.x, a3.y];

  return [(VKMapViewAccessibility *)self accessibilityZoom:0 point:1.0 completionHandler:v4, v5];
}

- (BOOL)accessibilityZoomOutAtPoint:(CGPoint)a3
{
  [(VKMapViewAccessibility *)self _accessibilityMapViewPointForZoomPoint:a3.x, a3.y];

  return [(VKMapViewAccessibility *)self accessibilityZoom:0 point:-1.0 completionHandler:v4, v5];
}

- (BOOL)accessibilityMapLoadingComplete
{
  v2 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"MapLoadingComplete"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)accessibilityIsInTourGuideMode
{
  v2 = [(VKMapViewAccessibility *)self _axTourGuideManager];
  v3 = [v2 isRunning];

  return v3;
}

- (BOOL)accessibilityIsShowingCalloutAnnotationView
{
  v3 = [(VKMapViewAccessibility *)self accessibilityCalloutAnnotationView];
  [v3 accessibilityFrame];
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

- (BOOL)accessibilityZoom:(double)a3 point:(CGPoint)a4 animated:(BOOL)a5 completionHandler:(id)a6
{
  v36 = *MEMORY[0x29EDCA608];
  v8 = a6;
  v9 = [(VKMapViewAccessibility *)self safeValueForKey:@"mapDelegate"];
  v10 = v9;
  if (a3 == 0.0)
  {
    if (v8)
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

  if (a3 > 0.0 && v19 >= roundf(v13) || a3 < 0.0 && v19 <= roundf(v16))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDA40]);
    if (v8)
    {
LABEL_10:
      v8[2](v8);
    }

LABEL_11:
    v20 = 0;
    goto LABEL_12;
  }

  if ([(VKMapViewAccessibility *)self _axTrackingEnabled]|| [(VKMapViewAccessibility *)self _axTrackingWithHeadingEnabled])
  {
    buf[0] = 0;
    objc_opt_class();
    v22 = [(VKMapViewAccessibility *)self _axUserLocationMarker];
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

  v25 = [(VKMapViewAccessibility *)self accessibilityLayerHostingView];
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
    if (a3 > 0.0)
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
    v33 = a3;
    v34 = 2112;
    v35 = v28;
    _os_log_impl(&dword_29C6F1000, v26, OS_LOG_TYPE_INFO, "Attempting to zoom %@ %f levels %@", buf, 0x20u);
  }

  v29 = v8;
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
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)isAccessibilityElement
{
  if ([(VKMapViewAccessibility *)self accessibilityIsShowingRoutes])
  {
    v3 = [(VKMapViewAccessibility *)self accessibilityMapTypeShouldShowTransit];
  }

  else
  {
    v3 = 1;
  }

  v4 = [(VKMapViewAccessibility *)self accessibilityElements];
  v5 = [v4 count];

  return !v5 && v3;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(VKMapViewAccessibility *)self _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v10 = v9;
  v12 = v11;

  v13 = [(VKMapViewAccessibility *)self accessibilityElements];
  v14 = [v13 copy];

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
  v15 = v7;
  v20 = v15;
  [v14 enumerateObjectsUsingBlock:v19];
  v16 = v27[5];
  if (!v16)
  {
    v16 = self;
  }

  v17 = v16;

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
    v3 = [(VKMapViewAccessibility *)self accessibilityTourStatus];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = VKMapViewAccessibility;
    v3 = [(VKMapViewAccessibility *)&v5 _accessibilityScrollStatus];
  }

  return v3;
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
  v29 = self;
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
  v2 = [(VKMapViewAccessibility *)self _accessibilityParentView];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 interfaceOrientation];

  return v5;
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
  v2 = [(VKMapViewAccessibility *)self accessibilityContainer];
  v3 = [v2 safeValueForKey:@"window"];

  return v3;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)accessibilityConvertScreenPointToCoordinate:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(VKMapViewAccessibility *)self frame];
  v6 = [(VKMapViewAccessibility *)self _axWindow];
  [v6 convertPoint:0 fromWindow:{x, y}];
  v8 = v7;
  v10 = v9;

  v11 = [(VKMapViewAccessibility *)self _axWindow];
  v12 = [v11 layer];
  [(VKMapViewAccessibility *)self convertPoint:v12 fromLayer:v8, v10];

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
  v2 = [(VKMapViewAccessibility *)self accessibilityElements];
  v3 = [v2 copy];

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
              v32 = [v10 accessibilityLabel];
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

    v22 = [(VKMapViewAccessibility *)self _axLastSummaryForVisibleBounds];
    v23 = [v21 isEqualToString:v22];

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
      v31 = self;
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
  v31 = self;
LABEL_33:
  [(VKMapViewAccessibility *)v31 _accessibilitySetBoolValue:0 forKey:@"ScrollNotification"];
  [(VKMapViewAccessibility *)v31 _accessibilitySetBoolValue:0 forKey:@"TransitionNotification"];
  [(VKMapViewAccessibility *)v31 _accessibilitySetBoolValue:0 forKey:@"ZoomNotification"];
  [(VKMapViewAccessibility *)v31 _axSetLastSummaryForVisibleBounds:v21];
}

- (void)_accessibilityMapViewDidChangeVisibleRegion
{
  if (_UIAccessibilityIsEnabled() && ![(VKMapViewAccessibility *)self _axTrackingWithHeadingEnabled]&& ([(VKMapViewAccessibility *)self accessibilityElementsHidden]& 1) == 0)
  {
    v3 = [(VKMapViewAccessibility *)self _axMapLabelLayoutTimer];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = __69__VKMapViewAccessibility__accessibilityMapViewDidChangeVisibleRegion__block_invoke;
    v4[3] = &unk_29F318908;
    objc_copyWeak(&v5, &location);
    [v3 afterDelay:v4 processBlock:0.25];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __69__VKMapViewAccessibility__accessibilityMapViewDidChangeVisibleRegion__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axUpdateElements];
}

- (void)_accessibilityMapViewDidChangeRegionAnimated:(BOOL)a3
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
  v2 = [(VKMapViewAccessibility *)self _axMapViewDelegate];
  v3 = [v2 safeValueForKey:@"userTrackingMode"];
  v4 = [v3 integerValue];

  return v4;
}

void __45__VKMapViewAccessibility__axSetTrackingMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axMapViewDelegate];
  [v2 setUserTrackingMode:*(a1 + 40)];
}

- (BOOL)accessibilityIsShowingRoutes
{
  v2 = [(VKMapViewAccessibility *)self _axMapsDelegate];
  v3 = [v2 safeValueForKey:@"chromeViewController"];

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
      v5 = [(VKMapViewAccessibility *)self accessibilityElementManager];
      v3 = [(VKMapViewTourGuideManager *)v4 initWithMapView:self elementManager:v5];

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
  v4 = [MEMORY[0x29EDBA068] defaultCenter];
  v3 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  [v4 addObserver:self selector:sel__axUpdateElementsComplete_ name:@"UpdateAccessibilityElementsComplete" object:v3];
}

- (void)_axStartListeningForUserTrackingModeChange
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__axUserTrackingModeChange_ name:@"MKUserTrackingViewDidUpdateUserLocationNotification" object:0];
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
        v8 = [MEMORY[0x29EDBA068] defaultCenter];
        [v8 addObserver:self selector:sel__axMapsAccessibilityPotentiallyEnabled name:v7 object:0];
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)_axStartListeningForMapVisibleRegionChanged
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:self selector:sel__axMapVisibleRegionDidChange name:@"AXMapVisibleRegionDidChange" object:0];
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
  v3 = [(VKMapViewAccessibility *)self _axUserLocationMarker];
  v4 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"TourGuideElement"];
  v5 = v4;
  if (!v4 || ([(VKTourGuideAccessibilityElement *)v4 userLocationMarker], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 != v3))
  {
    v7 = [[VKTourGuideAccessibilityElement alloc] initWithAccessibilityContainer:self userLocationMarker:v3];

    v5 = v7;
    [(VKMapViewAccessibility *)self _accessibilitySetRetainedValue:v7 forKey:@"TourGuideElement"];
  }

  return v5;
}

- (void)_axLoadAccessibility
{
  v3 = [(VKMapViewAccessibility *)self _accessibilityValueForKey:@"didLoadAccessibility"];
  v4 = [v3 BOOLValue];

  if ((v4 & 1) == 0)
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
  v3 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 accessibilityElementsForMapView:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_axBoundsOfElements
{
  v3 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  if (objc_opt_respondsToSelector())
  {
    [v3 boundsForMapView:self];
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
  v3 = [(VKMapViewAccessibility *)self accessibilityElementManager];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 orientationForMapView:self];
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
    v3 = [(VKMapViewAccessibility *)self accessibilityElementManager];
    if (objc_opt_respondsToSelector())
    {
      [v3 updateAccessibilityElementsForMapView:self];
    }
  }
}

- (id)accessibilityTourStatus
{
  v3 = [(VKMapViewAccessibility *)self _axTourGuideManager];
  if ([v3 isRunning])
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v3 tourStatusForMapView:self];
    }

    else
    {
      v4 = 0;
    }

    v6 = [(VKMapViewAccessibility *)self _axUserLocationMarker];
    v7 = [v6 safeValueForKey:@"annotation"];
    v8 = [v7 safeValueForKey:@"accessibilityLocality"];

    v5 = __UIAXStringForVariables();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_axUpdateElementsComplete:(id)a3
{
  v7 = a3;
  if (![(VKMapViewAccessibility *)self accessibilityIsInTourGuideMode])
  {
    if ([(VKMapViewAccessibility *)self _axElementsInvalidForVisibleBounds]|| ([(VKMapViewAccessibility *)self _axElements], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
    {
      [(VKMapViewAccessibility *)self _axUpdateElements];
    }

    else
    {
      [(VKMapViewAccessibility *)self _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
      v5 = [v7 userInfo];
      v6 = [v5 objectForKey:@"AXVKUpdateAccessibilityElementsFocusedElementKey"];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v6);
      if ([(VKMapViewAccessibility *)self _axShouldSummarizeVisibleBounds])
      {
        [(VKMapViewAccessibility *)self _axSummaryForVisibleBounds];
      }
    }
  }
}

- (void)_axUserTrackingModeChange:(id)a3
{
  v5 = [(VKMapViewAccessibility *)self _axTourGuideManager];
  if ([(VKMapViewAccessibility *)self _axTrackingWithHeadingEnabled])
  {
    if (([v5 isRunning] & 1) == 0)
    {
      [v5 startTour];
    }
  }

  else if ([v5 isRunning])
  {
    [v5 stopTour];
  }

  v4 = [(VKMapViewAccessibility *)self _axWalkAssistManager];
  if ([v4 isInWalkingNavigatingState] && (objc_msgSend(v4, "hasArrived") & 1) == 0)
  {
    if (([v4 isRunning] & 1) == 0)
    {
      [v4 start];
    }
  }

  else if ([v4 isRunning])
  {
    [v4 stop];
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

- (id)initShouldRasterize:(BOOL)a3 inBackground:(BOOL)a4 contentScale:(double)a5 auditToken:(id)a6 mapViewPurpose:(int64_t)a7 allowsAntialiasing:(BOOL)a8
{
  v8 = a8;
  v11 = a4;
  v12 = a3;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = VKMapViewAccessibility;
  v15 = [(VKMapViewAccessibility *)&v18 initShouldRasterize:v12 inBackground:v11 contentScale:v14 auditToken:a7 mapViewPurpose:v8 allowsAntialiasing:a5];
  v16 = v15;
  if (v15)
  {
    [v15 _axInitializeTimers];
  }

  return v16;
}

- (void)didUpdateSceneStatus:(unsigned __int8)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = VKMapViewAccessibility;
  [(VKMapViewAccessibility *)&v5 didUpdateSceneStatus:?];
  if (v3)
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
    v3 = [(VKMapViewAccessibility *)self _axMapLabelLayoutTimer];
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 3221225472;
    v4[2] = __50__VKMapViewAccessibility__axHandleLabelsDidLayout__block_invoke;
    v4[3] = &unk_29F318908;
    objc_copyWeak(&v5, &location);
    [v3 afterDelay:v4 processBlock:0.25];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __50__VKMapViewAccessibility__axHandleLabelsDidLayout__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axUpdateElements];
}

- (void)setMapType:(int)a3
{
  v3.receiver = self;
  v3.super_class = VKMapViewAccessibility;
  [(VKMapViewAccessibility *)&v3 setMapType:*&a3];
  AXPerformBlockOnMainThreadAfterDelay();
}

- (void)setCurrentLocationText:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = VKMapViewAccessibility;
  [(VKMapViewAccessibility *)&v5 setCurrentLocationText:v4];
  [(VKMapViewAccessibility *)self _axSetCurrentLocationText:v4];
}

@end