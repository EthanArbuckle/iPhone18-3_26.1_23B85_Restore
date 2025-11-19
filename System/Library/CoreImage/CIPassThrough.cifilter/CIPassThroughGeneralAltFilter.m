@interface CIPassThroughGeneralAltFilter
- (id)outputImage;
@end

@implementation CIPassThroughGeneralAltFilter

- (id)outputImage
{
  v3 = [CIKernel cachedKernelWithString:@"kernel vec4 CIPT_GeneralAlt (sampler s, float v) { return sample(s, samplerCoord(s)+v) } \n"];;
  [(CIImage *)self->super.inputImage extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v15[0] = self->super.inputImage;
  v15[1] = &off_42D8;
  v12 = [NSArray arrayWithObjects:v15 count:2];
  v13 = [v3 applyWithExtent:&stru_4190 roiCallback:v12 arguments:{v5, v7, v9, v11}];

  return v13;
}

@end