@interface CIASG80Percent
- (id)outputImage;
@end

@implementation CIASG80Percent

- (id)outputImage
{
  v3 = [CIKernel kernelWithInternalRepresentation:&CI::_ASGh80];
  v4 = [CIKernel kernelWithInternalRepresentation:&CI::_ASGv80];

  return [(CIASGPercent *)self outputImageScale:4 outset:v3 hKernel:v4 vKernel:0.8];
}

@end