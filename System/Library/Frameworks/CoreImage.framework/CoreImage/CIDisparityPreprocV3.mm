@interface CIDisparityPreprocV3
- (id)outputImage;
- (id)preprocKernel;
- (id)preprocKernelNoAlpha;
@end

@implementation CIDisparityPreprocV3

- (id)preprocKernel
{
  if ([CIDisparityPreprocV3 preprocKernel]::onceToken != -1)
  {
    [CIDisparityPreprocV3 preprocKernel];
  }

  return [CIDisparityPreprocV3 preprocKernel]::k;
}

id __37__CIDisparityPreprocV3_preprocKernel__block_invoke()
{
  result = [CIColorKernel SDOFV3MetalKernelNamed:@"disparity_refinement_preproc"];
  [CIDisparityPreprocV3 preprocKernel]::k = result;
  return result;
}

- (id)preprocKernelNoAlpha
{
  if ([CIDisparityPreprocV3 preprocKernelNoAlpha]::onceToken != -1)
  {
    [CIDisparityPreprocV3 preprocKernelNoAlpha];
  }

  return [CIDisparityPreprocV3 preprocKernelNoAlpha]::k;
}

id __44__CIDisparityPreprocV3_preprocKernelNoAlpha__block_invoke()
{
  result = [CIColorKernel SDOFV3MetalKernelNamed:@"disparity_refinement_preproc_no_alpha"];
  [CIDisparityPreprocV3 preprocKernelNoAlpha]::k = result;
  return result;
}

- (id)outputImage
{
  v34[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  inputAlphaImage = self->inputAlphaImage;
  v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  CFAutorelease(v5);
  v6 = [CIImage imageYCC444:inputImage matrix:709 fullRange:1 colorSpace:v5];
  v7 = v6;
  if (inputAlphaImage)
  {
    [v6 extent];
    v9 = v8;
    [(CIImage *)inputAlphaImage extent];
    v11 = v9 / v10;
    [v7 extent];
    v13 = v12;
    [(CIImage *)inputAlphaImage extent];
    memset(&v29, 0, sizeof(v29));
    CGAffineTransformMakeScale(&v29, v11, v13 / v14);
    v28 = v29;
    v15 = [(CIImage *)inputAlphaImage imageByApplyingTransform:&v28];
    v16 = [(CIDisparityPreprocV3 *)self preprocKernel];
    [v7 extent];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v34[0] = v7;
    v34[1] = v15;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v32 = @"kCIKernelOutputFormat";
    v33 = [MEMORY[0x1E696AD98] numberWithInt:264];
    v26 = [v16 applyWithExtent:v25 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v33, &v32, 1), v18, v20, v22, v24}];
  }

  else
  {
    v30 = @"inputAVector";
    v31 = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
    v26 = [v7 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v31, &v30, 1)}];
  }

  return [v26 _imageByRenderingToIntermediate];
}

@end