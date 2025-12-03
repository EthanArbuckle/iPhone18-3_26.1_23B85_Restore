@interface VNCIContrastFromAverageColorFilter
- (VNCIContrastFromAverageColorFilter)init;
- (VNCIContrastFromAverageColorFilter)initWithInputParameters:(id)parameters;
- (id)outputImage;
@end

@implementation VNCIContrastFromAverageColorFilter

- (id)outputImage
{
  v20[1] = *MEMORY[0x1E69E9840];
  inputImage = [(VNCIFilter *)self inputImage];
  inputContrast = [(VNCIContrastFromAverageColorFilter *)self inputContrast];
  [inputContrast floatValue];
  v6 = v5;

  if (v6 == 1.0)
  {
    v7 = inputImage;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v19 = *MEMORY[0x1E695FAA8];
    v9 = MEMORY[0x1E695F688];
    [inputImage extent];
    v10 = [v9 vectorWithCGRect:?];
    v20[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v12 = [inputImage imageByApplyingFilter:@"CIAreaAverage" withInputParameters:v11];

    imageByClampingToExtent = [v12 imageByClampingToExtent];

    imageByUnpremultiplyingAlpha = [imageByClampingToExtent imageByUnpremultiplyingAlpha];

    v18[0] = imageByUnpremultiplyingAlpha;
    inputContrast2 = [(VNCIContrastFromAverageColorFilter *)self inputContrast];
    v18[1] = inputContrast2;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v7 = [(VNCIFilter *)&self->super.super.super.isa applyWithArguments:v16];

    objc_autoreleasePoolPop(v8);
  }

  return v7;
}

- (VNCIContrastFromAverageColorFilter)initWithInputParameters:(id)parameters
{
  v4.receiver = self;
  v4.super_class = VNCIContrastFromAverageColorFilter;
  result = [(VNCIFilter *)&v4 initWithKernelName:@"contrastFromAverage" inputParameters:parameters];
  if (result)
  {
    if (!result->_inputContrast)
    {
      result->_inputContrast = &unk_1F19C2428;
    }
  }

  return result;
}

- (VNCIContrastFromAverageColorFilter)init
{
  v3.receiver = self;
  v3.super_class = VNCIContrastFromAverageColorFilter;
  result = [(VNCIFilter *)&v3 initWithKernelName:@"contrastFromAverage"];
  if (result)
  {
    if (!result->_inputContrast)
    {
      result->_inputContrast = &unk_1F19C2428;
    }
  }

  return result;
}

@end