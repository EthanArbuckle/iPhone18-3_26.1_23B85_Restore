@interface CIMaximumScaleTransform
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (id)outputImage;
@end

@implementation CIMaximumScaleTransform

- (BOOL)_isIdentity
{
  [(NSNumber *)self->inputScale doubleValue];
  if (v3 != 1.0)
  {
    return 0;
  }

  [(NSNumber *)self->inputAspectRatio doubleValue];
  return v4 == 1.0;
}

- (id)outputImage
{
  v84 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if (![(CIMaximumScaleTransform *)self _isIdentity])
  {
    [(NSNumber *)self->inputScale doubleValue];
    v7 = v6;
    [(NSNumber *)self->inputAspectRatio doubleValue];
    v9 = v8;
    [(NSNumber *)self->inputScale doubleValue];
    v11 = v10;
    inputImage = self->inputImage;
    [(CIImage *)inputImage extent];
    x = v86.origin.x;
    y = v86.origin.y;
    width = v86.size.width;
    height = v86.size.height;
    if (CGRectIsInfinite(v86))
    {
      y = -8.98846567e307;
      width = 1.79769313e308;
      height = 1.79769313e308;
    }

    else
    {
      v87.origin.x = x;
      v87.origin.y = y;
      v87.size.width = width;
      v87.size.height = height;
      if (!CGRectIsNull(v87))
      {
        goto LABEL_12;
      }

      width = 0.0;
      y = INFINITY;
      height = 0.0;
    }

    x = y;
LABEL_12:
    v16 = v7 * v9;
    v17 = fabs(y) == INFINITY;
    if (fabs(x) == INFINITY || v17)
    {
      *&v80.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v80.var2 = 0.0;
      v80.var3 = 0.0;
    }

    else if (x == -8.98846567e307 && y == -8.98846567e307 && width == 1.79769313e308 && height == 1.79769313e308)
    {
      *&v80.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v80.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v80.var0 = v16 * x;
      v80.var1 = v11 * y;
      v80.var2 = v16 * width;
      v80.var3 = v11 * height;
    }

    Rectangle::integralize(&v80, 0.0001, &v81);
    *&v80.var0 = v81;
    *&v80.var2 = v82;
    if (v16 < 0.50001 && v11 < 0.50001)
    {
      v71 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v65 = vdupq_n_s64(0x7FF0000000000000uLL);
      v68 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v18 = MEMORY[0x1E695F040];
      do
      {
        [(CIImage *)inputImage extent];
        v19 = v88.origin.x;
        v20 = v88.origin.y;
        v21 = v88.size.width;
        v22 = v88.size.height;
        if (CGRectIsInfinite(v88))
        {
          v23 = -8.98846567e307;
          v24 = 1.79769313e308;
          v25 = 1.79769313e308;
          v26 = -8.98846567e307;
        }

        else
        {
          v89.origin.x = v19;
          v89.origin.y = v20;
          v89.size.width = v21;
          v89.size.height = v22;
          IsNull = CGRectIsNull(v89);
          v26 = INFINITY;
          v25 = 0.0;
          if (IsNull)
          {
            v24 = 0.0;
          }

          else
          {
            v24 = v21;
          }

          if (IsNull)
          {
            v23 = INFINITY;
          }

          else
          {
            v25 = v22;
            v23 = v20;
          }

          if (!IsNull)
          {
            v26 = v19;
          }
        }

        v28 = fabs(v23) == INFINITY;
        if (fabs(v26) != INFINITY && !v28)
        {
          if (v26 == -8.98846567e307 && v23 == -8.98846567e307 && v24 == 1.79769313e308 && v25 == 1.79769313e308)
          {
            *&v83.var0 = v71;
            *&v83.var2 = v68;
          }

          else
          {
            v83.var0 = v26 * 0.5;
            v83.var1 = v23 * 0.5;
            v83.var2 = v24 * 0.5;
            v83.var3 = v25 * 0.5;
          }
        }

        else
        {
          *&v83.var0 = v65;
          v83.var2 = 0.0;
          v83.var3 = 0.0;
        }

        v30 = [CIKernel kernelWithInternalRepresentation:&CI::_maxScaleDown2x2, Rectangle::integralize(&v83, 0.0001, &v81).f64[0]];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v81, v71), vceqq_f64(v82, v68))))))
        {
          v74 = v82.f64[0];
          v31 = v81.f64[1];
          v77 = v81.f64[0];
          v32 = v82.f64[1];
        }

        else
        {
          v31 = v18[1];
          v32 = v18[3];
          v74 = v18[2];
          v77 = *v18;
        }

        *&v83.var0 = inputImage;
        inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v30, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_46, [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1], v77, v31, v74, v32);
        v16 = v16 + v16;
        v11 = v11 + v11;
      }

      while (v16 < 0.50001 && v11 < 0.50001);
    }

    if (v16 < 0.50001)
    {
      v72 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v66 = vdupq_n_s64(0x7FF0000000000000uLL);
      v69 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v33 = MEMORY[0x1E695F040];
      do
      {
        v34 = [CIVector vectorWithX:1.0 Y:0.0, *&v66];
        [(CIImage *)inputImage extent];
        v35 = v90.origin.x;
        v36 = v90.origin.y;
        v37 = v90.size.width;
        v38 = v90.size.height;
        if (CGRectIsInfinite(v90))
        {
          v39 = -8.98846567e307;
          v40 = 1.79769313e308;
          v41 = 1.79769313e308;
          v42 = -8.98846567e307;
        }

        else
        {
          v91.origin.x = v35;
          v91.origin.y = v36;
          v91.size.width = v37;
          v91.size.height = v38;
          v43 = CGRectIsNull(v91);
          v42 = INFINITY;
          if (v43)
          {
            v40 = 0.0;
          }

          else
          {
            v40 = v37;
          }

          if (v43)
          {
            v41 = 0.0;
          }

          else
          {
            v41 = v38;
          }

          if (v43)
          {
            v39 = INFINITY;
          }

          else
          {
            v39 = v36;
          }

          if (!v43)
          {
            v42 = v35;
          }
        }

        v44 = fabs(v39) == INFINITY;
        if (fabs(v42) != INFINITY && !v44)
        {
          if (v42 == -8.98846567e307 && v39 == -8.98846567e307 && v40 == 1.79769313e308 && v41 == 1.79769313e308)
          {
            *&v83.var0 = v72;
            *&v83.var2 = v69;
          }

          else
          {
            v83.var0 = v42 * 0.5;
            v83.var1 = v39;
            v83.var2 = v40 * 0.5;
            v83.var3 = v41;
          }
        }

        else
        {
          *&v83.var0 = v66;
          v83.var2 = 0.0;
          v83.var3 = 0.0;
        }

        v46 = [CIKernel kernelWithInternalRepresentation:&CI::_maxScaleDown2, Rectangle::integralize(&v83, 0.0001, &v81).f64[0]];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v81, v72), vceqq_f64(v82, v69))))))
        {
          v75 = v82.f64[0];
          v47 = v81.f64[1];
          v78 = v81.f64[0];
          v48 = v82.f64[1];
        }

        else
        {
          v47 = v33[1];
          v48 = v33[3];
          v75 = v33[2];
          v78 = *v33;
        }

        *&v83.var0 = inputImage;
        *&v83.var1 = v34;
        inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v46, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_47, [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:2], v78, v47, v75, v48);
        v16 = v16 + v16;
      }

      while (v16 < 0.50001);
    }

    if (v11 < 0.50001)
    {
      v73 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v67 = vdupq_n_s64(0x7FF0000000000000uLL);
      v70 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v49 = MEMORY[0x1E695F040];
      do
      {
        v50 = [CIVector vectorWithX:0.0 Y:1.0, *&v67];
        [(CIImage *)inputImage extent];
        v51 = v92.origin.x;
        v52 = v92.origin.y;
        v53 = v92.size.width;
        v54 = v92.size.height;
        if (CGRectIsInfinite(v92))
        {
          v55 = -8.98846567e307;
          v56 = 1.79769313e308;
          v57 = 1.79769313e308;
          v58 = -8.98846567e307;
        }

        else
        {
          v93.origin.x = v51;
          v93.origin.y = v52;
          v93.size.width = v53;
          v93.size.height = v54;
          v59 = CGRectIsNull(v93);
          v58 = INFINITY;
          if (v59)
          {
            v56 = 0.0;
          }

          else
          {
            v56 = v53;
          }

          if (v59)
          {
            v57 = 0.0;
          }

          else
          {
            v57 = v54;
          }

          if (v59)
          {
            v55 = INFINITY;
          }

          else
          {
            v55 = v52;
          }

          if (!v59)
          {
            v58 = v51;
          }
        }

        v60 = fabs(v55) == INFINITY;
        if (fabs(v58) != INFINITY && !v60)
        {
          if (v58 == -8.98846567e307 && v55 == -8.98846567e307 && v56 == 1.79769313e308 && v57 == 1.79769313e308)
          {
            *&v83.var0 = v73;
            *&v83.var2 = v70;
          }

          else
          {
            v83.var0 = v58;
            v83.var1 = v55 * 0.5;
            v83.var2 = v56;
            v83.var3 = v57 * 0.5;
          }
        }

        else
        {
          *&v83.var0 = v67;
          v83.var2 = 0.0;
          v83.var3 = 0.0;
        }

        v62 = [CIKernel kernelWithInternalRepresentation:&CI::_maxScaleDown2, Rectangle::integralize(&v83, 0.0001, &v81).f64[0]];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v81, v73), vceqq_f64(v82, v70))))))
        {
          v76 = v82.f64[0];
          v63 = v81.f64[1];
          v79 = v81.f64[0];
          v64 = v82.f64[1];
        }

        else
        {
          v63 = v49[1];
          v64 = v49[3];
          v76 = v49[2];
          v79 = *v49;
        }

        *&v83.var0 = inputImage;
        *&v83.var1 = v50;
        inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v62, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_52, [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:2], v79, v63, v76, v64);
        v11 = v11 + v11;
      }

      while (v11 < 0.50001);
    }

    if (v16 < 0.99999)
    {
      inputImage = scaleH(inputImage, v16);
      v16 = 1.0;
    }

    if (v11 < 0.99999)
    {
      inputImage = scaleV(inputImage, v11);
      v11 = 1.0;
    }

    if (v16 > 1.00001)
    {
      inputImage = scaleH(inputImage, v16);
    }

    if (v11 > 1.00001)
    {
      return scaleV(inputImage, v11);
    }

    return inputImage;
  }

  v3 = self->inputImage;

  return v3;
}

+ (id)customAttributes
{
  v9[5] = *MEMORY[0x1E69E9840];
  v8[0] = @"CIAttributeFilterCategories";
  v7[0] = @"CICategoryGeometryAdjustment";
  v7[1] = @"CICategoryVideo";
  v7[2] = @"CICategoryStillImage";
  v7[3] = @"CICategoryBuiltIn";
  v9[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v9[1] = @"18";
  v8[1] = @"CIAttributeFilterAvailable_iOS";
  v8[2] = @"CIAttributeFilterAvailable_Mac";
  v9[2] = @"15.0";
  v8[3] = @"inputScale";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084108;
  v6[1] = &unk_1F1084118;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeDefault";
  v6[2] = &unk_1F1084128;
  v6[3] = &unk_1F1084138;
  v5[4] = @"CIAttributeIdentity";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1084138;
  v6[5] = @"CIAttributeTypeScalar";
  v9[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v8[4] = @"inputAspectRatio";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084108;
  v4[1] = &unk_1F1084148;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1084158;
  v4[3] = &unk_1F1084138;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1084138;
  v4[5] = @"CIAttributeTypeScalar";
  v9[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:5];
}

@end