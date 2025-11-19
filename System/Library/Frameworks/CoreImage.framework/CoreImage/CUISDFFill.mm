@interface CUISDFFill
- (id)outputImage;
@end

@implementation CUISDFFill

- (id)outputImage
{
  v17[3] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = [CIKernel kernelWithInternalRepresentation:&CI::_sdfFill];
    if (v4)
    {
      v5 = v4;
      [(CIImage *)inputImage extent];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [(CIImage *)inputImage imageByClampingToExtent];
      v19.origin.x = v7;
      v19.origin.y = v9;
      v19.size.width = v11;
      v19.size.height = v13;
      v20 = CGRectInset(v19, -6.0, -6.0);
      inputScale = self->inputScale;
      v17[0] = v14;
      v17[1] = inputScale;
      v17[2] = self->inputBias;
      inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_217, [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3], v20.origin.x, v20.origin.y, v20.size.width, v20.size.height);
      v21.origin.x = v7;
      v21.origin.y = v9;
      v21.size.width = v11;
      v21.size.height = v13;
      if (!CGRectIsInfinite(v21))
      {
        return [(CIImage *)inputImage imageByCroppingToRect:v7, v9, v11, v13];
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