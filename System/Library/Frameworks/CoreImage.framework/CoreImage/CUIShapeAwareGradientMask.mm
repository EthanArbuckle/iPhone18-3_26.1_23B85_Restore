@interface CUIShapeAwareGradientMask
- (id)outputImage;
@end

@implementation CUIShapeAwareGradientMask

- (id)outputImage
{
  v15[8] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_shapeAwareGradientMask];
    if (v4)
    {
      v5 = v4;
      [(CIImage *)inputImage extent];
      inputBorderWidth = self->inputBorderWidth;
      v15[0] = inputImage;
      v15[1] = inputBorderWidth;
      inputOpaqueEnd = self->inputOpaqueEnd;
      v15[2] = self->inputMinOpacity;
      v15[3] = inputOpaqueEnd;
      inputLightDirection = self->inputLightDirection;
      v15[4] = self->inputLength;
      v15[5] = inputLightDirection;
      inputSDFZero = self->inputSDFZero;
      v15[6] = self->inputSDFScale;
      v15[7] = inputSDFZero;
      return -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:8], v10, v11, v12, v13);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end