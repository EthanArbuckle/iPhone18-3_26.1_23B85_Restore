@interface CIASG60Percent
- (id)outputImage;
@end

@implementation CIASG60Percent

- (id)outputImage
{
  v3 = [CIKernel kernelWithInternalRepresentation:&CI::_ASGh60];
  v4 = [CIKernel kernelWithInternalRepresentation:&CI::_ASGv60];

  return [(CIASGPercent *)self outputImageScale:4 outset:v3 hKernel:v4 vKernel:0.6];
}

@end