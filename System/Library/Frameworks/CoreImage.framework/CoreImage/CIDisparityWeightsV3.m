@interface CIDisparityWeightsV3
- (id)outputImage;
- (id)weightsXKernel;
- (id)weightsYKernel;
@end

@implementation CIDisparityWeightsV3

- (id)weightsXKernel
{
  if ([CIDisparityWeightsV3 weightsXKernel]::onceToken != -1)
  {
    [CIDisparityWeightsV3 weightsXKernel];
  }

  return [CIDisparityWeightsV3 weightsXKernel]::k;
}

id __38__CIDisparityWeightsV3_weightsXKernel__block_invoke()
{
  result = [CIKernel SDOFV3MetalKernelNamed:@"disparity_refinement_calcweightsX"];
  [CIDisparityWeightsV3 weightsXKernel]::k = result;
  return result;
}

- (id)weightsYKernel
{
  if ([CIDisparityWeightsV3 weightsYKernel]::onceToken != -1)
  {
    [CIDisparityWeightsV3 weightsYKernel];
  }

  return [CIDisparityWeightsV3 weightsYKernel]::k;
}

id __38__CIDisparityWeightsV3_weightsYKernel__block_invoke()
{
  result = [CIKernel SDOFV3MetalKernelNamed:@"disparity_refinement_calcweightsY"];
  [CIDisparityWeightsV3 weightsYKernel]::k = result;
  return result;
}

- (id)outputImage
{
  v45[3] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  v4 = v3;
  v31 = v5;
  v32 = v3;
  v6 = v5;
  v33 = v8;
  v34 = v7;
  SDOFDisparityRefinementParameterValue(&cfstr_Radius.isa, self->inputTuningParameters);
  v10 = v9;
  v11 = [(CIImage *)self->inputImage imageByClampingToExtent];
  SDOFDisparityRefinementParameterValue(&cfstr_Weightscaling.isa, self->inputTuningParameters);
  v35 = -1.0 / ((v12 * v12) + (v12 * v12));
  v13 = [(CIDisparityWeightsV3 *)self weightsXKernel];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __35__CIDisparityWeightsV3_outputImage__block_invoke;
  v38[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v39 = v10;
  v14 = MEMORY[0x1E695F040];
  v15 = *MEMORY[0x1E695F040];
  v16 = *(MEMORY[0x1E695F040] + 8);
  v18 = *(MEMORY[0x1E695F040] + 16);
  v17 = *(MEMORY[0x1E695F040] + 24);
  v45[0] = v11;
  LODWORD(v19) = v10;
  v45[1] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
  v45[2] = [(CIDisparityWeightsV3 *)self inputScale];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
  v43 = @"kCIKernelOutputFormat";
  v44 = [MEMORY[0x1E696AD98] numberWithInt:2054];
  v21 = [objc_msgSend(objc_msgSend(v13 applyWithExtent:v38 roiCallback:v20 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v44, &v43, 1), v15, v16, v18, v17), "imageByCroppingToRect:", v4, v6, v34, v33), "imageByClampingToExtent"}];
  v22 = [(CIDisparityWeightsV3 *)self weightsYKernel];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __35__CIDisparityWeightsV3_outputImage__block_invoke_2;
  v36[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v37 = v10;
  v24 = *v14;
  v23 = v14[1];
  v25 = v14[2];
  v26 = v14[3];
  v42[0] = v11;
  v42[1] = v21;
  LODWORD(v27) = v10;
  v42[2] = [MEMORY[0x1E696AD98] numberWithFloat:v27];
  v42[3] = [(CIDisparityWeightsV3 *)self inputScale];
  *&v28 = v35;
  v42[4] = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:5];
  v40 = @"kCIKernelOutputFormat";
  v41 = [MEMORY[0x1E696AD98] numberWithInt:2054];
  return [objc_msgSend(v22 applyWithExtent:v36 roiCallback:v29 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v41, &v40, 1), v24, v23, v25, v26), "imageByCroppingToRect:", v32, v31, v34, v33}];
}

double __35__CIDisparityWeightsV3_outputImage__block_invoke_2(uint64_t a1, int a2, double result, double a4, double a5, double a6)
{
  if (a2)
  {
    *&result = CGRectInset(*&result, 0.0, -*(a1 + 32));
  }

  return result;
}

@end