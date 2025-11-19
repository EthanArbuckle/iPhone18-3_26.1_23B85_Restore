@interface CUIGlow
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CUIGlow

+ (id)customAttributes
{
  v17[9] = *MEMORY[0x1E69E9840];
  v16[0] = @"CIAttributeFilterCategories";
  v15[0] = @"CICategoryStillImage";
  v15[1] = @"CICategoryApplePrivate";
  v17[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v17[1] = @"19";
  v16[1] = @"CIAttributeFilterAvailable_iOS";
  v16[2] = @"CIAttributeFilterAvailable_Mac";
  v17[2] = @"16.0";
  v16[3] = @"inputRadius";
  v13 = @"CIAttributeType";
  v14 = @"CIAttributeTypeScalar";
  v17[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[4] = @"inputBiasAmount";
  v11 = @"CIAttributeType";
  v12 = @"CIAttributeTypeScalar";
  v17[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v16[5] = @"inputColor";
  v9 = @"CIAttributeType";
  v10 = @"CIAttributeTypeColor";
  v17[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v16[6] = @"inputSDFScale";
  v7 = @"CIAttributeType";
  v8 = @"CIAttributeTypeScalar";
  v17[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v16[7] = @"inputSDFZero";
  v5 = @"CIAttributeType";
  v6 = @"CIAttributeTypeScalar";
  v17[7] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v16[8] = @"inputMaskOpposite";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeBoolean";
  v4[1] = MEMORY[0x1E695E110];
  v3[2] = @"CIAttributeMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = MEMORY[0x1E695E118];
  v17[8] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:4];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:9];
}

- (id)outputImage
{
  v26[5] = *MEMORY[0x1E69E9840];
  inputImage = self->inputImage;
  if (inputImage)
  {
    v4 = [CIKernel kernelWithInternalRepresentation:&CI::_glow];
    if (v4)
    {
      v5 = v4;
      v6 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_glowMaskNotOpposite];
      if (v6)
      {
        v7 = v6;
        v8 = [(NSNumber *)self->inputMaskOpposite BOOLValue];
        [(CIImage *)inputImage extent];
        v13 = v9;
        v14 = v10;
        v15 = v11;
        v16 = v12;
        if (v8)
        {
          v17 = [(CIImage *)inputImage imageByClampingToExtent];
          v28.origin.x = v13;
          v28.origin.y = v14;
          v28.size.width = v15;
          v28.size.height = v16;
          v29 = CGRectInset(v28, -6.0, -6.0);
          inputRadius = self->inputRadius;
          v25[0] = v17;
          v25[1] = inputRadius;
          inputColor = self->inputColor;
          v25[2] = self->inputBiasAmount;
          v25[3] = inputColor;
          inputSDFZero = self->inputSDFZero;
          v25[4] = self->inputSDFScale;
          v25[5] = inputSDFZero;
          return -[CIImage imageByCroppingToRect:](-[CIKernel applyWithExtent:roiCallback:arguments:](v5, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_150, [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:6], v29.origin.x, v29.origin.y, v29.size.width, v29.size.height), "imageByCroppingToRect:", v13, v14, v15, v16);
        }

        else
        {
          v23 = self->inputSDFZero;
          v26[0] = inputImage;
          v26[1] = v23;
          v24 = self->inputRadius;
          v26[2] = self->inputSDFScale;
          v26[3] = v24;
          v26[4] = self->inputColor;
          return -[CIColorKernel applyWithExtent:arguments:](v7, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5], v9, v10, v11, v12);
        }
      }
    }

    return inputImage;
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

@end