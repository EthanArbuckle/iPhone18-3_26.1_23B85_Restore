@interface CAMCaptureControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CAMCaptureControllerAccessibility)initWithCaptureConfiguration:(id)a3 zoomFactor:(double)a4 outputToExternalStorage:(BOOL)a5 engineOptions:(int64_t)a6 locationController:(id)a7 motionController:(id)a8 burstController:(id)a9 protectionController:(id)a10 powerController:(id)a11 irisVideoController:(id)a12 remoteShutterController:(id)a13;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CAMCaptureControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CUCaptureController" hasInstanceMethod:@"_captureEngine" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CAMCaptureEngine" hasInstanceVariable:@"__captureSession" withType:"AVCaptureSession"];
  [v3 validateClass:@"AVCaptureSession" hasInstanceMethod:@"isRunning" withFullSignature:{"B", 0}];
  [v3 validateClass:@"CUCaptureController" hasInstanceMethod:@"initWithCaptureConfiguration: zoomFactor: outputToExternalStorage: engineOptions: locationController: motionController: burstController: protectionController: powerController: irisVideoController: remoteShutterController:" withFullSignature:{"@", "@", "d", "B", "q", "@", "@", "@", "@", "@", "@", "@", 0}];
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

- (CAMCaptureControllerAccessibility)initWithCaptureConfiguration:(id)a3 zoomFactor:(double)a4 outputToExternalStorage:(BOOL)a5 engineOptions:(int64_t)a6 locationController:(id)a7 motionController:(id)a8 burstController:(id)a9 protectionController:(id)a10 powerController:(id)a11 irisVideoController:(id)a12 remoteShutterController:(id)a13
{
  v15.receiver = self;
  v15.super_class = CAMCaptureControllerAccessibility;
  v13 = [(CAMCaptureControllerAccessibility *)&v15 initWithCaptureConfiguration:a3 zoomFactor:a5 outputToExternalStorage:a6 engineOptions:a7 locationController:a8 motionController:a9 burstController:a4 protectionController:a10 powerController:a11 irisVideoController:a12 remoteShutterController:a13];
  [(CAMCaptureControllerAccessibility *)v13 _accessibilityLoadAccessibilityInformation];

  return v13;
}

@end