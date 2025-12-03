@interface CIPercentileRed
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPercentileRed

+ (id)customAttributes
{
  v19[9] = *MEMORY[0x1E69E9840];
  v18[0] = @"CIAttributeFilterCategories";
  v17[0] = @"CICategoryReduction";
  v17[1] = @"CICategoryVideo";
  v17[2] = @"CICategoryStillImage";
  v17[3] = @"CICategoryBuiltIn";
  v17[4] = @"CICategoryApplePrivate";
  v19[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5];
  v18[1] = @"inputPercentile";
  v15[0] = @"CIAttributeMin";
  v15[1] = @"CIAttributeMax";
  v16[0] = &unk_1F1081878;
  v16[1] = &unk_1F10818C0;
  v15[2] = @"CIAttributeDefault";
  v15[3] = @"CIAttributeIdentity";
  v16[2] = &unk_1F1082A98;
  v16[3] = &unk_1F1081878;
  v15[4] = @"CIAttributeType";
  v16[4] = @"CIAttributeTypeScalar";
  v19[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];
  v18[2] = @"inputScale";
  v13[0] = @"CIAttributeMin";
  v13[1] = @"CIAttributeSliderMin";
  v14[0] = &unk_1F1082A88;
  v14[1] = &unk_1F1082A88;
  v13[2] = @"CIAttributeSliderMax";
  v13[3] = @"CIAttributeDefault";
  v14[2] = &unk_1F1082A38;
  v14[3] = &unk_1F1082A38;
  v13[4] = @"CIAttributeType";
  v14[4] = @"CIAttributeTypeScalar";
  v19[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:5];
  v18[3] = @"inputCount";
  v11[0] = @"CIAttributeMin";
  v11[1] = @"CIAttributeMax";
  v12[0] = &unk_1F10818C0;
  v12[1] = &unk_1F10818D8;
  v11[2] = @"CIAttributeDefault";
  v11[3] = @"CIAttributeType";
  v12[2] = &unk_1F10818F0;
  v12[3] = @"CIAttributeTypeScalar";
  v19[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v18[4] = @"inputNormalize";
  v2 = MEMORY[0x1E695E110];
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeMax";
  v3 = MEMORY[0x1E695E118];
  v10[0] = MEMORY[0x1E695E110];
  v10[1] = MEMORY[0x1E695E118];
  v9[2] = @"CIAttributeDefault";
  v9[3] = @"CIAttributeType";
  v10[2] = MEMORY[0x1E695E118];
  v10[3] = @"CIAttributeTypeBoolean";
  v19[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:4];
  v18[5] = @"inputClip";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeMax";
  v8[0] = v2;
  v8[1] = v3;
  v7[2] = @"CIAttributeDefault";
  v7[3] = @"CIAttributeType";
  v8[2] = v2;
  v8[3] = @"CIAttributeTypeBoolean";
  v19[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:4];
  v18[6] = @"inputHard";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = v2;
  v6[1] = v3;
  v5[2] = @"CIAttributeDefault";
  v5[3] = @"CIAttributeType";
  v6[2] = v2;
  v6[3] = @"CIAttributeTypeBoolean";
  v19[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v19[7] = @"12";
  v18[7] = @"CIAttributeFilterAvailable_iOS";
  v18[8] = @"CIAttributeFilterAvailable_Mac";
  v19[8] = @"10.14";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:9];
}

- (id)outputImage
{
  v60[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  [(CIImage *)inputImage extent];
  x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;
  if (CGRectIsInfinite(v61))
  {
    return 0;
  }

  intValue = [(NSNumber *)self->inputCount intValue];
  bOOLValue = [(NSNumber *)self->inputNormalize BOOLValue];
  bOOLValue2 = [(NSNumber *)self->inputClip BOOLValue];
  if (bOOLValue)
  {
    v58 = @"inputExtent";
    [(CIImage *)inputImage extent];
    v59 = [CIVector vectorWithCGRect:?];
    v11 = -[CIImage imageByClampingToExtent](-[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIAreaMinMaxRed", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1]), "imageByClampingToExtent");
    v12 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_perc_norm_red];
    [(CIImage *)inputImage extent];
    v49 = intValue;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v57[0] = inputImage;
    v57[1] = v11;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
    v22 = v14;
    intValue = v49;
    inputImage = [(CIColorKernel *)v12 applyWithExtent:v21 arguments:v22, v16, v18, v20];
  }

  else
  {
    v11 = 0;
  }

  v55[0] = @"inputExtent";
  height = [CIVector vectorWithCGRect:x, y, width, height];
  inputScale = self->inputScale;
  v56[0] = height;
  v56[1] = inputScale;
  v55[1] = @"inputScale";
  v55[2] = @"inputCount";
  v56[2] = self->inputCount;
  v25 = -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIAreaHistogram", [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3]);
  v26 = [CIKernel kernelWithInternalRepresentation:&CI::_perc_accum_red];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __30__CIPercentileRed_outputImage__block_invoke;
  v51[3] = &__block_descriptor_96_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v51[4] = 0;
  v51[5] = 0;
  *&v51[6] = intValue;
  v51[8] = 0;
  v51[9] = 0;
  v51[7] = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  v52 = _Q0;
  inputPercentile = self->inputPercentile;
  v54[0] = v25;
  v54[1] = inputPercentile;
  v54[2] = self->inputCount;
  v8 = -[CIImage imageByClampingToExtent](-[CIKernel applyWithExtent:roiCallback:arguments:](v26, "applyWithExtent:roiCallback:arguments:", v51, [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3], 0.0, 0.0, 1.0, 1.0), "imageByClampingToExtent");
  if (bOOLValue)
  {
    v33 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_perc_denorm_red];
    [(CIImage *)inputImage extent];
    v53[0] = v8;
    v53[1] = v11;
    v8 = -[CIColorKernel applyWithExtent:arguments:](v33, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2], v34, v35, v36, v37);
  }

  if (bOOLValue2)
  {
    v38 = self->inputImage;
    bOOLValue3 = [(NSNumber *)self->inputHard BOOLValue];
    v40 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_perc_clip_hard];
    v41 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_perc_clip_soft];
    if (bOOLValue3)
    {
      v42 = v40;
    }

    else
    {
      v42 = v41;
    }

    imageByClampingToExtent = [(CIImage *)v8 imageByClampingToExtent];
    [(CIImage *)v38 extent];
    v60[0] = v38;
    v60[1] = imageByClampingToExtent;
    return -[CIColorKernel applyWithExtent:arguments:](v42, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2], v44, v45, v46, v47);
  }

  return v8;
}

double __30__CIPercentileRed_outputImage__block_invoke(uint64_t a1, int a2)
{
  v2 = 64;
  if (!a2)
  {
    v2 = 32;
  }

  return *(a1 + v2);
}

@end