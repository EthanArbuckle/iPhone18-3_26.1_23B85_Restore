@interface CIColorClamp
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorClamp

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryColorAdjustment";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryInterlaced";
  v7[3] = @"CICategoryNonSquarePixels";
  v7[4] = @"CICategoryStillImage";
  v7[5] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:6];
  v9[1] = @"7";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.9";
  v8[3] = @"inputMinComponents";
  v5 = @"CIAttributeDefault";
  v6 = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v8[4] = @"inputMaxComponents";
  v3 = @"CIAttributeDefault";
  v4 = [CIVector vectorWithX:1.0 Y:1.0 Z:1.0 W:1.0];
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v19[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  inputMinComponents = self->inputMinComponents;
  if (!inputMinComponents)
  {
    inputMinComponents = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  }

  inputMaxComponents = self->inputMaxComponents;
  if (!inputMaxComponents)
  {
    inputMaxComponents = [CIVector vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
  }

  [(CIImage *)self->inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CIVector *)self->inputMinComponents W];
  if (v13 > 0.0)
  {
    v6 = *MEMORY[0x1E695F040];
    v8 = *(MEMORY[0x1E695F040] + 8);
    v10 = *(MEMORY[0x1E695F040] + 16);
    v12 = *(MEMORY[0x1E695F040] + 24);
  }

  [(CIVector *)self->inputMinComponents W];
  if (v14 <= 0.0 && ([(CIVector *)self->inputMaxComponents W], v15 >= 1.0))
  {
    v16 = [(CIColorClamp *)self _kernelAlphaPreserving];
  }

  else
  {
    v16 = [(CIColorClamp *)self _kernel];
  }

  v18 = v16;
  v19[0] = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
  v19[1] = inputMinComponents;
  v19[2] = inputMaxComponents;
  return [objc_msgSend(v18 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v19, 3), v6, v8, v10, v12), "imageByPremultiplyingAlpha"}];
}

@end