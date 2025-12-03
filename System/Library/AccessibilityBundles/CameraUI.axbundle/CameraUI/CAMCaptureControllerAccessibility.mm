@interface CAMCaptureControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CAMCaptureControllerAccessibility)initWithCaptureConfiguration:(id)configuration zoomFactor:(double)factor outputToExternalStorage:(BOOL)storage engineOptions:(int64_t)options locationController:(id)controller motionController:(id)motionController burstController:(id)burstController protectionController:(id)self0 powerController:(id)self1 irisVideoController:(id)self2 remoteShutterController:(id)self3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CAMCaptureControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CUCaptureController" hasInstanceMethod:@"_captureEngine" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CAMCaptureEngine" hasInstanceVariable:@"__captureSession" withType:"AVCaptureSession"];
  [validationsCopy validateClass:@"AVCaptureSession" hasInstanceMethod:@"isRunning" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CUCaptureController" hasInstanceMethod:@"initWithCaptureConfiguration: zoomFactor: outputToExternalStorage: engineOptions: locationController: motionController: burstController: protectionController: powerController: irisVideoController: remoteShutterController:" withFullSignature:{"@", "@", "d", "B", "q", "@", "@", "@", "@", "@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = CAMCaptureControllerAccessibility;
  [(CAMCaptureControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(CAMCaptureControllerAccessibility *)self safeValueForKey:@"_captureEngine"];
  v4 = __UIAccessibilitySafeClass();

  v5 = *MEMORY[0x29EDC8008];
  v6 = [v4 safeValueForKey:@"__captureSession"];
  [v5 _accessibilitySetCameraIrisOpen:{objc_msgSend(v6, "safeBoolForKey:", @"isRunning"}];

  [v4 _accessibilityLoadAccessibilityInformation];
}

- (CAMCaptureControllerAccessibility)initWithCaptureConfiguration:(id)configuration zoomFactor:(double)factor outputToExternalStorage:(BOOL)storage engineOptions:(int64_t)options locationController:(id)controller motionController:(id)motionController burstController:(id)burstController protectionController:(id)self0 powerController:(id)self1 irisVideoController:(id)self2 remoteShutterController:(id)self3
{
  v15.receiver = self;
  v15.super_class = CAMCaptureControllerAccessibility;
  v13 = [(CAMCaptureControllerAccessibility *)&v15 initWithCaptureConfiguration:configuration zoomFactor:storage outputToExternalStorage:options engineOptions:controller locationController:motionController motionController:burstController burstController:factor protectionController:protectionController powerController:powerController irisVideoController:videoController remoteShutterController:shutterController];
  [(CAMCaptureControllerAccessibility *)v13 _accessibilityLoadAccessibilityInformation];

  return v13;
}

@end