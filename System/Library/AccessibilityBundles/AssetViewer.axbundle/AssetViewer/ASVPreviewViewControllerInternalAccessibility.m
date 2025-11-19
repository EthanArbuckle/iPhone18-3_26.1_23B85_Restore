@interface ASVPreviewViewControllerInternalAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axActivateForEntityController:(id)a3 deltaYaw:(float)a4 deltaPitch:(float)a5;
- (BOOL)_axIsAccessibilityElementForEntityController:(id)a3;
- (BOOL)_axIsOffScreenForEntityWrapper:(id)a3;
- (BOOL)_axTranslateForLevitation:(BOOL)a3 delta:(id)a4 entityController:;
- (CGRect)_axBoundingRectForEntityController:(id)a3;
- (CGRect)_axBoundingRectForEntityWrapper:(id)a3;
- (CGRect)_axBoundsForControls;
- (CGRect)_axFrameForEntityController:(id)a3;
- (id)_axARModeControlsForEntityController:(id)a3 isRTL:(BOOL)a4;
- (id)_axControlForRotationWithDeltaYaw:(float)a3 deltaPitch:(float)a4 nameFormat:(id)a5 hintFormat:(id)a6 shouldUseArrows:(BOOL)a7 entityController:(id)a8;
- (id)_axControlForScalingForEntityController:(id)a3;
- (id)_axControlsViewStack;
- (id)_axCreateAssetElementForEntityController:(id)a3;
- (id)_axDescriptionForCurrentPitchForEntityController:(id)a3;
- (id)_axDescriptionForCurrentPositionForEntityController:(id)a3;
- (id)_axDescriptionForCurrentRotationForEntityController:(id)a3;
- (id)_axDescriptionForPitchInDegrees:(int64_t)a3;
- (id)_axDescriptionForRotationInDegrees:(int64_t)a3;
- (id)_axEntityElementsForEntityController:(id)a3;
- (id)_axLabelForEntityController:(id)a3;
- (id)_axNameForEntityController:(id)a3;
- (id)_axObjectModeControlsForEntityController:(id)a3 isRTL:(BOOL)a4;
- (id)_axRootEntityWrapperForEntityController:(id)a3;
- (id)_axUnifiedGestureRecognizerForEntityController:(id)a3;
- (int64_t)_axEmitterMode;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAdjustScaleByMultiplier:(float)a3 entityController:(id)a4;
- (void)_axAnnotateAsControl:(id)a3;
- (void)_axCheckForAppearanceOfObjectsWithTimer:(id)a3;
- (void)_axGetAccessibilityFrame:(CGRect *)a3 path:(id *)a4 forArrowTowardsEdge:(unint64_t)a5 isDoubleArrow:(BOOL)a6;
- (void)_axResetToInitialScaleForEntityAction:(id)a3;
- (void)_axToggleVisibilityAnnouncementsIfNeeded;
- (void)_axUpdateARViewAccessibilityElements;
- (void)_axUpdateForAXSettings;
- (void)_axUpdateForOldEmitterMode:(int64_t)a3;
- (void)accessibilityDidSetUpEntityControllers;
- (void)entityController:(id)a3 doubleTappedAt:(CGPoint)a4;
- (void)handleTapAtPointWithPoint:(CGPoint)a3;
- (void)updateInterfaceState;
@end

@implementation ASVPreviewViewControllerInternalAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ASVPreviewViewControllerInternal" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"AssetViewer.EntityController" conformsToProtocol:@"ASVUnifiedGestureRecognizerDelegate"];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"currentlyDisallowsUnifiedGestureRecognizerAction" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"handleTapAtPointWithPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"overlayController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityEntityControllers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityRootEntityController" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityARView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"updateInterfaceState" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"entityController:doubleTappedAt:" withFullSignature:{"v", "@", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityDidSetUpEntityControllers" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityShowControls" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ASVPreviewViewControllerInternal" hasInstanceMethod:@"accessibilityDistanceInMetersFromEntityController:" withFullSignature:{"f", "@", 0}];
  [v3 validateClass:@"AssetViewer.ARQuickLookOverlayController" hasInstanceMethod:@"controlsViewStack" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"accessibilityAssetURL" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"assetYaw" withFullSignature:{"f", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"assetPitch" withFullSignature:{"f", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"assetScale" withFullSignature:{"f", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"assetScreenPosition" withFullSignature:{"1", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"rotateByDeltaYaw:deltaPitch:" withFullSignature:{"v", "f", "f", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"worldGestureRecognizer:translatedAssetToScreenPoint:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"worldGestureRecognizer:levitatedAssetToScreenPoint:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"scaleTo:updateARScale:" withFullSignature:{"v", "f", "B", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"worldGestureRecognizer" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"levitationHeight" withFullSignature:{"f", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"calculateAssetScreenBoundingRectIn:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [v3 validateClass:@"AssetViewer.EntityController" hasInstanceMethod:@"entityAccessibilityWrappers" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewDidDisappear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"AssetViewer.ARQLView" hasInstanceMethod:@"emitterMode" withFullSignature:{"q", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"isEntityRoot" withFullSignature:{"B", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"entityLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"rootEntityWrapper" withFullSignature:{"@", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"isEntityActive" withFullSignature:{"B", 0}];
  [v3 validateClass:@"RealityKit.__EntityAccessibilityWrapper" hasInstanceMethod:@"calculateScreenBoundingRectIn:" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", "@", 0}];
  [v3 validateClass:@"RealityKit.ARView" hasInstanceMethod:@"accessibilityElementsForEntityWrappers:" withFullSignature:{"@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  objc_initWeak(&location, v3);
  objc_initWeak(&from, self);
  v6 = MEMORY[0x29EDCA5F8];
  v7 = 3221225472;
  v8 = __91__ASVPreviewViewControllerInternalAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v9 = &unk_29F2A1D00;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  [v3 _setAccessibilityFrameBlock:&v6];
  [v3 setAccessibilityNavigationStyle:{2, v6, v7, v8, v9}];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateARViewAccessibilityElements];
  if (![(ASVPreviewViewControllerInternalAccessibility *)self _axHasHandledLoadAX])
  {
    [(ASVPreviewViewControllerInternalAccessibility *)self _axToggleVisibilityAnnouncementsIfNeeded];
    v4 = [MEMORY[0x29EDBA068] defaultCenter];
    [v4 addObserver:self selector:sel__axDidToggleAXSetting_ name:*MEMORY[0x29EDC8000] object:0];

    v5 = [MEMORY[0x29EDBA068] defaultCenter];
    [v5 addObserver:self selector:sel__axDidToggleAXSetting_ name:*MEMORY[0x29EDC7F48] object:0];

    [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateForAXSettings];
    [(ASVPreviewViewControllerInternalAccessibility *)self _axSetHasHandledLoadAX:1];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

double __91__ASVPreviewViewControllerInternalAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _axBoundsForControls];
  *&v4 = UIAccessibilityConvertFrameToScreenCoordinates(v6, WeakRetained);

  return v4;
}

- (void)_axUpdateForAXSettings
{
  objc_opt_class();
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axOverlayController];
  v4 = __UIAccessibilityCastAsSafeCategory();

  if ([v4 axShouldDisableAutoHidingControls])
  {
    v5 = MEMORY[0x29EDCA5F8];
    v6 = 3221225472;
    v7 = __71__ASVPreviewViewControllerInternalAccessibility__axUpdateForAXSettings__block_invoke;
    v8 = &unk_29F2A1D28;
    v9 = self;
    AXPerformSafeBlock();
  }

  [v4 axUpdateAutoHideControlsTimer];
}

- (id)_axControlsViewStack
{
  v2 = [(ASVPreviewViewControllerInternalAccessibility *)self _axOverlayController];
  v3 = [v2 safeUIViewForKey:@"controlsViewStack"];

  return v3;
}

- (id)_axRootEntityWrapperForEntityController:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityWrappersForEntityController:a3, 0];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 safeBoolForKey:@"isEntityRoot"])
        {
          v9 = v8;
LABEL_13:
          v10 = v9;
          goto LABEL_14;
        }

        v9 = [v8 safeValueForKey:@"rootEntityWrapper"];
        if (v9)
        {
          goto LABEL_13;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_14:

  v11 = *MEMORY[0x29EDCA608];

  return v10;
}

- (id)_axNameForEntityController:(id)a3
{
  v4 = a3;
  v5 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityControllers];
  v6 = [v5 firstObject];
  v7 = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityWrapperForEntityController:v6];
  v8 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityWrapper:v7];

  if (![v8 length])
  {
    objc_opt_class();
    v9 = [v4 safeValueForKey:@"accessibilityAssetURL"];
    v10 = __UIAccessibilityCastAsClass();

    v11 = [v10 URLByDeletingPathExtension];
    v12 = [v11 lastPathComponent];

    v8 = v12;
  }

  if (![v8 length])
  {
    v13 = accessibilityLocalizedString(@"DEFAULT_ASSET_NAME");

    v8 = v13;
  }

  return v8;
}

- (CGRect)_axBoundsForControls
{
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlsViewStack];
  v13 = v12;
  if (v12)
  {
    [v12 bounds];
    [v3 convertRect:v13 fromView:?];
    MaxY = CGRectGetMaxY(v19);
    v11 = v11 - (MaxY - v7);
    v7 = MaxY;
  }

  v15 = v5;
  v16 = v7;
  v17 = v9;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)_axGetAccessibilityFrame:(CGRect *)a3 path:(id *)a4 forArrowTowardsEdge:(unint64_t)a5 isDoubleArrow:(BOOL)a6
{
  v6 = a6;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundsForControls];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  path = [MEMORY[0x29EDC7948] bezierPath];
  if (a5 == 8 || a5 == 2)
  {
    v47.origin.x = v12;
    v47.origin.y = v14;
    v47.size.width = v16;
    v47.size.height = v18;
    MinY = CGRectGetMinY(v47);
    v48.origin.x = v12;
    v48.origin.y = v14;
    v48.size.width = v16;
    v48.size.height = v18;
    v20 = MinY + (CGRectGetHeight(v48) + -80.0) * 0.5;
    if (a5 == 2)
    {
      v21 = 50.0;
      v22 = 80.0;
      v49.origin.x = v12;
      v49.origin.y = v20;
      v49.size.width = 50.0;
      v49.size.height = 80.0;
      MinX = CGRectGetMinX(v49);
      v50.origin.x = v12;
      v50.origin.y = v20;
      v50.size.width = 50.0;
      v50.size.height = 80.0;
      [(UIBezierPath *)path moveToPoint:MinX, CGRectGetMidY(v50)];
      v51.origin.x = v12;
      v51.origin.y = v20;
      v51.size.width = 50.0;
      v51.size.height = 80.0;
      MaxX = CGRectGetMaxX(v51);
      v52.origin.x = v12;
      v52.origin.y = v20;
      v52.size.width = 50.0;
      v52.size.height = 80.0;
      [(UIBezierPath *)path addLineToPoint:MaxX, CGRectGetMinY(v52)];
      v53.origin.x = v12;
      v53.origin.y = v20;
      v53.size.width = 50.0;
      v53.size.height = 80.0;
      v25 = CGRectGetMaxX(v53);
      v54.origin.x = v12;
      v54.origin.y = v20;
      v54.size.width = 50.0;
      v54.size.height = 80.0;
      MaxY = CGRectGetMaxY(v54);
      v27 = v12;
    }

    else
    {
      v55.origin.x = v12;
      v55.origin.y = v14;
      v55.size.width = v16;
      v55.size.height = v18;
      v27 = CGRectGetMaxX(v55) + -50.0;
      v21 = 50.0;
      v22 = 80.0;
      v56.origin.x = v27;
      v56.origin.y = v20;
      v56.size.width = 50.0;
      v56.size.height = 80.0;
      v28 = CGRectGetMaxX(v56);
      v57.origin.x = v27;
      v57.origin.y = v20;
      v57.size.width = 50.0;
      v57.size.height = 80.0;
      [(UIBezierPath *)path moveToPoint:v28, CGRectGetMidY(v57)];
      v58.origin.x = v27;
      v58.origin.y = v20;
      v58.size.width = 50.0;
      v58.size.height = 80.0;
      v29 = CGRectGetMinX(v58);
      v59.origin.x = v27;
      v59.origin.y = v20;
      v59.size.width = 50.0;
      v59.size.height = 80.0;
      [(UIBezierPath *)path addLineToPoint:v29, CGRectGetMinY(v59)];
      v60.origin.x = v27;
      v60.origin.y = v20;
      v60.size.width = 50.0;
      v60.size.height = 80.0;
      v25 = CGRectGetMinX(v60);
      v61.origin.x = v27;
      v61.origin.y = v20;
      v61.size.width = 50.0;
      v61.size.height = 80.0;
      MaxY = CGRectGetMaxY(v61);
    }

    v14 = v20;
    goto LABEL_7;
  }

  v22 = 75.0;
  if (v6)
  {
    v31 = 75.0;
  }

  else
  {
    v31 = 50.0;
  }

  v63.origin.x = v12;
  v63.origin.y = v14;
  v63.size.width = v16;
  v63.size.height = v18;
  v32 = CGRectGetMinX(v63);
  v64.origin.x = v12;
  v64.origin.y = v14;
  v64.size.width = v16;
  v64.size.height = v18;
  v27 = v32 + (CGRectGetWidth(v64) + -80.0) * 0.5;
  if (a5 != 4)
  {
    if (a5 == 1)
    {
      v21 = 80.0;
      v65.origin.x = v27;
      v65.origin.y = v14;
      v65.size.width = 80.0;
      v65.size.height = v31;
      MidX = CGRectGetMidX(v65);
      v66.origin.x = v27;
      v66.origin.y = v14;
      v66.size.width = 80.0;
      v66.size.height = v31;
      [(UIBezierPath *)path moveToPoint:MidX, CGRectGetMinY(v66)];
      v67.origin.x = v27;
      v67.origin.y = v14;
      v67.size.width = 80.0;
      v67.size.height = v31;
      v34 = CGRectGetMaxY(v67);
      if (v6)
      {
        MaxY = v34 + -25.0;
        v68.origin.x = v27;
        v68.origin.y = v14;
        v68.size.width = 80.0;
        v68.size.height = v31;
        [(UIBezierPath *)path addLineToPoint:CGRectGetMinX(v68), MaxY];
        v69.origin.x = v27;
        v69.origin.y = v14;
        v69.size.width = 80.0;
        v69.size.height = v31;
        [(UIBezierPath *)path addLineToPoint:CGRectGetMinX(v69) + 20.0, MaxY];
        v70.origin.x = v27;
        v70.origin.y = v14;
        v70.size.width = 80.0;
        v70.size.height = v31;
        v35 = CGRectGetMinX(v70);
        v71.origin.x = v27;
        v71.origin.y = v14;
        v71.size.width = 80.0;
        v71.size.height = v31;
        [(UIBezierPath *)path addLineToPoint:v35, CGRectGetMaxY(v71)];
        v72.origin.x = v27;
        v72.origin.y = v14;
        v72.size.width = 80.0;
        v72.size.height = v31;
        v36 = CGRectGetMaxX(v72);
        v73.origin.x = v27;
        v73.origin.y = v14;
        v73.size.width = 80.0;
        v73.size.height = v31;
        v37 = CGRectGetMaxY(v73);
LABEL_20:
        [(UIBezierPath *)path addLineToPoint:v36, v37, v44];
        v84.origin.x = v27;
        v84.origin.y = v14;
        v84.size.width = 80.0;
        v84.size.height = v31;
        [(UIBezierPath *)path addLineToPoint:CGRectGetMaxX(v84) + -20.0, MaxY];
        v85.origin.x = v27;
        v85.origin.y = v14;
        v85.size.width = 80.0;
        v85.size.height = v31;
        v25 = CGRectGetMaxX(v85);
        goto LABEL_7;
      }

      v90.origin.x = v27;
      v90.origin.y = v14;
      v90.size.width = 80.0;
      v90.size.height = v31;
      v43 = CGRectGetMinX(v90);
      v91.origin.x = v27;
      v91.origin.y = v14;
      v91.size.width = 80.0;
      v91.size.height = v31;
      [(UIBezierPath *)path addLineToPoint:v43, CGRectGetMaxY(v91)];
      v92.origin.x = v27;
      v92.origin.y = v14;
      v92.size.width = 80.0;
      v92.size.height = v31;
      v25 = CGRectGetMaxX(v92);
      v93.origin.x = v27;
      v93.origin.y = v14;
      v93.size.width = 80.0;
      v93.size.height = v31;
      v42 = CGRectGetMaxY(v93);
      goto LABEL_23;
    }

    v44 = a5;
    _AXAssert();
  }

  v74.origin.x = v12;
  v74.origin.y = v14;
  v74.size.width = v16;
  v74.size.height = v18;
  v14 = CGRectGetMaxY(v74) - v31;
  v21 = 80.0;
  v75.origin.x = v27;
  v75.origin.y = v14;
  v75.size.width = 80.0;
  v75.size.height = v31;
  v38 = CGRectGetMidX(v75);
  v76.origin.x = v27;
  v76.origin.y = v14;
  v76.size.width = 80.0;
  v76.size.height = v31;
  [(UIBezierPath *)path moveToPoint:v38, CGRectGetMaxY(v76)];
  v77.origin.x = v27;
  v77.origin.y = v14;
  v77.size.width = 80.0;
  v77.size.height = v31;
  v39 = CGRectGetMinY(v77);
  if (v6)
  {
    MaxY = v39 + 25.0;
    v78.origin.x = v27;
    v78.origin.y = v14;
    v78.size.width = 80.0;
    v78.size.height = v31;
    [(UIBezierPath *)path addLineToPoint:CGRectGetMinX(v78), MaxY];
    v79.origin.x = v27;
    v79.origin.y = v14;
    v79.size.width = 80.0;
    v79.size.height = v31;
    [(UIBezierPath *)path addLineToPoint:CGRectGetMinX(v79) + 20.0, MaxY];
    v80.origin.x = v27;
    v80.origin.y = v14;
    v80.size.width = 80.0;
    v80.size.height = v31;
    v40 = CGRectGetMinX(v80);
    v81.origin.x = v27;
    v81.origin.y = v14;
    v81.size.width = 80.0;
    v81.size.height = v31;
    [(UIBezierPath *)path addLineToPoint:v40, CGRectGetMinY(v81)];
    v82.origin.x = v27;
    v82.origin.y = v14;
    v82.size.width = 80.0;
    v82.size.height = v31;
    v36 = CGRectGetMaxX(v82);
    v83.origin.x = v27;
    v83.origin.y = v14;
    v83.size.width = 80.0;
    v83.size.height = v31;
    v37 = CGRectGetMinY(v83);
    goto LABEL_20;
  }

  v86.origin.x = v27;
  v86.origin.y = v14;
  v86.size.width = 80.0;
  v86.size.height = v31;
  v41 = CGRectGetMinX(v86);
  v87.origin.x = v27;
  v87.origin.y = v14;
  v87.size.width = 80.0;
  v87.size.height = v31;
  [(UIBezierPath *)path addLineToPoint:v41, CGRectGetMinY(v87)];
  v88.origin.x = v27;
  v88.origin.y = v14;
  v88.size.width = 80.0;
  v88.size.height = v31;
  v25 = CGRectGetMaxX(v88);
  v89.origin.x = v27;
  v89.origin.y = v14;
  v89.size.width = 80.0;
  v89.size.height = v31;
  v42 = CGRectGetMinY(v89);
LABEL_23:
  MaxY = v42;
  v22 = 50.0;
LABEL_7:
  [(UIBezierPath *)path addLineToPoint:v25, MaxY, v44];
  [(UIBezierPath *)path closePath];
  v30 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v62.origin.x = v27;
  v62.origin.y = v14;
  v62.size.width = v21;
  v62.size.height = v22;
  *a3 = UIAccessibilityConvertFrameToScreenCoordinates(v62, v30);
  *a4 = UIAccessibilityConvertPathToScreenCoordinates(path, v30);
}

- (void)_axAnnotateAsControl:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __70__ASVPreviewViewControllerInternalAccessibility__axAnnotateAsControl___block_invoke;
  v5[3] = &unk_29F2A1D50;
  objc_copyWeak(&v6, &location);
  [v4 _setIsAccessibilityElementBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __70__ASVPreviewViewControllerInternalAccessibility__axAnnotateAsControl___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axShouldExposeControls];

  return v2;
}

- (id)_axDescriptionForRotationInDegrees:(int64_t)a3
{
  v3 = round(a3 / 5.0) * 5.0;
  v4 = v3;
  v5 = 180;
  if (v3 < 180)
  {
    v5 = v3;
  }

  v6 = 360 * ((v4 - v5 + 359) / 0x168uLL);
  v7 = v4 - v6;
  v8 = -180;
  if ((v4 - v6) > -180)
  {
    v8 = v4 - v6;
  }

  v9 = v8 + v6;
  v10 = v9 == v4;
  v11 = (v9 - v4 - (v9 != v4)) / 0x168;
  if (!v10)
  {
    ++v11;
  }

  v12 = v7 + 360 * v11;
  if (v12 == -180 || v12 == 180)
  {
    v13 = @"ROTATE_TO_180_ANNOUNCEMENT";
  }

  else
  {
    if (v12)
    {
      v15 = MEMORY[0x29EDBA0F8];
      if ((v12 & 0x8000000000000000) != 0)
      {
        v16 = accessibilityLocalizedString(@"ROTATE_TO_CLOCKWISE_ANNOUNCEMENT");
        [v15 localizedStringWithFormat:v16, -v12];
      }

      else
      {
        v16 = accessibilityLocalizedString(@"ROTATE_TO_COUNTERCLOCKWISE_ANNOUNCEMENT");
        [v15 localizedStringWithFormat:v16, v12];
      }
      v14 = ;

      goto LABEL_17;
    }

    v13 = @"ROTATE_TO_ZERO_ANNOUNCEMENT";
  }

  v14 = accessibilityLocalizedString(v13);
LABEL_17:

  return v14;
}

- (id)_axDescriptionForPitchInDegrees:(int64_t)a3
{
  v3 = round(a3 / 5.0) * 5.0;
  v4 = v3;
  v5 = 180;
  if (v3 < 180)
  {
    v5 = v3;
  }

  v6 = 360 * ((v4 - v5 + 359) / 0x168uLL);
  v7 = v4 - v6;
  v8 = -180;
  if ((v4 - v6) > -180)
  {
    v8 = v4 - v6;
  }

  v9 = v8 + v6;
  v10 = v9 == v4;
  v11 = (v9 - v4 - (v9 != v4)) / 0x168;
  if (!v10)
  {
    ++v11;
  }

  v12 = v7 + 360 * v11;
  if (v12 == -180 || v12 == 180)
  {
    v13 = @"UPSIDE_DOWN_ANNOUNCEMENT";
  }

  else
  {
    if (v12)
    {
      v15 = MEMORY[0x29EDBA0F8];
      if ((v12 & 0x8000000000000000) != 0)
      {
        v16 = accessibilityLocalizedString(@"TILTED_AWAY_ANNOUNCEMENT");
        [v15 localizedStringWithFormat:v16, -v12];
      }

      else
      {
        v16 = accessibilityLocalizedString(@"TILTED_TOWARD_ANNOUNCEMENT");
        [v15 localizedStringWithFormat:v16, v12];
      }
      v14 = ;

      goto LABEL_17;
    }

    v13 = @"NOT_TILTED_ANNOUNCEMENT";
  }

  v14 = accessibilityLocalizedString(v13);
LABEL_17:

  return v14;
}

- (id)_axDescriptionForCurrentRotationForEntityController:(id)a3
{
  [a3 safeFloatForKey:@"assetYaw"];

  return [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForRotationInDegrees:(v4 / 0.0174532925)];
}

- (id)_axDescriptionForCurrentPitchForEntityController:(id)a3
{
  [a3 safeFloatForKey:@"assetPitch"];

  return [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForPitchInDegrees:(v4 / 0.0174532925)];
}

- (id)_axLabelForEntityController:(id)a3
{
  v4 = a3;
  v5 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityController:v4];
  v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode];
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (v6)
    {
      v7 = @"ASSET_IS_NOT_PLACED";
    }

    else
    {
      if (![(ASVPreviewViewControllerInternalAccessibility *)self _axIsOffScreenForEntityController:v4])
      {
        goto LABEL_10;
      }

      v7 = @"ASSET_IS_OFF_SCREEN";
    }

    v8 = accessibilityLocalizedString(v7);
    v9 = __UIAXStringForVariables();
  }

  else
  {
    if (![(ASVPreviewViewControllerInternalAccessibility *)self _axShouldExposeControls])
    {
      goto LABEL_10;
    }

    v8 = [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentRotationForEntityController:v4];
    v11 = [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentPitchForEntityController:v4];
    v9 = __UIAXStringForVariables();

    v5 = v11;
  }

  v5 = v9;
LABEL_10:

  return v5;
}

- (CGRect)_axFrameForEntityController:(id)a3
{
  v4 = a3;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundsForControls];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (([(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode]& 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundingRectForEntityController:v4];
    v31.origin.x = v6;
    v31.origin.y = v8;
    v31.size.width = v10;
    v31.size.height = v12;
    v27 = CGRectIntersection(v26, v31);
    x = v27.origin.x;
    y = v27.origin.y;
    width = v27.size.width;
    height = v27.size.height;
    if (!CGRectIsNull(v27))
    {
      v12 = height;
      v10 = width;
      v8 = y;
      v6 = x;
    }
  }

  v17 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v28.origin.x = v6;
  v28.origin.y = v8;
  v28.size.width = v10;
  v28.size.height = v12;
  v29 = UIAccessibilityConvertFrameToScreenCoordinates(v28, v17);
  v18 = v29.origin.x;
  v19 = v29.origin.y;
  v20 = v29.size.width;
  v21 = v29.size.height;

  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (BOOL)_axIsAccessibilityElementForEntityController:(id)a3
{
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityElementsForEntityController:a3];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_axCreateAssetElementForEntityController:(id)a3
{
  v4 = a3;
  v5 = [AXEntityControllerElement alloc];
  v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v7 = [(AXEntityControllerElement *)v5 initWithAccessibilityContainer:v6 entityController:v4 previewViewController:self];

  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke;
  v18[3] = &unk_29F2A1D78;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  [(AXEntityControllerElement *)v7 _setAccessibilityLabelBlock:v18];
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_2;
  v15[3] = &unk_29F2A1D00;
  objc_copyWeak(&v16, &location);
  objc_copyWeak(&v17, &from);
  [(AXEntityControllerElement *)v7 _setAccessibilityFrameBlock:v15];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_3;
  v12[3] = &unk_29F2A1DA0;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [(AXEntityControllerElement *)v7 _setIsAccessibilityElementBlock:v12];
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_4;
  v9[3] = &unk_29F2A1DC8;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  [(AXEntityControllerElement *)v7 _setAccessibilityElementsBlock:v9];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v7;
}

id __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _axLabelForEntityController:v3];

  return v4;
}

double __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _axFrameForEntityController:v3];
  v5 = v4;

  return v5;
}

uint64_t __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _axIsAccessibilityElementForEntityController:v3];

  return v4;
}

id __90__ASVPreviewViewControllerInternalAccessibility__axCreateAssetElementForEntityController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _axEntityElementsForEntityController:v3];

  return v4;
}

- (BOOL)_axActivateForEntityController:(id)a3 deltaYaw:(float)a4 deltaPitch:(float)a5
{
  v8 = a3;
  v16 = MEMORY[0x29EDCA5F8];
  v17 = 3221225472;
  v18 = __100__ASVPreviewViewControllerInternalAccessibility__axActivateForEntityController_deltaYaw_deltaPitch___block_invoke;
  v19 = &unk_29F2A1DF0;
  v9 = v8;
  v20 = v9;
  v21 = a4;
  v22 = a5;
  AXPerformSafeBlock();
  if (a4 == 0.0)
  {
    [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentPitchForEntityController:v9];
  }

  else
  {
    [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentRotationForEntityController:v9];
  }
  v10 = ;
  v11 = dispatch_time(0, 100000000);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __100__ASVPreviewViewControllerInternalAccessibility__axActivateForEntityController_deltaYaw_deltaPitch___block_invoke_2;
  block[3] = &unk_29F2A1D28;
  v15 = v10;
  v12 = v10;
  dispatch_after(v11, MEMORY[0x29EDCA578], block);

  return 1;
}

uint64_t __100__ASVPreviewViewControllerInternalAccessibility__axActivateForEntityController_deltaYaw_deltaPitch___block_invoke(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = *(a1 + 40);
  LODWORD(a3) = *(a1 + 44);
  return [*(a1 + 32) rotateByDeltaYaw:a2 deltaPitch:a3];
}

- (id)_axControlForRotationWithDeltaYaw:(float)a3 deltaPitch:(float)a4 nameFormat:(id)a5 hintFormat:(id)a6 shouldUseArrows:(BOOL)a7 entityController:(id)a8
{
  v9 = a7;
  v14 = a5;
  v15 = a6;
  v16 = a8;
  v17 = objc_alloc(MEMORY[0x29EDC78F8]);
  v18 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v19 = [v17 initWithAccessibilityContainer:v18];

  [(ASVPreviewViewControllerInternalAccessibility *)self _axAnnotateAsControl:v19];
  v20 = *(MEMORY[0x29EDB90E0] + 16);
  v49 = *MEMORY[0x29EDB90E0];
  v50 = v20;
  if (a3 == 0.0)
  {
    v46 = 0;
    if (a4 < 0.0)
    {
      v21 = 1;
    }

    else
    {
      v21 = 4;
    }

    v22 = &v46;
    v23 = &v46;
    goto LABEL_11;
  }

  if (v9)
  {
    v48 = 0;
    if (a3 >= 0.0)
    {
      v21 = 8;
    }

    else
    {
      v21 = 2;
    }

    v22 = &v48;
    v23 = &v48;
LABEL_11:
    [(ASVPreviewViewControllerInternalAccessibility *)self _axGetAccessibilityFrame:&v49 path:v23 forArrowTowardsEdge:v21 isDoubleArrow:0];
    goto LABEL_13;
  }

  v47 = 0;
  v22 = &v47;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axGetAccessibilityFrame:&v49 path:&v47 forRotationControlClockwise:a3 < 0.0];
LABEL_13:
  v24 = *v22;
  [v19 setAccessibilityFrame:{v49, v50}];
  [v19 setAccessibilityPath:v24];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v16);
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 3221225472;
  v40[2] = __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke;
  v40[3] = &unk_29F2A1E18;
  v25 = v14;
  v41 = v25;
  objc_copyWeak(&v42, &location);
  objc_copyWeak(&v43, &from);
  [v19 _setAccessibilityLabelBlock:v40];
  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 3221225472;
  v36[2] = __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke_2;
  v36[3] = &unk_29F2A1E18;
  v26 = v15;
  v37 = v26;
  objc_copyWeak(&v38, &location);
  objc_copyWeak(&v39, &from);
  [v19 _setAccessibilityHintBlock:v36];
  [v19 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
  v28 = MEMORY[0x29EDCA5F8];
  v29 = 3221225472;
  v30 = __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke_3;
  v31 = &unk_29F2A1E40;
  objc_copyWeak(&v32, &location);
  objc_copyWeak(&v33, &from);
  v34 = a3;
  v35 = a4;
  [v19 _setAccessibilityActivateBlock:&v28];
  [v19 _accessibilitySetScannerActivateBehavior:{1, v28, v29, v30, v31}];
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&v43);
  objc_destroyWeak(&v42);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v19;
}

id __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

id __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

uint64_t __149__ASVPreviewViewControllerInternalAccessibility__axControlForRotationWithDeltaYaw_deltaPitch_nameFormat_hintFormat_shouldUseArrows_entityController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v4) = *(a1 + 48);
  LODWORD(v5) = *(a1 + 52);
  v6 = [WeakRetained _axActivateForEntityController:v3 deltaYaw:v4 deltaPitch:v5];

  return v6;
}

- (id)_axUnifiedGestureRecognizerForEntityController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = [v3 safeValueForKey:@"worldGestureRecognizer"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (void)_axAdjustScaleByMultiplier:(float)a3 entityController:(id)a4
{
  v5 = a4;
  [(ASVPreviewViewControllerInternalAccessibility *)self _axAssetScaleForEntityController:v5];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axUnifiedGestureRecognizerForEntityController:v5];
  v9 = v8 = v5;
  v6 = v9;
  v7 = v5;
  AXPerformSafeBlock();
}

uint64_t __93__ASVPreviewViewControllerInternalAccessibility__axAdjustScaleByMultiplier_entityController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) unifiedGestureRecognizerBeganScaling:*(a1 + 40)];
  LODWORD(v2) = *(a1 + 48);
  [*(a1 + 32) unifiedGestureRecognizer:*(a1 + 40) scaledAssetToScale:v2];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 unifiedGestureRecognizerEndedScaling:v4];
}

- (void)_axResetToInitialScaleForEntityAction:(id)a3
{
  v4 = [a3 entityController];
  v3 = v4;
  AXPerformSafeBlock();
}

void __87__ASVPreviewViewControllerInternalAccessibility__axResetToInitialScaleForEntityAction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) assetScreenPosition];
  v3 = v2;
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) _axUnifiedGestureRecognizerForEntityController:*(a1 + 32)];
  [v4 unifiedGestureRecognizer:v5 doubleTappedAtScreenPoint:1 onAsset:v3];
}

- (id)_axControlForScalingForEntityController:(id)a3
{
  v58[1] = *MEMORY[0x29EDCA608];
  val = a3;
  v4 = objc_alloc(MEMORY[0x29EDC78F8]);
  v5 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v6 = [v4 initWithAccessibilityContainer:v5];

  [(ASVPreviewViewControllerInternalAccessibility *)self _axAnnotateAsControl:v6];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundsForControls];
  x = v60.origin.x;
  y = v60.origin.y;
  width = v60.size.width;
  height = v60.size.height;
  MaxX = CGRectGetMaxX(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MaxY = CGRectGetMaxY(v61);
  view = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v13 = MaxY + -100.0;
  if ([(UIView *)view effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    MinX = CGRectGetMinX(v62);
  }

  else
  {
    MinX = MaxX + -100.0;
  }

  v16 = MEMORY[0x29EDC7948];
  v63.origin.x = MinX + 25.0;
  v15 = v63.origin.x;
  v63.origin.y = v13;
  v63.size.width = 50.0;
  v63.size.height = 100.0;
  v17 = CGRectGetMinX(v63);
  v64.origin.x = v15;
  v64.origin.y = v13;
  v64.size.width = 50.0;
  v64.size.height = 100.0;
  v18 = [v16 bezierPathWithOvalInRect:{v17, CGRectGetMinY(v64), 50.0, 50.0}];
  v65.origin.x = v15;
  v65.origin.y = v13;
  v65.size.width = 50.0;
  v65.size.height = 100.0;
  v19 = CGRectGetMinX(v65);
  v66.origin.x = v15;
  v66.origin.y = v13;
  v66.size.width = 50.0;
  v66.size.height = 100.0;
  v20 = v19 + (CGRectGetWidth(v66) + -10.0) * 0.5;
  v67.origin.x = v15;
  v67.origin.y = v13;
  v67.size.width = 50.0;
  v67.size.height = 100.0;
  v21 = CGRectGetMinX(v67);
  v68.origin.x = v15;
  v68.origin.y = v13;
  v68.size.width = 50.0;
  v68.size.height = 100.0;
  v22 = v21 + (CGRectGetWidth(v68) + 10.0) * 0.5;
  v69.origin.x = v15;
  v69.origin.y = v13;
  v69.size.width = 50.0;
  v69.size.height = 100.0;
  v23 = CGRectGetMinY(v69) + 50.0;
  v70.origin.x = v15;
  v70.origin.y = v13;
  v70.size.width = 50.0;
  v70.size.height = 100.0;
  v24 = CGRectGetMaxY(v70);
  [(UIBezierPath *)v18 moveToPoint:v20, v23];
  [(UIBezierPath *)v18 addLineToPoint:v22, v23];
  [(UIBezierPath *)v18 addLineToPoint:v22, v24];
  [(UIBezierPath *)v18 addLineToPoint:v20, v24];
  [(UIBezierPath *)v18 closePath];
  memset(&v57, 0, sizeof(v57));
  v71.origin.x = v15;
  v71.origin.y = v13;
  v71.size.width = 50.0;
  v71.size.height = 100.0;
  MidX = CGRectGetMidX(v71);
  v72.origin.x = v15;
  v72.origin.y = v13;
  v72.size.width = 50.0;
  v72.size.height = 100.0;
  MidY = CGRectGetMidY(v72);
  CGAffineTransformMakeTranslation(&v57, MidX, MidY);
  v55 = v57;
  CGAffineTransformRotate(&v56, &v55, -0.785398163);
  v57 = v56;
  v73.origin.x = v15;
  v73.origin.y = v13;
  v73.size.width = 50.0;
  v73.size.height = 100.0;
  v27 = CGRectGetMidX(v73);
  v74.origin.x = v15;
  v74.origin.y = v13;
  v74.size.width = 50.0;
  v74.size.height = 100.0;
  v28 = CGRectGetMidY(v74);
  v55 = v57;
  CGAffineTransformTranslate(&v56, &v55, -v27, -v28);
  v57 = v56;
  [(UIBezierPath *)v18 applyTransform:&v56];
  v29 = UIAccessibilityConvertPathToScreenCoordinates(v18, view);
  [v6 setAccessibilityPath:v29];

  v30 = [v6 accessibilityPath];
  v31 = v30;
  PathBoundingBox = CGPathGetPathBoundingBox([v30 CGPath]);
  [v6 setAccessibilityFrame:{PathBoundingBox.origin.x, PathBoundingBox.origin.y, PathBoundingBox.size.width, PathBoundingBox.size.height}];

  objc_initWeak(&v56, self);
  objc_initWeak(&v55, val);
  v52[0] = MEMORY[0x29EDCA5F8];
  v52[1] = 3221225472;
  v52[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke;
  v52[3] = &unk_29F2A1D78;
  objc_copyWeak(&v53, &v56);
  objc_copyWeak(&v54, &v55);
  [v6 _setAccessibilityLabelBlock:v52];
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 3221225472;
  v49[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_2;
  v49[3] = &unk_29F2A1D78;
  objc_copyWeak(&v50, &v56);
  objc_copyWeak(&v51, &v55);
  [v6 _setAccessibilityHintBlock:v49];
  [v6 setAccessibilityTraits:*MEMORY[0x29EDC7F60]];
  v46[0] = MEMORY[0x29EDCA5F8];
  v46[1] = 3221225472;
  v46[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_3;
  v46[3] = &unk_29F2A1EB8;
  objc_copyWeak(&v47, &v56);
  objc_copyWeak(&v48, &v55);
  [v6 _setAccessibilityIncrementBlock:v46];
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_4;
  v43[3] = &unk_29F2A1EB8;
  objc_copyWeak(&v44, &v56);
  objc_copyWeak(&v45, &v55);
  [v6 _setAccessibilityDecrementBlock:v43];
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 3221225472;
  v40[2] = __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_5;
  v40[3] = &unk_29F2A1D78;
  objc_copyWeak(&v41, &v56);
  objc_copyWeak(&v42, &v55);
  [v6 _setAccessibilityValueBlock:v40];
  v32 = [AXEntityControllerAction alloc];
  v33 = accessibilityLocalizedString(@"SCALING_CONTROL_RESET");
  v34 = [(AXEntityControllerAction *)v32 initWithName:v33 target:self selector:sel__axResetToInitialScaleForEntityAction_];

  [(AXEntityControllerAction *)v34 setEntityController:val];
  v58[0] = v34;
  v35 = [MEMORY[0x29EDB8D80] arrayWithObjects:v58 count:1];
  [v6 setAccessibilityCustomActions:v35];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&v41);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v47);
  objc_destroyWeak(&v51);
  objc_destroyWeak(&v50);
  objc_destroyWeak(&v54);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&v55);
  objc_destroyWeak(&v56);

  v36 = *MEMORY[0x29EDCA608];

  return v6;
}

id __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"SCALING_CONTROL");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

id __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = accessibilityLocalizedString(@"SCALING_CONTROL_HINT");
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

void __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v3) = 1068149419;
  [WeakRetained _axAdjustScaleByMultiplier:v2 entityController:v3];
}

void __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  LODWORD(v3) = 0.75;
  [WeakRetained _axAdjustScaleByMultiplier:v2 entityController:v3];
}

id __89__ASVPreviewViewControllerInternalAccessibility__axControlForScalingForEntityController___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _axAssetScaleForAnnouncementsForEntityController:v3];
  v4 = AXFormatFloatWithPercentage();

  return v4;
}

- (BOOL)_axTranslateForLevitation:(BOOL)a3 delta:(id)a4 entityController:
{
  v5 = v4;
  v6 = a3;
  v8 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v42[7] = MEMORY[0x29EDCA5F8];
  v42[8] = 3221225472;
  v42[9] = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke;
  v42[10] = &unk_29F2A1EE0;
  v42[12] = &v43;
  v9 = v8;
  v42[11] = v9;
  AXPerformSafeBlock();
  v10 = v44[3];

  _Block_object_dispose(&v43, 8);
  [(ASVPreviewViewControllerInternalAccessibility *)self _axLevitationHeightForEntityController:v9];
  v12 = v11;
  LOBYTE(v43) = 0;
  objc_opt_class();
  v13 = [v9 safeValueForKey:@"worldGestureRecognizer"];
  v14 = __UIAccessibilityCastAsClass();

  if (v43 == 1)
  {
    abort();
  }

  v15 = vadd_f32(v10, v5);
  if (v6)
  {
    v16 = v42;
    v42[0] = MEMORY[0x29EDCA5F8];
    v42[1] = 3221225472;
    v17 = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_2;
  }

  else
  {
    v16 = v41;
    v41[0] = MEMORY[0x29EDCA5F8];
    v41[1] = 3221225472;
    v17 = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_3;
  }

  v16[2] = v17;
  v16[3] = &unk_29F2A1F08;
  v18 = v9;
  v16[4] = v18;
  v19 = v14;
  v16[5] = v19;
  v16[6] = v15;
  AXPerformSafeBlock();

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v35 = MEMORY[0x29EDCA5F8];
  v36 = 3221225472;
  v37 = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_4;
  v38 = &unk_29F2A1EE0;
  v40 = &v43;
  v20 = v18;
  v39 = v20;
  AXPerformSafeBlock();
  v21 = v44[3];

  _Block_object_dispose(&v43, 8);
  v22 = vmvn_s8(vceq_f32(v10, v21));
  if ((v22.i32[0] | v22.i32[1]))
  {
    if (!v6)
    {
      v32 = [(ASVPreviewViewControllerInternalAccessibility *)self _axDescriptionForCurrentPositionForEntityController:v20];
      goto LABEL_16;
    }

    [(ASVPreviewViewControllerInternalAccessibility *)self _axLevitationHeightForEntityController:v20];
    if (v12 <= 0.0 == v23 > 0.0)
    {
      if (v23 <= 0.0)
      {
        v24 = @"NOT_FLOATING";
      }

      else
      {
        v24 = @"FLOATING";
      }

      v32 = accessibilityLocalizedString(v24);
LABEL_16:
      v28 = v32;
      if (!v32)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v25 = MEMORY[0x29EDBA0F8];
    v26 = accessibilityLocalizedString(@"UNABLE_TO_MOVE");
    v27 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityController:v20];
    v28 = [v25 localizedStringWithFormat:v26, v27];

    if (v28)
    {
LABEL_11:
      v29 = dispatch_time(0, 100000000);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_5;
      block[3] = &unk_29F2A1D28;
      v34 = v28;
      v30 = v28;
      dispatch_after(v29, MEMORY[0x29EDCA578], block);
    }
  }

LABEL_12:

  return 1;
}

uint64_t __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) assetScreenPosition];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

uint64_t __98__ASVPreviewViewControllerInternalAccessibility__axTranslateForLevitation_delta_entityController___block_invoke_4(uint64_t a1)
{
  result = [*(a1 + 32) assetScreenPosition];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

id __121__ASVPreviewViewControllerInternalAccessibility__axControlForTranslationForLevitation_delta_nameFormat_entityController___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x29EDBA0F8];
  v3 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained _axNameForEntityController:v5];
  v7 = [v2 localizedStringWithFormat:v3, v6];

  return v7;
}

uint64_t __121__ASVPreviewViewControllerInternalAccessibility__axControlForTranslationForLevitation_delta_nameFormat_entityController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained _axTranslateForLevitation:v3 delta:v5 entityController:v4];

  return v6;
}

- (id)_axDescriptionForCurrentPositionForEntityController:(id)a3
{
  v4 = a3;
  v5 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundingRectForEntityController:v4];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v49.origin.x = v7;
  v49.origin.y = v9;
  v49.size.width = v11;
  v49.size.height = v13;
  v42 = CGRectIntersection(v41, v49);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (CGRectIsNull(v42))
  {
    v26 = 0;
    goto LABEL_18;
  }

  v43.origin.x = x;
  v43.origin.y = y;
  v43.size.width = width;
  v43.size.height = height;
  MidX = CGRectGetMidX(v43);
  v44.origin.x = x;
  v44.origin.y = y;
  v44.size.width = width;
  v44.size.height = height;
  MidY = CGRectGetMidY(v44);
  v45.origin.x = v7;
  v45.origin.y = v9;
  v45.size.width = v11;
  v45.size.height = v13;
  v28 = CGRectGetWidth(v45) * 0.333333333;
  v46.origin.x = v7;
  v46.origin.y = v9;
  v46.size.width = v11;
  v46.size.height = v13;
  v29 = CGRectGetWidth(v46);
  v47.origin.x = v7;
  v47.origin.y = v9;
  v47.size.width = v11;
  v47.size.height = v13;
  v30 = CGRectGetHeight(v47) * 0.333333333;
  v48.origin.x = v7;
  v48.origin.y = v9;
  v48.size.width = v11;
  v48.size.height = v13;
  v31 = CGRectGetHeight(v48) * 0.666666667;
  if (MidX >= v28)
  {
    if (MidX >= v29 * 0.666666667)
    {
      if (MidY < v30)
      {
        v32 = @"TOP_RIGHT";
        goto LABEL_17;
      }

      v33 = @"BOTTOM_RIGHT";
      v34 = @"MIDDLE_RIGHT";
    }

    else
    {
      if (MidY < v30)
      {
        v32 = @"TOP_CENTER";
        goto LABEL_17;
      }

      v33 = @"BOTTOM_CENTER";
      v34 = @"MIDDLE_CENTER";
    }

LABEL_14:
    if (MidY >= v31)
    {
      v32 = v33;
    }

    else
    {
      v32 = v34;
    }

    goto LABEL_17;
  }

  if (MidY >= v30)
  {
    v33 = @"BOTTOM_LEFT";
    v34 = @"MIDDLE_LEFT";
    goto LABEL_14;
  }

  v32 = @"TOP_LEFT";
LABEL_17:
  v35 = accessibilityLocalizedString(v32);
  v36 = MEMORY[0x29EDBA0F8];
  v37 = accessibilityLocalizedString(@"POSITIONED_AT_ANNOUNCEMENT");
  v26 = [v36 localizedStringWithFormat:v37, v35];

LABEL_18:

  return v26;
}

- (CGRect)_axBoundingRectForEntityController:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x29EDB90D8];
  v6 = *MEMORY[0x29EDB90D8];
  v7 = *(MEMORY[0x29EDB90D8] + 8);
  v8 = *(MEMORY[0x29EDB90D8] + 16);
  v9 = *(MEMORY[0x29EDB90D8] + 24);
  v10 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  if (v10)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x4010000000;
    v29 = "";
    v11 = v5[1];
    v30 = *v5;
    v31 = v11;
    v24 = v4;
    v25 = v10;
    AXPerformSafeBlock();
    if (!CGRectIsNull(v27[1]))
    {
      x = v27[1].origin.x;
      y = v27[1].origin.y;
      width = v27[1].size.width;
      height = v27[1].size.height;
      UIAccessibilityFrameForBounds();
      v6 = v16;
      v7 = v17;
      v8 = v18;
      v9 = v19;
    }

    _Block_object_dispose(&v26, 8);
  }

  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __84__ASVPreviewViewControllerInternalAccessibility__axBoundingRectForEntityController___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) calculateAssetScreenBoundingRectIn:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGRect)_axBoundingRectForEntityWrapper:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x29EDB90D8];
  v6 = *MEMORY[0x29EDB90D8];
  v7 = *(MEMORY[0x29EDB90D8] + 8);
  v8 = *(MEMORY[0x29EDB90D8] + 16);
  v9 = *(MEMORY[0x29EDB90D8] + 24);
  v10 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  if (v10)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x4010000000;
    v29 = "";
    v11 = v5[1];
    v30 = *v5;
    v31 = v11;
    v24 = v4;
    v25 = v10;
    AXPerformSafeBlock();
    if (!CGRectIsNull(v27[1]))
    {
      x = v27[1].origin.x;
      y = v27[1].origin.y;
      width = v27[1].size.width;
      height = v27[1].size.height;
      UIAccessibilityFrameForBounds();
      v6 = v16;
      v7 = v17;
      v8 = v18;
      v9 = v19;
    }

    _Block_object_dispose(&v26, 8);
  }

  v20 = v6;
  v21 = v7;
  v22 = v8;
  v23 = v9;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

uint64_t __81__ASVPreviewViewControllerInternalAccessibility__axBoundingRectForEntityWrapper___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) calculateScreenBoundingRectIn:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (int64_t)_axEmitterMode
{
  v2 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v3 = [v2 safeIntegerForKey:@"emitterMode"];

  return v3;
}

- (id)_axEntityElementsForEntityController:(id)a3
{
  v45 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityController];

  if (v6 == v4)
  {
    v7 = [MEMORY[0x29EDB8DE8] array];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityControllers];
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v9)
    {
      v10 = *v41;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityController];
          v14 = v12 == v13;

          if (v14)
          {
            v16 = AXLogAppAccessibility();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
            {
              [ASVPreviewViewControllerInternalAccessibility _axEntityElementsForEntityController:v16];
            }

            goto LABEL_15;
          }

          v15 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityWrappersForEntityController:v12];
          [v7 addObjectsFromArray:v15];
        }

        v9 = [v8 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  else
  {
    v7 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityWrappersForEntityController:v4];
  }

  v39 = 0;
  objc_opt_class();
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = 0;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 3221225472;
  v28 = __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke;
  v29 = &unk_29F2A1CD8;
  v32 = &v33;
  v17 = v5;
  v30 = v17;
  v18 = v7;
  v31 = v18;
  AXPerformSafeBlock();
  v19 = v34[5];

  _Block_object_dispose(&v33, 8);
  v20 = __UIAccessibilityCastAsClass();

  if (v39 == 1)
  {
    abort();
  }

  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke_2;
  v24[3] = &unk_29F2A1F80;
  v24[4] = self;
  v25 = v18;
  v21 = v18;
  [v20 enumerateObjectsUsingBlock:v24];

  v22 = *MEMORY[0x29EDCA608];

  return v20;
}

uint64_t __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accessibilityElementsForEntityWrappers:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2A1C71028]();
}

void __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v6 = [*(a1 + 40) objectAtIndexedSubscript:a3];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke_3;
  v8[3] = &unk_29F2A1F58;
  objc_copyWeak(&v10, &location);
  v7 = v6;
  v9 = v7;
  [v5 _setAccessibilityLabelBlock:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

id __86__ASVPreviewViewControllerInternalAccessibility__axEntityElementsForEntityController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axNameForEntityWrapper:*(a1 + 32)];
  if (([WeakRetained _axEmitterMode] & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v4 = @"ASSET_IS_NOT_PLACED";
  }

  else
  {
    if (![WeakRetained _axIsOffScreenForEntityWrapper:*(a1 + 32)])
    {
      goto LABEL_6;
    }

    v4 = @"ASSET_IS_OFF_SCREEN";
  }

  v7 = accessibilityLocalizedString(v4);
  v5 = __UIAXStringForVariables();

  v3 = v5;
LABEL_6:

  return v3;
}

- (id)_axObjectModeControlsForEntityController:(id)a3 isRTL:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x29EDB8DE8] array];
  v8 = [(ASVPreviewViewControllerInternalAccessibility *)self _axCreateAssetElementForEntityController:v6];
  [v7 addObject:v8];

  v9 = accessibilityLocalizedString(@"ROTATION_CONTROL_YAW_HINT");
  v10 = accessibilityLocalizedString(@"ROTATION_CONTROL_PITCH_HINT");
  v11 = accessibilityLocalizedString(@"ROTATION_CONTROL_CLOCKWISE");
  LODWORD(v12) = -1090123118;
  v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v11 deltaPitch:v9 nameFormat:1 hintFormat:v6 shouldUseArrows:v12 entityController:0.0];

  v14 = accessibilityLocalizedString(@"ROTATION_CONTROL_COUNTERCLOCKWISE");
  LODWORD(v15) = 1057360530;
  v16 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v14 deltaPitch:v9 nameFormat:1 hintFormat:v6 shouldUseArrows:v15 entityController:0.0];

  if (v4)
  {
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  if (v4)
  {
    v18 = v13;
  }

  else
  {
    v18 = v16;
  }

  [v7 addObject:v17];
  [v7 addObject:v18];
  v19 = accessibilityLocalizedString(@"ROTATION_CONTROL_AWAY");
  LODWORD(v20) = -1098511726;
  v21 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v19 deltaPitch:v10 nameFormat:1 hintFormat:v6 shouldUseArrows:0.0 entityController:v20];
  [v7 addObject:v21];

  v22 = accessibilityLocalizedString(@"ROTATION_CONTROL_TOWARD");
  LODWORD(v23) = 1048971922;
  v24 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v22 deltaPitch:v10 nameFormat:1 hintFormat:v6 shouldUseArrows:0.0 entityController:v23];
  [v7 addObject:v24];

  v25 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForScalingForEntityController:v6];
  [v7 addObject:v25];

  return v7;
}

- (id)_axARModeControlsForEntityController:(id)a3 isRTL:(BOOL)a4
{
  v41 = a4;
  v42[4] = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = [MEMORY[0x29EDB8DE8] array];
  v7 = [(ASVPreviewViewControllerInternalAccessibility *)self _axCreateAssetElementForEntityController:v5];
  [v6 addObject:v7];

  v8 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_LEFT");
  v9 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:0 delta:v8 nameFormat:v5 entityController:COERCE_DOUBLE(3259498496)];

  v10 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_RIGHT");
  v11 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:0 delta:v10 nameFormat:v5 entityController:COERCE_DOUBLE(1112014848)];

  v12 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_BACKWARD");
  v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:0 delta:v12 nameFormat:v5 entityController:-2.0615843e11];
  v38 = v13;

  v14 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_FORWARD");
  v15 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:0 delta:v14 nameFormat:v5 entityController:2.0615843e11];
  v37 = v15;

  v16 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_UP");
  v17 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:1 delta:v16 nameFormat:v5 entityController:-2.0615843e11];
  v36 = v17;

  v18 = accessibilityLocalizedString(@"TRANSLATION_CONTROL_DOWN");
  v19 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForTranslationForLevitation:1 delta:v18 nameFormat:v5 entityController:2.0615843e11];

  v39 = v11;
  v40 = v9;
  if (v41)
  {
    v20 = v11;
  }

  else
  {
    v20 = v9;
  }

  if (v41)
  {
    v21 = v9;
  }

  else
  {
    v21 = v11;
  }

  [v6 addObject:v20];
  [v6 addObject:v21];
  v42[0] = v13;
  v42[1] = v15;
  v42[2] = v17;
  v42[3] = v19;
  v22 = [MEMORY[0x29EDB8D80] arrayWithObjects:v42 count:4];
  [v6 addObjectsFromArray:v22];

  v23 = accessibilityLocalizedString(@"ROTATION_CONTROL_YAW_HINT");
  v24 = accessibilityLocalizedString(@"ROTATION_CONTROL_CLOCKWISE");
  LODWORD(v25) = -1090123118;
  v26 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v24 deltaPitch:v23 nameFormat:0 hintFormat:v5 shouldUseArrows:v25 entityController:0.0];

  v27 = accessibilityLocalizedString(@"ROTATION_CONTROL_COUNTERCLOCKWISE");
  LODWORD(v28) = 1057360530;
  v29 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForRotationWithDeltaYaw:v27 deltaPitch:v23 nameFormat:0 hintFormat:v5 shouldUseArrows:v28 entityController:0.0];
  v30 = v29;
  if (v41)
  {
    v31 = v29;
  }

  else
  {
    v31 = v26;
  }

  if (v41)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29;
  }

  [v6 addObject:v31];
  [v6 addObject:v32];
  v33 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlForScalingForEntityController:v5];
  [v6 addObject:v33];

  v34 = *MEMORY[0x29EDCA608];

  return v6;
}

- (void)_axUpdateARViewAccessibilityElements
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARView];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 effectiveUserInterfaceLayoutDirection];
    if (([(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode]& 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARModeControls];
      if (v6)
      {
LABEL_15:
        [v4 setAccessibilityElements:{v6, v15}];

        goto LABEL_16;
      }

      v7 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityControllers];
      v6 = [MEMORY[0x29EDB8DE8] array];
      v15 = 0u;
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axARModeControlsForEntityController:*(*(&v15 + 1) + 8 * i) isRTL:v5 == 1, v15];
            [v6 addObjectsFromArray:v13];
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      [(ASVPreviewViewControllerInternalAccessibility *)self _axSetARModeControls:v6];
    }

    else
    {
      v8 = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityController];
      v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axObjectModeControls];
      if (!v6)
      {
        v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axObjectModeControlsForEntityController:v8 isRTL:v5 == 1];
        [(ASVPreviewViewControllerInternalAccessibility *)self _axSetObjectModeControls:v6];
      }
    }

    goto LABEL_15;
  }

LABEL_16:

  v14 = *MEMORY[0x29EDCA608];
}

- (void)handleTapAtPointWithPoint:(CGPoint)a3
{
  v10.receiver = self;
  v10.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v10 handleTapAtPointWithPoint:a3.x, a3.y];
  v4 = [(ASVPreviewViewControllerInternalAccessibility *)self _axControlsViewStack];
  [v4 alpha];
  v6 = v5;

  v7 = *MEMORY[0x29EDC7EA8];
  if (v6 == 1.0)
  {
    v8 = @"CONTROLS_SHOWN";
  }

  else
  {
    v8 = @"CONTROLS_HIDDEN";
  }

  v9 = accessibilityLocalizedString(v8);
  UIAccessibilityPostNotification(v7, v9);

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)_axIsOffScreenForEntityWrapper:(id)a3
{
  v4 = [(ASVPreviewViewControllerInternalAccessibility *)self _axIdentifierForEntityWrapper:a3];
  if (v4)
  {
    v5 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityIdentifiersToOffScreenState];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_axCheckForAppearanceOfObjectsWithTimer:(id)a3
{
  v48 = *MEMORY[0x29EDCA608];
  v32 = [MEMORY[0x29EDB8DE8] array];
  v33 = [MEMORY[0x29EDB8DE8] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityControllers];
  v36 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (v36)
  {
    v35 = *v43;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v42 + 1) + 8 * i);
        v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEntityWrappersForEntityController:v5];
        if ([v6 count])
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = v6;
          v7 = v6;
          v8 = [v7 countByEnumeratingWithState:&v38 objects:v46 count:16];
          if (!v8)
          {
            goto LABEL_20;
          }

          v9 = v8;
          v10 = *v39;
          while (1)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v39 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v38 + 1) + 8 * j);
              v13 = [(ASVPreviewViewControllerInternalAccessibility *)self _axIsOffScreenForEntityWrapper:v12];
              if (([v12 safeBoolForKey:@"isEntityActive"] & 1) == 0)
              {
                if (v13)
                {
                  continue;
                }

                IsNull = 1;
LABEL_17:
                [(ASVPreviewViewControllerInternalAccessibility *)self _axSetOffScreen:IsNull forEntityWrapper:v12];
                continue;
              }

              [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundingRectForEntityWrapper:v12];
              IsNull = CGRectIsNull(v49);
              if (v13 != IsNull)
              {
                goto LABEL_17;
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v38 objects:v46 count:16];
            if (!v9)
            {
LABEL_20:

              v6 = v37;
              break;
            }
          }
        }

        v15 = [(ASVPreviewViewControllerInternalAccessibility *)self _axIsOffScreenForEntityController:v5];
        [(ASVPreviewViewControllerInternalAccessibility *)self _axBoundingRectForEntityController:v5];
        v16 = CGRectIsNull(v50);
        if (v15 != v16)
        {
          v17 = v16;
          [(ASVPreviewViewControllerInternalAccessibility *)self _axSetOffScreen:v16 forEntityController:v5];
          v18 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityController:v5];
          if (v17)
          {
            v19 = v33;
          }

          else
          {
            v19 = v32;
          }

          [v19 addObject:v18];
        }
      }

      v36 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    }

    while (v36);
  }

  v20 = v33;
  if (!-[ASVPreviewViewControllerInternalAccessibility _axIsFirstVisibilityAnnouncement](self, "_axIsFirstVisibilityAnnouncement") && ([v32 count] || objc_msgSend(v33, "count")))
  {
    if ([v33 count])
    {
      v21 = MEMORY[0x29EDBA0F8];
      v22 = accessibilityLocalizedString(@"ASSETS_MOVED_OFF_SCREEN");
      v23 = MEMORY[0x29C2C9B00](v33);
      v30 = [v21 localizedStringWithFormat:v22, v23];
      v31 = @"__AXStringForVariablesSentinel";
      v24 = __UIAXStringForVariables();
    }

    else
    {
      v24 = 0;
    }

    if ([v32 count])
    {
      v25 = MEMORY[0x29EDBA0F8];
      v26 = accessibilityLocalizedString(@"ASSETS_MOVED_ON_SCREEN");
      v27 = MEMORY[0x29C2C9B00](v32);
      v30 = [v25 localizedStringWithFormat:v26, v27];
      v31 = @"__AXStringForVariablesSentinel";
      v28 = __UIAXStringForVariables();

      v24 = v28;
    }

    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v24);

    v20 = v33;
  }

  [(ASVPreviewViewControllerInternalAccessibility *)self _axSetIsFirstVisibilityAnnouncement:0, v30, v31];

  v29 = *MEMORY[0x29EDCA608];
}

- (void)_axToggleVisibilityAnnouncementsIfNeeded
{
  if ([(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode]!= 2)
  {
    goto LABEL_5;
  }

  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(ASVPreviewViewControllerInternalAccessibility *)self _axTimerForVisibilityAnnouncements];

    if (!v6)
    {
      [(ASVPreviewViewControllerInternalAccessibility *)self _axSetIsFirstVisibilityAnnouncement:1];
      objc_initWeak(&location, self);
      v7 = MEMORY[0x29EDB8E68];
      v10 = MEMORY[0x29EDCA5F8];
      v11 = 3221225472;
      v12 = __89__ASVPreviewViewControllerInternalAccessibility__axToggleVisibilityAnnouncementsIfNeeded__block_invoke;
      v13 = &unk_29F2A1FA8;
      objc_copyWeak(&v14, &location);
      v8 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v10 block:1.0];
      [(ASVPreviewViewControllerInternalAccessibility *)self _axSetTimerForVisibilityAnnouncements:v8, v10, v11, v12, v13];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  else
  {
LABEL_5:
    v9 = [(ASVPreviewViewControllerInternalAccessibility *)self _axTimerForVisibilityAnnouncements];
    [v9 invalidate];

    [(ASVPreviewViewControllerInternalAccessibility *)self _axSetTimerForVisibilityAnnouncements:0];
  }
}

void __89__ASVPreviewViewControllerInternalAccessibility__axToggleVisibilityAnnouncementsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axCheckForAppearanceOfObjectsWithTimer:v3];
}

- (void)_axUpdateForOldEmitterMode:(int64_t)a3
{
  v5 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode];
  if (v5 != a3)
  {
    if (a3 == 3 && v5 == 2)
    {
      v6 = *MEMORY[0x29EDC7EA8];
      v7 = MEMORY[0x29EDBA0F8];
      v8 = accessibilityLocalizedString(@"ASSET_PLACED_IN_WORLD");
      v9 = [(ASVPreviewViewControllerInternalAccessibility *)self _axRootEntityController];
      v10 = [(ASVPreviewViewControllerInternalAccessibility *)self _axNameForEntityController:v9];
      v11 = [v7 localizedStringWithFormat:v8, v10];
      UIAccessibilityPostNotification(v6, v11);
    }

    else if (((a3 & 0xFFFFFFFFFFFFFFFELL) == 2) != ((v5 & 0xFFFFFFFFFFFFFFFELL) == 2))
    {
      [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateARViewAccessibilityElements];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }

    [(ASVPreviewViewControllerInternalAccessibility *)self _axToggleVisibilityAnnouncementsIfNeeded];
  }
}

- (void)updateInterfaceState
{
  v3 = [(ASVPreviewViewControllerInternalAccessibility *)self _axEmitterMode];
  v4.receiver = self;
  v4.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v4 updateInterfaceState];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateForOldEmitterMode:v3];
}

- (void)entityController:(id)a3 doubleTappedAt:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v12.receiver = self;
  v12.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v12 entityController:v7 doubleTappedAt:x, y];
  v8 = dispatch_time(0, 500000000);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __81__ASVPreviewViewControllerInternalAccessibility_entityController_doubleTappedAt___block_invoke;
  v10[3] = &unk_29F2A1FD0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_after(v8, MEMORY[0x29EDCA578], v10);
}

void __81__ASVPreviewViewControllerInternalAccessibility_entityController_doubleTappedAt___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = MEMORY[0x29EDBA0F8];
  v6 = accessibilityLocalizedString(@"RESET_SCALE_ANNOUNCEMENT");
  [*(a1 + 32) _axAssetScaleForAnnouncementsForEntityController:*(a1 + 40)];
  v4 = AXFormatFloatWithPercentage();
  v5 = [v3 localizedStringWithFormat:v6, v4];
  UIAccessibilityPostNotification(v2, v5);
}

- (void)accessibilityDidSetUpEntityControllers
{
  v3.receiver = self;
  v3.super_class = ASVPreviewViewControllerInternalAccessibility;
  [(ASVPreviewViewControllerInternalAccessibility *)&v3 accessibilityDidSetUpEntityControllers];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axSetARModeControls:0];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axSetObjectModeControls:0];
  [(ASVPreviewViewControllerInternalAccessibility *)self _axUpdateARViewAccessibilityElements];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end