@interface CIAreaBoundsRed
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIAreaBoundsRed

+ (id)customAttributes
{
  v5[3] = *MEMORY[0x1E69E9840];
  v4[0] = @"CIAttributeFilterCategories";
  v3[0] = @"CICategoryReduction";
  v3[1] = @"CICategoryVideo";
  v3[2] = @"CICategoryStillImage";
  v3[3] = @"CICategoryHighDynamicRange";
  v3[4] = @"CICategoryBuiltIn";
  v5[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:5];
  v5[1] = @"18";
  v4[1] = @"CIAttributeFilterAvailable_iOS";
  v4[2] = @"CIAttributeFilterAvailable_Mac";
  v5[2] = @"15.0";
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (id)outputImage
{
  v69[1] = *MEMORY[0x1E69E9840];
  v2 = [(CIReductionFilter *)self offsetAndCrop];
  if (v2 && (v3 = v2, [v2 extent], !CGRectIsEmpty(v71)))
  {
    v5 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_redThreshold];
    [v3 extent];
    v69[0] = v3;
    v10 = -[CIColorKernel applyWithExtent:arguments:](v5, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1], v6, v7, v8, v9);
    [(CIImage *)v10 extent];
    v12 = v11;
    [(CIImage *)v10 extent];
    v14 = v12;
    v16 = v15;
    if (v14 > 1024.0 || v16 > 1024.0)
    {
      v18 = fminf(1024.0 / v16, 1.0);
      v67[0] = @"inputScale";
      *&v13 = v18;
      v68[0] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
      v67[1] = @"inputAspectRatio";
      *&v19 = fminf(1024.0 / v14, 1.0) / v18;
      v68[1] = [MEMORY[0x1E696AD98] numberWithFloat:v19];
      v10 = -[CIImage imageByCroppingToRect:](-[CIImage imageByApplyingFilter:withInputParameters:](v10, "imageByApplyingFilter:withInputParameters:", @"CIMaximumScaleTransform", [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:2]), "imageByCroppingToRect:", 0.0, 0.0, fminf(v14, 1024.0), fminf(v16, 1024.0));
    }

    [(CIImage *)v10 extent];
    v21 = v20;
    v23 = v22;
    v24 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_maskBoundsInit];
    [(CIImage *)v10 extent];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v66[0] = v10;
    v66[1] = [CIVector vectorWithX:1.0 / v21 Y:1.0 / v23];
    v33 = -[CIColorKernel applyWithExtent:arguments:](v24, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2], v26, v28, v30, v32);
    v34 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_maskBoundsReduce];
    if (v21 > 1.001 || v23 > 1.001)
    {
      v56 = vdupq_n_s64(0x7FF0000000000000uLL);
      v57 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v58 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v35 = MEMORY[0x1E695F040];
      do
      {
        [(CIImage *)v33 extent];
        x = v72.origin.x;
        y = v72.origin.y;
        width = v72.size.width;
        height = v72.size.height;
        if (CGRectIsInfinite(v72))
        {
          v40 = -8.98846567e307;
          v41 = 1.79769313e308;
          v42 = 1.79769313e308;
          v43 = -8.98846567e307;
        }

        else
        {
          v73.origin.x = x;
          v73.origin.y = y;
          v73.size.width = width;
          v73.size.height = height;
          IsNull = CGRectIsNull(v73);
          v43 = INFINITY;
          if (IsNull)
          {
            v41 = 0.0;
          }

          else
          {
            v41 = width;
          }

          if (IsNull)
          {
            v42 = 0.0;
          }

          else
          {
            v42 = height;
          }

          if (IsNull)
          {
            v40 = INFINITY;
          }

          else
          {
            v40 = y;
          }

          if (!IsNull)
          {
            v43 = x;
          }
        }

        v45 = fabs(v40) == INFINITY;
        if (fabs(v43) != INFINITY && !v45)
        {
          if (v43 == -8.98846567e307 && v40 == -8.98846567e307 && v41 == 1.79769313e308 && v42 == 1.79769313e308)
          {
            *&v61.var0 = v58;
            *&v61.var2 = v57;
          }

          else
          {
            v61.var0 = v43 * 0.5;
            v61.var1 = v40 * 0.5;
            v61.var2 = v41 * 0.5;
            v61.var3 = v42 * 0.5;
          }
        }

        else
        {
          *&v61.var0 = v56;
          v61.var2 = 0.0;
          v61.var3 = 0.0;
        }

        Rectangle::integralize(&v61, 0.0001, &v62);
        if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v62, v58), vceqq_f64(v63, v57))))))
        {
          v59 = v63.f64[0];
          v47 = v62.f64[1];
          v60 = v62.f64[0];
          v48 = v63.f64[1];
        }

        else
        {
          v47 = v35[1];
          v48 = v35[3];
          v59 = v35[2];
          v60 = *v35;
        }

        v65 = v33;
        v33 = -[CIColorKernel applyWithExtent:roiCallback:arguments:](v34, "applyWithExtent:roiCallback:arguments:", &__block_literal_global_224, [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1], v60, v47, v59, v48);
        [(CIImage *)v33 extent];
      }

      while (v50 > 1.001 || v49 > 1.001);
    }

    v51 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_maskBoundsPost];
    [(CIImage *)v33 extent];
    v64 = v33;
    return -[CIColorKernel applyWithExtent:arguments:](v51, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1], v52, v53, v54, v55);
  }

  else
  {

    return +[CIImage emptyImage];
  }
}

void __30__CIAreaBoundsRed_outputImage__block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectIsInfinite(*&a1))
  {
    v8 = -8.98846567e307;
    v9 = 1.79769313e308;
    v10 = 1.79769313e308;
    v11 = -8.98846567e307;
  }

  else
  {
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    IsNull = CGRectIsNull(v20);
    v10 = 0.0;
    v11 = INFINITY;
    if (IsNull)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = a3;
    }

    if (IsNull)
    {
      v8 = INFINITY;
    }

    else
    {
      v10 = a4;
      v8 = a2;
    }

    if (!IsNull)
    {
      v11 = a1;
    }
  }

  v13 = fabs(v8) == INFINITY;
  if (fabs(v11) != INFINITY && !v13)
  {
    if (v11 == -8.98846567e307 && v8 == -8.98846567e307 && v9 == 1.79769313e308 && v10 == 1.79769313e308)
    {
      *&v18.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v18.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v18.var0 = v11 + v11;
      v18.var1 = v8 + v8;
      v18.var2 = v9 + v9;
      v18.var3 = v10 + v10;
    }
  }

  else
  {
    *&v18.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    *&v18.var2 = 0uLL;
  }

  Rectangle::integralize(&v18, 0.0001, &v19);
}

@end