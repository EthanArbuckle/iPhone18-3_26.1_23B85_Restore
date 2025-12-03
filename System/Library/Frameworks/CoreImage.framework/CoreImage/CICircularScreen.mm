@interface CICircularScreen
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICircularScreen

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryHalftoneEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"6";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.4";
  v10[3] = @"inputCenter";
  v7[0] = @"CIAttributeDefault";
  v7[1] = @"CIAttributeType";
  v8[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v8[1] = @"CIAttributeTypePosition";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083CD8;
  v6[1] = &unk_1F1083CE8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083CF8;
  v6[3] = &unk_1F1083D08;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v10[5] = @"inputSharpness";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeMax";
  v4[0] = &unk_1F1083CC8;
  v4[1] = &unk_1F1083CD8;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083CC8;
  v4[3] = &unk_1F1083CD8;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1083D18;
  v4[5] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputWidth doubleValue];
  v4 = 1.0 / fmax(v3, 1.0);
  [(NSNumber *)self->inputSharpness doubleValue];
  v6 = 1.0 / (1.0 - fmin(fmax(v5, 0.0), 0.99999));
  [(CIVector *)self->inputCenter X];
  v8 = v7;
  [(CIVector *)self->inputCenter Y];
  v10 = [CIVector vectorWithX:v8 Y:v9 Z:v4 W:v6];
  _kernel = [(CICircularScreen *)self _kernel];
  [(CIImage *)self->inputImage extent];
  v17[0] = self->inputImage;
  v17[1] = v10;
  return [_kernel applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v17, 2), v12, v13, v14, v15}];
}

@end