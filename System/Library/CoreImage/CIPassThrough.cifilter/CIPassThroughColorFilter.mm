@interface CIPassThroughColorFilter
- (id)outputImage;
@end

@implementation CIPassThroughColorFilter

- (id)outputImage
{
  v3 = [CIColorKernel cachedKernelWithString:@"kernel vec4 CIPT_Color (__sample s) { return s } \n"];;
  [(CIImage *)self->super.inputImage extent];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  inputImage = self->super.inputImage;
  v12 = [NSArray arrayWithObjects:&inputImage count:1];
  v13 = [v3 applyWithExtent:v12 arguments:{v5, v7, v9, v11}];

  return v13;
}

@end