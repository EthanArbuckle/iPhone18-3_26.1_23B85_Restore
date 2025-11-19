@interface CICheapBlur
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CICheapBlur

- (id)outputImage
{
  v44[2] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputPasses floatValue];
  v4 = v3;
  [(NSNumber *)self->inputSampling floatValue];
  v6 = v5;
  v7 = floorf(v4);
  v8 = (v7 + 1.0);
  inputImage = self->inputImage;
  v10 = v5 != 1.0 && v5 != 0.0;
  if (v10)
  {
    CGAffineTransformMakeScale(&v42, (1.0 / v5), (1.0 / v5));
    inputImage = [(CIImage *)inputImage imageByApplyingTransform:&v42];
  }

  if (v8 >= 1)
  {
    v38 = v10;
    v39 = v6;
    v37 = roundf((v4 - v7) * 10.0) / 10.0;
    v11 = 1.0;
    v12 = 1.0;
    do
    {
      v13 = inputImage;
      v14 = v11;
      v15 = [CIVector vectorWithX:(v12 * v11) / 3.0 Y:v11 / 3.0];
      [(CIImage *)v13 extent];
      v46 = CGRectInset(v45, -v11 * 4.0 / 3.0, -v11 * 4.0 / 3.0);
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v20 = v11 * 4.0 / 3.0;
      v21 = [(CICheapBlur *)self _CICheapBlur];
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __26__CICheapBlur_outputImage__block_invoke;
      v40[3] = &__block_descriptor_36_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
      v41 = v20;
      v44[0] = v13;
      v44[1] = v15;
      inputImage = [v21 applyWithExtent:v40 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v44, 2), x, y, width, height}];
      v11 = v14 * 1.4142;
      v12 = -v12;
      --v8;
    }

    while (v8);
    if (v13)
    {
      if (fabsf(v37) >= 0.01)
      {
        if (fabsf(v37 + -1.0) >= 0.01)
        {
          v22 = [CIVector vectorWithX:v37];
          v47.origin.x = x;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = height;
          if (CGRectIsEmpty(v47))
          {
            [(CIImage *)inputImage extent];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            [(CIImage *)v13 extent];
            v50.origin.x = v31;
            v50.origin.y = v32;
            v50.size.width = v33;
            v50.size.height = v34;
            v48.origin.x = v24;
            v48.origin.y = v26;
            v48.size.width = v28;
            v48.size.height = v30;
            v49 = CGRectUnion(v48, v50);
            x = v49.origin.x;
            y = v49.origin.y;
            width = v49.size.width;
            height = v49.size.height;
          }

          v35 = [(CICheapBlur *)self _CILerp];
          v43[0] = inputImage;
          v43[1] = v13;
          v43[2] = v22;
          inputImage = [v35 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v43, 3), x, y, width, height}];
        }
      }

      else
      {
        inputImage = v13;
      }
    }

    v6 = v39;
    v10 = v38;
  }

  if (v10)
  {
    CGAffineTransformMakeScale(&v42, v6, v6);
    inputImage = [(CIImage *)inputImage imageByApplyingTransform:&v42];
  }

  return inputImage;
}

+ (id)customAttributes
{
  v9[3] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryBlur";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v7[4] = @"CICategoryApplePrivate";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v8[1] = @"inputPasses";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1082D38;
  v6[1] = &unk_1F1082D38;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1082D48;
  v6[3] = &unk_1F1082D58;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1082D38;
  v6[5] = @"CIAttributeTypeDistance";
  v9[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[2] = @"inputSampling";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082D68;
  v4[1] = &unk_1F1082D68;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1082D48;
  v4[3] = &unk_1F1082D68;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1082D68;
  v4[5] = @"CIAttributeTypeDistance";
  v9[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];
}

@end