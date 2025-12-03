@interface CAMPreviewViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)captureController:(id)controller shouldResetFocusAndExposureForReason:(int64_t)reason;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateForCaptureDevice;
- (void)_setGraphConfiguration:(id)configuration;
- (void)_setUserLockedFocusAndExposure:(BOOL)exposure shouldAnimate:(BOOL)animate;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CAMPreviewViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMPreviewViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"_setUserLockedFocusAndExposure: shouldAnimate:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"captureController:shouldResetFocusAndExposureForReason:" withFullSignature:{"B", "@", "q", 0}];
  [validationsCopy validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"previewView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"_device" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"CAMPreviewViewController" hasInstanceMethod:@"_setGraphConfiguration:" withFullSignature:{"v", "@", 0}];
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

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(CAMPreviewViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v4 viewDidDisappear:disappear];
  v3 = +[AXCameraVisionEngine sharedEngine];
  [v3 setSceneObjectElementContainerView:0];
}

- (void)_setUserLockedFocusAndExposure:(BOOL)exposure shouldAnimate:(BOOL)animate
{
  exposureCopy = exposure;
  v8.receiver = self;
  v8.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v8 _setUserLockedFocusAndExposure:exposure shouldAnimate:animate];
  v6 = [(CAMPreviewViewControllerAccessibility *)self safeValueForKey:@"previewView"];
  v7 = [MEMORY[0x29EDBA070] numberWithBool:exposureCopy];
  [v6 _accessibilitySetRetainedValue:v7 forKey:@"AXCameraIsFocusedKey"];
}

- (BOOL)captureController:(id)controller shouldResetFocusAndExposureForReason:(int64_t)reason
{
  v8.receiver = self;
  v8.super_class = CAMPreviewViewControllerAccessibility;
  v5 = [(CAMPreviewViewControllerAccessibility *)&v8 captureController:controller shouldResetFocusAndExposureForReason:reason];
  v6 = [(CAMPreviewViewControllerAccessibility *)self safeValueForKey:@"previewView"];
  [v6 _accessibilitySetRetainedValue:MEMORY[0x29EDB8EA8] forKey:@"AXCameraIsFocusedKey"];

  return v5;
}

- (void)_setGraphConfiguration:(id)configuration
{
  v4.receiver = self;
  v4.super_class = CAMPreviewViewControllerAccessibility;
  [(CAMPreviewViewControllerAccessibility *)&v4 _setGraphConfiguration:configuration];
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