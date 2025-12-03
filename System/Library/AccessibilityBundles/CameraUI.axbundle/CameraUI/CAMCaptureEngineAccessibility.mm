@interface CAMCaptureEngineAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityDetectFaces:(BOOL)faces completionBlock:(id)block;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_handleSessionDidStartRunning:(id)running;
- (void)_handleSessionDidStopRunning:(id)running;
- (void)_updateCurrentlyConfiguredObjects;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects forMetadataObjectTypes:(id)types fromConnection:(id)connection;
@end

@implementation CAMCaptureEngineAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CAMCaptureEngine" hasInstanceMethod:@"_handleSessionDidStartRunning:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CAMCaptureEngine" hasInstanceMethod:@"_handleSessionDidStopRunning:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"CAMCaptureEngine" hasInstanceVariable:@"__captureSession" withType:"AVCaptureSession"];
  [validationsCopy validateClass:@"CAMCaptureEngine" hasInstanceVariable:@"__captureSessionQueue" withType:"NSObject<OS_dispatch_queue>"];
  [validationsCopy validateClass:@"CAMCaptureEngine" hasInstanceMethod:@"captureOutput:didOutputMetadataObjects:forMetadataObjectTypes:fromConnection:" withFullSignature:{"v", "@", "@", "@", "@", 0}];
  [validationsCopy validateClass:@"CAMCaptureEngine" hasInstanceMethod:@"_updateCurrentlyConfiguredObjects" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CAMCaptureEngineAccessibility;
  [(CAMCaptureEngineAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CAMCaptureEngineAccessibility *)self _handleSessionDidStartRunning:0];
}

- (void)_accessibilityDetectFaces:(BOOL)faces completionBlock:(id)block
{
  facesCopy = faces;
  v7 = [AXCameraVisionEngine sharedEngine:faces];
  if (facesCopy)
  {
    v6 = [(CAMCaptureEngineAccessibility *)self safeValueForKey:@"__captureSession"];
    [v7 setCaptureSession:v6];
  }

  else
  {
    [v7 setCaptureSession:0];
  }
}

- (void)_handleSessionDidStartRunning:(id)running
{
  v4 = *MEMORY[0x29EDC8008];
  runningCopy = running;
  [v4 _accessibilitySetCameraIrisOpen:1];
  v12.receiver = self;
  v12.super_class = CAMCaptureEngineAccessibility;
  [(CAMCaptureEngineAccessibility *)&v12 _handleSessionDidStartRunning:runningCopy];

  UIAccessibilityPostNotification(0xFA2u, &unk_2A214D108);
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  v7 = *MEMORY[0x29EDC8000];
  mainQueue = [MEMORY[0x29EDBA088] mainQueue];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __63__CAMCaptureEngineAccessibility__handleSessionDidStartRunning___block_invoke;
  v11[3] = &unk_29F2AD070;
  v11[4] = self;
  v9 = [defaultCenter addObserverForName:v7 object:0 queue:mainQueue usingBlock:v11];
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

- (void)_handleSessionDidStopRunning:(id)running
{
  v4 = *MEMORY[0x29EDC8008];
  runningCopy = running;
  [v4 _accessibilitySetCameraIrisOpen:0];
  v6.receiver = self;
  v6.super_class = CAMCaptureEngineAccessibility;
  [(CAMCaptureEngineAccessibility *)&v6 _handleSessionDidStopRunning:runningCopy];

  UIAccessibilityPostNotification(0xFA2u, &unk_2A214D130);
}

- (void)_updateCurrentlyConfiguredObjects
{
  v2.receiver = self;
  v2.super_class = CAMCaptureEngineAccessibility;
  [(CAMCaptureEngineAccessibility *)&v2 _updateCurrentlyConfiguredObjects];
  UIAccessibilityIsVoiceOverRunning();
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects forMetadataObjectTypes:(id)types fromConnection:(id)connection
{
  v14.receiver = self;
  v14.super_class = CAMCaptureEngineAccessibility;
  connectionCopy = connection;
  typesCopy = types;
  objectsCopy = objects;
  outputCopy = output;
  [(CAMCaptureEngineAccessibility *)&v14 captureOutput:outputCopy didOutputMetadataObjects:objectsCopy forMetadataObjectTypes:typesCopy fromConnection:connectionCopy];
  v13 = [AXCameraVisionEngine sharedEngine:v14.receiver];
  [v13 captureOutput:outputCopy didOutputMetadataObjects:objectsCopy forMetadataObjectTypes:typesCopy fromConnection:connectionCopy];
}

@end