@interface CIMorphologyMaximum
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIMorphologyMaximum

- (id)outputImage
{
  v8[1] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->super.inputRadius floatValue];
  inputImage = self->super.inputImage;
  v7 = @"inputRadius";
  *&v5 = -fmaxf(v4, 0.0);
  v8[0] = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  return -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CICheapMorphology", [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1]);
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryBlur";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"11";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.13";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = @"CIAttributeTypeDistance";
  v4[1] = &unk_1F1084328;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084308;
  v4[3] = &unk_1F1084328;
  v3[4] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1084328;
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end