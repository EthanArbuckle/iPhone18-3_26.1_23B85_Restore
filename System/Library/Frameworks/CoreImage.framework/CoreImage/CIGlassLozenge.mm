@interface CIGlassLozenge
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIGlassLozenge

- (id)outputImage
{
  v50[8] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius floatValue];
  v4 = v3;
  [(NSNumber *)self->inputRefraction floatValue];
  if (fabsf(v4) >= 0.001 && (v6 = self->inputPoint0) != 0 && self->inputPoint1 && (v7 = fmaxf(v5, 0.0001), fabsf(v7 + -1.0) >= 0.001))
  {
    [(CIVector *)v6 X];
    *&v10 = v10;
    v46 = *&v10;
    [(CIVector *)self->inputPoint0 Y];
    *&v12 = v11;
    r2 = *&v12;
    v45 = __PAIR64__(v12, LODWORD(v46));
    [(CIVector *)self->inputPoint1 X];
    *&v13 = v13;
    v42 = *&v13;
    [(CIVector *)self->inputPoint1 Y];
    v15 = v14;
    v44 = __PAIR64__(LODWORD(v15), LODWORD(v42));
    v16 = v4;
    v17 = v46 - v42;
    if (v46 >= v42)
    {
      v18 = v42;
    }

    else
    {
      v17 = v42 - v46;
      v18 = v46;
    }

    v47 = v17 + v16 * 2.0;
    v43 = (v18 - v4);
    v19 = r2 - v15;
    if (r2 < v15)
    {
      v19 = v15 - r2;
      v15 = r2;
    }

    v20 = (v15 - v4);
    [(CIVector *)self->inputPoint0 X];
    v22 = v21;
    [(CIVector *)self->inputPoint1 X];
    v24 = v22 - v23;
    [(CIVector *)self->inputPoint0 Y];
    v26 = v25;
    [(CIVector *)self->inputPoint1 Y];
    v28 = v26 - v27;
    v29 = sqrtf((v28 * v28) + (v24 * v24));
    if (v29 == 0.0)
    {
      v30 = v29;
    }

    else
    {
      v30 = 1.0 / v29;
    }

    v31 = [CIVector vectorWithX:(v30 * v24) Y:(v30 * v28)];
    v32 = [CIVector vectorWithX:-(v30 * v28) Y:(v30 * v24)];
    v33 = [(CIGlassLozenge *)self _CILozengeRefraction];
    [(CIImage *)self->inputImage extent];
    v54.origin.x = v43;
    v54.origin.y = v20;
    v54.size.width = v47;
    v54.size.height = r2a;
    v53 = CGRectUnion(v52, v54);
    x = v53.origin.x;
    y = v53.origin.y;
    width = v53.size.width;
    height = v53.size.height;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __29__CIGlassLozenge_outputImage__block_invoke;
    v48[3] = &__block_descriptor_52_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v48[4] = v45;
    v48[5] = v44;
    v49 = v4;
    inputPoint0 = self->inputPoint0;
    v50[0] = self->inputImage;
    v50[1] = inputPoint0;
    inputRadius = self->inputRadius;
    v50[2] = self->inputPoint1;
    v50[3] = inputRadius;
    v50[4] = v31;
    v50[5] = v32;
    v50[6] = [MEMORY[0x1E696AD98] numberWithFloat:{COERCE_DOUBLE(__PAIR64__(HIDWORD(v44), LODWORD(v7)))}];
    v50[7] = [MEMORY[0x1E696AD98] numberWithDouble:v16 + v16];
    return [v33 applyWithExtent:v48 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v50, 8), x, y, width, height}];
  }

  else
  {
    v8 = self->inputImage;

    return v8;
  }
}

CGFloat __29__CIGlassLozenge_outputImage__block_invoke(float32x2_t *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1[4];
  v10 = a1[5];
  if (vcgt_f32(v10, v9).u8[0])
  {
    LODWORD(v11) = a1[4];
  }

  else
  {
    LODWORD(v11) = a1[5];
  }

  v12 = v11;
  if (vcgt_f32(v9, v10).u8[0])
  {
    LODWORD(v13) = a1[4];
  }

  else
  {
    LODWORD(v13) = a1[5];
  }

  v14 = v13 - v12;
  v15 = vcvtq_f64_f32(vbsl_s8(vcgt_f32(vzip2_s32(v9, v10), vzip2_s32(v10, v9)), vdup_lane_s32(v9, 1), vdup_lane_s32(v10, 1)));
  v16 = v15.f64[1];
  v15.f64[0] = v15.f64[0] - v15.f64[1];
  v17 = -a1[6].f32[0];
  v28 = CGRectInset(*&v12, v17, v17);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  r1 = a5;
  v24.size.height = a5;
  v25 = CGRectIntersection(v24, v28);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;
  if (!CGRectIsEmpty(v25))
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v29 = CGRectInset(v26, v17 + v17, v17 + v17);
    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = r1;
    *&a2 = CGRectUnion(v27, v29);
  }

  return a2;
}

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryDistortionEffect";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:4];
  v13[1] = @"9";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.4";
  v12[3] = @"inputPoint0";
  v9[0] = @"CIAttributeType";
  v9[1] = @"CIAttributeDefault";
  v10[0] = @"CIAttributeTypePosition";
  v10[1] = [CIVector vectorWithX:150.0 Y:150.0];
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v12[4] = @"inputPoint1";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypePosition";
  v7[0] = @"CIAttributeType";
  v8[1] = [CIVector vectorWithX:350.0 Y:150.0];
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v12[5] = @"inputRefraction";
  v5[0] = @"CIAttributeType";
  v5[1] = @"CIAttributeMin";
  v6[0] = @"CIAttributeTypeScalar";
  v6[1] = &unk_1F1081EA8;
  v5[2] = @"CIAttributeSliderMin";
  v5[3] = @"CIAttributeSliderMax";
  v6[2] = &unk_1F1083EC8;
  v6[3] = &unk_1F1083ED8;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeDefault";
  v6[4] = &unk_1F1083EE8;
  v6[5] = &unk_1F1083EF8;
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[6] = @"inputRadius";
  v3[0] = @"CIAttributeType";
  v3[1] = @"CIAttributeMin";
  v4[0] = @"CIAttributeTypeDistance";
  v4[1] = &unk_1F1083EC8;
  v3[2] = @"CIAttributeSliderMin";
  v3[3] = @"CIAttributeSliderMax";
  v4[2] = &unk_1F1083EC8;
  v4[3] = &unk_1F1083F08;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1083F18;
  v4[5] = &unk_1F1083F18;
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

@end