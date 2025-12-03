@interface CIFusionDelta
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIFusionDelta

+ (id)customAttributes
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"inputApertureScaling";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeDefault";
  v4[0] = @"CIAttributeTypeScalar";
  v4[1] = &unk_1F1083B38;
  v3[2] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1083B38;
  v6[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
}

- (BOOL)_isIdentity
{
  [(CIVector *)self->inputAddBlur Z];
  result = 0;
  if (v3 == 0.0)
  {
    [(CIVector *)self->inputRemoveBlur Z];
    if (v4 == 0.0)
    {
      return 1;
    }
  }

  return result;
}

- (id)outputImage
{
  v39[4] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIFusionDelta *)self _isIdentity])
  {

    return +[CIImage emptyImage];
  }

  else
  {
    [(CIVector *)self->inputRemoveBlur Z];
    v5 = v4;
    [(CIVector *)self->inputRemoveBlur X];
    v7 = v6;
    [(CIVector *)self->inputRemoveBlur Y];
    *&v8 = v8;
    v9 = 1.0 / (*&v8 - v7);
    [(CIVector *)self->inputRemoveBlur X];
    v11 = v10;
    [(CIVector *)self->inputRemoveBlur Y];
    *&v12 = v12;
    v13 = ((-1.0 / (*&v12 - v11)) * v11) + 0.0;
    [(CIVector *)self->inputAddBlur Z];
    v15 = v14;
    [(CIVector *)self->inputAddBlur X];
    v17 = v16;
    [(CIVector *)self->inputAddBlur Y];
    *&v18 = v18;
    v19 = -1.0 / (*&v18 - v17);
    [(CIVector *)self->inputAddBlur X];
    v21 = v20;
    [(CIVector *)self->inputAddBlur Y];
    *&v22 = v22;
    v23 = ((1.0 / (*&v22 - v21)) * v21) + 1.0;
    v24 = [CIVector vectorWithX:v9 Y:v13 Z:v5];
    v25 = [CIVector vectorWithX:v19 Y:v23 Z:v15];
    kernel = [(CIFusionDelta *)self kernel];
    [(CIImage *)self->inputImage extent];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v39[0] = self->inputImage;
    v39[1] = v25;
    inputApertureScaling = self->inputApertureScaling;
    v39[2] = v24;
    v39[3] = inputApertureScaling;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
    v37[0] = @"kCIKernelOutputFormat";
    v37[1] = @"kCIImageAlphaOne";
    v38[0] = [MEMORY[0x1E696AD98] numberWithInt:2053];
    v38[1] = MEMORY[0x1E695E118];
    return [kernel applyWithExtent:v36 arguments:objc_msgSend(MEMORY[0x1E695DF20] options:{"dictionaryWithObjects:forKeys:count:", v38, v37, 2), v28, v30, v32, v34}];
  }
}

@end