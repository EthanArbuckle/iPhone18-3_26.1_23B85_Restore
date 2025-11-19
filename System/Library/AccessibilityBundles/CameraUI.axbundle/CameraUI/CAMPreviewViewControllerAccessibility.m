@interface CAMPreviewViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)captureController:(id)a3 shouldResetFocusAndExposureForReason:(int64_t)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateForCaptureDevice;
- (void)_setGraphConfiguration:(id)a3;
- (void)_setUserLockedFocusAndExposure:(BOOL)a3 shouldAnimate:(BOOL)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CAMPreviewViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMPreviewViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"_setUserLockedFocusAndExposure: shouldAnimate:" withFullSignature:{"v", "B", "B", 0}];
  [v3 validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"captureController:shouldResetFocusAndExposureForReason:" withFullSignature:{"B", "@", "q", 0}];
  [v3 validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"previewView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"_device" withFullSignature:{"q", 0}];
  [v3 validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"_setGraphConfiguration:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3 = [(CAMPreviewViewControllerAccessibility *)self safeValueForKey:@"previewView"];
  v4 = +[AXCameraVisionEngine sharedEngine];
  [v4 setSceneObjectElementContainerView:v3];

  v5.receiver = self;
  v5.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  [(CAMPreviewViewControllerAccessibility *)self _axUpdateForCaptureDevice];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v4 viewWillAppear:a3];
  [(CAMPreviewViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v4 viewDidDisappear:a3];
  v3 = +[AXCameraVisionEngine sharedEngine];
  [v3 setSceneObjectElementContainerView:0];
}

- (void)_setUserLockedFocusAndExposure:(BOOL)a3 shouldAnimate:(BOOL)a4
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v8 _setUserLockedFocusAndExposure:a3 shouldAnimate:a4];
  v6 = [(CAMPreviewViewControllerAccessibility *)self safeValueForKey:@"previewView"];
  v7 = [MEMORY[0x29EDBA070] numberWithBool:v4];
  [v6 _accessibilitySetRetainedValue:v7 forKey:@"AXCameraIsFocusedKey"];
}

- (BOOL)captureController:(id)a3 shouldResetFocusAndExposureForReason:(int64_t)a4
{
  v8.receiver = self;
  v8.super_class = CAMPreviewViewControllerAccessibility;
  v5 = [(CAMPreviewViewControllerAccessibility *)&v8 captureController:a3 shouldResetFocusAndExposureForReason:a4];
  v6 = [(CAMPreviewViewControllerAccessibility *)self safeValueForKey:@"previewView"];
  [v6 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EA8] forKey:@"AXCameraIsFocusedKey"];

  return v5;
}

- (void)_setGraphConfiguration:(id)a3
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v4 _setGraphConfiguration:a3];
  [(CAMPreviewViewControllerAccessibility *)self _axUpdateForCaptureDevice];
}

- (void)_axUpdateForCaptureDevice
{
  v3 = [(CAMPreviewViewControllerAccessibility *)self _device]- 1;
  if (v3 > 0xA)
  {
    v4 = MEMORY[0x29EDB8EB0];
  }

  else
  {
    v4 = qword_29F2AD4D0[v3];
  }

  v5 = [(CAMPreviewViewControllerAccessibility *)self safeValueForKey:@"previewView"];
  [v5 _accessibilitySetRetainedValue:v4 forKey:@"AXIsBackCamera"];
}

@end