@interface CUIClampHDR
- (id)outputImage;
@end

@implementation CUIClampHDR

- (id)outputImage
{
  v12[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_clampHDR];
    if (v4)
    {
      v5 = v4;
      [(CIImage *)inputImage extent];
      inputMaxComponent = self->inputMaxComponent;
      v12[0] = inputImage;
      v12[1] = inputMaxComponent;
      return -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2], v7, v8, v9, v10);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end