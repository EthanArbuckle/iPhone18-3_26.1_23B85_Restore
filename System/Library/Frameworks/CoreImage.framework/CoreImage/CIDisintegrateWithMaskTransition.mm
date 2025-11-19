@interface CIDisintegrateWithMaskTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDisintegrateWithMaskTransition

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryTransition";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"6";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.4";
  v10[3] = @"inputShadowRadius";
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v8[0] = &unk_1F1083378;
  v8[1] = &unk_1F1083378;
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1083388;
  v8[3] = &unk_1F1083398;
  v7[4] = @"CIAttributeType";
  v8[4] = @"CIAttributeTypeDistance";
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[4] = @"inputShadowDensity";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeMax";
  v6[0] = &unk_1F1083378;
  v6[1] = &unk_1F10833A8;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1083378;
  v6[3] = &unk_1F10833A8;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeIdentity";
  v6[4] = &unk_1F10833B8;
  v6[5] = &unk_1F1083378;
  v5[6] = @"CIAttributeType";
  v6[6] = @"CIAttributeTypeScalar";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v10[5] = @"inputShadowOffset";
  v3[0] = @"CIAttributeDefault";
  v4[0] = [CIVector vectorWithX:0.0 Y:-10.0];
  v3[1] = @"CIAttributeIdentity";
  v3[2] = @"CIAttributeType";
  v4[1] = [CIVector vectorWithX:0.0 Y:0.0];
  v4[2] = @"CIAttributeTypeOffset";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:3];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v37[7] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputTargetImage || !self->inputMaskImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputTime floatValue];
  if (v3 <= 0.0)
  {
    return self->inputImage;
  }

  if (v3 >= 1.0)
  {
    return self->inputTargetImage;
  }

  v4 = v3;
  [(CIImage *)self->inputImage extent];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(CIImage *)self->inputTargetImage extent];
  v40.origin.x = v13;
  v40.origin.y = v14;
  v40.size.width = v15;
  v40.size.height = v16;
  v38.origin.x = v6;
  v38.origin.y = v8;
  v38.size.width = v10;
  v38.size.height = v12;
  v39 = CGRectUnion(v38, v40);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  [(NSNumber *)self->inputShadowRadius floatValue];
  v22 = 1.0 / v21;
  [(NSNumber *)self->inputShadowDensity floatValue];
  v24 = [CIVector vectorWithX:0.25 Y:v22 Z:v23 W:v4];
  [(CIVector *)self->inputShadowOffset X];
  *&v4 = v25;
  [(CIVector *)self->inputShadowOffset Y];
  *&v22 = v26;
  inputMaskImage = self->inputMaskImage;
  CGAffineTransformMakeTranslation(&v36, 1.0, 0.0);
  v28 = [(CIImage *)inputMaskImage imageByApplyingTransform:&v36];
  v29 = self->inputMaskImage;
  CGAffineTransformMakeTranslation(&v36, 0.0, 1.0);
  v30 = [(CIImage *)v29 imageByApplyingTransform:&v36];
  v31 = self->inputMaskImage;
  CGAffineTransformMakeTranslation(&v36, *&v4, *&v22);
  v32 = [(CIImage *)v31 imageByApplyingTransform:&v36];
  v33 = [(CIDisintegrateWithMaskTransition *)self _kernel];
  inputTargetImage = self->inputTargetImage;
  v37[0] = self->inputImage;
  v37[1] = inputTargetImage;
  v37[2] = self->inputMaskImage;
  v37[3] = v28;
  v37[4] = v30;
  v37[5] = v32;
  v37[6] = v24;
  return [v33 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v37, 7), x, y, width, height}];
}

@end