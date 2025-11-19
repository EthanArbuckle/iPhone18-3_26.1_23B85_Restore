@interface CIASG50Percent
- (id)outputImage;
@end

@implementation CIASG50Percent

- (id)outputImage
{
  v3 = [CIKernel kernelWithInternalRepresentation:&CI::_ASGh50];
  v4 = [CIKernel kernelWithInternalRepresentation:&CI::_ASGv50];

  return [(CIASGPercent *)self outputImageScale:5 outset:v3 hKernel:v4 vKernel:0.5];
}

@end