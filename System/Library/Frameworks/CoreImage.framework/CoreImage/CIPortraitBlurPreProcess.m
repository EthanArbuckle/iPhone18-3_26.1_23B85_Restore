@interface CIPortraitBlurPreProcess
- (id)_kernelMetal;
- (id)outputImage;
@end

@implementation CIPortraitBlurPreProcess

- (id)_kernelMetal
{
  if ([CIPortraitBlurPreProcess _kernelMetal]::onceToken != -1)
  {
    [CIPortraitBlurPreProcess _kernelMetal];
  }

  return [CIPortraitBlurPreProcess _kernelMetal]::k;
}

id __40__CIPortraitBlurPreProcess__kernelMetal__block_invoke()
{
  result = [CIColorKernel SDOFV2MetalKernelNamed:@"_CIBlurPreProcessM"];
  [CIPortraitBlurPreProcess _kernelMetal]::k = result;
  return result;
}

- (id)outputImage
{
  v18[2] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    if (self->inputBlurmapImage)
    {
      if ([(NSNumber *)self->inputUseMetal BOOLValue])
      {
        v4 = [(CIPortraitBlurPreProcess *)self _kernelMetal];
      }

      else
      {
        v4 = [(CIPortraitBlurPreProcess *)self _kernel];
      }

      v5 = v4;
      if (!v4)
      {
        v5 = [(CIPortraitBlurPreProcess *)self _kernel];
      }

      [(CIImage *)self->inputImage extent];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      inputBlurmapImage = self->inputBlurmapImage;
      v18[0] = self->inputImage;
      v18[1] = inputBlurmapImage;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
      v16 = @"kCIKernelOutputFormat";
      v17 = [MEMORY[0x1E696AD98] numberWithInt:264];
      return [v5 applyWithExtent:v15 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", &v17, &v16, 1), v7, v9, v11, v13}];
    }
  }

  else
  {

    return +[CIImage emptyImage];
  }

  return result;
}

@end