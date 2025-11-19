@interface CISaliencyMapFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CISaliencyMapFilter

+ (id)customAttributes
{
  v4[0] = kCIAttributeFilterCategories;
  v3[0] = kCICategoryVideo;
  v3[1] = kCICategoryStillImage;
  v3[2] = kCICategoryBuiltIn;
  v3[3] = kCICategoryStylize;
  v5[0] = [NSArray arrayWithObjects:v3 count:4];
  v5[1] = @"12";
  v4[1] = kCIAttributeFilterAvailable_iOS;
  v4[2] = kCIAttributeFilterAvailable_Mac;
  v5[2] = @"10.14";
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  inputImage = self->inputImage;
  if (inputImage && ([(CIImage *)inputImage extent], !CGRectIsInfinite(v21)))
  {
    v16 = 0;
    v5 = self->inputImage;
    [(CIImage *)v5 extent];
    v7 = -v6;
    [(CIImage *)self->inputImage extent];
    CGAffineTransformMakeTranslation(&v15, v7, -v8);
    v9 = [(CIImage *)v5 imageByApplyingTransform:&v15];
    v10 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
    v11 = [(CIImage *)v9 imageByColorMatchingWorkingSpaceToColorSpace:v10];
    v19 = v11;
    v12 = [NSArray arrayWithObjects:&v19 count:1];
    v17 = @"rect";
    [(CIImage *)v11 extent];
    v18 = [CIVector vectorWithCGRect:?];
    v13 = [CISaliencyMapKernel applyWithExtent:v12 inputs:[NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1] arguments:&v16 error:0.0, 0.0, 64.0, 64.0];
    if (v16)
    {
      CGColorSpaceRelease(v10);
      return +[CIImage emptyImage];
    }

    else
    {
      v14 = [v13 imageByColorMatchingColorSpaceToWorkingSpace:v10];
      CGColorSpaceRelease(v10);
    }

    return v14;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end