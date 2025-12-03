@interface CAMPreviewViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsBackFacing;
- (BOOL)_axIsFocusLocked;
- (BOOL)_axIsPortraitMode;
- (BOOL)isAccessibilityElement;
- (CAMPreviewViewAccessibility)initWithFrame:(CGRect)frame initialPreviewAspectMode:(int64_t)mode initialWindowedPreviewAspectMode:(int64_t)aspectMode;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (id)_accessibilitySupplementaryFooterViews;
- (id)accessibilityHint;
- (id)accessibilityValue;
- (unsigned)_accessibilityMediaAnalysisOptions;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityZoomIn:(BOOL)in;
- (void)_showFocusAtPoint:(CGPoint)point startAnimating:(BOOL)animating;
@end

@implementation CAMPreviewViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMPreviewView" hasInstanceVariable:@"_indicatorContainerView" withType:"UIView"];
  [validationsCopy validateClass:@"CAMPreviewView" hasInstanceMethod:@"initWithFrame:initialPreviewAspectMode:initialWindowedPreviewAspectMode:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "q", "q", 0}];
  [validationsCopy validateClass:@"CAMPreviewView" hasInstanceMethod:@"videoPreviewView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMPreviewView" hasInstanceMethod:@"videoPreviewLayer" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderView"];
  [validationsCopy validateClass:@"CAMViewfinderViewController"];
  [validationsCopy validateClass:@"CAMShallowDepthOfFieldBadge"];
  [validationsCopy validateClass:@"CAMPortraitModeInstructionLabel"];
  [validationsCopy validateClass:@"CAMFullscreenViewfinder"];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_cachedVideoZoomFactor" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentMaximumZoomFactor" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_setCachedVideoZoomFactor:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_updateZoomUIWithZoomFactor: animated:" withFullSignature:{"v", "d", "B", 0}];
  [validationsCopy validateClass:@"CUCaptureController" hasInstanceMethod:@"changeToVideoZoomFactor:graphConfiguration:" withFullSignature:{"v", "d", "@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentGraphConfiguration" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderView" hasInstanceMethod:@"bottomBar" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderView" hasInstanceMethod:@"shallowDepthOfFieldBadge" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderView" hasInstanceMethod:@"portraitModeInstructionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMModeDial" hasInstanceMethod:@"selectedMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_shallowDepthOfFieldStatus" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_targetPortraitModeInstructionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMInstructionLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_captureController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMPortraitModeInstructionLabel" isKindOfClass:@"CAMInstructionLabel"];
  [validationsCopy validateClass:@"CUCaptureController" hasInstanceMethod:@"isCapturingVideo" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CUCaptureController" hasInstanceMethod:@"isCapturingStandardVideo" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMPreviewView" hasInstanceMethod:@"viewportFrame" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_zoomControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_buttonPlatter" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_modeDial" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_primaryShutterControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomControl" hasInstanceMethod:@"_zoomDial" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMZoomDial" hasInstanceMethod:@"_contentMaskView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMPreviewView" hasInstanceMethod:@"frontPIPVideoPreviewView" withFullSignature:{"@", 0}];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = *MEMORY[0x29EDB90B8];
  v3 = *(MEMORY[0x29EDB90B8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)accessibilityHint
{
  if ([(CAMPreviewViewAccessibility *)self _axIsBackFacing])
  {
    v3 = accessibilityCameraKitLocalizedString(@"viewfinder.hint");
    if ([(CAMPreviewViewAccessibility *)self _axIsFocusLocked])
    {
      v6 = accessibilityCameraKitLocalizedString(@"viewfinder.hint.focus-locked");
      v4 = __UIAXStringForVariables();
    }

    else
    {
      v4 = __UIAXStringForVariables();
    }
  }

  else
  {
    v4 = accessibilityCameraKitLocalizedString(@"viewfinder.hint.focus-locked");
  }

  return v4;
}

- (BOOL)_axIsPortraitMode
{
  v2 = [(CAMPreviewViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMViewfinderView", a2)];
  v3 = __UIAccessibilitySafeClass();

  v4 = [MEMORY[0x29EDC7DA8] viewControllerForView:v3];
  v5 = __UIAccessibilitySafeClass();

  v6 = [v5 safeValueForKeyPath:@"_modeDial"];
  MEMORY[0x29C2CF1C0](@"CAMModeDial");
  v7 = (objc_opt_isKindOfClass() & 1) != 0 && [v6 safeIntegerForKey:@"selectedMode"] == 6;

  return v7;
}

- (id)accessibilityValue
{
  if ([(CAMPreviewViewAccessibility *)self _axIsPortraitMode])
  {
    v3 = [(CAMPreviewViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMFullscreenViewfinder")];
    v4 = __UIAccessibilitySafeClass();

    _accessibilityViewController = [v4 _accessibilityViewController];
    if (_accessibilityViewController && (MEMORY[0x29C2CF1C0](@"CAMViewfinderViewController"), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (([_accessibilityViewController safeIntegerForKey:@"_shallowDepthOfFieldStatus"] & 0xFFFFFFFFFFFFFFF7) == 1)
      {
        v6 = accessibilityCameraUILocalizedString(@"depth.enabled");
      }

      else
      {
        objc_opt_class();
        v11 = [_accessibilityViewController safeValueForKeyPath:@"_targetPortraitModeInstructionLabel.text"];
        v12 = __UIAccessibilityCastAsClass();

        v13 = accessibilityCameraUILocalizedString(@"depth.disabled");
        v14 = v12;
        v17 = @"__AXStringForVariablesSentinel";
        v6 = __AXStringForVariables();
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if ([(CAMPreviewViewAccessibility *)self _axIsBackFacing:v14])
  {
    if ([(CAMPreviewViewAccessibility *)self _axIsFocusLocked])
    {
      v7 = @"focus.value.locked";
    }

    else
    {
      v7 = @"focus.value.unlocked";
    }

    v15 = accessibilityCameraKitLocalizedString(v7);
    v18 = @"__AXStringForVariablesSentinel";
    v8 = __AXStringForVariables();

    v6 = v8;
  }

  if ([(CAMPreviewViewAccessibility *)self _axIsUsingFlash:v15])
  {
    v16 = accessibilityCameraUILocalizedString(@"flash.enabled");
    v9 = __AXStringForVariables();

    v6 = v9;
  }

  return v6;
}

- (BOOL)isAccessibilityElement
{
  accessibilityElements = [(CAMPreviewViewAccessibility *)self accessibilityElements];
  v3 = [accessibilityElements count] == 0;

  return v3;
}

- (id)_accessibilitySupplementaryFooterViews
{
  v9[1] = *MEMORY[0x29EDCA608];
  v3 = [(CAMPreviewViewAccessibility *)self safeValueForKey:@"frontPIPVideoPreviewView"];
  v4 = v3;
  if (v3)
  {
    v9[0] = v3;
    _accessibilitySupplementaryFooterViews = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:1];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CAMPreviewViewAccessibility;
    _accessibilitySupplementaryFooterViews = [(CAMPreviewViewAccessibility *)&v8 _accessibilitySupplementaryFooterViews];
  }

  v6 = _accessibilitySupplementaryFooterViews;

  return v6;
}

- (void)_showFocusAtPoint:(CGPoint)point startAnimating:(BOOL)animating
{
  v13.receiver = self;
  v13.super_class = CAMPreviewViewAccessibility;
  [(CAMPreviewViewAccessibility *)&v13 _showFocusAtPoint:animating startAnimating:point.x, point.y];
  window = [(CAMPreviewViewAccessibility *)self window];
  if (window)
  {
    v7 = window;
    v8 = [(CAMPreviewViewAccessibility *)self safeValueForKey:@"_continuousAutoFocusView"];
    if (!v8)
    {
      v4 = [(CAMPreviewViewAccessibility *)self safeValueForKey:@"_focusView"];
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    v9 = CFAbsoluteTimeGetCurrent() - *&_showFocusAtPoint_startAnimating__LastOutputTime;
    if (v8)
    {
    }

    else
    {
    }

    if (v9 > 10.0)
    {
      v10 = MEMORY[0x29EDBD7E8];
      v11 = accessibilityCameraKitLocalizedString(@"auto.focused");
      v7 = [v10 axAttributedStringWithString:v11];

      v12 = [MEMORY[0x29EDBA070] numberWithInteger:10];
      [v7 setAttribute:v12 forKey:*MEMORY[0x29EDBD860]];

      UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v7);
      _showFocusAtPoint_startAnimating__LastOutputTime = CFAbsoluteTimeGetCurrent();
LABEL_9:
    }
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewAccessibility;
  [(CAMPreviewViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(CAMPreviewViewAccessibility *)self safeUIViewForKey:@"_indicatorContainerView"];
  [v3 setAccessibilityViewIsModal:0];
}

- (CAMPreviewViewAccessibility)initWithFrame:(CGRect)frame initialPreviewAspectMode:(int64_t)mode initialWindowedPreviewAspectMode:(int64_t)aspectMode
{
  v7.receiver = self;
  v7.super_class = CAMPreviewViewAccessibility;
  v5 = [(CAMPreviewViewAccessibility *)&v7 initWithFrame:mode initialPreviewAspectMode:aspectMode initialWindowedPreviewAspectMode:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(CAMPreviewViewAccessibility *)v5 _accessibilityLoadAccessibilityInformation];

  return v5;
}

- (void)_accessibilityZoomIn:(BOOL)in
{
  v3 = [(CAMPreviewViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMViewfinderView", a2)];
  v4 = __UIAccessibilitySafeClass();

  v5 = [MEMORY[0x29EDC7DA8] viewControllerForView:v4];
  v6 = __UIAccessibilitySafeClass();

  [v6 safeCGFloatForKey:@"_cachedVideoZoomFactor"];
  [v6 safeCGFloatForKey:@"_currentMaximumZoomFactor"];
  [v6 safeValueForKey:@"_currentGraphConfiguration"];
  v10 = v9 = v6;
  v7 = v10;
  v8 = v6;
  AXPerformSafeBlock();
  AXPerformSafeBlock();
}

void __52__CAMPreviewViewAccessibility__accessibilityZoomIn___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setCachedVideoZoomFactor:*(a1 + 48)];
  [*(a1 + 32) _updateZoomUIWithZoomFactor:1 animated:*(a1 + 48)];
  v2 = [*(a1 + 32) safeValueForKey:@"_captureController"];
  v3 = __UIAccessibilitySafeClass();

  [v3 changeToVideoZoomFactor:*(a1 + 40) graphConfiguration:*(a1 + 48)];
}

void __52__CAMPreviewViewAccessibility__accessibilityZoomIn___block_invoke_2()
{
  v0 = *MEMORY[0x29EDC7EA8];
  v1 = AXFormatMagnificationFactor();
  UIAccessibilityPostNotification(v0, v1);
}

- (BOOL)_axIsFocusLocked
{
  objc_opt_class();
  v3 = [(CAMPreviewViewAccessibility *)self _accessibilityValueForKey:@"AXCameraIsFocusedKey"];
  v4 = __UIAccessibilityCastAsClass();

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (BOOL)_axIsBackFacing
{
  objc_opt_class();
  v3 = [(CAMPreviewViewAccessibility *)self _accessibilityValueForKey:@"AXIsBackCamera"];
  v4 = __UIAccessibilityCastAsClass();

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (unsigned)_accessibilityMediaAnalysisOptions
{
  v3 = [(CAMPreviewViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2CF1C0](@"CAMFullscreenViewfinder", a2)];
  v4 = __UIAccessibilitySafeClass();

  v5 = [MEMORY[0x29EDC7DA8] viewControllerForView:v4];
  v6 = __UIAccessibilitySafeClass();

  v12 = 0;
  v7 = [v6 safeValueForKey:@"_captureController"];
  v8 = __UIAccessibilitySafeClass();

  if (([v8 safeBoolForKey:@"isCapturingVideo"] & 1) != 0 || (objc_msgSend(v8, "safeBoolForKey:", @"isCapturingStandardVideo") & 1) != 0 || !-[CAMPreviewViewAccessibility isAccessibilityElement](self, "isAccessibilityElement"))
  {
    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = CAMPreviewViewAccessibility;
    v9 = [(CAMPreviewViewAccessibility *)&v11 _accessibilityMediaAnalysisOptions]| 0x40000;
  }

  return v9;
}

- (CGRect)accessibilityFrame
{
  [(CAMPreviewViewAccessibility *)self safeCGRectForKey:@"viewportFrame"];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(CAMPreviewViewAccessibility *)self _accessibilityFindViewAncestor:&__block_literal_global_15 startWithSelf:1];
  _accessibilityViewController = [v11 _accessibilityViewController];

  if (_accessibilityViewController)
  {
    v13 = [_accessibilityViewController safeValueForKeyPath:@"_zoomControl"];
    [v13 accessibilityFrame];
    v15 = v14;
    v17 = v16;

    if (AXDeviceIsPhone())
    {
      v18 = [_accessibilityViewController safeIntegerForKey:@"_currentMode"];
      v19 = v18 == 6 || v18 == 0;
      v20 = 60.0;
      if (v19)
      {
        v20 = 0.0;
      }

      v6 = v6 + v20;
      v10 = v10 - v17;
    }

    else
    {
      v25 = [_accessibilityViewController safeValueForKeyPath:@"_primaryShutterControl"];
      [v25 accessibilityFrame];
      v27 = v26;

      v4 = v4 + v15;
      v8 = v8 - v27;
    }
  }

  else
  {
    v32.receiver = self;
    v32.super_class = CAMPreviewViewAccessibility;
    [(CAMPreviewViewAccessibility *)&v32 accessibilityFrame];
    v4 = v21;
    v6 = v22;
    v8 = v23;
    v10 = v24;
  }

  v28 = v4;
  v29 = v6;
  v30 = v8;
  v31 = v10;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

uint64_t __49__CAMPreviewViewAccessibility_accessibilityFrame__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF1C0](@"CAMViewfinderViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end