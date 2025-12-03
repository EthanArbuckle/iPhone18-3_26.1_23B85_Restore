@interface CITorusLensDistortion
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CITorusLensDistortion

- (id)outputImage
{
  v39[7] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius floatValue];
  v4 = v3;
  [(NSNumber *)self->inputWidth floatValue];
  v6 = v5;
  [(NSNumber *)self->inputRefraction floatValue];
  v8 = v7;
  if (fabsf(v4) >= 0.001 && ([(NSNumber *)self->inputWidth floatValue], fabsf(v9) >= 0.001) && (v10 = fmaxf(v8, 0.0001), fabsf(v10 + -1.0) >= 0.001))
  {
    v13 = v4;
    v14 = (1.0 - (v6 / v4)) * v4;
    *&v15 = 2.0 / (v4 - v14);
    v16 = -(v4 + v14) / (v4 - v14);
    v37 = (v4 - v14) * 0.5;
    [(CIVector *)self->inputCenter X];
    v36 = v17;
    [(CIVector *)self->inputCenter Y];
    v18.f64[0] = v36;
    v18.f64[1] = v19;
    v20 = vcvt_f32_f64(v18);
    [(CIVector *)self->inputCenter X];
    v22 = v21 - v13;
    [(CIVector *)self->inputCenter Y];
    v24 = v23 - v13;
    _CITorusRefraction = [(CITorusLensDistortion *)self _CITorusRefraction];
    [(CIImage *)self->inputImage extent];
    v43.origin.x = v22;
    v43.origin.y = v24;
    v43.size.width = v13 + v13;
    v43.size.height = v13 + v13;
    v42 = CGRectUnion(v41, v43);
    x = v42.origin.x;
    y = v42.origin.y;
    width = v42.size.width;
    height = v42.size.height;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __36__CITorusLensDistortion_outputImage__block_invoke;
    v38[3] = &unk_1E75C1C40;
    v38[5] = v20;
    v38[4] = self;
    inputCenter = self->inputCenter;
    v39[0] = self->inputImage;
    v39[1] = inputCenter;
    v39[2] = [MEMORY[0x1E696AD98] numberWithFloat:COERCE_DOUBLE(v15)];
    *&v31 = v16;
    v39[3] = [MEMORY[0x1E696AD98] numberWithFloat:v31];
    *&v32 = v37;
    v39[4] = [MEMORY[0x1E696AD98] numberWithFloat:v32];
    *&v33 = v10;
    v34 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
    inputWidth = self->inputWidth;
    v39[5] = v34;
    v39[6] = inputWidth;
    return [_CITorusRefraction applyWithExtent:v38 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v39, 7), x, y, width, height}];
  }

  else
  {
    v11 = self->inputImage;

    return v11;
  }
}

CGFloat __36__CITorusLensDistortion_outputImage__block_invoke(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v19 = *(a1 + 40);
  [*(*(a1 + 32) + 96) floatValue];
  v11 = v10;
  [*(*(a1 + 32) + 104) floatValue];
  v18 = v12;
  v24.origin.x = (*&v19 - v11);
  v24.origin.y = (*(&v19 + 1) - v11);
  v24.size.width = v11 + v11;
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v24.size.height = v24.size.width;
  v21 = CGRectIntersection(v20, v24);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  if (!CGRectIsEmpty(v21))
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v25 = CGRectInset(v22, v18 * -5.0, v18 * -5.0);
    v23.origin.x = a2;
    v23.origin.y = a3;
    v23.size.width = a4;
    v23.size.height = a5;
    *&a2 = CGRectUnion(v23, v25);
  }

  return a2;
}

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryDistortionEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"9";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.4";
  v10[3] = @"inputRefraction";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeMin";
  v8[0] = @"CIAttributeTypeScalar";
  v8[1] = &unk_1F1083EC8;
  v7[2] = @"CIAttributeSliderMin";
  v7[3] = @"CIAttributeSliderMax";
  v8[2] = &unk_1F1083EC8;
  v8[3] = &unk_1F1083ED8;
  v7[4] = @"CIAttributeDefault";
  v7[5] = @"CIAttributeIdentity";
  v8[4] = &unk_1F1083EF8;
  v8[5] = &unk_1F1083EE8;
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v10[4] = @"inputWidth";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1083EC8;
  v6[1] = &unk_1F1083EC8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1083F28;
  v6[3] = &unk_1F1083F38;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1083EC8;
  v6[5] = @"CIAttributeTypeDistance";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1083EC8;
  v4[1] = &unk_1F1083EC8;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083F48;
  v4[3] = &unk_1F1083F58;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1083EC8;
  v4[5] = @"CIAttributeTypeDistance";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

@end