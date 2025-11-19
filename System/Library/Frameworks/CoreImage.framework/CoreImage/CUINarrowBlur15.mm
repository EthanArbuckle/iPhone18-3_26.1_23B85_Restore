@interface CUINarrowBlur15
- (id)outputImage;
@end

@implementation CUINarrowBlur15

- (id)outputImage
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (self->inputImage)
  {
    v3 = [CIKernel kernelWithInternalRepresentation:&CI::_narrowBlur15];
    inputImage = self->inputImage;
    if (v3)
    {
      v5 = v3;
      [(CIImage *)inputImage extent];
      v20 = CGRectInset(v19, -7.0, 0.0);
      x = v20.origin.x;
      y = v20.origin.y;
      width = v20.size.width;
      height = v20.size.height;
      v17[0] = inputImage;
      v17[1] = [CIVector vectorWithX:1.0 Y:0.0];
      v10 = -[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", &__block_literal_global, [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2], x, y, width, height);
      [(CIImage *)v10 extent];
      v22 = CGRectInset(v21, 0.0, -7.0);
      v11 = v22.origin.x;
      v12 = v22.origin.y;
      v13 = v22.size.width;
      v14 = v22.size.height;
      v16[0] = v10;
      v16[1] = [CIVector vectorWithX:0.0 Y:1.0];
      return -[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_49, [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2], v11, v12, v13, v14);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end