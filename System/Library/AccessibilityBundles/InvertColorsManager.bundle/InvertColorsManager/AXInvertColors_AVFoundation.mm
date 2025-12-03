@interface AXInvertColors_AVFoundation
+ (void)performValidations:(id)validations;
@end

@implementation AXInvertColors_AVFoundation

+ (void)performValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVCaptureVideoPreviewLayer"];
  [validationsCopy validateClass:@"AVCaptureVideoPreviewLayer" isKindOfClass:@"CALayer"];
}

@end