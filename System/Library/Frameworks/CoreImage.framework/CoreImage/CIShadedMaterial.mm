@interface CIShadedMaterial
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIShadedMaterial

- (id)outputImage
{
  v47[3] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  result = self->inputShadingImage;
  if (result)
  {
    [result extent];
    v5 = v4;
    [(CIImage *)self->inputShadingImage extent];
    v7 = [CIVector vectorWithX:v5 Y:v6];
    [(NSNumber *)self->inputScale floatValue];
    v9 = fabsf(v8);
    [(CIImage *)self->inputShadingImage extent];
    v14 = v13;
    if (v9 >= 0.001)
    {
      v32 = v10;
      v33 = v11;
      v34 = v12;
      v35 = [(CIShadedMaterial *)self _CIShadedmaterial];
      [(CIImage *)self->inputImage extent];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v44 = v42;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __31__CIShadedMaterial_outputImage__block_invoke_2;
      v45[3] = &__block_descriptor_64_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v45[4] = v14;
      v45[5] = v32;
      v45[6] = v33;
      v45[7] = v34;
      inputShadingImage = self->inputShadingImage;
      v46[0] = self->inputImage;
      v46[1] = inputShadingImage;
      v46[2] = [MEMORY[0x1E696AD98] numberWithFloat:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0 / v9))];
      v46[3] = v7;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
      v26 = v45;
      v27 = v35;
      v28 = v37;
      v29 = v39;
      v30 = v41;
      v31 = v44;
    }

    else
    {
      v15 = [(CIShadedMaterial *)self _CIShadedmaterial];
      [(CIImage *)self->inputImage extent];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v24 = self->inputShadingImage;
      v47[0] = self->inputImage;
      v47[1] = v24;
      v47[2] = v7;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:3];
      v26 = &__block_literal_global_63;
      v27 = v15;
      v28 = v17;
      v29 = v19;
      v30 = v21;
      v31 = v23;
    }

    return [v27 applyWithExtent:v26 roiCallback:v25 arguments:{v28, v29, v30, v31}];
  }

  return result;
}

double __31__CIShadedMaterial_outputImage__block_invoke_2(uint64_t a1, int a2, double a3, double a4, double a5, double a6)
{
  if (a2)
  {
    return *(a1 + 32);
  }

  *&result = CGRectInset(*&a3, -1.0, -1.0);
  return result;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryStylize";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryHighDynamicRange";
  v5[4] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"9";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084928;
  v4[1] = &unk_1F1084938;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084948;
  v4[3] = &unk_1F1084958;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end