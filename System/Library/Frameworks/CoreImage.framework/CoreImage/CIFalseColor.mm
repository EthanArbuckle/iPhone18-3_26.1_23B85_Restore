@interface CIFalseColor
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIFalseColor

- (id)outputImage
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputColor0 && !self->inputColor1)
  {
    return 0;
  }

  v3 = +[CIColor clearColor];
  imageByUnpremultiplyingAlpha = [(CIImage *)self->inputImage imageByUnpremultiplyingAlpha];
  _kernel = [(CIFalseColor *)self _kernel];
  [(CIImage *)imageByUnpremultiplyingAlpha extent];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  inputColor0 = self->inputColor0;
  if (!inputColor0)
  {
    inputColor0 = v3;
  }

  inputColor1 = self->inputColor1;
  v19 = imageByUnpremultiplyingAlpha;
  v20 = inputColor0;
  if (inputColor1)
  {
    v16 = inputColor1;
  }

  else
  {
    v16 = v3;
  }

  v21 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:3];
  return [_kernel applyWithExtent:v17 arguments:{v7, v9, v11, v13, v19, v20}];
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryColorEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryInterlaced";
  v7[3] = @"CICategoryNonSquarePixels";
  v7[4] = @"CICategoryStillImage";
  v7[5] = @"CICategoryHighDynamicRange";
  v7[6] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];
  v9[1] = @"5";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputColor0";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIColor colorWithRed:0.3 green:0.0 blue:0.0];
  v6[1] = @"CIAttributeTypeColor";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v8[4] = @"inputColor1";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIColor colorWithRed:1.0 green:0.9 blue:0.8, @"CIAttributeDefault"];
  v4[1] = @"CIAttributeTypeColor";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end