@interface CIComicEffect
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIComicEffect

- (id)outputImage
{
  result = self->inputImage;
  if (result)
  {
    v4 = [objc_msgSend(result imageByApplyingFilter:@"CISpotColor" withInputParameters:{0), "imageByApplyingFilter:withInputParameters:", @"CICMYKHalftone", &unk_1F1082500}];
    v5 = [(CIImage *)self->inputImage imageByApplyingFilter:@"CILineOverlay" withInputParameters:0];

    return [(CIImage *)v5 imageByCompositingOverImage:v4];
  }

  return result;
}

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryStylize";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:4];
  v5[1] = @"9";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.5";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

@end