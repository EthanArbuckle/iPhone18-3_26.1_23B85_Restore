@interface CIFocalPlane
- (id)outputImage;
@end

@implementation CIFocalPlane

- (id)outputImage
{
  v13[9] = *MEMORY[0x1E69E9840];
  inputImage = self->super.inputImage;
  if (inputImage)
  {
    inputMatteImage = self->super.inputMatteImage;
    if (inputMatteImage)
    {
      v12[0] = @"inputMatteImage";
      v12[1] = @"inputFocusRect";
      inputFocusRect = self->super.inputFocusRect;
      v13[0] = inputMatteImage;
      v13[1] = inputFocusRect;
      inputZeroShiftPercentile = self->super.inputZeroShiftPercentile;
      v12[2] = @"inputZeroShiftPercentile";
      v12[3] = @"inputAlphaThreshold";
      inputAlphaThreshold = self->super.inputAlphaThreshold;
      v13[2] = inputZeroShiftPercentile;
      v13[3] = inputAlphaThreshold;
      inputAmplitude = self->super.inputAmplitude;
      v12[4] = @"inputAmplitude";
      v12[5] = @"inputExponent";
      inputExponent = self->super.inputExponent;
      v13[4] = inputAmplitude;
      v13[5] = inputExponent;
      inputGamma = self->super.inputGamma;
      v12[6] = @"inputGamma";
      v12[7] = @"inputMinFactor";
      inputMinFactor = self->super.inputMinFactor;
      v13[6] = inputGamma;
      v13[7] = inputMinFactor;
      v12[8] = @"inputMaxFactor";
      v13[8] = self->super.inputMaxFactor;
      return -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CIFocalPlanePreprocessorInternal", [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:9]);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end