@interface CIASG66Percent
- (id)outputImage;
@end

@implementation CIASG66Percent

- (id)outputImage
{
  v3 = [CIKernel kernelWithInternalRepresentation:&CI::_ASGh66];
  v4 = [CIKernel kernelWithInternalRepresentation:&CI::_ASGv66];

  return [(CIASGPercent *)self outputImageScale:4 outset:v3 hKernel:v4 vKernel:0.666666667];
}

@end