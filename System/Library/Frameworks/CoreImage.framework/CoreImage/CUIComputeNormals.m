@interface CUIComputeNormals
- (id)outputImage;
@end

@implementation CUIComputeNormals

- (id)outputImage
{
  v21[2] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_fallbackComputeNormals];
    if (!v4)
    {
      return inputImage;
    }

    v5 = v4;
    [(CIImage *)inputImage extent];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(CIImage *)inputImage imageByApplyingFilter:@"CUIDfDxDfDy" withInputParameters:&unk_1F10824D8];
    if (v14)
    {
      v15 = v14;
      [(CIImage *)inputImage extent];
      v21[0] = inputImage;
      v21[1] = v15;
      inputImage = -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2], v16, v17, v18, v19);
      v23.origin.x = v7;
      v23.origin.y = v9;
      v23.size.width = v11;
      v23.size.height = v13;
      if (!CGRectIsInfinite(v23))
      {
        return [(CIImage *)inputImage imageByCroppingToRect:v7, v9, v11, v13];
      }

      return inputImage;
    }

    return [(CUIComputeNormals *)self inputImage];
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end