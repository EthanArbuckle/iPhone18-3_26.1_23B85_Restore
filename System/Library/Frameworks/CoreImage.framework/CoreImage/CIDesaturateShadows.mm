@interface CIDesaturateShadows
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDesaturateShadows

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryColorEffect";
  v9[1] = @"CICategoryNonSquarePixels";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryHighDynamicRange";
  v9[4] = @"CICategoryBuiltIn";
  v9[5] = @"CICategoryApplePrivate";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  v11[1] = @"12";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.14";
  v10[3] = @"inputIntensity";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = &unk_1F1082F58;
  v8[1] = &unk_1F1082F68;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1082F58;
  v8[3] = &unk_1F1082F68;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1082F68;
  v8[5] = @"CIAttributeTypeScalar";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v10[4] = @"inputThreshold";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1082F58;
  v6[1] = &unk_1F1082F68;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1082F58;
  v6[3] = &unk_1F1082F68;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1082F98;
  v6[5] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputSoftness";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1082F58;
  v4[1] = &unk_1F1082FA8;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1082F58;
  v4[3] = &unk_1F1082F68;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082F68;
  v4[5] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_shadowdesat];
  imageByUnpremultiplyingAlpha = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
  [(CIImage *)imageByUnpremultiplyingAlpha extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  inputThreshold = self->inputThreshold;
  v17[0] = imageByUnpremultiplyingAlpha;
  v17[1] = inputThreshold;
  v17[2] = self->inputIntensity;
  v14 = MEMORY[0x1E696AD98];
  [(NSNumber *)self->inputSoftness floatValue];
  v17[3] = [v14 numberWithDouble:1.0 - v15];
  return -[CIImage imageByPremultiplyingAlpha](-[CIColorKernel applyWithExtent:arguments:](v3, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4], v6, v8, v10, v12), "imageByPremultiplyingAlpha");
}

@end