void *CI::InstanceCounted<(CI::Type)65>::~InstanceCounted(void *result)
{
  *result = &unk_1F10322E8;
  atomic_fetch_add(&dword_1ED7C47BC[63], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)65>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10322E8;
  atomic_fetch_add(&dword_1ED7C47BC[63], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

unint64_t CI::sw_ci_colormatrix_canonical(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 88);
  v17 = *(v3 + 80);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (v16 == 5)
  {
    v19 = v18;
  }

  v20 = vmulq_n_f32(*v7, 1.0 / fmaxf(COERCE_FLOAT(HIDWORD(*v7)), 0.00001));
  v20.i32[3] = HIDWORD(*v7);
  v21 = vmulq_f32(*v11, v20);
  *v21.f32 = vadd_f32(*v21.f32, *&vextq_s8(v21, v21, 8uLL));
  v22 = vmulq_f32(*v15, v20);
  *v22.i8 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  *v23.f32 = vzip1_s32(*v21.f32, *v22.i8);
  *v21.f32 = vzip2_s32(*v21.f32, *v22.i8);
  v24 = vmulq_f32(*v19, v20);
  *&v23.u32[2] = vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
  *&v21.u32[2] = vdup_lane_s32(*&v23.u32[2], 1);
  return vmulq_laneq_f32(vaddq_f32(v23, v21), *v7, 3).u64[0];
}

CI::MetalKernel *CI::PrecompiledColorKernel::PrecompiledColorKernel(CI::MetalKernel *a1, const char *a2, CIKernelLibrary *a3, char *a4, char *a5, char a6, void **a7, uint64_t a8, __int16 a9, int a10, int a11, NSDictionary *a12, NSDictionary *a13, uint64_t *a14, char a15)
{
  v21 = CI::MetalKernel::MetalKernel(a1, a2, a3, a12, a13, a15, (a4 | a5) != 0);
  CI::ColorKernel::ColorKernel(v21 + 80, a2, a4, a5, a6, a7, a8, a9, a10, a11, a14, 0, 0);
  *a1 = &unk_1F1038850;
  *(a1 + 10) = &unk_1F1038898;
  return a1;
}

CI::MetalKernel *CI::PrecompiledWarpKernel::PrecompiledWarpKernel(CI::MetalKernel *a1, const char *a2, CIKernelLibrary *a3, char *a4, char *a5, char a6, void **a7, uint64_t a8, __int16 a9, int a10, NSDictionary *a11, NSDictionary *a12, char a13)
{
  v20 = CI::MetalKernel::MetalKernel(a1, a2, a3, a11, a12, a13, (a4 | a5) != 0);
  CI::WarpKernel::WarpKernel(v20 + 80, a2, a4, a5, a6, a7, a8, a9, a10, 0);
  *a1 = &unk_1F1038900;
  *(a1 + 10) = &unk_1F1038948;
  return a1;
}

uint64_t CI::SerialValArray<int>::SerialValArray(uint64_t a1, int a2)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (a2 > 10)
  {
    *(a1 + 4) = a2;
    v4 = malloc_type_calloc((a2 - 10), 4uLL, 0x100004052888210uLL);
  }

  else
  {
    v4 = 0;
    *(a1 + 4) = 10;
  }

  *(a1 + 16) = v4;
  if (a2 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a2;
  }

  *(a1 + 8) = v5;
  return a1;
}

void OUTLINED_FUNCTION_4_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_11_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x22u);
}

uint64_t OUTLINED_FUNCTION_14@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = result;
  return result;
}

double CI::sw_LabDeltaE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v59 = *v7;
  v64 = *v11;
  v12.i32[1] = HIDWORD(v11->i64[0]);
  *v12.i32 = 1.0 - COERCE_FLOAT(HIDWORD(*v7));
  v13 = vaddq_f32(*v7, vdupq_lane_s32(v12, 0));
  v14 = vmulq_f32(v13, xmmword_19CF27030);
  v15 = vmulq_f32(v13, xmmword_19CF27040);
  *v14.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.f32, *v15.i8), vzip2_s32(*v14.f32, *v15.i8)));
  v16 = vmulq_f32(v13, xmmword_19CF27050);
  v14.f32[2] = v16.f32[2] + vaddv_f32(*v16.f32);
  v14.i32[3] = 0;
  v17 = vdupq_n_s32(0xBC1118C2);
  v18 = vmaxnmq_f32(v14, 0);
  v62 = vaddq_f32(v18, v17);
  v66 = vdupq_n_s32(0x40F92F1Bu);
  v67 = v17;
  v65 = vdupq_n_s32(0x3E0D3DCBu);
  v55 = vaddq_f32(vmulq_f32(v18, v66), v65);
  v18.i32[3] = 0;
  v19 = vbslq_s8(vcltzq_f32(v62), v55, _simd_pow_f4(v18, xmmword_19CF27060));
  v20.f32[0] = *&v19.i32[1] * 116.0 + -16.0;
  v20.f32[1] = (*v19.i32 - *&v19.i32[1]) * 500.0;
  v20.f32[2] = (*&v19.i32[1] - *&v19.i32[2]) * 200.0;
  v63 = v20;
  v21 = vmulq_f32(v59, xmmword_19CF27030);
  v22 = vmulq_f32(v59, xmmword_19CF27040);
  *v21.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)), vadd_f32(vzip1_s32(*v21.f32, *v22.i8), vzip2_s32(*v21.f32, *v22.i8)));
  v23 = vmulq_f32(v59, xmmword_19CF27050);
  v21.f32[2] = v23.f32[2] + vaddv_f32(*v23.f32);
  v21.i32[3] = 0;
  v24 = vmaxnmq_f32(v21, 0);
  v56 = vaddq_f32(vmulq_f32(v24, v66), v65);
  v60 = vaddq_f32(v24, v67);
  v24.i32[3] = 0;
  v25 = vbslq_s8(vcltzq_f32(v60), v56, _simd_pow_f4(v24, xmmword_19CF27060));
  v26.f32[0] = *&v25.i32[1] * 116.0 + -16.0;
  v26.f32[1] = (*v25.i32 - *&v25.i32[1]) * 500.0;
  v26.f32[2] = (*&v25.i32[1] - *&v25.i32[2]) * 200.0;
  v61 = v26;
  *v25.i32 = 1.0 - v64.f32[3];
  v27 = vaddq_f32(v64, vdupq_lane_s32(*v25.i8, 0));
  v28 = vmulq_f32(v27, xmmword_19CF27030);
  v29 = vmulq_f32(v27, xmmword_19CF27040);
  *v28.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v28, v28, 8uLL), *&vextq_s8(v29, v29, 8uLL)), vadd_f32(vzip1_s32(*v28.f32, *v29.i8), vzip2_s32(*v28.f32, *v29.i8)));
  v30 = vmulq_f32(v27, xmmword_19CF27050);
  v28.f32[2] = v30.f32[2] + vaddv_f32(*v30.f32);
  v28.i32[3] = 0;
  v31 = vmaxnmq_f32(v28, 0);
  v54 = vaddq_f32(vmulq_f32(v31, v66), v65);
  v57 = vaddq_f32(v31, v67);
  v31.i32[3] = 0;
  v32 = vbslq_s8(vcltzq_f32(v57), v54, _simd_pow_f4(v31, xmmword_19CF27060));
  v33.f32[0] = *&v32.i32[1] * 116.0 + -16.0;
  v33.f32[1] = (*v32.i32 - *&v32.i32[1]) * 500.0;
  v33.f32[2] = (*&v32.i32[1] - *&v32.i32[2]) * 200.0;
  v58 = v33;
  v34 = vmulq_f32(v64, xmmword_19CF27030);
  v35 = vmulq_f32(v64, xmmword_19CF27040);
  *v34.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)), vadd_f32(vzip1_s32(*v34.f32, *v35.i8), vzip2_s32(*v34.f32, *v35.i8)));
  v36 = vmulq_f32(v64, xmmword_19CF27050);
  v34.f32[2] = v36.f32[2] + vaddv_f32(*v36.f32);
  v34.i32[3] = 0;
  v37 = vmaxnmq_f32(v34, 0);
  v69 = vaddq_f32(v37, v67);
  v68 = vaddq_f32(vmulq_f32(v37, v66), v65);
  v37.i32[3] = 0;
  v38 = _simd_pow_f4(v37, xmmword_19CF27060);
  v39.i32[3] = v68.i32[3];
  _Q0 = vbslq_s8(vcltzq_f32(v69), v68, v38);
  v39.f32[0] = *&_Q0.i32[1] * 116.0 + -16.0;
  v39.f32[1] = (*_Q0.i32 - *&_Q0.i32[1]) * 500.0;
  v39.f32[2] = (*&_Q0.i32[1] - *&_Q0.i32[2]) * 200.0;
  _Q0.i64[0] = vsubq_f32(v63, v58).u64[0];
  _S1 = _Q0.i32[1];
  _Q3 = vmulq_f32(v63, v63);
  _Q4 = vmulq_f32(v58, v58);
  *_Q3.i8 = vsqrt_f32(vadd_f32(vzip2_s32(*_Q3.i8, *_Q4.i8), vzip1_s32(*&vextq_s8(_Q3, _Q3, 8uLL), *&vextq_s8(_Q4, _Q4, 8uLL))));
  v44 = sqrtf(vmuls_lane_f32(*_Q3.i32, *_Q3.i8, 1));
  __asm { FMLA            S4, S1, V0.S[1] }

  *_Q0.i32 = sqrtf((fmaxf(*_Q4.i32 - ((*_Q3.i32 - *&_Q3.i32[1]) * (*_Q3.i32 - *&_Q3.i32[1])), 0.0) / (((v44 * 0.015) + 1.0) * ((v44 * 0.015) + 1.0))) + ((((*_Q3.i32 - *&_Q3.i32[1]) / ((v44 * 0.045) + 1.0)) * ((*_Q3.i32 - *&_Q3.i32[1]) / ((v44 * 0.045) + 1.0))) + (*_Q0.i32 * *_Q0.i32)));
  _D1 = vsubq_f32(v61, v39).u64[0];
  _Q3.i32[0] = HIDWORD(_D1);
  _Q5 = vmulq_f32(v61, v61);
  v51 = vmulq_f32(v39, v39);
  *v51.i8 = vsqrt_f32(vadd_f32(vzip2_s32(*_Q5.i8, *v51.i8), vzip1_s32(*&vextq_s8(_Q5, _Q5, 8uLL), *&vextq_s8(v51, v51, 8uLL))));
  v52 = sqrtf(vmuls_lane_f32(*v51.i32, *v51.i8, 1));
  __asm { FMLA            S5, S3, V1.S[1] }

  *_Q0.i32 = fmaxf(*_Q0.i32, sqrtf((fmaxf(*_Q5.i32 - ((*v51.i32 - *&v51.i32[1]) * (*v51.i32 - *&v51.i32[1])), 0.0) / (((v52 * 0.015) + 1.0) * ((v52 * 0.015) + 1.0))) + ((((*v51.i32 - *&v51.i32[1]) / ((v52 * 0.045) + 1.0)) * ((*v51.i32 - *&v51.i32[1]) / ((v52 * 0.045) + 1.0))) + (*&_D1 * *&_D1))));
  *&result = vdupq_lane_s32(*_Q0.i8, 0).u64[0];
  return result;
}

__n64 CI::sw_LAB_normalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  result.n64_f32[0] = COERCE_FLOAT(*v7->i8) / 100.0;
  result.n64_u32[1] = vadd_f32(vmul_f32(vext_s8(*v7, *&vextq_s8(*v7->i8, *v7->i8, 8uLL), 4uLL), 0x3C0000003C000000), 0x3F0000003F000000).u32[0];
  return result;
}

__n64 CI::sw_LAB_denormalize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  result.n64_f32[0] = 100.0 * COERCE_FLOAT(*v7->i8);
  result.n64_u32[1] = vmul_f32(vadd_f32(vext_s8(*v7, *&vextq_s8(*v7->i8, *v7->i8, 8uLL), 4uLL), 0xBF000000BF000000), 0x4300000043000000).u32[0];
  return result;
}

CIImage *downBy2H(CIImage *a1)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v2 = [CIVector vectorWithX:2.0 Y:1.0 Z:1.0 W:0.0];
  [(CIImage *)a1 extent];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  if (CGRectIsInfinite(v27))
  {
    v7 = 1.79769313e308;
    v8 = -8.98846567e307;
    v9 = 1.79769313e308;
    v10 = -8.98846567e307;
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    IsNull = CGRectIsNull(v28);
    v10 = INFINITY;
    if (IsNull)
    {
      v8 = INFINITY;
    }

    else
    {
      v8 = y;
    }

    if (IsNull)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = width;
    }

    if (IsNull)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = height;
    }

    if (!IsNull)
    {
      v10 = x;
    }
  }

  v12 = fabs(v8) == INFINITY;
  if (fabs(v10) != INFINITY && !v12)
  {
    if (v10 == -8.98846567e307 && v8 == -8.98846567e307 && v7 == 1.79769313e308 && v9 == 1.79769313e308)
    {
      *&v23.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v23.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v23.var0 = v10 * 0.5;
      v23.var1 = v8;
      v23.var2 = v7 * 0.5;
      v23.var3 = v9;
    }
  }

  else
  {
    *&v23.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v23.var2 = 0.0;
    v23.var3 = 0.0;
  }

  Rectangle::inset(&v23, -3.0, -0.0, &v24);
  Rectangle::integralize(&v24, 0.0001, v25);
  v19 = v25[1];
  v21 = v25[0];
  v14 = [CIKernel kernelWithInternalRepresentation:&CI::_lanczosDown2];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v21, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v19, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
  {
    v15 = v21.f64[1];
    v16 = v19.f64[1];
  }

  else
  {
    v15 = *(MEMORY[0x1E695F040] + 8);
    v16 = *(MEMORY[0x1E695F040] + 24);
    v19.f64[0] = *(MEMORY[0x1E695F040] + 16);
    v21.f64[0] = *MEMORY[0x1E695F040];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZL8downBy2HP7CIImage_block_invoke;
  v22[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v22[4] = 0x4012C985F06F6944;
  v26[0] = a1;
  v26[1] = v2;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:{2, *&v19.f64[0]}];
  return [(CIKernel *)v14 applyWithExtent:v22 roiCallback:v17 arguments:v21.f64[0], v15, v20, v16];
}

CIImage *downBy2V(CIImage *a1)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v2 = [CIVector vectorWithX:1.0 Y:2.0 Z:0.0 W:1.0];
  [(CIImage *)a1 extent];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  if (CGRectIsInfinite(v27))
  {
    v7 = 1.79769313e308;
    v8 = -8.98846567e307;
    v9 = 1.79769313e308;
    v10 = -8.98846567e307;
  }

  else
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    IsNull = CGRectIsNull(v28);
    v10 = INFINITY;
    if (IsNull)
    {
      v8 = INFINITY;
    }

    else
    {
      v8 = y;
    }

    if (IsNull)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = width;
    }

    if (IsNull)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = height;
    }

    if (!IsNull)
    {
      v10 = x;
    }
  }

  v12 = fabs(v8) == INFINITY;
  if (fabs(v10) != INFINITY && !v12)
  {
    if (v10 == -8.98846567e307 && v8 == -8.98846567e307 && v7 == 1.79769313e308 && v9 == 1.79769313e308)
    {
      *&v23.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v23.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v23.var0 = v10;
      v23.var1 = v8 * 0.5;
      v23.var2 = v7;
      v23.var3 = v9 * 0.5;
    }
  }

  else
  {
    *&v23.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v23.var2 = 0.0;
    v23.var3 = 0.0;
  }

  Rectangle::inset(&v23, -0.0, -3.0, &v24);
  Rectangle::integralize(&v24, 0.0001, v25);
  v19 = v25[1];
  v21 = v25[0];
  v14 = [CIKernel kernelWithInternalRepresentation:&CI::_lanczosDown2];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v21, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v19, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL)))))))
  {
    v15 = v21.f64[1];
    v16 = v19.f64[1];
  }

  else
  {
    v15 = *(MEMORY[0x1E695F040] + 8);
    v16 = *(MEMORY[0x1E695F040] + 24);
    v19.f64[0] = *(MEMORY[0x1E695F040] + 16);
    v21.f64[0] = *MEMORY[0x1E695F040];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZL8downBy2VP7CIImage_block_invoke;
  v22[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  v22[4] = 0x4012C985F06F6944;
  v26[0] = a1;
  v26[1] = v2;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:{2, *&v19.f64[0]}];
  return [(CIKernel *)v14 applyWithExtent:v22 roiCallback:v17 arguments:v21.f64[0], v15, v20, v16];
}

void roiDown2(CGRect a1, float a2, int a3)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v7 = 1.0;
  if (a3)
  {
    v8 = 2.0;
  }

  else
  {
    v8 = 1.0;
  }

  if (a3)
  {
    v9 = -a2;
  }

  else
  {
    v7 = 2.0;
    v9 = 0.0;
  }

  if (a3)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = -a2;
  }

  CGAffineTransformMakeScale(&v11, v8, v7);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v13 = CGRectApplyAffineTransform(v12, &v11);
  CGRectInset(v13, v9, v10);
}

double CI::sw_lanczosDown2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v70 = *v9;
  DC = CI::getDC(a1);
  v12 = v70;
  v13 = vmul_f32(*&v70.f64[0], *DC);
  v14 = vextq_s8(v12, v12, 8uLL).u64[0];
  v15 = vmul_f32(v14, vdup_n_s32(0x40964C30u));
  *&v12.f64[0] = vsub_f32(v13, v15);
  *&v16 = vmuls_lane_f32(*(v10 + 20), *&v12.f64[0], 1) + (*v12.f64 * *(v10 + 16));
  LODWORD(v17) = *(v10 + 24);
  v18.i32[0] = *(v10 + 36);
  *v19.i32 = vmuls_lane_f32(*(v10 + 32), *&v12.f64[0], 1);
  v20 = vmul_f32(v14, vdup_n_s32(0x3F3B9D6Fu));
  *v21.i8 = vdup_n_s32(0x40359F2Cu);
  v22 = vmul_f32(v14, *v21.i8);
  v14.f32[0] = *&v17 + *&v16;
  *v12.f64 = *v18.i32 + (*v19.i32 + (*v12.f64 * *(v10 + 28)));
  v14.i32[1] = LODWORD(v12.f64[0]);
  *v24.i64 = CI::BitmapSampler::read(*(v10 + 8), *&v14, v12, v16, v17, v21, v19, v18, v23);
  v71 = v24;
  *v24.f32 = vsub_f32(v13, v22);
  LODWORD(v25) = *(v10 + 24);
  v26.i32[0] = *(v10 + 36);
  *v27.i32 = vmuls_lane_f32(*(v10 + 32), *v24.f32, 1);
  *&v28 = *v27.i32 + (v24.f32[0] * *(v10 + 28));
  v24.f32[0] = *&v25 + (vmuls_lane_f32(*(v10 + 20), *v24.f32, 1) + (v24.f32[0] * *(v10 + 16)));
  *v29.f64 = *v26.i32 + *&v28;
  v24.f32[1] = *v26.i32 + *&v28;
  *v32.i64 = CI::BitmapSampler::read(*(v10 + 8), *v24.i64, v29, v25, v28, v27, v26, v30, v31);
  v69 = v32;
  *v32.f32 = vsub_f32(v13, v20);
  LODWORD(v33) = *(v10 + 24);
  v34.i32[0] = *(v10 + 36);
  *v35.i32 = vmuls_lane_f32(*(v10 + 32), *v32.f32, 1);
  *&v36 = *v35.i32 + (v32.f32[0] * *(v10 + 28));
  v32.f32[0] = *&v33 + (vmuls_lane_f32(*(v10 + 20), *v32.f32, 1) + (v32.f32[0] * *(v10 + 16)));
  *v37.f64 = *v34.i32 + *&v36;
  v32.f32[1] = *v34.i32 + *&v36;
  *v40.i64 = CI::BitmapSampler::read(*(v10 + 8), *v32.i64, v37, v33, v36, v35, v34, v38, v39);
  v68 = v40;
  *v40.f32 = vadd_f32(v20, v13);
  LODWORD(v41) = *(v10 + 24);
  v42.i32[0] = *(v10 + 36);
  *v43.i32 = vmuls_lane_f32(*(v10 + 32), *v40.f32, 1);
  *&v44 = *v43.i32 + (v40.f32[0] * *(v10 + 28));
  v40.f32[0] = *&v41 + (vmuls_lane_f32(*(v10 + 20), *v40.f32, 1) + (v40.f32[0] * *(v10 + 16)));
  *v45.f64 = *v42.i32 + *&v44;
  v40.f32[1] = *v42.i32 + *&v44;
  *v48.i64 = CI::BitmapSampler::read(*(v10 + 8), *v40.i64, v45, v41, v44, v43, v42, v46, v47);
  v67 = v48;
  *v48.f32 = vadd_f32(v22, v13);
  LODWORD(v49) = *(v10 + 24);
  v50.i32[0] = *(v10 + 36);
  *v51.i32 = vmuls_lane_f32(*(v10 + 32), *v48.f32, 1);
  *&v52 = *v51.i32 + (v48.f32[0] * *(v10 + 28));
  v48.f32[0] = *&v49 + (vmuls_lane_f32(*(v10 + 20), *v48.f32, 1) + (v48.f32[0] * *(v10 + 16)));
  *v53.f64 = *v50.i32 + *&v52;
  v48.f32[1] = *v50.i32 + *&v52;
  *v56.i64 = CI::BitmapSampler::read(*(v10 + 8), *v48.i64, v53, v49, v52, v51, v50, v54, v55);
  v66 = v56;
  *v56.f32 = vadd_f32(v15, v13);
  LODWORD(v57) = *(v10 + 24);
  v58.i32[0] = *(v10 + 36);
  *v59.i32 = vmuls_lane_f32(*(v10 + 32), *v56.f32, 1);
  *&v60 = *v59.i32 + (v56.f32[0] * *(v10 + 28));
  v56.f32[0] = *&v57 + (vmuls_lane_f32(*(v10 + 20), *v56.f32, 1) + (v56.f32[0] * *(v10 + 16)));
  *v61.f64 = *v58.i32 + *&v60;
  v56.f32[1] = *v58.i32 + *&v60;
  *v64.i64 = CI::BitmapSampler::read(*(v10 + 8), *v56.i64, v61, v57, v60, v59, v58, v62, v63);
  *&result = vaddq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v68, v67), vdupq_n_s32(0x3F14F6CFu)), vmulq_f32(vaddq_f32(v69, v66), vdupq_n_s32(0xBDCE1A3F))), vmulq_f32(vaddq_f32(v71, v64), vdupq_n_s32(0x3C998FBEu))).u64[0];
  return result;
}

float ___ZL8downBy2VP7CIImage_block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  roiDown2(*&a2, v5, 0);
  return result;
}

float ___ZL5downHP7CIImaged_block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  roiDownK(*&a2, v5, v6, 1);
  return result;
}

double CI::sw_lanczosDownH(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v208 = *v9;
  DC = CI::getDC(a1);
  _Q2 = v208;
  *_Q3.i8 = vmul_f32(*v208.i8, *DC);
  v207 = _Q3;
  v14.i64[0] = 0.5;
  *v14.i32 = floor(*_Q3.i32 + -0.5) + 0.5;
  v193 = v14;
  v15 = _Q3;
  v15.i32[0] = v14.i32[0];
  v16 = vextq_s8(_Q2, _Q2, 8uLL);
  __asm { FMOV            V2.2S, #5.0 }

  *_Q2.i8 = vmul_f32(*&v16.f64[0], *_Q2.i8);
  *v21.i8 = vsub_f32(*v15.i8, *_Q2.i8);
  __asm { FMOV            V3.2S, #4.0 }

  *_Q3.i8 = vmul_f32(*&v16.f64[0], *_Q3.i8);
  *_Q4.i8 = vsub_f32(*v15.i8, *_Q3.i8);
  v185 = _Q4;
  __asm { FMOV            V4.2S, #3.0 }

  *_Q4.i8 = vmul_f32(*&v16.f64[0], *_Q4.i8);
  *v23.i8 = vsub_f32(*v15.i8, *_Q4.i8);
  v187 = v23;
  *v23.i8 = vadd_f32(*&v16.f64[0], *&v16.f64[0]);
  *v24.i8 = vsub_f32(*v15.i8, *v23.i8);
  v189 = v24;
  *v24.i8 = vsub_f32(*v15.i8, *&v16.f64[0]);
  v191 = v24;
  *v24.i8 = vadd_f32(*&v16.f64[0], *v15.i8);
  *v23.i8 = vadd_f32(*v23.i8, *v15.i8);
  v194 = v24;
  v196 = v23;
  *_Q4.i8 = vadd_f32(*_Q4.i8, *v15.i8);
  *_Q3.i8 = vadd_f32(*_Q3.i8, *v15.i8);
  v198 = _Q4;
  v199 = _Q3;
  *_Q2.i8 = vadd_f32(*_Q2.i8, *v15.i8);
  v203 = _Q2;
  __asm { FMOV            V2.2S, #6.0 }

  *&v16.f64[0] = vmul_f32(*&v16.f64[0], *_Q2.i8);
  *v15.i8 = vadd_f32(*&v16.f64[0], *v15.i8);
  v206 = v15;
  v183 = *v21.i8;
  _Q2.i32[0] = *(v10 + 28);
  *v15.i32 = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v21.i8, 1) + (*v21.i32 * *(v10 + 16)));
  _Q3.i32[0] = *(v10 + 36);
  *v16.f64 = *_Q3.i32 + (vmuls_lane_f32(*(v10 + 32), *v21.i8, 1) + (*v21.i32 * *_Q2.i32));
  v15.i32[1] = LODWORD(v16.f64[0]);
  *v25.i64 = CI::BitmapSampler::read(*(v10 + 8), *v15.i64, v16, *_Q2.i64, *_Q3.i64, _Q4, v23, v21, v24);
  v181 = v25;
  LODWORD(v26) = *(v10 + 28);
  v25.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v185.i8, 1) + (*v185.i32 * *(v10 + 16)));
  LODWORD(v27) = *(v10 + 36);
  *v28.f64 = *&v27 + (vmuls_lane_f32(*(v10 + 32), *v185.i8, 1) + (*v185.i32 * *&v26));
  v25.i32[1] = LODWORD(v28.f64[0]);
  *v32.i64 = CI::BitmapSampler::read(*(v10 + 8), *v25.i64, v28, v26, v27, v185, v29, v30, v31);
  v180 = v32;
  LODWORD(v33) = *(v10 + 28);
  v32.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v187.i8, 1) + (*v187.i32 * *(v10 + 16)));
  LODWORD(v34) = *(v10 + 36);
  *v35.f64 = *&v34 + (vmuls_lane_f32(*(v10 + 32), *v187.i8, 1) + (*v187.i32 * *&v33));
  v32.i32[1] = LODWORD(v35.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v10 + 8), *v32.i64, v35, v33, v34, v187, v36, v37, v38);
  v179 = v39;
  LODWORD(v40) = *(v10 + 28);
  v39.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v189.i8, 1) + (*v189.i32 * *(v10 + 16)));
  LODWORD(v41) = *(v10 + 36);
  *v42.f64 = *&v41 + (vmuls_lane_f32(*(v10 + 32), *v189.i8, 1) + (*v189.i32 * *&v40));
  v39.i32[1] = LODWORD(v42.f64[0]);
  *v46.i64 = CI::BitmapSampler::read(*(v10 + 8), *v39.i64, v42, v40, v41, v189, v43, v44, v45);
  v178 = v46;
  LODWORD(v47) = *(v10 + 28);
  v46.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v191.i8, 1) + (*v191.i32 * *(v10 + 16)));
  LODWORD(v48) = *(v10 + 36);
  *v49.f64 = *&v48 + (vmuls_lane_f32(*(v10 + 32), *v191.i8, 1) + (*v191.i32 * *&v47));
  v46.i32[1] = LODWORD(v49.f64[0]);
  *v53.i64 = CI::BitmapSampler::read(*(v10 + 8), *v46.i64, v49, v47, v48, v191, v50, v51, v52);
  v177 = v53;
  LODWORD(v54) = *(v10 + 28);
  v53.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v207.i8, 1) + (*v193.i32 * *(v10 + 16)));
  LODWORD(v55) = *(v10 + 36);
  *v56.f64 = *&v55 + (vmuls_lane_f32(*(v10 + 32), *v207.i8, 1) + (*v193.i32 * *&v54));
  v53.i32[1] = LODWORD(v56.f64[0]);
  *v59.i64 = CI::BitmapSampler::read(*(v10 + 8), *v53.i64, v56, v54, v55, v207, v193, v57, v58);
  v176 = v59;
  LODWORD(v60) = *(v10 + 28);
  v59.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v194.i8, 1) + (*v194.i32 * *(v10 + 16)));
  LODWORD(v61) = *(v10 + 36);
  *v62.f64 = *&v61 + (vmuls_lane_f32(*(v10 + 32), *v194.i8, 1) + (*v194.i32 * *&v60));
  v59.i32[1] = LODWORD(v62.f64[0]);
  *v66.i64 = CI::BitmapSampler::read(*(v10 + 8), *v59.i64, v62, v60, v61, v194, v63, v64, v65);
  v175 = v66;
  LODWORD(v67) = *(v10 + 28);
  v66.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v196.i8, 1) + (*v196.i32 * *(v10 + 16)));
  LODWORD(v68) = *(v10 + 36);
  *v69.f64 = *&v68 + (vmuls_lane_f32(*(v10 + 32), *v196.i8, 1) + (*v196.i32 * *&v67));
  v66.i32[1] = LODWORD(v69.f64[0]);
  *v73.i64 = CI::BitmapSampler::read(*(v10 + 8), *v66.i64, v69, v67, v68, v196, v70, v71, v72);
  v174 = v73;
  LODWORD(v74) = *(v10 + 28);
  v73.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v198.i8, 1) + (*v198.i32 * *(v10 + 16)));
  LODWORD(v75) = *(v10 + 36);
  *v76.f64 = *&v75 + (vmuls_lane_f32(*(v10 + 32), *v198.i8, 1) + (*v198.i32 * *&v74));
  v73.i32[1] = LODWORD(v76.f64[0]);
  *v80.i64 = CI::BitmapSampler::read(*(v10 + 8), *v73.i64, v76, v74, v75, v198, v77, v78, v79);
  v173 = v80;
  LODWORD(v81) = *(v10 + 28);
  v80.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v199.i8, 1) + (*v199.i32 * *(v10 + 16)));
  LODWORD(v82) = *(v10 + 36);
  *v83.f64 = *&v82 + (vmuls_lane_f32(*(v10 + 32), *v199.i8, 1) + (*v199.i32 * *&v81));
  v80.i32[1] = LODWORD(v83.f64[0]);
  *v87.i64 = CI::BitmapSampler::read(*(v10 + 8), *v80.i64, v83, v81, v82, v199, v84, v85, v86);
  v172 = v87;
  LODWORD(v88) = *(v10 + 28);
  v87.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v203.i8, 1) + (*v203.i32 * *(v10 + 16)));
  LODWORD(v89) = *(v10 + 36);
  *v90.f64 = *&v89 + (vmuls_lane_f32(*(v10 + 32), *v203.i8, 1) + (*v203.i32 * *&v88));
  v87.i32[1] = LODWORD(v90.f64[0]);
  *v94.i64 = CI::BitmapSampler::read(*(v10 + 8), *v87.i64, v90, v88, v89, v203, v91, v92, v93);
  v171 = v94;
  LODWORD(v95) = *(v10 + 28);
  v94.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v206.i8, 1) + (*v206.i32 * *(v10 + 16)));
  LODWORD(v96) = *(v10 + 36);
  *v97.f64 = *&v96 + (vmuls_lane_f32(*(v10 + 32), *v206.i8, 1) + (*v206.i32 * *&v95));
  v94.i32[1] = LODWORD(v97.f64[0]);
  *v101.i64 = CI::BitmapSampler::read(*(v10 + 8), *v94.i64, v97, v95, v96, v206, v98, v99, v100);
  v103 = *v207.i8;
  v102 = *v208.i32;
  v170 = v101;
  v104 = fabsf(vsub_f32(v183, *v207.i8).f32[0] / *v208.i32);
  v184 = 0.0;
  v182 = 0.0;
  if (v104 < 3.0)
  {
    v105 = v104;
    v182 = 1.0;
    if (v105 >= 0.001)
    {
      v106 = v105 * 3.14159265;
      v107 = sinf(v106) * 3.0;
      v108 = sin(v106 / 3.0);
      v103 = *v207.i8;
      v102 = *v208.i32;
      *&v108 = v107 * v108 / (v106 * v106);
      v182 = *&v108;
    }
  }

  v109 = fabsf(vsub_f32(*v185.i8, v103).f32[0] / v102);
  if (v109 < 3.0)
  {
    v110 = v109;
    v184 = 1.0;
    if (v110 >= 0.001)
    {
      v111 = v110 * 3.14159265;
      v112 = sinf(v111) * 3.0;
      v113 = sin(v111 / 3.0);
      v103 = *v207.i8;
      v102 = *v208.i32;
      *&v113 = v112 * v113 / (v111 * v111);
      v184 = *&v113;
    }
  }

  v114 = fabsf(vsub_f32(*v187.i8, v103).f32[0] / v102);
  v188 = 0.0;
  v186 = 0.0;
  if (v114 < 3.0)
  {
    v115 = v114;
    v186 = 1.0;
    if (v115 >= 0.001)
    {
      v116 = v115 * 3.14159265;
      v117 = sinf(v116) * 3.0;
      v118 = sin(v116 / 3.0);
      v103 = *v207.i8;
      v102 = *v208.i32;
      *&v118 = v117 * v118 / (v116 * v116);
      v186 = *&v118;
    }
  }

  v119 = fabsf(vsub_f32(*v189.i8, v103).f32[0] / v102);
  if (v119 < 3.0)
  {
    v120 = v119;
    v188 = 1.0;
    if (v120 >= 0.001)
    {
      v121 = v120 * 3.14159265;
      v122 = sinf(v121) * 3.0;
      v123 = sin(v121 / 3.0);
      v103 = *v207.i8;
      v102 = *v208.i32;
      *&v123 = v122 * v123 / (v121 * v121);
      v188 = *&v123;
    }
  }

  v124 = fabsf(vsub_f32(*v191.i8, v103).f32[0] / v102);
  v192 = 0.0;
  v190 = 0.0;
  if (v124 < 3.0)
  {
    v125 = v124;
    v190 = 1.0;
    if (v125 >= 0.001)
    {
      v126 = v125 * 3.14159265;
      v127 = sinf(v126) * 3.0;
      v128 = sin(v126 / 3.0);
      v103 = *v207.i8;
      v102 = *v208.i32;
      *&v128 = v127 * v128 / (v126 * v126);
      v190 = *&v128;
    }
  }

  v129 = fabsf((*v193.i32 - v103.f32[0]) / v102);
  if (v129 < 3.0)
  {
    v130 = v129;
    v192 = 1.0;
    if (v130 >= 0.001)
    {
      v131 = v130 * 3.14159265;
      v132 = sinf(v131) * 3.0;
      v133 = sin(v131 / 3.0);
      v103 = *v207.i8;
      v102 = *v208.i32;
      *&v133 = v132 * v133 / (v131 * v131);
      v192 = *&v133;
    }
  }

  v134 = fabsf(vsub_f32(*v194.i8, v103).f32[0] / v102);
  v135 = 0.0;
  v136 = 0.0;
  if (v134 < 3.0)
  {
    v137 = v134;
    v136 = 1.0;
    if (v137 >= 0.001)
    {
      v138 = v137 * 3.14159265;
      v139 = sinf(v138) * 3.0;
      v140 = sin(v138 / 3.0);
      v135 = 0.0;
      v103 = *v207.i8;
      v102 = *v208.i32;
      v136 = v139 * v140 / (v138 * v138);
    }
  }

  v141 = fabsf(vsub_f32(*v196.i8, v103).f32[0] / v102);
  v197 = v136;
  if (v141 < 3.0)
  {
    v142 = v141;
    v135 = 1.0;
    if (v142 >= 0.001)
    {
      v143 = v142 * 3.14159265;
      v144 = sinf(v143) * 3.0;
      v145 = sin(v143 / 3.0);
      v136 = v197;
      v103 = *v207.i8;
      v102 = *v208.i32;
      v135 = v144 * v145 / (v143 * v143);
    }
  }

  v146 = fabsf(vsub_f32(*v198.i8, v103).f32[0] / v102);
  v147 = 0.0;
  v148 = 0.0;
  v195 = v135;
  if (v146 < 3.0)
  {
    v149 = v146;
    v148 = 1.0;
    if (v149 >= 0.001)
    {
      v150 = v149 * 3.14159265;
      v151 = sinf(v150) * 3.0;
      v152 = sin(v150 / 3.0);
      v147 = 0.0;
      v135 = v195;
      v136 = v197;
      v103 = *v207.i8;
      v102 = *v208.i32;
      v148 = v151 * v152 / (v150 * v150);
    }
  }

  v153 = fabsf(vsub_f32(*v199.i8, v103).f32[0] / v102);
  if (v153 < 3.0)
  {
    v154 = v153;
    v147 = 1.0;
    if (v154 >= 0.001)
    {
      v155 = v154 * 3.14159265;
      v200 = v148;
      v156 = sinf(v155) * 3.0;
      v157 = sin(v155 / 3.0);
      v148 = v200;
      v135 = v195;
      v136 = v197;
      v103 = *v207.i8;
      v102 = *v208.i32;
      v147 = v156 * v157 / (v155 * v155);
    }
  }

  v158 = fabsf(vsub_f32(*v203.i8, v103).f32[0] / v102);
  v159 = 0.0;
  v160 = 0.0;
  if (v158 < 3.0)
  {
    v161 = v158;
    v160 = 1.0;
    if (v161 >= 0.001)
    {
      v162 = v161 * 3.14159265;
      v201 = v148;
      v204 = v147;
      v163 = sinf(v162) * 3.0;
      v164 = sin(v162 / 3.0);
      v159 = 0.0;
      v148 = v201;
      v147 = v204;
      v135 = v195;
      v136 = v197;
      v103 = *v207.i8;
      v102 = *v208.i32;
      v160 = v163 * v164 / (v162 * v162);
    }
  }

  v165 = COERCE_DOUBLE(vsub_f32(*v206.i8, v103));
  *&v165 = fabsf(*&v165 / v102);
  if (*&v165 < 3.0)
  {
    v165 = *&v165;
    v159 = 1.0;
    if (v165 >= 0.001)
    {
      v166 = v165 * 3.14159265;
      v202 = v148;
      v205 = v147;
      v209 = v160;
      v167 = sinf(v166) * 3.0;
      v168 = sin(v166 / 3.0);
      v160 = v209;
      v148 = v202;
      v147 = v205;
      v135 = v195;
      v136 = v197;
      v165 = v167 * v168 / (v166 * v166);
      v159 = v165;
    }
  }

  *&v165 = ((((((((((v182 + v184) + v186) + v188) + v190) + v192) + v136) + v135) + v148) + v147) + v160) + v159;
  *&result = vdivq_f32(vaddq_f32(vmulq_n_f32(v175, v136), vaddq_f32(vmulq_n_f32(v174, v135), vaddq_f32(vmulq_n_f32(v173, v148), vaddq_f32(vmulq_n_f32(v172, v147), vaddq_f32(vmulq_n_f32(v171, v160), vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v181, v182), vmulq_n_f32(v180, v184)), vmulq_n_f32(v179, v186)), vmulq_n_f32(v178, v188)), vmulq_n_f32(v177, v190)), vmulq_n_f32(v176, v192)), vmulq_n_f32(v170, v159))))))), vdupq_lane_s32(*&v165, 0)).u64[0];
  return result;
}

float ___ZL5downVP7CIImaged_block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  roiDownK(*&a2, v5, v6, 0);
  return result;
}

double CI::sw_lanczosDownV(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v187 = *v9;
  DC = CI::getDC(a1);
  _Q2 = v187;
  *v13.i8 = vmul_f32(*v187.i8, *DC);
  v179 = v13;
  v14 = *&v13.i32[1];
  v15.i64[0] = 0.5;
  *v15.i32 = floor(*&v13.i32[1] + -0.5) + 0.5;
  v195 = v15;
  v16 = v13;
  v16.i32[1] = v15.i32[0];
  v17 = vextq_s8(_Q2, _Q2, 8uLL);
  __asm { FMOV            V2.2S, #5.0 }

  *_Q2.i8 = vmul_f32(*&v17.f64[0], *_Q2.i8);
  *v13.i8 = vsub_f32(*v16.i8, *_Q2.i8);
  __asm { FMOV            V4.2S, #4.0 }

  v23 = vmul_f32(*&v17.f64[0], _D4);
  *_Q5.i8 = vsub_f32(*v16.i8, v23);
  v184 = _Q5;
  __asm { FMOV            V5.2S, #3.0 }

  *_Q5.i8 = vmul_f32(*&v17.f64[0], *_Q5.i8);
  *v25.i8 = vsub_f32(*v16.i8, *_Q5.i8);
  v188 = v25;
  *v25.i8 = vadd_f32(*&v17.f64[0], *&v17.f64[0]);
  *v26.i8 = vsub_f32(*v16.i8, *v25.i8);
  v190 = v26;
  *v26.i8 = vsub_f32(*v16.i8, *&v17.f64[0]);
  v192 = v26;
  *v26.i8 = vadd_f32(*&v17.f64[0], *v16.i8);
  v194 = v26;
  *v25.i8 = vadd_f32(*v25.i8, *v16.i8);
  *_Q5.i8 = vadd_f32(*_Q5.i8, *v16.i8);
  v197 = v25;
  v198 = _Q5;
  *v27.i8 = vadd_f32(v23, *v16.i8);
  *_Q2.i8 = vadd_f32(*_Q2.i8, *v16.i8);
  v200 = v27;
  v202 = _Q2;
  __asm { FMOV            V2.2S, #6.0 }

  *&v17.f64[0] = vmul_f32(*&v17.f64[0], *_Q2.i8);
  *v16.i8 = vadd_f32(*&v17.f64[0], *v16.i8);
  v206 = v16;
  _Q5.i32[0] = *(v10 + 36);
  *v27.i32 = vmuls_lane_f32(*(v10 + 32), *v13.i8, 1);
  *_Q2.i32 = *v27.i32 + (*v13.i32 * *(v10 + 28));
  v28 = *&v13.i32[1];
  *v16.i32 = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v13.i8, 1) + (*v13.i32 * *(v10 + 16)));
  *v17.f64 = *_Q5.i32 + *_Q2.i32;
  *&v16.i32[1] = *_Q5.i32 + *_Q2.i32;
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), *v16.i64, v17, *_Q2.i64, *v13.i64, v27, _Q5, v25, v26);
  v186 = v29;
  v30.i32[0] = *(v10 + 36);
  *&v31 = vmuls_lane_f32(*(v10 + 32), *v184.i8, 1);
  *&v32 = *&v31 + (*v184.i32 * *(v10 + 28));
  v33 = *&v184.i32[1];
  v29.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v184.i8, 1) + (*v184.i32 * *(v10 + 16)));
  *v34.f64 = *v30.i32 + *&v32;
  v29.f32[1] = *v30.i32 + *&v32;
  *v37.i64 = CI::BitmapSampler::read(*(v10 + 8), *v29.i64, v34, v32, v31, v30, v184, v35, v36);
  v185 = v37;
  LODWORD(v38) = *(v10 + 28);
  v37.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v188.i8, 1) + (*v188.i32 * *(v10 + 16)));
  LODWORD(v39) = *(v10 + 36);
  *v40.f64 = *&v39 + (vmuls_lane_f32(*(v10 + 32), *v188.i8, 1) + (*v188.i32 * *&v38));
  v37.i32[1] = LODWORD(v40.f64[0]);
  *v44.i64 = CI::BitmapSampler::read(*(v10 + 8), *v37.i64, v40, v38, v39, v188, v41, v42, v43);
  v183 = v44;
  LODWORD(v45) = *(v10 + 28);
  v44.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v190.i8, 1) + (*v190.i32 * *(v10 + 16)));
  LODWORD(v46) = *(v10 + 36);
  *v47.f64 = *&v46 + (vmuls_lane_f32(*(v10 + 32), *v190.i8, 1) + (*v190.i32 * *&v45));
  v44.i32[1] = LODWORD(v47.f64[0]);
  *v51.i64 = CI::BitmapSampler::read(*(v10 + 8), *v44.i64, v47, v45, v46, v190, v48, v49, v50);
  v182 = v51;
  LODWORD(v52) = *(v10 + 28);
  v51.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v192.i8, 1) + (*v192.i32 * *(v10 + 16)));
  LODWORD(v53) = *(v10 + 36);
  *v54.f64 = *&v53 + (vmuls_lane_f32(*(v10 + 32), *v192.i8, 1) + (*v192.i32 * *&v52));
  v51.i32[1] = LODWORD(v54.f64[0]);
  *v58.i64 = CI::BitmapSampler::read(*(v10 + 8), *v51.i64, v54, v52, v53, v192, v55, v56, v57);
  v181 = v58;
  v59.i32[0] = *(v10 + 36);
  *&v60 = *(v10 + 32) * *v195.i32;
  *&v61 = *&v60 + (*v179.i32 * *(v10 + 28));
  v58.f32[0] = *(v10 + 24) + ((*(v10 + 20) * *v195.i32) + (*v179.i32 * *(v10 + 16)));
  *v62.f64 = *v59.i32 + *&v61;
  v58.f32[1] = *v59.i32 + *&v61;
  *v64.i64 = CI::BitmapSampler::read(*(v10 + 8), *v58.i64, v62, v61, v60, v59, v195, v179, v63);
  v180 = v64;
  LODWORD(v65) = *(v10 + 28);
  v64.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v194.i8, 1) + (*v194.i32 * *(v10 + 16)));
  LODWORD(v66) = *(v10 + 36);
  *v67.f64 = *&v66 + (vmuls_lane_f32(*(v10 + 32), *v194.i8, 1) + (*v194.i32 * *&v65));
  v64.i32[1] = LODWORD(v67.f64[0]);
  *v71.i64 = CI::BitmapSampler::read(*(v10 + 8), *v64.i64, v67, v65, v66, v194, v68, v69, v70);
  v178 = v71;
  LODWORD(v72) = *(v10 + 28);
  v71.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v197.i8, 1) + (*v197.i32 * *(v10 + 16)));
  LODWORD(v73) = *(v10 + 36);
  *v74.f64 = *&v73 + (vmuls_lane_f32(*(v10 + 32), *v197.i8, 1) + (*v197.i32 * *&v72));
  v71.i32[1] = LODWORD(v74.f64[0]);
  *v78.i64 = CI::BitmapSampler::read(*(v10 + 8), *v71.i64, v74, v72, v73, v197, v75, v76, v77);
  v177 = v78;
  LODWORD(v79) = *(v10 + 28);
  v78.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v198.i8, 1) + (*v198.i32 * *(v10 + 16)));
  LODWORD(v80) = *(v10 + 36);
  *v81.f64 = *&v80 + (vmuls_lane_f32(*(v10 + 32), *v198.i8, 1) + (*v198.i32 * *&v79));
  v78.i32[1] = LODWORD(v81.f64[0]);
  *v85.i64 = CI::BitmapSampler::read(*(v10 + 8), *v78.i64, v81, v79, v80, v198, v82, v83, v84);
  v176 = v85;
  LODWORD(v86) = *(v10 + 28);
  v85.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v200.i8, 1) + (*v200.i32 * *(v10 + 16)));
  LODWORD(v87) = *(v10 + 36);
  *v88.f64 = *&v87 + (vmuls_lane_f32(*(v10 + 32), *v200.i8, 1) + (*v200.i32 * *&v86));
  v85.i32[1] = LODWORD(v88.f64[0]);
  *v92.i64 = CI::BitmapSampler::read(*(v10 + 8), *v85.i64, v88, v86, v87, v200, v89, v90, v91);
  v175 = v92;
  LODWORD(v93) = *(v10 + 28);
  v92.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v202.i8, 1) + (*v202.i32 * *(v10 + 16)));
  LODWORD(v94) = *(v10 + 36);
  *v95.f64 = *&v94 + (vmuls_lane_f32(*(v10 + 32), *v202.i8, 1) + (*v202.i32 * *&v93));
  v92.i32[1] = LODWORD(v95.f64[0]);
  *v99.i64 = CI::BitmapSampler::read(*(v10 + 8), *v92.i64, v95, v93, v94, v202, v96, v97, v98);
  v174 = v99;
  LODWORD(v100) = *(v10 + 28);
  v99.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v206.i8, 1) + (*v206.i32 * *(v10 + 16)));
  LODWORD(v101) = *(v10 + 36);
  *v102.f64 = *&v101 + (vmuls_lane_f32(*(v10 + 32), *v206.i8, 1) + (*v206.i32 * *&v100));
  v99.i32[1] = LODWORD(v102.f64[0]);
  *v106.i64 = CI::BitmapSampler::read(*(v10 + 8), *v99.i64, v102, v100, v101, v206, v103, v104, v105);
  v173 = v106;
  v107 = fabsf((v28 - v14) / *&v187.i32[1]);
  v187.i32[0] = 0;
  v108 = 0.0;
  if (v107 < 3.0)
  {
    v109 = v107;
    v108 = 1.0;
    if (v109 >= 0.001)
    {
      v110 = v109 * 3.14159265;
      v111 = sinf(v110) * 3.0;
      v108 = v111 * sin(v110 / 3.0) / (v110 * v110);
    }
  }

  v172 = v108;
  v112 = fabsf((v33 - v14) / *&v187.i32[1]);
  if (v112 < 3.0)
  {
    v113 = v112;
    v187.i32[0] = 1.0;
    if (v113 >= 0.001)
    {
      v114 = v113 * 3.14159265;
      v115 = sinf(v114) * 3.0;
      v116 = v115 * sin(v114 / 3.0) / (v114 * v114);
      *v187.i32 = v116;
    }
  }

  v117 = fabsf((*&v188.i32[1] - v14) / *&v187.i32[1]);
  v191 = 0.0;
  v118 = 0.0;
  if (v117 < 3.0)
  {
    v119 = v117;
    v118 = 1.0;
    if (v119 >= 0.001)
    {
      v120 = v119 * 3.14159265;
      v121 = sinf(v120) * 3.0;
      v118 = v121 * sin(v120 / 3.0) / (v120 * v120);
    }
  }

  v189 = v118;
  v122 = fabsf((*&v190.i32[1] - v14) / *&v187.i32[1]);
  if (v122 < 3.0)
  {
    v123 = v122;
    v191 = 1.0;
    if (v123 >= 0.001)
    {
      v124 = v123 * 3.14159265;
      v125 = sinf(v124) * 3.0;
      v126 = v125 * sin(v124 / 3.0) / (v124 * v124);
      v191 = v126;
    }
  }

  v127 = fabsf((*&v192.i32[1] - v14) / *&v187.i32[1]);
  v128 = 0.0;
  v129 = 0.0;
  if (v127 < 3.0)
  {
    v130 = v127;
    v129 = 1.0;
    if (v130 >= 0.001)
    {
      v131 = v130 * 3.14159265;
      v132 = sinf(v131) * 3.0;
      v133 = sin(v131 / 3.0);
      v128 = 0.0;
      v129 = v132 * v133 / (v131 * v131);
    }
  }

  v193 = v129;
  v134 = fabsf((*v195.i32 - v14) / *&v187.i32[1]);
  if (v134 < 3.0)
  {
    v135 = v134;
    v128 = 1.0;
    if (v135 >= 0.001)
    {
      v136 = v135 * 3.14159265;
      v137 = sinf(v136) * 3.0;
      v128 = v137 * sin(v136 / 3.0) / (v136 * v136);
    }
  }

  v196 = v128;
  v138 = fabsf((*&v194.i32[1] - v14) / *&v187.i32[1]);
  v139 = 0.0;
  v140 = 0.0;
  if (v138 < 3.0)
  {
    v141 = v138;
    v140 = 1.0;
    if (v141 >= 0.001)
    {
      v142 = v141 * 3.14159265;
      v143 = sinf(v142) * 3.0;
      v144 = sin(v142 / 3.0);
      v139 = 0.0;
      v140 = v143 * v144 / (v142 * v142);
    }
  }

  *v197.i32 = v140;
  v145 = fabsf((*&v197.i32[1] - v14) / *&v187.i32[1]);
  if (v145 < 3.0)
  {
    v146 = v145;
    v139 = 1.0;
    if (v146 >= 0.001)
    {
      v147 = v146 * 3.14159265;
      v148 = sinf(v147) * 3.0;
      v139 = v148 * sin(v147 / 3.0) / (v147 * v147);
    }
  }

  v149 = fabsf((*&v198.i32[1] - v14) / *&v187.i32[1]);
  v150 = 0.0;
  v151 = 0.0;
  v199 = v139;
  if (v149 < 3.0)
  {
    v152 = v149;
    v151 = 1.0;
    if (v152 >= 0.001)
    {
      v153 = v152 * 3.14159265;
      v154 = sinf(v153) * 3.0;
      v155 = sin(v153 / 3.0);
      v150 = 0.0;
      v139 = v199;
      v151 = v154 * v155 / (v153 * v153);
    }
  }

  v156 = fabsf((*&v200.i32[1] - v14) / *&v187.i32[1]);
  if (v156 < 3.0)
  {
    v157 = v156;
    v150 = 1.0;
    if (v157 >= 0.001)
    {
      v158 = v157 * 3.14159265;
      v203 = v151;
      v159 = sinf(v158) * 3.0;
      v160 = sin(v158 / 3.0);
      v151 = v203;
      v139 = v199;
      v150 = v159 * v160 / (v158 * v158);
    }
  }

  HIDWORD(v161) = v206.i32[1];
  *&v161 = fabsf((*&v202.i32[1] - v14) / *&v187.i32[1]);
  v162 = 0.0;
  v163 = 0.0;
  if (*&v161 < 3.0)
  {
    v161 = *&v161;
    v163 = 1.0;
    if (v161 >= 0.001)
    {
      v164 = v161 * 3.14159265;
      v204 = v151;
      v207 = v150;
      v165 = sinf(v164) * 3.0;
      v166 = sin(v164 / 3.0);
      v162 = 0.0;
      v151 = v204;
      v150 = v207;
      v139 = v199;
      v161 = v165 * v166 / (v164 * v164);
      v163 = v161;
    }
  }

  v167 = fabsf((*&v206.i32[1] - v14) / *&v187.i32[1]);
  if (v167 < 3.0)
  {
    v161 = v167;
    v162 = 1.0;
    if (v161 >= 0.001)
    {
      v168 = v161 * 3.14159265;
      v205 = v151;
      v208 = v150;
      v201 = v163;
      v169 = sinf(v168) * 3.0;
      v170 = sin(v168 / 3.0);
      v163 = v201;
      v151 = v205;
      v150 = v208;
      v139 = v199;
      v161 = v169 * v170 / (v168 * v168);
      v162 = v161;
    }
  }

  *&v161 = ((((((((((v172 + *v187.i32) + v189) + v191) + v193) + v196) + *v197.i32) + v139) + v151) + v150) + v163) + v162;
  *&result = vdivq_f32(vaddq_f32(vmulq_n_f32(v178, *v197.i32), vaddq_f32(vmulq_n_f32(v177, v139), vaddq_f32(vmulq_n_f32(v176, v151), vaddq_f32(vmulq_n_f32(v175, v150), vaddq_f32(vmulq_n_f32(v174, v163), vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v186, v172), vmulq_n_f32(v185, *v187.i32)), vmulq_n_f32(v183, v189)), vmulq_n_f32(v182, v191)), vmulq_n_f32(v181, v193)), vmulq_n_f32(v180, v196)), vmulq_n_f32(v173, v162))))))), vdupq_lane_s32(*&v161, 0)).u64[0];
  return result;
}

double CI::sw_lanczosUpH(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7.f64[0] = *CI::getDC(a1);
  v8 = (v6 * *v7.f64) + -0.5;
  LODWORD(v7.f64[0]) = floorf(v8);
  v9 = *&v7.f64[0];
  v54 = v7;
  v10 = (*v7.f64 - v8) + 1.0;
  v7.f64[0] = (v10 * v10);
  v11.i32[1] = 1072237884;
  v12.i64[0] = 0xBFDA4BAB03FA3591;
  v13.i64[0] = 0x3FF0A64571793F06;
  v14 = v7.f64[0] * (v10 * (v10 * (v10 * -0.41086841 + 0.78286595) + 1.04059357) + -2.41189213) + 1.0;
  v52 = v14;
  *v15.i64 = v10 * (v10 * -0.29216512 + 1.02524562) + -0.5242291;
  v16 = v10 * *v15.i64 + -0.2088514;
  *&v16 = v16 * v7.f64[0];
  v17 = 1.0 - v10;
  v18 = (v17 * v17);
  v19 = v17;
  v7.f64[0] = v19 * (v19 * -0.41086841 + 0.78286595) + 1.04059357;
  *&v18 = v18 * (v19 * v7.f64[0] + -2.41189213) + 1.0;
  v50 = *&v18;
  v51 = *&v16;
  *&v19 = 1.0 - *&v16 - *&v18 - v14;
  v53 = *&v19;
  *&v20.f64[0] = vadd_f32(v9, 3204448256);
  LODWORD(v16) = *(v5 + 28);
  *&v19 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *&v20.f64[0], 1) + (*v20.f64 * *(v5 + 16)));
  v11.i32[0] = *(v5 + 36);
  *v7.f64 = vmuls_lane_f32(*(v5 + 32), *&v20.f64[0], 1);
  *v20.f64 = *v11.i32 + (*v7.f64 + (*v20.f64 * *&v16));
  HIDWORD(v19) = LODWORD(v20.f64[0]);
  *v21.i64 = CI::BitmapSampler::read(*(v5 + 8), v19, v20, v7.f64[0], v16, v11, v12, v15, v13);
  v49 = v21;
  v22 = v54;
  *v21.f32 = vadd_f32(*&v54.f64[0], 1056964608);
  LODWORD(v23) = *(v5 + 24);
  v24.i32[0] = *(v5 + 36);
  *v25.i32 = vmuls_lane_f32(*(v5 + 32), *v21.f32, 1);
  *&v26 = *v25.i32 + (v21.f32[0] * *(v5 + 28));
  v21.f32[0] = *&v23 + (vmuls_lane_f32(*(v5 + 20), *v21.f32, 1) + (v21.f32[0] * *(v5 + 16)));
  *v22.f64 = *v24.i32 + *&v26;
  v21.f32[1] = *v24.i32 + *&v26;
  *v29.i64 = CI::BitmapSampler::read(*(v5 + 8), *v21.i64, v22, v23, v26, v25, v24, v27, v28);
  v48 = v29;
  v30 = v54;
  *v29.f32 = vadd_f32(*&v54.f64[0], 1069547520);
  LODWORD(v31) = *(v5 + 24);
  v32.i32[0] = *(v5 + 36);
  *v33.i32 = vmuls_lane_f32(*(v5 + 32), *v29.f32, 1);
  *&v34 = *v33.i32 + (v29.f32[0] * *(v5 + 28));
  v29.f32[0] = *&v31 + (vmuls_lane_f32(*(v5 + 20), *v29.f32, 1) + (v29.f32[0] * *(v5 + 16)));
  *v30.f64 = *v32.i32 + *&v34;
  v29.f32[1] = *v32.i32 + *&v34;
  *v37.i64 = CI::BitmapSampler::read(*(v5 + 8), *v29.i64, v30, v31, v34, v33, v32, v35, v36);
  v47 = v37;
  v38 = v54;
  *v37.f32 = vadd_f32(*&v54.f64[0], 1075838976);
  LODWORD(v39) = *(v5 + 24);
  v40.i32[0] = *(v5 + 36);
  *v41.i32 = vmuls_lane_f32(*(v5 + 32), *v37.f32, 1);
  *&v42 = *v41.i32 + (v37.f32[0] * *(v5 + 28));
  v37.f32[0] = *&v39 + (vmuls_lane_f32(*(v5 + 20), *v37.f32, 1) + (v37.f32[0] * *(v5 + 16)));
  *v38.f64 = *v40.i32 + *&v42;
  v37.f32[1] = *v40.i32 + *&v42;
  *v45.i64 = CI::BitmapSampler::read(*(v5 + 8), *v37.i64, v38, v39, v42, v41, v40, v43, v44);
  *&result = vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(v49, v51), vmulq_n_f32(v48, v50)), vmulq_n_f32(v47, v52)), vmulq_n_f32(v45, v53)).u64[0];
  return result;
}

double upsampleHRect(double a1, float a2)
{
  v11 = __PAIR64__(HIDWORD(a1), COERCE_UNSIGNED_INT(floorf((a2 * *&a1) + -0.5)));
  v2 = vadd_f32(v11, 3204448256);
  v16.origin.x = v2.f32[0];
  v16.origin.y = v2.f32[1];
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  v13 = CGRectUnion(*MEMORY[0x1E695F050], v16);
  v3 = vadd_f32(v11, 1056964608);
  v17.origin.x = v3.f32[0];
  v17.origin.y = v3.f32[1];
  v17.size.width = 0.0;
  v17.size.height = 0.0;
  v14 = CGRectUnion(v13, v17);
  v4 = vadd_f32(v11, 1069547520);
  v18.origin.x = v4.f32[0];
  v18.origin.y = v4.f32[1];
  v18.size.width = 0.0;
  v18.size.height = 0.0;
  v15 = CGRectUnion(v14, v18);
  v5 = vadd_f32(v11, 1075838976);
  v6 = v5.f32[0];
  v7 = v5.f32[1];
  v8 = 0;
  v9 = 0;

  *&result = CGRectUnion(v15, *&v6);
  return result;
}

double CI::sw_lanczosUpV(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7.f64[0] = *CI::getDC(a1);
  v8 = vmuls_lane_f32(v6, *&v7.f64[0], 1) + -0.5;
  HIDWORD(v7.f64[0]) = floorf(v8);
  v9 = *&v7.f64[0];
  v54 = v7;
  v10 = (*(v7.f64 + 1) - v8) + 1.0;
  v7.f64[0] = (v10 * v10);
  v11.i32[1] = 1072237884;
  v12.i64[0] = 0xBFDA4BAB03FA3591;
  v13.i64[0] = 0x3FF0A64571793F06;
  v14 = v7.f64[0] * (v10 * (v10 * (v10 * -0.41086841 + 0.78286595) + 1.04059357) + -2.41189213) + 1.0;
  v51 = v14;
  *v15.i64 = v10 * (v10 * -0.29216512 + 1.02524562) + -0.5242291;
  v16 = v10 * *v15.i64 + -0.2088514;
  *&v16 = v16 * v7.f64[0];
  v53 = *&v16;
  v17 = 1.0 - v10;
  v18 = (v17 * v17);
  v19 = v17;
  v7.f64[0] = v19 * (v19 * -0.41086841 + 0.78286595) + 1.04059357;
  *&v18 = v18 * (v19 * v7.f64[0] + -2.41189213) + 1.0;
  v50 = *&v18;
  *&v19 = 1.0 - *&v16 - *&v18 - v14;
  v52 = *&v19;
  *&v20.f64[0] = vadd_f32(v9, 0xBF00000000000000);
  LODWORD(v16) = *(v5 + 28);
  *&v19 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *&v20.f64[0], 1) + (*v20.f64 * *(v5 + 16)));
  v11.i32[0] = *(v5 + 36);
  *v7.f64 = vmuls_lane_f32(*(v5 + 32), *&v20.f64[0], 1);
  *v20.f64 = *v11.i32 + (*v7.f64 + (*v20.f64 * *&v16));
  HIDWORD(v19) = LODWORD(v20.f64[0]);
  *v21.i64 = CI::BitmapSampler::read(*(v5 + 8), v19, v20, v7.f64[0], v16, v11, v12, v15, v13);
  v49 = v21;
  v22 = v54;
  *v21.f32 = vadd_f32(*&v54.f64[0], 0x3F00000000000000);
  LODWORD(v23) = *(v5 + 24);
  v24.i32[0] = *(v5 + 36);
  *v25.i32 = vmuls_lane_f32(*(v5 + 32), *v21.f32, 1);
  *&v26 = *v25.i32 + (v21.f32[0] * *(v5 + 28));
  v21.f32[0] = *&v23 + (vmuls_lane_f32(*(v5 + 20), *v21.f32, 1) + (v21.f32[0] * *(v5 + 16)));
  *v22.f64 = *v24.i32 + *&v26;
  v21.f32[1] = *v24.i32 + *&v26;
  *v29.i64 = CI::BitmapSampler::read(*(v5 + 8), *v21.i64, v22, v23, v26, v25, v24, v27, v28);
  v48 = v29;
  v30 = v54;
  *v29.f32 = vadd_f32(*&v54.f64[0], 0x3FC0000000000000);
  LODWORD(v31) = *(v5 + 24);
  v32.i32[0] = *(v5 + 36);
  *v33.i32 = vmuls_lane_f32(*(v5 + 32), *v29.f32, 1);
  *&v34 = *v33.i32 + (v29.f32[0] * *(v5 + 28));
  v29.f32[0] = *&v31 + (vmuls_lane_f32(*(v5 + 20), *v29.f32, 1) + (v29.f32[0] * *(v5 + 16)));
  *v30.f64 = *v32.i32 + *&v34;
  v29.f32[1] = *v32.i32 + *&v34;
  *v37.i64 = CI::BitmapSampler::read(*(v5 + 8), *v29.i64, v30, v31, v34, v33, v32, v35, v36);
  v47 = v37;
  v38 = v54;
  *v37.f32 = vadd_f32(*&v54.f64[0], 0x4020000000000000);
  LODWORD(v39) = *(v5 + 24);
  v40.i32[0] = *(v5 + 36);
  *v41.i32 = vmuls_lane_f32(*(v5 + 32), *v37.f32, 1);
  *&v42 = *v41.i32 + (v37.f32[0] * *(v5 + 28));
  v37.f32[0] = *&v39 + (vmuls_lane_f32(*(v5 + 20), *v37.f32, 1) + (v37.f32[0] * *(v5 + 16)));
  *v38.f64 = *v40.i32 + *&v42;
  v37.f32[1] = *v40.i32 + *&v42;
  *v45.i64 = CI::BitmapSampler::read(*(v5 + 8), *v37.i64, v38, v39, v42, v41, v40, v43, v44);
  *&result = vaddq_f32(vaddq_f32(vmulq_n_f32(v49, v53), vaddq_f32(vmulq_n_f32(v48, v50), vmulq_n_f32(v47, v51))), vmulq_n_f32(v45, v52)).u64[0];
  return result;
}

double upsampleVRect(float32x2_t a1, float a2)
{
  v11 = __PAIR64__(COERCE_UNSIGNED_INT(floorf(vmuls_lane_f32(a2, a1, 1) + -0.5)), a1.u32[0]);
  v2 = vadd_f32(v11, 0x3F00000000000000);
  v16.origin.x = v2.f32[0];
  v16.origin.y = v2.f32[1];
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  v13 = CGRectUnion(*MEMORY[0x1E695F050], v16);
  v3 = vadd_f32(v11, 0xBF00000000000000);
  v17.origin.x = v3.f32[0];
  v17.origin.y = v3.f32[1];
  v17.size.width = 0.0;
  v17.size.height = 0.0;
  v14 = CGRectUnion(v13, v17);
  v4 = vadd_f32(v11, 0x3FC0000000000000);
  v18.origin.x = v4.f32[0];
  v18.origin.y = v4.f32[1];
  v18.size.width = 0.0;
  v18.size.height = 0.0;
  v15 = CGRectUnion(v14, v18);
  v5 = vadd_f32(v11, 0x4020000000000000);
  v6 = v5.f32[0];
  v7 = v5.f32[1];
  v8 = 0;
  v9 = 0;

  *&result = CGRectUnion(v15, *&v6);
  return result;
}

double CI::sw_lozengeRefraction(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v4 + 64) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 104);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v4 + 112) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v4 + 128);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (*(v4 + 136) == 5)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = a4 + 80 * *(v4 + 8);
  v22 = *v8;
  v23 = *v12;
  v24 = *(a2 + (*(v4 + 80) << 6));
  v83 = *v16;
  v25 = *v20;
  v26 = *(a2 + (*(v4 + 152) << 6));
  v81 = *(a2 + (*(v4 + 176) << 6));
  DC = CI::getDC(a1);
  v28 = vsub_f32(*DC, v22);
  v29.f32[0] = vmuls_lane_f32(-v83.f32[0], v28, 1) + (v28.f32[0] * v83.f32[1]);
  v30 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, v29), 0), v25, vneg_f32(v25));
  v31 = vmul_f32(v28, v28);
  v32 = fabsf(v29.f32[0]);
  v29.i32[0] = vadd_f32(v31, vdup_lane_s32(v31, 1)).u32[0];
  v33 = sqrtf(vaddv_f32(v31));
  v34 = vrsqrte_f32(v29.u32[0]);
  v35 = vmul_n_f32(v28, vmul_f32(v34, vrsqrts_f32(v29.u32[0], vmul_f32(v34, v34))).f32[0]);
  v36 = vmul_f32(v83, v28);
  v37 = CI::getDC(DC);
  *v46.f32 = vsub_f32(*v37, v23);
  v39 = vmul_f32(*v46.f32, *v46.f32);
  v40 = vadd_f32(v39, vdup_lane_s32(v39, 1)).u32[0];
  v41 = sqrtf(vaddv_f32(v39));
  v42 = vrsqrte_f32(v40);
  LODWORD(v43) = vmul_f32(v42, vrsqrts_f32(v40, vmul_f32(v42, v42))).u32[0];
  v44 = vmul_f32(v83, *v46.f32);
  v45 = vcltz_f32(vadd_f32(vzip1_s32(v44, v36), vzip2_s32(v44, v36)));
  *v46.f32 = vmul_n_f32(*v46.f32, v43);
  if (v45.i8[4])
  {
    v47 = v32;
  }

  else
  {
    v47 = v33;
  }

  if (v45.i8[4])
  {
    v48 = -1;
  }

  else
  {
    v48 = 0;
  }

  *v38.f32 = vbsl_s8(vdup_n_s32(v48), v30, v35);
  v49 = (v45.i8[0] & 1) == 0;
  if (v45.i8[0])
  {
    v50 = -1;
  }

  else
  {
    v50 = 0;
  }

  v51 = vdup_n_s32(v50);
  if (v49)
  {
    v52 = v47;
  }

  else
  {
    v52 = v41;
  }

  *v46.f32 = vmul_n_f32(vbsl_s8(v51, *v46.f32, *v38.f32), v52 / v24);
  v53 = sqrt(1.0 - ((v52 / v24) * (v52 / v24)));
  *&v53 = v53;
  v46.i32[2] = LODWORD(v53);
  *v38.i64 = ((1.0 / v26) * (1.0 / v26));
  v38.f32[0] = 1.0 - *v38.i64 * (1.0 - (*&v53 * *&v53));
  v84 = v38;
  v54 = vaddq_f32(vmulq_n_f32(xmmword_19CF27A60, 1.0 / v26), vmulq_n_f32(v46, -(sqrtf(fabsf(v38.f32[0])) - ((1.0 / v26) * *&v53))));
  *v54.f32 = vmul_n_f32(*v54.f32, -(v81 + (*&v53 * v24)) / v54.f32[2]);
  *&v53 = v24 + v24;
  v55 = vdup_lane_s32(*&v53, 0);
  *v54.f32 = vminnm_f32(*v54.f32, v55);
  v55.f32[0] = v24 * -2.0;
  v56 = vadd_f32(vmaxnm_f32(*v54.f32, vdup_lane_s32(v55, 0)), *CI::getDC(v37));
  LODWORD(v57) = *(v21 + 24);
  v58.i32[0] = *(v21 + 36);
  *v59.i32 = vmuls_lane_f32(*(v21 + 32), v56, 1);
  *&v60 = *v59.i32 + (v56.f32[0] * *(v21 + 28));
  v56.f32[0] = *&v57 + (vmuls_lane_f32(*(v21 + 20), v56, 1) + (v56.f32[0] * *(v21 + 16)));
  *v61.f64 = *v58.i32 + *&v60;
  v56.f32[1] = *v58.i32 + *&v60;
  *v65.i64 = CI::BitmapSampler::read(*(v21 + 8), *&v56, v61, v57, v60, v59, v58, v62, v63);
  v66.i64[0] = 0;
  v67 = vandq_s8(v65, vdupq_lane_s32(*&vmvnq_s8(vcgtq_f32(v66, v84)), 0));
  if ((v24 - v52) <= 1.0)
  {
    v68 = v24 - v52;
  }

  else
  {
    v68 = 1.0;
  }

  if ((v24 - v52) >= 0.0)
  {
    v69 = v68;
  }

  else
  {
    v69 = 0.0;
  }

  v82 = v69;
  v85 = v67;
  v70 = CI::getDC(v64);
  LODWORD(v71) = *(v21 + 24);
  v72.i32[0] = *(v21 + 36);
  *v73.i32 = vmuls_lane_f32(*(v21 + 32), *v70, 1);
  *&v74 = *v73.i32 + (COERCE_FLOAT(*v70) * *(v21 + 28));
  *&v75 = *&v71 + (vmuls_lane_f32(*(v21 + 20), *v70, 1) + (COERCE_FLOAT(*v70) * *(v21 + 16)));
  *v76.f64 = *v72.i32 + *&v74;
  *(&v75 + 1) = *v72.i32 + *&v74;
  *v79.i64 = CI::BitmapSampler::read(*(v21 + 8), v75, v76, v71, v74, v73, v72, v77, v78);
  *&result = vmlaq_n_f32(vmulq_n_f32(v79, 1.0 - v82), v85, v82).u64[0];
  return result;
}

double CI::sw_torusRefraction(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v10 = *v8;
  v11 = *(a2 + (*(v4 + 56) << 6));
  v12 = *(a2 + (*(v4 + 80) << 6));
  v13 = *(a2 + (*(v4 + 104) << 6));
  v14 = *(a2 + (*(v4 + 128) << 6));
  v15 = *(a2 + (*(v4 + 152) << 6));
  DC = CI::getDC(a1);
  *v19.i8 = vsub_f32(*DC, v10);
  v17 = vmul_f32(*v19.i8, *v19.i8);
  v21.i32[0] = vadd_f32(v17, vdup_lane_s32(v17, 1)).u32[0];
  v18 = vrsqrte_f32(v21.u32[0]);
  *v19.i8 = vmul_n_f32(*v19.i8, vmul_f32(v18, vrsqrts_f32(v21.u32[0], vmul_f32(v18, v18))).f32[0]);
  v20 = v12 + (v11 * sqrtf(vaddv_f32(v17)));
  v21.f32[0] = (1.0 - fabsf(v20)) * v13;
  if (v21.f32[0] <= 1.0)
  {
    v22 = v21.f32[0];
  }

  else
  {
    v22 = 1.0;
  }

  v23 = v21.f32[0] < 0.0;
  v21.i64[0] = 0;
  if (!v23)
  {
    v21.f32[0] = v22;
  }

  v54 = v21;
  *v21.f32 = vmul_n_f32(*v19.i8, v20);
  *v19.i64 = sqrt(1.0 - (v20 * v20));
  *v19.i32 = *v19.i64;
  v21.i32[2] = v19.i32[0];
  v50 = v19;
  v51 = v21;
  v24.i64[0] = *CI::getDC(DC);
  v25 = v50;
  *v26.i64 = 1.0 - (*v25.i32 * *v25.i32);
  v26.f32[0] = 1.0 - ((1.0 / v14) * (1.0 / v14)) * *v26.i64;
  v52 = v26;
  v27 = vmulq_n_f32(xmmword_19CF27A60, 1.0 / v14);
  v26.i32[1] = v51.i32[1];
  v28 = vaddq_f32(v27, vmulq_n_f32(v51, -(sqrtf(fabsf(v26.f32[0])) - ((1.0 / v14) * *v50.i32))));
  v29 = vaddq_f32(v24, vmulq_n_f32(v28, -(v15 + (*v50.i32 * v13)) / v28.f32[2]));
  v28.i64[1] = v54.i64[1];
  *v28.i64 = v54.f32[0];
  v27.i64[0] = 0x3F50624DD2F1A9FCLL;
  v30 = vcgtq_f64(v27, v28);
  v31 = vdupq_n_s32(0x42480000u);
  v32 = vbslq_s8(v30, v31, v29);
  v26.i32[0] = *(v9 + 28);
  *v29.i32 = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v9 + 16)));
  v25.i32[0] = *(v9 + 36);
  *v31.i32 = vmuls_lane_f32(*(v9 + 32), *&v32.f64[0], 1);
  *v32.f64 = *v25.i32 + (*v31.i32 + (*v32.f64 * v26.f32[0]));
  v29.i32[1] = LODWORD(v32.f64[0]);
  *v36.i64 = CI::BitmapSampler::read(*(v9 + 8), *v29.i64, v32, *v31.i64, *v26.i64, v25, v33, v34, v35);
  v37.i64[0] = 0;
  v53 = vandq_s8(v36, vdupq_lane_s32(*&vmvnq_s8(vcgtq_f32(v37, v52)), 0));
  v39 = CI::getDC(v38);
  LODWORD(v40) = *(v9 + 24);
  v41.i32[0] = *(v9 + 36);
  *v42.i32 = vmuls_lane_f32(*(v9 + 32), *v39, 1);
  *&v43 = *v42.i32 + (COERCE_FLOAT(*v39) * *(v9 + 28));
  *&v44 = *&v40 + (vmuls_lane_f32(*(v9 + 20), *v39, 1) + (COERCE_FLOAT(*v39) * *(v9 + 16)));
  *v45.f64 = *v41.i32 + *&v43;
  *(&v44 + 1) = *v41.i32 + *&v43;
  *v48.i64 = CI::BitmapSampler::read(*(v9 + 8), v44, v45, v40, v43, v42, v41, v46, v47);
  *&result = vmlaq_n_f32(vmulq_n_f32(v48, 1.0 - v54.f32[0]), v53, v54.f32[0]).u64[0];
  return result;
}

float sampleLinearWithOffset(void *a1, unsigned int a2, double a3, double a4)
{
  v8 = [a1 baseAddress];
  v9 = 0.0;
  if (a3 < 0.0)
  {
    return v9;
  }

  if (a4 < 0.0)
  {
    return v9;
  }

  v10 = v8;
  [a1 region];
  if (a3 + 1.0 > v11)
  {
    return v9;
  }

  [a1 region];
  if (a4 + 1.0 > v12)
  {
    return v9;
  }

  v13 = [a1 format];
  v14 = 4.0;
  if (v13 == 2309)
  {
    v15 = 0;
  }

  else
  {
    if (v13 != 2312)
    {
      switch(v13)
      {
        case 261:
          v14 = 1.0;
          break;
        case 2056:
          v16 = 0;
          v15 = 0;
          v14 = 8.0;
          v17 = 2;
          goto LABEL_10;
        case 264:
          break;
        default:
          abort();
      }

      v17 = 1;
      v16 = 1;
      v15 = 1;
      goto LABEL_10;
    }

    v15 = 0;
    v14 = 16.0;
  }

  v16 = 1;
  v17 = 4;
LABEL_10:
  v18 = floor(a3) * v14 + floor(a4) * [a1 bytesPerRow] + (v17 * a2);
  v19 = (v10 + v18);
  if (v15)
  {
    LOBYTE(v18) = *v19;
    v20 = *&v18;
    return v20 / 255.0;
  }

  if (v16)
  {
    v20 = *v19;
    return v20 / 255.0;
  }

  v24 = 0.0;
  src.data = (v10 + v18);
  *&src.height = vdupq_n_s64(1uLL);
  src.rowBytes = 2;
  dest.data = &v24;
  *&dest.height = *&src.height;
  dest.rowBytes = 4;
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0x10u);
  if (v24 == 1.0)
  {
    return 0.0;
  }

  else
  {
    return v24;
  }
}

uint64_t CI::sw_ciLensModelCalculator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = *(v4 + 88);
  v12 = *(v4 + 80);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (v11 == 5)
  {
    v14 = v13;
  }

  v15 = a4 + 80 * v10;
  v16 = a4 + 80 * v5;
  v52 = *v14;
  v53 = *v9;
  bzero(v55, 0x400uLL);
  LODWORD(v17) = *(v15 + 28);
  v18.i32[0] = *(v15 + 36);
  *v19.i32 = *(v15 + 32) * 0.5;
  *&v20 = *v19.i32 + (*&v17 * 0.5);
  *&v21 = *(v15 + 24) + ((*(v15 + 20) * 0.5) + (*(v15 + 16) * 0.5));
  *v22.f64 = *v18.i32 + *&v20;
  *(&v21 + 1) = *v18.i32 + *&v20;
  v32.f64[0] = CI::BitmapSampler::read(*(v15 + 8), v21, v22, v20, v17, v19, v18, v23, v24);
  v29 = 0;
  v30 = floor(*v32.f64 * 65536.0) * 0.0000152587891;
  v32.f64[0] = ceil(*(v32.f64 + 1) * 65536.0) * 0.0000152587891;
  v31 = v53;
  *v32.f64 = v32.f64[0];
  v33 = *v32.f64 - v30;
  v34 = vdup_n_s32(0x3C800000u);
  v35 = vmul_f32(*&vextq_s8(v31, v31, 8uLL), v34);
  v36 = vmul_f32(v35, 0x3F0000003F000000);
  v37 = (1.0 / (*v32.f64 - v30)) * 256.0;
  do
  {
    v38 = 0;
    *v32.f64 = v29;
    v54 = v32;
    do
    {
      v39.f32[0] = v38;
      v40 = v54;
      v39.i32[1] = LODWORD(v54.f64[0]);
      v41 = vadd_f32(v36, vadd_f32(*v31.i8, vmul_f32(v35, v39)));
      v34.i32[0] = *(v16 + 24);
      v26.i32[0] = *(v16 + 36);
      *v25.i32 = vmuls_lane_f32(*(v16 + 32), v41, 1);
      *v31.i32 = *v25.i32 + (v41.f32[0] * *(v16 + 28));
      v41.f32[0] = v34.f32[0] + (vmuls_lane_f32(*(v16 + 20), v41, 1) + (v41.f32[0] * *(v16 + 16)));
      *v40.f64 = *v26.i32 + *v31.i32;
      v41.f32[1] = *v26.i32 + *v31.i32;
      v32.f64[0] = CI::BitmapSampler::read(*(v16 + 8), *&v41, v40, *&v34, *v31.i64, v25, v26, v27, v28);
      v31.i64[0] = v53.i64[0];
      v42 = fminf(v37 * (*v32.f64 - v30), 255.0);
      if (v42 >= 255)
      {
        v42 = 255;
      }

      ++v55[v42 & ~(v42 >> 31)];
      ++v38;
    }

    while (v38 != 64);
    ++v29;
  }

  while (v29 != 64);
  HIDWORD(v43) = DWORD1(v52);
  v44 = vcvtmd_s64_f64(*&v52 * 64.0 * 64.0);
  if (v44 < 1)
  {
    v49 = -1.0;
    v48 = 0.0;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v47 = -1;
    do
    {
      v46 += v55[v45];
      ++v47;
      if (v45 > 0xFE)
      {
        break;
      }

      ++v45;
    }

    while (v46 < v44);
    v48 = v46;
    v49 = v47;
  }

  v50 = (v33 * ((fmaxf(v49, 0.0) + fminf(fmaxf(v44 / fmaxf(v48, 1.0), 0.0), 1.0)) + 0.5)) * 0.00390625 + v30;
  *&v43 = v50;
  return v43;
}

float CI::sw_CILensModelApply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = fabsf(fminf(*v7 - COERCE_FLOAT(*v11), COERCE_FLOAT(v11->i64[1])));
  v13 = vmuls_lane_f32(v12, *v11, 3);
  if (v13 <= 1.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1.0;
  }

  if (v13 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = vmuls_lane_f32((v12 * v14) + ((1.0 - v14) * 0.0), *v11->f32, 1);
  if (v15 <= 1.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  if (v15 >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  result = sqrtf(v17);
  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

double CI::sw_lenticularHalo(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v5 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = a4 + 80 * *(v5 + 8);
  v15 = *v13;
  a5.n128_u32[0] = *(a2 + (*(v5 + 80) << 6));
  v42 = a5;
  v40 = *(a2 + (*(v5 + 104) << 6));
  v16 = *(a2 + (*(v5 + 128) << 6));
  v17 = *(a2 + (*(v5 + 152) << 6));
  v39 = *(a2 + (*(v5 + 176) << 6));
  v43 = *(a2 + (*(v5 + 200) << 6));
  v18 = vsub_f32(*CI::getDC(a1), *v9);
  v19 = vmul_f32(v18, v18);
  v20 = vadd_f32(v19, vdup_lane_s32(v19, 1)).u32[0];
  v19.f32[0] = sqrtf(vaddv_f32(v19));
  v21 = vmulq_n_f32(vsubq_f32(vdupq_lane_s32(v19, 0), v39), v40);
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v21, 0);
  v22.i32[3] = 0;
  v23 = vminnmq_f32(v22, xmmword_19CF23BD0);
  __asm { FMOV            V3.4S, #1.0 }

  v29 = vsubq_f32(_Q3, v23);
  v23.i32[3] = 0;
  v29.i32[3] = 0;
  v30 = vminnmq_f32(v23, v29);
  v31 = vaddq_f32(v30, v30);
  __asm { FMOV            V4.4S, #3.0 }

  v41 = vmulq_f32(v31, vmulq_f32(v31, vsubq_f32(_Q4, vaddq_f32(v31, v31))));
  *v31.f32 = vrsqrte_f32(v20);
  *v29.f32 = vmul_f32(*v31.f32, *v31.f32);
  v33 = vrsqrts_f32(v20, *v29.f32);
  v31.i64[1] = v42.n128_i64[1];
  *v31.f32 = vadd_f32(v15, vmul_n_f32(vmul_n_f32(v18, vmul_f32(*v31.f32, v33).f32[0]), v42.n128_f32[0]));
  v29.i32[0] = *(v14 + 28);
  v18.f32[0] = *(v14 + 24) + (vmuls_lane_f32(*(v14 + 20), *v31.f32, 1) + (v31.f32[0] * *(v14 + 16)));
  _Q4.i32[0] = *(v14 + 36);
  v33.f32[0] = vmuls_lane_f32(*(v14 + 32), *v31.f32, 1);
  v31.f32[0] = _Q4.f32[0] + (v33.f32[0] + (v31.f32[0] * v29.f32[0]));
  v18.i32[1] = v31.i32[0];
  v37 = CI::BitmapSampler::read(*(v14 + 8), *&v18, v31, *&v33, *v29.i64, _Q4, v34, v35, v36);
  *&result = vmulq_f32(v43, vmulq_n_f32(v41, v17 + (*&v37 * v16))).u64[0];
  return result;
}

float32x2_t CI::sw_lighttunnel(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v22 = *v7->f32;
  v8 = vsub_f32(*CI::getDC(a1), *v7);
  v9 = vmul_f32(v8, v8);
  v9.i32[0] = vadd_f32(v9, vdup_lane_s32(v9, 1)).u32[0];
  v10 = vrsqrte_f32(v9.u32[0]);
  v21 = vmuls_lane_f32(vmul_f32(v10, vrsqrts_f32(v9.u32[0], vmul_f32(v10, v10))).f32[0], v22, 2);
  v11 = logf(v21);
  v12 = __sincosf_stret(vmuls_lane_f32(v11, v22, 3));
  v13.f32[0] = -v12.__sinval;
  v13.i32[1] = LODWORD(v12.__cosval);
  v14 = vmul_f32(v8, __PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)));
  v15 = vmul_f32(v8, v13);
  v16 = vadd_f32(*v22.f32, vmul_n_f32(vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)), v21));
  DC = CI::getDC(v17);
  v19 = 0.0;
  if (v21 <= 1.0)
  {
    v19 = 1.0;
  }

  return vmla_n_f32(vmul_n_f32(*DC, 1.0 - v19), v16, v19);
}

unint64_t CI::sw_localContrast(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8)
{
  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v10 + 16) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v10 + 32);
  v16 = a3 + 16 * v15;
  v17 = a2 + (v15 << 6);
  if (*(v10 + 40) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  LODWORD(a8) = *(a2 + (*(v10 + 56) << 6));
  v19 = *v14;
  v19.i32[3] = 0;
  v20 = vminnmq_f32(v19, 0);
  __asm { FMOV            V7.4S, #-1.0 }

  v26 = vaddq_f32(vmaxnmq_f32(v19, xmmword_19CF23BD0), _Q7);
  v27 = vmaxnmq_f32(v19, 0);
  v27.i32[3] = 0;
  v28 = vminnmq_f32(v27, xmmword_19CF23BD0);
  v29 = vmulq_f32(v28, vdupq_n_s32(0x3EAAA64Cu));
  *v29.i64 = sqrtf(v29.f32[2] + vaddv_f32(*v29.f32));
  v29.f32[0] = (1.0 - *v29.i64) * *v29.i64;
  v28.i32[3] = 0;
  v30 = vsqrtq_f32(v28);
  _Q7.f32[0] = sqrtf(*(v18 + 4));
  *v8.i32 = -(_Q7.f32[0] * (*&a8 * v29.f32[0]));
  v31 = (*&a8 * v29.f32[0]);
  *v9.i64 = v31 * 0.299;
  v9.f32[0] = v31 * 0.299;
  v32 = v31 * 0.587;
  *&v32 = v31 * 0.587;
  v33 = v31 * 0.114;
  *&v33 = v33;
  *&a8 = -(v29.f32[0] * *&a8);
  v34 = vmlaq_f32(vmulq_f32(vmlaq_n_f32(vmulq_n_f32(v30, 1.0 - *&a8), vdupq_lane_s32(*&a8, 0), _Q7.f32[0]), vdupq_n_s32(0x3E4CCCCCu)), vdupq_n_s32(0x3F4CCCCDu), vaddq_f32(vdupq_lane_s32(v8, 0), vaddq_f32(v30, vaddq_f32(vmulq_laneq_f32(vdupq_lane_s32(*&v33, 0), v30, 2), vaddq_f32(vmulq_lane_f32(vdupq_lane_s32(*&v32, 0), *v30.f32, 1), vdupq_lane_s32(*&vmulq_f32(v30, v9), 0))))));
  v34.i32[3] = 0;
  v35 = vmaxnmq_f32(v34, 0);
  return vaddq_f32(v26, vaddq_f32(v20, vmulq_f32(v35, v35))).u64[0];
}

CIImage *_lightMapImageFromData(NSData *a1, NSNumber *a2, NSNumber *a3)
{
  v16[2] = *MEMORY[0x1E69E9840];
  result = [(NSData *)a1 length];
  if (result)
  {
    v7 = result;
    v8 = [(NSNumber *)a2 intValue];
    v9 = [(NSNumber *)a3 intValue];
    if (!v8 || (v10 = v9) == 0)
    {
      v8 = vcvtmd_s64_f64(sqrt(vcvtd_n_f64_u64(v7, 1uLL)));
      v10 = v8;
    }

    if (v7 == (2 * v8 * v10))
    {
      v15[0] = @"kCIImageProviderContentDigest";
      v15[1] = @"kCIImageProviderName";
      v16[0] = a1;
      v16[1] = @"CILocalLight";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
      v12 = [CIImage alloc];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZL22_lightMapImageFromDataP6NSDataP8NSNumberS2__block_invoke;
      v13[3] = &unk_1E75C2E70;
      v14 = v8;
      v13[4] = a1;
      v13[5] = v7;
      return [(CIImage *)v12 initWithImageProvider:v13 width:v8 height:v10 format:262 colorSpace:0 options:v11];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CIImage *_scaledLightMapImage(CIImage *a1, CIImage *a2)
{
  result = 0;
  v19[3] = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    [(CIImage *)a1 extent];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(CIImage *)a2 extent];
    v23.origin.x = v13;
    v23.origin.y = v14;
    v23.size.width = v15;
    v23.size.height = v16;
    v21.origin.x = v6;
    v21.origin.y = v8;
    v21.size.width = v10;
    v21.size.height = v12;
    if (CGRectEqualToRect(v21, v23))
    {
      return a1;
    }

    else
    {
      [(CIImage *)a1 extent];
      v24.origin.x = 0.0;
      v24.origin.y = 0.0;
      v24.size.width = 1.0;
      v24.size.height = 1.0;
      if (CGRectEqualToRect(v22, v24))
      {
        v17 = [(CIImage *)a1 imageByClampingToExtent];
        [(CIImage *)a2 extent];

        return [(CIImage *)v17 imageByCroppingToRect:?];
      }

      else
      {
        v18[0] = @"inputSmallImage";
        v18[1] = @"inputSpatialSigma";
        v19[0] = a1;
        v19[1] = &unk_1F10853D8;
        v18[2] = @"inputLumaSigma";
        v19[2] = &unk_1F10853E8;
        return -[CIImage imageByApplyingFilter:withInputParameters:](a2, "imageByApplyingFilter:withInputParameters:", @"CIEdgePreserveUpsampleRGFilter", [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3]);
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::area_light_stats_from_histogram(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v35 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = fmin(v4 / 255.0, 1.0);
    v8 = *(a1 + 8 * v4);
    v5 = v5 + v8 * log(v7 + 0.00392156863);
    *a2 = v5;
    v6 = v6 + v8 * log(1.0 - v7 + 0.00392156863);
    *(a2 + 8) = v6;
    ++v4;
  }

  while (v4 != 256);
  *a2 = exp(v5);
  *(a2 + 8) = exp(v6);
  result = MEMORY[0x1EEE9AC00](v9, v10, v11, v12, v13, v14);
  v17 = 0;
  v18 = 1.0e-40;
  do
  {
    v18 = v18 + *(a1 + v17) + *(a1 + v17 + 8);
    v17 += 16;
  }

  while (v17 != 2048);
  v19 = 0;
  v20 = 0.0;
  do
  {
    v20 = v20 + *(a1 + v19);
    *&v34[v19] = v20 / v18;
    v19 += 8;
  }

  while (v19 != 2048);
  v21 = 0;
  v22 = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0u;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  do
  {
    v28 = *&v34[8 * v21];
    if (v28 >= 0.001 && v27 == 0.0)
    {
      v27 = v21 / 255.0;
    }

    if (v28 >= 0.02 && v26 == 0.0)
    {
      v26 = v21 / 255.0;
      *(a2 + 16) = v26;
    }

    if (v28 >= 0.1 && v25 == 0.0)
    {
      v25 = v21 / 255.0;
      *(a2 + 24) = v25;
    }

    if (v28 >= 0.25 && v24 == 0.0)
    {
      v24 = v21 / 255.0;
      *(a2 + 32) = v24;
    }

    if (v28 >= 0.5 && v23 == 0.0)
    {
      v23 = v21 / 255.0;
      *(a2 + 40) = v23;
    }

    if (v28 >= 0.98 && v22 == 0.0)
    {
      v22 = v21 / 255.0;
      *(a2 + 48) = v22;
    }

    if (v28 >= 1.0 && *(a2 + 72) == 0.0)
    {
      *(a2 + 72) = v21 / 255.0;
    }

    ++v21;
  }

  while (v21 != 256);
  *(a2 + 64) = v27 * ((sqrt(v27) * -0.65 + 1.0) * 0.85);
  v29 = 0.6 - v23 - v24;
  if (v16 >= 0.8 || *(a2 + 72) >= 1.0)
  {
    v30 = v29 * 0.9;
  }

  else
  {
    v30 = v29 + fmin(0.8 - v16, 0.2);
  }

  v31 = v23 + v24;
  if (v31 > 0.6)
  {
    if (v22 >= 1.0)
    {
      v32 = -0.4;
    }

    else
    {
      v32 = -0.7;
    }

    v30 = v31 + v32;
  }

  v33 = fmax(v30, 0.1);
  if (v26 <= 0.015 || v22 <= 0.95 || v23 <= 0.14)
  {
    if (v26 > 0.055)
    {
      v33 = -v33;
    }
  }

  else
  {
    v33 = -v33;
  }

  *(a2 + 56) = v33 * 0.68;
  return result;
}

char *___ZL22_lightMapImageFromDataP6NSDataP8NSNumberS2__block_invoke(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3 == 2 * *(a1 + 48))
  {
    v9 = [*(a1 + 32) bytes];
    v10 = *(a1 + 40);

    return memcpy(a2, v9, v10);
  }

  else
  {
    result = [*(a1 + 32) bytes];
    if (a7)
    {
      v15 = result;
      v16 = 2 * a6;
      do
      {
        result = memcpy(a2, v15, v16);
        v15 += v16;
        a2 += a3;
        --a7;
      }

      while (a7);
    }
  }

  return result;
}

unint64_t CI::sw_shadowKernel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *v11 * 3.4 + -1.2;
  v13 = *(a2 + (*(v3 + 56) << 6));
  v14 = (*v13.i32 * v12) + ((1.0 - *v13.i32) * 0.0);
  v15 = v14;
  if (v14 <= 0.0)
  {
    v17 = vmulq_n_f64(vmulq_n_f64(xmmword_19CF27C50, v15), v15);
    *&v17.f64[0] = vcvt_f32_f64(v17);
    v16 = vzip1q_s32(v17, v17);
  }

  else
  {
    *v13.i32 = v14 * 0.0;
    v16 = vdupq_lane_s32(v13, 0);
  }

  v18 = *v7;
  v18.i32[3] = 0;
  v19 = vmaxnmq_f32(v18, 0);
  v19.i32[3] = 0;
  v20 = vminnmq_f32(v19, xmmword_19CF23BD0);
  v21 = vmulq_f32(v20, vdupq_n_s32(0x3EAAAA3Bu));
  v22 = sqrtf(v21.f32[2] + vaddv_f32(*v21.f32));
  v23 = vmaxnmq_f32(v18, xmmword_19CF23BD0);
  v24 = vminnmq_f32(v18, 0);
  __asm { FMOV            V19.4S, #1.0 }

  v30 = vaddq_f32(vmulq_f32(vsubq_f32(_Q19, v16), v20), vmulq_f32(v16, vmulq_f32(v20, v20)));
  v31 = v22;
  v32 = 0.1 - v22;
  v33.i32[1] = 0;
  v34 = v15 * 1.85 * fmaxf(v32, 0.0) + 1.0;
  v35 = vmulq_n_f32(v30, v34);
  v35.i32[3] = 0;
  v36 = vmaxnmq_f32(v35, 0);
  v36.i32[3] = 0;
  v37 = vminnmq_f32(v36, xmmword_19CF23BD0);
  v38 = fminf(v14 * v14, 1.0);
  if (v14 >= 0.0)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v38;
  }

  v40 = (1.0 - v31) * v31;
  *v33.i32 = (v39 * v40) * -0.4;
  v41 = (v39 * v40);
  *_Q19.i64 = v41 * 0.299;
  v42 = v41 * 0.587;
  v43 = v41 * 0.114;
  __asm { FMOV            V21.4S, #-1.0 }

  v37.i32[3] = 0;
  v45 = vsqrtq_f32(v37);
  _Q19.f32[0] = *_Q19.i64;
  *&v42 = v42;
  *&v43 = v43;
  v46 = vmlaq_f32(vmulq_f32(vmlaq_n_f32(vmulq_n_f32(v45, 1.0 - -(v40 * v39)), vdupq_n_s32(0x3ECCCCCDu), -(v40 * v39)), vdupq_n_s32(0x3E4CCCCCu)), vdupq_n_s32(0x3F4CCCCDu), vaddq_f32(vdupq_lane_s32(v33, 0), vaddq_f32(v45, vaddq_f32(vmulq_laneq_f32(vdupq_lane_s32(*&v43, 0), v45, 2), vaddq_f32(vmulq_lane_f32(vdupq_lane_s32(*&v42, 0), *v45.f32, 1), vdupq_lane_s32(*&vmulq_f32(v45, _Q19), 0))))));
  v46.i32[3] = 0;
  v47 = vmaxnmq_f32(v46, 0);
  v48 = vmulq_f32(v47, v47);
  v48.i32[3] = 0;
  v49 = vmaxnmq_f32(v48, 0);
  v49.i32[3] = 0;
  return vaddq_f32(v24, vaddq_f32(vaddq_f32(v23, _Q21), vminnmq_f32(v49, xmmword_19CF23BD0))).u64[0];
}

unint64_t CI::sw_polyKernel(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9, double a10)
{
  v10 = *(a1 + 40);
  v11 = *(v10 + 8);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v10 + 16) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v10 + 32);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v10 + 40) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  LODWORD(a10) = *(a2 + (*(v10 + 56) << 6));
  v19 = COERCE_FLOAT(*v18) * 3.4 + -1.2;
  *&v19 = v19;
  *&v19 = (*&a10 * *&v19) + ((1.0 - *&a10) * 0.0);
  if (*&v19 <= 0.0)
  {
    a9.f32[0] = *&v19 * 1.75;
    v20 = *&v19 * 1.55;
    a9.i32[1] = a9.i32[0];
    a9.f32[2] = v20;
  }

  else
  {
    *&v19 = *&v19 * 1.5;
    a9 = vdupq_lane_s32(*&v19, 0);
  }

  v21 = *v14;
  v21.i32[3] = 0;
  v22 = vmaxnmq_f32(v21, 0);
  v22.i32[3] = 0;
  v23 = vminnmq_f32(v22, xmmword_19CF23BD0);
  v24 = vmulq_f32(v23, vdupq_n_s32(0x3EAAAA3Bu));
  v25 = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
  v26 = vmaxnmq_f32(v21, xmmword_19CF23BD0);
  __asm { FMOV            V19.4S, #1.0 }

  v32 = vaddq_f32(vmulq_f32(vsubq_f32(_Q19, a9), v23), vmulq_f32(a9, vmulq_f32(v23, v23)));
  v32.i32[3] = 0;
  v33 = vminnmq_f32(v21, 0);
  v34 = vmaxnmq_f32(v32, 0);
  v34.i32[3] = 0;
  *&a10 = fminf(*&a10, 0.5);
  v35 = (1.0 - v25) * v25;
  v36 = fmaxf(COERCE_FLOAT(HIDWORD(*v18)), 0.5);
  v37 = (*&a10 * v35);
  *_Q19.i64 = v37 * 0.299;
  v38 = v37 * 0.587;
  v39 = v37 * 0.114;
  __asm { FMOV            V21.4S, #-1.0 }

  v41 = vminnmq_f32(v34, xmmword_19CF23BD0);
  v41.i32[3] = 0;
  v42 = vsqrtq_f32(v41);
  v32.f32[0] = -(v36 * (*&a10 * v35));
  _Q19.f32[0] = *_Q19.i64;
  *&v38 = v38;
  *&v39 = v39;
  *&a10 = -(v35 * *&a10);
  v43 = vmlaq_f32(vmulq_f32(vmlaq_n_f32(vmulq_n_f32(v42, 1.0 - *&a10), vdupq_lane_s32(*&a10, 0), v36), vdupq_n_s32(0x3E4CCCCCu)), vdupq_n_s32(0x3F4CCCCDu), vaddq_f32(vdupq_lane_s32(*v32.f32, 0), vaddq_f32(v42, vaddq_f32(vmulq_laneq_f32(vdupq_lane_s32(*&v39, 0), v42, 2), vaddq_f32(vmulq_lane_f32(vdupq_lane_s32(*&v38, 0), *v42.f32, 1), vdupq_lane_s32(*&vmulq_f32(v42, _Q19), 0))))));
  v43.i32[3] = 0;
  v44 = vmaxnmq_f32(v43, 0);
  v45 = vmulq_f32(v44, v44);
  v45.i32[3] = 0;
  v46 = vmaxnmq_f32(v45, 0);
  v46.i32[3] = 0;
  return vaddq_f32(v33, vaddq_f32(vaddq_f32(v26, _Q21), vminnmq_f32(v46, xmmword_19CF23BD0))).u64[0];
}

double CI::sw_lumaMap(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11)
{
  v11 = *(a1 + 40);
  v12 = *(v11 + 8);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v11 + 16) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v11 + 32) << 6));
  v17 = *(v11 + 64);
  v18 = *(v11 + 56);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (v17 == 5)
  {
    v20 = v19;
  }

  v21 = *v20;
  v22 = vmulq_f32(*v15, xmmword_19CF23D60);
  v23 = vextq_s8(v22, v22, 8uLL).u64[0];
  *&v22.f64[0] = vadd_f32(*&v22.f64[0], v23);
  v23.i32[0] = HIDWORD(v21);
  *v22.f64 = *(&v21 + 1) + (*&v21 * vaddv_f32(*&v22.f64[0]));
  return CI::BitmapSampler::read(v16, COERCE_DOUBLE(LODWORD(v22.f64[0]) | 0x3F00000000000000), v22, *&v23, a7, a8, a9, a10, a11);
}

CIImage *scaleH(CIImage *a1, double a2)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = [CIVector vectorWithX:1.0 / a2 Y:1.0 Z:1.0 W:0.0];
  [(CIImage *)a1 extent];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  if (CGRectIsInfinite(v31))
  {
    *&v24.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v24.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    if (CGRectIsNull(v32))
    {
      *&v24.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v24.var2 = 0.0;
      v24.var3 = 0.0;
    }

    else
    {
      v24.var0 = x;
      v24.var1 = y;
      v24.var2 = width;
      v24.var3 = height;
    }
  }

  v9 = -1.0;
  if (a2 <= 1.0)
  {
    v9 = -0.0;
  }

  Rectangle::inset(&v24, v9, -0.0, &v25);
  if (fabs(v25.f64[0]) == INFINITY || fabs(v25.f64[1]) == INFINITY)
  {
    *&v27.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v27.var2 = 0.0;
    v27.var3 = 0.0;
  }

  else
  {
    v17 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v18 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v25, v18), vceqq_f64(v26, v17))))))
    {
      v27.var0 = v25.f64[0] * a2;
      v27.var1 = v25.f64[1];
      v27.var2 = a2 * v26.f64[0];
      v27.var3 = v26.f64[1];
    }

    else
    {
      *&v27.var0 = v18;
      *&v27.var2 = v17;
    }
  }

  v10 = [CIKernel kernelWithInternalRepresentation:&CI::_maxScale, Rectangle::integralize(&v27, 0.0001, &v28).f64[0]];
  v11 = vceqq_f64(v29, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
  v12 = vmvnq_s8(vuzp1q_s32(vceqq_f64(v28, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), v11));
  if (vmaxv_u16(vmovn_s32(v12)))
  {
    v19 = v29;
    v21 = v28;
    v13 = v28.f64[1];
    v14 = v29.f64[1];
  }

  else
  {
    v11.i64[0] = *MEMORY[0x1E695F040];
    v13 = *(MEMORY[0x1E695F040] + 8);
    v12.i64[0] = *(MEMORY[0x1E695F040] + 16);
    v14 = *(MEMORY[0x1E695F040] + 24);
    v19 = v12;
    v21 = v11;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL6scaleHP7CIImaged_block_invoke;
  v23[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  *&v23[4] = a2;
  v30[0] = a1;
  v30[1] = v4;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:{2, *&v19, *&v21}];
  return [(CIKernel *)v10 applyWithExtent:v23 roiCallback:v15 arguments:v22, v13, v20, v14];
}

CIImage *scaleV(CIImage *a1, double a2)
{
  v30[2] = *MEMORY[0x1E69E9840];
  v4 = [CIVector vectorWithX:1.0 Y:1.0 / a2 Z:0.0 W:1.0];
  [(CIImage *)a1 extent];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  if (CGRectIsInfinite(v31))
  {
    *&v24.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v24.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    if (CGRectIsNull(v32))
    {
      *&v24.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
      v24.var2 = 0.0;
      v24.var3 = 0.0;
    }

    else
    {
      v24.var0 = x;
      v24.var1 = y;
      v24.var2 = width;
      v24.var3 = height;
    }
  }

  v9 = -1.0;
  if (a2 <= 1.0)
  {
    v9 = -0.0;
  }

  Rectangle::inset(&v24, -0.0, v9, &v25);
  if (fabs(v25.f64[0]) == INFINITY || fabs(v25.f64[1]) == INFINITY)
  {
    *&v27.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    v27.var2 = 0.0;
    v27.var3 = 0.0;
  }

  else
  {
    v17 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    v18 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v25, v18), vceqq_f64(v26, v17))))))
    {
      v27.var0 = v25.f64[0];
      v27.var1 = v25.f64[1] * a2;
      v27.var2 = v26.f64[0];
      v27.var3 = vmuld_lane_f64(a2, v26, 1);
    }

    else
    {
      *&v27.var0 = v18;
      *&v27.var2 = v17;
    }
  }

  v10 = [CIKernel kernelWithInternalRepresentation:&CI::_maxScale, Rectangle::integralize(&v27, 0.0001, &v28).f64[0]];
  v11 = vceqq_f64(v29, vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
  v12 = vmvnq_s8(vuzp1q_s32(vceqq_f64(v28, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), v11));
  if (vmaxv_u16(vmovn_s32(v12)))
  {
    v19 = v29;
    v21 = v28;
    v13 = v28.f64[1];
    v14 = v29.f64[1];
  }

  else
  {
    v11.i64[0] = *MEMORY[0x1E695F040];
    v13 = *(MEMORY[0x1E695F040] + 8);
    v12.i64[0] = *(MEMORY[0x1E695F040] + 16);
    v14 = *(MEMORY[0x1E695F040] + 24);
    v19 = v12;
    v21 = v11;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___ZL6scaleVP7CIImaged_block_invoke;
  v23[3] = &__block_descriptor_40_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  *&v23[4] = a2;
  v30[0] = a1;
  v30[1] = v4;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:{2, *&v19, *&v21}];
  return [(CIKernel *)v10 applyWithExtent:v23 roiCallback:v15 arguments:v22, v13, v20, v14];
}

void ___ZL9downBy2x2P7CIImage_block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
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

double CI::sw_maxScaleDown2x2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  v6 = vadd_f32(*DC, *DC);
  v7 = vadd_f32(v6, 0x3F0000003F000000);
  LODWORD(v8) = *(v4 + 24);
  v9.i32[0] = *(v4 + 36);
  *v10.i32 = vmuls_lane_f32(*(v4 + 32), v7, 1);
  *&v11 = *v10.i32 + (v7.f32[0] * *(v4 + 28));
  v7.f32[0] = *&v8 + (vmuls_lane_f32(*(v4 + 20), v7, 1) + (v7.f32[0] * *(v4 + 16)));
  *v12.f64 = *v9.i32 + *&v11;
  v7.f32[1] = *v9.i32 + *&v11;
  *v15.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v7, v12, v8, v11, v10, v9, v13, v14);
  v43 = v15;
  *v15.f32 = vadd_f32(v6, COERCE_FLOAT32X2_T(-0.0000305175853));
  LODWORD(v16) = *(v4 + 24);
  v17.i32[0] = *(v4 + 36);
  *v18.i32 = vmuls_lane_f32(*(v4 + 32), *v15.f32, 1);
  *&v19 = *v18.i32 + (v15.f32[0] * *(v4 + 28));
  v15.f32[0] = *&v16 + (vmuls_lane_f32(*(v4 + 20), *v15.f32, 1) + (v15.f32[0] * *(v4 + 16)));
  *v20.f64 = *v17.i32 + *&v19;
  v15.f32[1] = *v17.i32 + *&v19;
  *v23.i64 = CI::BitmapSampler::read(*(v4 + 8), *v15.i64, v20, v16, v19, v18, v17, v21, v22);
  v42 = v23;
  *v23.f32 = vadd_f32(v6, COERCE_FLOAT32X2_T(--0.0000305175998));
  LODWORD(v24) = *(v4 + 24);
  v25.i32[0] = *(v4 + 36);
  *v26.i32 = vmuls_lane_f32(*(v4 + 32), *v23.f32, 1);
  *&v27 = *v26.i32 + (v23.f32[0] * *(v4 + 28));
  v23.f32[0] = *&v24 + (vmuls_lane_f32(*(v4 + 20), *v23.f32, 1) + (v23.f32[0] * *(v4 + 16)));
  *v28.f64 = *v25.i32 + *&v27;
  v23.f32[1] = *v25.i32 + *&v27;
  *v31.i64 = CI::BitmapSampler::read(*(v4 + 8), *v23.i64, v28, v24, v27, v26, v25, v29, v30);
  v41 = v31;
  *v31.f32 = vadd_f32(v6, 0xBF000000BF000000);
  LODWORD(v32) = *(v4 + 24);
  v33.i32[0] = *(v4 + 36);
  *v34.i32 = vmuls_lane_f32(*(v4 + 32), *v31.f32, 1);
  *&v35 = *v34.i32 + (v31.f32[0] * *(v4 + 28));
  v31.f32[0] = *&v32 + (vmuls_lane_f32(*(v4 + 20), *v31.f32, 1) + (v31.f32[0] * *(v4 + 16)));
  *v36.f64 = *v33.i32 + *&v35;
  v31.f32[1] = *v33.i32 + *&v35;
  *v39.i64 = CI::BitmapSampler::read(*(v4 + 8), *v31.i64, v36, v32, v35, v34, v33, v37, v38);
  *&result = vmaxnmq_f32(vmaxnmq_f32(v43, v42), vmaxnmq_f32(v41, v39)).u64[0];
  return result;
}

void roiDown2(CGRect a1, int a2)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsInfinite(a1))
  {
    v7 = -8.98846567e307;
    v8 = 1.79769313e308;
    v9 = 1.79769313e308;
    v10 = -8.98846567e307;
  }

  else
  {
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    IsNull = CGRectIsNull(v21);
    v9 = 0.0;
    v10 = INFINITY;
    if (IsNull)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = width;
    }

    if (IsNull)
    {
      v7 = INFINITY;
    }

    else
    {
      v9 = height;
      v7 = y;
    }

    if (!IsNull)
    {
      v10 = x;
    }
  }

  v12 = 1.0;
  if (a2)
  {
    v13 = 2.0;
  }

  else
  {
    v13 = 1.0;
  }

  if (!a2)
  {
    v12 = 2.0;
  }

  v14 = fabs(v7) == INFINITY;
  if (fabs(v10) != INFINITY && !v14)
  {
    if (v10 == -8.98846567e307 && v7 == -8.98846567e307 && v8 == 1.79769313e308 && v9 == 1.79769313e308)
    {
      *&v19.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *&v19.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v19.var0 = v13 * v10;
      v19.var1 = v12 * v7;
      v19.var2 = v13 * v8;
      v19.var3 = v12 * v9;
    }
  }

  else
  {
    *&v19.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    *&v19.var2 = 0uLL;
  }

  Rectangle::integralize(&v19, 0.0001, &v20);
}

double CI::sw_maxScaleDown2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v11 = *v9;
  DC = CI::getDC(a1);
  __asm { FMOV            V1.2S, #1.0 }

  *&v18.f64[0] = vadd_f32(v11, _D1);
  v19 = vmul_f32(*&v18.f64[0], *DC);
  v20 = vmul_f32(v11, 0x3F0000003F000000);
  v21 = vsub_f32(v19, v20);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), v21, 1);
  *&v25 = *v24.i32 + (v21.f32[0] * *(v10 + 28));
  v21.f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), v21, 1) + (v21.f32[0] * *(v10 + 16)));
  *v18.f64 = *v23.i32 + *&v25;
  v21.f32[1] = *v23.i32 + *&v25;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *&v21, v18, v22, v25, v24, v23, v26, v27);
  v38 = v28;
  *v28.f32 = vadd_f32(v20, v19);
  LODWORD(v29) = *(v10 + 24);
  v30.i32[0] = *(v10 + 36);
  *v31.i32 = vmuls_lane_f32(*(v10 + 32), *v28.f32, 1);
  *&v32 = *v31.i32 + (v28.f32[0] * *(v10 + 28));
  v28.f32[0] = *&v29 + (vmuls_lane_f32(*(v10 + 20), *v28.f32, 1) + (v28.f32[0] * *(v10 + 16)));
  *v33.f64 = *v30.i32 + *&v32;
  v28.f32[1] = *v30.i32 + *&v32;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v33, v29, v32, v31, v30, v34, v35);
  *&result = vmaxnmq_f32(v38, v36).u64[0];
  return result;
}

void roiDownK(CGRect a1, float a2, int a3)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  if (CGRectIsInfinite(a1))
  {
    v9 = -8.98846567e307;
    v10 = 1.79769313e308;
    v11 = 1.79769313e308;
    v12 = -8.98846567e307;
  }

  else
  {
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    IsNull = CGRectIsNull(v19);
    v11 = 0.0;
    v12 = INFINITY;
    if (IsNull)
    {
      v10 = 0.0;
    }

    else
    {
      v10 = width;
    }

    if (IsNull)
    {
      v9 = INFINITY;
    }

    else
    {
      v11 = height;
      v9 = y;
    }

    if (!IsNull)
    {
      v12 = x;
    }
  }

  v14 = 1.0 / a2;
  if (a3)
  {
    v15 = 1.0 / a2;
  }

  else
  {
    v15 = 1.0;
  }

  if (a3)
  {
    v14 = 1.0;
  }

  v16 = fabs(v9) == INFINITY;
  if (fabs(v12) == INFINITY || v16)
  {
    *&v17.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    *&v17.var2 = 0uLL;
  }

  else if (v12 == -8.98846567e307 && v9 == -8.98846567e307 && v10 == 1.79769313e308 && v11 == 1.79769313e308)
  {
    *&v17.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v17.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  else
  {
    v17.var0 = v12 * v15;
    v17.var1 = v9 * v14;
    v17.var2 = v10 * v15;
    v17.var3 = v11 * v14;
  }

  Rectangle::integralize(&v17, 0.0001, &v18);
}

double CI::sw_maxScale(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v36 = *v9->f32;
  v11 = vmul_f32(*v9, *CI::getDC(a1));
  *&v12.f64[0] = vadd_f32(vrndm_f32(vadd_f32(v11, 0xBF000000BF000000)), 0x3F0000003F000000);
  v13 = vextq_s8(v36, v36, 8uLL).u64[0];
  __asm { FMOV            V3.2S, #1.0 }

  v19 = vsub_f32(_D3, v13);
  v20 = vmla_f32(vmul_f32(v19, v11), v13, *&v12.f64[0]);
  *v12.f64 = vmuls_lane_f32(*(v10 + 20), v20, 1) + (v20.f32[0] * *(v10 + 16));
  v19.i32[0] = *(v10 + 24);
  v21.i32[0] = *(v10 + 36);
  *v22.i32 = vmuls_lane_f32(*(v10 + 32), v20, 1);
  *v23.i32 = *v22.i32 + (v20.f32[0] * *(v10 + 28));
  *v24.i8 = vadd_f32(v13, v20);
  v35 = v24;
  *v24.i32 = v19.f32[0] + *v12.f64;
  *v12.f64 = *v21.i32 + *v23.i32;
  *&v24.i32[1] = *v21.i32 + *v23.i32;
  *v26.i64 = CI::BitmapSampler::read(*(v10 + 8), *v24.i64, v12, *&v13, *&v19, v23, v22, v21, v25);
  v37 = v26;
  HIDWORD(v27) = v35.i32[1];
  v28.i32[0] = *(v10 + 36);
  *&v29 = vmuls_lane_f32(*(v10 + 32), *v35.i8, 1);
  *&v27 = *&v29 + (*v35.i32 * *(v10 + 28));
  v26.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v35.i8, 1) + (*v35.i32 * *(v10 + 16)));
  *v30.f64 = *v28.i32 + *&v27;
  v26.f32[1] = *v28.i32 + *&v27;
  *v33.i64 = CI::BitmapSampler::read(*(v10 + 8), *v26.i64, v30, v27, v29, v28, v35, v31, v32);
  *&result = vmaxnmq_f32(v37, v33).u64[0];
  return result;
}

float ___ZL6scaleVP7CIImaged_block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = *(a1 + 32);
  roiDownK(*&a2, v5, 0);
  return result;
}

double CI::sw_maskToAlpha(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  *&result = vdupq_lane_s32(*v7, 1).u64[0];
  return result;
}

float64x2_t Rectangle::scale@<Q0>(Rectangle *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  var0 = this->var0;
  if (fabs(this->var0) == INFINITY || (var1 = this->var1, fabs(var1) == INFINITY))
  {
    result = vdupq_n_s64(0x7FF0000000000000uLL);
    *a3 = result;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    v6 = var0 == -8.98846567e307 && var1 == -8.98846567e307;
    if (v6 && this->var2 == 1.79769313e308 && this->var3 == 1.79769313e308)
    {
      result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *a3 = result;
      *(a3 + 16) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      *a3 = var0 * a2;
      *(a3 + 8) = var1 * a2;
      result = vmulq_n_f64(*&this->var2, a2);
      *(a3 + 16) = result;
    }
  }

  return result;
}

double CI::sw_betterDown2(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  DC = CI::getDC(a1);
  HIDWORD(v6.f64[0]) = 1065353216;
  v7 = vadd_f32(vadd_f32(*DC, *DC), 0x3F80000000000000);
  LODWORD(v8) = *(v4 + 24);
  v9.i32[0] = *(v4 + 36);
  *v10.i32 = vmuls_lane_f32(*(v4 + 32), v7, 1);
  *&v11 = *v10.i32 + (v7.f32[0] * *(v4 + 28));
  v7.f32[0] = *&v8 + (vmuls_lane_f32(*(v4 + 20), v7, 1) + (v7.f32[0] * *(v4 + 16)));
  *v6.f64 = *v9.i32 + *&v11;
  v7.f32[1] = *v9.i32 + *&v11;
  *v14.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v7, v6, v8, v11, v10, v9, v12, v13);
  v56 = v14;
  v16 = CI::getDC(v15);
  HIDWORD(v17.f64[0]) = -1082130432;
  v18 = vadd_f32(vadd_f32(*v16, *v16), 0xBF80000000000000);
  LODWORD(v19) = *(v4 + 24);
  v20.i32[0] = *(v4 + 36);
  *v21.i32 = vmuls_lane_f32(*(v4 + 32), v18, 1);
  *&v22 = *v21.i32 + (v18.f32[0] * *(v4 + 28));
  v18.f32[0] = *&v19 + (vmuls_lane_f32(*(v4 + 20), v18, 1) + (v18.f32[0] * *(v4 + 16)));
  *v17.f64 = *v20.i32 + *&v22;
  v18.f32[1] = *v20.i32 + *&v22;
  *v25.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v18, v17, v19, v22, v21, v20, v23, v24);
  v55 = v25;
  v27 = CI::getDC(v26);
  HIDWORD(v28.f64[0]) = 0;
  v29 = vadd_f32(vadd_f32(*v27, *v27), 1065353216);
  LODWORD(v30) = *(v4 + 24);
  v31.i32[0] = *(v4 + 36);
  *v32.i32 = vmuls_lane_f32(*(v4 + 32), v29, 1);
  *&v33 = *v32.i32 + (v29.f32[0] * *(v4 + 28));
  v29.f32[0] = *&v30 + (vmuls_lane_f32(*(v4 + 20), v29, 1) + (v29.f32[0] * *(v4 + 16)));
  *v28.f64 = *v31.i32 + *&v33;
  v29.f32[1] = *v31.i32 + *&v33;
  *v36.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v29, v28, v30, v33, v32, v31, v34, v35);
  v54 = v36;
  v38 = CI::getDC(v37);
  HIDWORD(v39.f64[0]) = 0;
  v40 = vadd_f32(vadd_f32(*v38, *v38), 3212836864);
  LODWORD(v41) = *(v4 + 24);
  v42.i32[0] = *(v4 + 36);
  *v43.i32 = vmuls_lane_f32(*(v4 + 32), v40, 1);
  *&v44 = *v43.i32 + (v40.f32[0] * *(v4 + 28));
  v40.f32[0] = *&v41 + (vmuls_lane_f32(*(v4 + 20), v40, 1) + (v40.f32[0] * *(v4 + 16)));
  *v39.f64 = *v42.i32 + *&v44;
  v40.f32[1] = *v42.i32 + *&v44;
  *v47.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v40, v39, v41, v44, v43, v42, v45, v46);
  __asm { FMOV            V1.4S, #0.25 }

  *&result = vmulq_f32(vaddq_f32(v54, vaddq_f32(vaddq_f32(v56, v55), v47)), _Q1).u64[0];
  return result;
}

double CI::sw_maskedVariableBlur(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * v4[1];
  v6 = a4 + 80 * v4[4];
  v7 = a4 + 80 * v4[7];
  v8 = a4 + 80 * v4[10];
  v9 = a4 + 80 * v4[13];
  v10 = a4 + 80 * v4[16];
  v11 = a4 + 80 * v4[19];
  v12 = a4 + 80 * v4[22];
  v13 = *(a2 + (v4[25] << 6));
  DC = CI::getDC(a1);
  *v15.i8 = *DC;
  v314 = v15;
  LODWORD(v16) = *(v5 + 28);
  *&v17 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v5 + 16)));
  LODWORD(v18) = *(v5 + 36);
  *v19.f64 = *&v18 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v16));
  HIDWORD(v17) = LODWORD(v19.f64[0]);
  v23 = CI::BitmapSampler::read(*(v5 + 8), v17, v19, v16, v18, v15, v20, v21, v22);
  v24 = 1.0;
  if (*(&v23 + 1) <= 1.0)
  {
    v24 = *(&v23 + 1);
  }

  if (*(&v23 + 1) >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = log2((v13 * v25) * 4.0 / 3.0);
  *v27.i32 = fmaxf(v26, 0.0);
  v273 = *v27.i32;
  LODWORD(v28) = *(v6 + 28);
  *&v29 = *(v6 + 24) + (vmuls_lane_f32(*(v6 + 20), *v314.i8, 1) + (*v314.i32 * *(v6 + 16)));
  LODWORD(v30) = *(v6 + 36);
  v31 = floorf(*v27.i32);
  *v32.f64 = *&v30 + (vmuls_lane_f32(*(v6 + 32), *v314.i8, 1) + (*v314.i32 * *&v28));
  HIDWORD(v29) = LODWORD(v32.f64[0]);
  *v35.i64 = CI::BitmapSampler::read(*(v6 + 8), v29, v32, v28, v30, v27, v314, v33, v34);
  v272 = v35;
  v35.i64[1] = v314.i64[1];
  *v35.i8 = vadd_f32(vmul_f32(*v314.i8, 0x3F0000003F000000), 0xBF000000BF000000);
  *&v36.f64[0] = vrndm_f32(*v35.i8);
  __asm { FMOV            V13.2S, #1.0 }

  v42 = vadd_f32(vsub_f32(*&v36.f64[0], *v35.i8), _D13);
  *v35.i8 = vsub_f32(*v35.i8, *&v36.f64[0]);
  v43 = vdup_n_s32(0x3EAAAAABu);
  v44 = vmul_f32(v42, 0x3F0000003F000000);
  *v45.i8 = vmul_f32(v42, v44);
  v46 = vdup_n_s32(0x3E2AAAABu);
  *v47.i8 = vadd_f32(vadd_f32(v44, vsub_f32(*v45.i8, vmul_f32(v42, vmul_f32(v42, vmul_f32(v42, v43))))), v46);
  *&v48 = vsub_f32(_D13, *v47.i8);
  *v49.i8 = vadd_f32(vadd_f32(*&v36.f64[0], vdiv_f32(vadd_f32(vadd_f32(v44, vsub_f32(*v45.i8, vmul_f32(v42, *v45.i8))), v46), *v47.i8)), 0xBF000000BF000000);
  *&v50.f64[0] = vmul_f32(*v35.i8, *v35.i8);
  __asm
  {
    FMOV            V8.2S, #6.0
    FMOV            V9.2S, #1.5
  }

  *v35.i8 = vadd_f32(vadd_f32(*&v36.f64[0], vdiv_f32(vdiv_f32(vmul_f32(*v35.i8, *&v50.f64[0]), _D8), *&v48)), _D9);
  v293 = v35;
  v304 = v48;
  v274 = v49;
  v286 = v47;
  *v35.i32 = *(v7 + 24) + (vmuls_lane_f32(*(v7 + 20), *v49.i8, 1) + (*v49.i32 * *(v7 + 16)));
  LODWORD(v48) = *(v7 + 36);
  *v50.f64 = vmuls_lane_f32(*v47.i32, *v47.i8, 1);
  v262 = v50;
  *v36.f64 = *&v48 + (vmuls_lane_f32(*(v7 + 32), *v49.i8, 1) + (*v49.i32 * *(v7 + 28)));
  v35.i32[1] = LODWORD(v36.f64[0]);
  *v54.i64 = CI::BitmapSampler::read(*(v7 + 8), *v35.i64, v36, v50.f64[0], *&v48, v49, v45, v47, v53);
  v55 = v262;
  v56 = vmulq_n_f32(v54, *v262.f64);
  v54.f32[0] = *(v7 + 24) + (vmuls_lane_f32(*(v7 + 20), *v274.i8, 1) + (*v293.i32 * *(v7 + 16)));
  LODWORD(v57) = *(v7 + 36);
  HIDWORD(v58) = DWORD1(v304);
  *&v58 = vmuls_lane_f32(*&v304, *v286.i8, 1);
  v257 = *&v58;
  v263 = v56;
  *v55.f64 = *&v57 + (vmuls_lane_f32(*(v7 + 32), *v274.i8, 1) + (*v293.i32 * *(v7 + 28)));
  v54.i32[1] = LODWORD(v55.f64[0]);
  *v60.i64 = CI::BitmapSampler::read(*(v7 + 8), *v54.i64, v55, v58, v57, v286, v274, v59, v56);
  v61 = v274;
  v62 = vmuls_lane_f32(*(v7 + 20), *v293.i8, 1) + (*v274.i32 * *(v7 + 16));
  LODWORD(v63) = *(v7 + 24);
  v64.i32[0] = *(v7 + 36);
  *&v65 = vmuls_lane_f32(*(v7 + 32), *v293.i8, 1) + (*v274.i32 * *(v7 + 28));
  v275 = vaddq_f32(v263, vmulq_n_f32(v60, v257));
  v60.f32[0] = *&v63 + v62;
  *v66.f64 = *v64.i32 + *&v65;
  v60.f32[1] = *v64.i32 + *&v65;
  *v67.i64 = CI::BitmapSampler::read(*(v7 + 8), *v60.i64, v66, v63, v65, v286, v64, v275, v61);
  HIDWORD(v68) = v293.i32[1];
  v69 = vmuls_lane_f32(*(v7 + 20), *v293.i8, 1) + (*v293.i32 * *(v7 + 16));
  v70 = v293;
  LODWORD(v71) = *(v7 + 24);
  v72.i32[0] = *(v7 + 36);
  *&v68 = vmuls_lane_f32(*(v7 + 32), *v293.i8, 1) + (*v293.i32 * *(v7 + 28));
  v294 = vaddq_f32(v275, vmulq_n_f32(v67, vmuls_lane_f32(*v286.i32, *&v304, 1)));
  v73 = v304;
  *&v73 = vmuls_lane_f32(*&v73, *&v73, 1);
  v305 = v73;
  *&v73 = *&v71 + v69;
  *v74.f64 = *v72.i32 + *&v68;
  *(&v73 + 1) = *v72.i32 + *&v68;
  *v76.i64 = CI::BitmapSampler::read(*(v7 + 8), *&v73, v74, v71, v68, v275, v72, v70, v75);
  v77.f64[1] = *(&v305 + 1);
  _Q0 = vaddq_f32(v294, vmulq_n_f32(v76, *&v305));
  v323 = _Q0;
  __asm { FMOV            V0.2S, #0.25 }

  *&v79.f64[1] = v314.i64[1];
  *_Q0.f32 = vadd_f32(vmul_f32(*v314.i8, *_Q0.f32), 0xBF000000BF000000);
  *&v79.f64[0] = vrndm_f32(*_Q0.f32);
  v80 = vadd_f32(vsub_f32(*&v79.f64[0], *_Q0.f32), _D13);
  *_Q0.f32 = vsub_f32(*_Q0.f32, *&v79.f64[0]);
  v81 = vmul_f32(v80, 0x3F0000003F000000);
  *v82.i8 = vmul_f32(v80, v81);
  *v83.i8 = vadd_f32(vadd_f32(v81, vsub_f32(*v82.i8, vmul_f32(v80, vmul_f32(v80, vmul_f32(v80, v43))))), v46);
  *&v84 = vsub_f32(_D13, *v83.i8);
  *v85.i8 = vadd_f32(vadd_f32(*&v79.f64[0], vdiv_f32(vadd_f32(vadd_f32(v81, vsub_f32(*v82.i8, vmul_f32(v80, *v82.i8))), v46), *v83.i8)), 0xBF000000BF000000);
  *&v77.f64[0] = vmul_f32(*_Q0.f32, *_Q0.f32);
  *_Q0.f32 = vadd_f32(vadd_f32(*&v79.f64[0], vdiv_f32(vdiv_f32(vmul_f32(*_Q0.f32, *&v77.f64[0]), _D8), *&v84)), _D9);
  v295 = _Q0;
  v306 = v84;
  v276 = v85;
  v287 = v83;
  _Q0.f32[0] = *(v8 + 24) + (vmuls_lane_f32(*(v8 + 20), *v85.i8, 1) + (*v85.i32 * *(v8 + 16)));
  LODWORD(v84) = *(v8 + 36);
  *v77.f64 = vmuls_lane_f32(*v83.i32, *v83.i8, 1);
  v264 = v77;
  *v79.f64 = *&v84 + (vmuls_lane_f32(*(v8 + 32), *v85.i8, 1) + (*v85.i32 * *(v8 + 28)));
  _Q0.i32[1] = LODWORD(v79.f64[0]);
  *v87.i64 = CI::BitmapSampler::read(*(v8 + 8), *_Q0.i64, v79, v77.f64[0], *&v84, v85, v82, v83, v86);
  v88 = v264;
  v265 = vmulq_n_f32(v87, *v264.f64);
  v87.f32[0] = *(v8 + 24) + (vmuls_lane_f32(*(v8 + 20), *v276.i8, 1) + (v295.f32[0] * *(v8 + 16)));
  LODWORD(v89) = *(v8 + 36);
  HIDWORD(v90) = DWORD1(v306);
  *&v90 = vmuls_lane_f32(*&v306, *v287.i8, 1);
  v258 = *&v90;
  *v88.f64 = *&v89 + (vmuls_lane_f32(*(v8 + 32), *v276.i8, 1) + (v295.f32[0] * *(v8 + 28)));
  v87.i32[1] = LODWORD(v88.f64[0]);
  *v93.i64 = CI::BitmapSampler::read(*(v8 + 8), *v87.i64, v88, v90, v89, v287, v276, v91, v92);
  v94 = v276;
  v95 = vmuls_lane_f32(*(v8 + 20), *v295.f32, 1) + (*v276.i32 * *(v8 + 16));
  LODWORD(v96) = *(v8 + 24);
  v97.i32[0] = *(v8 + 36);
  *&v98 = vmuls_lane_f32(*(v8 + 32), *v295.f32, 1) + (*v276.i32 * *(v8 + 28));
  v277 = vaddq_f32(v265, vmulq_n_f32(v93, v258));
  v93.f32[0] = *&v96 + v95;
  *v99.f64 = *v97.i32 + *&v98;
  v93.f32[1] = *v97.i32 + *&v98;
  *v100.i64 = CI::BitmapSampler::read(*(v8 + 8), *v93.i64, v99, v96, v98, v287, v97, v277, v94);
  HIDWORD(v101) = v295.i32[1];
  v102 = vmuls_lane_f32(*(v8 + 20), *v295.f32, 1) + (v295.f32[0] * *(v8 + 16));
  v103 = v295;
  LODWORD(v104) = *(v8 + 24);
  v105.i32[0] = *(v8 + 36);
  *&v101 = vmuls_lane_f32(*(v8 + 32), *v295.f32, 1) + (v295.f32[0] * *(v8 + 28));
  v296 = vaddq_f32(v277, vmulq_n_f32(v100, vmuls_lane_f32(*v287.i32, *&v306, 1)));
  v106 = v306;
  *&v106 = vmuls_lane_f32(*&v106, *&v106, 1);
  v307 = v106;
  *&v106 = *&v104 + v102;
  *v107.f64 = *v105.i32 + *&v101;
  *(&v106 + 1) = *v105.i32 + *&v101;
  *v109.i64 = CI::BitmapSampler::read(*(v8 + 8), *&v106, v107, v104, v101, v277, v105, v103, v108);
  v110.f64[1] = *(&v307 + 1);
  v111 = vaddq_f32(v296, vmulq_n_f32(v109, *&v307));
  v322 = v111;
  *&v112.f64[1] = v314.i64[1];
  *v111.f32 = vadd_f32(vmul_f32(*v314.i8, 0x3E0000003E000000), 0xBF000000BF000000);
  *&v112.f64[0] = vrndm_f32(*v111.f32);
  v113 = vadd_f32(vsub_f32(*&v112.f64[0], *v111.f32), _D13);
  *v111.f32 = vsub_f32(*v111.f32, *&v112.f64[0]);
  v114 = vmul_f32(v113, 0x3F0000003F000000);
  *v115.i8 = vmul_f32(v113, v114);
  *v116.i8 = vadd_f32(vadd_f32(v114, vsub_f32(*v115.i8, vmul_f32(v113, vmul_f32(v113, vmul_f32(v113, v43))))), v46);
  *&v117 = vsub_f32(_D13, *v116.i8);
  *v118.i8 = vadd_f32(vadd_f32(*&v112.f64[0], vdiv_f32(vadd_f32(vadd_f32(v114, vsub_f32(*v115.i8, vmul_f32(v113, *v115.i8))), v46), *v116.i8)), 0xBF000000BF000000);
  *&v110.f64[0] = vmul_f32(*v111.f32, *v111.f32);
  *v111.f32 = vadd_f32(vadd_f32(*&v112.f64[0], vdiv_f32(vdiv_f32(vmul_f32(*v111.f32, *&v110.f64[0]), _D8), *&v117)), _D9);
  v297 = v111;
  v308 = v117;
  v278 = v118;
  v288 = v116;
  v111.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v118.i8, 1) + (*v118.i32 * *(v9 + 16)));
  LODWORD(v117) = *(v9 + 36);
  *v110.f64 = vmuls_lane_f32(*v116.i32, *v116.i8, 1);
  v266 = v110;
  *v112.f64 = *&v117 + (vmuls_lane_f32(*(v9 + 32), *v118.i8, 1) + (*v118.i32 * *(v9 + 28)));
  v111.i32[1] = LODWORD(v112.f64[0]);
  *v120.i64 = CI::BitmapSampler::read(*(v9 + 8), *v111.i64, v112, v110.f64[0], *&v117, v118, v115, v116, v119);
  v121 = v266;
  v267 = vmulq_n_f32(v120, *v266.f64);
  v120.f32[0] = *(v9 + 24) + (vmuls_lane_f32(*(v9 + 20), *v278.i8, 1) + (v297.f32[0] * *(v9 + 16)));
  LODWORD(v122) = *(v9 + 36);
  HIDWORD(v123) = DWORD1(v308);
  *&v123 = vmuls_lane_f32(*&v308, *v288.i8, 1);
  v259 = *&v123;
  *v121.f64 = *&v122 + (vmuls_lane_f32(*(v9 + 32), *v278.i8, 1) + (v297.f32[0] * *(v9 + 28)));
  v120.i32[1] = LODWORD(v121.f64[0]);
  *v126.i64 = CI::BitmapSampler::read(*(v9 + 8), *v120.i64, v121, v123, v122, v288, v278, v124, v125);
  v127 = v278;
  v128 = vmuls_lane_f32(*(v9 + 20), *v297.f32, 1) + (*v278.i32 * *(v9 + 16));
  LODWORD(v129) = *(v9 + 24);
  v130.i32[0] = *(v9 + 36);
  *&v131 = vmuls_lane_f32(*(v9 + 32), *v297.f32, 1) + (*v278.i32 * *(v9 + 28));
  v279 = vaddq_f32(v267, vmulq_n_f32(v126, v259));
  v126.f32[0] = *&v129 + v128;
  *v132.f64 = *v130.i32 + *&v131;
  v126.f32[1] = *v130.i32 + *&v131;
  *v133.i64 = CI::BitmapSampler::read(*(v9 + 8), *v126.i64, v132, v129, v131, v288, v130, v279, v127);
  HIDWORD(v134) = v297.i32[1];
  v135 = vmuls_lane_f32(*(v9 + 20), *v297.f32, 1) + (v297.f32[0] * *(v9 + 16));
  v136 = v297;
  LODWORD(v137) = *(v9 + 24);
  v138.i32[0] = *(v9 + 36);
  *&v134 = vmuls_lane_f32(*(v9 + 32), *v297.f32, 1) + (v297.f32[0] * *(v9 + 28));
  v298 = vaddq_f32(v279, vmulq_n_f32(v133, vmuls_lane_f32(*v288.i32, *&v308, 1)));
  v139 = v308;
  *&v139 = vmuls_lane_f32(*&v139, *&v139, 1);
  v309 = v139;
  *&v139 = *&v137 + v135;
  *v140.f64 = *v138.i32 + *&v134;
  *(&v139 + 1) = *v138.i32 + *&v134;
  *v142.i64 = CI::BitmapSampler::read(*(v9 + 8), *&v139, v140, v137, v134, v279, v138, v136, v141);
  v143.f64[1] = *(&v309 + 1);
  v144 = vaddq_f32(v298, vmulq_n_f32(v142, *&v309));
  v321 = v144;
  *&v145.f64[1] = v314.i64[1];
  *v144.f32 = vadd_f32(vmul_f32(*v314.i8, vdup_n_s32(0x3D800000u)), 0xBF000000BF000000);
  *&v145.f64[0] = vrndm_f32(*v144.f32);
  v146 = vadd_f32(vsub_f32(*&v145.f64[0], *v144.f32), _D13);
  *v144.f32 = vsub_f32(*v144.f32, *&v145.f64[0]);
  v147 = vmul_f32(v146, 0x3F0000003F000000);
  *v148.i8 = vmul_f32(v146, v147);
  *v149.i8 = vadd_f32(vadd_f32(v147, vsub_f32(*v148.i8, vmul_f32(v146, vmul_f32(v146, vmul_f32(v146, v43))))), v46);
  *&v150 = vsub_f32(_D13, *v149.i8);
  *v151.i8 = vadd_f32(vadd_f32(*&v145.f64[0], vdiv_f32(vadd_f32(vadd_f32(v147, vsub_f32(*v148.i8, vmul_f32(v146, *v148.i8))), v46), *v149.i8)), 0xBF000000BF000000);
  *&v143.f64[0] = vmul_f32(*v144.f32, *v144.f32);
  *v144.f32 = vadd_f32(vadd_f32(*&v145.f64[0], vdiv_f32(vdiv_f32(vmul_f32(*v144.f32, *&v143.f64[0]), _D8), *&v150)), _D9);
  v299 = v144;
  v310 = v150;
  v280 = v151;
  v289 = v149;
  v144.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v151.i8, 1) + (*v151.i32 * *(v10 + 16)));
  LODWORD(v150) = *(v10 + 36);
  *v143.f64 = vmuls_lane_f32(*v149.i32, *v149.i8, 1);
  v268 = v143;
  *v145.f64 = *&v150 + (vmuls_lane_f32(*(v10 + 32), *v151.i8, 1) + (*v151.i32 * *(v10 + 28)));
  v144.i32[1] = LODWORD(v145.f64[0]);
  *v153.i64 = CI::BitmapSampler::read(*(v10 + 8), *v144.i64, v145, v143.f64[0], *&v150, v151, v148, v149, v152);
  v154 = v268;
  v269 = vmulq_n_f32(v153, *v268.f64);
  v153.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v280.i8, 1) + (v299.f32[0] * *(v10 + 16)));
  LODWORD(v155) = *(v10 + 36);
  HIDWORD(v156) = DWORD1(v310);
  *&v156 = vmuls_lane_f32(*&v310, *v289.i8, 1);
  v260 = *&v156;
  *v154.f64 = *&v155 + (vmuls_lane_f32(*(v10 + 32), *v280.i8, 1) + (v299.f32[0] * *(v10 + 28)));
  v153.i32[1] = LODWORD(v154.f64[0]);
  *v159.i64 = CI::BitmapSampler::read(*(v10 + 8), *v153.i64, v154, v156, v155, v289, v280, v157, v158);
  v160 = v280;
  v161 = vmuls_lane_f32(*(v10 + 20), *v299.f32, 1) + (*v280.i32 * *(v10 + 16));
  LODWORD(v162) = *(v10 + 24);
  v163.i32[0] = *(v10 + 36);
  *&v164 = vmuls_lane_f32(*(v10 + 32), *v299.f32, 1) + (*v280.i32 * *(v10 + 28));
  v281 = vaddq_f32(v269, vmulq_n_f32(v159, v260));
  v159.f32[0] = *&v162 + v161;
  *v165.f64 = *v163.i32 + *&v164;
  v159.f32[1] = *v163.i32 + *&v164;
  *v166.i64 = CI::BitmapSampler::read(*(v10 + 8), *v159.i64, v165, v162, v164, v289, v163, v281, v160);
  HIDWORD(v167) = v299.i32[1];
  v168 = vmuls_lane_f32(*(v10 + 20), *v299.f32, 1) + (v299.f32[0] * *(v10 + 16));
  v169 = v299;
  LODWORD(v170) = *(v10 + 24);
  v171.i32[0] = *(v10 + 36);
  *&v167 = vmuls_lane_f32(*(v10 + 32), *v299.f32, 1) + (v299.f32[0] * *(v10 + 28));
  v300 = vaddq_f32(v281, vmulq_n_f32(v166, vmuls_lane_f32(*v289.i32, *&v310, 1)));
  v172 = v310;
  *&v172 = vmuls_lane_f32(*&v172, *&v172, 1);
  v311 = v172;
  *&v172 = *&v170 + v168;
  *v173.f64 = *v171.i32 + *&v167;
  *(&v172 + 1) = *v171.i32 + *&v167;
  *v175.i64 = CI::BitmapSampler::read(*(v10 + 8), *&v172, v173, v170, v167, v281, v171, v169, v174);
  v176.f64[1] = *(&v311 + 1);
  v177 = vaddq_f32(v300, vmulq_n_f32(v175, *&v311));
  v320 = v177;
  *&v178.f64[1] = v314.i64[1];
  *v177.f32 = vadd_f32(vmul_f32(*v314.i8, 0x3D0000003D000000), 0xBF000000BF000000);
  *&v178.f64[0] = vrndm_f32(*v177.f32);
  v179 = vadd_f32(vsub_f32(*&v178.f64[0], *v177.f32), _D13);
  *v177.f32 = vsub_f32(*v177.f32, *&v178.f64[0]);
  v180 = vmul_f32(v179, 0x3F0000003F000000);
  *v181.i8 = vmul_f32(v179, v180);
  *v182.i8 = vadd_f32(vadd_f32(v180, vsub_f32(*v181.i8, vmul_f32(v179, vmul_f32(v179, vmul_f32(v179, v43))))), v46);
  v183 = vsub_f32(_D13, *v182.i8);
  *v184.i8 = vadd_f32(vadd_f32(*&v178.f64[0], vdiv_f32(vadd_f32(vadd_f32(v180, vsub_f32(*v181.i8, vmul_f32(v179, *v181.i8))), v46), *v182.i8)), 0xBF000000BF000000);
  *&v176.f64[0] = vmul_f32(*v177.f32, *v177.f32);
  *v177.f32 = vadd_f32(vadd_f32(*&v178.f64[0], vdiv_f32(vdiv_f32(vmul_f32(*v177.f32, *&v176.f64[0]), _D8), v183)), _D9);
  v301 = v177;
  *&v311 = v183;
  v282 = v184;
  v290 = v182;
  v177.f32[0] = *(v11 + 24) + (vmuls_lane_f32(*(v11 + 20), *v184.i8, 1) + (*v184.i32 * *(v11 + 16)));
  v183.i32[0] = *(v11 + 36);
  *v176.f64 = vmuls_lane_f32(*v182.i32, *v182.i8, 1);
  v270 = v176;
  *v178.f64 = v183.f32[0] + (vmuls_lane_f32(*(v11 + 32), *v184.i8, 1) + (*v184.i32 * *(v11 + 28)));
  v177.i32[1] = LODWORD(v178.f64[0]);
  *v186.i64 = CI::BitmapSampler::read(*(v11 + 8), *v177.i64, v178, v176.f64[0], *&v183, v184, v181, v182, v185);
  v187 = v270;
  v271 = vmulq_n_f32(v186, *v270.f64);
  v186.f32[0] = *(v11 + 24) + (vmuls_lane_f32(*(v11 + 20), *v282.i8, 1) + (v301.f32[0] * *(v11 + 16)));
  LODWORD(v188) = *(v11 + 36);
  HIDWORD(v189) = DWORD1(v311);
  *&v189 = vmuls_lane_f32(*&v311, *v290.i8, 1);
  v261 = *&v189;
  *v187.f64 = *&v188 + (vmuls_lane_f32(*(v11 + 32), *v282.i8, 1) + (v301.f32[0] * *(v11 + 28)));
  v186.i32[1] = LODWORD(v187.f64[0]);
  *v192.i64 = CI::BitmapSampler::read(*(v11 + 8), *v186.i64, v187, v189, v188, v290, v282, v190, v191);
  v193 = v282;
  v194 = vmuls_lane_f32(*(v11 + 20), *v301.f32, 1) + (*v282.i32 * *(v11 + 16));
  LODWORD(v195) = *(v11 + 24);
  v196.i32[0] = *(v11 + 36);
  *&v197 = vmuls_lane_f32(*(v11 + 32), *v301.f32, 1) + (*v282.i32 * *(v11 + 28));
  v283 = vaddq_f32(v271, vmulq_n_f32(v192, v261));
  v192.f32[0] = *&v195 + v194;
  *v198.f64 = *v196.i32 + *&v197;
  v192.f32[1] = *v196.i32 + *&v197;
  *v199.i64 = CI::BitmapSampler::read(*(v11 + 8), *v192.i64, v198, v195, v197, v290, v196, v283, v193);
  HIDWORD(v200) = v301.i32[1];
  v201 = vmuls_lane_f32(*(v11 + 20), *v301.f32, 1) + (v301.f32[0] * *(v11 + 16));
  v202 = v301;
  LODWORD(v203) = *(v11 + 24);
  v204.i32[0] = *(v11 + 36);
  *&v200 = vmuls_lane_f32(*(v11 + 32), *v301.f32, 1) + (v301.f32[0] * *(v11 + 28));
  v302 = vaddq_f32(v283, vmulq_n_f32(v199, vmuls_lane_f32(*v290.i32, *&v311, 1)));
  v199.f32[0] = *&v203 + v201;
  *v205.f64 = *v204.i32 + *&v200;
  v199.f32[1] = *v204.i32 + *&v200;
  *v207.i64 = CI::BitmapSampler::read(*(v11 + 8), *v199.i64, v205, v203, v200, v283, v204, v202, v206);
  v208 = vaddq_f32(v302, vmulq_n_f32(v207, vmuls_lane_f32(*&v311, *&v311, 1)));
  v319 = v208;
  *&v209.f64[1] = v314.i64[1];
  *v208.f32 = vadd_f32(vmul_f32(*v314.i8, vdup_n_s32(0x3C800000u)), 0xBF000000BF000000);
  *&v209.f64[0] = vrndm_f32(*v208.f32);
  v210 = vadd_f32(vsub_f32(*&v209.f64[0], *v208.f32), _D13);
  *v208.f32 = vsub_f32(*v208.f32, *&v209.f64[0]);
  v211 = vmul_f32(v210, 0x3F0000003F000000);
  *v212.i8 = vmul_f32(v210, v211);
  *v213.i8 = vadd_f32(vadd_f32(v211, vsub_f32(*v212.i8, vmul_f32(v210, vmul_f32(v210, vmul_f32(v210, v43))))), v46);
  v214 = vsub_f32(_D13, *v213.i8);
  *v215.i8 = vadd_f32(vadd_f32(*&v209.f64[0], vdiv_f32(vadd_f32(vadd_f32(v211, vsub_f32(*v212.i8, vmul_f32(v210, *v212.i8))), v46), *v213.i8)), 0xBF000000BF000000);
  v216 = vmul_f32(*v208.f32, *v208.f32);
  *v208.f32 = vadd_f32(vadd_f32(*&v209.f64[0], vdiv_f32(vdiv_f32(vmul_f32(*v208.f32, v216), _D8), v214)), _D9);
  v312 = v208;
  v315 = v214;
  v208.f32[0] = vmuls_lane_f32(*v213.i32, *v213.i8, 1);
  v284 = v208;
  v291 = v215;
  v303 = v213;
  v216.i32[0] = *(v12 + 28);
  v208.f32[0] = *(v12 + 24) + (vmuls_lane_f32(*(v12 + 20), *v215.i8, 1) + (*v215.i32 * *(v12 + 16)));
  v214.i32[0] = *(v12 + 36);
  *v209.f64 = v214.f32[0] + (vmuls_lane_f32(*(v12 + 32), *v215.i8, 1) + (*v215.i32 * v216.f32[0]));
  v208.i32[1] = LODWORD(v209.f64[0]);
  *v218.i64 = CI::BitmapSampler::read(*(v12 + 8), *v208.i64, v209, *&v216, *&v214, v215, v212, v213, v217);
  v219 = v284;
  v285 = vmulq_n_f32(v218, v284.f32[0]);
  v218.f32[0] = *(v12 + 24) + (vmuls_lane_f32(*(v12 + 20), *v291.i8, 1) + (v312.f32[0] * *(v12 + 16)));
  LODWORD(v220) = *(v12 + 36);
  HIDWORD(v221) = v315.i32[1];
  *&v221 = vmuls_lane_f32(v315.f32[0], *v303.i8, 1);
  v271.i32[0] = LODWORD(v221);
  *v219.f64 = *&v220 + (vmuls_lane_f32(*(v12 + 32), *v291.i8, 1) + (v312.f32[0] * *(v12 + 28)));
  v218.i32[1] = LODWORD(v219.f64[0]);
  *v224.i64 = CI::BitmapSampler::read(*(v12 + 8), *v218.i64, v219, v221, v220, v303, v291, v222, v223);
  v225 = v291;
  v226 = vmuls_lane_f32(*(v12 + 20), *v312.f32, 1) + (*v291.i32 * *(v12 + 16));
  LODWORD(v227) = *(v12 + 24);
  v228.i32[0] = *(v12 + 36);
  *&v229 = vmuls_lane_f32(*(v12 + 32), *v312.f32, 1) + (*v291.i32 * *(v12 + 28));
  v292 = vaddq_f32(v285, vmulq_n_f32(v224, v271.f32[0]));
  v224.f32[0] = *&v227 + v226;
  *v230.f64 = *v228.i32 + *&v229;
  v224.f32[1] = *v228.i32 + *&v229;
  *v231.i64 = CI::BitmapSampler::read(*(v12 + 8), *v224.i64, v230, v227, v229, v303, v228, v292, v225);
  HIDWORD(v232) = v312.i32[1];
  v233 = vmuls_lane_f32(*(v12 + 20), *v312.f32, 1) + (v312.f32[0] * *(v12 + 16));
  v234 = v312;
  LODWORD(v235) = *(v12 + 24);
  v236.i32[0] = *(v12 + 36);
  *&v232 = vmuls_lane_f32(*(v12 + 32), *v312.f32, 1) + (v312.f32[0] * *(v12 + 28));
  v313 = vaddq_f32(v292, vmulq_n_f32(v231, vmuls_lane_f32(*v303.i32, v315, 1)));
  v231.f32[0] = *&v235 + v233;
  *v237.f64 = *v236.i32 + *&v232;
  v231.f32[1] = *v236.i32 + *&v232;
  *v239.i64 = CI::BitmapSampler::read(*(v12 + 8), *v231.i64, v237, v235, v232, v292, v236, v234, v238);
  v317 = v272;
  v318 = vaddq_f32(v313, vmulq_n_f32(v239, vmuls_lane_f32(v315.f32[0], v315, 1)));
  v240 = &v317;
  v241 = &v323;
  if (v31 <= 0.5)
  {
    v241 = &v317;
  }

  v242 = *v241;
  v316 = v323;
  v317 = v242;
  v243 = &v316;
  v244 = &v322;
  if (v31 <= 0.5)
  {
    v245 = &v316;
  }

  else
  {
    v245 = &v322;
  }

  if (v31 <= 1.5)
  {
    v244 = &v317;
  }

  v246 = *v244;
  v316 = *v245;
  v317 = v246;
  v247 = &v321;
  if (v31 <= 1.5)
  {
    v248 = &v316;
  }

  else
  {
    v248 = &v321;
  }

  if (v31 <= 2.5)
  {
    v247 = &v317;
  }

  v249 = *v247;
  v316 = *v248;
  v317 = v249;
  v250 = &v320;
  if (v31 <= 2.5)
  {
    v251 = &v316;
  }

  else
  {
    v251 = &v320;
  }

  if (v31 <= 3.5)
  {
    v250 = &v317;
  }

  v252 = *v250;
  v316 = *v251;
  v317 = v252;
  v253 = &v319;
  if (v31 <= 3.5)
  {
    v254 = &v316;
  }

  else
  {
    v254 = &v319;
  }

  if (v31 <= 4.5)
  {
    v253 = &v317;
  }

  v255 = *v253;
  v316 = *v254;
  v317 = v255;
  if (v31 > 4.5)
  {
    v243 = &v318;
  }

  if (v31 > 5.5)
  {
    v240 = &v318;
  }

  *&result = vmlaq_n_f32(vmulq_n_f32(*v240, 1.0 - (v273 - v31)), *v243, v273 - v31).u64[0];
  return result;
}

double CI::sw_median3x3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v5.f64[0] = *CI::getDC(a1);
  v111 = v5;
  v6 = vadd_f32(*&v5.f64[0], 1065353216);
  LODWORD(v7) = *(v4 + 24);
  v8.i32[0] = *(v4 + 36);
  *v9.i32 = vmuls_lane_f32(*(v4 + 32), v6, 1);
  *&v10 = *v9.i32 + (v6.f32[0] * *(v4 + 28));
  v6.f32[0] = *&v7 + (vmuls_lane_f32(*(v4 + 20), v6, 1) + (v6.f32[0] * *(v4 + 16)));
  *v5.f64 = *v8.i32 + *&v10;
  v6.f32[1] = *v8.i32 + *&v10;
  *v13.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v6, v5, v7, v10, v9, v8, v11, v12);
  v110 = v13;
  __asm { FMOV            V8.2S, #1.0 }

  *v13.f32 = vadd_f32(*v111.i8, *&_D8);
  LODWORD(v19) = *(v4 + 24);
  v20.i32[0] = *(v4 + 36);
  *v21.i32 = vmuls_lane_f32(*(v4 + 32), *v13.f32, 1);
  *&v22 = *v21.i32 + (v13.f32[0] * *(v4 + 28));
  v13.f32[0] = *&v19 + (vmuls_lane_f32(*(v4 + 20), *v13.f32, 1) + (v13.f32[0] * *(v4 + 16)));
  *v23.f64 = *v20.i32 + *&v22;
  v13.f32[1] = *v20.i32 + *&v22;
  *v26.i64 = CI::BitmapSampler::read(*(v4 + 8), *v13.i64, v23, v19, v22, v21, v20, v24, v25);
  v109 = v26;
  v27 = v111;
  *v26.f32 = vadd_f32(*v111.i8, 0x3F80000000000000);
  LODWORD(v28) = *(v4 + 24);
  v29.i32[0] = *(v4 + 36);
  *v30.i32 = vmuls_lane_f32(*(v4 + 32), *v26.f32, 1);
  *&v31 = *v30.i32 + (v26.f32[0] * *(v4 + 28));
  v26.f32[0] = *&v28 + (vmuls_lane_f32(*(v4 + 20), *v26.f32, 1) + (v26.f32[0] * *(v4 + 16)));
  *v27.f64 = *v29.i32 + *&v31;
  v26.f32[1] = *v29.i32 + *&v31;
  *v34.i64 = CI::BitmapSampler::read(*(v4 + 8), *v26.i64, v27, v28, v31, v30, v29, v32, v33);
  v108 = v34;
  __asm { FMOV            V9.2S, #-1.0 }

  v36 = v111;
  *v34.f32 = vadd_f32(*v111.i8, COERCE_FLOAT32X2_T(-_D9));
  LODWORD(v37) = *(v4 + 24);
  v38.i32[0] = *(v4 + 36);
  *v39.i32 = vmuls_lane_f32(*(v4 + 32), *v34.f32, 1);
  *&v40 = *v39.i32 + (v34.f32[0] * *(v4 + 28));
  v34.f32[0] = *&v37 + (vmuls_lane_f32(*(v4 + 20), *v34.f32, 1) + (v34.f32[0] * *(v4 + 16)));
  *v36.f64 = *v38.i32 + *&v40;
  v34.f32[1] = *v38.i32 + *&v40;
  *v43.i64 = CI::BitmapSampler::read(*(v4 + 8), *v34.i64, v36, v37, v40, v39, v38, v41, v42);
  v107 = v43;
  v44 = v111;
  *v43.f32 = vadd_f32(*v111.i8, 3212836864);
  LODWORD(v45) = *(v4 + 24);
  v46.i32[0] = *(v4 + 36);
  *v47.i32 = vmuls_lane_f32(*(v4 + 32), *v43.f32, 1);
  *&v48 = *v47.i32 + (v43.f32[0] * *(v4 + 28));
  v43.f32[0] = *&v45 + (vmuls_lane_f32(*(v4 + 20), *v43.f32, 1) + (v43.f32[0] * *(v4 + 16)));
  *v44.f64 = *v46.i32 + *&v48;
  v43.f32[1] = *v46.i32 + *&v48;
  *v51.i64 = CI::BitmapSampler::read(*(v4 + 8), *v43.i64, v44, v45, v48, v47, v46, v49, v50);
  v106 = v51;
  *v51.f32 = vadd_f32(*v111.i8, *&_D9);
  LODWORD(v52) = *(v4 + 24);
  v53.i32[0] = *(v4 + 36);
  *v54.i32 = vmuls_lane_f32(*(v4 + 32), *v51.f32, 1);
  *&v55 = *v54.i32 + (v51.f32[0] * *(v4 + 28));
  v51.f32[0] = *&v52 + (vmuls_lane_f32(*(v4 + 20), *v51.f32, 1) + (v51.f32[0] * *(v4 + 16)));
  *v56.f64 = *v53.i32 + *&v55;
  v51.f32[1] = *v53.i32 + *&v55;
  *v59.i64 = CI::BitmapSampler::read(*(v4 + 8), *v51.i64, v56, v52, v55, v54, v53, v57, v58);
  v105 = v59;
  v60 = v111;
  *v59.f32 = vadd_f32(*v111.i8, 0xBF80000000000000);
  LODWORD(v61) = *(v4 + 24);
  v62.i32[0] = *(v4 + 36);
  *v63.i32 = vmuls_lane_f32(*(v4 + 32), *v59.f32, 1);
  *&v64 = *v63.i32 + (v59.f32[0] * *(v4 + 28));
  v59.f32[0] = *&v61 + (vmuls_lane_f32(*(v4 + 20), *v59.f32, 1) + (v59.f32[0] * *(v4 + 16)));
  *v60.f64 = *v62.i32 + *&v64;
  v59.f32[1] = *v62.i32 + *&v64;
  *v67.i64 = CI::BitmapSampler::read(*(v4 + 8), *v59.i64, v60, v61, v64, v63, v62, v65, v66);
  v104 = v67;
  v68 = v111;
  *v67.f32 = vadd_f32(*v111.i8, COERCE_FLOAT32X2_T(-_D8));
  LODWORD(v69) = *(v4 + 24);
  v70.i32[0] = *(v4 + 36);
  *v71.i32 = vmuls_lane_f32(*(v4 + 32), *v67.f32, 1);
  *&v72 = *v71.i32 + (v67.f32[0] * *(v4 + 28));
  v67.f32[0] = *&v69 + (vmuls_lane_f32(*(v4 + 20), *v67.f32, 1) + (v67.f32[0] * *(v4 + 16)));
  *v68.f64 = *v70.i32 + *&v72;
  v67.f32[1] = *v70.i32 + *&v72;
  *v75.i64 = CI::BitmapSampler::read(*(v4 + 8), *v67.i64, v68, v69, v72, v71, v70, v73, v74);
  v103 = v75;
  HIDWORD(v76) = v111.i32[1];
  v77.i32[0] = *(v4 + 36);
  *&v78 = vmuls_lane_f32(*(v4 + 32), *v111.i8, 1);
  *&v76 = *&v78 + (*v111.i32 * *(v4 + 28));
  v75.f32[0] = *(v4 + 24) + (vmuls_lane_f32(*(v4 + 20), *v111.i8, 1) + (*v111.i32 * *(v4 + 16)));
  *v79.f64 = *v77.i32 + *&v76;
  v75.f32[1] = *v77.i32 + *&v76;
  *v82.i64 = CI::BitmapSampler::read(*(v4 + 8), *v75.i64, v79, v76, v78, v77, v111, v80, v81);
  v83 = vminnmq_f32(v109, v108);
  v84 = vmaxnmq_f32(v109, v108);
  v85 = vminnmq_f32(v106, v105);
  v86 = vmaxnmq_f32(v106, v105);
  v87 = vminnmq_f32(v103, v82);
  v88 = vmaxnmq_f32(v103, v82);
  v89 = vminnmq_f32(v110, v83);
  v90 = vmaxnmq_f32(v110, v83);
  v91 = vminnmq_f32(v107, v85);
  v92 = vmaxnmq_f32(v107, v85);
  v93 = vminnmq_f32(v104, v87);
  v94 = vmaxnmq_f32(v104, v87);
  v95 = vminnmq_f32(v90, v84);
  v96 = vmaxnmq_f32(v90, v84);
  v97 = vminnmq_f32(v92, v86);
  v98 = vmaxnmq_f32(v92, v86);
  v99 = vminnmq_f32(v94, v88);
  v100 = vminnmq_f32(v96, vminnmq_f32(v98, vmaxnmq_f32(v94, v88)));
  v101 = vminnmq_f32(vmaxnmq_f32(v97, v99), vmaxnmq_f32(v95, vminnmq_f32(v97, v99)));
  *&result = vminnmq_f32(vmaxnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v89, v91), v93), vminnmq_f32(v101, v100)), vmaxnmq_f32(v101, v100)).u64[0];
  return result;
}

void OUTLINED_FUNCTION_1_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

double CI::sw_mesh1(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v24 = *v7;
  v25 = *(a2 + (*(v3 + 56) << 6));
  v26 = *(a2 + (*(v3 + 80) << 6));
  v8 = *(a2 + (*(v3 + 32) << 6)) * 0.5;
  DC = CI::getDC(a1);
  v10 = vextq_s8(v24, v24, 8uLL).u64[0];
  v11 = vsub_f32(*DC, *v24.i8);
  v12 = vsub_f32(v10, *v24.i8);
  v13 = fabsf(((-v11.f32[1] * v12.f32[0]) + (v11.f32[0] * v12.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v12, v12))), 0.01));
  v14 = vmuls_lane_f32(v12.f32[1], v11, 1) + (v11.f32[0] * v12.f32[0]);
  v15 = sqrtf(vaddv_f32(vmul_f32(v11, v11)));
  if (v14 >= 0.0)
  {
    v15 = v13;
  }

  v16 = vsub_f32(*DC, v10);
  v17 = COERCE_FLOAT(vmul_f32(v12, v16).i32[1]) + (v16.f32[0] * v12.f32[0]);
  v18 = sqrtf(vaddv_f32(vmul_f32(v16, v16)));
  if (v17 < 0.0)
  {
    v18 = v15;
  }

  v19 = 1.0;
  if ((v8 - v18) <= 1.0)
  {
    v19 = v8 - v18;
  }

  v20 = 0.0;
  if ((v8 - v18) >= 0.0)
  {
    v20 = v19;
  }

  v21 = (v20 * -2.0 + 3.0) * v20 * v20;
  v22 = v18 - (v8 + -1.0);
  *&result = vmulq_n_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v22 < 0.0)), 0x1FuLL)), v25, vandq_s8(vmulq_n_f32(v25, v21), vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v18 < v8)), 0x1FuLL)))), v26).u64[0];
  return result;
}

double CI::sw_mesh2(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v38 = *v7;
  v39 = *v11;
  v40 = *(a2 + (*(v3 + 80) << 6));
  v41 = *(a2 + (*(v3 + 104) << 6));
  v12 = *(a2 + (*(v3 + 56) << 6)) * 0.5;
  v13 = *CI::getDC(a1);
  v14 = vextq_s8(v38, v38, 8uLL).u64[0];
  v15 = vsub_f32(v13, *v38.i8);
  v16 = vsub_f32(v14, *v38.i8);
  v17 = fabsf(((-v15.f32[1] * v16.f32[0]) + (v15.f32[0] * v16.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v16, v16))), 0.01));
  v18 = vmuls_lane_f32(v16.f32[1], v15, 1) + (v15.f32[0] * v16.f32[0]);
  v19 = sqrtf(vaddv_f32(vmul_f32(v15, v15)));
  if (v18 >= 0.0)
  {
    v19 = v17;
  }

  v20 = vsub_f32(v13, v14);
  v21 = COERCE_FLOAT(vmul_f32(v16, v20).i32[1]) + (v20.f32[0] * v16.f32[0]);
  v22 = sqrtf(vaddv_f32(vmul_f32(v20, v20)));
  if (v21 < 0.0)
  {
    v22 = v19;
  }

  v23 = vextq_s8(v39, v39, 8uLL).u64[0];
  v24 = vsub_f32(v13, *v39.i8);
  v25 = vsub_f32(v23, *v39.i8);
  v26 = fabsf(((-v24.f32[1] * v25.f32[0]) + (v24.f32[0] * v25.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v25, v25))), 0.01));
  v27 = vmuls_lane_f32(v25.f32[1], v24, 1) + (v24.f32[0] * v25.f32[0]);
  v28 = sqrtf(vaddv_f32(vmul_f32(v24, v24)));
  if (v27 >= 0.0)
  {
    v28 = v26;
  }

  v29 = vsub_f32(v13, v23);
  v30 = COERCE_FLOAT(vmul_f32(v25, v29).i32[1]) + (v29.f32[0] * v25.f32[0]);
  v31 = sqrtf(vaddv_f32(vmul_f32(v29, v29)));
  if (v30 < 0.0)
  {
    v31 = v28;
  }

  v32 = fminf(v22, v31);
  v33 = 1.0;
  if ((v12 - v32) <= 1.0)
  {
    v33 = v12 - v32;
  }

  v34 = 0.0;
  if ((v12 - v32) >= 0.0)
  {
    v34 = v33;
  }

  v35 = (v34 * -2.0 + 3.0) * v34 * v34;
  v36 = v32 - (v12 + -1.0);
  *&result = vmulq_n_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v36 < 0.0)), 0x1FuLL)), v40, vandq_s8(vmulq_n_f32(v40, v35), vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v32 < v12)), 0x1FuLL)))), v41).u64[0];
  return result;
}

double CI::sw_mesh4(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v66 = *v7;
  v67 = *v11;
  v68 = *v15;
  v69 = *v19;
  v70 = *(a2 + (*(v3 + 128) << 6));
  v71 = *(a2 + (*(v3 + 152) << 6));
  v20 = *(a2 + (*(v3 + 104) << 6)) * 0.5;
  v21 = *CI::getDC(a1);
  v22 = vextq_s8(v66, v66, 8uLL).u64[0];
  v23 = vsub_f32(v21, *v66.i8);
  v24 = vsub_f32(v22, *v66.i8);
  v25 = fabsf(((-v23.f32[1] * v24.f32[0]) + (v23.f32[0] * v24.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v24, v24))), 0.01));
  v26 = vmuls_lane_f32(v24.f32[1], v23, 1) + (v23.f32[0] * v24.f32[0]);
  v27 = sqrtf(vaddv_f32(vmul_f32(v23, v23)));
  if (v26 >= 0.0)
  {
    v27 = v25;
  }

  v28 = vsub_f32(v21, v22);
  v29 = COERCE_FLOAT(vmul_f32(v24, v28).i32[1]) + (v28.f32[0] * v24.f32[0]);
  v30 = sqrtf(vaddv_f32(vmul_f32(v28, v28)));
  if (v29 < 0.0)
  {
    v30 = v27;
  }

  v31 = vextq_s8(v67, v67, 8uLL).u64[0];
  v32 = vsub_f32(v21, *v67.i8);
  v33 = vsub_f32(v31, *v67.i8);
  v34 = fabsf(((-v32.f32[1] * v33.f32[0]) + (v32.f32[0] * v33.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v33, v33))), 0.01));
  v35 = vmuls_lane_f32(v33.f32[1], v32, 1) + (v32.f32[0] * v33.f32[0]);
  v36 = sqrtf(vaddv_f32(vmul_f32(v32, v32)));
  if (v35 >= 0.0)
  {
    v36 = v34;
  }

  v37 = vsub_f32(v21, v31);
  v38 = COERCE_FLOAT(vmul_f32(v33, v37).i32[1]) + (v37.f32[0] * v33.f32[0]);
  v39 = sqrtf(vaddv_f32(vmul_f32(v37, v37)));
  if (v38 < 0.0)
  {
    v39 = v36;
  }

  v40 = fminf(v30, v39);
  v41 = vextq_s8(v68, v68, 8uLL).u64[0];
  v42 = vsub_f32(v21, *v68.i8);
  v43 = vsub_f32(v41, *v68.i8);
  v44 = fabsf(((-v42.f32[1] * v43.f32[0]) + (v42.f32[0] * v43.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v43, v43))), 0.01));
  v45 = vmuls_lane_f32(v43.f32[1], v42, 1) + (v42.f32[0] * v43.f32[0]);
  v46 = sqrtf(vaddv_f32(vmul_f32(v42, v42)));
  if (v45 >= 0.0)
  {
    v46 = v44;
  }

  v47 = vsub_f32(v21, v41);
  v48 = COERCE_FLOAT(vmul_f32(v43, v47).i32[1]) + (v47.f32[0] * v43.f32[0]);
  v49 = sqrtf(vaddv_f32(vmul_f32(v47, v47)));
  if (v48 < 0.0)
  {
    v49 = v46;
  }

  v50 = fminf(v40, v49);
  v51 = vextq_s8(v69, v69, 8uLL).u64[0];
  v52 = vsub_f32(v21, *v69.i8);
  v53 = vsub_f32(v51, *v69.i8);
  v54 = fabsf(((-v52.f32[1] * v53.f32[0]) + (v52.f32[0] * v53.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v53, v53))), 0.01));
  v55 = vmuls_lane_f32(v53.f32[1], v52, 1) + (v52.f32[0] * v53.f32[0]);
  v56 = sqrtf(vaddv_f32(vmul_f32(v52, v52)));
  if (v55 < 0.0)
  {
    v54 = v56;
  }

  v57 = vsub_f32(v21, v51);
  v58 = COERCE_FLOAT(vmul_f32(v53, v57).i32[1]) + (v57.f32[0] * v53.f32[0]);
  v59 = sqrtf(vaddv_f32(vmul_f32(v57, v57)));
  if (v58 < 0.0)
  {
    v59 = v54;
  }

  v60 = fminf(v50, v59);
  v61 = 1.0;
  if ((v20 - v60) <= 1.0)
  {
    v61 = v20 - v60;
  }

  v62 = 0.0;
  if ((v20 - v60) >= 0.0)
  {
    v62 = v61;
  }

  v63 = (v62 * -2.0 + 3.0) * v62 * v62;
  v64 = v60 - (v20 + -1.0);
  *&result = vmulq_n_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v64 < 0.0)), 0x1FuLL)), v70, vandq_s8(vmulq_n_f32(v70, v63), vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v60 < v20)), 0x1FuLL)))), v71).u64[0];
  return result;
}

double CI::sw_mesh8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v6 = v5;
  }

  v7 = *(v3 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v3 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v3 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v3 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v3 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v3 + 88) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v3 + 104);
  v20 = (a3 + 16 * v19);
  v21 = (a2 + (v19 << 6));
  if (*(v3 + 112) == 5)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v3 + 128);
  v24 = (a3 + 16 * v23);
  v25 = (a2 + (v23 << 6));
  if (*(v3 + 136) == 5)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v3 + 152);
  v28 = (a3 + 16 * v27);
  v29 = (a2 + (v27 << 6));
  if (*(v3 + 160) == 5)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = *(v3 + 176);
  v32 = (a3 + 16 * v31);
  v33 = (a2 + (v31 << 6));
  if (*(v3 + 184) == 5)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = (*(v3 + 224) << 6);
  v122 = *v6;
  v123 = *v10;
  v124 = *v14;
  v125 = *v18;
  v126 = *v22;
  v127 = *v26;
  v128 = *v30;
  v129 = *v34;
  v130 = *(v35 + a2);
  v131 = *(a2 + (*(v3 + 248) << 6));
  v36 = *(a2 + (*(v3 + 200) << 6)) * 0.5;
  v37 = *CI::getDC(v35);
  v38 = vextq_s8(v122, v122, 8uLL).u64[0];
  v39 = vsub_f32(v37, *v122.i8);
  v40 = vsub_f32(v38, *v122.i8);
  v41 = fabsf(((-v39.f32[1] * v40.f32[0]) + (v39.f32[0] * v40.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v40, v40))), 0.01));
  v42 = vmuls_lane_f32(v40.f32[1], v39, 1) + (v39.f32[0] * v40.f32[0]);
  v43 = sqrtf(vaddv_f32(vmul_f32(v39, v39)));
  if (v42 >= 0.0)
  {
    v43 = v41;
  }

  v44 = vsub_f32(v37, v38);
  v45 = COERCE_FLOAT(vmul_f32(v40, v44).i32[1]) + (v44.f32[0] * v40.f32[0]);
  v46 = sqrtf(vaddv_f32(vmul_f32(v44, v44)));
  if (v45 < 0.0)
  {
    v46 = v43;
  }

  v47 = vextq_s8(v123, v123, 8uLL).u64[0];
  v48 = vsub_f32(v37, *v123.i8);
  v49 = vsub_f32(v47, *v123.i8);
  v50 = fabsf(((-v48.f32[1] * v49.f32[0]) + (v48.f32[0] * v49.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v49, v49))), 0.01));
  v51 = vmuls_lane_f32(v49.f32[1], v48, 1) + (v48.f32[0] * v49.f32[0]);
  v52 = sqrtf(vaddv_f32(vmul_f32(v48, v48)));
  if (v51 >= 0.0)
  {
    v52 = v50;
  }

  v53 = vsub_f32(v37, v47);
  v54 = COERCE_FLOAT(vmul_f32(v49, v53).i32[1]) + (v53.f32[0] * v49.f32[0]);
  v55 = sqrtf(vaddv_f32(vmul_f32(v53, v53)));
  if (v54 < 0.0)
  {
    v55 = v52;
  }

  v56 = fminf(v46, v55);
  v57 = vextq_s8(v124, v124, 8uLL).u64[0];
  v58 = vsub_f32(v37, *v124.i8);
  v59 = vsub_f32(v57, *v124.i8);
  v60 = fabsf(((-v58.f32[1] * v59.f32[0]) + (v58.f32[0] * v59.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v59, v59))), 0.01));
  v61 = vmuls_lane_f32(v59.f32[1], v58, 1) + (v58.f32[0] * v59.f32[0]);
  v62 = sqrtf(vaddv_f32(vmul_f32(v58, v58)));
  if (v61 >= 0.0)
  {
    v62 = v60;
  }

  v63 = vsub_f32(v37, v57);
  v64 = COERCE_FLOAT(vmul_f32(v59, v63).i32[1]) + (v63.f32[0] * v59.f32[0]);
  v65 = sqrtf(vaddv_f32(vmul_f32(v63, v63)));
  if (v64 < 0.0)
  {
    v65 = v62;
  }

  v66 = fminf(v56, v65);
  v67 = vextq_s8(v125, v125, 8uLL).u64[0];
  v68 = vsub_f32(v37, *v125.i8);
  v69 = vsub_f32(v67, *v125.i8);
  v70 = fabsf(((-v68.f32[1] * v69.f32[0]) + (v68.f32[0] * v69.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v69, v69))), 0.01));
  v71 = vmuls_lane_f32(v69.f32[1], v68, 1) + (v68.f32[0] * v69.f32[0]);
  v72 = sqrtf(vaddv_f32(vmul_f32(v68, v68)));
  if (v71 >= 0.0)
  {
    v72 = v70;
  }

  v73 = vsub_f32(v37, v67);
  v74 = COERCE_FLOAT(vmul_f32(v69, v73).i32[1]) + (v73.f32[0] * v69.f32[0]);
  v75 = sqrtf(vaddv_f32(vmul_f32(v73, v73)));
  if (v74 < 0.0)
  {
    v75 = v72;
  }

  v76 = fminf(v66, v75);
  v77 = vextq_s8(v126, v126, 8uLL).u64[0];
  v78 = vsub_f32(v37, *v126.i8);
  v79 = vsub_f32(v77, *v126.i8);
  v80 = fabsf(((-v78.f32[1] * v79.f32[0]) + (v78.f32[0] * v79.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v79, v79))), 0.01));
  v81 = vmuls_lane_f32(v79.f32[1], v78, 1) + (v78.f32[0] * v79.f32[0]);
  v82 = sqrtf(vaddv_f32(vmul_f32(v78, v78)));
  if (v81 >= 0.0)
  {
    v82 = v80;
  }

  v83 = vsub_f32(v37, v77);
  v84 = COERCE_FLOAT(vmul_f32(v79, v83).i32[1]) + (v83.f32[0] * v79.f32[0]);
  v85 = sqrtf(vaddv_f32(vmul_f32(v83, v83)));
  if (v84 < 0.0)
  {
    v85 = v82;
  }

  v86 = fminf(v76, v85);
  v87 = vextq_s8(v127, v127, 8uLL).u64[0];
  v88 = vsub_f32(v37, *v127.i8);
  v89 = vsub_f32(v87, *v127.i8);
  v90 = fabsf(((-v88.f32[1] * v89.f32[0]) + (v88.f32[0] * v89.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v89, v89))), 0.01));
  v91 = vmuls_lane_f32(v89.f32[1], v88, 1) + (v88.f32[0] * v89.f32[0]);
  v92 = sqrtf(vaddv_f32(vmul_f32(v88, v88)));
  if (v91 >= 0.0)
  {
    v92 = v90;
  }

  v93 = vsub_f32(v37, v87);
  v94 = COERCE_FLOAT(vmul_f32(v89, v93).i32[1]) + (v93.f32[0] * v89.f32[0]);
  v95 = sqrtf(vaddv_f32(vmul_f32(v93, v93)));
  if (v94 < 0.0)
  {
    v95 = v92;
  }

  v96 = fminf(v86, v95);
  v97 = vextq_s8(v128, v128, 8uLL).u64[0];
  v98 = vsub_f32(v37, *v128.i8);
  v99 = vsub_f32(v97, *v128.i8);
  v100 = fabsf(((-v98.f32[1] * v99.f32[0]) + (v98.f32[0] * v99.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v99, v99))), 0.01));
  v101 = vmuls_lane_f32(v99.f32[1], v98, 1) + (v98.f32[0] * v99.f32[0]);
  v102 = sqrtf(vaddv_f32(vmul_f32(v98, v98)));
  if (v101 >= 0.0)
  {
    v102 = v100;
  }

  v103 = vsub_f32(v37, v97);
  v104 = COERCE_FLOAT(vmul_f32(v99, v103).i32[1]) + (v103.f32[0] * v99.f32[0]);
  v105 = sqrtf(vaddv_f32(vmul_f32(v103, v103)));
  if (v104 < 0.0)
  {
    v105 = v102;
  }

  v106 = fminf(v96, v105);
  v107 = vextq_s8(v129, v129, 8uLL).u64[0];
  v108 = vsub_f32(v37, *v129.i8);
  v109 = vsub_f32(v107, *v129.i8);
  v110 = fabsf(((-v108.f32[1] * v109.f32[0]) + (v108.f32[0] * v109.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v109, v109))), 0.01));
  v111 = vmuls_lane_f32(v109.f32[1], v108, 1) + (v108.f32[0] * v109.f32[0]);
  v112 = sqrtf(vaddv_f32(vmul_f32(v108, v108)));
  if (v111 < 0.0)
  {
    v110 = v112;
  }

  v113 = vsub_f32(v37, v107);
  v114 = COERCE_FLOAT(vmul_f32(v109, v113).i32[1]) + (v113.f32[0] * v109.f32[0]);
  v115 = sqrtf(vaddv_f32(vmul_f32(v113, v113)));
  if (v114 < 0.0)
  {
    v115 = v110;
  }

  v116 = fminf(v106, v115);
  v117 = 1.0;
  if ((v36 - v116) <= 1.0)
  {
    v117 = v36 - v116;
  }

  v118 = 0.0;
  if ((v36 - v116) >= 0.0)
  {
    v118 = v117;
  }

  v119 = (v118 * -2.0 + 3.0) * v118 * v118;
  v120 = v116 - (v36 + -1.0);
  *&result = vmulq_n_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v120 < 0.0)), 0x1FuLL)), v130, vandq_s8(vmulq_n_f32(v130, v119), vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v116 < v36)), 0x1FuLL)))), v131).u64[0];
  return result;
}

double CI::sw_mesh16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v6 = v5;
  }

  v7 = *(v3 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v3 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v3 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v3 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v3 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v3 + 88) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v3 + 104);
  v20 = (a3 + 16 * v19);
  v21 = (a2 + (v19 << 6));
  if (*(v3 + 112) == 5)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v3 + 128);
  v24 = (a3 + 16 * v23);
  v25 = (a2 + (v23 << 6));
  if (*(v3 + 136) == 5)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v3 + 152);
  v28 = (a3 + 16 * v27);
  v29 = (a2 + (v27 << 6));
  if (*(v3 + 160) == 5)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = *(v3 + 176);
  v32 = (a3 + 16 * v31);
  v33 = (a2 + (v31 << 6));
  if (*(v3 + 184) == 5)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = *(v3 + 200);
  v36 = (a3 + 16 * v35);
  v37 = (a2 + (v35 << 6));
  if (*(v3 + 208) == 5)
  {
    v38 = v36;
  }

  else
  {
    v38 = v37;
  }

  v39 = *(v3 + 224);
  v40 = (a3 + 16 * v39);
  v41 = *(v3 + 248);
  v42 = (a2 + (v39 << 6));
  if (*(v3 + 232) == 5)
  {
    v42 = v40;
  }

  v43 = *(v3 + 272);
  v44 = *(v3 + 296);
  v45 = (a3 + 16 * v41);
  v46 = (a2 + (v41 << 6));
  if (*(v3 + 256) == 5)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  v48 = (a3 + 16 * v43);
  v49 = (a2 + (v43 << 6));
  if (*(v3 + 280) == 5)
  {
    v49 = v48;
  }

  v50 = (a3 + 16 * v44);
  if (*(v3 + 304) != 5)
  {
    v50 = (a2 + (v44 << 6));
  }

  v51 = *(v3 + 320);
  v52 = (a3 + 16 * v51);
  v53 = (a2 + (v51 << 6));
  if (*(v3 + 328) != 5)
  {
    v52 = v53;
  }

  v54 = *(v3 + 344);
  v55 = (a3 + 16 * v54);
  v56 = (a2 + (v54 << 6));
  if (*(v3 + 352) != 5)
  {
    v55 = v56;
  }

  v57 = *(v3 + 368);
  v58 = (a3 + 16 * v57);
  v59 = (a2 + (v57 << 6));
  if (*(v3 + 376) != 5)
  {
    v58 = v59;
  }

  v226 = *v6;
  v227 = *v10;
  v228 = *v14;
  v229 = *v18;
  v230 = *v22;
  v231 = *v26;
  v232 = *v30;
  v233 = *v34;
  v234 = *v38;
  v235 = *v42;
  v236 = *v47;
  v237 = *v49;
  v238 = *v50;
  v239 = *v52;
  v240 = *v55;
  v241 = *v58;
  v242 = *(a2 + (*(v3 + 416) << 6));
  v60 = *(a2 + (*(v3 + 392) << 6)) * 0.5;
  v243 = *(a2 + (*(v3 + 440) << 6));
  v61 = *CI::getDC(v42);
  v62 = vextq_s8(v226, v226, 8uLL).u64[0];
  v63 = vsub_f32(v61, *v226.i8);
  v64 = vsub_f32(v62, *v226.i8);
  v65 = fabsf(((-v63.f32[1] * v64.f32[0]) + (v63.f32[0] * v64.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v64, v64))), 0.01));
  v66 = vmuls_lane_f32(v64.f32[1], v63, 1) + (v63.f32[0] * v64.f32[0]);
  v67 = sqrtf(vaddv_f32(vmul_f32(v63, v63)));
  if (v66 >= 0.0)
  {
    v67 = v65;
  }

  v68 = vsub_f32(v61, v62);
  v69 = COERCE_FLOAT(vmul_f32(v64, v68).i32[1]) + (v68.f32[0] * v64.f32[0]);
  v70 = sqrtf(vaddv_f32(vmul_f32(v68, v68)));
  if (v69 < 0.0)
  {
    v70 = v67;
  }

  v71 = vextq_s8(v227, v227, 8uLL).u64[0];
  v72 = vsub_f32(v61, *v227.i8);
  v73 = vsub_f32(v71, *v227.i8);
  v74 = fabsf(((-v72.f32[1] * v73.f32[0]) + (v72.f32[0] * v73.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v73, v73))), 0.01));
  v75 = vmuls_lane_f32(v73.f32[1], v72, 1) + (v72.f32[0] * v73.f32[0]);
  v76 = sqrtf(vaddv_f32(vmul_f32(v72, v72)));
  if (v75 >= 0.0)
  {
    v76 = v74;
  }

  v77 = vsub_f32(v61, v71);
  v78 = COERCE_FLOAT(vmul_f32(v73, v77).i32[1]) + (v77.f32[0] * v73.f32[0]);
  v79 = sqrtf(vaddv_f32(vmul_f32(v77, v77)));
  if (v78 < 0.0)
  {
    v79 = v76;
  }

  v80 = fminf(v70, v79);
  v81 = vextq_s8(v228, v228, 8uLL).u64[0];
  v82 = vsub_f32(v61, *v228.i8);
  v83 = vsub_f32(v81, *v228.i8);
  v84 = fabsf(((-v82.f32[1] * v83.f32[0]) + (v82.f32[0] * v83.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v83, v83))), 0.01));
  v85 = vmuls_lane_f32(v83.f32[1], v82, 1) + (v82.f32[0] * v83.f32[0]);
  v86 = sqrtf(vaddv_f32(vmul_f32(v82, v82)));
  if (v85 >= 0.0)
  {
    v86 = v84;
  }

  v87 = vsub_f32(v61, v81);
  v88 = COERCE_FLOAT(vmul_f32(v83, v87).i32[1]) + (v87.f32[0] * v83.f32[0]);
  v89 = sqrtf(vaddv_f32(vmul_f32(v87, v87)));
  if (v88 < 0.0)
  {
    v89 = v86;
  }

  v90 = fminf(v80, v89);
  v91 = vextq_s8(v229, v229, 8uLL).u64[0];
  v92 = vsub_f32(v61, *v229.i8);
  v93 = vsub_f32(v91, *v229.i8);
  v94 = fabsf(((-v92.f32[1] * v93.f32[0]) + (v92.f32[0] * v93.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v93, v93))), 0.01));
  v95 = vmuls_lane_f32(v93.f32[1], v92, 1) + (v92.f32[0] * v93.f32[0]);
  v96 = sqrtf(vaddv_f32(vmul_f32(v92, v92)));
  if (v95 >= 0.0)
  {
    v96 = v94;
  }

  v97 = vsub_f32(v61, v91);
  v98 = COERCE_FLOAT(vmul_f32(v93, v97).i32[1]) + (v97.f32[0] * v93.f32[0]);
  v99 = sqrtf(vaddv_f32(vmul_f32(v97, v97)));
  if (v98 < 0.0)
  {
    v99 = v96;
  }

  v100 = fminf(v90, v99);
  v101 = vextq_s8(v230, v230, 8uLL).u64[0];
  v102 = vsub_f32(v61, *v230.i8);
  v103 = vsub_f32(v101, *v230.i8);
  v104 = fabsf(((-v102.f32[1] * v103.f32[0]) + (v102.f32[0] * v103.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v103, v103))), 0.01));
  v105 = vmuls_lane_f32(v103.f32[1], v102, 1) + (v102.f32[0] * v103.f32[0]);
  v106 = sqrtf(vaddv_f32(vmul_f32(v102, v102)));
  if (v105 >= 0.0)
  {
    v106 = v104;
  }

  v107 = vsub_f32(v61, v101);
  v108 = COERCE_FLOAT(vmul_f32(v103, v107).i32[1]) + (v107.f32[0] * v103.f32[0]);
  v109 = sqrtf(vaddv_f32(vmul_f32(v107, v107)));
  if (v108 < 0.0)
  {
    v109 = v106;
  }

  v110 = fminf(v100, v109);
  v111 = vextq_s8(v231, v231, 8uLL).u64[0];
  v112 = vsub_f32(v61, *v231.i8);
  v113 = vsub_f32(v111, *v231.i8);
  v114 = fabsf(((-v112.f32[1] * v113.f32[0]) + (v112.f32[0] * v113.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v113, v113))), 0.01));
  v115 = vmuls_lane_f32(v113.f32[1], v112, 1) + (v112.f32[0] * v113.f32[0]);
  v116 = sqrtf(vaddv_f32(vmul_f32(v112, v112)));
  if (v115 >= 0.0)
  {
    v116 = v114;
  }

  v117 = vsub_f32(v61, v111);
  v118 = COERCE_FLOAT(vmul_f32(v113, v117).i32[1]) + (v117.f32[0] * v113.f32[0]);
  v119 = sqrtf(vaddv_f32(vmul_f32(v117, v117)));
  if (v118 < 0.0)
  {
    v119 = v116;
  }

  v120 = fminf(v110, v119);
  v121 = vextq_s8(v232, v232, 8uLL).u64[0];
  v122 = vsub_f32(v61, *v232.i8);
  v123 = vsub_f32(v121, *v232.i8);
  v124 = fabsf(((-v122.f32[1] * v123.f32[0]) + (v122.f32[0] * v123.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v123, v123))), 0.01));
  v125 = vmuls_lane_f32(v123.f32[1], v122, 1) + (v122.f32[0] * v123.f32[0]);
  v126 = sqrtf(vaddv_f32(vmul_f32(v122, v122)));
  if (v125 >= 0.0)
  {
    v126 = v124;
  }

  v127 = vsub_f32(v61, v121);
  v128 = COERCE_FLOAT(vmul_f32(v123, v127).i32[1]) + (v127.f32[0] * v123.f32[0]);
  v129 = sqrtf(vaddv_f32(vmul_f32(v127, v127)));
  if (v128 < 0.0)
  {
    v129 = v126;
  }

  v130 = fminf(v120, v129);
  v131 = vextq_s8(v233, v233, 8uLL).u64[0];
  v132 = vsub_f32(v61, *v233.i8);
  v133 = vsub_f32(v131, *v233.i8);
  v134 = fabsf(((-v132.f32[1] * v133.f32[0]) + (v132.f32[0] * v133.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v133, v133))), 0.01));
  v135 = vmuls_lane_f32(v133.f32[1], v132, 1) + (v132.f32[0] * v133.f32[0]);
  v136 = sqrtf(vaddv_f32(vmul_f32(v132, v132)));
  if (v135 >= 0.0)
  {
    v136 = v134;
  }

  v137 = vsub_f32(v61, v131);
  v138 = COERCE_FLOAT(vmul_f32(v133, v137).i32[1]) + (v137.f32[0] * v133.f32[0]);
  v139 = sqrtf(vaddv_f32(vmul_f32(v137, v137)));
  if (v138 < 0.0)
  {
    v139 = v136;
  }

  v140 = fminf(v130, v139);
  v141 = vextq_s8(v234, v234, 8uLL).u64[0];
  v142 = vsub_f32(v61, *v234.i8);
  v143 = vsub_f32(v141, *v234.i8);
  v144 = fabsf(((-v142.f32[1] * v143.f32[0]) + (v142.f32[0] * v143.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v143, v143))), 0.01));
  v145 = vmuls_lane_f32(v143.f32[1], v142, 1) + (v142.f32[0] * v143.f32[0]);
  v146 = sqrtf(vaddv_f32(vmul_f32(v142, v142)));
  if (v145 >= 0.0)
  {
    v146 = v144;
  }

  v147 = vsub_f32(v61, v141);
  v148 = COERCE_FLOAT(vmul_f32(v143, v147).i32[1]) + (v147.f32[0] * v143.f32[0]);
  v149 = sqrtf(vaddv_f32(vmul_f32(v147, v147)));
  if (v148 < 0.0)
  {
    v149 = v146;
  }

  v150 = fminf(v140, v149);
  v151 = vextq_s8(v235, v235, 8uLL).u64[0];
  v152 = vsub_f32(v61, *v235.i8);
  v153 = vsub_f32(v151, *v235.i8);
  v154 = fabsf(((-v152.f32[1] * v153.f32[0]) + (v152.f32[0] * v153.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v153, v153))), 0.01));
  v155 = vmuls_lane_f32(v153.f32[1], v152, 1) + (v152.f32[0] * v153.f32[0]);
  v156 = sqrtf(vaddv_f32(vmul_f32(v152, v152)));
  if (v155 >= 0.0)
  {
    v156 = v154;
  }

  v157 = vsub_f32(v61, v151);
  v158 = COERCE_FLOAT(vmul_f32(v153, v157).i32[1]) + (v157.f32[0] * v153.f32[0]);
  v159 = sqrtf(vaddv_f32(vmul_f32(v157, v157)));
  if (v158 < 0.0)
  {
    v159 = v156;
  }

  v160 = fminf(v150, v159);
  v161 = vextq_s8(v236, v236, 8uLL).u64[0];
  v162 = vsub_f32(v61, *v236.i8);
  v163 = vsub_f32(v161, *v236.i8);
  v164 = fabsf(((-v162.f32[1] * v163.f32[0]) + (v162.f32[0] * v163.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v163, v163))), 0.01));
  v165 = vmuls_lane_f32(v163.f32[1], v162, 1) + (v162.f32[0] * v163.f32[0]);
  v166 = sqrtf(vaddv_f32(vmul_f32(v162, v162)));
  if (v165 >= 0.0)
  {
    v166 = v164;
  }

  v167 = vsub_f32(v61, v161);
  v168 = COERCE_FLOAT(vmul_f32(v163, v167).i32[1]) + (v167.f32[0] * v163.f32[0]);
  v169 = sqrtf(vaddv_f32(vmul_f32(v167, v167)));
  if (v168 < 0.0)
  {
    v169 = v166;
  }

  v170 = fminf(v160, v169);
  v171 = vextq_s8(v237, v237, 8uLL).u64[0];
  v172 = vsub_f32(v61, *v237.i8);
  v173 = vsub_f32(v171, *v237.i8);
  v174 = fabsf(((-v172.f32[1] * v173.f32[0]) + (v172.f32[0] * v173.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v173, v173))), 0.01));
  v175 = vmuls_lane_f32(v173.f32[1], v172, 1) + (v172.f32[0] * v173.f32[0]);
  v176 = sqrtf(vaddv_f32(vmul_f32(v172, v172)));
  if (v175 >= 0.0)
  {
    v176 = v174;
  }

  v177 = vsub_f32(v61, v171);
  v178 = COERCE_FLOAT(vmul_f32(v173, v177).i32[1]) + (v177.f32[0] * v173.f32[0]);
  v179 = sqrtf(vaddv_f32(vmul_f32(v177, v177)));
  if (v178 < 0.0)
  {
    v179 = v176;
  }

  v180 = fminf(v170, v179);
  v181 = vextq_s8(v238, v238, 8uLL).u64[0];
  v182 = vsub_f32(v61, *v238.i8);
  v183 = vsub_f32(v181, *v238.i8);
  v184 = fabsf(((-v182.f32[1] * v183.f32[0]) + (v182.f32[0] * v183.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v183, v183))), 0.01));
  v185 = vmuls_lane_f32(v183.f32[1], v182, 1) + (v182.f32[0] * v183.f32[0]);
  v186 = sqrtf(vaddv_f32(vmul_f32(v182, v182)));
  if (v185 >= 0.0)
  {
    v186 = v184;
  }

  v187 = vsub_f32(v61, v181);
  v188 = COERCE_FLOAT(vmul_f32(v183, v187).i32[1]) + (v187.f32[0] * v183.f32[0]);
  v189 = sqrtf(vaddv_f32(vmul_f32(v187, v187)));
  if (v188 < 0.0)
  {
    v189 = v186;
  }

  v190 = fminf(v180, v189);
  v191 = vextq_s8(v239, v239, 8uLL).u64[0];
  v192 = vsub_f32(v61, *v239.i8);
  v193 = vsub_f32(v191, *v239.i8);
  v194 = fabsf(((-v192.f32[1] * v193.f32[0]) + (v192.f32[0] * v193.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v193, v193))), 0.01));
  v195 = vmuls_lane_f32(v193.f32[1], v192, 1) + (v192.f32[0] * v193.f32[0]);
  v196 = sqrtf(vaddv_f32(vmul_f32(v192, v192)));
  if (v195 >= 0.0)
  {
    v196 = v194;
  }

  v197 = vsub_f32(v61, v191);
  v198 = COERCE_FLOAT(vmul_f32(v193, v197).i32[1]) + (v197.f32[0] * v193.f32[0]);
  v199 = sqrtf(vaddv_f32(vmul_f32(v197, v197)));
  if (v198 < 0.0)
  {
    v199 = v196;
  }

  v200 = fminf(v190, v199);
  v201 = vextq_s8(v240, v240, 8uLL).u64[0];
  v202 = vsub_f32(v61, *v240.i8);
  v203 = vsub_f32(v201, *v240.i8);
  v204 = fabsf(((-v202.f32[1] * v203.f32[0]) + (v202.f32[0] * v203.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v203, v203))), 0.01));
  v205 = vmuls_lane_f32(v203.f32[1], v202, 1) + (v202.f32[0] * v203.f32[0]);
  v206 = sqrtf(vaddv_f32(vmul_f32(v202, v202)));
  if (v205 >= 0.0)
  {
    v206 = v204;
  }

  v207 = vsub_f32(v61, v201);
  v208 = COERCE_FLOAT(vmul_f32(v203, v207).i32[1]) + (v207.f32[0] * v203.f32[0]);
  v209 = sqrtf(vaddv_f32(vmul_f32(v207, v207)));
  if (v208 < 0.0)
  {
    v209 = v206;
  }

  v210 = fminf(v200, v209);
  v211 = vextq_s8(v241, v241, 8uLL).u64[0];
  v212 = vsub_f32(v61, *v241.i8);
  v213 = vsub_f32(v211, *v241.i8);
  v214 = fabsf(((-v212.f32[1] * v213.f32[0]) + (v212.f32[0] * v213.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v213, v213))), 0.01));
  v215 = vmuls_lane_f32(v213.f32[1], v212, 1) + (v212.f32[0] * v213.f32[0]);
  v216 = sqrtf(vaddv_f32(vmul_f32(v212, v212)));
  if (v215 < 0.0)
  {
    v214 = v216;
  }

  v217 = vsub_f32(v61, v211);
  v218 = COERCE_FLOAT(vmul_f32(v213, v217).i32[1]) + (v217.f32[0] * v213.f32[0]);
  v219 = sqrtf(vaddv_f32(vmul_f32(v217, v217)));
  if (v218 < 0.0)
  {
    v219 = v214;
  }

  v220 = fminf(v210, v219);
  v221 = 1.0;
  if ((v60 - v220) <= 1.0)
  {
    v221 = v60 - v220;
  }

  v222 = 0.0;
  if ((v60 - v220) >= 0.0)
  {
    v222 = v221;
  }

  v223 = (v222 * -2.0 + 3.0) * v222 * v222;
  v224 = v220 - (v60 + -1.0);
  *&result = vmulq_n_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v224 < 0.0)), 0x1FuLL)), v242, vandq_s8(vmulq_n_f32(v242, v223), vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v220 < v60)), 0x1FuLL)))), v243).u64[0];
  return result;
}

double CI::sw_mesh32(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 104);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v3 + 112) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v3 + 128);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v3 + 136) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v3 + 152);
  v29 = (a3 + 16 * v28);
  v30 = (a2 + (v28 << 6));
  if (*(v3 + 160) == 5)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = *(v3 + 176);
  v33 = (a3 + 16 * v32);
  v34 = (a2 + (v32 << 6));
  if (*(v3 + 184) == 5)
  {
    v35 = v33;
  }

  else
  {
    v35 = v34;
  }

  v36 = *(v3 + 200);
  v37 = (a3 + 16 * v36);
  v38 = (a2 + (v36 << 6));
  if (*(v3 + 208) == 5)
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  v40 = *(v3 + 224);
  v41 = (a3 + 16 * v40);
  v42 = (a2 + (v40 << 6));
  if (*(v3 + 232) == 5)
  {
    v43 = v41;
  }

  else
  {
    v43 = v42;
  }

  v44 = *(v3 + 248);
  v45 = (a3 + 16 * v44);
  v46 = (a2 + (v44 << 6));
  if (*(v3 + 256) == 5)
  {
    v47 = v45;
  }

  else
  {
    v47 = v46;
  }

  v48 = *(v3 + 272);
  v49 = (a3 + 16 * v48);
  v50 = (a2 + (v48 << 6));
  if (*(v3 + 280) == 5)
  {
    v51 = v49;
  }

  else
  {
    v51 = v50;
  }

  v52 = *(v3 + 296);
  v53 = (a3 + 16 * v52);
  v54 = (a2 + (v52 << 6));
  if (*(v3 + 304) == 5)
  {
    v55 = v53;
  }

  else
  {
    v55 = v54;
  }

  v56 = *(v3 + 320);
  v57 = (a3 + 16 * v56);
  v58 = (a2 + (v56 << 6));
  if (*(v3 + 328) == 5)
  {
    v59 = v57;
  }

  else
  {
    v59 = v58;
  }

  v60 = *(v3 + 344);
  v61 = (a3 + 16 * v60);
  v62 = (a2 + (v60 << 6));
  if (*(v3 + 352) == 5)
  {
    v63 = v61;
  }

  else
  {
    v63 = v62;
  }

  v64 = *(v3 + 368);
  v65 = (a3 + 16 * v64);
  v66 = (a2 + (v64 << 6));
  if (*(v3 + 376) == 5)
  {
    v67 = v65;
  }

  else
  {
    v67 = v66;
  }

  v68 = *(v3 + 392);
  v69 = (a2 + (v68 << 6));
  if (*(v3 + 400) == 5)
  {
    v69 = (a3 + 16 * v68);
  }

  v70 = *(v3 + 416);
  v71 = *(v3 + 440);
  v72 = (a3 + 16 * v70);
  v73 = (a2 + (v70 << 6));
  if (*(v3 + 424) == 5)
  {
    v73 = v72;
  }

  v74 = *(v3 + 464);
  v75 = *v7;
  v76 = (a3 + 16 * v71);
  v77 = (a2 + (v71 << 6));
  if (*(v3 + 448) == 5)
  {
    v77 = v76;
  }

  v78 = *(v3 + 488);
  v442 = v75;
  v443 = *v11;
  v79 = *v15;
  v80 = (a2 + (v74 << 6));
  if (*(v3 + 472) == 5)
  {
    v80 = (a3 + 16 * v74);
  }

  v81 = *(v3 + 512);
  v444 = v79;
  v445 = *v19;
  v82 = (a3 + 16 * v78);
  if (*(v3 + 496) != 5)
  {
    v82 = (a2 + (v78 << 6));
  }

  v83 = *(v3 + 536);
  v84 = *(v3 + 560);
  v446 = *v23;
  v447 = *v27;
  v85 = (a3 + 16 * v81);
  if (*(v3 + 520) != 5)
  {
    v85 = (a2 + (v81 << 6));
  }

  v86 = *(v3 + 584);
  v87 = (a3 + 16 * v83);
  v88 = (a2 + (v83 << 6));
  if (*(v3 + 544) != 5)
  {
    v87 = v88;
  }

  v89 = *(v3 + 608);
  v448 = *v31;
  v449 = *v35;
  v90 = *v39;
  v91 = (a3 + 16 * v84);
  if (*(v3 + 568) != 5)
  {
    v91 = (a2 + (v84 << 6));
  }

  v92 = *(v3 + 632);
  v450 = v90;
  v451 = *v43;
  v93 = (a3 + 16 * v86);
  v452 = *v47;
  v94 = *(v3 + 656);
  if (*(v3 + 592) != 5)
  {
    v93 = (a2 + (v86 << 6));
  }

  v95 = (a3 + 16 * v89);
  if (*(v3 + 616) != 5)
  {
    v95 = (a2 + (v89 << 6));
  }

  v96 = *(v3 + 680);
  v97 = (a3 + 16 * v92);
  v98 = (a2 + (v92 << 6));
  if (*(v3 + 640) != 5)
  {
    v97 = v98;
  }

  v99 = (a3 + 16 * v94);
  v100 = (a2 + (v94 << 6));
  if (*(v3 + 664) == 5)
  {
    v100 = v99;
  }

  v101 = *(v3 + 704);
  v102 = (a3 + 16 * v96);
  v103 = (a2 + (v96 << 6));
  if (*(v3 + 688) != 5)
  {
    v102 = v103;
  }

  v104 = (a3 + 16 * v101);
  v105 = (a2 + (v101 << 6));
  if (*(v3 + 712) != 5)
  {
    v104 = v105;
  }

  v106 = *(v3 + 728);
  v107 = (a3 + 16 * v106);
  v108 = (a2 + (v106 << 6));
  if (*(v3 + 736) != 5)
  {
    v107 = v108;
  }

  v109 = *(v3 + 760);
  v453 = *v51;
  v454 = *v55;
  v455 = *v59;
  v456 = *v63;
  v457 = *v67;
  v458 = *v69;
  v459 = *v73;
  v460 = *v77;
  v461 = *v80;
  v110 = *(a2 + (*(v3 + 776) << 6));
  v474 = *(a2 + (*(v3 + 800) << 6));
  v475 = *(a2 + (*(v3 + 824) << 6));
  v111 = *(v3 + 752);
  v112 = (a3 + 16 * v111);
  v113 = (a2 + (v111 << 6));
  if (v109 == 5)
  {
    v113 = v112;
  }

  v462 = *v82;
  v463 = *v85;
  v464 = *v87;
  v465 = *v91;
  v466 = *v93;
  v467 = *v95;
  v468 = *v97;
  v469 = *v100;
  v114 = v110 * 0.5;
  v470 = *v102;
  v471 = *v104;
  v472 = *v107;
  v473 = *v113;
  v115 = *CI::getDC(v80);
  v116 = vextq_s8(v442, v442, 8uLL).u64[0];
  v117 = vsub_f32(v115, *v442.i8);
  v118 = vsub_f32(v116, *v442.i8);
  v119 = (vmuls_lane_f32(v118.f32[1], v117, 1) + (v117.f32[0] * v118.f32[0])) < 0.0;
  v120 = fabsf(((-v117.f32[1] * v118.f32[0]) + (v117.f32[0] * v118.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v118, v118))), 0.01));
  v121 = sqrtf(vaddv_f32(vmul_f32(v117, v117)));
  if (!v119)
  {
    v121 = v120;
  }

  v122 = vsub_f32(v115, v116);
  v123 = COERCE_FLOAT(vmul_f32(v118, v122).i32[1]) + (v122.f32[0] * v118.f32[0]);
  v124 = sqrtf(vaddv_f32(vmul_f32(v122, v122)));
  if (v123 < 0.0)
  {
    v124 = v121;
  }

  v125 = vextq_s8(v443, v443, 8uLL).u64[0];
  v126 = vsub_f32(v115, *v443.i8);
  v127 = vsub_f32(v125, *v443.i8);
  v128 = vmuls_lane_f32(v127.f32[1], v126, 1) + (v126.f32[0] * v127.f32[0]);
  v129 = fabsf(((-v126.f32[1] * v127.f32[0]) + (v126.f32[0] * v127.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v127, v127))), 0.01));
  v130 = sqrtf(vaddv_f32(vmul_f32(v126, v126)));
  if (v128 >= 0.0)
  {
    v130 = v129;
  }

  v131 = vsub_f32(v115, v125);
  v132 = COERCE_FLOAT(vmul_f32(v127, v131).i32[1]) + (v131.f32[0] * v127.f32[0]);
  v133 = sqrtf(vaddv_f32(vmul_f32(v131, v131)));
  if (v132 < 0.0)
  {
    v133 = v130;
  }

  v134 = fminf(v124, v133);
  v135 = vextq_s8(v444, v444, 8uLL).u64[0];
  v136 = vsub_f32(v115, *v444.i8);
  v137 = vsub_f32(v135, *v444.i8);
  v138 = vmuls_lane_f32(v137.f32[1], v136, 1) + (v136.f32[0] * v137.f32[0]);
  v139 = fabsf(((-v136.f32[1] * v137.f32[0]) + (v136.f32[0] * v137.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v137, v137))), 0.01));
  v140 = sqrtf(vaddv_f32(vmul_f32(v136, v136)));
  if (v138 >= 0.0)
  {
    v140 = v139;
  }

  v141 = vsub_f32(v115, v135);
  v142 = COERCE_FLOAT(vmul_f32(v137, v141).i32[1]) + (v141.f32[0] * v137.f32[0]);
  v143 = sqrtf(vaddv_f32(vmul_f32(v141, v141)));
  if (v142 < 0.0)
  {
    v143 = v140;
  }

  v144 = fminf(v134, v143);
  v145 = vextq_s8(v445, v445, 8uLL).u64[0];
  v146 = vsub_f32(v115, *v445.i8);
  v147 = vsub_f32(v145, *v445.i8);
  v148 = vmuls_lane_f32(v147.f32[1], v146, 1) + (v146.f32[0] * v147.f32[0]);
  v149 = fabsf(((-v146.f32[1] * v147.f32[0]) + (v146.f32[0] * v147.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v147, v147))), 0.01));
  v150 = sqrtf(vaddv_f32(vmul_f32(v146, v146)));
  if (v148 >= 0.0)
  {
    v150 = v149;
  }

  v151 = vsub_f32(v115, v145);
  v152 = COERCE_FLOAT(vmul_f32(v147, v151).i32[1]) + (v151.f32[0] * v147.f32[0]);
  v153 = sqrtf(vaddv_f32(vmul_f32(v151, v151)));
  if (v152 < 0.0)
  {
    v153 = v150;
  }

  v154 = fminf(v144, v153);
  v155 = vextq_s8(v446, v446, 8uLL).u64[0];
  v156 = vsub_f32(v115, *v446.i8);
  v157 = vsub_f32(v155, *v446.i8);
  v158 = vmuls_lane_f32(v157.f32[1], v156, 1) + (v156.f32[0] * v157.f32[0]);
  v159 = fabsf(((-v156.f32[1] * v157.f32[0]) + (v156.f32[0] * v157.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v157, v157))), 0.01));
  v160 = sqrtf(vaddv_f32(vmul_f32(v156, v156)));
  if (v158 >= 0.0)
  {
    v160 = v159;
  }

  v161 = vsub_f32(v115, v155);
  v162 = COERCE_FLOAT(vmul_f32(v157, v161).i32[1]) + (v161.f32[0] * v157.f32[0]);
  v163 = sqrtf(vaddv_f32(vmul_f32(v161, v161)));
  if (v162 < 0.0)
  {
    v163 = v160;
  }

  v164 = fminf(v154, v163);
  v165 = vextq_s8(v447, v447, 8uLL).u64[0];
  v166 = vsub_f32(v115, *v447.i8);
  v167 = vsub_f32(v165, *v447.i8);
  v168 = vmuls_lane_f32(v167.f32[1], v166, 1) + (v166.f32[0] * v167.f32[0]);
  v169 = fabsf(((-v166.f32[1] * v167.f32[0]) + (v166.f32[0] * v167.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v167, v167))), 0.01));
  v170 = sqrtf(vaddv_f32(vmul_f32(v166, v166)));
  if (v168 >= 0.0)
  {
    v170 = v169;
  }

  v171 = vsub_f32(v115, v165);
  v172 = COERCE_FLOAT(vmul_f32(v167, v171).i32[1]) + (v171.f32[0] * v167.f32[0]);
  v173 = sqrtf(vaddv_f32(vmul_f32(v171, v171)));
  if (v172 < 0.0)
  {
    v173 = v170;
  }

  v174 = fminf(v164, v173);
  v175 = vextq_s8(v448, v448, 8uLL).u64[0];
  v176 = vsub_f32(v115, *v448.i8);
  v177 = vsub_f32(v175, *v448.i8);
  v178 = vmuls_lane_f32(v177.f32[1], v176, 1) + (v176.f32[0] * v177.f32[0]);
  v179 = fabsf(((-v176.f32[1] * v177.f32[0]) + (v176.f32[0] * v177.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v177, v177))), 0.01));
  v180 = sqrtf(vaddv_f32(vmul_f32(v176, v176)));
  if (v178 >= 0.0)
  {
    v180 = v179;
  }

  v181 = vsub_f32(v115, v175);
  v182 = COERCE_FLOAT(vmul_f32(v177, v181).i32[1]) + (v181.f32[0] * v177.f32[0]);
  v183 = sqrtf(vaddv_f32(vmul_f32(v181, v181)));
  if (v182 < 0.0)
  {
    v183 = v180;
  }

  v184 = fminf(v174, v183);
  v185 = vextq_s8(v449, v449, 8uLL).u64[0];
  v186 = vsub_f32(v115, *v449.i8);
  v187 = vsub_f32(v185, *v449.i8);
  v188 = vmuls_lane_f32(v187.f32[1], v186, 1) + (v186.f32[0] * v187.f32[0]);
  v189 = fabsf(((-v186.f32[1] * v187.f32[0]) + (v186.f32[0] * v187.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v187, v187))), 0.01));
  v190 = sqrtf(vaddv_f32(vmul_f32(v186, v186)));
  if (v188 >= 0.0)
  {
    v190 = v189;
  }

  v191 = vsub_f32(v115, v185);
  v192 = COERCE_FLOAT(vmul_f32(v187, v191).i32[1]) + (v191.f32[0] * v187.f32[0]);
  v193 = sqrtf(vaddv_f32(vmul_f32(v191, v191)));
  if (v192 < 0.0)
  {
    v193 = v190;
  }

  v194 = fminf(v184, v193);
  v195 = vextq_s8(v450, v450, 8uLL).u64[0];
  v196 = vsub_f32(v115, *v450.i8);
  v197 = vsub_f32(v195, *v450.i8);
  v198 = vmuls_lane_f32(v197.f32[1], v196, 1) + (v196.f32[0] * v197.f32[0]);
  v199 = fabsf(((-v196.f32[1] * v197.f32[0]) + (v196.f32[0] * v197.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v197, v197))), 0.01));
  v200 = sqrtf(vaddv_f32(vmul_f32(v196, v196)));
  if (v198 >= 0.0)
  {
    v200 = v199;
  }

  v201 = vsub_f32(v115, v195);
  v202 = COERCE_FLOAT(vmul_f32(v197, v201).i32[1]) + (v201.f32[0] * v197.f32[0]);
  v203 = sqrtf(vaddv_f32(vmul_f32(v201, v201)));
  if (v202 < 0.0)
  {
    v203 = v200;
  }

  v204 = fminf(v194, v203);
  v205 = vextq_s8(v451, v451, 8uLL).u64[0];
  v206 = vsub_f32(v115, *v451.i8);
  v207 = vsub_f32(v205, *v451.i8);
  v208 = vmuls_lane_f32(v207.f32[1], v206, 1) + (v206.f32[0] * v207.f32[0]);
  v209 = fabsf(((-v206.f32[1] * v207.f32[0]) + (v206.f32[0] * v207.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v207, v207))), 0.01));
  v210 = sqrtf(vaddv_f32(vmul_f32(v206, v206)));
  if (v208 >= 0.0)
  {
    v210 = v209;
  }

  v211 = vsub_f32(v115, v205);
  v212 = COERCE_FLOAT(vmul_f32(v207, v211).i32[1]) + (v211.f32[0] * v207.f32[0]);
  v213 = sqrtf(vaddv_f32(vmul_f32(v211, v211)));
  if (v212 < 0.0)
  {
    v213 = v210;
  }

  v214 = fminf(v204, v213);
  v215 = vextq_s8(v452, v452, 8uLL).u64[0];
  v216 = vsub_f32(v115, *v452.i8);
  v217 = vsub_f32(v215, *v452.i8);
  v218 = fabsf(((-v216.f32[1] * v217.f32[0]) + (v216.f32[0] * v217.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v217, v217))), 0.01));
  v219 = vmuls_lane_f32(v217.f32[1], v216, 1) + (v216.f32[0] * v217.f32[0]);
  v220 = sqrtf(vaddv_f32(vmul_f32(v216, v216)));
  if (v219 >= 0.0)
  {
    v220 = v218;
  }

  v221 = vsub_f32(v115, v215);
  v222 = COERCE_FLOAT(vmul_f32(v217, v221).i32[1]) + (v221.f32[0] * v217.f32[0]);
  v223 = sqrtf(vaddv_f32(vmul_f32(v221, v221)));
  if (v222 < 0.0)
  {
    v223 = v220;
  }

  v224 = fminf(v214, v223);
  v225 = vextq_s8(v453, v453, 8uLL).u64[0];
  v226 = vsub_f32(v115, *v453.i8);
  v227 = vsub_f32(v225, *v453.i8);
  v228 = fabsf(((-v226.f32[1] * v227.f32[0]) + (v226.f32[0] * v227.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v227, v227))), 0.01));
  v229 = vmuls_lane_f32(v227.f32[1], v226, 1) + (v226.f32[0] * v227.f32[0]);
  v230 = sqrtf(vaddv_f32(vmul_f32(v226, v226)));
  if (v229 >= 0.0)
  {
    v230 = v228;
  }

  v231 = vsub_f32(v115, v225);
  v232 = COERCE_FLOAT(vmul_f32(v227, v231).i32[1]) + (v231.f32[0] * v227.f32[0]);
  v233 = sqrtf(vaddv_f32(vmul_f32(v231, v231)));
  if (v232 < 0.0)
  {
    v233 = v230;
  }

  v234 = fminf(v224, v233);
  v235 = vextq_s8(v454, v454, 8uLL).u64[0];
  v236 = vsub_f32(v115, *v454.i8);
  v237 = vsub_f32(v235, *v454.i8);
  v238 = fabsf(((-v236.f32[1] * v237.f32[0]) + (v236.f32[0] * v237.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v237, v237))), 0.01));
  v239 = vmuls_lane_f32(v237.f32[1], v236, 1) + (v236.f32[0] * v237.f32[0]);
  v240 = sqrtf(vaddv_f32(vmul_f32(v236, v236)));
  if (v239 >= 0.0)
  {
    v240 = v238;
  }

  v241 = vsub_f32(v115, v235);
  v242 = COERCE_FLOAT(vmul_f32(v237, v241).i32[1]) + (v241.f32[0] * v237.f32[0]);
  v243 = sqrtf(vaddv_f32(vmul_f32(v241, v241)));
  if (v242 < 0.0)
  {
    v243 = v240;
  }

  v244 = fminf(v234, v243);
  v245 = vextq_s8(v455, v455, 8uLL).u64[0];
  v246 = vsub_f32(v115, *v455.i8);
  v247 = vsub_f32(v245, *v455.i8);
  v248 = fabsf(((-v246.f32[1] * v247.f32[0]) + (v246.f32[0] * v247.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v247, v247))), 0.01));
  v249 = vmuls_lane_f32(v247.f32[1], v246, 1) + (v246.f32[0] * v247.f32[0]);
  v250 = sqrtf(vaddv_f32(vmul_f32(v246, v246)));
  if (v249 >= 0.0)
  {
    v250 = v248;
  }

  v251 = vsub_f32(v115, v245);
  v252 = COERCE_FLOAT(vmul_f32(v247, v251).i32[1]) + (v251.f32[0] * v247.f32[0]);
  v253 = sqrtf(vaddv_f32(vmul_f32(v251, v251)));
  if (v252 < 0.0)
  {
    v253 = v250;
  }

  v254 = fminf(v244, v253);
  v255 = vextq_s8(v456, v456, 8uLL).u64[0];
  v256 = vsub_f32(v115, *v456.i8);
  v257 = vsub_f32(v255, *v456.i8);
  v258 = fabsf(((-v256.f32[1] * v257.f32[0]) + (v256.f32[0] * v257.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v257, v257))), 0.01));
  v259 = vmuls_lane_f32(v257.f32[1], v256, 1) + (v256.f32[0] * v257.f32[0]);
  v260 = sqrtf(vaddv_f32(vmul_f32(v256, v256)));
  if (v259 >= 0.0)
  {
    v260 = v258;
  }

  v261 = vsub_f32(v115, v255);
  v262 = COERCE_FLOAT(vmul_f32(v257, v261).i32[1]) + (v261.f32[0] * v257.f32[0]);
  v263 = sqrtf(vaddv_f32(vmul_f32(v261, v261)));
  if (v262 < 0.0)
  {
    v263 = v260;
  }

  v264 = fminf(v254, v263);
  v265 = vextq_s8(v457, v457, 8uLL).u64[0];
  v266 = vsub_f32(v115, *v457.i8);
  v267 = vsub_f32(v265, *v457.i8);
  v268 = fabsf(((-v266.f32[1] * v267.f32[0]) + (v266.f32[0] * v267.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v267, v267))), 0.01));
  v269 = vmuls_lane_f32(v267.f32[1], v266, 1) + (v266.f32[0] * v267.f32[0]);
  v270 = sqrtf(vaddv_f32(vmul_f32(v266, v266)));
  if (v269 >= 0.0)
  {
    v270 = v268;
  }

  v271 = vsub_f32(v115, v265);
  v272 = COERCE_FLOAT(vmul_f32(v267, v271).i32[1]) + (v271.f32[0] * v267.f32[0]);
  v273 = sqrtf(vaddv_f32(vmul_f32(v271, v271)));
  if (v272 < 0.0)
  {
    v273 = v270;
  }

  v274 = fminf(v264, v273);
  v275 = vextq_s8(v458, v458, 8uLL).u64[0];
  v276 = vsub_f32(v115, *v458.i8);
  v277 = vsub_f32(v275, *v458.i8);
  v278 = fabsf(((-v276.f32[1] * v277.f32[0]) + (v276.f32[0] * v277.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v277, v277))), 0.01));
  v279 = vmuls_lane_f32(v277.f32[1], v276, 1) + (v276.f32[0] * v277.f32[0]);
  v280 = sqrtf(vaddv_f32(vmul_f32(v276, v276)));
  if (v279 >= 0.0)
  {
    v280 = v278;
  }

  v281 = vsub_f32(v115, v275);
  v282 = COERCE_FLOAT(vmul_f32(v277, v281).i32[1]) + (v281.f32[0] * v277.f32[0]);
  v283 = sqrtf(vaddv_f32(vmul_f32(v281, v281)));
  if (v282 < 0.0)
  {
    v283 = v280;
  }

  v284 = fminf(v274, v283);
  v285 = vextq_s8(v459, v459, 8uLL).u64[0];
  v286 = vsub_f32(v115, *v459.i8);
  v287 = vsub_f32(v285, *v459.i8);
  v288 = fabsf(((-v286.f32[1] * v287.f32[0]) + (v286.f32[0] * v287.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v287, v287))), 0.01));
  v289 = vmuls_lane_f32(v287.f32[1], v286, 1) + (v286.f32[0] * v287.f32[0]);
  v290 = sqrtf(vaddv_f32(vmul_f32(v286, v286)));
  if (v289 >= 0.0)
  {
    v290 = v288;
  }

  v291 = vsub_f32(v115, v285);
  v292 = COERCE_FLOAT(vmul_f32(v287, v291).i32[1]) + (v291.f32[0] * v287.f32[0]);
  v293 = sqrtf(vaddv_f32(vmul_f32(v291, v291)));
  if (v292 < 0.0)
  {
    v293 = v290;
  }

  v294 = fminf(v284, v293);
  v295 = vextq_s8(v460, v460, 8uLL).u64[0];
  v296 = vsub_f32(v115, *v460.i8);
  v297 = vsub_f32(v295, *v460.i8);
  v298 = fabsf(((-v296.f32[1] * v297.f32[0]) + (v296.f32[0] * v297.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v297, v297))), 0.01));
  v299 = vmuls_lane_f32(v297.f32[1], v296, 1) + (v296.f32[0] * v297.f32[0]);
  v300 = sqrtf(vaddv_f32(vmul_f32(v296, v296)));
  if (v299 >= 0.0)
  {
    v300 = v298;
  }

  v301 = vsub_f32(v115, v295);
  v302 = COERCE_FLOAT(vmul_f32(v297, v301).i32[1]) + (v301.f32[0] * v297.f32[0]);
  v303 = sqrtf(vaddv_f32(vmul_f32(v301, v301)));
  if (v302 < 0.0)
  {
    v303 = v300;
  }

  v304 = fminf(v294, v303);
  v305 = vextq_s8(v461, v461, 8uLL).u64[0];
  v306 = vsub_f32(v115, *v461.i8);
  v307 = vsub_f32(v305, *v461.i8);
  v308 = fabsf(((-v306.f32[1] * v307.f32[0]) + (v306.f32[0] * v307.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v307, v307))), 0.01));
  v309 = vmuls_lane_f32(v307.f32[1], v306, 1) + (v306.f32[0] * v307.f32[0]);
  v310 = sqrtf(vaddv_f32(vmul_f32(v306, v306)));
  if (v309 >= 0.0)
  {
    v310 = v308;
  }

  v311 = vsub_f32(v115, v305);
  v312 = COERCE_FLOAT(vmul_f32(v307, v311).i32[1]) + (v311.f32[0] * v307.f32[0]);
  v313 = sqrtf(vaddv_f32(vmul_f32(v311, v311)));
  if (v312 < 0.0)
  {
    v313 = v310;
  }

  v314 = fminf(v304, v313);
  v315 = vextq_s8(v462, v462, 8uLL).u64[0];
  v316 = vsub_f32(v115, *v462.i8);
  v317 = vsub_f32(v315, *v462.i8);
  v318 = fabsf(((-v316.f32[1] * v317.f32[0]) + (v316.f32[0] * v317.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v317, v317))), 0.01));
  v319 = vmuls_lane_f32(v317.f32[1], v316, 1) + (v316.f32[0] * v317.f32[0]);
  v320 = sqrtf(vaddv_f32(vmul_f32(v316, v316)));
  if (v319 >= 0.0)
  {
    v320 = v318;
  }

  v321 = vsub_f32(v115, v315);
  v322 = COERCE_FLOAT(vmul_f32(v317, v321).i32[1]) + (v321.f32[0] * v317.f32[0]);
  v323 = sqrtf(vaddv_f32(vmul_f32(v321, v321)));
  if (v322 < 0.0)
  {
    v323 = v320;
  }

  v324 = fminf(v314, v323);
  v325 = vextq_s8(v463, v463, 8uLL).u64[0];
  v326 = vsub_f32(v115, *v463.i8);
  v327 = vsub_f32(v325, *v463.i8);
  v328 = fabsf(((-v326.f32[1] * v327.f32[0]) + (v326.f32[0] * v327.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v327, v327))), 0.01));
  v329 = vmuls_lane_f32(v327.f32[1], v326, 1) + (v326.f32[0] * v327.f32[0]);
  v330 = sqrtf(vaddv_f32(vmul_f32(v326, v326)));
  if (v329 >= 0.0)
  {
    v330 = v328;
  }

  v331 = vsub_f32(v115, v325);
  v332 = COERCE_FLOAT(vmul_f32(v327, v331).i32[1]) + (v331.f32[0] * v327.f32[0]);
  v333 = sqrtf(vaddv_f32(vmul_f32(v331, v331)));
  if (v332 < 0.0)
  {
    v333 = v330;
  }

  v334 = fminf(v324, v333);
  v335 = vextq_s8(v464, v464, 8uLL).u64[0];
  v336 = vsub_f32(v115, *v464.i8);
  v337 = vsub_f32(v335, *v464.i8);
  v338 = fabsf(((-v336.f32[1] * v337.f32[0]) + (v336.f32[0] * v337.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v337, v337))), 0.01));
  v339 = vmuls_lane_f32(v337.f32[1], v336, 1) + (v336.f32[0] * v337.f32[0]);
  v340 = sqrtf(vaddv_f32(vmul_f32(v336, v336)));
  if (v339 >= 0.0)
  {
    v340 = v338;
  }

  v341 = vsub_f32(v115, v335);
  v342 = COERCE_FLOAT(vmul_f32(v337, v341).i32[1]) + (v341.f32[0] * v337.f32[0]);
  v343 = sqrtf(vaddv_f32(vmul_f32(v341, v341)));
  if (v342 < 0.0)
  {
    v343 = v340;
  }

  v344 = fminf(v334, v343);
  v345 = vextq_s8(v465, v465, 8uLL).u64[0];
  v346 = vsub_f32(v115, *v465.i8);
  v347 = vsub_f32(v345, *v465.i8);
  v348 = fabsf(((-v346.f32[1] * v347.f32[0]) + (v346.f32[0] * v347.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v347, v347))), 0.01));
  v349 = vmuls_lane_f32(v347.f32[1], v346, 1) + (v346.f32[0] * v347.f32[0]);
  v350 = sqrtf(vaddv_f32(vmul_f32(v346, v346)));
  if (v349 >= 0.0)
  {
    v350 = v348;
  }

  v351 = vsub_f32(v115, v345);
  v352 = COERCE_FLOAT(vmul_f32(v347, v351).i32[1]) + (v351.f32[0] * v347.f32[0]);
  v353 = sqrtf(vaddv_f32(vmul_f32(v351, v351)));
  if (v352 < 0.0)
  {
    v353 = v350;
  }

  v354 = fminf(v344, v353);
  v355 = vextq_s8(v466, v466, 8uLL).u64[0];
  v356 = vsub_f32(v115, *v466.i8);
  v357 = vsub_f32(v355, *v466.i8);
  v358 = fabsf(((-v356.f32[1] * v357.f32[0]) + (v356.f32[0] * v357.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v357, v357))), 0.01));
  v359 = vmuls_lane_f32(v357.f32[1], v356, 1) + (v356.f32[0] * v357.f32[0]);
  v360 = sqrtf(vaddv_f32(vmul_f32(v356, v356)));
  if (v359 >= 0.0)
  {
    v360 = v358;
  }

  v361 = vsub_f32(v115, v355);
  v362 = COERCE_FLOAT(vmul_f32(v357, v361).i32[1]) + (v361.f32[0] * v357.f32[0]);
  v363 = sqrtf(vaddv_f32(vmul_f32(v361, v361)));
  if (v362 < 0.0)
  {
    v363 = v360;
  }

  v364 = fminf(v354, v363);
  v365 = vextq_s8(v467, v467, 8uLL).u64[0];
  v366 = vsub_f32(v115, *v467.i8);
  v367 = vsub_f32(v365, *v467.i8);
  v368 = fabsf(((-v366.f32[1] * v367.f32[0]) + (v366.f32[0] * v367.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v367, v367))), 0.01));
  v369 = vmuls_lane_f32(v367.f32[1], v366, 1) + (v366.f32[0] * v367.f32[0]);
  v370 = sqrtf(vaddv_f32(vmul_f32(v366, v366)));
  if (v369 >= 0.0)
  {
    v370 = v368;
  }

  v371 = vsub_f32(v115, v365);
  v372 = COERCE_FLOAT(vmul_f32(v367, v371).i32[1]) + (v371.f32[0] * v367.f32[0]);
  v373 = sqrtf(vaddv_f32(vmul_f32(v371, v371)));
  if (v372 < 0.0)
  {
    v373 = v370;
  }

  v374 = fminf(v364, v373);
  v375 = vextq_s8(v468, v468, 8uLL).u64[0];
  v376 = vsub_f32(v115, *v468.i8);
  v377 = vsub_f32(v375, *v468.i8);
  v378 = fabsf(((-v376.f32[1] * v377.f32[0]) + (v376.f32[0] * v377.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v377, v377))), 0.01));
  v379 = vmuls_lane_f32(v377.f32[1], v376, 1) + (v376.f32[0] * v377.f32[0]);
  v380 = sqrtf(vaddv_f32(vmul_f32(v376, v376)));
  if (v379 >= 0.0)
  {
    v380 = v378;
  }

  v381 = vsub_f32(v115, v375);
  v382 = COERCE_FLOAT(vmul_f32(v377, v381).i32[1]) + (v381.f32[0] * v377.f32[0]);
  v383 = sqrtf(vaddv_f32(vmul_f32(v381, v381)));
  if (v382 < 0.0)
  {
    v383 = v380;
  }

  v384 = fminf(v374, v383);
  v385 = vextq_s8(v469, v469, 8uLL).u64[0];
  v386 = vsub_f32(v115, *v469.i8);
  v387 = vsub_f32(v385, *v469.i8);
  v388 = fabsf(((-v386.f32[1] * v387.f32[0]) + (v386.f32[0] * v387.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v387, v387))), 0.01));
  v389 = vmuls_lane_f32(v387.f32[1], v386, 1) + (v386.f32[0] * v387.f32[0]);
  v390 = sqrtf(vaddv_f32(vmul_f32(v386, v386)));
  if (v389 >= 0.0)
  {
    v390 = v388;
  }

  v391 = vsub_f32(v115, v385);
  v392 = COERCE_FLOAT(vmul_f32(v387, v391).i32[1]) + (v391.f32[0] * v387.f32[0]);
  v393 = sqrtf(vaddv_f32(vmul_f32(v391, v391)));
  if (v392 < 0.0)
  {
    v393 = v390;
  }

  v394 = fminf(v384, v393);
  v395 = vextq_s8(v470, v470, 8uLL).u64[0];
  v396 = vsub_f32(v115, *v470.i8);
  v397 = vsub_f32(v395, *v470.i8);
  v398 = fabsf(((-v396.f32[1] * v397.f32[0]) + (v396.f32[0] * v397.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v397, v397))), 0.01));
  v399 = vmuls_lane_f32(v397.f32[1], v396, 1) + (v396.f32[0] * v397.f32[0]);
  v400 = sqrtf(vaddv_f32(vmul_f32(v396, v396)));
  if (v399 >= 0.0)
  {
    v400 = v398;
  }

  v401 = vsub_f32(v115, v395);
  v402 = COERCE_FLOAT(vmul_f32(v397, v401).i32[1]) + (v401.f32[0] * v397.f32[0]);
  v403 = sqrtf(vaddv_f32(vmul_f32(v401, v401)));
  if (v402 < 0.0)
  {
    v403 = v400;
  }

  v404 = fminf(v394, v403);
  v405 = vextq_s8(v471, v471, 8uLL).u64[0];
  v406 = vsub_f32(v115, *v471.i8);
  v407 = vsub_f32(v405, *v471.i8);
  v408 = fabsf(((-v406.f32[1] * v407.f32[0]) + (v406.f32[0] * v407.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v407, v407))), 0.01));
  v409 = vmuls_lane_f32(v407.f32[1], v406, 1) + (v406.f32[0] * v407.f32[0]);
  v410 = sqrtf(vaddv_f32(vmul_f32(v406, v406)));
  if (v409 >= 0.0)
  {
    v410 = v408;
  }

  v411 = vsub_f32(v115, v405);
  v412 = COERCE_FLOAT(vmul_f32(v407, v411).i32[1]) + (v411.f32[0] * v407.f32[0]);
  v413 = sqrtf(vaddv_f32(vmul_f32(v411, v411)));
  if (v412 < 0.0)
  {
    v413 = v410;
  }

  v414 = fminf(v404, v413);
  v415 = vextq_s8(v472, v472, 8uLL).u64[0];
  v416 = vsub_f32(v115, *v472.i8);
  v417 = vsub_f32(v415, *v472.i8);
  v119 = (vmuls_lane_f32(v417.f32[1], v416, 1) + (v416.f32[0] * v417.f32[0])) < 0.0;
  v418 = fabsf(((-v416.f32[1] * v417.f32[0]) + (v416.f32[0] * v417.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v417, v417))), 0.01));
  v419 = sqrtf(vaddv_f32(vmul_f32(v416, v416)));
  if (!v119)
  {
    v419 = v418;
  }

  v420 = vsub_f32(v115, v415);
  v421 = COERCE_FLOAT(vmul_f32(v417, v420).i32[1]) + (v420.f32[0] * v417.f32[0]);
  v422 = sqrtf(vaddv_f32(vmul_f32(v420, v420)));
  if (v421 < 0.0)
  {
    v422 = v419;
  }

  v423 = fminf(v414, v422);
  v424 = vextq_s8(v473, v473, 8uLL).u64[0];
  v425 = vsub_f32(v115, *v473.i8);
  v426 = vsub_f32(v424, *v473.i8);
  v427 = vmuls_lane_f32(v426.f32[1], v425, 1) + (v425.f32[0] * v426.f32[0]);
  v428 = fabsf(((-v425.f32[1] * v426.f32[0]) + (v425.f32[0] * v426.f32[1])) / fmaxf(sqrtf(vaddv_f32(vmul_f32(v426, v426))), 0.01));
  v429 = sqrtf(vaddv_f32(vmul_f32(v425, v425)));
  if (v427 < 0.0)
  {
    v428 = v429;
  }

  v430 = vsub_f32(v115, v424);
  v431 = COERCE_FLOAT(vmul_f32(v426, v430).i32[1]) + (v430.f32[0] * v426.f32[0]);
  v432 = sqrtf(vaddv_f32(vmul_f32(v430, v430)));
  if (v431 < 0.0)
  {
    v432 = v428;
  }

  v433 = fminf(v423, v432);
  v434 = 1.0;
  if ((v114 - v433) <= 1.0)
  {
    v434 = v114 - v433;
  }

  v435 = 0.0;
  if ((v114 - v433) >= 0.0)
  {
    v435 = v434;
  }

  v119 = v433 < v114;
  v436 = (v435 * -2.0 + 3.0) * v435 * v435;
  v437 = v433 - (v114 + -1.0);
  v438 = vmulq_n_f32(v474, v436);
  v439 = v119;
  v440 = v437;
  *&result = vmulq_n_f32(vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v440 < 0.0)), 0x1FuLL)), v474, vandq_s8(v438, vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v439)), 0x1FuLL)))), v475).u64[0];
  return result;
}

objc_object *metaFilterForFilter(uint64_t a1, objc_object *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  if (metaFilterForFilter::onceToken != -1)
  {
    metaFilterForFilter_cold_1();
  }

  superclass = objc_opt_class();
  v3 = [NSStringFromClass(superclass) stringByAppendingString:@"_wrapper"];
  v4 = wrappedClassDict;
  objc_sync_enter(wrappedClassDict);
  v5 = [MEMORY[0x1E696B098] valueWithPointer:objc_opt_class()];
  v6 = [wrappedClassDict objectForKeyedSubscript:v5];
  if (v6)
  {
    ClassPair = [v6 pointerValue];
    if (ClassPair)
    {
      objc_sync_exit(v4);
      goto LABEL_64;
    }
  }

  ClassPair = objc_allocateClassPair(superclass, [(NSString *)v3 UTF8String], 0x100uLL);
  v8 = [MEMORY[0x1E696B098] valueWithPointer:ClassPair];
  [wrappedClassDict setObject:v8 forKeyedSubscript:v5];
  objc_sync_exit(v4);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v9 = [(objc_object *)a2 inputKeys];
  v10 = [v9 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v10)
  {
    v11 = *v57;
    do
    {
      v12 = 0;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v56 + 1) + 8 * v12);
        InstanceVariable = object_getInstanceVariable(a2, [v13 UTF8String], 0);
        if (!InstanceVariable)
        {
          NSLog(&cfstr_IvarIsNilForKe.isa, v13);
          goto LABEL_31;
        }

        TypeEncoding = ivar_getTypeEncoding(InstanceVariable);
        v16 = class_getInstanceVariable(ClassPair, [v13 UTF8String]);
        if (v16)
        {
          v17 = ivar_getTypeEncoding(v16);
          if (v17 && strcmp(TypeEncoding, v17))
          {
            NSLog(&cfstr_NotAddingNewKe.isa, TypeEncoding, v17);
          }

          goto LABEL_31;
        }

        std::string::basic_string[abi:nn200100]<0>(&__p, TypeEncoding);
        Class = 0;
        *&name.__r_.__value_.__r.__words[1] = 0uLL;
        v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v21 = p_p->__r_.__value_.__s.__data_[0] - 64;
        if (v21 <= 0x33)
        {
          if (((1 << v21) & 0xA1258000A120CLL) != 0)
          {
            *(&name.__r_.__value_.__s + 23) = 8;
            name.__r_.__value_.__r.__words[0] = 0x7265626D754E534ELL;
            p_name = &name;
            goto LABEL_23;
          }

          if (p_p->__r_.__value_.__s.__data_[0] == 64)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            if (size < 2)
            {
              v27 = -1;
            }

            else
            {
              v25 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v25 = __p.__r_.__value_.__r.__words[0];
              }

              v26 = memchr(&v25->__r_.__value_.__l.__data_ + 1, 34, size - 1);
              if (v26)
              {
                v27 = v26 - p_p;
              }

              else
              {
                v27 = -1;
              }
            }

            if (size <= v27 + 1)
            {
              v29 = -1;
              if (size)
              {
                goto LABEL_49;
              }

              v51 = -1;
LABEL_53:
              v31 = v51;
            }

            else
            {
              v28 = memchr(&p_p->__r_.__value_.__l.__data_ + v27 + 1, 34, size - (v27 + 1));
              v29 = v28 - p_p;
              if (!v28)
              {
                v29 = -1;
              }

LABEL_49:
              v51 = v29;
              v30 = memchr(p_p, 60, size);
              if (!v30)
              {
                goto LABEL_53;
              }

              v31 = v30 - p_p;
              if (v30 - p_p == -1)
              {
                goto LABEL_53;
              }
            }

            if (v27 == -1 || v31 == -1 || (v32 = v31 - v27, v32 < 2))
            {
              std::string::basic_string[abi:nn200100]<0>(&v61, "NSObject");
            }

            else
            {
              std::string::basic_string(&v61, &__p, v27 + 1, v32 - 1, &v63);
            }

            name = v61;
            if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_name = &name;
            }

            else
            {
              p_name = v61.__r_.__value_.__r.__words[0];
            }

LABEL_23:
            Class = objc_getClass(p_name);
            if (SHIBYTE(name.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(name.__r_.__value_.__l.__data_);
            }

            v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }
        }

        if (v19 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (!Class)
          {
            goto LABEL_31;
          }
        }

        else if (!Class)
        {
          goto LABEL_31;
        }

        v23 = [[NSStringFromClass(Class) stringByAppendingString:@" *"] UTF8String];
        if (!class_addIvar(ClassPair, [v13 UTF8String], 8uLL, 3u, v23))
        {
          metaFilterForFilter_cold_2();
        }

LABEL_31:
        ++v12;
      }

      while (v10 != v12);
      v33 = [v9 countByEnumeratingWithState:&v56 objects:v65 count:16];
      v10 = v33;
    }

    while (v33);
  }

  v34 = class_addIvar(ClassPair, "originalObject", 8uLL, 3u, "@CIFilter");
  v35 = class_addIvar(ClassPair, "inputOutputImage", 8uLL, 3u, "@CIImage");
  InstanceMethod = class_getInstanceMethod(superclass, sel_valueForUndefinedKey_);
  v37 = method_getTypeEncoding(InstanceMethod);
  v38 = class_addMethod(ClassPair, sel_valueForUndefinedKey_, valueForUndefinedKey, v37);
  v39 = class_getInstanceMethod(superclass, sel_setValue_forUndefinedKey_);
  v40 = method_getTypeEncoding(v39);
  v41 = class_addMethod(ClassPair, sel_setValue_forUndefinedKey_, setValueForUndefinedKey, v40);
  if (((v34 && v35 && v38) & v41 & class_addMethod(ClassPair, sel_valueForKey_, valueForKey, v37) & 1) == 0)
  {
    metaFilterForFilter_cold_3();
  }

LABEL_64:
  v42 = objc_alloc_init(ClassPair);
  setValueForObject(v42, &cfstr_Originalobject.isa, a2);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v43 = [(objc_object *)a2 inputKeys];
  v44 = [v43 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v44)
  {
    v45 = *v53;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v53 != v45)
        {
          objc_enumerationMutation(v43);
        }

        v47 = *(*(&v52 + 1) + 8 * i);
        v48 = [(objc_object *)a2 valueForKey:v47];
        setValueForObject(v42, v47, v48);
        if ([(objc_object *)v42 valueForUndefinedKey:v47]!= v48)
        {
          metaFilterForFilter_cold_4();
        }
      }

      v44 = [v43 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v44);
  }

  return v42;
}

id __metaFilterForFilter_block_invoke()
{
  result = [MEMORY[0x1E695DF90] dictionary];
  wrappedClassDict = result;
  return result;
}

objc_ivar *valueForUndefinedKey(objc_object *a1, objc_selector *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5[0] = 0;
  va_copy(&v5[1], va);
  result = object_getInstanceVariable(a1, "originalObject", v5);
  if (result)
  {
    return [object_getIvar(a1 result)];
  }

  return result;
}

objc_ivar *setValueForUndefinedKey(objc_object *a1, objc_selector *a2, objc_object *a3, NSString *a4, ...)
{
  result = getValueForObject(a1, &cfstr_Originalobject.isa);
  if (result)
  {
    return setValueForObject(result, a4, a3);
  }

  return result;
}

Ivar valueForKey(objc_object *a1, objc_selector *a2, NSString *a3, ...)
{
  va_start(va, a3);
  if (object_getInstanceVariable(a1, [(NSString *)a3 UTF8String:0], &v5))
  {
    return getValueForObject(a1, a3);
  }

  result = object_getInstanceVariable(a1, "originalObject", &v5);
  if (result)
  {
    return [object_getIvar(a1 result)];
  }

  return result;
}

objc_ivar *setValueForObject(objc_object *a1, NSString *a2, objc_object *a3)
{
  result = object_getInstanceVariable(a1, [(NSString *)a2 UTF8String], 0);
  if (result)
  {
    v6 = result;
    Ivar = object_getIvar(a1, result);
    if (Ivar != a3)
    {
      if (Ivar)
      {
      }

      object_setIvar(a1, v6, a3);
      if (a3)
      {
        v8 = a3;
      }
    }

    result = object_getIvar(a1, v6);
    if (result != a3)
    {
      setValueForObject();
    }
  }

  return result;
}

objc_ivar *getValueForObject(objc_object *a1, NSString *a2)
{
  result = object_getInstanceVariable(a1, [(NSString *)a2 UTF8String], 0);
  if (result)
  {

    return object_getIvar(a1, result);
  }

  return result;
}

void *pixelFormatForMetalTexture(void *result)
{
  if (result)
  {
    return [result pixelFormat];
  }

  return result;
}

uint64_t CIMetalFormatForFormat(int a1, int a2)
{
  if (a1 > 1284)
  {
    if (a1 > 2052)
    {
      if (a1 > 2566)
      {
        if (a1 > 3080)
        {
          switch(a1)
          {
            case 3081:
              return 552;
            case 4360:
              return 551;
            case 4616:
              return 550;
          }
        }

        else
        {
          switch(a1)
          {
            case 2567:
              return 555;
            case 2569:
              return 553;
            case 3079:
              return 554;
          }
        }
      }

      else if (a1 > 2308)
      {
        switch(a1)
        {
          case 2309:
            return 55;
          case 2310:
            return 105;
          case 2312:
            return 125;
        }
      }

      else
      {
        switch(a1)
        {
          case 2053:
            return 25;
          case 2054:
            return 65;
          case 2056:
            return 115;
        }
      }

      return 0;
    }

    if (a1 <= 1553)
    {
      if (a1 <= 1297)
      {
        if (a1 == 1285)
        {
          return 588;
        }

        if (a1 == 1286)
        {
          return 589;
        }

        return 0;
      }

      if (a1 != 1298)
      {
        if (a1 != 1299)
        {
          if (a1 != 1302)
          {
            return 0;
          }

          return 547;
        }

        return 548;
      }
    }

    else
    {
      if (a1 > 1796)
      {
        switch(a1)
        {
          case 1797:
            return 20;
          case 1798:
            return 60;
          case 1800:
            return 110;
        }

        return 0;
      }

      if (a1 != 1554)
      {
        if (a1 != 1555)
        {
          if (a1 != 1558)
          {
            return 0;
          }

          return 547;
        }

        return 548;
      }
    }

    return 546;
  }

  if (a1 > 530)
  {
    if (a1 <= 783)
    {
      if (a1 <= 533)
      {
        if (a1 != 531)
        {
          if (a1 != 532)
          {
            return 240;
          }

          return 241;
        }

        return 542;
      }

      if (a1 != 534)
      {
        if (a1 == 773)
        {
          return 576;
        }

        if (a1 == 774)
        {
          return 578;
        }

        return 0;
      }

      return 541;
    }

    if (a1 <= 789)
    {
      if (a1 == 784)
      {
        return 94;
      }

      if (a1 == 785)
      {
        return 90;
      }

      if (a1 != 787)
      {
        return 0;
      }

      return 545;
    }

    switch(a1)
    {
      case 790:
        return 544;
      case 1043:
        return 545;
      case 1046:
        return 544;
    }

    return 0;
  }

  if (a1 > 273)
  {
    if (a1 > 276)
    {
      if (a1 == 277)
      {
        return 240;
      }

      if (a1 == 278)
      {
        return 541;
      }

      if (a1 != 530)
      {
        return 0;
      }
    }

    else if (a1 != 274)
    {
      if (a1 != 275)
      {
        return 241;
      }

      return 542;
    }

    return 540;
  }

  if (a1 <= 261)
  {
    if (a1 == 257)
    {
      return 1;
    }

    if (a1 != 261)
    {
      return 0;
    }

    v3 = a2 == 0;
    v4 = 10;
  }

  else
  {
    switch(a1)
    {
      case 262:
        v3 = a2 == 0;
        v4 = 30;
        break;
      case 264:
        v3 = a2 == 0;
        v4 = 70;
        break;
      case 266:
        v3 = a2 == 0;
        v4 = 80;
        break;
      default:
        return 0;
    }
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v4 + 1;
  }
}

void setInternalError(void *a1, id value)
{
  if (value)
  {
    objc_setAssociatedObject(a1, setInternalError, value, 0x301);
  }
}

uint64_t isImageConversionServiceProcess()
{
  if (isImageConversionServiceProcess_onceToken != -1)
  {
    isImageConversionServiceProcess_cold_1();
  }

  return isImageConversionServiceProcess_isICS;
}

void *__isImageConversionServiceProcess_block_invoke()
{
  result = [MEMORY[0x1E696AE30] processInfo];
  if (result)
  {
    result = [objc_msgSend(result "processName")];
  }

  isImageConversionServiceProcess_isICS = result;
  return result;
}

uint64_t isQuickLookSideCar()
{
  if (isQuickLookSideCar_onceToken != -1)
  {
    isQuickLookSideCar_cold_1();
  }

  return isQuickLookSideCar_isQL;
}

uint64_t __isQuickLookSideCar_block_invoke()
{
  result = [MEMORY[0x1E696AE30] processInfo];
  if (result)
  {
    v1 = result;
    result = [result processName];
    if (result)
    {
      v2 = [v1 processName];
      if ([v2 containsString:@"com.apple.quicklook"] & 1) != 0 || (objc_msgSend(v2, "containsString:", @"com.apple.sidecar"))
      {
        result = 1;
      }

      else
      {
        result = [v2 containsString:@"ContinuityCamera"];
      }

      isQuickLookSideCar_isQL = result;
    }
  }

  return result;
}

uint64_t isMobileSlideShowOrCamera()
{
  if (isMobileSlideShowOrCamera_onceToken != -1)
  {
    isMobileSlideShowOrCamera_cold_1();
  }

  return isMobileSlideShowOrCamera_isMobileSlideShowOrCamera;
}

uint64_t __isMobileSlideShowOrCamera_block_invoke()
{
  result = [MEMORY[0x1E696AE30] processInfo];
  if (result)
  {
    v1 = result;
    if ([objc_msgSend(result "processName")])
    {
      result = 1;
    }

    else
    {
      result = [objc_msgSend(v1 "processName")];
    }
  }

  isMobileSlideShowOrCamera_isMobileSlideShowOrCamera = result;
  return result;
}

uint64_t can_use_metal()
{
  if (can_use_metal_once != -1)
  {
    can_use_metal_cold_1();
  }

  return can_use_metal_canUse;
}

void __can_use_metal_block_invoke()
{
  if (CI_ENABLE_METAL_GPU())
  {
    if (CI_ENABLE_METAL_GPU())
    {
      v0 = MTLCreateSystemDefaultDevice();
      if (v0)
      {
        can_use_metal_canUse = 1;
      }
    }

    else
    {
      v0 = 0;
    }

    if ((can_use_metal_canUse & 1) == 0)
    {
      v2 = ci_logger_api();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __can_use_metal_block_invoke_cold_1();
      }
    }
  }

  else
  {
    v1 = ci_logger_api();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __can_use_metal_block_invoke_cold_2();
    }
  }
}

id CIMetalCopyDefaultDevice()
{
  if (!CI_ENABLE_METAL_GPU())
  {
    return 0;
  }

  return MTLCreateSystemDefaultDevice();
}

void *CIMetalDeviceIsA9OrHigher(void *a1, const char *a2)
{
  if (a1)
  {
    return [a1 supportsFamily:1003];
  }

  return a1;
}

void *CIMetalDeviceGetLimits(void *result, unint64_t *a2)
{
  if (a2)
  {
    v3 = result;
    v4 = [result maxTextureWidth2D];
    if (v4 >= [v3 maxTextureHeight2D])
    {
      v5 = [v3 maxTextureHeight2D];
    }

    else
    {
      v5 = [v3 maxTextureWidth2D];
    }

    *a2 = v5;
    if (v5 >= CI_MAX_TEXTURE_SIZE())
    {
      v6 = CI_MAX_TEXTURE_SIZE();
    }

    else
    {
      v6 = *a2;
    }

    *a2 = v6;
    v7 = [v3 maxComputeTextures];
    if (v7 >= [v3 maxComputeSamplers])
    {
      v8 = [v3 maxComputeSamplers];
    }

    else
    {
      v8 = [v3 maxComputeTextures];
    }

    a2[1] = v8;
    a2[2] = [v3 maxBufferLength];
    a2[3] = [v3 iosurfaceReadOnlyTextureAlignmentBytes];
    a2[4] = [v3 iosurfaceTextureAlignmentBytes];
    a2[5] = [v3 sharedMemorySize];
    result = [v3 dedicatedMemorySize];
    a2[6] = result;
  }

  return result;
}

void *CIMetalDeviceGetFeatures(void *result, _BYTE *a2)
{
  if (a2)
  {
    v3 = result;
    *a2 = [result supportsFamily:1003];
    a2[1] = [v3 supportsFamily:1004];
    a2[2] = [v3 supportsFamily:1006];
    result = [v3 supportsFamily:1004];
    a2[3] = result;
  }

  return result;
}

uint64_t CIFormatFromCIMetalTextureFormat(int a1, _BYTE *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  result = 0;
  if (a1 > 79)
  {
    if (a1 > 114)
    {
      if (a1 > 552)
      {
        switch(a1)
        {
          case 553:
            if (a2)
            {
              *a2 = 1;
            }

            v4 = &kCIFormatARGB10WideGamut;
            break;
          case 554:
            v4 = &kCIFormatRGB10WideLinear;
            break;
          case 555:
            if (a2)
            {
              *a2 = 1;
            }

            v4 = &kCIFormatRGB10WideGamut;
            break;
          default:
            return result;
        }
      }

      else
      {
        switch(a1)
        {
          case 115:
            v4 = &kCIFormatRGBAh;
            break;
          case 125:
            v4 = &kCIFormatRGBAf;
            break;
          case 552:
            v4 = &kCIFormatARGB10WideLinear;
            break;
          default:
            return result;
        }
      }

      return *v4;
    }

    if (a1 > 93)
    {
      switch(a1)
      {
        case '^':
          v4 = &kCIFormatA2RGB10;
          break;
        case 'i':
          v4 = &kCIFormatRGf;
          break;
        case 'n':
          v4 = &kCIFormatRGBA16;
          break;
        default:
          return result;
      }

      return *v4;
    }

    if (a1 != 80)
    {
      if (a1 != 81)
      {
        if (a1 != 90)
        {
          return result;
        }

        v4 = &kCIFormatA2BGR10;
        return *v4;
      }

      if (a2)
      {
        *a2 = 1;
      }
    }

    v4 = &kCIFormatBGRA8;
    return *v4;
  }

  if (a1 > 30)
  {
    if (a1 > 64)
    {
      if (a1 == 65)
      {
        v4 = &kCIFormatRGh;
      }

      else
      {
        if (a1 != 70)
        {
          if (a1 != 71)
          {
            return result;
          }

          if (a2)
          {
            *a2 = 1;
          }
        }

        v4 = &kCIFormatRGBA8;
      }

      return *v4;
    }

    if (a1 != 31)
    {
      if (a1 == 55)
      {
        v4 = &kCIFormatRf;
      }

      else
      {
        if (a1 != 60)
        {
          return result;
        }

        v4 = &kCIFormatRG16;
      }

      return *v4;
    }

    if (a2)
    {
      *a2 = 1;
    }

    goto LABEL_59;
  }

  if (a1 <= 19)
  {
    if (a1 == 1)
    {
      v4 = &kCIFormatA8;
    }

    else
    {
      if (a1 != 10)
      {
        if (a1 != 11)
        {
          return result;
        }

        if (a2)
        {
          *a2 = 1;
        }
      }

      v4 = &kCIFormatR8;
    }

    return *v4;
  }

  switch(a1)
  {
    case 20:
      v4 = &kCIFormatR16;
      return *v4;
    case 25:
      v4 = &kCIFormatRh;
      return *v4;
    case 30:
LABEL_59:
      v4 = &kCIFormatRG8;
      return *v4;
  }

  return result;
}

void *CIMetalTextureCreate(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  if (!a3)
  {
    return 0;
  }

  TextureDescriptor = CreateTextureDescriptor(a3, a4, a5, a6);
  v10 = TextureDescriptor;
  if (a6 == 3)
  {
    [TextureDescriptor setStorageMode:2];
  }

  v11 = [a2 newTextureWithDescriptor:v10];
  if (CI_ENABLE_METAL_LABEL())
  {
    [v11 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  return v11;
}

void *CreateTextureDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v5 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:a1 width:a2 height:a3 mipmapped:0];
  [v5 setUsage:0];
  if (a4)
  {
    [v5 setUsage:{objc_msgSend(v5, "usage") | 1}];
    if ((a4 & 2) == 0)
    {
LABEL_3:
      if ((a4 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [v5 setUsage:{objc_msgSend(v5, "usage") | 4}];
      if ((a4 & 0x4000) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v5 setUsage:{objc_msgSend(v5, "usage") | 2}];
  if ((a4 & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((a4 & 0x4000) != 0)
  {
LABEL_5:
    [v5 setUsage:{objc_msgSend(v5, "usage") | 0x4000}];
  }

  return v5;
}

void *CIMetalTextureCreateFromBuffer(uint64_t a1, void *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  if (!a3)
  {
    return 0;
  }

  TextureDescriptor = CreateTextureDescriptor(a3, a4, a5, a7);
  [TextureDescriptor setStorageMode:{objc_msgSend(a2, "storageMode")}];
  v11 = [a2 newTextureWithDescriptor:TextureDescriptor offset:0 bytesPerRow:a6];
  if (CI_ENABLE_METAL_LABEL())
  {
    [v11 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  return v11;
}

void *CIMetalTextureCreateFromIOSurface(uint64_t a1, void *a2, IOSurfaceRef buffer, size_t planeIndex, unsigned int a5, __int16 a6)
{
  WidthOfPlane = IOSurfaceGetWidthOfPlane(buffer, planeIndex);
  HeightOfPlane = IOSurfaceGetHeightOfPlane(buffer, planeIndex);

  return CIMetalTextureCreateFromPaddedIOSurface(WidthOfPlane, HeightOfPlane, a1, a2, buffer, planeIndex, a5, a6);
}

void *CIMetalTextureCreateFromPaddedIOSurface(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unsigned int a7, __int16 a8)
{
  if (!a5)
  {
    return 0;
  }

  v9 = 0;
  if (a2)
  {
    if (a1)
    {
      if (a7)
      {
        v9 = [a4 newTextureWithDescriptor:CreateTextureDescriptor(a7 iosurface:a1 plane:{a2, a8), a5, a6}];
        if (v9)
        {
          if (CI_ENABLE_METAL_LABEL())
          {
            [v9 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a3)}];
          }
        }
      }
    }
  }

  return v9;
}

uint64_t CIMetalSamplerCreate(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = objc_opt_new();
  v9 = v8;
  if (a3)
  {
    [v8 setMinFilter:1];
    [v9 setMagFilter:1];
  }

  if (a4)
  {
    [v9 setSAddressMode:4];
    [v9 setTAddressMode:4];
  }

  [v9 setNormalizedCoordinates:1];
  if (CI_ENABLE_METAL_LABEL())
  {
    [v9 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  v10 = [a2 newSamplerStateWithDescriptor:v9];

  return v10;
}

uint64_t CIMetalTextureSetBytes(void *a1, uint64_t a2, uint64_t a3)
{
  memset(v7, 0, 24);
  v7[3] = [a1 width];
  v7[4] = [a1 height];
  v7[5] = 1;
  return [a1 replaceRegion:v7 mipmapLevel:0 withBytes:a2 bytesPerRow:a3];
}

uint64_t CIMetalTextureGetBytes(void *a1, uint64_t a2, uint64_t a3)
{
  memset(v7, 0, 24);
  v7[3] = [a1 width];
  v7[4] = [a1 height];
  v7[5] = 1;
  return [a1 getBytes:a2 bytesPerRow:a3 fromRegion:v7 mipmapLevel:0];
}

BOOL CIMetalTextureWriteToFile(void *a1, uint64_t a2, char *a3)
{
  v5 = [a1 width];
  v6 = [a1 height];
  v7 = 0;
  if (v5)
  {
    v8 = v6;
    if (v6)
    {
      [a1 iosurface];
      v33 = 0;
      v9 = [a1 pixelFormat];
      if (!CIFormatFromCIMetalTextureFormat(v9, &v33) || ([a1 usage] & 1) == 0)
      {
        return 0;
      }

      v7 = 0;
      if (v9 > 109)
      {
        switch(v9)
        {
          case 'n':
            v10 = 4097;
            break;
          case 's':
            v10 = 4353;
            break;
          case '}':
            v10 = 8449;
            break;
          default:
            return v7;
        }
      }

      else if ((v9 - 70) < 2)
      {
        v10 = 1;
      }

      else if ((v9 - 80) >= 2)
      {
        if (v9 != 1)
        {
          return v7;
        }

        v10 = 7;
      }

      else
      {
        v10 = 8194;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v29 = 0u;
      [a1 device];
      [a1 pixelFormat];
      MTLPixelFormatGetInfoForDevice();
      v11 = *(&v30 + 1);
      v12 = v31;
      v13 = *(&v30 + 1) * v5;
      v14 = [MEMORY[0x1E695DF88] dataWithLength:*(&v30 + 1) * v5 * v8];
      memset(v28, 0, 24);
      v28[3] = v5;
      v28[4] = v8;
      v28[5] = 1;
      [a1 getBytes:objc_msgSend(v14 bytesPerRow:"mutableBytes") fromRegion:*(&v30 + 1) * v5 mipmapLevel:{v28, 0}];
      v15 = CGDataProviderCreateWithCFData(v14);
      v16 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v17 = CGImageCreate(v5, v8, 8 * v11 / v12, 8 * v11, v13, v16, v10, v15, 0, 0, kCGRenderingIntentDefault);
      if (v17 && (v18 = strlen(a3), (v19 = CFURLCreateFromFileSystemRepresentation(0, a3, v18, 0)) != 0))
      {
        v20 = v19;
        v21 = strstr(a3, ".jpg");
        v22 = strstr(a3, ".png");
        v23 = @"public.png";
        if (!v22)
        {
          v23 = @"public.tiff";
        }

        if (v21)
        {
          v24 = @"public.jpeg";
        }

        else
        {
          v24 = v23;
        }

        v25 = CGImageDestinationCreateWithURL(v20, v24, 1uLL, 0);
        if (v25)
        {
          v26 = v25;
          CGImageDestinationAddImage(v25, v17, 0);
          v7 = CGImageDestinationFinalize(v26);
          CFRelease(v26);
        }

        else
        {
          v7 = 0;
        }

        CFRelease(v20);
      }

      else
      {
        v7 = 0;
      }

      CGDataProviderRelease(v15);
      CGImageRelease(v17);
      CGColorSpaceRelease(v16);
    }
  }

  return v7;
}

void *CIMetalBufferCreate(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 newBufferWithLength:a3 options:0];
  if (CI_ENABLE_METAL_LABEL())
  {
    [v4 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  return v4;
}

void *CIMetalBufferCreateAndWrapData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 newBufferWithBytesNoCopy:a3 length:a4 options:0 deallocator:0];
  if (CI_ENABLE_METAL_LABEL())
  {
    [v5 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  return v5;
}

uint64_t CIGetHarvestingBinaryArchiveDict(uint64_t a1)
{
  v6[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CIGetHarvestingBinaryArchiveDict_block_invoke;
  block[3] = &unk_1E75C20F8;
  block[4] = v2;
  block[5] = a1;
  if (CIGetHarvestingBinaryArchiveDict_onceToken != -1)
  {
    dispatch_once(&CIGetHarvestingBinaryArchiveDict_onceToken, block);
  }

  v5[0] = @"bin";
  v5[1] = @"queue";
  v6[0] = CIGetHarvestingBinaryArchiveDict_bin;
  v6[1] = CIGetHarvestingBinaryArchiveDict_queue;
  v5[2] = @"path";
  v6[2] = CIGetHarvestingBinaryArchiveDict_binary_archive_file_path;
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:3];
}

uint64_t __CIGetHarvestingBinaryArchiveDict_block_invoke(uint64_t a1)
{
  v20 = 0;
  if (CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH())
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:CI_HARVEST_BIN_ARCHIVE_ABSOLUTE_PATH()];
  }

  else
  {
    v3 = [*(a1 + 32) temporaryDirectory];
    v2 = [objc_msgSend(v3 URLByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME())), "path"}];
  }

  v4 = v2;
  v19 = 0;
  if (![*(a1 + 32) fileExistsAtPath:v2 isDirectory:&v19] || (v19 & 1) == 0)
  {
    v18 = 0;
    [*(a1 + 32) createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:objc_msgSend(MEMORY[0x1E695DF20] error:{"dictionaryWithObject:forKey:", *MEMORY[0x1E696A378], *MEMORY[0x1E696A3A0]), &v18}];
    if (v18)
    {
      v5 = ci_logger_render();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_1(&v18);
      }
    }
  }

  v6 = CI_ADD_PROCESS_NAME_TO_BIN_ARCHIVE();
  v7 = MEMORY[0x1E696AEC0];
  if (v6)
  {
    v8 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v9 = [v7 stringWithFormat:@"%@/ci_archive_%@_%d.bin", v4, v8, objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), "processIdentifier")];
  }

  else
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/ci_archive.bin", v4, v16, v17];
  }

  v10 = v9;
  CIGetHarvestingBinaryArchiveDict_binary_archive_file_path = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"file:%@", v9];
  v11 = objc_opt_new();
  if ([*(a1 + 32) fileExistsAtPath:v10])
  {
    [v11 setUrl:{objc_msgSend(MEMORY[0x1E695DFF8], "URLWithString:", CIGetHarvestingBinaryArchiveDict_binary_archive_file_path)}];
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CIGetHarvestingBinaryArchiveDict_bin = [v12 newBinaryArchiveWithDescriptor:v11 error:&v20];
    if (CIGetHarvestingBinaryArchiveDict_bin)
    {
      goto LABEL_20;
    }
  }

  else if (CIGetHarvestingBinaryArchiveDict_bin)
  {
    goto LABEL_20;
  }

  v13 = ci_logger_render();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_2(v11, &v20);
  }

LABEL_20:

  CIGetHarvestingBinaryArchiveDict_queue = dispatch_queue_create("CoreImageBinaryArchive", 0);
  if (!CIGetHarvestingBinaryArchiveDict_queue)
  {
    v14 = ci_logger_render();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __CIGetHarvestingBinaryArchiveDict_block_invoke_cold_3();
    }
  }

  result = CI_BIN_ARCHIVE_SERIALIZATION_METHOD();
  if (!result)
  {
    return atexit(serializeHarvestedBinaryArchiveExit);
  }

  return result;
}

void serializeHarvestedBinaryArchiveExit()
{
  v0 = CIGetHarvestingBinaryArchiveDict(0);
  v1 = [v0 objectForKeyedSubscript:@"bin"];
  v2 = [v0 objectForKeyedSubscript:@"queue"];
  v3 = [v0 objectForKeyedSubscript:@"path"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __serializeHarvestedBinaryArchiveExit_block_invoke;
  v4[3] = &unk_1E75C20F8;
  v4[4] = v1;
  v4[5] = v3;
  dispatch_sync(v2, v4);
}

uint64_t CreateUberComputePipelineState(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = objc_opt_new();
  v9 = a2;
  v10 = a4;
  [v8 setComputeFunction:a2];
  v11 = objc_opt_new();
  if (CI_USE_AIR_UBER_SHADER())
  {
    [v11 setFunctions:a4];
  }

  else
  {
    [v11 setBinaryFunctions:a4];
  }

  [v8 setLinkedFunctions:v11];
  [v8 setLabel:@"CIUberShader"];
  [v8 setBinaryArchives:a3];
  [v8 setSupportAddingBinaryFunctions:1];
  if (CI_HARVEST_BIN_ARCHIVE() == 2 && isHarvestingForThisProcess())
  {
    ArchiveLibraryUsingDescriptor([a2 name], a1, v8, 0, 1);
  }

  if ((CI_ALLOW_UBER_SHADER_COMPILATION() & 1) != 0 || CI_USE_AIR_UBER_SHADER())
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v16 = 0;
  v13 = [a1 newComputePipelineStateWithDescriptor:v8 options:v12 reflection:0 error:&v16];

  if (!v13)
  {
    if (v16)
    {
      v14 = ci_logger_compile();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        CreateUberComputePipelineState_cold_1();
      }
    }
  }

  return v13;
}

uint64_t isHarvestingForThisProcess()
{
  v0 = CI_HARVEST_PROCESS_NAME_LIST();
  if (v0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __isHarvestingForThisProcess_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v0;
    if (isHarvestingForThisProcess_onceToken != -1)
    {
      dispatch_once(&isHarvestingForThisProcess_onceToken, block);
    }

    v1 = isHarvestingForThisProcess_isListed;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void ArchiveLibraryUsingDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = CIGetHarvestingBinaryArchiveDict(a2);
    v10 = [v9 objectForKeyedSubscript:@"bin"];
    v11 = [v9 objectForKeyedSubscript:@"queue"];
    v12 = [v9 objectForKeyedSubscript:@"path"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __ArchiveLibraryUsingDescriptor_block_invoke;
    v13[3] = &unk_1E75C3618;
    v13[4] = a1;
    v13[5] = a4;
    v13[6] = v10;
    v13[7] = a3;
    v13[8] = v12;
    v13[9] = a5;
    dispatch_sync(v11, v13);
  }
}

uint64_t CreateComputePipelineState(void *a1, void *a2, void *a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v16 = 0;
  v8 = objc_opt_new();
  [v8 setComputeFunction:a2];
  if (a4)
  {
    v17[0] = a4;
    [v8 setPreloadedLibraries:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v17, 1)}];
  }

  if (a3)
  {
    [v8 setBinaryArchives:a3];
  }

  if ((CI_LOG_BIN_ARCHIVE_MISS() & 2) == 0)
  {
    goto LABEL_14;
  }

  if (![a3 count])
  {
    v11 = ci_logger_compile();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      CreateComputePipelineState_cold_2(a2);
    }

    goto LABEL_14;
  }

  v9 = [a1 newComputePipelineStateWithDescriptor:v8 options:4 reflection:0 error:&v16];
  if (!v9)
  {
    v10 = ci_logger_compile();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CreateComputePipelineState_cold_1(a2);
    }

LABEL_14:
    v9 = 0;
  }

  v12 = CI_LOG_BIN_ARCHIVE_MISS();
  v13 = v12;
  if (!v9 && (v12 & 1) == 0)
  {
    v9 = [a1 newComputePipelineStateWithDescriptor:v8 options:0 reflection:0 error:&v16];
  }

  if (!v9)
  {
    v14 = ci_logger_compile();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      CreateComputePipelineState_cold_3();
      if ((v13 & 1) == 0)
      {
        return v9;
      }
    }

    else if ((v13 & 1) == 0)
    {
      return v9;
    }

    abort();
  }

  return v9;
}

uint64_t CreateRenderPipelineState(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v14 = 0;
  v10 = objc_opt_new();
  [v10 setTileFunction:a2];
  [v10 setThreadgroupSizeMatchesTileSize:1];
  if (a5)
  {
    v15[0] = a5;
    [v10 setPreloadedLibraries:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v15, 1)}];
  }

  if (a3)
  {
    [v10 setBinaryArchives:a3];
  }

  if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
  {
    [objc_msgSend(objc_msgSend(v10 "colorAttachments")];
  }

  v11 = [a1 newRenderPipelineStateWithTileDescriptor:v10 options:0 reflection:0 error:&v14];

  if (!v11)
  {
    v12 = ci_logger_compile();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      CreateRenderPipelineState_cold_1();
    }
  }

  return v11;
}

void *CIMetalComputePipelineStateCreateFromSource(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = CreateFunctionFromSource(a1, a2, a3, a4);
  if (result)
  {
    v6 = result;
    ComputePipelineState = CreateComputePipelineState(a2, result, 0, 0);

    return ComputePipelineState;
  }

  return result;
}

void *CreateFunctionFromSource(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v8 = objc_opt_new();
  [v8 setAdditionalCompilerArguments:@"-w"];
  v9 = [a2 newLibraryWithSource:objc_msgSend(MEMORY[0x1E696AEC0] options:"stringWithUTF8String:" error:{a3), v8, &v25}];

  if (!v9)
  {
    v19 = ci_logger_compile();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      CreateFunctionFromSource_cold_4();
    }

    return 0;
  }

  v22 = a3;
  if (CI_ENABLE_METAL_LABEL())
  {
    [v9 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  v24 = a1;
  if (CI_ENABLE_METAL_DEBUG())
  {
    if (CreateFunctionFromDefaultLibrary_init != -1)
    {
      CreateFunctionFromSource_cold_1();
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = CreateFunctionFromDefaultLibrary_bundles;
    v11 = [CreateFunctionFromDefaultLibrary_bundles countByEnumeratingWithState:&v26 objects:v30 count:{16, a3}];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      v23 = v9;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [a2 newDefaultLibraryWithBundle:v15 error:0];
          v17 = [v16 newFunctionWithName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a4)}];

          if (v17)
          {
            v20 = ci_logger_compile();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              CreateFunctionFromSource_cold_2(a4, v15);
            }

            goto LABEL_24;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
        v9 = v23;
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = [v9 newFunctionWithName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a4, v22)}];

  if (!v17)
  {
    v18 = ci_logger_compile();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      CreateFunctionFromSource_cold_3();
    }

    return 0;
  }

LABEL_24:
  if (CI_ENABLE_METAL_LABEL())
  {
    [v17 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", v24)}];
  }

  return v17;
}

void *CIMetalRenderPipelineStateCreateFromSource(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  result = CreateFunctionFromSource(a1, a2, a3, a4);
  if (result)
  {
    v9 = result;
    RenderPipelineState = CreateRenderPipelineState(a2, result, 0, a6, 0);

    return RenderPipelineState;
  }

  return result;
}

uint64_t CILoadBinaryArchive(uint64_t a1)
{
  v10 = 0;
  if (!a1)
  {
    return 0;
  }

  v2 = MTLCreateSystemDefaultDevice();
  if (!v2)
  {
    v7 = ci_logger_api();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CILoadBinaryArchive_cold_2();
    }

    return 0;
  }

  v3 = v2;
  v4 = objc_opt_new();
  [v4 setUrl:a1];
  v5 = [v3 newBinaryArchiveWithDescriptor:v4 error:&v10];
  if (!v5)
  {
    v8 = ci_logger_api();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      CILoadBinaryArchive_cold_1(a1, &v10);
    }

    return 0;
  }

  v6 = v5;

  return v6;
}

uint64_t CIMetalRenderPipelineStateCreateFromDagDescriptor(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  result = CreateStitchedFunctionFromDescriptor(a1, a2, a3, a4);
  if (result)
  {
    v13 = result;
    RenderPipelineState = CreateRenderPipelineState(a3, result, a5, a8, a6);

    return RenderPipelineState;
  }

  return result;
}

uint64_t CreateStitchedFunctionFromDescriptor(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v14 = 0;
  if ((CI_LOG_BIN_ARCHIVE_MISS() & 4) != 0)
  {
    [a4 setOptions:1];
    v8 = [a3 newLibraryWithDescriptor:a4 error:&v14];
    [a4 setOptions:0];
    if (v8)
    {
      goto LABEL_7;
    }

    v9 = ci_logger_compile();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      CreateStitchedFunctionFromDescriptor_cold_1();
    }

    if (CI_LOG_BIN_ARCHIVE_MISS())
    {
      abort();
    }
  }

  v8 = [a3 newLibraryWithDescriptor:a4 error:&v14];
LABEL_7:
  if (CI_ENABLE_METAL_LABEL())
  {
    [v8 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  if (!v8)
  {
    v12 = ci_logger_compile();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      CreateFunctionFromSource_cold_4();
    }

    goto LABEL_15;
  }

  v10 = [v8 newFunctionWithName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a2)}];

  if (!v10)
  {
    v11 = ci_logger_compile();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      CreateStitchedFunctionFromDescriptor_cold_2();
    }

LABEL_15:
    print_stitched_dag(a3, a4);
    return 0;
  }

  return v10;
}

uint64_t CIMetalComputePipelineStateCreateFromDagDescriptor(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v22[1] = *MEMORY[0x1E69E9840];
  [a4 setBinaryArchives:a5];
  StitchedFunctionFromDescriptor = CreateStitchedFunctionFromDescriptor(a1, a2, a3, a4);
  if (!StitchedFunctionFromDescriptor)
  {
    return 0;
  }

  v15 = StitchedFunctionFromDescriptor;
  if (CI_ENABLE_METAL_LABEL())
  {
    [v15 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  if (CI_HARVEST_BIN_ARCHIVE() == 1 && isHarvestingForThisProcess())
  {
    v21 = 0;
    v16 = objc_opt_new();
    [v16 setComputeFunction:v15];
    [v16 setBinaryArchives:a5];
    if (a6)
    {
      v22[0] = a6;
      [v16 setPreloadedLibraries:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v22, 1)}];
    }

    if ([a5 count] && (v17 = objc_msgSend(a3, "newComputePipelineStateWithDescriptor:options:reflection:error:", v16, 4, 0, &v21)) != 0)
    {
      ComputePipelineState = v17;
    }

    else
    {
      [v16 setBinaryArchives:0];
      ArchiveLibraryUsingDescriptor([MEMORY[0x1E696AEC0] stringWithUTF8String:a2], a3, v16, a4, a7);
      ComputePipelineState = [a3 newComputePipelineStateWithDescriptor:v16 options:0 reflection:0 error:&v21];

      if (!ComputePipelineState)
      {
        v20 = ci_logger_compile();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          CreateComputePipelineState_cold_3();
        }

        ComputePipelineState = 0;
      }
    }
  }

  else
  {
    ComputePipelineState = CreateComputePipelineState(a3, v15, a5, a6);
  }

  if (!ComputePipelineState)
  {
    print_stitched_dag(a3, a4);
  }

  return ComputePipelineState;
}

void print_stitched_dag(void *a1, void *a2)
{
  v2 = [a1 newDagStringWithGraphs:{objc_msgSend(a2, "functionGraphs")}];
  v3 = ci_logger_compile();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    print_stitched_dag_cold_1();
  }
}

void *CIMetalComputePipelineStateCreateFromDAG(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = CreateFunctionFromDAG(a1, a3, a4, a5, a6);
  if (result)
  {
    v8 = result;
    ComputePipelineState = CreateComputePipelineState(a3, result, 0, 0);

    return ComputePipelineState;
  }

  return result;
}

void *CreateFunctionFromDAG(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v7 = [a2 newLibraryWithImageFilterFunctionsSPI:a3 imageFilterFunctionInfo:a4 error:&v13];
  if (!v7)
  {
    v10 = ci_logger_compile();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CreateFunctionFromSource_cold_4();
    }

    return 0;
  }

  v8 = v7;
  if (CI_ENABLE_METAL_LABEL())
  {
    [v8 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  v9 = [v8 newFunctionWithName:@"ciKernelMain" constantValues:a5 error:&v13];

  if (!v9)
  {
    v11 = ci_logger_compile();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      CreateStitchedFunctionFromDescriptor_cold_2();
    }

    return 0;
  }

  if (CI_ENABLE_METAL_LABEL())
  {
    [v9 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  return v9;
}

void *CIMetalRenderPipelineStateCreateFromDAG(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  result = CreateFunctionFromDAG(a1, a3, a4, a5, a6);
  if (result)
  {
    v11 = result;
    RenderPipelineState = CreateRenderPipelineState(a3, result, 0, a8, 0);

    return RenderPipelineState;
  }

  return result;
}

uint64_t isWidget()
{
  if (isWidget_once != -1)
  {
    isWidget_cold_1();
  }

  return isWidget_bWidget;
}

uint64_t __isWidget_block_invoke()
{
  result = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  if (result)
  {
    result = [objc_msgSend(objc_msgSend(MEMORY[0x1E6963668] "extensionPointRecordForCurrentProcess")];
    isWidget_bWidget = result;
  }

  return result;
}

void *CIMetalCommandQueueCreate(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [a2 newCommandQueue];
  if (!dyld_program_sdk_at_least())
  {
    goto LABEL_5;
  }

  if (isWidget_once != -1)
  {
    isWidget_cold_1();
  }

  if ((isWidget_bWidget & 1) == 0)
  {
LABEL_5:
    [v3 setBackgroundGPUPriority:2];
  }

  if (CI_ENABLE_METAL_DEBUG())
  {
    if ([objc_msgSend(objc_msgSend(v3 "device")])
    {
      v4 = @"AMDStat_GPU_Engine_Ticks";
    }

    else if ([objc_msgSend(objc_msgSend(v3 "device")])
    {
      v4 = @"GPU_CoreClocks";
    }

    else if ([objc_msgSend(objc_msgSend(v3 "device")])
    {
      v4 = @"MTLStatHostElapsedCycles";
    }

    else
    {
      v4 = [@"MTLStatTotalGPUCycles" copy];
    }

    v9[0] = @"MTLStat_nSec";
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    v6 = [v5 count];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __configureQueue_block_invoke;
    v8[3] = &__block_descriptor_40_e42_v32__0___MTLCommandBuffer__8__NSData_16Q24l;
    v8[4] = v6;
    [v3 addPerfSampleHandler:v8];
    [v3 setStatEnabled:1];
    [v3 setStatLocations:63];
    [v3 setStatOptions:1];
    if ([v3 requestCounters:v5 withIndex:0])
    {
      NSLog(&cfstr_ErrorRequestin.isa);
    }
  }

  if (CI_ENABLE_METAL_LABEL())
  {
    [v3 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  return v3;
}

uint64_t CIMetalCommandQueueSetPriority(void *a1, const char *a2)
{
  if ((a2 - 1) > 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = qword_19CF27F68[a2 - 1];
  }

  return [a1 setGPUPriority:v2];
}

void *CIMetalCommandBufferCreate(uint64_t a1, void *a2, int a3, const void *a4)
{
  if (a3)
  {
    v6 = [a2 commandBufferWithUnretainedReferences];
  }

  else
  {
    v6 = [a2 commandBuffer];
  }

  v7 = v6;
  if (a4)
  {
    v8 = [v6 userDictionary];
    v9 = _Block_copy(a4);
    [v8 setObject:v9 forKeyedSubscript:@"RendererStatsPerfCallback"];
    _Block_release(v9);
  }

  if (CI_ENABLE_METAL_LABEL())
  {
    [v7 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a1)}];
  }

  return v7;
}

uint64_t CIMetalRenderToTextures(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t *a18, unint64_t *a19)
{
  v25 = objc_opt_new();
  v61 = objc_opt_new();
  v26 = [a4 maxTotalThreadsPerThreadgroup];
  if (v26 >= 0x100)
  {
    v27 = 256;
  }

  else
  {
    v27 = v26;
  }

  v28 = [a4 threadExecutionWidth];
  v29 = 32;
  if (v28)
  {
    v29 = v28;
  }

  v30 = *a18;
  v31 = a18[1];
  if (!*a18)
  {
    v30 = v29;
  }

  if (!v31)
  {
    v31 = v27 / v30;
  }

  v32 = a18[2];
  if (v32 <= 1)
  {
    v32 = 1;
  }

  v57 = v32;
  v58 = v31;
  v59 = v30;
  v33 = ((a9 + (v30 - 1)) / v30);
  v34 = ((a10 + (v31 - 1)) / v31);
  if (a19 && *a19 && a19[1] && (v35 = a19[2]) != 0)
  {
    v33 = *a19;
    v34 = a19[1];
  }

  else
  {
    v35 = 1;
  }

  v54 = v35;
  v36 = [a3 label];
  if (a17 && v36 && [objc_msgSend(a3 "label")])
  {
    [a3 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@.%s", objc_msgSend(a3, "label"), a17)}];
  }

  v37 = [objc_msgSend(a4 "label")];
  v55 = v33;
  if (isImageConversionServiceProcess_onceToken != -1)
  {
    isImageConversionServiceProcess_cold_1();
  }

  v38 = isImageConversionServiceProcess_isICS;
  if (useOneDispatchPerCommandBuffer_onceToken != -1)
  {
    CIMetalRenderToTextures_cold_2();
  }

  v60 = a2;
  if (useOneDispatchPerCommandBuffer_setOverride != 1)
  {
    if (!v38 || useOneDispatchPerCommandBuffer_result != 1)
    {
      goto LABEL_32;
    }

LABEL_31:
    v39 = [a3 label];
    a3 = [objc_msgSend(a3 "commandQueue")];
    [a3 setLabel:v39];
    v53 = 1;
    goto LABEL_33;
  }

  if (useOneDispatchPerCommandBuffer_result)
  {
    goto LABEL_31;
  }

LABEL_32:
  v53 = 0;
LABEL_33:
  v40 = [a3 computeCommandEncoder];
  if (a17)
  {
    [v40 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a17)}];
  }

  [v40 setComputePipelineState:a4];
  [v25 addObject:a4];
  if (a11)
  {
    for (i = 0; i != a11; ++i)
    {
      v42 = *(a12 + 8 * i);
      if (v42)
      {
        if (![*(a12 + 8 * i) iosurfacePlane])
        {
          [v42 width];
          [v42 height];
        }

        v43 = a14 + i;
        if (!i)
        {
          v43 = 0;
        }

        if (v37)
        {
          v44 = i;
        }

        else
        {
          v44 = v43;
        }

        [v40 setTexture:v42 atIndex:v44];
        if (*(a13 + 8 * i))
        {
          v45 = *(a13 + 8 * i);
        }

        else
        {
          v45 = v42;
        }

        [v25 addObject:v45];
      }
    }
  }

  if (a14)
  {
    for (j = 0; j != a14; ++j)
    {
      v47 = *(a15 + 8 * j);
      [v61 addObject:v47];
      v48 = *(a16 + 8 * j);
      [v25 addObject:v48];
      if (v37)
      {
        [v40 setTexture:v47 atIndex:j + 2];
      }

      else
      {
        [v40 setTexture:v47 atIndex:j + 1];
      }

      [v40 setSamplerState:v48 atIndex:j];
    }
  }

  [v40 setBuffer:a5 offset:0 atIndex:0];
  [v25 addObject:a5];
  if (v37)
  {
    if (a8)
    {
      [v40 setVisibleFunctionTable:a8 atBufferIndex:1];
      [v25 addObject:a8];
    }

    if (a6)
    {
      [v40 setBuffer:a6 offset:0 atIndex:2];
      [v25 addObject:a6];
    }

    if (a7)
    {
      [v40 setBuffer:a7 offset:0 atIndex:3];
      [v25 addObject:a7];
    }
  }

  v69[0] = v55;
  v69[1] = v34;
  v69[2] = v54;
  v68[0] = v59;
  v68[1] = v58;
  v68[2] = v57;
  [v40 dispatchThreadgroups:v69 threadsPerThreadgroup:v68];
  [v40 endEncoding];
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __CIMetalRenderToTextures_block_invoke;
  v65[3] = &__block_descriptor_61_e28_v16__0___MTLCommandBuffer__8l;
  *&v65[4] = a9;
  *&v65[5] = a10;
  v65[6] = a1;
  v66 = v60;
  v67 = v37;
  [a3 addScheduledHandler:v65];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __CIMetalRenderToTextures_block_invoke_101;
  v62[3] = &unk_1E75C35A0;
  *&v62[6] = a9;
  *&v62[7] = a10;
  v62[8] = a1;
  v63 = v60;
  v64 = v37;
  v62[4] = v61;
  v62[5] = v25;
  result = [a3 addCompletedHandler:v62];
  if (v53)
  {
    [a3 commit];
    return [a3 waitUntilScheduled];
  }

  return result;
}

void __CIMetalRenderToTextures_block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (CI_KDEBUG())
  {
    kdebug_trace();
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v4 = ci_signpost_log_render();
    v5 = *(a1 + 56) | (*(a1 + 48) << 32);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        v7 = *(a1 + 40);
        v8 = *(a1 + 32);
        if (*(a1 + 60))
        {
          v9 = "uber";
        }

        else
        {
          v9 = "dag";
        }

        v10 = 136315906;
        v11 = v9;
        v12 = 2048;
        v13 = a2;
        v14 = 1024;
        v15 = v8;
        v16 = 1024;
        v17 = v7;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "gpu_compute", "%s | cb:%p [%u, %u]", &v10, 0x22u);
      }
    }
  }
}

void __CIMetalRenderToTextures_block_invoke_101(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (CI_KDEBUG())
  {
    kdebug_trace();
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v4 = ci_signpost_log_render();
    v5 = *(a1 + 72) | (*(a1 + 64) << 32);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        v7 = *(a1 + 56);
        v8 = *(a1 + 48);
        if (*(a1 + 76))
        {
          v9 = "uber";
        }

        else
        {
          v9 = "dag";
        }

        *buf = 136315906;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 1024;
        *&buf[24] = v8;
        *&buf[28] = 1024;
        *&buf[30] = v7;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "gpu_compute", "%s | cb:%p [%u, %u]", buf, 0x22u);
      }
    }
  }

  v38 = a1;
  object = a2;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = *(a1 + 32);
  v11 = [v10 countByEnumeratingWithState:&v41 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v42;
    v15 = *MEMORY[0x1E696CF98];
    v16 = *MEMORY[0x1E696A578];
    for (i = *v42; ; i = *v42)
    {
      if (i != v14)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v41 + 1) + 8 * v13);
      if ([v18 iosurface])
      {
        if (SurfaceIsVolatile([v18 iosurface]))
        {
          break;
        }
      }

LABEL_28:
      if (++v13 >= v12)
      {
        v33 = [v10 countByEnumeratingWithState:&v41 objects:v63 count:16];
        if (!v33)
        {
          goto LABEL_34;
        }

        v12 = v33;
        v13 = 0;
      }
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v50 = 0u;
    memset(buf, 0, sizeof(buf));
    v19 = [v18 iosurface];
    v20 = IOSurfaceCopyValue(v19, v15);
    if (v20)
    {
      v21 = v20;
      CFStringGetCString(v20, buf, 256, 0x8000100u);
      CFAutorelease(v21);
    }

    PixelFormat = IOSurfaceGetPixelFormat(v19);
    v40 = bswap32(PixelFormat);
    v23 = ci_logger_render();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
    if (PixelFormat < 0x29)
    {
      if (v24)
      {
        v37 = v40;
        v34 = [v18 width];
        v35 = [v18 height];
        *v47 = 134218754;
        *v48 = v37;
        *&v48[8] = 2048;
        *&v48[10] = v34;
        *&v48[18] = 2048;
        *&v48[20] = v35;
        *&v48[28] = 2082;
        *&v48[30] = buf;
        v27 = v23;
        v28 = "Internal error: Input texture: (%ld: %lu x %lu) has volatile backing (%{public}s) surface";
        v29 = 42;
        goto LABEL_33;
      }
    }

    else if (v24)
    {
      v25 = [v18 width];
      v26 = [v18 height];
      *v47 = 68158722;
      *v48 = 4;
      *&v48[4] = 2080;
      *&v48[6] = &v40;
      *&v48[14] = 2048;
      *&v48[16] = v25;
      *&v48[24] = 2048;
      *&v48[26] = v26;
      *&v48[34] = 2082;
      *&v48[36] = buf;
      v27 = v23;
      v28 = "Internal error: Input texture: (%.4s: %lu x %lu) has volatile backing (%{public}s) surface";
      v29 = 48;
LABEL_33:
      _os_log_error_impl(&dword_19CC36000, v27, OS_LOG_TYPE_ERROR, v28, v47, v29);
    }

    if (isImageConversionServiceProcess_onceToken != -1)
    {
      __CIMetalRenderToTextures_block_invoke_101_cold_1();
    }

    if (isImageConversionServiceProcess_isICS == 1)
    {
      v36 = ci_logger_render();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        __CIMetalRenderToTextures_block_invoke_101_cold_2();
      }

      abort();
    }

    v30 = objc_autoreleasePoolPush();
    v45 = v16;
    v46 = @"Input texture has volatile backing surface";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.coreimage" code:1 userInfo:v31];
    if (v32)
    {
      objc_setAssociatedObject(object, setInternalError, v32, 0x301);
    }

    objc_autoreleasePoolPop(v30);
    goto LABEL_28;
  }

LABEL_34:
}

uint64_t CIMetalRenderToImageblocks(uint64_t a1, int a2, void *a3, void *a4, uint64_t a5, double a6, double a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a1;
  v20 = objc_opt_new();
  v21 = *a9;
  v22 = [MEMORY[0x1E6974128] renderPassDescriptor];
  [v22 setImageblockSampleLength:{objc_msgSend(a4, "imageblockSampleLength")}];
  if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
  {
    v23 = [objc_msgSend(v22 "colorAttachments")];
    [v23 setTexture:v21];
    [v23 setStoreAction:1];
    if (a6 < [v21 width] || a7 < objc_msgSend(v21, "height"))
    {
      [v23 setLoadAction:{1, v29}];
    }
  }

  else
  {
    [v22 setDefaultColorSampleCount:1];
    [v22 setRenderTargetWidth:{objc_msgSend(v21, "width")}];
    [v22 setRenderTargetHeight:{objc_msgSend(v21, "height")}];
  }

  v24 = [a3 renderCommandEncoderWithDescriptor:{v22, v29}];
  if (a13)
  {
    [v24 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", a13)}];
  }

  [v24 setRenderPipelineState:a4];
  [v20 addObject:a4];
  [v24 setTileTexture:v21 atIndex:0];
  [v20 addObject:v21];
  if (a10)
  {
    v25 = 0;
    do
    {
      v26 = *(a11 + 8 * v25);
      [v24 setTileTexture:v26 atIndex:v25 + 1];
      [v20 addObject:v26];
      v27 = *(a12 + 8 * v25);
      [v24 setTileSamplerState:v27 atIndex:v25];
      [v20 addObject:v27];
      ++v25;
    }

    while (a10 != v25);
  }

  [v24 setTileBuffer:a5 offset:0 atIndex:0];
  [v20 addObject:a5];
  v36[0] = [v24 tileWidth];
  v36[1] = [v24 tileHeight];
  v36[2] = 1;
  [v24 dispatchThreadsPerTile:v36];
  [v24 endEncoding];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __CIMetalRenderToImageblocks_block_invoke;
  v34[3] = &unk_1E75C35C8;
  v34[4] = a3;
  *&v34[5] = a6;
  *&v34[6] = a7;
  v34[7] = v30;
  v35 = a2;
  [a3 addScheduledHandler:v34];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __CIMetalRenderToImageblocks_block_invoke_110;
  v32[3] = &unk_1E75C35C8;
  *&v32[5] = a6;
  *&v32[6] = a7;
  v32[7] = v30;
  v33 = a2;
  v32[4] = v20;
  return [a3 addCompletedHandler:v32];
}

void __CIMetalRenderToImageblocks_block_invoke(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (CI_KDEBUG())
  {
    kdebug_trace();
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v4 = ci_signpost_log_render();
    v5 = *(a1 + 64) | (*(a1 + 56) << 32);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        v7 = *(a1 + 48);
        v8 = *(a1 + 40);
        v9 = 134218496;
        v10 = a2;
        v11 = 1024;
        v12 = v8;
        v13 = 1024;
        v14 = v7;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "gpu_compute", "cb:%p [%u, %u]", &v9, 0x18u);
      }
    }
  }
}

void __CIMetalRenderToImageblocks_block_invoke_110(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (CI_KDEBUG())
  {
    kdebug_trace();
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v4 = ci_signpost_log_render();
    v5 = *(a1 + 64) | (*(a1 + 56) << 32);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v4;
      if (os_signpost_enabled(v4))
      {
        v7 = *(a1 + 48);
        v8 = *(a1 + 40);
        v9 = 134218496;
        v10 = a2;
        v11 = 1024;
        v12 = v8;
        v13 = 1024;
        v14 = v7;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v5, "gpu_compute", "cb:%p [%u, %u]", &v9, 0x18u);
      }
    }
  }

  CIAbortIfICSAndUnsuccessfulCommandBufferExecution(a2);
}

void CIAbortIfICSAndUnsuccessfulCommandBufferExecution(void *a1)
{
  if ([a1 status] == 5)
  {
    if ([a1 label])
    {
      [objc_msgSend(a1 "label")];
    }

    if ([a1 error])
    {
      v2 = ci_logger_render();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        CIAbortIfICSAndUnsuccessfulCommandBufferExecution_cold_1(a1);
      }
    }

    if (isImageConversionServiceProcess_onceToken != -1)
    {
      __CIMetalRenderToTextures_block_invoke_101_cold_1();
    }

    if (isImageConversionServiceProcess_isICS == 1)
    {
      v3 = ci_logger_render();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        CIAbortIfICSAndUnsuccessfulCommandBufferExecution_cold_3();
      }

      exit(1);
    }
  }
}

void *CIMetalCommandBufferAddCompletionHandler(void *result, uint64_t a2)
{
  if (a2)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __CIMetalCommandBufferAddCompletionHandler_block_invoke;
    v2[3] = &unk_1E75C35F0;
    v2[4] = a2;
    return [result addCompletedHandler:v2];
  }

  return result;
}

uint64_t __CIMetalCommandBufferAddCompletionHandler_block_invoke(uint64_t a1, void *a2)
{
  CIAbortIfICSAndUnsuccessfulCommandBufferExecution(a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void *CIMetalCommandBufferCopyTexture(void *result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a2 && result)
  {
    if (a3)
    {
      v17 = [result blitCommandEncoder];
      v20[0] = a6;
      v20[1] = a7;
      v20[2] = 0;
      v19[0] = a8;
      v19[1] = a9;
      v19[2] = 1;
      v18[0] = a4;
      v18[1] = a5;
      v18[2] = 0;
      [v17 copyFromTexture:a3 sourceSlice:0 sourceLevel:0 sourceOrigin:v20 sourceSize:v19 toTexture:a2 destinationSlice:0 destinationLevel:0 destinationOrigin:v18];
      return [v17 endEncoding];
    }
  }

  return result;
}

void CIMetalCommandBufferWaitUntilScheduled(void *a1)
{
  if ([a1 status] < 2)
  {
    NSLog(&cfstr_MetalCommandBu.isa);
  }

  else
  {

    [a1 waitUntilScheduled];
  }
}

void CIMetalCommandBufferWaitUntilCompleted(void *a1)
{
  if ([a1 status] < 2)
  {
    NSLog(&cfstr_MetalCommandBu.isa);
  }

  else
  {

    [a1 waitUntilCompleted];
  }
}

unint64_t CIMetalCommandBufferGetGPUTime(void *a1)
{
  result = [a1 status];
  if (result >= 4)
  {
    [a1 GPUEndTime];
    return [a1 GPUStartTime];
  }

  return result;
}

void serializeBinaryArchive(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v3 = [a1 serializeToURL:objc_msgSend(MEMORY[0x1E695DFF8] error:{"URLWithString:", a2), &v6}];
  v4 = ci_logger_render();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v8 = a2;
      _os_log_impl(&dword_19CC36000, v5, OS_LOG_TYPE_INFO, "Serialized binary archive to %{public}@\n", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    serializeBinaryArchive_cold_1(a2, &v6);
  }
}

void *__isHarvestingForThisProcess_block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithCString:*(a1 + 32) encoding:1];
  result = [MEMORY[0x1E696AE30] processInfo];
  if (result)
  {
    result = [v1 containsString:{objc_msgSend(result, "processName")}];
  }

  isHarvestingForThisProcess_isListed = result;
  return result;
}

void __ArchiveLibraryUsingDescriptor_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (CI_PREVENT_HARVEST_DUPLICATE_ENTRIES())
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v2 temporaryDirectory];
    v4 = [objc_msgSend(v3 URLByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s/ci_%016llX.txt", CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME(), *(a1 + 72))), "path"}];
    if ([v2 fileExistsAtPath:v4 isDirectory:0])
    {
      return;
    }

    if (([v2 createFileAtPath:v4 contents:objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0] attributes:{"stringWithFormat:", @"0x%016llX %@\n", *(a1 + 72), *(a1 + 32)), "dataUsingEncoding:", 4), 0}] & 1) == 0)
    {
      v5 = ci_logger_render();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __ArchiveLibraryUsingDescriptor_block_invoke_cold_1();
      }
    }
  }

  v21 = 0;
  v6 = *(a1 + 40);
  if (v6 && ([*(a1 + 48) addLibraryWithDescriptor:v6 error:&v21] & 1) == 0)
  {
    v12 = ci_logger_render();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __ArchiveLibraryUsingDescriptor_block_invoke_cold_2(&v21);
    }
  }

  else
  {
    v7 = [*(a1 + 48) addComputePipelineFunctionsWithDescriptor:*(a1 + 56) error:&v21];
    v8 = ci_logger_render();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = [*(a1 + 64) lastPathComponent];
        *buf = 138543618;
        *&buf[4] = v10;
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_impl(&dword_19CC36000, v9, OS_LOG_TYPE_INFO, "%{public}@ program added to %{public}@\n", buf, 0x16u);
      }

      if (CI_BIN_ARCHIVE_SERIALIZATION_METHOD() == 1)
      {
        serializeBinaryArchive(*(a1 + 48), *(a1 + 64));
      }

      else if (CI_BIN_ARCHIVE_SERIALIZATION_METHOD() == 2)
      {
        v13 = CIGetHarvestingBinaryArchiveDict(0);
        v14 = [v13 objectForKeyedSubscript:@"bin"];
        v15 = [v13 objectForKeyedSubscript:@"queue"];
        v16 = [v13 objectForKeyedSubscript:@"path"];
        v17 = CI_BIN_ARCHIVE_SERIALIZATION_DELAY();
        v18 = dispatch_time(0, (v17 / 1000.0 * 1000000000.0));
        if ((scheduleSerializingHarvestedBinaryArchive_serialization_pending & 1) == 0)
        {
          v19 = v18;
          scheduleSerializingHarvestedBinaryArchive_serialization_pending = 1;
          global_queue = dispatch_get_global_queue(0, 0);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __scheduleSerializingHarvestedBinaryArchive_block_invoke;
          v23 = &unk_1E75C3640;
          v24 = v15;
          v25 = v14;
          v26 = v16;
          dispatch_after(v19, global_queue, buf);
        }
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __ArchiveLibraryUsingDescriptor_block_invoke_cold_3(&v21);
    }
  }
}

void __scheduleSerializingHarvestedBinaryArchive_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __scheduleSerializingHarvestedBinaryArchive_block_invoke_2;
  v2[3] = &unk_1E75C20F8;
  v3 = *(a1 + 40);
  dispatch_sync(v1, v2);
}

uint64_t __CreateFunctionFromDefaultLibrary_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(MEMORY[0x1E696AAE8], "allBundles")}];
  CreateFunctionFromDefaultLibrary_bundles = v0;
  v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreImage"];

  return [v0 addObject:v1];
}

uint64_t __configureQueue_block_invoke(uint64_t result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    v7 = [a3 bytes];
    v8 = 0;
    v9 = 0;
    v10 = *(v6 + 32);
    v11 = 2 * v10;
    v12 = v7 + 8 * v10;
    v13 = 0.0;
    do
    {
      v14 = (v7 + 8 * v8);
      v15 = (v12 + 8 * v8);
      v13 = v13 + (*v15 - *v14);
      v9 = v9 - v14[1] + v15[1];
      v8 += v11;
    }

    while (v8 < a4);
    result = [objc_msgSend(a2 "userDictionary")];
    if (result)
    {
      v16 = *(result + 16);

      return v16();
    }
  }

  return result;
}

void *__useOneDispatchPerCommandBuffer_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    v1 = [result BOOLValue];
    useOneDispatchPerCommandBuffer_result = v1;
    useOneDispatchPerCommandBuffer_setOverride = 1;
    v9 = "NO";
    if (v1)
    {
      v9 = "YES";
    }

    return x_log(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return result;
}

unint64_t CI::sw_minimumComponent(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = a3 + 16 * v7;
  v9 = a2 + (v7 << 6);
  if (v6 == 5)
  {
    v9 = v8;
  }

  *&a5 = fminf(fminf(COERCE_FLOAT(*v9), COERCE_FLOAT(HIDWORD(*v9))), COERCE_FLOAT(*(v9 + 8)));
  return vdupq_lane_s32(*&a5, 0).u64[0];
}

unint64_t CI::sw_maximumComponent(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = a3 + 16 * v7;
  v9 = a2 + (v7 << 6);
  if (v6 == 5)
  {
    v9 = v8;
  }

  *&a5 = fmaxf(fmaxf(COERCE_FLOAT(*v9), COERCE_FLOAT(HIDWORD(*v9))), COERCE_FLOAT(*(v9 + 8)));
  return vdupq_lane_s32(*&a5, 0).u64[0];
}

__n128 extendDOD@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, float32x2_t a3@<D0>, float32x2_t a4@<D1>, __n128 a5@<Q2>, int8x16_t a6@<Q3>, int8x16_t a7@<Q4>)
{
  v23 = vsub_f32(a3, *a6.i8);
  if ((a5.n128_f32[2] + vaddv_f32(vmul_f32(a5.n128_u64[0], v23))) < 0.001)
  {
    Rectangle::Union(a1, &v23, &v21);
    if (&v21 != a1)
    {
      v11 = v22;
      *a1 = v21;
      *(a1 + 16) = v11;
    }

    v12 = vsub_f32(vsub_f32(a3, a4), *&vextq_s8(a6, a6, 8uLL));
    v13 = vmul_f32(v12, *a7.i8);
    v14 = vmul_f32(v12, *&vextq_s8(a7, a7, 8uLL));
    v23 = vadd_f32(vzip1_s32(v13, v14), vzip2_s32(v13, v14));
    v20 = vadd_f32(a4, v23);
    Rectangle::Union(a1, &v20, &v21);
    if (&v21 != a1)
    {
      v15 = v22;
      *a1 = v21;
      *(a1 + 16) = v15;
    }
  }

  result = *a1;
  v17 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v17;
  return result;
}

float32x2_t CI::sw_mirror(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v3 + 64) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v3 + 88);
  v14 = *(v3 + 80);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (v13 == 5)
  {
    v16 = v15;
  }

  v17 = *v7;
  v28 = *v12;
  v26 = *(a2 + (v8 << 6));
  v27 = *v16;
  DC = CI::getDC(a1);
  v19 = *(&v26 + 2) + vaddv_f32(vmul_f32(*&v26, *DC));
  v20 = vsub_f32(*CI::getDC(DC), v17);
  v21 = vmul_f32(*v27.i8, v20);
  v22 = vmul_f32(*&vextq_s8(v27, v27, 8uLL), v20);
  v23 = COERCE_DOUBLE(vadd_f32(*&vextq_s8(v28, v28, 8uLL), vadd_f32(vzip1_s32(v21, v22), vzip2_s32(v21, v22))));
  v24 = COERCE_DOUBLE(vadd_f32(*v28.i8, v20));
  if (v19 >= 0.0)
  {
    v24 = v23;
  }

  return vadd_f32(v17, *&v24);
}

float64x2_t Rectangle::Union@<Q0>(Rectangle *this@<X0>, const vec2 *a2@<X1>, uint64_t a3@<X8>)
{
  v3.f64[0] = this->var0;
  if (fabs(this->var0) == INFINITY || (var1 = this->var1, fabs(var1) == INFINITY))
  {
    result = vcvtq_f64_f32(*a2);
    *a3 = result;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    v6 = v3.f64[0] == -8.98846567e307 && var1 == -8.98846567e307;
    if (v6 && this->var2 == 1.79769313e308 && this->var3 == 1.79769313e308)
    {
      result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *a3 = result;
      *(a3 + 16) = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v3.f64[1] = this->var1;
      v7 = vaddq_f64(v3, *&this->var2);
      v8 = vcvtq_f64_f32(*a2);
      v9 = vminnmq_f64(vminnmq_f64(v3, v7), v8);
      result = vsubq_f64(vmaxnmq_f64(vmaxnmq_f64(v3, v7), v8), v9);
      *a3 = v9;
      *(a3 + 16) = result;
    }
  }

  return result;
}

__n128 extendROI@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, float32x2_t a3@<D0>, float32x2_t a4@<D1>, __n128 a5@<Q2>, int8x16_t a6@<Q3>, int8x16_t a7@<Q4>)
{
  if ((a5.n128_f32[2] + vaddv_f32(vmul_f32(a5.n128_u64[0], vsub_f32(a3, *a6.i8)))) < 0.001)
  {
    v9 = a5.n128_f32[2] + vaddv_f32(vmul_f32(a3, a5.n128_u64[0]));
    v10 = vsub_f32(a3, a4);
    v11 = v9 < 0.0;
    v12 = vmul_f32(v10, *a7.i8);
    v13 = vmul_f32(v10, *&vextq_s8(a7, a7, 8uLL));
    v14 = COERCE_DOUBLE(vadd_f32(*&vextq_s8(a6, a6, 8uLL), vadd_f32(vzip1_s32(v12, v13), vzip2_s32(v12, v13))));
    v15 = COERCE_DOUBLE(vadd_f32(v10, *a6.i8));
    if (!v11)
    {
      v15 = v14;
    }

    v20 = vadd_f32(a4, *&v15);
    Rectangle::Union(a1, &v20, v19);
    if (v19 != a1)
    {
      v16 = v19[1];
      *a1 = v19[0];
      *(a1 + 16) = v16;
    }
  }

  result = *a1;
  v18 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v18;
  return result;
}

unint64_t CI::sw_modTransition(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 104);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v3 + 112) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v3 + 128);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v3 + 136) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v3 + 160);
  v29 = *(v3 + 152);
  v30 = (a3 + 16 * v29);
  v31 = (a2 + (v29 << 6));
  if (v28 == 5)
  {
    v31 = v30;
  }

  v55 = *v11;
  v56 = *v7;
  v32 = *v15;
  v51 = *v27;
  v52 = *v19;
  v53 = *v31;
  v54 = *v23;
  v33 = vsub_f32(*CI::getDC(a1), *v15);
  v34 = vmuls_lane_f32(v33.f32[0], v52, 2);
  if (v34 >= 0.5)
  {
    v35 = *(&v53 + 3) + (*(&v53 + 2) / (*(&v53 + 1) + (v34 * *&v53)));
  }

  else
  {
    v35 = *(&v51 + 3) + (*(&v51 + 2) / (*(&v51 + 1) + (v34 * *&v51)));
  }

  v33.i32[0] = vmuls_lane_f32(v35, v52, 3);
  v36 = vmul_f32(*v54.i8, v33);
  v37 = vmul_f32(*&vextq_s8(v54, v54, 8uLL), v33);
  v38 = vadd_f32(v32, vadd_f32(vzip1_s32(v36, v37), vzip2_s32(v36, v37)));
  v39 = vminnm_f32(vsub_f32(v38, vrndm_f32(v38)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v45 = vminnm_f32(v39, vsub_f32(_D1, v39));
  v46 = vadd_f32(v45, v45);
  v47 = v52.f32[1] + (sqrtf(vaddv_f32(vmul_f32(v46, v46))) * v52.f32[0]);
  if (v47 <= 1.0)
  {
    v48 = v47;
  }

  else
  {
    v48 = 1.0;
  }

  _NF = v47 < 0.0;
  v49 = 0.0;
  if (!_NF)
  {
    v49 = v48;
  }

  return vmlaq_n_f32(vmulq_n_f32(v55, 1.0 - v49), v56, v49).u64[0];
}