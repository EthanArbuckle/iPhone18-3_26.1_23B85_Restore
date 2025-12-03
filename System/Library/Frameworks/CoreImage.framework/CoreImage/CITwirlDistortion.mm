@interface CITwirlDistortion
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CITwirlDistortion

+ (id)customAttributes
{
  v11[6] = *MEMORY[0x1E69E9840];
  v10[0] = @"CIAttributeFilterCategories";
  v9[0] = @"CICategoryDistortionEffect";
  v9[1] = @"CICategoryVideo";
  v9[2] = @"CICategoryStillImage";
  v9[3] = @"CICategoryBuiltIn";
  v11[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  v11[1] = @"5";
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
  v6[0] = &unk_1F1084F78;
  v6[1] = &unk_1F1084F78;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084F88;
  v6[3] = &unk_1F1084F98;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1084F98;
  v6[5] = @"CIAttributeTypeDistance";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v10[5] = @"inputAngle";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1084FA8;
  v4[1] = &unk_1F1084FB8;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1084FC8;
  v4[3] = &unk_1F1084F78;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeAngle";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v52[1] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  [(NSNumber *)self->inputRadius floatValue];
  if (fabsf(v3) >= 0.001 && ([(NSNumber *)self->inputAngle floatValue], fabsf(v4) >= 0.001))
  {
    [(NSNumber *)self->inputRadius floatValue];
    v8 = v7;
    [(CIVector *)self->inputCenter X];
    v10 = v9;
    [(CIVector *)self->inputCenter Y];
    v12 = v11;
    v13 = v8;
    [(NSNumber *)self->inputAngle floatValue];
    v15 = [CIVector vectorWithX:v10 Y:v12 Z:1.0 / v8 W:v14];
    [(CIVector *)v15 X];
    v44 = v16;
    [(CIVector *)v15 Y];
    v43 = v17;
    [(CIVector *)v15 Z];
    v42 = v18;
    [(CIVector *)v15 W];
    v19.f64[0] = v42;
    v19.f64[1] = v20;
    v21.f64[0] = v44;
    v21.f64[1] = v43;
    v45 = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v19);
    [(CIVector *)self->inputCenter X];
    v23 = v22 - v8;
    [(CIVector *)self->inputCenter Y];
    v25 = v24 - v13;
    v26 = v13 + v13;
    [(CIImage *)self->inputImage extent];
    v56.origin.x = v27;
    v56.origin.y = v28;
    v56.size.width = v29;
    v56.size.height = v30;
    v54.origin.x = v23;
    v54.origin.y = v25;
    v54.size.width = v13 + v13;
    v54.size.height = v13 + v13;
    v31 = CGRectIntersectsRect(v54, v56);
    [(CIImage *)self->inputImage extent];
    x = v32;
    y = v33;
    width = v34;
    height = v35;
    if (v31)
    {
      v57.origin.x = v23;
      v57.origin.y = v25;
      v57.size.width = v26;
      v57.size.height = v26;
      v55 = CGRectUnion(*&v32, v57);
      x = v55.origin.x;
      y = v55.origin.y;
      width = v55.size.width;
      height = v55.size.height;
    }

    _kernel = [(CITwirlDistortion *)self _kernel];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __32__CITwirlDistortion_outputImage__block_invoke;
    v46[3] = &__block_descriptor_80_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v47 = v45;
    v48 = v23;
    v49 = v25;
    v50 = v26;
    v51 = v26;
    inputImage = self->inputImage;
    v52[0] = v15;
    return [_kernel applyWithExtent:v46 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v52, 1), x, y, width, height}];
  }

  else
  {
    v5 = self->inputImage;

    return v5;
  }
}

double __32__CITwirlDistortion_outputImage__block_invoke(CGPoint *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  v31 = a1[2];
  x = a1[3].x;
  y = a1[3].y;
  v11 = a1[4].x;
  v12 = a1[4].y;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = v11;
  v42.size.height = v12;
  v34 = CGRectIntersection(*&a2, v42);
  if (!CGRectIsEmpty(v34))
  {
    v35.origin.x = v8;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = v11;
    v43.size.height = v12;
    if (!CGRectContainsRect(v35, v43))
    {
      v13 = 1.0 / *&v31.y;
      if ((1.0 / *&v31.y) >= 500.0)
      {
        v14 = *(&v31.y + 1);
        v32 = vcvtq_f64_f32(*&v31.x);
        v37.origin.x = v8;
        v37.origin.y = a3;
        v29 = v13;
        v37.size.width = a4;
        v37.size.height = a5;
        v38 = CGRectIntegral(v37);
        v15 = v38.origin.x;
        rect = v38.origin.y;
        width = v38.size.width;
        v28 = v38.size.width;
        height = v38.size.height;
        v38.size = *(MEMORY[0x1E695F050] + 16);
        v33.origin = *MEMORY[0x1E695F050];
        v33.size = v38.size;
        v18 = 1.0 / v29;
        v38.size.width = width;
        MinX = CGRectGetMinX(v38);
        v39.origin.x = v15;
        v20 = v15;
        v27 = v15;
        v39.origin.y = rect;
        v39.size.width = width;
        v39.size.height = height;
        v21 = height;
        MaxX = CGRectGetMaxX(v39);
        v40.origin.x = v20;
        v40.origin.y = rect;
        v40.size.width = width;
        v40.size.height = v21;
        MinY = CGRectGetMinY(v40);
        v41.origin.x = v27;
        v41.size.width = v28;
        v41.origin.y = rect;
        v41.size.height = v21;
        MaxY = CGRectGetMaxY(v41);
        if (MinX <= MaxX)
        {
          v25 = MinX;
          do
          {
            twirlTracePoint(v25, MinY, v32, v18, v14, &v33);
            twirlTracePoint(v25, MaxY, v32, v18, v14, &v33);
            v25 = v25 + 1.0;
          }

          while (v25 <= MaxX);
        }

        for (; MinY <= MaxY; MinY = MinY + 1.0)
        {
          twirlTracePoint(MinX, MinY, v32, v18, v14, &v33);
          twirlTracePoint(MaxX, MinY, v32, v18, v14, &v33);
        }

        return v33.origin.x;
      }

      else
      {
        v36.origin.x = v8;
        v36.origin.y = a3;
        v36.size.width = a4;
        v36.size.height = a5;
        v44.origin.x = x;
        v44.origin.y = y;
        v44.size.width = v11;
        v44.size.height = v12;
        *&v8 = CGRectUnion(v36, v44);
      }
    }
  }

  return v8;
}

@end