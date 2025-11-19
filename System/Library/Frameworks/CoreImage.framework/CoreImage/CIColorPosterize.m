@interface CIColorPosterize
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIColorPosterize

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryColorEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryInterlaced";
  v5[3] = @"CICategoryNonSquarePixels";
  v5[4] = @"CICategoryStillImage";
  v5[5] = @"CICategoryHighDynamicRange";
  v5[6] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v7[1] = @"6";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputLevels";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082FB8;
  v4[1] = &unk_1F1082FC8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082FD8;
  v4[3] = &unk_1F1082FE8;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082FF8;
  v4[5] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIColorPosterize *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(NSNumber *)self->inputLevels floatValue];
    v6 = floorf(v5 + -1.0);
    if (v6 <= 0.0)
    {
      v7 = 0.0;
      v8 = 1.0;
    }

    else
    {
      v7 = v6;
      v8 = (1.0 / v6);
    }

    v9 = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
    v10 = [(CIColorPosterize *)self _kernel];
    [(CIImage *)v9 extent];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19[0] = v9;
    v19[1] = [CIVector vectorWithX:v7 Y:v8];
    return [objc_msgSend(v10 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v19, 2), v12, v14, v16, v18), "imageByPremultiplyingAlpha"}];
  }
}

@end