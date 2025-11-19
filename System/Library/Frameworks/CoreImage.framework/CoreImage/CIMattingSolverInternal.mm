@interface CIMattingSolverInternal
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIMattingSolverInternal

+ (id)customAttributes
{
  v21[11] = *MEMORY[0x1E69E9840];
  v20[0] = @"CIAttributeFilterCategories";
  v19[0] = @"CICategoryColorAdjustment";
  v19[1] = @"CICategoryStillImage";
  v19[2] = @"CICategoryBuiltIn";
  v19[3] = @"CICategoryApplePrivate";
  v21[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  v21[1] = @"12";
  v20[1] = @"CIAttributeFilterAvailable_iOS";
  v20[2] = @"CIAttributeFilterAvailable_Mac";
  v21[2] = @"10.14";
  v20[3] = @"inputRadius";
  v17[0] = @"CIAttributeSliderMin";
  v17[1] = @"CIAttributeSliderMax";
  v18[0] = &unk_1F1081F08;
  v18[1] = &unk_1F1081F20;
  v17[2] = @"CIAttributeMin";
  v17[3] = @"CIAttributeMax";
  v18[2] = &unk_1F1081F08;
  v18[3] = &unk_1F1081F20;
  v17[4] = @"CIAttributeDefault";
  v17[5] = @"CIAttributeType";
  v18[4] = &unk_1F1081F38;
  v18[5] = @"CIAttributeTypeInteger";
  v21[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:6];
  v20[4] = @"inputSubsampling";
  v15[0] = @"CIAttributeSliderMin";
  v15[1] = @"CIAttributeSliderMax";
  v16[0] = &unk_1F1081F08;
  v16[1] = &unk_1F1081F20;
  v15[2] = @"CIAttributeMin";
  v15[3] = @"CIAttributeMax";
  v16[2] = &unk_1F1081F08;
  v16[3] = &unk_1F1081F20;
  v15[4] = @"CIAttributeDefault";
  v15[5] = @"CIAttributeType";
  v16[4] = &unk_1F1081F50;
  v16[5] = @"CIAttributeTypeScalar";
  v21[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
  v20[5] = @"inputNumIterations";
  v13[0] = @"CIAttributeSliderMin";
  v13[1] = @"CIAttributeSliderMax";
  v14[0] = &unk_1F1081F68;
  v14[1] = &unk_1F1081F80;
  v13[2] = @"CIAttributeMin";
  v13[3] = @"CIAttributeMax";
  v14[2] = &unk_1F1081F68;
  v14[3] = &unk_1F1081F80;
  v13[4] = @"CIAttributeDefault";
  v13[5] = @"CIAttributeType";
  v14[4] = &unk_1F1081F50;
  v14[5] = @"CIAttributeTypeInteger";
  v21[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v20[6] = @"inputEPS";
  v11[0] = @"CIAttributeSliderMin";
  v11[1] = @"CIAttributeSliderMax";
  v12[0] = &unk_1F1084198;
  v12[1] = &unk_1F10841A8;
  v12[2] = &unk_1F1084198;
  v12[3] = &unk_1F10841A8;
  v11[2] = @"CIAttributeMin";
  v11[3] = @"CIAttributeMax";
  v11[4] = @"CIAttributeDefault";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F10841B8;
  v12[5] = @"CIAttributeTypeScalar";
  v21[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v20[7] = @"inputFGThresholdValue";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1084198;
  v10[1] = &unk_1F10841C8;
  v9[2] = @"CIAttributeMin";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F1084198;
  v10[3] = &unk_1F10841C8;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F10841D8;
  v10[5] = @"CIAttributeTypeScalar";
  v21[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v20[8] = @"inputBGThresholdValue";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F1084198;
  v8[1] = &unk_1F10841C8;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1084198;
  v8[3] = &unk_1F10841C8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F10841E8;
  v8[5] = @"CIAttributeTypeScalar";
  v21[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v20[9] = @"inputErosionKernelSize";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1081F68;
  v6[1] = &unk_1F1081F20;
  v5[2] = @"CIAttributeMin";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1081F68;
  v6[3] = &unk_1F1081F20;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1081F08;
  v6[5] = @"CIAttributeTypeScalar";
  v21[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v20[10] = @"inputUseDepthFilter";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = &unk_1F1081F08;
  v4[1] = @"CIAttributeTypeBoolean";
  v21[10] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:11];
}

- (id)outputImage
{
  v27[3] = *MEMORY[0x1E69E9840];
  inputMainImage = self->inputMainImage;
  if ([(CIImage *)inputMainImage colorSpace]&& CGColorSpaceGetModel([(CIImage *)inputMainImage colorSpace]) == kCGColorSpaceModelRGB)
  {
    inputMainImage = [(CIImage *)inputMainImage imageByColorMatchingWorkingSpaceToColorSpace:[(CIImage *)inputMainImage colorSpace]];
  }

  v27[0] = self->inputPredicateImage;
  v27[1] = inputMainImage;
  v27[2] = self->inputImage;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
  [objc_msgSend(v4 objectAtIndexedSubscript:{0), "extent"}];
  v26[0] = [CIVector vectorWithCGRect:?];
  [objc_msgSend(v4 objectAtIndexedSubscript:{1), "extent"}];
  v26[1] = [CIVector vectorWithCGRect:?];
  [objc_msgSend(v4 objectAtIndexedSubscript:{2), "extent"}];
  v26[2] = [CIVector vectorWithCGRect:?];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:3];
  v6 = [(CIImage *)self->inputImage imageByClampingToExtent];
  v25[0] = self->inputPredicateImage;
  v25[1] = inputMainImage;
  v25[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
  v22 = 0;
  [(CIImage *)self->inputPredicateImage extent];
  inputRadius = self->inputRadius;
  v23[0] = @"inputRadius";
  v23[1] = @"inputSubsampling";
  inputSubsampling = self->inputSubsampling;
  v24[0] = inputRadius;
  v24[1] = inputSubsampling;
  inputEPS = self->inputEPS;
  v23[2] = @"inputEPS";
  v23[3] = @"inputNumIterations";
  inputNumIterations = self->inputNumIterations;
  v24[2] = inputEPS;
  v24[3] = inputNumIterations;
  inputFGThresholdValue = self->inputFGThresholdValue;
  v23[4] = @"fgThresholdValue";
  v23[5] = @"bgThresholdValue";
  inputBGThresholdValue = self->inputBGThresholdValue;
  v24[4] = inputFGThresholdValue;
  v24[5] = inputBGThresholdValue;
  inputErosionKernelSize = self->inputErosionKernelSize;
  v23[6] = @"erosionKernelSize";
  v23[7] = @"useDepthFilter";
  inputUseDepthFilter = self->inputUseDepthFilter;
  v24[6] = inputErosionKernelSize;
  v24[7] = inputUseDepthFilter;
  v23[8] = @"resolutionMode";
  v23[9] = @"imageExtents";
  v24[8] = &unk_1F1081F38;
  v24[9] = v5;
  v20 = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CIMattingRGBDProcessor, "applyWithExtent:inputs:arguments:error:", v7, [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:10], &v22, v16, v17, v18, v19);
  if (v22)
  {
    NSLog(&cfstr_Error.isa, v22);
  }

  return v20;
}

@end