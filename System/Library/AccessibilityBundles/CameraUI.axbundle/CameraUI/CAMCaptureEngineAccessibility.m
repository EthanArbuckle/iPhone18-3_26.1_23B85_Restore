@interface CAMCaptureEngineAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityDetectFaces:(BOOL)a3 completionBlock:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_handleSessionDidStartRunning:(id)a3;
- (void)_handleSessionDidStopRunning:(id)a3;
- (void)_updateCurrentlyConfiguredObjects;
- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 forMetadataObjectTypes:(id)a5 fromConnection:(id)a6;
@end

@implementation CAMCaptureEngineAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CAMCaptureEngine" hasInstanceMethod:@"_handleSessionDidStartRunning:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CAMCaptureEngine" hasInstanceMethod:@"_handleSessionDidStopRunning:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"CAMCaptureEngine" hasInstanceVariable:@"__captureSession" withType:"AVCaptureSession"];
  [v3 validateClass:@"CAMCaptureEngine" hasInstanceVariable:@"__captureSessionQueue" withType:"NSObject<OS_dispatch_queue>"];
  [v3 validateClass:@"CAMCaptureEngine" hasInstanceMethod:@"captureOutput:didOutputMetadataObjects:forMetadataObjectTypes:fromConnection:" withFullSignature:{"v", "@", "@", "@", "@", 0}];
  [v3 validateClass:@"CAMCaptureEngine" hasInstanceMethod:@"_updateCurrentlyConfiguredObjects" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CAMCaptureEngineAccessibility;
  [(CAMCaptureEngineAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CAMCaptureEngineAccessibility *)self _handleSessionDidStartRunning:0];
}

- (void)_accessibilityDetectFaces:(BOOL)a3 completionBlock:(id)a4
{
  v4 = a3;
  v7 = [AXCameraVisionEngine sharedEngine:a3];
  if (v4)
  {
    v6 = [(CAMCaptureEngineAccessibility *)self safeValueForKey:@"__captureSession"];
    [v7 setCaptureSession:v6];
  }

  else
  {
    [v7 setCaptureSession:0];
  }
}

- (void)_handleSessionDidStartRunning:(id)a3
{
  v4 = *MEMORY[0x29EDC8008];
  v5 = a3;
  [v4 _accessibilitySetCameraIrisOpen:1];
  v12.receiver = self;
  v12.super_class = CAMCaptureEngineAccessibility;
  [(CAMCaptureEngineAccessibility *)&v12 _handleSessionDidStartRunning:v5];

  UIAccessibilityPostNotification(0xFA2u, &unk_2A214D108);
  v6 = [MEMORY[0x29EDBA068] defaultCenter];
  v7 = *MEMORY[0x29EDC8000];
  v8 = [MEMORY[0x29EDBA088] mainQueue];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __63__CAMCaptureEngineAccessibility__handleSessionDidStartRunning___block_invoke;
  v11[3] = &unk_29F2AD070;
  v11[4] = self;
  v9 = [v6 addObserverForName:v7 object:0 queue:v8 usingBlock:v11];
  v10 = VOObserver;
  VOObserver = v9;

  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(CAMCaptureEngineAccessibility *)self _accessibilityDetectFaces:1 completionBlock:0];
  }
}

uint64_t __63__CAMCaptureEngineAccessibility__handleSessionDidStartRunning___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();

  return [v1 _accessibilityDetectFaces:IsVoiceOverRunning completionBlock:0];
}

- (void)_handleSessionDidStopRunning:(id)a3
{
  v4 = *MEMORY[0x29EDC8008];
  v5 = a3;
  [v4 _accessibilitySetCameraIrisOpen:0];
  v6.receiver = self;
  v6.super_class = CAMCaptureEngineAccessibility;
  [(CAMCaptureEngineAccessibility *)&v6 _handleSessionDidStopRunning:v5];

  UIAccessibilityPostNotification(0xFA2u, &unk_2A214D130);
}

- (void)_updateCurrentlyConfiguredObjects
{
  v2.receiver = self;
  v2.super_class = CAMCaptureEngineAccessibility;
  [(CAMCaptureEngineAccessibility *)&v2 _updateCurrentlyConfiguredObjects];
  UIAccessibilityIsVoiceOverRunning();
}

- (void)captureOutput:(id)a3 didOutputMetadataObjects:(id)a4 forMetadataObjectTypes:(id)a5 fromConnection:(id)a6
{
  v14.receiver = self;
  v14.super_class = CAMCaptureEngineAccessibility;
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [(CAMCaptureEngineAccessibility *)&v14 captureOutput:v12 didOutputMetadataObjects:v11 forMetadataObjectTypes:v10 fromConnection:v9];
  v13 = [AXCameraVisionEngine sharedEngine:v14.receiver];
  [v13 captureOutput:v12 didOutputMetadataObjects:v11 forMetadataObjectTypes:v10 fromConnection:v9];
}

@end