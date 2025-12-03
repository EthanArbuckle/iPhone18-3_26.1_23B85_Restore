@interface CIBicubicScaleTransform
+ (id)customAttributes;
- (BOOL)_isIdentity;
- (float32x2_t)_scale;
- (id)outputImage;
@end

@implementation CIBicubicScaleTransform

+ (id)customAttributes
{
  v13[7] = *MEMORY[0x1E69E9840];
  v12[0] = @"CIAttributeFilterCategories";
  v11[0] = @"CICategoryGeometryAdjustment";
  v11[1] = @"CICategoryVideo";
  v11[2] = @"CICategoryStillImage";
  v11[3] = @"CICategoryNonSquarePixels";
  v11[4] = @"CICategoryBuiltIn";
  v13[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v13[1] = @"11";
  v12[1] = @"CIAttributeFilterAvailable_iOS";
  v12[2] = @"CIAttributeFilterAvailable_Mac";
  v13[2] = @"10.13";
  v12[3] = @"inputScale";
  v9[0] = @"CIAttributeMin";
  v9[1] = @"CIAttributeSliderMin";
  v10[0] = &unk_1F1084B28;
  v10[1] = &unk_1F1084B38;
  v9[2] = @"CIAttributeSliderMax";
  v9[3] = @"CIAttributeDefault";
  v10[2] = &unk_1F1084B48;
  v10[3] = &unk_1F1084B58;
  v9[4] = @"CIAttributeIdentity";
  v9[5] = @"CIAttributeType";
  v10[4] = &unk_1F1084B58;
  v10[5] = @"CIAttributeTypeScalar";
  v9[6] = @"CIAttributeClass";
  v10[6] = @"NSNumber";
  v13[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:7];
  v12[4] = @"inputAspectRatio";
  v8[0] = &unk_1F1084B28;
  v8[1] = &unk_1F1084B68;
  v7[0] = @"CIAttributeMin";
  v7[1] = @"CIAttributeSliderMin";
  v7[2] = @"CIAttributeSliderMax";
  v7[3] = @"CIAttributeDefault";
  v8[2] = &unk_1F1084B78;
  v8[3] = &unk_1F1084B58;
  v7[4] = @"CIAttributeIdentity";
  v7[5] = @"CIAttributeType";
  v8[4] = &unk_1F1084B58;
  v8[5] = @"CIAttributeTypeScalar";
  v7[6] = @"CIAttributeClass";
  v8[6] = @"NSNumber";
  v13[4] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:7];
  v12[5] = @"inputB";
  v5[0] = @"CIAttributeMin";
  v5[1] = @"CIAttributeSliderMin";
  v6[0] = &unk_1F1084B28;
  v6[1] = &unk_1F1084B28;
  v5[2] = @"CIAttributeSliderMax";
  v5[3] = @"CIAttributeMax";
  v6[2] = &unk_1F1084B58;
  v6[3] = &unk_1F1084B58;
  v5[4] = @"CIAttributeDefault";
  v5[5] = @"CIAttributeType";
  v6[4] = &unk_1F1084B28;
  v6[5] = @"CIAttributeTypeScalar";
  v5[6] = @"CIAttributeClass";
  v6[6] = @"NSNumber";
  v13[5] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:7];
  v12[6] = @"inputC";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1084B28;
  v4[1] = &unk_1F1084B28;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1084B58;
  v4[3] = &unk_1F1084B58;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeType";
  v4[4] = &unk_1F1084B88;
  v4[5] = @"CIAttributeTypeScalar";
  v3[6] = @"CIAttributeClass";
  v4[6] = @"NSNumber";
  v13[6] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:7];
}

- (float32x2_t)_scale
{
  [*(self + 88) doubleValue];
  v6 = fmax(v2, 0.0);
  [*(self + 96) doubleValue];
  v4.f64[0] = v6 * fmax(v3, 0.0);
  v4.f64[1] = v6;
  return vcvt_f32_f64(v4);
}

- (BOOL)_isIdentity
{
  [(CIBicubicScaleTransform *)self _scale];
  v18 = v3;
  [(NSNumber *)self->inputB floatValue];
  v17 = v4;
  [(NSNumber *)self->inputC floatValue];
  if (fabsf(*&v18 + -1.0) >= 0.00001 || fabsf(*(&v18 + 1) + -1.0) >= 0.00001)
  {
    return 0;
  }

  __asm { FMOV            V2.2S, #1.0 }

  v11 = vminnm_f32(vmaxnm_f32(__PAIR64__(v5, v17), 0), _D2);
  _D2.i32[0] = v11.i32[1];
  v12 = v11.f32[0];
  *v13.f32 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_19CF29E40, xmmword_19CF29E30, v12), xmmword_19CF29E50, _D2.f32[0]));
  v13.i32[2] = 0;
  *&v12 = v12 * -2.0 + 6.0;
  v13.i32[3] = LODWORD(v12);
  __asm { FMOV            V0.4S, #6.0 }

  v15 = vdivq_f32(v13, _Q0);
  return fabsf(vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))) < 0.00001;
}

- (id)outputImage
{
  v199[2] = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIBicubicScaleTransform *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  [(NSNumber *)self->inputB floatValue];
  v176 = v6;
  [(NSNumber *)self->inputC floatValue];
  v170 = v7;
  [(CIBicubicScaleTransform *)self _scale];
  v9 = v8;
  LODWORD(v10) = LODWORD(v8.f64[0]);
  if (fabsf(*v8.f64) >= 0.00001)
  {
    __asm { FMOV            V1.2S, #1.0 }

    v142 = _D1;
    v15 = vminnm_f32(vmaxnm_f32(__PAIR64__(v170, v176), 0), _D1);
    v144 = v15.f32[1];
    *v16.f32 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(xmmword_19CF29E40, xmmword_19CF29E30, v15.f32[0]), xmmword_19CF29E50, v15.f32[1]));
    v16.i32[2] = 0;
    v17 = v15.f32[0] * -2.0 + 6.0;
    v16.f32[3] = v17;
    __asm { FMOV            V4.4S, #6.0 }

    v19 = vdivq_f32(v16, _Q4);
    v143 = *&v15;
    v16.f32[0] = -v15.f32[0] + v15.f32[1] * -6.0;
    v20 = v15.f32[1] * 30.0 + v15.f32[0] * 6.0;
    v16.f32[1] = v20;
    v21 = vdivq_f32(vcvt_hight_f32_f64(*v16.f32, vmlaq_n_f64(vmulq_n_f64(xmmword_19CF29E60, v15.f32[1]), xmmword_19CF29E70, v15.f32[0])), _Q4);
    v22 = vmulq_f32(v19, xmmword_19CF29E80);
    *v22.i8 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v149 = v19;
    v23 = vmulq_f32(v19, xmmword_19CF29E90);
    *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v24 = vcvtq_f64_f32(vadd_f32(vzip1_s32(*v22.i8, *v23.i8), vzip2_s32(*v22.i8, *v23.i8)));
    __asm { FMOV            V1.2D, #0.5 }

    v26 = vmulq_f64(v24, _Q1);
    v27 = vmulq_f32(v21, xmmword_19CF29EA0);
    *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v148 = v21;
    v28 = vmulq_f32(v21, xmmword_19CF29EB0);
    *v28.i8 = vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
    v29 = vmulq_f64(vcvtq_f64_f32(vadd_f32(vzip1_s32(*v27.i8, *v28.i8), vzip2_s32(*v27.i8, *v28.i8))), _Q1);
    v30 = vaddvq_f64(v29);
    v31 = 0.0;
    if (vmuld_lane_f64(v29.f64[0], v29, 1) < 0.0)
    {
      v32 = v30;
    }

    else
    {
      v31 = v29.f64[1];
      v32 = v29.f64[0];
    }

    v33 = vaddvq_f64(v26);
    v34 = v32 + v31;
    v159 = 0.5;
    if (v33 != 0.0)
    {
      v35 = v26.f64[1] / v33 + 0.5;
      v159 = v35;
    }

    selfCopy = self;
    inputImage = self->inputImage;
    v158 = 2.5;
    if (v34 != 0.0)
    {
      v36 = v31 / v34 + 2.5;
      v158 = v36;
    }

    v37 = v33;
    v38 = v34;
    v146 = v38;
    v147 = v37;
    if (*&v10 > 0.5 || *(v9.f64 + 1) > 0.5)
    {
      v171 = v10;
    }

    else
    {
      v39 = v37;
      v40 = v38;
      v152 = vdupq_n_s64(0x7FF0000000000000uLL);
      v160 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v155 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v41 = MEMORY[0x1E695F040];
      v171 = v9;
      do
      {
        [(CIImage *)inputImage extent];
        x = v201.origin.x;
        y = v201.origin.y;
        width = v201.size.width;
        height = v201.size.height;
        if (CGRectIsInfinite(v201))
        {
          v46 = 1.79769313e308;
          v47 = -8.98846567e307;
          v48 = 1.79769313e308;
          v49 = -8.98846567e307;
        }

        else
        {
          v202.origin.x = x;
          v202.origin.y = y;
          v202.size.width = width;
          v202.size.height = height;
          IsNull = CGRectIsNull(v202);
          v49 = INFINITY;
          if (IsNull)
          {
            v47 = INFINITY;
          }

          else
          {
            v47 = x;
          }

          v48 = 0.0;
          if (IsNull)
          {
            v46 = 0.0;
          }

          else
          {
            v46 = height;
          }

          if (!IsNull)
          {
            v48 = width;
            v49 = y;
          }
        }

        v51 = fabs(v49) == INFINITY;
        if (fabs(v47) != INFINITY && !v51)
        {
          if (v47 == -8.98846567e307 && v49 == -8.98846567e307 && v48 == 1.79769313e308 && v46 == 1.79769313e308)
          {
            *&v189.var0 = v160;
            *&v189.var2 = v155;
          }

          else
          {
            v189.var0 = v47 * 0.5;
            v189.var1 = v49 * 0.5;
            v189.var2 = v48 * 0.5;
            v189.var3 = v46 * 0.5;
          }
        }

        else
        {
          *&v189.var0 = v152;
          v189.var2 = 0.0;
          v189.var3 = 0.0;
        }

        Rectangle::inset(&v189, -2.0, -2.0, &v190);
        Rectangle::integralize(&v190, 0.0001, &v191);
        v164 = *&v191.var2;
        v177 = *&v191.var0;
        v53 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicDownsample2];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v177, v160), vceqq_f64(v164, v155))))))
        {
          v54 = v177.f64[1];
          v55 = v164.f64[1];
        }

        else
        {
          v54 = v41[1];
          v177.f64[0] = *v41;
          v55 = v41[3];
          v164.f64[0] = v41[2];
        }

        v199[0] = inputImage;
        v199[1] = [CIVector vectorWithX:v39 Y:v40 Z:v159 W:v158];
        inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v53, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_67, [MEMORY[0x1E695DEC8] arrayWithObjects:v199 count:2], v177.f64[0], v54, v164.f64[0], v55);
        v9 = v171;
        *&v9.f64[0] = vadd_f32(*&v9.f64[0], *&v9.f64[0]);
        v171 = v9;
      }

      while (*v9.f64 <= 0.5 && *(v9.f64 + 1) <= 0.5);
    }

    v178 = v9;
    if (*&v171 <= 0.5)
    {
      v150 = vdupq_n_s64(0x7FF0000000000000uLL);
      v153 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v156 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v56 = MEMORY[0x1E695F040];
      do
      {
        [(CIImage *)inputImage extent];
        v57 = v203.origin.x;
        v58 = v203.origin.y;
        v59 = v203.size.width;
        v60 = v203.size.height;
        if (CGRectIsInfinite(v203))
        {
          v61 = 1.79769313e308;
          v62 = -8.98846567e307;
          v63 = 1.79769313e308;
          v64 = -8.98846567e307;
        }

        else
        {
          v204.origin.x = v57;
          v204.origin.y = v58;
          v204.size.width = v59;
          v204.size.height = v60;
          v65 = CGRectIsNull(v204);
          v64 = INFINITY;
          if (v65)
          {
            v62 = INFINITY;
          }

          else
          {
            v62 = v58;
          }

          if (v65)
          {
            v61 = 0.0;
          }

          else
          {
            v61 = v59;
          }

          if (v65)
          {
            v63 = 0.0;
          }

          else
          {
            v63 = v60;
          }

          if (!v65)
          {
            v64 = v57;
          }
        }

        v66 = fabs(v62) == INFINITY;
        if (fabs(v64) != INFINITY && !v66)
        {
          if (v64 == -8.98846567e307 && v62 == -8.98846567e307 && v61 == 1.79769313e308 && v63 == 1.79769313e308)
          {
            *&v189.var0 = v156;
            *&v189.var2 = v153;
          }

          else
          {
            v189.var0 = v64 * 0.5;
            v189.var1 = v62;
            v189.var2 = v61 * 0.5;
            v189.var3 = v63;
          }
        }

        else
        {
          *&v189.var0 = v150;
          v189.var2 = 0.0;
          v189.var3 = 0.0;
        }

        Rectangle::inset(&v189, -2.0, -0.0, &v190);
        Rectangle::integralize(&v190, 0.0001, &v191);
        v161 = *&v191.var2;
        v165 = *&v191.var0;
        v68 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicDownsample2h];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v165, v156), vceqq_f64(v161, v153))))))
        {
          v69 = v165.f64[1];
          v70 = v161.f64[1];
        }

        else
        {
          v69 = v56[1];
          v70 = v56[3];
          v161.f64[0] = v56[2];
          v165.f64[0] = *v56;
        }

        v198[0] = inputImage;
        v198[1] = [CIVector vectorWithX:v147 Y:v146 Z:v159 W:v158];
        inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v68, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_36_0, [MEMORY[0x1E695DEC8] arrayWithObjects:v198 count:2], v165.f64[0], v69, v161.f64[0], v70);
        v72 = v171;
        v71 = v178;
        *&v72 = *&v72 + *&v72;
        LODWORD(v71.f64[0]) = v72;
        v171 = v72;
        v178 = v71;
      }

      while (*&v72 <= 0.5);
    }

    v73 = v178;
    LODWORD(v73.f64[0]) = HIDWORD(v178.f64[0]);
    if (*(v178.f64 + 1) <= 0.5)
    {
      v162 = v73;
      v151 = vdupq_n_s64(0x7FF0000000000000uLL);
      v154 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v157 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v74 = MEMORY[0x1E695F040];
      do
      {
        [(CIImage *)inputImage extent];
        v75 = v205.origin.x;
        v76 = v205.origin.y;
        v77 = v205.size.width;
        v78 = v205.size.height;
        if (CGRectIsInfinite(v205))
        {
          v79 = 1.79769313e308;
          v80 = -8.98846567e307;
          v81 = 1.79769313e308;
          v82 = -8.98846567e307;
        }

        else
        {
          v206.origin.x = v75;
          v206.origin.y = v76;
          v206.size.width = v77;
          v206.size.height = v78;
          v83 = CGRectIsNull(v206);
          v82 = INFINITY;
          if (v83)
          {
            v80 = INFINITY;
          }

          else
          {
            v80 = v76;
          }

          if (v83)
          {
            v79 = 0.0;
          }

          else
          {
            v79 = v77;
          }

          if (v83)
          {
            v81 = 0.0;
          }

          else
          {
            v81 = v78;
          }

          if (!v83)
          {
            v82 = v75;
          }
        }

        v84 = fabs(v80) == INFINITY;
        if (fabs(v82) != INFINITY && !v84)
        {
          if (v82 == -8.98846567e307 && v80 == -8.98846567e307 && v79 == 1.79769313e308 && v81 == 1.79769313e308)
          {
            *&v189.var0 = v157;
            *&v189.var2 = v154;
          }

          else
          {
            v189.var0 = v82;
            v189.var1 = v80 * 0.5;
            v189.var2 = v79;
            v189.var3 = v81 * 0.5;
          }
        }

        else
        {
          *&v189.var0 = v151;
          v189.var2 = 0.0;
          v189.var3 = 0.0;
        }

        Rectangle::inset(&v189, -0.0, -2.0, &v190);
        Rectangle::integralize(&v190, 0.0001, &v191);
        v166 = *&v191.var2;
        v172 = *&v191.var0;
        v86 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicDownsample2v];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v172, v157), vceqq_f64(v166, v154))))))
        {
          v87 = v172.f64[1];
          v88 = v166.f64[1];
        }

        else
        {
          v87 = v74[1];
          v88 = v74[3];
          v166.f64[0] = v74[2];
          v172.f64[0] = *v74;
        }

        v197[0] = inputImage;
        v197[1] = [CIVector vectorWithX:v147 Y:v146 Z:v159 W:v158];
        inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v86, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_38, [MEMORY[0x1E695DEC8] arrayWithObjects:v197 count:2], v172.f64[0], v87, v166.f64[0], v88);
        v89 = v162;
        *v89.f64 = *v89.f64 + *v89.f64;
        v90 = v178;
        HIDWORD(v90.f64[0]) = LODWORD(v89.f64[0]);
        v178 = v90;
        v162 = v89;
      }

      while (*v89.f64 <= 0.5);
    }

    HIDWORD(v91) = HIDWORD(v178.f64[0]);
    if (*v178.f64 >= 1.0)
    {
      v96 = *&v178.f64[0];
      goto LABEL_130;
    }

    [(CIImage *)inputImage extent];
    v92 = v207.origin.x;
    v93 = v207.origin.y;
    v94 = v207.size.width;
    v95 = v207.size.height;
    if (CGRectIsInfinite(v207))
    {
      v94 = 1.79769313e308;
      v93 = -8.98846567e307;
      v95 = 1.79769313e308;
    }

    else
    {
      v208.origin.x = v92;
      v208.origin.y = v93;
      v208.size.width = v94;
      v208.size.height = v95;
      if (!CGRectIsNull(v208))
      {
        goto LABEL_117;
      }

      v94 = 0.0;
      v93 = INFINITY;
      v95 = 0.0;
    }

    v92 = v93;
LABEL_117:
    v97 = *v178.f64;
    v98 = fabs(v93) == INFINITY;
    if (fabs(v92) == INFINITY || v98)
    {
      *&v189.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v189.var2 = 0.0;
      v189.var3 = 0.0;
    }

    else if (v92 == -8.98846567e307 && v93 == -8.98846567e307 && v94 == 1.79769313e308 && v95 == 1.79769313e308)
    {
      *&v189.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v189.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v189.var0 = v92 * v97;
      v189.var1 = v93;
      v189.var2 = v94 * v97;
      v189.var3 = v95;
    }

    Rectangle::inset(&v189, -2.0, -0.0, &v190);
    Rectangle::integralize(&v190, 0.0001, &v191);
    v167 = *&v191.var2;
    v173 = *&v191.var0;
    v99 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicDownsampleH];
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v173, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v167, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v100 = v173.f64[1];
      v101 = v167.f64[1];
    }

    else
    {
      v100 = *(MEMORY[0x1E695F040] + 8);
      v101 = *(MEMORY[0x1E695F040] + 24);
      v167.f64[0] = *(MEMORY[0x1E695F040] + 16);
      v173.f64[0] = *MEMORY[0x1E695F040];
    }

    v188[0] = MEMORY[0x1E69E9820];
    v188[1] = 3221225472;
    v188[2] = __38__CIBicubicScaleTransform_outputImage__block_invoke_6;
    v188[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v188[4] = *&v178.f64[0];
    v196[0] = inputImage;
    v196[1] = [CIVector vectorWithX:(1.0 / *v178.f64) Y:1.0 Z:v97 W:1.0];
    v196[2] = [CIVector vectorWithX:v149.f32[0] Y:v149.f32[1] Z:v149.f32[2] W:v149.f32[3]];
    v196[3] = [CIVector vectorWithX:v148.f32[0] Y:v148.f32[1] Z:v148.f32[2] W:v148.f32[3]];
    inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v99, "applyWithExtent:roiCallback:arguments:", v188, [MEMORY[0x1E695DEC8] arrayWithObjects:v196 count:4], v173.f64[0], v100, v167.f64[0], v101);
    v96 = __PAIR64__(HIDWORD(v178.f64[0]), 1.0);
LABEL_130:
    LODWORD(v91) = HIDWORD(v96);
    v174 = *&v91;
    v179 = v96;
    if (*(&v96 + 1) >= 1.0)
    {
      goto LABEL_150;
    }

    [(CIImage *)inputImage extent];
    v102 = v209.origin.x;
    v103 = v209.origin.y;
    v104 = v209.size.width;
    v105 = v209.size.height;
    if (CGRectIsInfinite(v209))
    {
      v104 = 1.79769313e308;
      v103 = -8.98846567e307;
      v105 = 1.79769313e308;
    }

    else
    {
      v210.origin.x = v102;
      v210.origin.y = v103;
      v210.size.width = v104;
      v210.size.height = v105;
      if (!CGRectIsNull(v210))
      {
        goto LABEL_137;
      }

      v104 = 0.0;
      v103 = INFINITY;
      v105 = 0.0;
    }

    v102 = v103;
LABEL_137:
    v106 = *&v174;
    v107 = fabs(v103) == INFINITY;
    if (fabs(v102) == INFINITY || v107)
    {
      *&v189.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v189.var2 = 0.0;
      v189.var3 = 0.0;
    }

    else if (v102 == -8.98846567e307 && v103 == -8.98846567e307 && v104 == 1.79769313e308 && v105 == 1.79769313e308)
    {
      *&v189.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v189.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v189.var0 = v102;
      v189.var1 = v103 * v106;
      v189.var2 = v104;
      v189.var3 = v105 * v106;
    }

    Rectangle::inset(&v189, -0.0, -2.0, &v190);
    Rectangle::integralize(&v190, 0.0001, &v191);
    v163 = *&v191.var2;
    v168 = *&v191.var0;
    v108 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicDownsampleV];
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v168, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v163, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
    {
      v109 = v168.f64[1];
      v110 = v163.f64[1];
    }

    else
    {
      v109 = *(MEMORY[0x1E695F040] + 8);
      v110 = *(MEMORY[0x1E695F040] + 24);
      v163.f64[0] = *(MEMORY[0x1E695F040] + 16);
      v168.f64[0] = *MEMORY[0x1E695F040];
    }

    v187[0] = MEMORY[0x1E69E9820];
    v187[1] = 3221225472;
    v187[2] = __38__CIBicubicScaleTransform_outputImage__block_invoke_7;
    v187[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v187[4] = v179;
    v195[0] = inputImage;
    v195[1] = [CIVector vectorWithX:1.0 Y:(1.0 / *&v174) Z:1.0 W:v106];
    v195[2] = [CIVector vectorWithX:v149.f32[0] Y:v149.f32[1] Z:v149.f32[2] W:v149.f32[3]];
    v195[3] = [CIVector vectorWithX:v148.f32[0] Y:v148.f32[1] Z:v148.f32[2] W:v148.f32[3]];
    inputImage = -[CIKernel applyWithExtent:roiCallback:arguments:](v108, "applyWithExtent:roiCallback:arguments:", v187, [MEMORY[0x1E695DEC8] arrayWithObjects:v195 count:4], v168.f64[0], v109, v163.f64[0], v110);
    v96 = __PAIR64__(1.0, v179);
    LODWORD(v91) = 1.0;
    v174 = *&v91;
LABEL_150:
    LODWORD(v91) = 1.0;
    v180 = v96;
    if (*&v96 > 1.0 || (v96 = v174, *&v174 > 1.0) || inputImage == selfCopy->inputImage)
    {
      [(CIImage *)inputImage extent:v91];
      v111 = v211.origin.x;
      v112 = v211.origin.y;
      v113 = v211.size.width;
      v114 = v211.size.height;
      if (CGRectIsInfinite(v211))
      {
        *&v191.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        *&v191.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        v212.origin.x = v111;
        v212.origin.y = v112;
        v212.size.width = v113;
        v212.size.height = v114;
        if (CGRectIsNull(v212))
        {
          *&v191.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
          v191.var2 = 0.0;
          v191.var3 = 0.0;
        }

        else
        {
          v191.var0 = v111;
          v191.var1 = v112;
          v191.var2 = v113;
          v191.var3 = v114;
        }
      }

      Rectangle::inset(&v191, -2.0, -2.0, &v185);
      v115.f64[0] = v185.f64[0];
      if (fabs(v185.f64[0]) == INFINITY || fabs(v185.f64[1]) == INFINITY)
      {
        *&v189.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
        v189.var2 = 0.0;
        v189.var3 = 0.0;
      }

      else
      {
        v130 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
        v131 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v185, v131), vceqq_f64(v186, v130))))))
        {
          v132 = vcvtq_f64_f32(__PAIR64__(v174, v180.u32[0]));
          v115.f64[1] = v185.f64[1];
          *&v189.var0 = vmulq_f64(v115, v132);
          *&v189.var2 = vmulq_f64(v186, v132);
        }

        else
        {
          *&v189.var0 = v131;
          *&v189.var2 = v130;
        }
      }

      Rectangle::integralize(&v189, 0.0001, &v190);
      v191 = v190;
      v116 = COERCE_DOUBLE(vdiv_f32(v142, v180));
      v181 = v116;
      *&v116 = v144;
      if (*&v143 == 1.0 && v144 == 0.0)
      {
        v143 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicUpsample10, v116, v143];
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v191.var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(*&v191.var2, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
        {
          var2 = v191.var2;
          var0 = v191.var0;
          var1 = v191.var1;
          var3 = v191.var3;
        }

        else
        {
          var1 = *(MEMORY[0x1E695F040] + 8);
          var3 = *(MEMORY[0x1E695F040] + 24);
          var2 = *(MEMORY[0x1E695F040] + 16);
          var0 = *MEMORY[0x1E695F040];
        }

        v184[0] = MEMORY[0x1E69E9820];
        v184[1] = 3221225472;
        v184[2] = __38__CIBicubicScaleTransform_outputImage__block_invoke_8;
        v184[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v184[4] = v181;
        v194[0] = inputImage;
        v194[1] = [CIVector vectorWithX:*&v181 Y:*(&v181 + 1)];
        return -[CIKernel applyWithExtent:roiCallback:arguments:](v143, "applyWithExtent:roiCallback:arguments:", v184, [MEMORY[0x1E695DEC8] arrayWithObjects:v194 count:2], var0, var1, var2, var3);
      }

      else if (v144 == 0.0)
      {
        v1432 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicUpsampleX0, v116, v143];
        Rectangle::operator CGRect();
        v122 = v121;
        v124 = v123;
        v126 = v125;
        v128 = v127;
        v183[0] = MEMORY[0x1E69E9820];
        v183[1] = 3221225472;
        v183[2] = __38__CIBicubicScaleTransform_outputImage__block_invoke_9;
        v183[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v183[4] = v181;
        v193[0] = inputImage;
        v193[1] = [CIVector vectorWithX:*&v181 Y:*(&v181 + 1)];
        v193[2] = [CIVector vectorWithX:v149.f32[0] Y:v149.f32[1] Z:v149.f32[2] W:v149.f32[3]];
        v193[3] = [CIVector vectorWithX:v148.f32[0] Y:v148.f32[1] Z:v148.f32[2] W:v148.f32[3]];
        return -[CIKernel applyWithExtent:roiCallback:arguments:](v1432, "applyWithExtent:roiCallback:arguments:", v183, [MEMORY[0x1E695DEC8] arrayWithObjects:v193 count:4], v122, v124, v126, v128);
      }

      else
      {
        v1433 = [CIKernel kernelWithInternalRepresentation:&CI::_cubicUpsample, v116, v143];
        Rectangle::operator CGRect();
        v135 = v134;
        v137 = v136;
        v139 = v138;
        v141 = v140;
        v182[0] = MEMORY[0x1E69E9820];
        v182[1] = 3221225472;
        v182[2] = __38__CIBicubicScaleTransform_outputImage__block_invoke_10;
        v182[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
        *&v182[4] = v181;
        v192[0] = inputImage;
        v192[1] = [CIVector vectorWithX:*&v181 Y:*(&v181 + 1)];
        v192[2] = [CIVector vectorWithX:v149.f32[0] Y:v149.f32[1] Z:v149.f32[2] W:v149.f32[3]];
        v192[3] = [CIVector vectorWithX:v148.f32[0] Y:v148.f32[1] Z:v148.f32[2] W:v148.f32[3]];
        return -[CIKernel applyWithExtent:roiCallback:arguments:](v1433, "applyWithExtent:roiCallback:arguments:", v182, [MEMORY[0x1E695DEC8] arrayWithObjects:v192 count:4], v135, v137, v139, v141);
      }
    }

    return inputImage;
  }

  return +[CIImage emptyImage];
}

void __38__CIBicubicScaleTransform_outputImage__block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsInfinite(*&a1))
  {
    *&v11.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v11.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v16.origin.x = a1;
    v16.origin.y = a2;
    v16.size.width = a3;
    v16.size.height = a4;
    if (CGRectIsNull(v16))
    {
      *&v11.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      *&v11.var2 = 0uLL;
    }

    else
    {
      v11.var0 = a1;
      v11.var1 = a2;
      v11.var2 = a3;
      v11.var3 = a4;
    }
  }

  Rectangle::inset(&v11, -2.0, -2.0, &v12);
  v8.f64[0] = v12.f64[0];
  if (fabs(v12.f64[0]) == INFINITY || fabs(v12.f64[1]) == INFINITY)
  {
    *&v14.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v14.var2 = 0.0;
    v14.var3 = 0.0;
  }

  else
  {
    v9 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v10 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v12, v10), vceqq_f64(v13, v9))))))
    {
      v8.f64[1] = v12.f64[1];
      *&v14.var0 = vaddq_f64(v8, v8);
      *&v14.var2 = vaddq_f64(v13, v13);
    }

    else
    {
      *&v14.var0 = v10;
      *&v14.var2 = v9;
    }
  }

  Rectangle::integralize(&v14, 0.0001, &v15);
}

@end