@interface CAMDynamicShutterControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (CGRect)_pauseResumeAccessibilityFrame;
- (CGRect)_recordingAccessibilityFrame;
- (CGRect)_takeStillAccessibilityFrame;
- (id)_accessibilityElementWithViewKey:(id)key labelBlock:(id)block identifierBlock:(id)identifierBlock traitsBlock:(id)traitsBlock pathBlock:(id)pathBlock servesAsFirstElement:(BOOL)element;
- (id)_accessibilityPathForCenter:(id)center forView:(id)view;
- (id)_axElementForCenterButton;
- (id)_axElementForPauseResumeButton;
- (id)_axElementForTakePictureButton;
- (id)_axVC;
- (id)_recordingAccessibilityIdentifier;
- (id)_recordingAccessibilityLabel;
- (id)accessibilityCustomActions;
- (id)accessibilityElements;
- (int64_t)incrementCounter;
- (void)_setAccessibilityFrameBlockIfNeeded:(id)needed frameBlock:(id)block;
- (void)_updateOuterAndInnerLayersAnimated:(BOOL)animated;
- (void)layoutSubviews;
@end

@implementation CAMDynamicShutterControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMViewfinderViewController"];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_currentDevice" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"isRecording" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_shutterButtonModeForCameraMode:isCapturing:" withFullSignature:{"q", "q", "B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_captureController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"dynamicShutterControlGesturesDidBegin:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_setShutterState:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_setDragHandleState:animated:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_setInnerShapeState:animated:" withFullSignature:{"v", "q", "B", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"currentCaptureMode" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CUCaptureController" hasInstanceMethod:@"_capturingCTMVideoRequest" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_centerOuterView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_centerOuterImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_centerTimelapseOuterView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_lockButtonOuterView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_pauseResumeButtonOuterView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_beginCapturingBurst" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CAMViewfinderViewController" hasInstanceMethod:@"_stopCapturingBurst" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"incrementCounter" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CUCaptureController" hasInstanceMethod:@"isCapturingBurst" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_liquidRenderingMethod" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_innerShapeWidthSpring" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMSpring" hasInstanceMethod:@"value" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_shutterButtonCenter" withFullSignature:{"{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"CAMDynamicShutterControl" hasInstanceMethod:@"_updateOuterAndInnerLayersAnimated:" withFullSignature:{"v", "B", 0}];
}

- (id)_axVC
{
  v2 = [(CAMDynamicShutterControlAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_8 startWithSelf:1];
  _accessibilityViewController = [v2 _accessibilityViewController];

  return _accessibilityViewController;
}

uint64_t __46__CAMDynamicShutterControlAccessibility__axVC__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  MEMORY[0x29C2CF1C0](@"CAMViewfinderViewController");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CAMDynamicShutterControlAccessibility;
  [(CAMDynamicShutterControlAccessibility *)&v3 layoutSubviews];
  [(CAMDynamicShutterControlAccessibility *)self _axSetDynamicShutterControlAccessibilityElements:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  [(CAMDynamicShutterControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_updateOuterAndInnerLayersAnimated:(BOOL)animated
{
  v4.receiver = self;
  v4.super_class = CAMDynamicShutterControlAccessibility;
  [(CAMDynamicShutterControlAccessibility *)&v4 _updateOuterAndInnerLayersAnimated:animated];
  [(CAMDynamicShutterControlAccessibility *)self _axSetDynamicShutterControlAccessibilityElements:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  [(CAMDynamicShutterControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (id)accessibilityElements
{
  _axDynamicShutterControlAccessibilityElements = [(CAMDynamicShutterControlAccessibility *)self _axDynamicShutterControlAccessibilityElements];
  v4 = _axDynamicShutterControlAccessibilityElements;
  if (_axDynamicShutterControlAccessibilityElements)
  {
    array = _axDynamicShutterControlAccessibilityElements;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
    _axElementForCenterButton = [(CAMDynamicShutterControlAccessibility *)self _axElementForCenterButton];
    [array axSafelyAddObject:_axElementForCenterButton];

    _axVC = [(CAMDynamicShutterControlAccessibility *)self _axVC];
    v8 = [_axVC safeValueForKey:@"_currentMode"];
    integerValue = [v8 integerValue];

    _axVC2 = [(CAMDynamicShutterControlAccessibility *)self _axVC];
    LOBYTE(_axVC) = [_axVC2 safeBoolForKey:@"isRecording"];

    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v15 = MEMORY[0x29EDCA5F8];
    v16 = 3221225472;
    v17 = __62__CAMDynamicShutterControlAccessibility_accessibilityElements__block_invoke;
    v18 = &unk_29F2AD130;
    selfCopy = self;
    v20 = &v23;
    v21 = integerValue;
    LOBYTE(v22) = _axVC;
    AXPerformSafeBlock();
    v11 = v24[3];
    _Block_object_dispose(&v23, 8);
    if (((v11 == 6) & _axVC) == 1)
    {
      v12 = [(CAMDynamicShutterControlAccessibility *)self _axElementForTakePictureButton:v15];
      [array axSafelyAddObject:v12];

      _axElementForPauseResumeButton = [(CAMDynamicShutterControlAccessibility *)self _axElementForPauseResumeButton];
      [array axSafelyAddObject:_axElementForPauseResumeButton];
    }

    [(CAMDynamicShutterControlAccessibility *)self _axSetDynamicShutterControlAccessibilityElements:array, v15, v16, v17, v18, selfCopy, v20, v21, v22];
  }

  return array;
}

void __62__CAMDynamicShutterControlAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axVC];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _shutterButtonModeForCameraMode:*(a1 + 48) isCapturing:*(a1 + 56)];
}

- (id)_accessibilityElementWithViewKey:(id)key labelBlock:(id)block identifierBlock:(id)identifierBlock traitsBlock:(id)traitsBlock pathBlock:(id)pathBlock servesAsFirstElement:(BOOL)element
{
  elementCopy = element;
  blockCopy = block;
  identifierBlockCopy = identifierBlock;
  traitsBlockCopy = traitsBlock;
  pathBlockCopy = pathBlock;
  v18 = [(CAMDynamicShutterControlAccessibility *)self safeUIViewForKey:key];
  if (v18)
  {
    if (!elementCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
  if (elementCopy)
  {
LABEL_3:
    [v18 _setAccessibilityServesAsFirstElement:1];
  }

LABEL_4:
  v33[0] = MEMORY[0x29EDCA5F8];
  v33[1] = 3221225472;
  v33[2] = __144__CAMDynamicShutterControlAccessibility__accessibilityElementWithViewKey_labelBlock_identifierBlock_traitsBlock_pathBlock_servesAsFirstElement___block_invoke;
  v33[3] = &unk_29F2AD158;
  v34 = blockCopy;
  v19 = blockCopy;
  [v18 setAccessibilityLabelBlock:v33];
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 3221225472;
  v31[2] = __144__CAMDynamicShutterControlAccessibility__accessibilityElementWithViewKey_labelBlock_identifierBlock_traitsBlock_pathBlock_servesAsFirstElement___block_invoke_2;
  v31[3] = &unk_29F2AD158;
  v32 = identifierBlockCopy;
  v20 = identifierBlockCopy;
  [v18 setAccessibilityIdentifierBlock:v31];
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 3221225472;
  v29[2] = __144__CAMDynamicShutterControlAccessibility__accessibilityElementWithViewKey_labelBlock_identifierBlock_traitsBlock_pathBlock_servesAsFirstElement___block_invoke_3;
  v29[3] = &unk_29F2AD180;
  v30 = traitsBlockCopy;
  v21 = traitsBlockCopy;
  [v18 setAccessibilityTraitsBlock:v29];
  v24 = MEMORY[0x29EDCA5F8];
  v25 = 3221225472;
  v26 = __144__CAMDynamicShutterControlAccessibility__accessibilityElementWithViewKey_labelBlock_identifierBlock_traitsBlock_pathBlock_servesAsFirstElement___block_invoke_4;
  v27 = &unk_29F2AD1A8;
  v28 = pathBlockCopy;
  v22 = pathBlockCopy;
  [v18 setAccessibilityPathBlock:&v24];
  [v18 setIsAccessibilityElement:{1, v24, v25, v26, v27}];

  return v18;
}

- (void)_setAccessibilityFrameBlockIfNeeded:(id)needed frameBlock:(id)block
{
  neededCopy = needed;
  blockCopy = block;
  if ([(CAMDynamicShutterControlAccessibility *)self safeIntegerForKey:@"_liquidRenderingMethod"]== 2)
  {
    [neededCopy _setAccessibilityFrameBlock:blockCopy];
  }
}

- (id)_axElementForCenterButton
{
  objc_initWeak(&location, self);
  _axVC = [(CAMDynamicShutterControlAccessibility *)self _axVC];
  v4 = [_axVC safeValueForKey:@"_currentMode"];
  integerValue = [v4 integerValue];

  v6 = @"_centerOuterView";
  if (integerValue == 5)
  {
    v6 = @"_centerTimelapseOuterView";
  }

  if (integerValue == 2)
  {
    v7 = @"_centerOuterImageView";
  }

  else
  {
    v7 = v6;
  }

  v18[0] = MEMORY[0x29EDCA5F8];
  v18[1] = 3221225472;
  v18[2] = __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke;
  v18[3] = &unk_29F2AD1D0;
  objc_copyWeak(&v19, &location);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 3221225472;
  v16[2] = __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke_2;
  v16[3] = &unk_29F2AD1D0;
  objc_copyWeak(&v17, &location);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke_3;
  v14[3] = &unk_29F2AD1F8;
  objc_copyWeak(&v15, &location);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke_4;
  v12[3] = &unk_29F2AD220;
  objc_copyWeak(&v13, &location);
  v8 = [(CAMDynamicShutterControlAccessibility *)self _accessibilityElementWithViewKey:v7 labelBlock:v18 identifierBlock:v16 traitsBlock:v14 pathBlock:v12 servesAsFirstElement:1];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke_5;
  v10[3] = &unk_29F2AD248;
  objc_copyWeak(&v11, &location);
  [(CAMDynamicShutterControlAccessibility *)self _setAccessibilityFrameBlockIfNeeded:v8 frameBlock:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v8;
}

id __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _recordingAccessibilityLabel];

  return v2;
}

id __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _recordingAccessibilityIdentifier];

  return v2;
}

uint64_t __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _recordingAccessibilityTraits];

  return v2;
}

id __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _recordingAccessibilityPath];

  return v2;
}

double __66__CAMDynamicShutterControlAccessibility__axElementForCenterButton__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _recordingAccessibilityFrame];
  v3 = v2;

  return v3;
}

- (id)_axElementForTakePictureButton
{
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __71__CAMDynamicShutterControlAccessibility__axElementForTakePictureButton__block_invoke_4;
  v7[3] = &unk_29F2AD220;
  objc_copyWeak(&v8, &location);
  v3 = [(CAMDynamicShutterControlAccessibility *)self _accessibilityElementWithViewKey:@"_lockButtonOuterView" labelBlock:&__block_literal_global_577 identifierBlock:&__block_literal_global_582 traitsBlock:&__block_literal_global_587 pathBlock:v7 servesAsFirstElement:0];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __71__CAMDynamicShutterControlAccessibility__axElementForTakePictureButton__block_invoke_5;
  v5[3] = &unk_29F2AD248;
  objc_copyWeak(&v6, &location);
  [(CAMDynamicShutterControlAccessibility *)self _setAccessibilityFrameBlockIfNeeded:v3 frameBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v3;
}

id __71__CAMDynamicShutterControlAccessibility__axElementForTakePictureButton__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _takeStillAccessibilityPath];

  return v2;
}

double __71__CAMDynamicShutterControlAccessibility__axElementForTakePictureButton__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _takeStillAccessibilityFrame];
  v3 = v2;

  return v3;
}

- (id)_axElementForPauseResumeButton
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __71__CAMDynamicShutterControlAccessibility__axElementForPauseResumeButton__block_invoke;
  v10[3] = &unk_29F2ACDA0;
  v10[4] = self;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __71__CAMDynamicShutterControlAccessibility__axElementForPauseResumeButton__block_invoke_2;
  v9[3] = &unk_29F2ACDA0;
  v9[4] = self;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __71__CAMDynamicShutterControlAccessibility__axElementForPauseResumeButton__block_invoke_4;
  v7[3] = &unk_29F2AD220;
  objc_copyWeak(&v8, &location);
  v3 = [(CAMDynamicShutterControlAccessibility *)self _accessibilityElementWithViewKey:@"_pauseResumeButtonOuterView" labelBlock:v10 identifierBlock:v9 traitsBlock:&__block_literal_global_604 pathBlock:v7 servesAsFirstElement:0];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __71__CAMDynamicShutterControlAccessibility__axElementForPauseResumeButton__block_invoke_5;
  v5[3] = &unk_29F2AD248;
  objc_copyWeak(&v6, &location);
  [(CAMDynamicShutterControlAccessibility *)self _setAccessibilityFrameBlockIfNeeded:v3 frameBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v3;
}

id __71__CAMDynamicShutterControlAccessibility__axElementForPauseResumeButton__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) safeBoolForKey:@"pausedDuringVideo"])
  {
    v1 = @"resume.video";
  }

  else
  {
    v1 = @"pause.video";
  }

  v2 = accessibilityCameraUILocalizedString(v1);

  return v2;
}

__CFString *__71__CAMDynamicShutterControlAccessibility__axElementForPauseResumeButton__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) safeBoolForKey:@"pausedDuringVideo"])
  {
    v1 = @"PauseResumeButton-Resume";
  }

  else
  {
    v1 = @"PauseResumeButton-Pause";
  }

  return v1;
}

id __71__CAMDynamicShutterControlAccessibility__axElementForPauseResumeButton__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _pauseResumeAccessibilityPath];

  return v2;
}

double __71__CAMDynamicShutterControlAccessibility__axElementForPauseResumeButton__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _pauseResumeAccessibilityFrame];
  v3 = v2;

  return v3;
}

- (id)_recordingAccessibilityLabel
{
  _axVC = [(CAMDynamicShutterControlAccessibility *)self _axVC];
  v4 = [_axVC safeValueForKey:@"_currentMode"];
  integerValue = [v4 integerValue];

  _axVC2 = [(CAMDynamicShutterControlAccessibility *)self _axVC];
  LOBYTE(v4) = [_axVC2 safeBoolForKey:@"isRecording"];

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15 = MEMORY[0x29EDCA5F8];
  LOBYTE(v16) = v4;
  AXPerformSafeBlock();
  v7 = v18[3];
  _Block_object_dispose(&v17, 8);
  v8 = v7 - 1;
  if (v7 - 1) < 8 && ((0xE7u >> v8))
  {
    v9 = off_29F2AD2D8[v8];
  }

  else if (integerValue || (-[CAMDynamicShutterControlAccessibility _axVC](self, "_axVC", v15, 3221225472, __69__CAMDynamicShutterControlAccessibility__recordingAccessibilityLabel__block_invoke, &unk_29F2AD130, self, &v17, 0, v16), v10 = objc_claimAutoreleasedReturnValue(), [v10 safeValueForKey:@"_captureController"], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "safeValueForKey:", @"_capturingCTMVideoRequest"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v10, !v12))
  {
    v9 = @"camera.photo.button.text";
  }

  else
  {
    v9 = @"camera.video.stop.record.button.text";
  }

  v13 = accessibilityCameraKitLocalizedString(v9);

  return v13;
}

void __69__CAMDynamicShutterControlAccessibility__recordingAccessibilityLabel__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _axVC];
  *(*(*(a1 + 40) + 8) + 24) = [v2 _shutterButtonModeForCameraMode:*(a1 + 48) isCapturing:*(a1 + 56)];
}

- (id)_recordingAccessibilityIdentifier
{
  _axVC = [(CAMDynamicShutterControlAccessibility *)self _axVC];
  v4 = [_axVC safeValueForKey:@"_currentMode"];
  integerValue = [v4 integerValue];

  if (integerValue >= 0xA)
  {
    v8.receiver = self;
    v8.super_class = CAMDynamicShutterControlAccessibility;
    accessibilityIdentifier = [(CAMDynamicShutterControlAccessibility *)&v8 accessibilityIdentifier];
  }

  else
  {
    accessibilityIdentifier = off_29F2AD318[integerValue];
  }

  return accessibilityIdentifier;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  [(CAMDynamicShutterControlAccessibility *)self _axSetDynamicShutterControlAccessibilityElements:0];
  v4.receiver = selfCopy;
  v4.super_class = CAMDynamicShutterControlAccessibility;
  LOBYTE(selfCopy) = [(CAMDynamicShutterControlAccessibility *)&v4 accessibilityActivate];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  return selfCopy;
}

- (id)_accessibilityPathForCenter:(id)center forView:(id)view
{
  centerCopy = center;
  viewCopy = view;
  if ([(CAMDynamicShutterControlAccessibility *)self safeIntegerForKey:@"_liquidRenderingMethod"]== 2)
  {
    v8 = [(CAMDynamicShutterControlAccessibility *)self safeValueForKey:@"_innerShapeWidthSpring"];
    [v8 safeDoubleForKey:@"value"];

    [(CAMDynamicShutterControlAccessibility *)self safeCGPointForKey:centerCopy];
    v9 = [MEMORY[0x29EDC7948] bezierPathWithArcCenter:1 radius:? startAngle:? endAngle:? clockwise:?];
    UIAccessibilityConvertPathToScreenCoordinates(v9, self);
  }

  else
  {
    v9 = [(CAMDynamicShutterControlAccessibility *)self safeUIViewForKey:viewCopy];
    [(UIBezierPath *)v9 accessibilityFrame];
    [MEMORY[0x29EDC7948] bezierPathWithRoundedRect:? cornerRadius:?];
  }
  v10 = ;

  return v10;
}

- (CGRect)_recordingAccessibilityFrame
{
  _recordingAccessibilityPath = [(CAMDynamicShutterControlAccessibility *)self _recordingAccessibilityPath];
  [_recordingAccessibilityPath bounds];
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

- (CGRect)_takeStillAccessibilityFrame
{
  _takeStillAccessibilityPath = [(CAMDynamicShutterControlAccessibility *)self _takeStillAccessibilityPath];
  [_takeStillAccessibilityPath bounds];
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

- (CGRect)_pauseResumeAccessibilityFrame
{
  _pauseResumeAccessibilityPath = [(CAMDynamicShutterControlAccessibility *)self _pauseResumeAccessibilityPath];
  [_pauseResumeAccessibilityPath bounds];
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

- (id)accessibilityCustomActions
{
  objc_initWeak(location, self);
  v3 = objc_alloc(MEMORY[0x29EDC78E0]);
  v4 = accessibilityCameraUILocalizedString(@"begin.burst.mode");
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3221225472;
  v37[2] = __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke;
  v37[3] = &unk_29F2ACCC8;
  objc_copyWeak(&v38, location);
  v5 = [v3 initWithName:v4 actionHandler:v37];

  v6 = objc_alloc(MEMORY[0x29EDC78E0]);
  v7 = accessibilityCameraUILocalizedString(@"stop.burst.mode");
  v35[0] = MEMORY[0x29EDCA5F8];
  v35[1] = 3221225472;
  v35[2] = __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke_3;
  v35[3] = &unk_29F2ACCC8;
  objc_copyWeak(&v36, location);
  v8 = [v6 initWithName:v7 actionHandler:v35];

  _axVC = [(CAMDynamicShutterControlAccessibility *)self _axVC];
  v10 = [_axVC safeIntegerForKey:@"currentCaptureMode"];

  v11 = (v10 & 0xFFFFFFFFFFFFFFFBLL) == 0 && [(CAMDynamicShutterControlAccessibility *)self safeIntegerForKey:@"_shutterState"]!= 3;
  v12 = objc_alloc(MEMORY[0x29EDC78E0]);
  v13 = accessibilityCameraUILocalizedString(@"take.video.action");
  v29 = MEMORY[0x29EDCA5F8];
  v30 = 3221225472;
  v31 = __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke_5;
  v32 = &unk_29F2AD2B8;
  objc_copyWeak(&v34, location);
  selfCopy = self;
  v14 = [v12 initWithName:v13 actionHandler:&v29];

  _axVC2 = [(CAMDynamicShutterControlAccessibility *)self _axVC];
  v16 = [_axVC2 safeValueForKey:@"_captureController"];
  LODWORD(v13) = [v16 safeBoolForKey:@"isCapturingBurst"];

  _axVC3 = [(CAMDynamicShutterControlAccessibility *)self _axVC];
  v18 = [_axVC3 safeValueForKey:@"_currentDevice"];
  integerValue = [v18 integerValue];

  _axVC4 = [(CAMDynamicShutterControlAccessibility *)self _axVC];
  v21 = [_axVC4 safeValueForKey:@"_currentMode"];
  integerValue2 = [v21 integerValue];

  capabilities = [MEMORY[0x29EDC0B20] capabilities];
  v24 = [capabilities isBurstSupportedForMode:integerValue2 device:integerValue];

  if (v13)
  {
    v25 = v8;
  }

  else
  {
    v25 = v5;
  }

  if (!v24)
  {
    v25 = 0;
  }

  if (v11)
  {
    v26 = v14;
  }

  else
  {
    v26 = 0;
  }

  v27 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v25, v26, v29, v30, v31, v32}];

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);

  objc_destroyWeak(&v38);
  objc_destroyWeak(location);

  return v27;
}

uint64_t __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _axVC];
  [v1 _beginCapturingBurst];
}

uint64_t __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained _axVC];
  [v1 _stopCapturingBurst];
}

uint64_t __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v5);

  return 1;
}

void __67__CAMDynamicShutterControlAccessibility_accessibilityCustomActions__block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _axVC];
  [v3 dynamicShutterControlGesturesDidBegin:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _setDragHandleState:4 animated:1];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _setInnerShapeState:1 animated:1];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 _setShutterState:3];

  v7 = *MEMORY[0x29EDC7EA8];

  UIAccessibilityPostNotification(v7, &stru_2A213F7C0);
}

- (int64_t)incrementCounter
{
  v7.receiver = self;
  v7.super_class = CAMDynamicShutterControlAccessibility;
  incrementCounter = [(CAMDynamicShutterControlAccessibility *)&v7 incrementCounter];
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityCameraUILocalizedString(@"camera.photo.burst.count");
  v5 = [v3 localizedStringWithFormat:v4, incrementCounter];

  UIAccessibilitySpeakIfNotSpeaking();
  return incrementCounter;
}

@end