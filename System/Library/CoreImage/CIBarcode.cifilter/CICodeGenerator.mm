@interface CICodeGenerator
- (id)outputImage;
@end

@implementation CICodeGenerator

- (id)outputImage
{
  outputCGImage = [(CICodeGenerator *)self outputCGImage];
  if (outputCGImage)
  {
    v5[0] = kCIImageNearestSampling;
    v5[1] = kCIImageAlphaOne;
    v6[0] = &__kCFBooleanTrue;
    v6[1] = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
    outputCGImage = [CIImage imageWithCGImage:outputCGImage options:v3];
  }

  return outputCGImage;
}

@end