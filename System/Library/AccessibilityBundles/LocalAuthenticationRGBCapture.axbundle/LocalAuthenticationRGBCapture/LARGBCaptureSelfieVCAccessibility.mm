@interface LARGBCaptureSelfieVCAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_axAnnounceSuccess;
- (void)_dispatchSkipButtonTimers;
- (void)_restartSelfieCapture:(id)capture;
- (void)_toggleFlash:(id)flash;
- (void)captureSelfieDidFinishGestureMonitoring;
- (void)captureSelfieWillMonitorGesture:(int64_t)gesture;
@end

@implementation LARGBCaptureSelfieVCAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceMethod:@"captureSelfieWillMonitorGesture:" withFullSignature:{"v", "q", 0}];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceMethod:@"_dispatchSkipButtonTimers" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceMethod:@"_toggleFlash:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceMethod:@"captureSelfieDidFinishGestureMonitoring" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceMethod:@"_restartSelfieCapture:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceVariable:@"_gesturePrompt" withType:"UILabel"];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceVariable:@"_cameraFeed" withType:"LARGBCameraPreview"];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceVariable:@"_didSkipLastGesture" withType:"B"];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceVariable:@"_hasPresentedFirstGesture" withType:"B"];
  [validationsCopy validateClass:@"LARGBCaptureSelfieVC" hasInstanceVariable:@"_flashButton" withType:"UIBarButtonItem"];
}

- (void)_toggleFlash:(id)flash
{
  v9.receiver = self;
  v9.super_class = LARGBCaptureSelfieVCAccessibility;
  [(LARGBCaptureSelfieVCAccessibility *)&v9 _toggleFlash:flash];
  v4 = *MEMORY[0x29EDC7F70];
  v5 = [(LARGBCaptureSelfieVCAccessibility *)self safeBoolForKey:@"_useFlash"];
  v6 = *MEMORY[0x29EDC7FC0];
  if (v5)
  {
    v7 = *MEMORY[0x29EDC7FC0];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(LARGBCaptureSelfieVCAccessibility *)self safeValueForKey:@"_flashButton"];
  [v8 setAccessibilityTraits:v7 | v4];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_restartSelfieCapture:(id)capture
{
  v3.receiver = self;
  v3.super_class = LARGBCaptureSelfieVCAccessibility;
  [(LARGBCaptureSelfieVCAccessibility *)&v3 _restartSelfieCapture:capture];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_axAnnounceSuccess
{
  v3 = *MEMORY[0x29EDC7EA8];
  v7 = accessibilityLocalizedString(@"selfie.success");
  v4 = [(LARGBCaptureSelfieVCAccessibility *)self safeUIViewForKey:@"_gesturePrompt"];
  accessibilityLabel = [v4 accessibilityLabel];
  v5 = __AXStringForVariables();
  UIAccessibilityPostNotification(v3, v5);
}

- (void)captureSelfieWillMonitorGesture:(int64_t)gesture
{
  if ([(LARGBCaptureSelfieVCAccessibility *)self safeBoolForKey:@"_hasPresentedFirstGesture"])
  {
    v5 = [(LARGBCaptureSelfieVCAccessibility *)self safeBoolForKey:@"_didSkipLastGesture"];
    v6.receiver = self;
    v6.super_class = LARGBCaptureSelfieVCAccessibility;
    [(LARGBCaptureSelfieVCAccessibility *)&v6 captureSelfieWillMonitorGesture:gesture];
    if ((v5 & 1) == 0)
    {
      [(LARGBCaptureSelfieVCAccessibility *)self _axAnnounceSuccess];
    }
  }

  else
  {
    v6.receiver = self;
    v6.super_class = LARGBCaptureSelfieVCAccessibility;
    [(LARGBCaptureSelfieVCAccessibility *)&v6 captureSelfieWillMonitorGesture:gesture];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)captureSelfieDidFinishGestureMonitoring
{
  v3 = [(LARGBCaptureSelfieVCAccessibility *)self safeBoolForKey:@"_didSkipLastGesture"];
  v4.receiver = self;
  v4.super_class = LARGBCaptureSelfieVCAccessibility;
  [(LARGBCaptureSelfieVCAccessibility *)&v4 captureSelfieDidFinishGestureMonitoring];
  if ((v3 & 1) == 0)
  {
    [(LARGBCaptureSelfieVCAccessibility *)self _axAnnounceSuccess];
  }

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_dispatchSkipButtonTimers
{
  v6.receiver = self;
  v6.super_class = LARGBCaptureSelfieVCAccessibility;
  [(LARGBCaptureSelfieVCAccessibility *)&v6 _dispatchSkipButtonTimers];
  v3 = [(LARGBCaptureSelfieVCAccessibility *)self safeUIViewForKey:@"_gesturePrompt"];
  accessibilityLabel = [v3 accessibilityLabel];

  v5 = [(LARGBCaptureSelfieVCAccessibility *)self safeUIViewForKey:@"_cameraFeed"];
  [v5 setAccessibilityHint:accessibilityLabel];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], accessibilityLabel);
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

@end