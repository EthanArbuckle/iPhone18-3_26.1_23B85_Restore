@interface CUIFWidth
- (id)outputImage;
@end

@implementation CUIFWidth

- (id)outputImage
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (self->inputImage)
  {
    v3 = [CIKernel kernelWithInternalRepresentation:&CI::_fwidth];
    inputImage = self->inputImage;
    if (v3)
    {
      v5 = v3;
      [(CIImage *)inputImage extent];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v14 = [(CIImage *)inputImage imageByApplyingFilter:@"CUINarrowBlur15"];
      [(CIImage *)v14 extent];
      v19 = CGRectInset(v18, -1.0, -1.0);
      v16[0] = v14;
      return -[CIImage imageByCroppingToRect:](-[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_58, [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1], v19.origin.x, v19.origin.y, v19.size.width, v19.size.height), "imageByCroppingToRect:", v7, v9, v11, v13);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end