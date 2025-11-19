@interface CIEdgePreserveUpsampleFilter
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIEdgePreserveUpsampleFilter

+ (id)customAttributes
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryGeometryAdjustment";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryInterlaced";
  v9[4] = @"CICategoryNonSquarePixels";
  v9[5] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:6];
  v11[1] = @"10";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.12";
  v10[3] = @"inputSpatialSigma";
  v7[0] = @"CIAttributeClass";
  v2 = objc_opt_class();
  v8[0] = NSStringFromClass(v2);
  v8[1] = &unk_1F10838A8;
  v7[1] = @"CIAttributeDefault";
  v7[2] = @"CIAttributeMin";
  v8[2] = &unk_1F10838B8;
  v8[3] = &unk_1F10838C8;
  v7[3] = @"CIAttributeMax";
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeScalar";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[4] = @"inputLumaSigma";
  v5[0] = @"CIAttributeClass";
  v3 = objc_opt_class();
  v6[0] = NSStringFromClass(v3);
  v6[1] = &unk_1F10838D8;
  v5[1] = @"CIAttributeDefault";
  v5[2] = @"CIAttributeMin";
  v6[2] = &unk_1F10838B8;
  v6[3] = &unk_1F10838E8;
  v5[3] = @"CIAttributeMax";
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:5];
}

- (id)outputImage
{
  v51[1] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    if (!self->inputSmallImage)
    {
      return 0;
    }

    [result extent];
    if (CGRectIsInfinite(v52))
    {
      return 0;
    }

    [(CIImage *)self->inputSmallImage extent];
    if (CGRectIsInfinite(v53))
    {
      return 0;
    }

    else
    {
      [(CIImage *)self->inputSmallImage extent];
      v5 = v4;
      [(CIImage *)self->inputSmallImage extent];
      v7 = v6;
      [(CIImage *)self->inputImage extent];
      v9 = v8;
      [(CIImage *)self->inputImage extent];
      v11 = v10;
      *&v12 = v9 / v5;
      *&v13 = v11 / v7;
      v14 = [(CIImage *)self->inputSmallImage imageByClampingToExtent];
      CGAffineTransformMakeScale(&v46, (v9 / v5), *&v13);
      v15 = [(CIImage *)v14 imageByApplyingTransform:&v46];
      [(NSNumber *)self->inputSpatialSigma floatValue];
      v17 = fmaxf(v16, 0.0);
      [(NSNumber *)self->inputLumaSigma floatValue];
      v19 = fmaxf(v18, 0.0);
      v20 = [CIVector vectorWithX:1.0 / ((v19 + v19) * v19) Y:1.0 / ((v17 + v17) * v17) Z:(v9 / v5) * 0.6666667 W:*&v13 * 0.6666667];
      v21 = [[(CIImage *)self->inputImage imageByApplyingFilter:@"CILinearToSRGBToneCurve" withInputParameters:0] imageByClampingToExtent];
      v22 = [(CIEdgePreserveUpsampleFilter *)self _kernelGuideMono];
      v23 = MEMORY[0x1E695F040];
      v24 = *MEMORY[0x1E695F040];
      v25 = *(MEMORY[0x1E695F040] + 8);
      v26 = *(MEMORY[0x1E695F040] + 16);
      v27 = *(MEMORY[0x1E695F040] + 24);
      v51[0] = v21;
      v28 = [v22 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v51, 1), v24, v25, v26, v27}];
      *&v29 = *&v12 * 0.4;
      v49[0] = @"inputSigmaX";
      v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      v49[1] = @"inputSigmaY";
      v50[0] = v30;
      *&v31 = *&v13 * 0.4;
      v50[1] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      v32 = [v28 imageByApplyingFilter:@"CIGaussianBlurXY" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v50, v49, 2)}];
      v33 = [(CIEdgePreserveUpsampleFilter *)self _kernelGuideCombine];
      v34 = *v23;
      v35 = v23[1];
      v36 = v23[2];
      v37 = v23[3];
      v48[0] = v28;
      v48[1] = v32;
      v38 = [v33 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v48, 2), v34, v35, v36, v37}];
      v39 = [(CIEdgePreserveUpsampleFilter *)self _kernelJointUpsamp];
      [(CIImage *)self->inputImage extent];
      v47[0] = v15;
      v47[1] = v38;
      v47[2] = v20;
      v44 = [v39 applyWithExtent:&v45 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v47, 3, MEMORY[0x1E69E9820], 3221225472, __43__CIEdgePreserveUpsampleFilter_outputImage__block_invoke, &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, __PAIR64__(v13, v12)), v40, v41, v42, v43}];
      [(CIImage *)self->inputImage extent];
      return [v44 imageByCroppingToRect:?];
    }
  }

  return result;
}

@end