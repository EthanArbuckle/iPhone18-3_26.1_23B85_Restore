@interface CICannyEdgeDetector
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICannyEdgeDetector

+ (id)customAttributes
{
  v15[8] = *MEMORY[0x1E69E9840];
  v14[0] = @"CIAttributeFilterCategories";
  v13[0] = @"CICategoryStylize";
  v13[1] = @"CICategoryVideo";
  v13[2] = @"CICategoryStillImage";
  v13[3] = @"CICategoryHighDynamicRange";
  v13[4] = @"CICategoryBuiltIn";
  v15[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
  v15[1] = @"17";
  v14[1] = @"CIAttributeFilterAvailable_iOS";
  v14[2] = @"CIAttributeFilterAvailable_Mac";
  v15[2] = @"14.0";
  v14[3] = @"inputGaussianSigma";
  v11[0] = @"CIAttributeType";
  v11[1] = @"CIAttributeMin";
  v12[0] = @"CIAttributeTypeScalar";
  v12[1] = &unk_1F1083928;
  v11[2] = @"CIAttributeSliderMin";
  v11[3] = @"CIAttributeSliderMax";
  v12[2] = &unk_1F1083928;
  v12[3] = &unk_1F1083958;
  v11[4] = @"CIAttributeDefault";
  v12[4] = &unk_1F1083968;
  v15[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];
  v14[4] = @"inputPerceptual";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeMax";
  v10[0] = MEMORY[0x1E695E110];
  v10[1] = MEMORY[0x1E695E118];
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeType";
  v10[2] = MEMORY[0x1E695E110];
  v10[3] = @"CIAttributeTypeBoolean";
  v15[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v14[5] = @"inputThresholdHigh";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeMin";
  v8[0] = @"CIAttributeTypeScalar";
  v8[1] = &unk_1F1083928;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1083928;
  v8[3] = &unk_1F1083978;
  v7[4] = @"CIAttributeDefault";
  v8[4] = &unk_1F1083988;
  v15[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v14[6] = @"inputThresholdLow";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeMin";
  v6[0] = @"CIAttributeTypeScalar";
  v6[1] = &unk_1F1083928;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1083928;
  v6[3] = &unk_1F1083998;
  v5[4] = @"CIAttributeDefault";
  v6[4] = &unk_1F10839A8;
  v15[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v14[7] = @"inputHysteresisPasses";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeInteger";
  v4[1] = &unk_1F1081C98;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1081C98;
  v4[3] = &unk_1F1081CB0;
  v3[4] = @"CIAttributeMax";
  v3[5] = @"CIAttributeDefault";
  v4[4] = &unk_1F1081CC8;
  v4[5] = &unk_1F1081CE0;
  v15[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
}

- (id)outputImage
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = [(CIImage *)self->inputImage imageByClampingToExtent];
  [(NSNumber *)self->inputGaussianSigma floatValue];
  v5 = [(CIImage *)v3 imageByApplyingGaussianBlurWithSigma:v4];
  if ([(NSNumber *)self->inputPerceptual BOOLValue])
  {
    v5 = [(CIImage *)v5 imageByApplyingFilter:@"CILinearToSRGBToneCurve"];
  }

  v6 = [CIKernel kernelWithInternalRepresentation:&CI::_sobel_m];
  v7 = MEMORY[0x1E695F040];
  v8 = *MEMORY[0x1E695F040];
  v9 = *(MEMORY[0x1E695F040] + 8);
  v10 = *(MEMORY[0x1E695F040] + 16);
  v11 = *(MEMORY[0x1E695F040] + 24);
  v52[0] = v5;
  v12 = -[CIKernel applyWithExtent:roiCallback:arguments:](v6, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_90, [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1], v8, v9, v10, v11);
  v13 = [CIKernel kernelWithInternalRepresentation:&CI::_maxGradOnly];
  v14 = *v7;
  v15 = v7[1];
  v16 = v7[2];
  v17 = v7[3];
  v51 = v12;
  v18 = -[CIKernel applyWithExtent:roiCallback:arguments:](v13, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_92, [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1], v14, v15, v16, v17);
  [(NSNumber *)self->inputThresholdHigh floatValue];
  v20 = fmaxf(v19, 0.0001);
  [(NSNumber *)self->inputThresholdLow floatValue];
  v22 = fmaxf(v21, 0.0001);
  v23 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_cannyThreshold];
  v24 = *v7;
  v25 = v7[1];
  v26 = v7[2];
  v27 = v7[3];
  v50[0] = v18;
  *&v28 = v20;
  v50[1] = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  *&v29 = v22;
  v50[2] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
  v30 = -[CIColorKernel applyWithExtent:arguments:](v23, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3], v24, v25, v26, v27);
  v31 = [(NSNumber *)self->inputHysteresisPasses intValue];
  v32 = v31;
  if (v31 >= 20)
  {
    v33 = 20;
  }

  else
  {
    v33 = v31;
  }

  v34 = [CIKernel kernelWithInternalRepresentation:&CI::_cannyHysteresis];
  if (v22 < v20 && v32 >= 1)
  {
    v35 = v34;
    v36 = 0;
    do
    {
      v37 = *v7;
      v38 = v7[1];
      v39 = v7[2];
      v40 = v7[3];
      v49 = v30;
      v30 = -[CIKernel applyWithExtent:roiCallback:arguments:](v35, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_95, [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1], v37, v38, v39, v40);
      ++v36;
    }

    while (v33 > v36);
  }

  v41 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_cannyFinal];
  v42 = *v7;
  v43 = v7[1];
  v44 = v7[2];
  v45 = v7[3];
  v48 = v30;
  v46 = -[CIColorKernel applyWithExtent:arguments:](v41, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1], v42, v43, v44, v45);
  [(CIImage *)self->inputImage extent];
  return [(CIImage *)v46 imageByCroppingToRect:?];
}

@end