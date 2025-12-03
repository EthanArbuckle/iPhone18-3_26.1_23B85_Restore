@interface CIDisparityRefinementSparseSamplerV3
- (id)outputImage;
- (id)sampleKernel;
@end

@implementation CIDisparityRefinementSparseSamplerV3

- (id)sampleKernel
{
  if ([CIDisparityRefinementSparseSamplerV3 sampleKernel]::onceToken != -1)
  {
    [CIDisparityRefinementSparseSamplerV3 sampleKernel];
  }

  return [CIDisparityRefinementSparseSamplerV3 sampleKernel]::k;
}

id __52__CIDisparityRefinementSparseSamplerV3_sampleKernel__block_invoke()
{
  result = [CIKernel SDOFV3MetalKernelNamed:@"disparity_refinement_sample"];
  [CIDisparityRefinementSparseSamplerV3 sampleKernel]::k = result;
  return result;
}

- (id)outputImage
{
  v70[6] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  inputPreprocImage = self->inputPreprocImage;
  [(CIImage *)inputImage extent];
  v61 = v5;
  v63 = v6;
  [(CIImage *)inputPreprocImage extent];
  v8 = v7;
  v62 = v9;
  [(NSNumber *)[(CIDisparityRefinementSparseSamplerV3 *)self inputScale] floatValue];
  v11 = v10;
  SDOFDisparityRefinementParameterValue(&cfstr_Radius.isa, self->inputTuningParameters);
  v13 = v11 * v12;
  [(CIImage *)inputPreprocImage extent];
  v15 = v14;
  [(CIImage *)inputImage extent];
  v17 = v16;
  v60 = (v13 * v15) / v17;
  SDOFDisparityRefinementParameterValue(&cfstr_Maxreconstruct.isa, self->inputTuningParameters);
  v59 = v18;
  if (v11 >= 0.5)
  {
    v19 = v11;
  }

  else
  {
    v19 = 0.5;
  }

  SDOFDisparityRefinementParameterValue(&cfstr_Nsamples.isa, self->inputTuningParameters);
  v21 = v19 * v20;
  v58 = ceilf(v21);
  SDOFDisparityRefinementParameterValue(&cfstr_Disparitysigma.isa, self->inputTuningParameters);
  v57 = -1.0 / ((v22 * v22) + (v22 * v22));
  SDOFDisparityRefinementParameterValue(&cfstr_Lumasigma.isa, self->inputTuningParameters);
  v24 = v23;
  SDOFDisparityRefinementParameterValue(&cfstr_Chromasigma.isa, self->inputTuningParameters);
  v26 = v25;
  SDOFDisparityRefinementParameterValue(&cfstr_Segmentationsi.isa, self->inputTuningParameters);
  v27 = -1.0 / ((v26 * v26) + (v26 * v26));
  v29 = -1.0 / ((v28 * v28) + (v28 * v28));
  SDOFDisparityRefinementParameterValue(&cfstr_Accumulatedwei.isa, self->inputTuningParameters);
  v56 = v30;
  SDOFDisparityRefinementParameterValue(&cfstr_Accumulatedwei_0.isa, self->inputTuningParameters);
  v32 = v31;
  SDOFDisparityRefinementParameterValue(&cfstr_Innersamplingr.isa, self->inputTuningParameters);
  v34 = v11 * v33;
  SDOFDisparityRefinementParameterValue(&cfstr_Outersamplingr.isa, self->inputTuningParameters);
  v36 = v8 * v13 / v61;
  v37 = v36 * v36;
  v38 = v37 * (v34 * v34);
  v39 = v37 * ((v11 * v35) * (v11 * v35));
  v40 = [CIVector vectorWithX:v60 Y:v59 Z:v58 W:v57];
  v41 = [CIVector vectorWithX:(-1.0 / ((v24 * v24) + (v24 * v24))) Y:v27 Z:v27 W:v29];
  v42 = [CIVector vectorWithX:v38 Y:v39 Z:v56 W:v32];
  v43 = [CIVector vectorWithX:v8 Y:v62];
  sampleKernel = [(CIDisparityRefinementSparseSamplerV3 *)self sampleKernel];
  memset(&v67, 0, sizeof(v67));
  CGAffineTransformMakeScale(&v67, v8 / v61, v62 / v63);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __51__CIDisparityRefinementSparseSamplerV3_outputImage__block_invoke;
  v65[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v66 = v60;
  v64 = v67;
  v45 = [(CIImage *)inputImage imageByApplyingTransform:&v64];
  [(CIImage *)inputPreprocImage extent];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v70[0] = [(CIImage *)inputPreprocImage imageByClampingToExtent];
  v70[1] = [(CIImage *)v45 imageByClampingToExtent];
  v70[2] = v40;
  v70[3] = v41;
  v70[4] = v42;
  v70[5] = v43;
  v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:6];
  v68 = @"kCIKernelOutputFormat";
  v69 = [MEMORY[0x1E696AD98] numberWithInt:2053];
  return [sampleKernel applyWithExtent:v65 roiCallback:v54 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v69, &v68, 1), v47, v49, v51, v53}];
}

@end