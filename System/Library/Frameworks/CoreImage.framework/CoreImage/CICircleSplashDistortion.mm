@interface CICircleSplashDistortion
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICircleSplashDistortion

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryDistortionEffect";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
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
  v8[4] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082E38;
  v4[1] = &unk_1F1082E38;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082E48;
  v4[3] = &unk_1F1082E58;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeDistance";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

- (id)outputImage
{
  v25[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(CIVector *)self->inputCenter X];
  v4 = v3;
  [(CIVector *)self->inputCenter Y];
  v6 = v5;
  [(NSNumber *)self->inputRadius floatValue];
  v8 = fmax(v7, 0.0);
  if (v8 >= 0.001)
  {
    *&v11 = v4;
    v12 = v6;
    v22 = *&v11;
    v23 = v12;
    *(&v11 + 1) = v12;
    v21 = v11;
    _kernel = [(CICircleSplashDistortion *)self _kernel];
    v14 = *MEMORY[0x1E695F040];
    v15 = *(MEMORY[0x1E695F040] + 8);
    v16 = *(MEMORY[0x1E695F040] + 16);
    v17 = *(MEMORY[0x1E695F040] + 24);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __39__CICircleSplashDistortion_outputImage__block_invoke;
    v24[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v24[4] = v21;
    *&v24[5] = v8;
    inputImage = self->inputImage;
    v19 = [CIVector vectorWithX:v22 Y:v23];
    inputRadius = self->inputRadius;
    v25[0] = v19;
    v25[1] = inputRadius;
    return [_kernel applyWithExtent:v24 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v25, 2), v14, v15, v16, v17}];
  }

  else
  {
    v9 = self->inputImage;

    return v9;
  }
}

double __39__CICircleSplashDistortion_outputImage__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.origin.x = COERCE_FLOAT(*(a1 + 32)) - v1;
  v3.origin.y = COERCE_FLOAT(HIDWORD(*(a1 + 32))) - v1;
  v3.size.width = v1 + v1;
  v3.size.height = v3.size.width;
  *&result = CGRectInset(v3, -1.0, -1.0);
  return result;
}

@end