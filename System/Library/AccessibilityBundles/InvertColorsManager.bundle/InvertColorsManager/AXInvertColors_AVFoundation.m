@interface AXInvertColors_AVFoundation
+ (void)performValidations:(id)a3;
@end

@implementation AXInvertColors_AVFoundation

+ (void)performValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVCaptureVideoPreviewLayer"];
  [v3 validateClass:@"AVCaptureVideoPreviewLayer" isKindOfClass:@"CALayer"];
}

@end