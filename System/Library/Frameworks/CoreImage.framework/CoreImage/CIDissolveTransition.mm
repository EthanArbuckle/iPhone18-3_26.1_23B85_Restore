@interface CIDissolveTransition
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIDissolveTransition

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryTransition";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryInterlaced";
  v5[4] = @"CICategoryNonSquarePixels";
  v5[5] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v7[1] = @"6";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputTime";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1083478;
  v4[1] = &unk_1F1083478;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083488;
  v4[3] = &unk_1F1083478;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeTime";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v53[3] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputTime floatValue];
  v4 = v3;
  if (v3 <= 0.01)
  {
    v27 = 80;
LABEL_8:
    v28 = *(&self->super.super.isa + v27);

    return v28;
  }

  if (v3 >= 0.99)
  {
    v27 = 88;
    goto LABEL_8;
  }

  inputTargetImage = self->inputTargetImage;
  if (self->inputImage)
  {
    if (inputTargetImage)
    {
      v6 = [(CIDissolveTransition *)self _kernel];
      [(CIImage *)self->inputImage extent];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(CIImage *)self->inputTargetImage extent];
      v57.origin.x = v15;
      v57.origin.y = v16;
      v57.size.width = v17;
      v57.size.height = v18;
      v55.origin.x = v8;
      v55.origin.y = v10;
      v55.size.width = v12;
      v55.size.height = v14;
      v56 = CGRectUnion(v55, v57);
      x = v56.origin.x;
      y = v56.origin.y;
      width = v56.size.width;
      height = v56.size.height;
      inputImage = self->inputImage;
      v53[0] = self->inputTargetImage;
      v53[1] = inputImage;
      v53[2] = self->inputTime;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v53;
      v26 = 3;
    }

    else
    {
      v6 = [(CIDissolveTransition *)self _fadeKernel];
      [(CIImage *)self->inputImage extent];
      x = v45;
      y = v46;
      width = v47;
      height = v48;
      inputTime = self->inputTime;
      v50 = self->inputImage;
      v51 = inputTime;
      v24 = MEMORY[0x1E695DEC8];
      v25 = &v50;
      v26 = 2;
    }

    v39 = [v24 arrayWithObjects:v25 count:{v26, v50, v51}];
    v40 = v6;
    v41 = x;
    v42 = y;
    v43 = width;
    v44 = height;
    return [v40 applyWithExtent:v39 arguments:{v41, v42, v43, v44}];
  }

  if (inputTargetImage)
  {
    v30 = [(CIDissolveTransition *)self _fadeKernel];
    [(CIImage *)self->inputTargetImage extent];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v52[0] = self->inputTargetImage;
    v52[1] = [MEMORY[0x1E696AD98] numberWithDouble:1.0 - v4];
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
    v40 = v30;
    v41 = v32;
    v42 = v34;
    v43 = v36;
    v44 = v38;
    return [v40 applyWithExtent:v39 arguments:{v41, v42, v43, v44}];
  }

  return 0;
}

@end