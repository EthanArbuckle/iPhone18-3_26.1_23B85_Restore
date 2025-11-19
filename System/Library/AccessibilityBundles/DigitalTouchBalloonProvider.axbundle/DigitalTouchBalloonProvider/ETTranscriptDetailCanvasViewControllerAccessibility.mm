@interface ETTranscriptDetailCanvasViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (ETTranscriptDetailCanvasViewControllerAccessibility)init;
- (id)_accessibilityCameraFlipButtonLabelForCurrentCamera;
- (id)_accessibilityStringForCurrentCameraPosition;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axFocusChanged:(id)a3;
- (void)_cameraFlipButtonTapped;
- (void)_expandColorPickerButtonTapped;
- (void)_sendButtonTapped;
- (void)_setShowingGestureInstructionView:(BOOL)a3;
- (void)_startShowCompositionControlsTimer;
- (void)colorPicker:(id)a3 requestsDismissColorWheel:(id)a4;
- (void)colorPicker:(id)a3 requestsPresentColorWheel:(id)a4;
- (void)dealloc;
- (void)expandUI;
- (void)updateVideoUI;
- (void)videoControllerDidStartPreview:(id)a3;
- (void)videoControllerDidStopPreview:(id)a3;
- (void)viewDidLoad;
@end

@implementation ETTranscriptDetailCanvasViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DTSCanvasViewController"];
  [v3 validateClass:@"DTSCanvasViewController" hasInstanceVariable:@"_cancelButton" withType:"UIButton"];
  [v3 validateClass:@"DTSCanvasViewController" hasInstanceMethod:@"_cancelButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" isKindOfClass:@"DTSCanvasViewController"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_videoOnButton" withType:"UIButton"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_videoRecordButton" withType:"ETVideoRecordButton"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_cameraFlipButton" withType:"UIButton"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_sendButton" withType:"UIButton"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_videoController" withType:"ETVideoController"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_photoCaptureButton" withType:"ETVideoRecordButton"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_expandColorPickerButton" withType:"UIButton"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_expandToCameraButton" withType:"UIButton"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_gestureInstructionButton" withType:"UIButton"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_gestureInstructionView" withType:"GestureInstructionView"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_showingCompositionControls" withType:"B"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_expandToGestureInstructionView" withType:"B"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"colorPicker" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasProperty:@"canvasView" withType:"@"];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"presentationDelegate" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"viewDidLoad" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"updateVideoUI" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"_cameraFlipButtonTapped" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"_setShowingGestureInstructionView:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"_startShowCompositionControlsTimer" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"expandUI" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"_expandColorPickerButtonTapped" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"_sendButtonTapped" withFullSignature:{"v", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"videoControllerDidStartPreview:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"videoControllerDidStopPreview:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"colorPicker: requestsPresentColorWheel:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceMethod:@"colorPicker: requestsDismissColorWheel:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"DTSColorPicker"];
  [v3 validateClass:@"DTSColorPicker" hasInstanceMethod:@"paletteCircles" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DTSColorPicker" hasInstanceMethod:@"selectedCircle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ETTranscriptDetailCanvasViewController" hasInstanceVariable:@"_showCompositionControlsTimer" withType:"NSTimer"];
  [v3 validateClass:@"ETVideoController" hasInstanceMethod:@"videoDevice" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AVCaptureDevice" hasInstanceMethod:@"position" withFullSignature:{"q", 0}];
  [v3 validateProtocol:@"ETTranscriptDetailCanvasViewControllerPresentationDelegate" hasRequiredInstanceMethod:@"canvasViewController: requestsPresentationStyleExpanded:"];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  if ([v2 _accessibilityBoolValueForKey:@"_axExpanded"])
  {
    [v2 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EA8] forKey:@"_axExpanded"];
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    AXPerformSafeBlock();
    v3 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void __81__ETTranscriptDetailCanvasViewControllerAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) safeValueForKey:@"_presentationDelegate"];
  [v2 canvasViewController:*(a1 + 32) requestsPresentationStyleExpanded:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v22.receiver = self;
  v22.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v22 _accessibilityLoadAccessibilityInformation];
  v3 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_videoOnButton"];
  v4 = accessibilityLocalizedString(@"video.on.button.label");
  [v3 setAccessibilityLabel:v4];

  v5 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_cameraFlipButton"];
  v6 = accessibilityLocalizedString(@"camera.chooser.button.hint");
  [v5 setAccessibilityHint:v6];

  objc_opt_class();
  v7 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_expandColorPickerButton"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = accessibilityLocalizedString(@"expand.color.picker.button");
  [v8 setAccessibilityLabel:v9];

  [v8 setAccessibilityIdentifier:@"ETCompositionExpandColorPickerButton"];
  objc_opt_class();
  v10 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_expandToCameraButton"];
  v11 = __UIAccessibilityCastAsClass();

  v12 = accessibilityLocalizedString(@"expand.camera.button");
  [v11 setAccessibilityLabel:v12];

  [v11 setAccessibilityIdentifier:@"ETCompositionExpandToCameraButton"];
  objc_opt_class();
  v13 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_cancelButton"];
  v14 = __UIAccessibilityCastAsClass();

  v15 = accessibilityLocalizedString(@"cancel.button");
  [v14 setAccessibilityLabel:v15];

  objc_opt_class();
  v16 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_gestureInstructionButton"];
  v17 = __UIAccessibilityCastAsClass();

  v18 = accessibilityLocalizedString(@"gesture.instruction.button");
  [v17 setAccessibilityLabel:v18];

  objc_opt_class();
  v19 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_sendButton"];
  v20 = __UIAccessibilityCastAsClass();

  v21 = accessibilityLocalizedString(@"send.button");
  [v20 setAccessibilityLabel:v21];
}

- (id)_accessibilityCameraFlipButtonLabelForCurrentCamera
{
  v3 = accessibilityLocalizedString(@"camera.chooser.button.label");
  v6 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self _accessibilityStringForCurrentCameraPosition];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)_accessibilityStringForCurrentCameraPosition
{
  v2 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_videoController"];
  v3 = [v2 safeValueForKey:@"videoDevice"];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v3 safeValueForKey:@"position"];
  v5 = [v4 integerValue];

  if (v5 == 1)
  {
    v6 = @"camera.chooser.back.facing";
    goto LABEL_7;
  }

  if (v5 != 2)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = @"camera.chooser.front.facing";
LABEL_7:
  v9 = accessibilityLocalizedString(v6);
  v7 = __UIAXStringForVariables();

LABEL_8:

  return v7;
}

- (ETTranscriptDetailCanvasViewControllerAccessibility)init
{
  v5.receiver = self;
  v5.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  v2 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v5 init];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:v2 selector:sel__axFocusChanged_ name:*MEMORY[0x29EDC7EB8] object:0];

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x29EDC7EB8] object:0];

  v4.receiver = self;
  v4.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v3 viewDidLoad];
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)updateVideoUI
{
  v9.receiver = self;
  v9.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v9 updateVideoUI];
  v3 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_photoCaptureButton"];
  v4 = accessibilityLocalizedString(@"take.picture.button.label");
  [v3 setAccessibilityLabel:v4];

  v5 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_videoRecordButton"];
  v6 = accessibilityLocalizedString(@"record.video.button.label");
  [v5 setAccessibilityLabel:v6];

  v7 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_cameraFlipButton"];
  v8 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self _accessibilityCameraFlipButtonLabelForCurrentCamera];
  [v7 setAccessibilityLabel:v8];
}

- (void)_cameraFlipButtonTapped
{
  v5.receiver = self;
  v5.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v5 _cameraFlipButtonTapped];
  v3 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_cameraFlipButton"];
  v4 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self _accessibilityCameraFlipButtonLabelForCurrentCamera];
  [v3 setAccessibilityLabel:v4];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_setShowingGestureInstructionView:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v8 _setShowingGestureInstructionView:?];
  v5 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  v6 = !v3;
  [v5 setIsAccessibilityElement:v6];
  if (!v6)
  {
    v7 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_gestureInstructionView"];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v7);
  }
}

- (void)_expandColorPickerButtonTapped
{
  v7.receiver = self;
  v7.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v7 _expandColorPickerButtonTapped];
  v3 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"colorPicker"];
  v4 = [v3 safeValueForKey:@"selectedCircle"];
  if (!v4)
  {
    objc_opt_class();
    v5 = [v3 safeValueForKey:@"paletteCircles"];
    v6 = __UIAccessibilityCastAsClass();

    if ([v6 count])
    {
      v4 = [v6 objectAtIndex:0];
    }

    else
    {
      v4 = 0;
    }
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v4);
}

- (void)expandUI
{
  v3 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  [v3 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EB0] forKey:@"_axExpanded"];
  v4.receiver = self;
  v4.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v4 expandUI];
}

- (void)_sendButtonTapped
{
  v3 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  [v3 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EA8] forKey:@"_axExpanded"];
  v4.receiver = self;
  v4.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v4 _sendButtonTapped];
}

- (void)videoControllerDidStartPreview:(id)a3
{
  v10.receiver = self;
  v10.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v10 videoControllerDidStartPreview:a3];
  v4 = accessibilityLocalizedString(@"camera.activated");
  v9 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self _accessibilityStringForCurrentCameraPosition];
  v5 = __UIAXStringForVariables();
  UIAccessibilitySpeakAndDoNotBeInterrupted();

  v6 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_videoController", v9, @"__AXStringForVariablesSentinel"];
  v7 = [v6 safeValueForKey:@"view"];

  [v7 setIsAccessibilityElement:0];
  v8 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v8);
}

- (void)videoControllerDidStopPreview:(id)a3
{
  v5.receiver = self;
  v5.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v5 videoControllerDidStopPreview:a3];
  v4 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  [v4 setIsAccessibilityElement:1];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v4);
}

- (void)colorPicker:(id)a3 requestsPresentColorWheel:(id)a4
{
  v8.receiver = self;
  v8.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  v6 = a4;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v8 colorPicker:a3 requestsPresentColorWheel:v6];
  v7 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView", v8.receiver, v8.super_class];
  [v7 setIsAccessibilityElement:0];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v6);
}

- (void)colorPicker:(id)a3 requestsDismissColorWheel:(id)a4
{
  v7.receiver = self;
  v7.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v7 colorPicker:a3 requestsDismissColorWheel:a4];
  v5 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  [v5 setIsAccessibilityElement:1];

  LODWORD(v5) = *MEMORY[0x29EDC7ED8];
  v6 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"canvasView"];
  UIAccessibilityPostNotification(v5, v6);
}

- (void)_startShowCompositionControlsTimer
{
  if (UIAccessibilityIsSwitchControlRunning() || UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self _accessibilityValueForKey:@"ShowControlsTimer"];
    if (!v3)
    {
      v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
      v3 = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
      [(ETTranscriptDetailCanvasViewControllerAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"ShowControlsTimer"];
    }

    [v3 cancel];
    v9 = 0;
    objc_opt_class();
    v5 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"_showCompositionControlsTimer"];
    v6 = __UIAccessibilityCastAsClass();

    [v6 invalidate];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __89__ETTranscriptDetailCanvasViewControllerAccessibility__startShowCompositionControlsTimer__block_invoke;
    v8[3] = &unk_29F2BA5A8;
    v8[4] = self;
    [v3 afterDelay:v8 processBlock:20.0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
    [(ETTranscriptDetailCanvasViewControllerAccessibility *)&v7 _startShowCompositionControlsTimer];
  }
}

id __89__ETTranscriptDetailCanvasViewControllerAccessibility__startShowCompositionControlsTimer__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = ETTranscriptDetailCanvasViewControllerAccessibility;
  return objc_msgSendSuper2(&v2, sel__startShowCompositionControlsTimer);
}

- (void)_axFocusChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDC7EC0]];

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x29EDC7FF8]];

  v9 = [(ETTranscriptDetailCanvasViewControllerAccessibility *)self safeValueForKey:@"colorPicker"];
  objc_opt_class();
  v10 = [v9 safeValueForKey:@"paletteCircles"];
  v11 = __UIAccessibilityCastAsClass();

  if (([v11 containsObject:v6] & 1) != 0 || objc_msgSend(v11, "containsObject:", v8))
  {
    AXPerformSafeBlock();
  }
}

@end