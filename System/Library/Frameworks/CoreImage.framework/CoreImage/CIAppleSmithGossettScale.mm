@interface CIAppleSmithGossettScale
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAppleSmithGossettScale

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryGeometryAdjustment";
  v5[1] = @"CICategoryVideo";
  v5[2] = @"CICategoryStillImage";
  v5[3] = @"CICategoryBuiltIn";
  v5[4] = @"CICategoryApplePrivate";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v7[1] = @"12";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.14";
  v6[3] = @"inputScale";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v4[0] = &unk_1F1082A08;
  v4[1] = &unk_1F1082A18;
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeMax";
  v4[2] = &unk_1F1082A28;
  v4[3] = &unk_1F1082A28;
  v3[4] = @"CIAttributeDefault";
  v3[5] = @"CIAttributeIdentity";
  v4[4] = &unk_1F1082A28;
  v4[5] = &unk_1F1082A28;
  v3[6] = @"CIAttributeType";
  v4[6] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v56 = *MEMORY[0x1E69E9840];
  [(NSNumber *)self->inputScale floatValue];
  inputImage = self->inputImage;
  if (v3 >= 1.0 || v3 < 0.5)
  {
    inputScale = self->inputScale;
    v53[0] = @"inputScale";
    v53[1] = @"inputAspectRatio";
    v54[0] = inputScale;
    v54[1] = &unk_1F1082A28;
    return -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", @"CILanczosScaleTransform", [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:v53 count:2]);
  }

  v8 = v3;
  imageByClampingToExtent = [(CIImage *)self->inputImage imageByClampingToExtent];
  v10 = 0.0;
  v11 = [CIVector vectorWithX:1.0 / v8 Y:1.0 Z:1.0 W:0.0];
  [(CIImage *)imageByClampingToExtent extent];
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (CGRectIsInfinite(*&v12))
  {
    v10 = 1.79769313e308;
    v17 = -8.98846567e307;
    v19 = 1.79769313e308;
  }

  else
  {
    v57.origin.x = v16;
    v57.origin.y = v17;
    v57.size.width = v18;
    v57.size.height = v19;
    if (!CGRectIsNull(v57))
    {
      v10 = v18;
      goto LABEL_13;
    }

    v17 = INFINITY;
    v19 = 0.0;
  }

  v16 = v17;
LABEL_13:
  v20 = fabs(v17) == INFINITY;
  if (fabs(v16) == INFINITY || v20)
  {
    *&v52.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v52.var2 = 0.0;
    v52.var3 = 0.0;
  }

  else if (v16 == -8.98846567e307 && v17 == -8.98846567e307 && v10 == 1.79769313e308 && v19 == 1.79769313e308)
  {
    *&v52.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v52.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v52.var0 = v16 * v8;
    v52.var1 = v17;
    v52.var2 = v10 * v8;
    v52.var3 = v19;
  }

  Rectangle::inset(&v52, -3.0, -0.0, &v55);
  Rectangle::integralize(&v55, 0.0001, &v48);
  v42 = v49;
  v46 = v48;
  v21 = COERCE_DOUBLE([(CIImage *)imageByClampingToExtent imageBySamplingNearest]);
  v22 = [CIKernel kernelWithInternalRepresentation:&CI::_asgDownH];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v46, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v42, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
  {
    v23 = v46.f64[1];
    v24 = v42.f64[1];
  }

  else
  {
    v23 = *(MEMORY[0x1E695F040] + 8);
    v24 = *(MEMORY[0x1E695F040] + 24);
    v42.f64[0] = *(MEMORY[0x1E695F040] + 16);
    v46.f64[0] = *MEMORY[0x1E695F040];
  }

  *&v48.f64[0] = MEMORY[0x1E69E9820];
  *&v48.f64[1] = 3221225472;
  *&v49.f64[0] = ___ZL5downHP7CIImagedd_block_invoke;
  *&v49.f64[1] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v50 = 0x4012C985F06F6944;
  v51 = v8;
  v55.var0 = v21;
  *&v55.var1 = v11;
  *&v55.var2 = [MEMORY[0x1E696AD98] numberWithDouble:{0.0, *&v42.f64[0]}];
  v25 = -[CIKernel applyWithExtent:roiCallback:arguments:](v22, "applyWithExtent:roiCallback:arguments:", &v48, [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:3], v46.f64[0], v23, v43, v24);
  v26 = [CIVector vectorWithX:1.0 Y:1.0 / v8 Z:0.0 W:1.0];
  [(CIImage *)v25 extent];
  x = v58.origin.x;
  y = v58.origin.y;
  width = v58.size.width;
  height = v58.size.height;
  if (CGRectIsInfinite(v58))
  {
    width = 1.79769313e308;
    y = -8.98846567e307;
    height = 1.79769313e308;
LABEL_29:
    x = y;
    goto LABEL_30;
  }

  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  if (CGRectIsNull(v59))
  {
    width = 0.0;
    y = INFINITY;
    height = 0.0;
    goto LABEL_29;
  }

LABEL_30:
  v31 = fabs(y) == INFINITY;
  if (fabs(x) == INFINITY || v31)
  {
    *&v52.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v52.var2 = 0.0;
    v52.var3 = 0.0;
  }

  else if (x == -8.98846567e307 && y == -8.98846567e307 && width == 1.79769313e308 && height == 1.79769313e308)
  {
    *&v52.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v52.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v52.var0 = x;
    v52.var1 = y * v8;
    v52.var2 = width;
    v52.var3 = height * v8;
  }

  Rectangle::inset(&v52, -0.0, -3.0, &v55);
  Rectangle::integralize(&v55, 0.0001, &v48);
  v44 = v49;
  v47 = v48;
  v32 = COERCE_DOUBLE([(CIImage *)v25 imageBySamplingNearest]);
  v33 = [CIKernel kernelWithInternalRepresentation:&CI::_asgDownV];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v47, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v44, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
  {
    v34 = v47.f64[1];
    v35 = v44.f64[1];
  }

  else
  {
    v34 = *(MEMORY[0x1E695F040] + 8);
    v35 = *(MEMORY[0x1E695F040] + 24);
    v44.f64[0] = *(MEMORY[0x1E695F040] + 16);
    v47.f64[0] = *MEMORY[0x1E695F040];
  }

  *&v48.f64[0] = MEMORY[0x1E69E9820];
  *&v48.f64[1] = 3221225472;
  *&v49.f64[0] = ___ZL5downVP7CIImagedd_block_invoke;
  *&v49.f64[1] = &__block_descriptor_48_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v50 = 0x4012C985F06F6944;
  v51 = v8;
  v55.var0 = v32;
  *&v55.var1 = v26;
  *&v55.var2 = [MEMORY[0x1E696AD98] numberWithDouble:{0.0, *&v44.f64[0]}];
  v36 = -[CIKernel applyWithExtent:roiCallback:arguments:](v33, "applyWithExtent:roiCallback:arguments:", &v48, [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:3], v47.f64[0], v34, v45, v35);
  [(CIImage *)self->inputImage extent];
  if (!CGRectIsInfinite(v60))
  {
    [(CIImage *)self->inputImage extent];
    v61.origin.x = v37 * v8;
    v61.origin.y = v38 * v8;
    v61.size.width = v39 * v8;
    v61.size.height = v40 * v8;
    v62 = CGRectIntegral(v61);
    return [(CIImage *)v36 imageByCroppingToRect:v62.origin.x, v62.origin.y, v62.size.width, v62.size.height];
  }

  return v36;
}

@end