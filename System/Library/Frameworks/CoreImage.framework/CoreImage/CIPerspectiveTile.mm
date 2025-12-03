@interface CIPerspectiveTile
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPerspectiveTile

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryTileEffect";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"6";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.4";
  v12[3] = @"inputBottomLeft";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeType";
  v10[0] = [CIVector vectorWithX:155.0 Y:153.0];
  v10[1] = @"CIAttributeTypePosition";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[4] = @"inputBottomRight";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIVector vectorWithX:548.0 Y:140.0];
  v8[1] = @"CIAttributeTypePosition";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[5] = @"inputTopRight";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIVector vectorWithX:646.0 Y:507.0];
  v6[1] = @"CIAttributeTypePosition";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v12[6] = @"inputTopLeft";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIVector vectorWithX:118.0 Y:484.0];
  v4[1] = @"CIAttributeTypePosition";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (id)outputImage
{
  v38[9] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    [result extent];
    if (CGRectIsInfinite(v39))
    {
      return 0;
    }

    else
    {
      v4 = [(CIImage *)self->inputImage filteredImage:@"CISimpleTile" keysAndValues:0];
      [(CIImage *)self->inputImage extent];
      v5 = [CIVector vectorWithCGRect:?];
      inputTopLeft = self->inputTopLeft;
      if (!inputTopLeft)
      {
        inputTopLeft = [CIVector vectorWithX:0.0 Y:0.0];
      }

      inputTopRight = self->inputTopRight;
      if (!inputTopRight)
      {
        inputTopRight = [CIVector vectorWithX:0.0 Y:0.0];
      }

      inputBottomRight = self->inputBottomRight;
      if (!inputBottomRight)
      {
        inputBottomRight = [CIVector vectorWithX:0.0 Y:0.0];
      }

      inputBottomLeft = self->inputBottomLeft;
      if (!inputBottomLeft)
      {
        inputBottomLeft = [CIVector vectorWithX:0.0 Y:0.0];
      }

      v10 = [v4 filteredImage:@"CIPerspectiveTransformWithExtent" keysAndValues:{@"inputExtent", v5, @"inputTopLeft", inputTopLeft, @"inputTopRight", inputTopRight, @"inputBottomRight", inputBottomRight, @"inputBottomLeft", inputBottomLeft, 0}];
      [(CIVector *)self->inputBottomLeft X];
      v32 = v11;
      [(CIVector *)self->inputBottomLeft Y];
      v12.f64[0] = v32;
      v12.f64[1] = v13;
      v14 = COERCE_DOUBLE(vcvt_f32_f64(v12));
      [(CIVector *)self->inputBottomRight X];
      v33 = v15;
      [(CIVector *)self->inputBottomRight Y];
      v16.f64[0] = v33;
      v16.f64[1] = v17;
      v18 = vcvt_f32_f64(v16);
      [(CIVector *)self->inputTopLeft X];
      v34 = v19;
      [(CIVector *)self->inputTopLeft Y];
      v20.f64[0] = v34;
      v20.f64[1] = v21;
      v22 = vcvt_f32_f64(v20);
      [(CIVector *)self->inputTopRight X];
      v35 = v23;
      [(CIVector *)self->inputTopRight Y];
      v24.f64[0] = v35;
      v24.f64[1] = v25;
      computeHomogeneousPerspectiveTransformAndInverse(v37, v38, v14, v18, vcvt_f32_f64(v24), v22);
      v26 = [CIVector vectorWithX:v37[2] Y:v37[5] Z:v37[8]];
      _kernel = [(CIPerspectiveTile *)self _kernel];
      v28 = *MEMORY[0x1E695F040];
      v29 = *(MEMORY[0x1E695F040] + 8);
      v30 = *(MEMORY[0x1E695F040] + 16);
      v31 = *(MEMORY[0x1E695F040] + 24);
      v36[0] = v10;
      v36[1] = v26;
      return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v36, 2), v28, v29, v30, v31}];
    }
  }

  return result;
}

@end