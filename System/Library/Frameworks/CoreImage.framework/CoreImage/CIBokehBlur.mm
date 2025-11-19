@interface CIBokehBlur
+ (id)customAttributes;
- (id)outputImage;
- (void)dealloc;
- (void)setValue:(id)a3 forKey:(id)a4;
@end

@implementation CIBokehBlur

- (void)dealloc
{
  recipe = self->_recipe;
  if (recipe)
  {
  }

  self->_recipe = 0;
  v4.receiver = self;
  v4.super_class = CIBokehBlur;
  [(CIFilter *)&v4 dealloc];
}

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryBlur";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"11";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.13";
  v12[3] = @"inputRadius";
  v9[0] = @"CIAttributeDefault";
  v9[1] = @"CIAttributeMin";
  v10[0] = &unk_1F10832A8;
  v10[1] = &unk_1F10832B8;
  v9[2] = @"CIAttributeSliderMin";
  v9[3] = @"CIAttributeSliderMax";
  v10[2] = &unk_1F10832B8;
  v10[3] = &unk_1F10832C8;
  v9[4] = @"CIAttributeMax";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F10832D8;
  v10[5] = @"CIAttributeTypeDistance";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[4] = @"inputRingAmount";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeMin";
  v8[0] = &unk_1F10832B8;
  v8[1] = &unk_1F10832B8;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F10832B8;
  v8[3] = &unk_1F10832E8;
  v7[4] = @"CIAttributeMax";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F10832E8;
  v8[5] = @"CIAttributeTypeScalar";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[5] = @"inputRingSize";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeMin";
  v6[0] = &unk_1F10832F8;
  v6[1] = &unk_1F10832B8;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F10832B8;
  v6[3] = &unk_1F1083308;
  v5[4] = @"CIAttributeMax";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1083308;
  v6[5] = @"CIAttributeTypeScalar";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[6] = @"inputSoftness";
  v3[0] = @"CIAttributeDefault";
  v3[1] = @"CIAttributeMin";
  v4[0] = &unk_1F10832E8;
  v4[1] = &unk_1F10832B8;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083318;
  v4[3] = &unk_1F1083328;
  v3[4] = @"CIAttributeMax";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1083338;
  v4[5] = @"CIAttributeTypeScalar";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (void)setValue:(id)a3 forKey:(id)a4
{
  if (([a4 isEqualToString:@"inputImage"] & 1) == 0)
  {

    self->_recipe = 0;
  }

  v7.receiver = self;
  v7.super_class = CIBokehBlur;
  [(CIBokehBlur *)&v7 setValue:a3 forKey:a4];
}

- (id)outputImage
{
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v18))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    [(NSNumber *)self->inputRadius floatValue];
    v5 = v4;
    if (v4 <= 0.0001)
    {
      v16 = self->inputImage;

      return v16;
    }

    else
    {
      [(NSNumber *)self->inputRingAmount floatValue];
      v7 = v6;
      [(NSNumber *)self->inputRingSize floatValue];
      v9 = v8;
      [(NSNumber *)self->inputSoftness floatValue];
      recipe = self->_recipe;
      if (!recipe)
      {
        v13 = v10;
        v14 = 500.0;
        if (v5 <= 500.0)
        {
          v14 = v5;
        }

        recipe = makeRecipe(v14, v7, 1.0 - v9, v13, v11);
        self->_recipe = recipe;
      }

      inputImage = self->inputImage;

      return applyRecipe(&recipe->super, inputImage);
    }
  }
}

@end