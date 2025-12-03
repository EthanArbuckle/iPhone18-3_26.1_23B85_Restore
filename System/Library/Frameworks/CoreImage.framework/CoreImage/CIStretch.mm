@interface CIStretch
+ (id)customAttributes;
- (double)computeDOD:(uint64_t)d;
- (id)outputImage;
- (void)setDefaults;
@end

@implementation CIStretch

+ (id)customAttributes
{
  v7[2] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5 = @"CICategoryApplePrivate";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:1];
  v6[1] = @"inputPoint";
  v3[1] = @"CIAttributeType";
  v4[0] = [CIVector vectorWithX:150.0 Y:150.0, @"CIAttributeDefault"];
  v4[1] = @"CIAttributeTypePosition";
  v7[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
}

- (void)setDefaults
{
  v3 = [CIVector vectorWithX:150.0 Y:150.0];

  [(CIStretch *)self setInputPoint:v3];
}

- (double)computeDOD:(uint64_t)d
{
  [*(d + 80) extent];

  *&result = CGRectInset(*&v2, -v7, -v7);
  return result;
}

- (id)outputImage
{
  v48[2] = *MEMORY[0x1E69E9840];
  result = self->inputImage;
  if (result)
  {
    if (self->inputSize)
    {
      [(CIVector *)self->inputSize X];
      v5 = v4;
      [(CIVector *)self->inputSize Y];
      v7 = v6;
    }

    else
    {
      [result extent];
      v5 = v8;
      v7 = v9;
    }

    v10 = hypot(v5, v7);
    v11 = v10;
    v12 = v11 * 0.84 * 0.5;
    v13 = v11 * 0.18 * 0.5;
    v14 = v11 * 0.234 * 0.5;
    [(CIVector *)self->inputPoint X];
    v16 = v15;
    [(CIVector *)self->inputPoint Y];
    v18 = [CIVector vectorWithX:v16 Y:v17];
    v19 = [CIVector vectorWithX:1.0 / v12 Y:v13 Z:1.0 / v14];
    [(CIVector *)v18 X];
    v41 = v20;
    [(CIVector *)v18 Y];
    v21.f64[0] = v41;
    v21.f64[1] = v22;
    v23 = vcvt_f32_f64(v21);
    [(CIVector *)v19 X];
    v42 = v24;
    [(CIVector *)v19 Y];
    v25.f64[0] = v42;
    v25.f64[1] = v26;
    v43 = vcvt_f32_f64(v25);
    [(CIVector *)v19 Z];
    v40 = v27;
    [(CIVector *)v19 W];
    v28.f64[0] = v40;
    v28.f64[1] = v29;
    v44 = vcvt_hight_f32_f64(v43, v28);
    [(CIStretch *)self computeDOD:?];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    _kernel = [(CIStretch *)self _kernel];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __24__CIStretch_outputImage__block_invoke;
    v45[3] = &__block_descriptor_56_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v47 = v23;
    v46 = v44;
    inputImage = self->inputImage;
    v48[0] = v18;
    v48[1] = v19;
    return [_kernel applyWithExtent:v45 roiCallback:inputImage inputImage:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", v48, 2), v31, v33, v35, v37}];
  }

  return result;
}

double __24__CIStretch_outputImage__block_invoke(float32x4_t *a1, simd_float4 a2, double a3, __n128 a4, double a5)
{
  v52 = *a2.i64;
  v53 = a4.n128_f64[0];
  a4.n128_u64[0] = a1[3].u64[0];
  v58 = a4;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  v10.f32[0] = *a2.i64;
  v55 = v10.i32[0];
  a2.f32[0] = a3;
  v51 = a2.i32[0];
  v10.i32[1] = a2.i32[0];
  v59 = a1[2];
  __asm { FMOV            V12.2S, #1.0 }

  *a2.f32 = vsub_f32(_D12, vminnm_f32(vmaxnm_f32(vmul_n_f32(vabd_f32(v10, a4.n128_u64[0]), v59.f32[0]), 0), _D12));
  __asm { FMOV            V10.2S, #3.0 }

  v17 = vmul_f32(*a2.f32, vmul_f32(*a2.f32, vsub_f32(_D10, vadd_f32(*a2.f32, *a2.f32))));
  v54 = vdup_lane_s32(a4.n128_u64[0], 1);
  *a2.f32 = vmul_laneq_f32(vsub_f32(v10, v54), v59, 2);
  v18 = vsub_f32(v10, vmul_f32(vmul_lane_f32(*&_simd_sin_f4(a2), *v59.f32, 1), v17));
  v67.origin.x = v18.f32[0];
  v67.origin.y = v18.f32[1];
  v67.size.width = 0.0;
  v67.size.height = 0.0;
  v61.origin.x = v6;
  v61.origin.y = v7;
  v61.size.width = v8;
  v61.size.height = v9;
  v62 = CGRectUnion(v61, v67);
  x = v62.origin.x;
  y = v62.origin.y;
  width = v62.size.width;
  height = v62.size.height;
  *&v62.origin.x = a3 + a5;
  LODWORD(a5) = LODWORD(v62.origin.x);
  v23 = v58.n128_u64[1];
  v56 = __PAIR64__(LODWORD(v62.origin.x), v55);
  *&v62.origin.x = vsub_f32(_D12, vminnm_f32(vmaxnm_f32(vmul_n_f32(vabd_f32(v56, v58.n128_u64[0]), v59.f32[0]), 0), _D12));
  v49 = _D10;
  v24 = vmul_f32(*&v62.origin.x, vmul_f32(*&v62.origin.x, vsub_f32(_D10, vadd_f32(*&v62.origin.x, *&v62.origin.x))));
  *&v62.origin.x = vmul_laneq_f32(vsub_f32(v56, v54), v59, 2);
  v25 = vsub_f32(v56, vmul_f32(vmul_lane_f32(*&_simd_sin_f4(v62.origin), *v59.f32, 1), v24));
  v68.origin.x = v25.f32[0];
  v68.origin.y = v25.f32[1];
  v68.size.width = 0.0;
  v68.size.height = 0.0;
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  v64 = CGRectUnion(v63, v68);
  v26 = v64.origin.x;
  v27 = v64.origin.y;
  v28 = v64.size.width;
  v29 = v64.size.height;
  *&v64.origin.x = v52 + v53;
  v56.i32[0] = LODWORD(v64.origin.x);
  *&v64.origin.y = __PAIR64__(v51, LODWORD(v64.origin.x));
  v30 = v58.n128_u64[1];
  *&v64.origin.x = vsub_f32(_D12, vminnm_f32(vmaxnm_f32(vmul_n_f32(vabd_f32(__PAIR64__(v51, LODWORD(v64.origin.x)), v58.n128_u64[0]), v59.f32[0]), 0), _D12));
  v31 = vmul_f32(*&v64.origin.x, vmul_f32(*&v64.origin.x, vsub_f32(_D10, vadd_f32(*&v64.origin.x, *&v64.origin.x))));
  *&v64.origin.x = vmul_laneq_f32(vsub_f32(*&v64.origin.y, v54), v59, 2);
  v32 = vsub_f32(*&v64.origin.y, vmul_f32(vmul_lane_f32(*&_simd_sin_f4(v64.origin), *v59.f32, 1), v31));
  v69.origin.x = v32.f32[0];
  v69.origin.y = v32.f32[1];
  v69.size.width = 0.0;
  v69.size.height = 0.0;
  v65.origin.x = v26;
  v65.origin.y = v27;
  v65.size.width = v28;
  v65.size.height = v29;
  v66 = CGRectUnion(v65, v69);
  v33 = v66.origin.x;
  v34 = v66.origin.y;
  v35 = v66.size.width;
  v36 = v66.size.height;
  v37 = v58.n128_u64[1];
  v57 = __PAIR64__(LODWORD(a5), v56.u32[0]);
  *&v66.origin.x = vsub_f32(_D12, vminnm_f32(vmaxnm_f32(vmul_n_f32(vabd_f32(v57, v58.n128_u64[0]), v59.f32[0]), 0), _D12));
  v38 = vmul_f32(*&v66.origin.x, vmul_f32(*&v66.origin.x, vsub_f32(v49, vadd_f32(*&v66.origin.x, *&v66.origin.x))));
  *&v66.origin.x = vmul_laneq_f32(vsub_f32(v57, v54), v59, 2);
  v39 = vsub_f32(v57, vmul_f32(vmul_lane_f32(*&_simd_sin_f4(v66.origin), *v59.f32, 1), v38));
  v40 = v39.f32[0];
  v41 = v39.f32[1];
  v42 = 0;
  v43 = 0;
  v44 = v33;
  v45 = v34;
  v46 = v35;
  v47 = v36;

  *&result = CGRectUnion(*&v44, *&v40);
  return result;
}

@end