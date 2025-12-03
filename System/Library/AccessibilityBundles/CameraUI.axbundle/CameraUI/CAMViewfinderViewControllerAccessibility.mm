@interface CAMViewfinderViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_shouldHideZoomControlForGraphConfiguration:(id)configuration;
- (BOOL)_startCapturingVideoWithRequest:(id)request;
- (BOOL)_stopCapturingVideo;
- (BOOL)accessibilityPerformMagicTap;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateForGraphConfiguration;
- (void)_axUpdateInternalMotionManager;
- (void)_embedDescriptionOverlayView:(id)view forMode:(int64_t)mode;
- (void)_presentCameraRollViewControllerAnimated:(BOOL)animated interactive:(BOOL)interactive;
- (void)_setCurrentGraphConfiguration:(id)configuration;
- (void)_updateForShallowDepthOfFieldStatusChangedAnimated:(BOOL)animated;
- (void)_updateLevelMotionTracking;
- (void)controlStatusBar:(id)bar didReceiveTapInIndicatorForType:(unint64_t)type;
- (void)handleSmartStylePadValueChanged:(CGPoint)changed;
- (void)updateControlVisibilityAnimated:(BOOL)animated;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CAMViewfinderViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMPreviewView"];
  [validationsCopy validateClass:@"CAMPortraitModeInstructionLabel" isKindOfClass:@"CAMInstructionLabel"];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_shallowDepthOfFieldStatus" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_portraitModeInstructionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentGraphConfiguration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_setCurrentGraphConfiguration:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_motionController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMInstructionLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderView" hasInstanceMethod:@"previewView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_captureController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_handleShutterButtonPressed:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_handleShutterButtonReleased:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_updateForShallowDepthOfFieldStatusChangedAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"updateControlVisibilityAnimated:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_shouldHideFlashButtonForGraphConfiguration:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"viewfinderView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_presentCameraRollViewControllerAnimated:interactive:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_isShowingCameraRoll" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMCaptureGraphConfiguration" hasInstanceMethod:@"device" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMCaptureGraphConfiguration" hasInstanceMethod:@"mode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_embedDescriptionOverlayView:forMode:" withFullSignature:{"v", "@", "q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_shouldHideZoomControlForGraphConfiguration:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"controlStatusBar:didReceiveTapInIndicatorForType:" withFullSignature:{"v", "@", "Q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_controlDrawer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_startCapturingVideoWithRequest:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_stopCapturingVideo" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_dynamicShutterControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" isKindOfClass:@"UIControl"];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"externalButtonPressedWithBehavior:" withFullSignature:{"B", "q", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"externalButtonReleased" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_descriptionOverlayViewByMode" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMCaptureGraphConfiguration" hasInstanceMethod:@"mode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"handleSmartStylePadValueChanged:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_fullscreenViewfinder" withFullSignature:{"@", 0}];
}

- (BOOL)_startCapturingVideoWithRequest:(id)request
{
  v5.receiver = self;
  v5.super_class = CAMViewfinderViewControllerAccessibility;
  v3 = [(CAMViewfinderViewControllerAccessibility *)&v5 _startCapturingVideoWithRequest:request];
  AXPerformBlockAsynchronouslyOnMainThread();
  return v3;
}

- (BOOL)_stopCapturingVideo
{
  v4.receiver = self;
  v4.super_class = CAMViewfinderViewControllerAccessibility;
  _stopCapturingVideo = [(CAMViewfinderViewControllerAccessibility *)&v4 _stopCapturingVideo];
  AXPerformBlockAsynchronouslyOnMainThread();
  return _stopCapturingVideo;
}

- (BOOL)accessibilityPerformMagicTap
{
  v3 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKey:@"_dynamicShutterControl"];
  v4 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKey:@"__shutterButton"];
  v5 = v4;
  if (!v3)
  {
    if ([v4 safeBoolForKey:@"isEnabled"])
    {
      v7 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKey:@"_bottomBar"];
      v8 = [v7 safeBoolForKey:@"isEnabled"];

      if (v8)
      {
        v11 = v5;
        AXPerformSafeBlock();
        v6 = v11;
        goto LABEL_7;
      }
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (![v3 safeBoolForKey:@"isEnabled"])
  {
    goto LABEL_8;
  }

  v12 = v3;
  AXPerformSafeBlock();
  v6 = v12;
LABEL_7:

  v9 = 1;
LABEL_9:

  return v9;
}

uint64_t __72__CAMViewfinderViewControllerAccessibility_accessibilityPerformMagicTap__block_invoke(uint64_t a1)
{
  [*(a1 + 32) externalButtonPressedWithBehavior:1];
  v2 = *(a1 + 32);

  return [v2 externalButtonReleased];
}

uint64_t __72__CAMViewfinderViewControllerAccessibility_accessibilityPerformMagicTap__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _handleShutterButtonPressed:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _handleShutterButtonReleased:v3];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CAMViewfinderViewControllerAccessibility *)self _axUpdateInternalMotionManager];
  [(CAMViewfinderViewControllerAccessibility *)self _axUpdateForGraphConfiguration];
}

- (void)_updateLevelMotionTracking
{
  v3.receiver = self;
  v3.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v3 _updateLevelMotionTracking];
  [(CAMViewfinderViewControllerAccessibility *)self _axUpdateInternalMotionManager];
}

- (void)_presentCameraRollViewControllerAnimated:(BOOL)animated interactive:(BOOL)interactive
{
  v5.receiver = self;
  v5.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v5 _presentCameraRollViewControllerAnimated:animated interactive:interactive];
  [(CAMViewfinderViewControllerAccessibility *)self _axUpdateInternalMotionManager];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(CAMViewfinderViewControllerAccessibility *)self _axUpdateInternalMotionManager];
}

- (void)_embedDescriptionOverlayView:(id)view forMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v5 _embedDescriptionOverlayView:view forMode:mode];
  [(CAMViewfinderViewControllerAccessibility *)self _axUpdateInternalMotionManager];
}

- (BOOL)_shouldHideZoomControlForGraphConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = CAMViewfinderViewControllerAccessibility;
  v4 = [(CAMViewfinderViewControllerAccessibility *)&v6 _shouldHideZoomControlForGraphConfiguration:configuration];
  [(CAMViewfinderViewControllerAccessibility *)self _axUpdateInternalMotionManager];
  return v4;
}

- (void)_axUpdateInternalMotionManager
{
  LOBYTE(v20) = 0;
  objc_opt_class();
  v3 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKey:@"_currentGraphConfiguration"];
  v4 = __UIAccessibilityCastAsClass();

  mEMORY[0x29EDC7938] = [MEMORY[0x29EDC7938] sharedApplication];
  applicationState = [mEMORY[0x29EDC7938] applicationState];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v7 = v4;
  AXPerformSafeBlock();
  v8 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  v9 = +[AXCameraVisionEngine sharedEngine];
  [v9 setAppActive:applicationState == 0];

  LOBYTE(v20) = 0;
  objc_opt_class();
  v10 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKey:@"_motionController"];
  v11 = __UIAccessibilityCastAsSafeCategory();

  if (v20 == 1 || (-[CAMViewfinderViewControllerAccessibility safeValueForKey:](self, "safeValueForKey:", @"_captureController"), v12 = objc_claimAutoreleasedReturnValue(), LOBYTE(v20) = 0, objc_opt_class(), -[CAMViewfinderViewControllerAccessibility safeValueForKey:](self, "safeValueForKey:", @"_descriptionOverlayViewByMode"), v13 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v14 = objc_claimAutoreleasedReturnValue(), v13, v20 == 1) || (LOBYTE(v20) = 0, objc_opt_class(), [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v7, "mode")}], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "objectForKeyedSubscript:", v15), v16 = objc_claimAutoreleasedReturnValue(), __UIAccessibilityCastAsClass(), v17 = objc_claimAutoreleasedReturnValue(), v16, v15, v20 == 1))
  {
    abort();
  }

  _accessibilityViewIsVisible = [v17 _accessibilityViewIsVisible];
  if ([v12 safeBoolForKey:@"isCapturingVideo"] & 1) != 0 || (v19 = objc_msgSend(v12, "safeBoolForKey:", @"isCapturingStandardVideo"), applicationState) || (v8 & 1) != 0 || (v19 & 1) != 0 || ((-[CAMViewfinderViewControllerAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"_isShowingCameraRoll") | _accessibilityViewIsVisible))
  {
    [v11 axStopInternalMotionManager];
  }

  else
  {
    [v11 axStartInternalMotionManagerIfNecessary];
  }
}

uint64_t __74__CAMViewfinderViewControllerAccessibility__axUpdateInternalMotionManager__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldMonitorDeviceMotionForGraphConfiguration:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (void)_updateForShallowDepthOfFieldStatusChangedAnimated:(BOOL)animated
{
  v8.receiver = self;
  v8.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v8 _updateForShallowDepthOfFieldStatusChangedAnimated:animated];
  if ([(CAMViewfinderViewControllerAccessibility *)self safeIntegerForKey:@"_currentMode"]== 6)
  {
    if (([(CAMViewfinderViewControllerAccessibility *)self safeIntegerForKey:@"_shallowDepthOfFieldStatus"]& 0xFFFFFFFFFFFFFFF7) == 1)
    {
      v4 = accessibilityCameraUILocalizedString(@"depth.enabled");
      UIAccessibilitySpeakOrQueueIfNeeded();
    }

    else
    {
      objc_opt_class();
      v5 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKeyPath:@"_portraitModeInstructionLabel.text"];
      v4 = __UIAccessibilityCastAsClass();

      v6 = accessibilityCameraUILocalizedString(@"depth.disabled");
      v7 = __AXStringForVariables();
      UIAccessibilitySpeakOrQueueIfNeeded();
    }
  }
}

- (void)updateControlVisibilityAnimated:(BOOL)animated
{
  v3.receiver = self;
  v3.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v3 updateControlVisibilityAnimated:animated];
  AXPerformSafeBlock();
}

void __76__CAMViewfinderViewControllerAccessibility_updateControlVisibilityAnimated___block_invoke(uint64_t a1)
{
  objc_opt_class();
  v2 = [*(a1 + 32) safeValueForKey:@"_currentGraphConfiguration"];
  v3 = __UIAccessibilityCastAsClass();

  if (v3)
  {
    v4 = [*(a1 + 32) safeValueForKey:@"viewfinderView"];
    v5 = [v4 safeValueForKey:@"previewView"];
    MEMORY[0x29C2CF1C0](@"CAMPreviewView");
    if (objc_opt_isKindOfClass())
    {
      [v5 _accessibilitySetBoolValue:objc_msgSend(*(a1 + 32) forKey:{"_shouldHideFlashButtonForGraphConfiguration:", v3) ^ 1, @"AXCameraWillUseFlashKey"}];
    }
  }
}

- (void)_setCurrentGraphConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v4 _setCurrentGraphConfiguration:configuration];
  [(CAMViewfinderViewControllerAccessibility *)self _axUpdateForGraphConfiguration];
}

- (void)_axUpdateForGraphConfiguration
{
  objc_opt_class();
  v3 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKey:@"_currentGraphConfiguration"];
  v4 = __UIAccessibilityCastAsClass();

  device = [v4 device];
  mode = [v4 mode];
  if ((device - 1) > 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_29BC8EBB8[device - 1];
  }

  v8 = +[AXCameraVisionEngine sharedEngine];
  [v8 setCaptureDevicePosition:v7 mode:mode];
}

- (void)controlStatusBar:(id)bar didReceiveTapInIndicatorForType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v8 controlStatusBar:bar didReceiveTapInIndicatorForType:?];
  if (type >= 3)
  {
    v6 = *MEMORY[0x29EDC7F10];
    v7 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKey:@"_controlDrawer"];
    UIAccessibilityPostNotification(v6, v7);
  }
}

- (void)handleSmartStylePadValueChanged:(CGPoint)changed
{
  v5.receiver = self;
  v5.super_class = CAMViewfinderViewControllerAccessibility;
  [(CAMViewfinderViewControllerAccessibility *)&v5 handleSmartStylePadValueChanged:changed.x, changed.y];
  v4 = [(CAMViewfinderViewControllerAccessibility *)self safeValueForKey:@"_fullscreenViewfinder"];
  [v4 _accessibilityLoadAccessibilityInformation];
}

@end