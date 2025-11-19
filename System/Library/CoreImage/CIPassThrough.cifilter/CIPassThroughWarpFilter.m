@interface CIPassThroughWarpFilter
- (id)outputImage;
@end

@implementation CIPassThroughWarpFilter

- (id)outputImage
{
  v3 = [CIWarpKernel cachedKernelWithString:@"kernel vec2 CIPT_Warp () { return destCoord() } \n"];;
  [(CIImage *)self->super.inputImage extent];
  v4 = [v3 applyWithExtent:&stru_4130 roiCallback:self->super.inputImage inputImage:&__NSArray0__struct arguments:?];

  return v4;
}

@end