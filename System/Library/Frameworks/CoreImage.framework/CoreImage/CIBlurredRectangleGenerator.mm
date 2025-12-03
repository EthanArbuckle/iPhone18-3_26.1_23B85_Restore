@interface CIBlurredRectangleGenerator
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIBlurredRectangleGenerator

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryGenerator";
  v9[1] = @"CICategoryStillImage";
  v9[2] = @"CICategoryHighDynamicRange";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"17";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"14.0";
  v10[3] = @"inputExtent";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIVector vectorWithX:0.0 Y:0.0 Z:100.0 W:100.0];
  v8[1] = @"CIAttributeTypeRectangle";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputSigma";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084828;
  v6[1] = &unk_1F1084828;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084838;
  v6[3] = &unk_1F10821F0;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v10[5] = @"inputColor";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  v4[1] = @"CIAttributeTypeColor";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v21[3] = *MEMORY[0x1E69E9840];
  [(CIVector *)self->inputExtent CGRectValue];
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  if (CGRectIsEmpty(v23) || ([(CIColor *)self->inputColor alpha], v7 == 0.0))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    if (CGRectIsInfinite(v24))
    {
      inputColor = self->inputColor;

      return [CIImage imageWithColor:inputColor];
    }

    else
    {
      [(NSNumber *)self->inputSigma floatValue];
      v11 = fmaxf(v10, 0.0);
      if (v11 >= 0.01)
      {
        v13 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_blurredrect];
        height = [CIVector vectorWithX:x Y:y Z:x + width W:y + height];
        v25.origin.x = x;
        v25.origin.y = y;
        v25.size.width = width;
        v25.size.height = height;
        v26 = CGRectInset(v25, v11 * -3.0, v11 * -3.0);
        v15 = v26.origin.x;
        v16 = v26.origin.y;
        v17 = v26.size.width;
        v18 = v26.size.height;
        *&v26.origin.x = v11;
        v19 = [MEMORY[0x1E696AD98] numberWithFloat:{v26.origin.x, height}];
        v20 = self->inputColor;
        v21[1] = v19;
        v21[2] = v20;
        return -[CIColorKernel applyWithExtent:arguments:](v13, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:3], v15, v16, v17, v18);
      }

      else
      {
        v12 = [CIImage imageWithColor:self->inputColor];

        return [(CIImage *)v12 imageByCroppingToRect:x, y, width, height];
      }
    }
  }
}

@end