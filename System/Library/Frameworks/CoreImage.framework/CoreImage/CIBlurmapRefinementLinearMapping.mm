@interface CIBlurmapRefinementLinearMapping
- (id)outputImage;
@end

@implementation CIBlurmapRefinementLinearMapping

- (id)outputImage
{
  v24[3] = *MEMORY[0x1E69E9840];
  result = +[CIImage emptyImage];
  if (result)
  {
    inputImage = self->inputImage;
    if (self->inputSecondaryImage)
    {
      kernel = [(CIBlurmapRefinementLinearMapping *)self kernel];
    }

    else
    {
      kernel = [(CIBlurmapRefinementLinearMapping *)self kernelNoSecondaryImage];
    }

    v6 = kernel;
    inputSecondaryImage = self->inputSecondaryImage;
    if (inputSecondaryImage)
    {
      v24[0] = inputImage;
      v24[1] = inputSecondaryImage;
      v24[2] = self->inputScalingFactor;
      v8 = MEMORY[0x1E695DEC8];
      v9 = v24;
      v10 = 3;
    }

    else
    {
      inputScalingFactor = self->inputScalingFactor;
      v23[0] = inputImage;
      v23[1] = inputScalingFactor;
      v8 = MEMORY[0x1E695DEC8];
      v9 = v23;
      v10 = 2;
    }

    v12 = [v8 arrayWithObjects:v9 count:v10];
    [(CIImage *)inputImage extent];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v21[1] = @"kCIImageAlphaOne";
    v22[0] = [MEMORY[0x1E696AD98] numberWithInt:{2053, @"kCIKernelOutputFormat"}];
    v22[1] = MEMORY[0x1E695E118];
    return [v6 applyWithExtent:v12 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v22, v21, 2), v14, v16, v18, v20}];
  }

  return result;
}

@end