@interface CIPortraitBlurDirectionalBlur
- (id)_kernelMetal;
- (id)outputImage;
@end

@implementation CIPortraitBlurDirectionalBlur

- (id)_kernelMetal
{
  if ([CIPortraitBlurDirectionalBlur _kernelMetal]::onceToken != -1)
  {
    [CIPortraitBlurDirectionalBlur _kernelMetal];
  }

  return [CIPortraitBlurDirectionalBlur _kernelMetal]::k;
}

id __45__CIPortraitBlurDirectionalBlur__kernelMetal__block_invoke()
{
  result = [CIKernel SDOFV2MetalKernelNamed:@"_CIPortraitBlurDirM"];
  [CIPortraitBlurDirectionalBlur _kernelMetal]::k = result;
  return result;
}

- (id)outputImage
{
  v29[1] = *MEMORY[0x1E69E9840];
  if (self->inputImage)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = [(NSNumber *)self->inputHorizontalBlur BOOLValue];
    if ([(NSNumber *)self->inputUseMetal BOOLValue])
    {
      v3 = [(CIPortraitBlurDirectionalBlur *)self _kernelMetal];
    }

    else
    {
      v3 = [(CIPortraitBlurDirectionalBlur *)self _kernel];
    }

    v5 = v3;
    if (!v3)
    {
      v5 = [(CIPortraitBlurDirectionalBlur *)self _kernel];
    }

    inputImage = self->inputImage;
    v28 = @"wrap_mode";
    v29[0] = @"clamp";
    v7 = +[CISampler samplerWithImage:options:](CISampler, "samplerWithImage:options:", inputImage, [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1]);
    [(NSNumber *)self->inputAntiAliasBlurStrength floatValue];
    v9 = v8;
    [(NSNumber *)self->inputMaxBlur floatValue];
    v11 = (v9 * v10);
    if (*(v22 + 24))
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }

    v13 = [CIVector vectorWithX:v11 Y:v12 Z:?];
    v14 = *MEMORY[0x1E695F040];
    v15 = *(MEMORY[0x1E695F040] + 8);
    v17 = *(MEMORY[0x1E695F040] + 16);
    v16 = *(MEMORY[0x1E695F040] + 24);
    v27[0] = v7;
    v27[1] = v13;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:{2, MEMORY[0x1E69E9820], 3221225472, __44__CIPortraitBlurDirectionalBlur_outputImage__block_invoke, &unk_1E75C2528, &v21}];
    v25 = @"kCIKernelOutputFormat";
    v26 = [MEMORY[0x1E696AD98] numberWithInt:264];
    v19 = [v5 applyWithExtent:&v20 roiCallback:v18 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v26, &v25, 1), v14, v15, v17, v16}];
    _Block_object_dispose(&v21, 8);
    return v19;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

double __44__CIPortraitBlurDirectionalBlur_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = 0.0;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = -3.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = -3.0;
  }

  *&result = CGRectInset(*&a2, v6, v5);
  return result;
}

@end