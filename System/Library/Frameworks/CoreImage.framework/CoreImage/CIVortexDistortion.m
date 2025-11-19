@interface CIVortexDistortion
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIVortexDistortion

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryDistortionEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"6";
  v10[1] = @"CIAttributeFilterAvailable_iOS";
  v10[2] = @"CIAttributeFilterAvailable_Mac";
  v11[2] = @"10.4";
  v10[3] = @"inputCenter";
  v7[0] = @"CIAttributeType";
  v7[1] = @"CIAttributeDefault";
  v8[0] = @"CIAttributeTypePosition";
  v8[1] = [CIVector vectorWithX:150.0 Y:150.0];
  v11[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[4] = @"inputRadius";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F10850D8;
  v6[1] = &unk_1F10850D8;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F10850E8;
  v6[3] = &unk_1F10850F8;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F10850D8;
  v6[5] = @"CIAttributeTypeDistance";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputAngle";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1085108;
  v4[1] = &unk_1F1085118;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1085128;
  v4[3] = &unk_1F10850D8;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeAngle";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputRadius doubleValue];
  *&v3 = v3;
  if (fabsf(*&v3) < 0.001)
  {
    return 1;
  }

  [(NSNumber *)self->inputAngle doubleValue];
  *&v5 = v5;
  return fabsf(*&v5) < 0.001;
}

- (id)outputImage
{
  v35[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage || !self->inputCenter)
  {
    return 0;
  }

  if ([(CIVortexDistortion *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(NSNumber *)self->inputRadius floatValue];
    v6 = v5;
    [(NSNumber *)self->inputAngle floatValue];
    v8 = v7;
    [(CIImage *)self->inputImage extent];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [(CIVector *)self->inputCenter X];
    v18 = v17 - v6;
    [(CIVector *)self->inputCenter Y];
    v39.origin.y = v19 - v6;
    v39.size.width = v6 + v6;
    v37.origin.x = v10;
    v37.origin.y = v12;
    v37.size.width = v14;
    v37.size.height = v16;
    v39.origin.x = v18;
    v39.size.height = v39.size.width;
    v38 = CGRectUnion(v37, v39);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    v24 = [CIVector vectorWithX:1.0 / v6 Y:v8];
    [(CIVector *)self->inputCenter X];
    *&v25 = v25;
    v31 = *&v25;
    [(CIVector *)self->inputCenter Y];
    *&v26 = v26;
    v29 = __PAIR64__(LODWORD(v26), LODWORD(v31));
    v30 = *&v26;
    v27 = [(CIVortexDistortion *)self _kernel];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __33__CIVortexDistortion_outputImage__block_invoke;
    v32[3] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v32[4] = v29;
    v33 = v6;
    v34 = v8;
    inputImage = self->inputImage;
    v35[0] = [CIVector vectorWithX:v31 Y:v30];
    v35[1] = v24;
    return [v27 applyWithExtent:v32 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v35, 2), x, y, width, height}];
  }
}

double __33__CIVortexDistortion_outputImage__block_invoke(float32x2_t *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  v9 = a1[4];
  v10 = a1[5].f32[0];
  v37 = a1[5].f32[1];
  v11 = (v9.f32[0] - v10);
  r2_16 = v9;
  v12 = (v9.f32[1] - v10);
  v13 = a3;
  v52.origin.x = v11;
  v52.origin.y = v12;
  v52.size.width = (v10 + v10);
  v52.size.height = v52.size.width;
  v46 = CGRectIntersection(*&a2, v52);
  if (!CGRectIsEmpty(v46))
  {
    v47.origin.x = v8;
    v47.origin.y = a3;
    v47.size.width = a4;
    v47.size.height = a5;
    v53.origin.x = v11;
    v53.origin.y = v12;
    v53.size.width = (v10 + v10);
    v53.size.height = v53.size.width;
    v14 = CGRectContainsRect(v47, v53);
    v15 = a5;
    v16 = a4;
    v17 = a3;
    if (!v14)
    {
      if (v10 >= 300.0)
      {
        v19 = v8;
        v48 = CGRectIntegral(*(&v17 - 1));
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
        *&v48.origin.y = *(MEMORY[0x1E695F050] + 16);
        v45.origin = *MEMORY[0x1E695F050];
        v45.size = *&v48.origin.y;
        v24 = 1.0 / v10;
        v48.origin.y = y;
        MinX = CGRectGetMinX(v48);
        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        MaxX = CGRectGetMaxX(v49);
        v50.origin.x = x;
        v50.origin.y = y;
        v50.size.width = width;
        v50.size.height = height;
        MinY = CGRectGetMinY(v50);
        v51.origin.x = x;
        v51.origin.y = y;
        v51.size.width = width;
        v51.size.height = height;
        MaxY = CGRectGetMaxY(v51);
        if (MinX <= MaxX)
        {
          v29 = MinY;
          v40 = v29;
          v30 = MaxY;
          v38 = v30;
          v31 = MinX;
          do
          {
            *&v32 = v31;
            r2 = LODWORD(v32);
            *(&v32 + 1) = v40;
            vortexTracePoint(&v45, v32, r2_16, v24, v37);
            vortexTracePoint(&v45, COERCE_DOUBLE(__PAIR64__(LODWORD(v38), r2)), r2_16, v24, v37);
            v31 = v31 + 1.0;
          }

          while (v31 <= MaxX);
        }

        if (MinY <= MaxY)
        {
          v33 = MinX;
          v41 = v33;
          v34 = MaxX;
          v39 = v34;
          do
          {
            *&v35 = MinY;
            r2a = v35;
            vortexTracePoint(&v45, COERCE_DOUBLE(__PAIR64__(v35, LODWORD(v41))), r2_16, v24, v37);
            vortexTracePoint(&v45, COERCE_DOUBLE(__PAIR64__(r2a, LODWORD(v39))), r2_16, v24, v37);
            MinY = MinY + 1.0;
          }

          while (MinY <= MaxY);
        }

        return v45.origin.x;
      }

      else
      {
        v18 = v8;
        v54.origin.x = v11;
        v54.origin.y = v12;
        v54.size.width = (v10 + v10);
        v54.size.height = v54.size.width;
        *&v8 = CGRectUnion(*(&v17 - 1), v54);
      }
    }
  }

  return v8;
}

@end