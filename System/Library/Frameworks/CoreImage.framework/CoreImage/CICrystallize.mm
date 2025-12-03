@interface CICrystallize
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICrystallize

- (id)outputImage
{
  v20[4] = *MEMORY[0x1E69E9840];
  [(CIImage *)self->inputImage extent];
  if (CGRectIsEmpty(v22))
  {

    return +[CIImage emptyImage];
  }

  else
  {
    [(NSNumber *)self->inputRadius floatValue];
    if (v4 >= 1.0)
    {
      v5 = round(v4 * 0.5);
      v6 = v5 + v5;
      [(CIVector *)self->inputCenter X];
      v8 = round(v7);
      [(CIVector *)self->inputCenter Y];
      v10 = [CIVector vectorWithX:v8 Y:round(v9)];
      v11 = +[CIImage noiseImageNearest];
      [(CIImage *)self->inputImage extent];
      v24 = CGRectInset(v23, v6 * -1.5, v6 * -1.5);
      x = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
      _CICrystallize = [(CICrystallize *)self _CICrystallize];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __28__CICrystallize_outputImage__block_invoke;
      v18[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      inputImage = self->inputImage;
      *&v19 = v6;
      v20[2] = [CIVector vectorWithX:v6 Y:1.0 / v6, MEMORY[0x1E69E9820], 3221225472, __28__CICrystallize_outputImage__block_invoke, &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l, v19, inputImage, v11];
      v20[3] = v10;
      return [_CICrystallize applyWithExtent:v18 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v20, 4), x, y, width, height}];
    }

    else
    {
      return self->inputImage;
    }
  }
}

double __28__CICrystallize_outputImage__block_invoke(uint64_t a1, int a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2 == 1)
  {
    return 0.0;
  }

  v9 = a3;
  if (!a2)
  {
    v16 = *(a1 + 32);
    v15 = CGRectGetMinX(*&a3) + 0.5;
    v17.origin.x = v9;
    v17.origin.y = a4;
    v17.size.width = a5;
    v17.size.height = a6;
    v10 = CGRectGetMinY(v17) + 0.5;
    v18.origin.x = v9;
    v18.origin.y = a4;
    v18.size.width = a5;
    v18.size.height = a6;
    v11 = CGRectGetMaxX(v18) + -0.5;
    v19.origin.x = v9;
    v19.origin.y = a4;
    v19.size.width = a5;
    v19.size.height = a6;
    v12 = CGRectGetMaxY(v19) + -0.5;
    v20.origin.x = (floor(v15 / v16 + -0.5) + 0.5) * v16 + 0.5;
    v20.origin.y = (floor(v10 / v16 + -0.5) + 0.5) * v16 + 0.5;
    v13 = (floor(v12 / v16 + -0.5) + 0.5) * v16 + 0.5 + v16;
    v20.size.width = (floor(v11 / v16 + -0.5) + 0.5) * v16 + 0.5 + v16 - v20.origin.x;
    v20.size.height = v13 - v20.origin.y;
    *&v9 = CGRectInset(v20, v16 * -0.325, v16 * -0.325);
  }

  return v9;
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
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083218;
  v4[3] = &unk_1F1083228;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[0] = &unk_1F1083208;
  v4[1] = &unk_1F1083208;
  v4[4] = &unk_1F1083208;
  v4[5] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end