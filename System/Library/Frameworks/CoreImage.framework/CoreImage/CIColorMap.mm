@interface CIColorMap
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorMap

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryColorEffect";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryInterlaced";
  v3[3] = @"CICategoryNonSquarePixels";
  v3[4] = @"CICategoryStillImage";
  v3[5] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v5[1] = @"6";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"10.4";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v20[3] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (!inputImage)
  {
    return 0;
  }

  result = self->inputGradientImage;
  if (!result)
  {
    return result;
  }

  [result extent];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  if (CGRectIsInfinite(v21))
  {
    NSLog(&cfstr_SRequiresTheIn.isa, "[CIColorMap outputImage]");
    return 0;
  }

  _kernel = [(CIColorMap *)self _kernel];
  [(CIImage *)self->inputImage extent];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __25__CIColorMap_outputImage__block_invoke;
  v19[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  *&v19[4] = x;
  *&v19[5] = y;
  *&v19[6] = width;
  *&v19[7] = height;
  inputGradientImage = self->inputGradientImage;
  v20[0] = inputImage;
  v20[1] = inputGradientImage;
  v20[2] = [MEMORY[0x1E696AD98] numberWithDouble:width + -1.0];
  return [_kernel applyWithExtent:v19 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v20, 3), v11, v13, v15, v17}];
}

double __25__CIColorMap_outputImage__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return *(a1 + 32);
  }

  return result;
}

@end