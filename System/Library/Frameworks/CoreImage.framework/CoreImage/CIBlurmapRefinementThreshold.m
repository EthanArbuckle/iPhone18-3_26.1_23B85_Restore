@interface CIBlurmapRefinementThreshold
- (id)outputImage;
@end

@implementation CIBlurmapRefinementThreshold

- (id)outputImage
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = +[CIImage emptyImage];
  if (self->inputImage)
  {
    v4 = [(CIBlurmapRefinementThreshold *)self kernel];
    if (v4)
    {
      v5 = v4;
      inputImage = self->inputImage;
      [(CIImage *)inputImage extent];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      inputThreshold = self->inputThreshold;
      v20[0] = inputImage;
      v20[1] = inputThreshold;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      v18[0] = @"kCIKernelOutputFormat";
      v18[1] = @"kCIImageAlphaOne";
      v19[0] = [MEMORY[0x1E696AD98] numberWithInt:2053];
      v19[1] = MEMORY[0x1E695E118];
      return [v5 applyWithExtent:v16 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v19, v18, 2), v8, v10, v12, v14}];
    }
  }

  return v3;
}

@end