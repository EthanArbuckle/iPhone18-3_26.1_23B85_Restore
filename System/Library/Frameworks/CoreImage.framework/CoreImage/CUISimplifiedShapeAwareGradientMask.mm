@interface CUISimplifiedShapeAwareGradientMask
- (id)outputImage;
@end

@implementation CUISimplifiedShapeAwareGradientMask

- (id)outputImage
{
  v20[7] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = [CIKernel kernelWithInternalRepresentation:&CI::_simplifiedShapeAwareGradientMask];
    if (v4)
    {
      v5 = v4;
      [(CIImage *)inputImage extent];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      imageByClampingToExtent = [(CIImage *)inputImage imageByClampingToExtent];
      v22.origin.x = v7;
      v22.origin.y = v9;
      v22.size.width = v11;
      v22.size.height = v13;
      v23 = CGRectInset(v22, -6.0, -6.0);
      inputBorderWidth = self->inputBorderWidth;
      inputOpacityBounds = self->inputOpacityBounds;
      v20[0] = imageByClampingToExtent;
      v20[1] = inputBorderWidth;
      inputContourOpacityBounds = self->inputContourOpacityBounds;
      v20[2] = inputOpacityBounds;
      v20[3] = inputContourOpacityBounds;
      inputSDFZero = self->inputSDFZero;
      v20[4] = self->inputSDFScale;
      v20[5] = inputSDFZero;
      v20[6] = self->inputBounds;
      return -[CIImage imageByCroppingToRect:](-[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_257, [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:7], v23.origin.x, v23.origin.y, v23.size.width, v23.size.height), "imageByCroppingToRect:", v7, v9, v11, v13);
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end