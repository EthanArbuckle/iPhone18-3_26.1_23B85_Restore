@interface CIPixellate
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIPixellate

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryStylize";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryHighDynamicRange";
  v7[4] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v9[1] = @"6";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"10.4";
  v8[3] = @"inputCenter";
  v5[0] = @"CIAttributeDefault";
  v5[1] = @"CIAttributeType";
  v6[0] = [CIVector vectorWithX:150.0 Y:150.0];
  v6[1] = @"CIAttributeTypePosition";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v8[4] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084638;
  v4[1] = &unk_1F1084638;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084648;
  v4[3] = &unk_1F1084658;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeDistance";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputScale floatValue];
  v4 = v3;
  v5 = [CIVector vectorWithX:(1.0 / v3) Y:v3];
  [(CIVector *)self->inputCenter X];
  *&v6 = v6;
  v18 = *&v6;
  [(CIVector *)self->inputCenter Y];
  *&v7 = v7;
  v16 = __PAIR64__(LODWORD(v7), LODWORD(v18));
  v17 = *&v7;
  [(CIImage *)self->inputImage extent];
  v8 = -floor(v4 * 0.5);
  v23 = CGRectInset(v22, v8, v8);
  v24 = CGRectIntegral(v23);
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  v13 = [(CIPixellate *)self _kernel];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __26__CIPixellate_outputImage__block_invoke;
  v19[3] = &__block_descriptor_44_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v19[4] = v16;
  v20 = v4;
  inputImage = self->inputImage;
  v21[0] = [CIVector vectorWithX:v18 Y:v17];
  v21[1] = v5;
  return [v13 applyWithExtent:v19 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v21, 2), x, y, width, height}];
}

double __26__CIPixellate_outputImage__block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v14 = *&v5;
  v6 = *(a1 + 40);
  v7 = *(&v5 + 1);
  v16 = CGRectOffset(*&a2, -*&v5, -*(&v5 + 1));
  v8 = v6;
  v16.origin.x = v16.origin.x / v8;
  v16.origin.y = v16.origin.y / v8;
  v16.size.width = v16.size.width / v8;
  v16.size.height = v16.size.height / v8;
  v17 = CGRectOffset(v16, 0.5, 0.5);
  v18 = CGRectIntegral(v17);
  v9 = v18.origin.x * v8;
  v10 = v18.origin.y * v8;
  v11 = v18.size.width * v8;
  v12 = v18.size.height * v8;

  *&result = CGRectOffset(*&v9, v14, v7);
  return result;
}

@end