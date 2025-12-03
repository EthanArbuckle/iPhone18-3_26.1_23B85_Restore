@interface CIEdgePreserveUpsampleRGFilter
- (id)outputImage;
@end

@implementation CIEdgePreserveUpsampleRGFilter

- (id)outputImage
{
  v51[1] = *MEMORY[0x1E69E9840];
  result = self->super.inputImage;
  if (result)
  {
    if (!self->super.inputSmallImage)
    {
      return 0;
    }

    [result extent];
    if (CGRectIsInfinite(v52))
    {
      return 0;
    }

    [(CIImage *)self->super.inputSmallImage extent];
    if (CGRectIsInfinite(v53))
    {
      return 0;
    }

    else
    {
      [(CIImage *)self->super.inputSmallImage extent];
      v5 = v4;
      [(CIImage *)self->super.inputSmallImage extent];
      v7 = v6;
      [(CIImage *)self->super.inputImage extent];
      v9 = v8;
      [(CIImage *)self->super.inputImage extent];
      v11 = v10;
      *&v12 = v9 / v5;
      *&v13 = v11 / v7;
      imageByClampingToExtent = [(CIImage *)self->super.inputSmallImage imageByClampingToExtent];
      CGAffineTransformMakeScale(&v46, (v9 / v5), *&v13);
      v15 = [(CIImage *)imageByClampingToExtent imageByApplyingTransform:&v46];
      [(NSNumber *)self->super.inputSpatialSigma floatValue];
      v17 = fmaxf(v16, 0.0);
      [(NSNumber *)self->super.inputLumaSigma floatValue];
      v19 = fmaxf(v18, 0.0);
      v20 = [CIVector vectorWithX:1.0 / ((v19 + v19) * v19) Y:1.0 / ((v17 + v17) * v17) Z:(v9 / v5) * 0.6666667 W:*&v13 * 0.6666667];
      imageByClampingToExtent2 = [[(CIImage *)self->super.inputImage imageByApplyingFilter:@"CILinearToSRGBToneCurve" withInputParameters:0] imageByClampingToExtent];
      _kernelGuideMono = [(CIEdgePreserveUpsampleFilter *)self _kernelGuideMono];
      v23 = MEMORY[0x1E695F040];
      v24 = *MEMORY[0x1E695F040];
      v25 = *(MEMORY[0x1E695F040] + 8);
      v26 = *(MEMORY[0x1E695F040] + 16);
      v27 = *(MEMORY[0x1E695F040] + 24);
      v51[0] = imageByClampingToExtent2;
      v28 = [_kernelGuideMono applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v51, 1), v24, v25, v26, v27}];
      *&v29 = *&v12 * 0.4;
      v49[0] = @"inputSigmaX";
      v30 = [MEMORY[0x1E696AD98] numberWithFloat:v29];
      v49[1] = @"inputSigmaY";
      v50[0] = v30;
      *&v31 = *&v13 * 0.4;
      v50[1] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
      v32 = [v28 imageByApplyingFilter:@"CIGaussianBlurXY" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v50, v49, 2)}];
      _kernelGuideCombine4 = [(CIEdgePreserveUpsampleFilter *)self _kernelGuideCombine4];
      v34 = *v23;
      v35 = v23[1];
      v36 = v23[2];
      v37 = v23[3];
      v48[0] = v28;
      v48[1] = v32;
      v48[2] = v15;
      v38 = [_kernelGuideCombine4 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v48, 3), v34, v35, v36, v37}];
      _kernelJointUpsampRG = [(CIEdgePreserveUpsampleFilter *)self _kernelJointUpsampRG];
      v40 = *v23;
      v41 = v23[1];
      v42 = v23[2];
      v43 = v23[3];
      v47[0] = v38;
      v47[1] = v20;
      v44 = [_kernelJointUpsampRG applyWithExtent:&v45 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v47, 2, MEMORY[0x1E69E9820], 3221225472, __45__CIEdgePreserveUpsampleRGFilter_outputImage__block_invoke, &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, __PAIR64__(v13, v12)), v40, v41, v42, v43}];
      [(CIImage *)self->super.inputImage extent];
      return [v44 imageByCroppingToRect:?];
    }
  }

  return result;
}

@end