@interface CUIGatherSDF
- (id)outputImage;
@end

@implementation CUIGatherSDF

- (id)outputImage
{
  v13[3] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_gatherSDF];
    if (v4)
    {
      v5 = v4;
      if (self->inputAbove)
      {
        inputAbove = self->inputAbove;
      }

      else
      {
        inputAbove = &unk_1F10828E8;
      }

      if (self->inputBelow)
      {
        inputBelow = self->inputBelow;
      }

      else
      {
        inputBelow = &unk_1F10828F8;
      }

      [(CIImage *)inputImage extent];
      v13[0] = inputImage;
      v13[1] = inputBelow;
      v13[2] = inputAbove;
      return -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3], v8, v9, v10, v11);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end