@interface CIAccordionFoldTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAccordionFoldTransition

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryTransition";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"8";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.10";
  v12[3] = @"inputBottomHeight";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeDefault";
  v10[0] = &unk_1F10829D8;
  v10[1] = &unk_1F10829D8;
  v9[2] = @"CIAttributeType";
  v10[2] = @"CIAttributeTypeDistance";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v12[4] = @"inputNumberOfFolds";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F10817D0;
  v8[1] = &unk_1F10817D0;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeMax";
  v8[2] = &unk_1F10817E8;
  v8[3] = &unk_1F1081800;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1081818;
  v8[5] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputFoldShadowAmount";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10829D8;
  v6[1] = &unk_1F10829D8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F10829E8;
  v6[3] = &unk_1F10829E8;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10829F8;
  v6[5] = @"CIAttributeTypeScalar";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[6] = @"inputTime";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F10829D8;
  v4[1] = &unk_1F10829D8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F10829E8;
  v4[3] = &unk_1F10829D8;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F10829D8;
  v4[5] = @"CIAttributeTypeTime";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v72[2] = *MEMORY[0x1E69E9840];
  p_inputImage = &self->inputImage;
  result = self->inputImage;
  if (!result)
  {
    return result;
  }

  [result extent];
  if (CGRectIsInfinite(v74))
  {
    return 0;
  }

  p_inputTargetImage = &self->inputTargetImage;
  result = self->inputTargetImage;
  if (!result)
  {
    return result;
  }

  [result extent];
  if (CGRectIsInfinite(v75))
  {
    return 0;
  }

  [(NSNumber *)self->inputNumberOfFolds doubleValue];
  v7 = v6;
  [(NSNumber *)self->inputTime doubleValue];
  v9 = fmin(fmax(v8, 0.0), 1.0);
  [(NSNumber *)self->inputFoldShadowAmount doubleValue];
  v11 = v10;
  [(NSNumber *)self->inputBottomHeight doubleValue];
  if (v9 <= 0.0)
  {
    v58 = *p_inputImage;
  }

  else
  {
    if (v9 < 1.0)
    {
      v61 = fmin(fmax(round(v7), 0.0), 50.0);
      v62 = fmin(fmax(v11, 0.0), 1.0);
      v60 = fmax(v12, 0.0);
      [*p_inputImage extent];
      v14 = v13;
      [(CIImage *)*p_inputTargetImage extent];
      if (v14 <= v15)
      {
        v16 = &self->inputTargetImage;
      }

      else
      {
        v16 = p_inputImage;
      }

      if (v14 <= v15)
      {
        v17 = p_inputImage;
      }

      else
      {
        v17 = &self->inputTargetImage;
      }

      if (v14 <= v15)
      {
        v18 = v9;
      }

      else
      {
        v18 = 1.0 - v9;
      }

      v19 = *v17;
      v20 = *v16;
      [*v17 extent];
      v22 = v21;
      v66 = v21;
      [v19 extent];
      v24 = v23;
      [v19 extent];
      v65 = v24 + v25 * 0.5;
      [(CIImage *)v20 extent];
      v27 = v26;
      v64 = v26;
      [(CIImage *)v20 extent];
      v29 = v28;
      [(CIImage *)v20 extent];
      v63 = v29 + v30 * 0.5;
      CGAffineTransformMakeTranslation(&v69, -v65, -v22);
      v31 = [v19 imageByApplyingTransform:&v69];
      CGAffineTransformMakeTranslation(&v69, -v63, -v27);
      v32 = [(CIImage *)v20 imageByApplyingTransform:&v69];
      [v31 extent];
      v34 = v33;
      [v31 extent];
      v36 = v35;
      [v31 extent];
      v38 = v37;
      [(CIImage *)v32 extent];
      v40 = v39;
      [(CIImage *)v32 extent];
      v42 = v41;
      [(CIImage *)v32 extent];
      v44 = fmin(v43, v38);
      v45 = fmax(v40, v34);
      v46 = v42 - v36;
      v47 = v36 + v18 * (v42 - v36);
      v48 = (1.0 - v18) * v46;
      v49 = [CIVector vectorWithX:v60 Y:v18 * v46 Z:1.0 / v18 W:v48];
      v50 = v48 / (v61 * (v34 + v40));
      v51 = [CIVector vectorWithX:v61 + v61 Y:v50 Z:v62 * (1.0 - v18)];
      _kernelWarpS = [(CIAccordionFoldTransition *)self _kernelWarpS];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __40__CIAccordionFoldTransition_outputImage__block_invoke;
      v68[3] = &unk_1E75C1C40;
      v68[4] = v49;
      *&v68[5] = v50;
      v72[0] = v51;
      v72[1] = v49;
      v53 = [_kernelWarpS applyWithExtent:v68 roiCallback:v31 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v72, 2), v44, 0.0, v45, v47}];
      _kernelWarpT = [(CIAccordionFoldTransition *)self _kernelWarpT];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __40__CIAccordionFoldTransition_outputImage__block_invoke_2;
      v67[3] = &unk_1E75C1C40;
      v67[4] = v49;
      *&v67[5] = v50;
      v71[0] = v51;
      v71[1] = v49;
      v55 = [_kernelWarpT applyWithExtent:v67 roiCallback:v32 inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v71, 2), v44, 0.0, v45, v47}];
      _kernelMix = [(CIAccordionFoldTransition *)self _kernelMix];
      v70[0] = v53;
      v70[1] = v55;
      v70[2] = v51;
      v70[3] = [MEMORY[0x1E696AD98] numberWithDouble:v18];
      v70[4] = v49;
      v57 = [_kernelMix applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v70, 5), v44, 0.0, v45, v47}];
      CGAffineTransformMakeTranslation(&v69, v65 + v18 * (v63 - v65), v66 + v18 * (v64 - v66));
      return [v57 imageByApplyingTransform:&v69];
    }

    v58 = *p_inputTargetImage;
  }

  v59 = v58;

  return v59;
}

double __40__CIAccordionFoldTransition_outputImage__block_invoke(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v3 X];
  [v3 Y];
  return a2 * (v4 + 1.0);
}

double __40__CIAccordionFoldTransition_outputImage__block_invoke_2(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  [v3 X];
  [v3 Y];
  [v3 Z];
  [v3 W];
  [v3 Z];
  [v3 W];
  return a2 * (v4 + 1.0);
}

@end