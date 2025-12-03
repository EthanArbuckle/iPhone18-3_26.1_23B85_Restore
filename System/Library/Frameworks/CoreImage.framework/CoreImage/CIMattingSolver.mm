@interface CIMattingSolver
- (id)outputImage;
@end

@implementation CIMattingSolver

- (id)outputImage
{
  v17[10] = *MEMORY[0x1E69E9840];
  inputImage = self->super.inputImage;
  if (inputImage)
  {
    if (self->super.inputPredicateImage && self->super.inputMainImage)
    {
      integerValue = [(NSNumber *)self->super.inputNumIterations integerValue];
      inputImage = self->super.inputImage;
      if (integerValue)
      {
        inputMainImage = self->super.inputMainImage;
        v16[0] = @"inputMainImage";
        v16[1] = @"inputPredicateImage";
        inputPredicateImage = self->super.inputPredicateImage;
        v17[0] = inputMainImage;
        v17[1] = inputPredicateImage;
        inputRadius = self->super.inputRadius;
        v16[2] = @"inputRadius";
        v16[3] = @"inputSubsampling";
        inputSubsampling = self->super.inputSubsampling;
        v17[2] = inputRadius;
        v17[3] = inputSubsampling;
        inputEPS = self->super.inputEPS;
        v16[4] = @"inputEPS";
        v16[5] = @"inputNumIterations";
        inputNumIterations = self->super.inputNumIterations;
        v17[4] = inputEPS;
        v17[5] = inputNumIterations;
        inputErosionKernelSize = self->super.inputErosionKernelSize;
        v16[6] = @"inputErosionKernelSize";
        v16[7] = @"inputUseDepthFilter";
        inputUseDepthFilter = self->super.inputUseDepthFilter;
        v17[6] = inputErosionKernelSize;
        v17[7] = inputUseDepthFilter;
        inputFGThresholdValue = self->super.inputFGThresholdValue;
        v16[8] = @"inputFGThresholdValue";
        v16[9] = @"inputBGThresholdValue";
        inputBGThresholdValue = self->super.inputBGThresholdValue;
        v17[8] = inputFGThresholdValue;
        v17[9] = inputBGThresholdValue;
        return -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIMattingSolverInternal", [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:10]);
      }
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end