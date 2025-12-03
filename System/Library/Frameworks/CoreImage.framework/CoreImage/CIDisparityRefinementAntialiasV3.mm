@interface CIDisparityRefinementAntialiasV3
- (id)antialiasKernel;
- (id)outputImage;
@end

@implementation CIDisparityRefinementAntialiasV3

- (id)antialiasKernel
{
  if ([CIDisparityRefinementAntialiasV3 antialiasKernel]::onceToken != -1)
  {
    [CIDisparityRefinementAntialiasV3 antialiasKernel];
  }

  return [CIDisparityRefinementAntialiasV3 antialiasKernel]::k;
}

id __51__CIDisparityRefinementAntialiasV3_antialiasKernel__block_invoke()
{
  result = [CIKernel SDOFV3MetalKernelNamed:@"disparity_refinement_antialias"];
  [CIDisparityRefinementAntialiasV3 antialiasKernel]::k = result;
  return result;
}

- (id)outputImage
{
  v45 = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  inputPreprocImage = self->inputPreprocImage;
  inputDisparityWeightImage = self->inputDisparityWeightImage;
  [(CIImage *)inputPreprocImage extent];
  v7 = v6;
  [(CIImage *)inputDisparityWeightImage extent];
  v9 = v7 / v8;
  [(CIImage *)inputPreprocImage extent];
  v11 = v10;
  [(CIImage *)inputDisparityWeightImage extent];
  CGAffineTransformMakeScale(&v44, v9, v11 / v12);
  v13 = [(CIImage *)inputDisparityWeightImage imageByApplyingTransform:&v44];
  SDOFDisparityRefinementParameterValue(&cfstr_Maxreconstruct.isa, self->inputTuningParameters);
  LODWORD(v9) = v14;
  SDOFDisparityRefinementParameterValue(&cfstr_Aalumasigma.isa, self->inputTuningParameters);
  v40 = v15;
  SDOFDisparityRefinementParameterValue(&cfstr_Aachromasigma.isa, self->inputTuningParameters);
  v39 = v16;
  SDOFDisparityRefinementParameterValue(&cfstr_Aasegmentation.isa, self->inputTuningParameters);
  v17 = vmul_f32(__PAIR64__(v39, v40), __PAIR64__(v39, v40));
  __asm { FMOV            V2.2S, #-1.0 }

  *&v44.a = vcvtq_f64_f32(vdiv_f32(_D2, vadd_f32(v17, v17)));
  v44.c = v44.b;
  v44.d = (-1.0 / ((v23 * v23) + (v23 * v23)));
  v24 = [CIVector vectorWithValues:&v44 count:4];
  SDOFDisparityRefinementParameterValue(&cfstr_Aaspatialsigma.isa, self->inputTuningParameters);
  *&v11 = -1.0 / ((v25 * v25) + (v25 * v25));
  imageByClampingToExtent = [(CIImage *)inputImage imageByClampingToExtent];
  imageByClampingToExtent2 = [(CIImage *)inputPreprocImage imageByClampingToExtent];
  imageByClampingToExtent3 = [(CIImage *)v13 imageByClampingToExtent];
  [(NSNumber *)self->inputScale floatValue];
  v30 = [CIVector vectorWithX:*&v9 Y:*&v11 Z:v29];
  antialiasKernel = [(CIDisparityRefinementAntialiasV3 *)self antialiasKernel];
  v32 = *MEMORY[0x1E695F040];
  v33 = *(MEMORY[0x1E695F040] + 8);
  v34 = *(MEMORY[0x1E695F040] + 16);
  v35 = *(MEMORY[0x1E695F040] + 24);
  v43[0] = [(CIImage *)imageByClampingToExtent3 imageByClampingToExtent];
  v43[1] = [(CIImage *)imageByClampingToExtent2 imageByClampingToExtent];
  v43[2] = [(CIImage *)imageByClampingToExtent imageByClampingToExtent];
  v43[3] = v24;
  v43[4] = v30;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:5];
  v41 = @"kCIKernelOutputFormat";
  v42 = [MEMORY[0x1E696AD98] numberWithInt:2053];
  v37 = [antialiasKernel applyWithExtent:&__block_literal_global_289 roiCallback:v36 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v42, &v41, 1), v32, v33, v34, v35}];
  [(CIImage *)inputPreprocImage extent];
  return [v37 imageByCroppingToRect:?];
}

double __47__CIDisparityRefinementAntialiasV3_outputImage__block_invoke(double result, double a2, double a3, double a4, uint64_t a5, int a6)
{
  if ((a6 - 1) < 2 || a6)
  {
    *&result = CGRectInset(*&result, -2.0, -2.0);
  }

  return result;
}

@end