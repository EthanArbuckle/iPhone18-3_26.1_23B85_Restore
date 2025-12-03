@interface CICheatBlur
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICheatBlur

- (id)outputImage
{
  v43[1] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputAmount floatValue];
  v4 = v3;
  inputImage = self->inputImage;
  v6 = 1.0;
  if (v3 >= 9.0)
  {
    do
    {
      [(CIImage *)inputImage extent];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      CGAffineTransformMakeScale(&v40, 0.166666667, 0.166666667);
      v44.origin.x = v8;
      v44.origin.y = v10;
      v44.size.width = v12;
      v44.size.height = v14;
      v45 = CGRectApplyAffineTransform(v44, &v40);
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
      _CIBox6 = [(CICheatBlur *)self _CIBox6];
      v43[0] = inputImage;
      inputImage = [_CIBox6 applyWithExtent:&__block_literal_global_7 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v43, 1), x, y, width, height}];
      v4 = v4 * 0.166666667;
      v6 = v6 * 6.0;
    }

    while (v4 >= 9.0);
  }

  if (v4 >= 6.0)
  {
    [(CIImage *)inputImage extent];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    CGAffineTransformMakeScale(&v40, 0.25, 0.25);
    v46.origin.x = v21;
    v46.origin.y = v23;
    v46.size.width = v25;
    v46.size.height = v27;
    v47 = CGRectApplyAffineTransform(v46, &v40);
    v28 = v47.origin.x;
    v29 = v47.origin.y;
    v30 = v47.size.width;
    v31 = v47.size.height;
    _CIBox4 = [(CICheatBlur *)self _CIBox4];
    v42 = inputImage;
    inputImage = [_CIBox4 applyWithExtent:&__block_literal_global_5 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v42, 1), v28, v29, v30, v31}];
    v4 = v4 * 0.25;
    v6 = v6 * 4.0;
  }

  if (v4 >= 3.0)
  {
    v40.a = 0.5;
    v40.b = 0.0;
    v40.c = 0.0;
    v40.d = 0.5;
    v40.tx = 0.0;
    v40.ty = 0.0;
    inputImage = [(CIImage *)inputImage imageByApplyingTransform:&v40];
    v4 = v4 * 0.5;
    v6 = v6 + v6;
  }

  if (v4 >= 0.0)
  {
    [(CIImage *)inputImage extent];
    v49 = CGRectInset(v48, -2.0, -2.0);
    v33 = v49.origin.x;
    v34 = v49.origin.y;
    v35 = v49.size.width;
    v36 = v49.size.height;
    _CICross4 = [(CICheatBlur *)self _CICross4];
    v41[0] = inputImage;
    v38 = v4 * 0.333333333;
    *&v38 = v4 * 0.333333333;
    v41[1] = [MEMORY[0x1E696AD98] numberWithFloat:v38];
    inputImage = [_CICross4 applyWithExtent:&__block_literal_global_7 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v41, 2), v33, v34, v35, v36}];
  }

  if (v6 > 1.0)
  {
    v40.a = v6;
    v40.b = 0.0;
    v40.c = 0.0;
    v40.d = v6;
    v40.tx = 0.0;
    v40.ty = 0.0;
    return [(CIImage *)inputImage imageByApplyingTransform:&v40];
  }

  return inputImage;
}

double __26__CICheatBlur_outputImage__block_invoke(double a1, double a2, double a3, double a4)
{
  v5.origin.x = a1 * 6.0;
  v5.origin.y = a2 * 6.0;
  v5.size.width = a3 * 6.0;
  v5.size.height = a4 * 6.0;
  *&result = CGRectInset(v5, -3.0, -3.0);
  return result;
}

double __26__CICheatBlur_outputImage__block_invoke_2(double a1, double a2, double a3, double a4)
{
  v5.origin.x = a1 * 4.0;
  v5.origin.y = a2 * 4.0;
  v5.size.width = a3 * 4.0;
  v5.size.height = a4 * 4.0;
  *&result = CGRectInset(v5, -2.0, -2.0);
  return result;
}

+ (id)customAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"CIAttributeFilterCategories";
  v6[0] = @"CICategoryBlur";
  v6[1] = @"CICategoryVideo";
  v6[2] = @"CICategoryStillImage";
  v6[3] = @"CICategoryBuiltIn";
  v6[4] = @"CICategoryApplePrivate";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:5];
  v7[1] = @"inputAmount";
  v8[0] = v2;
  v4[0] = @"CIAttributeMin";
  v4[1] = @"CIAttributeSliderMin";
  v4[2] = @"CIAttributeSliderMax";
  v4[3] = @"CIAttributeDefault";
  v5[2] = &unk_1F1082D88;
  v5[3] = &unk_1F1082D98;
  v4[4] = @"CIAttributeIdentity";
  v4[5] = @"CIAttributeType";
  v5[0] = &unk_1F1082D78;
  v5[1] = &unk_1F1082D78;
  v5[4] = &unk_1F1082D78;
  v5[5] = @"CIAttributeTypeDistance";
  v8[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
}

@end