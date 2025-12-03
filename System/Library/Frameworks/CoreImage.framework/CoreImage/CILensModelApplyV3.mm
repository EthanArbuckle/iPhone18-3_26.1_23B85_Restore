@interface CILensModelApplyV3
- (id)kernel;
- (id)outputImage;
@end

@implementation CILensModelApplyV3

- (id)kernel
{
  if ([CILensModelApplyV3 kernel]::onceToken != -1)
  {
    [CILensModelApplyV3 kernel];
  }

  return [CILensModelApplyV3 kernel]::k;
}

id __28__CILensModelApplyV3_kernel__block_invoke()
{
  result = [CIColorKernel SDOFV3MetalKernelNamed:@"disparity_refinement_slm_passthrough"];
  [CILensModelApplyV3 kernel]::k = result;
  return result;
}

- (id)outputImage
{
  v18[2] = *MEMORY[0x1E69E9840];
  imageByClampingToExtent = [(CIImage *)self->inputLensModelImage imageByClampingToExtent];
  kernel = [(CILensModelApplyV3 *)self kernel];
  [(CIImage *)self->inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  inputImage = self->inputImage;
  v18[0] = imageByClampingToExtent;
  v18[1] = inputImage;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v16 = @"kCIKernelOutputFormat";
  v17 = [MEMORY[0x1E696AD98] numberWithInt:2053];
  return [kernel applyWithExtent:v14 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v17, &v16, 1), v6, v8, v10, v12}];
}

@end