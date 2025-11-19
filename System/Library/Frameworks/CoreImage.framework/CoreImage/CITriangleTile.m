@interface CITriangleTile
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CITriangleTile

- (id)outputImage
{
  v56[4] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputWidth floatValue];
  v4 = v3;
  [(NSNumber *)self->inputAngle floatValue];
  v6 = v5;
  v7 = v4;
  v52 = v5;
  v8 = __sincos_stret(v5 + 0.523598776);
  v9 = v8.__cosval * v4;
  v10 = v8.__sinval * v4;
  v11 = v4 / 1.73205081;
  v12 = __sincosf_stret(v6);
  [(CIVector *)self->inputCenter X];
  v14 = v13;
  [(CIVector *)self->inputCenter Y];
  v16 = v15;
  v17 = v14 + (v12.__cosval * v11);
  v18 = v16 + (v12.__sinval * v11);
  v19 = v18;
  v20 = (v12.__cosval * v11) + v17;
  v21 = (v12.__sinval * v11) + v18;
  v22 = v9;
  v23 = v14 + v9;
  v54 = v10;
  v24 = v10 + v16;
  v25 = v20 < v17;
  v26 = v20 <= v17;
  v27 = v20;
  if (v26)
  {
    v28 = v14 + (v12.__cosval * v11);
  }

  else
  {
    v28 = v27;
  }

  if (v25)
  {
    v28 = v14 + (v12.__cosval * v11);
  }

  if (v25)
  {
    v17 = v27;
  }

  if (v21 >= v19)
  {
    if (v21 <= v19)
    {
      v29 = v18;
    }

    else
    {
      v29 = v21;
    }
  }

  else
  {
    v29 = v18;
    v18 = v21;
  }

  if (v23 > v28)
  {
    v30 = v14 + v9;
  }

  else
  {
    v30 = v28;
  }

  if (v23 >= v17)
  {
    v31 = v30;
  }

  else
  {
    v31 = v28;
  }

  if (v23 >= v17)
  {
    v32 = v17;
  }

  else
  {
    v32 = v14 + v9;
  }

  if (v24 > v29)
  {
    v33 = v24;
  }

  else
  {
    v33 = v29;
  }

  if (v24 >= v18)
  {
    v34 = v33;
  }

  else
  {
    v34 = v29;
  }

  if (v24 >= v18)
  {
    v35 = v18;
  }

  else
  {
    v35 = v24;
  }

  v36 = __sincos_stret(v52 + -0.523598776);
  v37 = v36.__cosval * v7;
  v38 = v36.__sinval * v7;
  v39 = 1.0 / ((v37 * v54) - (v38 * v22));
  v51 = -(v22 * v39);
  v53 = v39 * v37;
  v49 = v39 * v54;
  v50 = -(v38 * v39);
  v40 = [CIVector vectorWithX:v32 Y:v35 Z:(v31 - v32) W:(v34 - v35)];
  v41 = [(CITriangleTile *)self _CITriangleTile];
  v42 = *MEMORY[0x1E695F040];
  v43 = *(MEMORY[0x1E695F040] + 8);
  v45 = *(MEMORY[0x1E695F040] + 16);
  v44 = *(MEMORY[0x1E695F040] + 24);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __29__CITriangleTile_outputImage__block_invoke;
  v55[3] = &unk_1E75C24D8;
  inputImage = self->inputImage;
  inputCenter = self->inputCenter;
  v55[4] = v40;
  v56[0] = inputImage;
  v56[1] = inputCenter;
  v56[2] = [CIVector vectorWithX:v49 Y:v51 Z:v50 W:v53];
  v56[3] = [CIVector vectorWithX:v37 Y:v22 Z:v38 W:v54];
  return [v41 applyWithExtent:v55 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v56, 4), v42, v43, v45, v44}];
}

double __29__CITriangleTile_outputImage__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 X];
  v3 = v2 + -1.0;
  [v1 Y];
  [v1 Z];
  [v1 W];
  return v3;
}

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryTileEffect";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"9";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputWidth";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084F38;
  v4[1] = &unk_1F1084F48;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084F58;
  v4[3] = &unk_1F1084F68;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeDistance";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

@end