@interface CUIDfDxDfDy
- (id)outputImage;
@end

@implementation CUIDfDxDfDy

- (id)outputImage
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (self->inputImage)
  {
    v3 = [CIKernel kernelWithInternalRepresentation:&CI::_dfdxdfdyChannel];
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
      v20 = CGRectInset(v19, -1.0, -1.0);
      inputChannel = self->inputChannel;
      v17[0] = v14;
      v17[1] = inputChannel;
      return -[CIImage imageByCroppingToRect:](-[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_64, [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2], v20.origin.x, v20.origin.y, v20.size.width, v20.size.height), "imageByCroppingToRect:", v7, v9, v11, v13);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end