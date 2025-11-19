@interface CIFocalPlanePreprocessorInternal
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIFocalPlanePreprocessorInternal

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
  v20[3] = @"inputFocusRect";
  v18[0] = @"CIAttributeTypeRectangle";
  v17[0] = @"CIAttributeType";
  v17[1] = @"CIAttributeDefault";
  v18[1] = [CIVector vectorWithX:0.45 Y:0.45 Z:0.1 W:0.1];
  v17[2] = @"CIAttributeIdentity";
  v18[2] = [CIVector vectorWithCGRect:*MEMORY[0x1E695F040], *(MEMORY[0x1E695F040] + 8), *(MEMORY[0x1E695F040] + 16), *(MEMORY[0x1E695F040] + 24)];
  v21[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v20[4] = @"inputZeroShiftPercentile";
  v15[0] = @"CIAttributeSliderMin";
  v15[1] = @"CIAttributeSliderMax";
  v16[0] = &unk_1F1081D40;
  v16[1] = &unk_1F1081D58;
  v15[2] = @"CIAttributeMin";
  v15[3] = @"CIAttributeMax";
  v16[2] = &unk_1F1081D40;
  v16[3] = &unk_1F1081D58;
  v15[4] = @"CIAttributeDefault";
  v15[5] = @"CIAttributeType";
  v16[4] = &unk_1F1083B08;
  v16[5] = @"CIAttributeTypeScalar";
  v21[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:6];
  v20[5] = @"inputAlphaThreshold";
  v13[0] = @"CIAttributeSliderMin";
  v13[1] = @"CIAttributeSliderMax";
  v14[0] = &unk_1F1083B18;
  v14[1] = &unk_1F1081D58;
  v13[2] = @"CIAttributeMin";
  v13[3] = @"CIAttributeMax";
  v14[2] = &unk_1F1083B18;
  v14[3] = &unk_1F1081D58;
  v13[4] = @"CIAttributeDefault";
  v13[5] = @"CIAttributeType";
  v14[4] = &unk_1F1081D40;
  v14[5] = @"CIAttributeTypeScalar";
  v21[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:6];
  v20[6] = @"inputAmplitude";
  v11[0] = @"CIAttributeSliderMin";
  v11[1] = @"CIAttributeSliderMax";
  v12[0] = &unk_1F1083B18;
  v12[1] = &unk_1F1081D58;
  v11[2] = @"CIAttributeMin";
  v11[3] = @"CIAttributeMax";
  v12[2] = &unk_1F1083B18;
  v12[3] = &unk_1F1081D58;
  v11[4] = @"CIAttributeDefault";
  v11[5] = @"CIAttributeType";
  v12[4] = &unk_1F1081D40;
  v12[5] = @"CIAttributeTypeScalar";
  v21[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:6];
  v20[7] = @"inputExponent";
  v9[0] = @"CIAttributeSliderMin";
  v9[1] = @"CIAttributeSliderMax";
  v10[0] = &unk_1F1083B18;
  v10[1] = &unk_1F1081D58;
  v9[2] = @"CIAttributeMin";
  v9[3] = @"CIAttributeMax";
  v10[2] = &unk_1F1083B18;
  v10[3] = &unk_1F1081D58;
  v9[4] = @"CIAttributeDefault";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1081D58;
  v10[5] = @"CIAttributeTypeScalar";
  v21[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v20[8] = @"inputGamma";
  v7[0] = @"CIAttributeSliderMin";
  v7[1] = @"CIAttributeSliderMax";
  v8[0] = &unk_1F1083B18;
  v8[1] = &unk_1F1081D58;
  v7[2] = @"CIAttributeMin";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F1083B18;
  v8[3] = &unk_1F1081D58;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1081D58;
  v8[5] = @"CIAttributeTypeScalar";
  v21[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v20[9] = @"inputMinFactor";
  v5[0] = @"CIAttributeSliderMin";
  v5[1] = @"CIAttributeSliderMax";
  v6[0] = &unk_1F1083B18;
  v6[1] = &unk_1F1083B28;
  v5[2] = @"CIAttributeMin";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1083B18;
  v6[3] = &unk_1F1083B28;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1081D40;
  v6[5] = @"CIAttributeTypeScalar";
  v21[9] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v20[10] = @"inputMaxFactor";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1083B18;
  v4[1] = &unk_1F1083B28;
  v3[2] = @"CIAttributeMin";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1083B18;
  v4[3] = &unk_1F1083B28;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1081D58;
  v4[5] = @"CIAttributeTypeScalar";
  v21[10] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:11];
}

- (id)outputImage
{
  v39[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    if (self->inputMatteImage)
    {
      v34 = 0;
      [(CIVector *)self->inputFocusRect Y];
      v5 = v4;
      [(CIVector *)self->inputFocusRect W];
      v7 = 1.0 - (v5 + v6);
      [(CIVector *)self->inputFocusRect X];
      v9 = v8;
      [(CIVector *)self->inputFocusRect Z];
      v11 = v10;
      [(CIVector *)self->inputFocusRect W];
      v13 = [CIVector vectorWithX:v9 Y:v7 Z:v11 W:v12];
      inputMatteImage = self->inputMatteImage;
      v39[0] = self->inputImage;
      v39[1] = inputMatteImage;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
      [objc_msgSend(v15 objectAtIndexedSubscript:{0), "extent"}];
      v38[0] = [CIVector vectorWithCGRect:?];
      [objc_msgSend(v15 objectAtIndexedSubscript:{1), "extent"}];
      v38[1] = [CIVector vectorWithCGRect:?];
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
      [(CIImage *)self->inputImage extent];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v37[0] = [(CIImage *)self->inputImage imageByClampingToExtent];
      v37[1] = [(CIImage *)self->inputMatteImage imageByClampingToExtent];
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
      v35[0] = @"inputFocusRect";
      v35[1] = @"inputZeroShiftPercentile";
      inputZeroShiftPercentile = self->inputZeroShiftPercentile;
      v36[0] = v13;
      v36[1] = inputZeroShiftPercentile;
      inputAlphaThreshold = self->inputAlphaThreshold;
      v35[2] = @"inputAlphaThreshold";
      v35[3] = @"inputAmplitude";
      inputAmplitude = self->inputAmplitude;
      v36[2] = inputAlphaThreshold;
      v36[3] = inputAmplitude;
      inputExponent = self->inputExponent;
      v35[4] = @"inputExponent";
      v35[5] = @"inputGamma";
      inputGamma = self->inputGamma;
      v36[4] = inputExponent;
      v36[5] = inputGamma;
      inputMinFactor = self->inputMinFactor;
      v35[6] = @"inputMinFactor";
      v35[7] = @"inputMaxFactor";
      inputMaxFactor = self->inputMaxFactor;
      v36[6] = inputMinFactor;
      v36[7] = inputMaxFactor;
      v35[8] = @"imageExtents";
      v36[8] = v16;
      inputImage = +[CIImageProcessorKernel applyWithExtent:inputs:arguments:error:](CIFocalPlaneProcessor, "applyWithExtent:inputs:arguments:error:", v25, [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:9], &v34, v18, v20, v22, v24);
      if (v34)
      {
        NSLog(&cfstr_Error.isa, v34);
      }
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end