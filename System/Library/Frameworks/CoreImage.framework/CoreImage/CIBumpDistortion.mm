@interface CIBumpDistortion
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIBumpDistortion

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
  v6[0] = &unk_1F1082C48;
  v6[1] = &unk_1F1082C48;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1082C58;
  v6[3] = &unk_1F1082C68;
  v5[4] = @"CIAttributeType";
  v6[4] = @"CIAttributeTypeDistance";
  v11[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v10[5] = @"inputScale";
  v3[0] = @"CIAttributeSliderMin";
  v3[1] = @"CIAttributeSliderMax";
  v4[0] = &unk_1F1082C78;
  v4[1] = &unk_1F1082C88;
  v3[2] = @"CIAttributeDefault";
  v3[3] = @"CIAttributeIdentity";
  v4[2] = &unk_1F1082C98;
  v4[3] = &unk_1F1082C48;
  v3[4] = @"CIAttributeType";
  v4[4] = @"CIAttributeTypeScalar";
  v11[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:5];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:6];
}

- (id)outputImage
{
  v35[1] = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputRadius floatValue];
  v4 = fmaxf(v3, 0.0);
  [(NSNumber *)self->inputScale floatValue];
  if (fabsf(v4) >= 0.001 && fabsf(v5) >= 0.001)
  {
    v8 = -v5;
    [(CIVector *)self->inputCenter X];
    v10 = v9 - v4;
    [(CIVector *)self->inputCenter Y];
    v12 = v11 - v4;
    [(CIImage *)self->inputImage extent];
    v39.origin.x = v10;
    v39.origin.y = v12;
    v39.size.width = (v4 + v4);
    v39.size.height = v39.size.width;
    v38 = CGRectUnion(v37, v39);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
    [(CIVector *)self->inputCenter X];
    v18 = v17;
    [(CIVector *)self->inputCenter Y];
    v20 = [CIVector vectorWithX:(1.0 / v4) Y:v8 Z:v18 W:v19];
    [(CIVector *)v20 X];
    v31 = v21;
    [(CIVector *)v20 Y];
    v22.f64[0] = v31;
    v22.f64[1] = v23;
    v24 = vcvt_f32_f64(v22);
    [(CIVector *)self->inputCenter X];
    v32 = v25;
    [(CIVector *)self->inputCenter Y];
    v26.f64[0] = v32;
    v26.f64[1] = v27;
    v28 = vcvt_f32_f64(v26);
    v29 = [(CIBumpDistortion *)self _kernel];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __31__CIBumpDistortion_outputImage__block_invoke;
    v33[3] = &__block_descriptor_52_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v33[4] = v28;
    v33[5] = v24;
    v34 = v4;
    inputImage = self->inputImage;
    v35[0] = v20;
    return [v29 applyWithExtent:v33 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v35, 1), x, y, width, height}];
  }

  else
  {
    v6 = self->inputImage;

    return v6;
  }
}

double __31__CIBumpDistortion_outputImage__block_invoke(float32x2_t *a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v8 = a2;
  v73 = a1[4];
  v72 = a1[5];
  v9 = a1[6].f32[0];
  MinX = CGRectGetMinX(*&a2);
  v74.origin.x = v8;
  v74.origin.y = a3;
  v74.size.width = a4;
  v74.size.height = a5;
  MinY = CGRectGetMinY(v74);
  v75.origin.x = v8;
  v75.origin.y = a3;
  v75.size.width = a4;
  v75.size.height = a5;
  MaxX = CGRectGetMaxX(v75);
  v76.origin.x = v8;
  v76.origin.y = a3;
  v76.size.width = a4;
  v76.size.height = a5;
  MaxY = CGRectGetMaxY(v76);
  v79.origin.x = (v73.f32[0] - v9);
  v79.origin.y = (v73.f32[1] - v9);
  v79.size.width = v9 + v9;
  v77.origin.x = v8;
  v77.origin.y = a3;
  v77.size.width = a4;
  v77.size.height = a5;
  v79.size.height = v79.size.width;
  v78 = CGRectIntersection(v77, v79);
  if (!CGRectIsEmpty(v78))
  {
    v12 = MinX;
    v13 = MinY;
    v14.f32[0] = MaxX;
    v16 = vsub_f32(v73, __PAIR64__(LODWORD(v13), LODWORD(v12)));
    v17 = 1.0;
    v18 = 1.0 - (sqrtf(vaddv_f32(vmul_f32(v16, v16))) * v72.f32[0]);
    if (v18 <= 1.0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 1.0;
    }

    if (v18 >= 0.0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0.0;
    }

    v21 = (v20 * -2.0 + 3.0) * v20 * v20;
    v22 = v72.f32[1];
    *&v21 = v21 * v72.f32[1] + 1.0;
    v23 = vadd_f32(v73, vmul_n_f32(vsub_f32(__PAIR64__(LODWORD(v13), LODWORD(v12)), v73), *&v21));
    v24 = v73.f32[1] > v13;
    v15 = MaxY;
    if (v73.f32[1] >= v15)
    {
      v24 = 0;
    }

    if (v24)
    {
      v25.i32[1] = v73.i32[1];
      v25.f32[0] = MinX;
      v26 = vsub_f32(v73, v25);
      v27 = 1.0 - (v72.f32[0] * sqrtf(vaddv_f32(vmul_f32(v26, v26))));
      if (v27 <= 1.0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 1.0;
      }

      if (v27 >= 0.0)
      {
        v29 = v28;
      }

      else
      {
        v29 = 0.0;
      }

      v30 = (v29 * -2.0 + 3.0) * v29 * v29 * v22 + 1.0;
      v31 = vminnm_f32(v23, vadd_f32(v73, vmul_n_f32(vsub_f32(v25, v73), v30)));
    }

    else
    {
      v31 = v23;
    }

    v32.f32[0] = MinX;
    v32.f32[1] = MaxY;
    v33 = vsub_f32(v73, v32);
    v34 = 1.0 - (v72.f32[0] * sqrtf(vaddv_f32(vmul_f32(v33, v33))));
    if (v34 <= 1.0)
    {
      v17 = v34;
    }

    if (v34 < 0.0)
    {
      v17 = 0.0;
    }

    v35 = (v17 * -2.0 + 3.0) * v17 * v17 * v22 + 1.0;
    v36 = vminnm_f32(v31, vadd_f32(v73, vmul_n_f32(vsub_f32(v32, v73), v35)));
    v37 = v73.f32[0] > v12;
    if (v73.f32[0] >= v14.f32[0])
    {
      v37 = 0;
    }

    if (v37)
    {
      v38.i32[0] = v73.i32[0];
      v38.f32[1] = MaxY;
      v39 = vsub_f32(v73, v38);
      v40 = 1.0;
      v41 = 1.0 - (v72.f32[0] * sqrtf(vaddv_f32(vmul_f32(v39, v39))));
      if (v41 <= 1.0)
      {
        v40 = v41;
      }

      v42 = v41 < 0.0;
      v43 = 0.0;
      if (!v42)
      {
        v43 = v40;
      }

      v44 = (v43 * -2.0 + 3.0) * v43 * v43 * v22 + 1.0;
      v36 = vminnm_f32(v36, vadd_f32(v73, vmul_n_f32(vsub_f32(v38, v73), v44)));
    }

    v45.f32[0] = MaxX;
    v45.f32[1] = MaxY;
    v46 = vsub_f32(v73, v45);
    v47 = v72.f32[0] * sqrtf(vaddv_f32(vmul_f32(v46, v46)));
    v48 = 1.0;
    v49 = 1.0 - v47;
    if (v49 <= 1.0)
    {
      v50 = v49;
    }

    else
    {
      v50 = 1.0;
    }

    if (v49 < 0.0)
    {
      v50 = 0.0;
    }

    v51 = (v50 * -2.0 + 3.0) * v50 * v50 * v22 + 1.0;
    v52 = vminnm_f32(v36, vadd_f32(v73, vmul_n_f32(vsub_f32(v45, v73), v51)));
    if (v24)
    {
      v53.i32[1] = v73.i32[1];
      v53.f32[0] = MaxX;
      v54 = vsub_f32(v73, v53);
      v55 = 1.0 - (v72.f32[0] * sqrtf(vaddv_f32(vmul_f32(v54, v54))));
      if (v55 <= 1.0)
      {
        v56 = v55;
      }

      else
      {
        v56 = 1.0;
      }

      if (v55 >= 0.0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0.0;
      }

      v58 = (v57 * -2.0 + 3.0) * v57 * v57 * v22 + 1.0;
      v52 = vminnm_f32(v52, vadd_f32(v73, vmul_n_f32(vsub_f32(v53, v73), v58)));
    }

    v14.f32[1] = MinY;
    v59 = vsub_f32(v73, v14);
    v60 = 1.0 - (v72.f32[0] * sqrtf(vaddv_f32(vmul_f32(v59, v59))));
    if (v60 <= 1.0)
    {
      v48 = v60;
    }

    if (v60 < 0.0)
    {
      v48 = 0.0;
    }

    v61 = (v48 * -2.0 + 3.0) * v48 * v48 * v22 + 1.0;
    v62 = vminnm_f32(v52, vadd_f32(v73, vmul_n_f32(vsub_f32(v14, v73), v61)));
    if (v37)
    {
      v63.i32[0] = v73.i32[0];
      v63.f32[1] = MinY;
      v64 = vsub_f32(v73, v63);
      v65 = 1.0;
      v66 = 1.0 - (v72.f32[0] * sqrtf(vaddv_f32(vmul_f32(v64, v64))));
      if (v66 <= 1.0)
      {
        v65 = v66;
      }

      v42 = v66 < 0.0;
      v67 = 0.0;
      if (!v42)
      {
        v67 = v65;
      }

      v68 = (v67 * -2.0 + 3.0) * v67 * v67 * v22 + 1.0;
      v62.i32[0] = vminnm_f32(v62, vadd_f32(v73, vmul_n_f32(vsub_f32(v63, v73), v68))).u32[0];
    }

    return v62.f32[0];
  }

  return v8;
}

@end