@interface CILensModelApply
- (id)outputImage;
@end

@implementation CILensModelApply

- (id)outputImage
{
  v13[2] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    if (self->inputLensModelParams)
    {
      kernel = [(CILensModelApply *)self kernel];
      [(CIImage *)self->inputImage extent];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13[0] = self->inputImage;
      v13[1] = [(CIImage *)self->inputLensModelParams imageByClampingToExtent];
      return [kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v13, 2), v6, v8, v10, v12}];
    }
  }

  return result;
}

@end