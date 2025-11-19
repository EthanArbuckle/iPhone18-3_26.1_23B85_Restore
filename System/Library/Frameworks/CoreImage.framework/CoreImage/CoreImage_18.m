int32x2_t CI::sw_ci_swizzle_rgba8_to_rgb10(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vrndmq_f32(vaddq_f32(vmulq_f32(*v7, vdupq_n_s32(0x437F0000u)), v8));
  v10 = vextq_s8(v9, v9, 8uLL).u64[0];
  return vrev64_s32(vcvt_f32_f64(vdivq_f64(vmlaq_f64(vrndmq_f64(vmulq_f64(vcvtq_f64_f32(*&vextq_s8(v9, v9, 4uLL)), xmmword_19CF2D200)), xmmword_19CF2D210, vcvtq_f64_f32(vmla_f32(v10, 0xC2800000C1800000, vrndm_f32(vmul_f32(v10, 0x3C8000003D800000))))), vdupq_n_s64(0x408FF80000000000uLL))));
}

double CI::sw_ci_swizzle_rgba8_to_a2rgb10(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vrndmq_f32(vaddq_f32(vmulq_f32(*v7, vdupq_n_s32(0x437F0000u)), v8));
  *v8.i64 = *v9.i32 + (*&v9.i32[1] + (floorf(vmuls_lane_f32(0.25, *v9.i8, 1)) * -4.0)) * 256.0;
  v10 = *&v9.i32[3];
  v11 = vextq_s8(v9, v9, 8uLL).u64[0];
  v12 = vmlaq_f64(vrndmq_f64(vmulq_f64(vcvtq_f64_f32(*&vextq_s8(v9, v9, 4uLL)), xmmword_19CF2D200)), xmmword_19CF2D210, vcvtq_f64_f32(vmla_f32(v11, 0xC2800000C1800000, vrndm_f32(vmul_f32(v11, 0x3C8000003D800000)))));
  v8.i64[1] = floor(v10 / 63.99999);
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vextq_s8(v12, v12, 8uLL), vdupq_n_s64(0x408FF80000000000uLL))), vdivq_f64(v8, xmmword_19CF2D220)).u64[0];
  return result;
}

unint64_t CI::sw_ci_swizzle_rgba8_to_a2bgr10(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vrndmq_f32(vaddq_f32(vmulq_f32(*v7, vdupq_n_s32(0x437F0000u)), v8));
  v10.f64[0] = v9.f32[0];
  v11 = vextq_s8(v9, v9, 4uLL).u64[0];
  v10.f64[1] = floor(v9.f32[1] * 0.25);
  *v9.i64 = floor(v9.f32[2] * 0.0625) + (v9.f32[3] + (floorf(vmuls_lane_f32(0.015625, v9, 3)) * -64.0)) * 16.0;
  v9.i64[1] = floor(v9.f32[3] / 63.99999);
  return vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vmlaq_f64(v10, xmmword_19CF2D230, vcvtq_f64_f32(vmla_f32(v11, 0xC1800000C0800000, vrndm_f32(vmul_f32(v11, 0x3D8000003E800000))))), vdupq_n_s64(0x408FF80000000000uLL))), vdivq_f64(v9, xmmword_19CF2D220)).u64[0];
}

double CI::sw_ci_swizzle_rgba8_to_rgb10_wide(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vrndmq_f32(vaddq_f32(vmulq_f32(*v7, vdupq_n_s32(0x437F0000u)), v8));
  v8.f32[0] = (*v9.i32 + (*&v9.i32[1] + (floorf(vmuls_lane_f32(0.25, *v9.i8, 1)) * -4.0)) * 256.0) / 1023.0;
  v10 = vextq_s8(v9, v9, 8uLL).u64[0];
  v11 = vdivq_f64(vmlaq_f64(vrndmq_f64(vmulq_f64(vcvtq_f64_f32(*&vextq_s8(v9, v9, 4uLL)), xmmword_19CF2D200)), xmmword_19CF2D210, vcvtq_f64_f32(vmla_f32(v10, 0xC2800000C1800000, vrndm_f32(vmul_f32(v10, 0x3C8000003D800000))))), vdupq_n_s64(0x408FF80000000000uLL));
  *v11.f32 = vrev64_s32(vcvt_f32_f64(v11));
  v11.i32[2] = v8.i32[0];
  v12 = vmulq_f32(vaddq_f32(v11, vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u));
  v13 = vabsq_f32(v12);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v21 = vbslq_s8(vorrq_s8(vcltzq_f32(v12), vcgtzq_f32(v12)), vorrq_s8(vandq_s8(v12, v8), _Q3), 0);
  v22 = vmulq_f32(v12, vdupq_n_s32(0x3D9E8391u));
  v19 = vmlaq_f32(vdupq_n_s32(0x3D558919u), vdupq_n_s32(0x3F72A76Eu), v13);
  v19.i32[3] = 0;
  *&result = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v13), v22, vmulq_f32(_simd_pow_f4(v19, xmmword_19CF226D0), v21)).u64[0];
  return result;
}

double CI::sw_ci_rgb10wide(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vmulq_f32(vaddq_f32(*v7, vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u));
  v9 = vabsq_f32(v8);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v18 = vbslq_s8(vorrq_s8(vcltzq_f32(v8), vcgtzq_f32(v8)), vorrq_s8(vandq_s8(v8, v10), _Q3), 0);
  v19 = vmulq_f32(v8, vdupq_n_s32(0x3D9E8391u));
  v16 = vmlaq_f32(vdupq_n_s32(0x3D558919u), vdupq_n_s32(0x3F72A76Eu), v9);
  v16.i32[3] = 0;
  *&result = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v9), v19, vmulq_f32(_simd_pow_f4(v16, xmmword_19CF226D0), v18)).u64[0];
  return result;
}

double CI::sw_ci_bgr10wide(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vrev64q_s32(*v7);
  v9 = vmulq_f32(vaddq_f32(vextq_s8(v8, v8, 0xCuLL), vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u));
  v10 = vabsq_f32(v9);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v19 = vbslq_s8(vorrq_s8(vcltzq_f32(v9), vcgtzq_f32(v9)), vorrq_s8(vandq_s8(v9, v11), _Q3), 0);
  v20 = vmulq_f32(v9, vdupq_n_s32(0x3D9E8391u));
  v17 = vmlaq_f32(vdupq_n_s32(0x3D558919u), vdupq_n_s32(0x3F72A76Eu), v10);
  v17.i32[3] = 0;
  *&result = vbslq_s8(vcgtq_f32(vdupq_n_s32(0x3D25AEE6u), v10), v20, vmulq_f32(_simd_pow_f4(v17, xmmword_19CF226D0), v19)).u64[0];
  return result;
}

double CI::sw_ci_to_rgb10wide(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vabsq_f32(*v7);
  v16 = vcgtq_f32(vdupq_n_s32(0x3B4D2E1Cu), v8);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v8.i32[3] = 0;
  *&result = vaddq_f32(vmulq_f32(vbslq_s8(v16, vmulq_f32(*v7, vdupq_n_s32(0x414EB852u)), vmulq_f32(vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), _simd_pow_f4(v8, xmmword_19CF22D80)), vbslq_s8(vorrq_s8(vcltzq_f32(*v7), vcgtzq_f32(*v7)), vorrq_s8(vandq_s8(*v7, v9), _Q3), 0))), vdupq_n_s32(0x3EFF3FD0u)), vdupq_n_s32(0x3EC0300Cu)).u64[0];
  return result;
}

double CI::sw_ci_to_bgr10wide(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vrev64q_s32(*v7);
  v9 = vextq_s8(v8, v8, 0xCuLL);
  v10 = vabsq_f32(v9);
  v18 = vcgtq_f32(vdupq_n_s32(0x3B4D2E1Cu), v10);
  v11.i64[0] = 0x8000000080000000;
  v11.i64[1] = 0x8000000080000000;
  __asm { FMOV            V3.4S, #1.0 }

  v10.i32[3] = 0;
  *&result = vaddq_f32(vmulq_f32(vbslq_s8(v18, vmulq_f32(v9, vdupq_n_s32(0x414EB852u)), vmulq_f32(vmlaq_f32(vdupq_n_s32(0xBD6147AE), vdupq_n_s32(0x3F870A3Du), _simd_pow_f4(v10, xmmword_19CF22D80)), vbslq_s8(vorrq_s8(vcltzq_f32(v9), vcgtzq_f32(v9)), vorrq_s8(vandq_s8(v9, v11), _Q3), 0))), vdupq_n_s32(0x3EFF3FD0u)), vdupq_n_s32(0x3EC0300Cu)).u64[0];
  return result;
}

double CI::sw_ci_swizzle_rgba8_to_rgb10widelinear(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vrndmq_f32(vaddq_f32(vmulq_f32(*v7, vdupq_n_s32(0x437F0000u)), v8));
  v8.f32[0] = (*v9.i32 + (*&v9.i32[1] + (floorf(vmuls_lane_f32(0.25, *v9.i8, 1)) * -4.0)) * 256.0) / 1023.0;
  v10 = vextq_s8(v9, v9, 8uLL).u64[0];
  v11 = vdivq_f64(vmlaq_f64(vrndmq_f64(vmulq_f64(vcvtq_f64_f32(*&vextq_s8(v9, v9, 4uLL)), xmmword_19CF2D200)), xmmword_19CF2D210, vcvtq_f64_f32(vmla_f32(v10, 0xC2800000C1800000, vrndm_f32(vmul_f32(v10, 0x3C8000003D800000))))), vdupq_n_s64(0x408FF80000000000uLL));
  *v11.f32 = vrev64_s32(vcvt_f32_f64(v11));
  v11.i32[2] = v8.i32[0];
  *&result = vmulq_f32(vaddq_f32(v11, vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u)).u64[0];
  return result;
}

double CI::sw_ci_rgb10widelinear(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_f32(vaddq_f32(*v7, vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u)).u64[0];
  return result;
}

double CI::sw_ci_bgr10widelinear(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vrev64q_s32(*v7);
  *&result = vmulq_f32(vaddq_f32(vextq_s8(v8, v8, 0xCuLL), vdupq_n_s32(0xBEC0300C)), vdupq_n_s32(0x40006060u)).u64[0];
  return result;
}

double CI::sw_ci_to_rgb10widelinear(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vaddq_f32(vmulq_f32(*v7, vdupq_n_s32(0x3EFF3FD0u)), vdupq_n_s32(0x3EC0300Cu)).u64[0];
  return result;
}

double CI::sw_ci_to_bgr10widelinear(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vrev64q_s32(*v7);
  *&result = vaddq_f32(vmulq_f32(vextq_s8(v8, v8, 0xCuLL), vdupq_n_s32(0x3EFF3FD0u)), vdupq_n_s32(0x3EC0300Cu)).u64[0];
  return result;
}

double CI::sw_ci_combine_r(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vzip1q_s32(*v7, *v11).u64[0];
  return result;
}

double CI::sw_ci_combine_gray(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v20 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v20.f32 = vadd_f32(*v20.f32, *&vextq_s8(v20, v20, 8uLL));
  v21 = vmulq_f32(*v11, xmmword_19CF23D60);
  *v21.i8 = vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
  v22 = vmulq_f32(*v15, xmmword_19CF23D60);
  *v22.i8 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
  v23 = vmulq_f32(*v19, xmmword_19CF23D60);
  *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
  *v24.f32 = vzip1_s32(*v20.f32, *v21.i8);
  v24.i64[1] = __PAIR64__(v23.u32[0], v22.u32[0]);
  *v20.f32 = vzip2_s32(*v20.f32, *v21.i8);
  v20.i64[1] = __PAIR64__(v23.u32[1], vdup_lane_s32(*v22.i8, 1).u32[0]);
  *&result = vaddq_f32(v24, v20).u64[0];
  return result;
}

double CI::sw_ci_combine_a(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vuzp2q_s32(vuzp2q_s32(*v7, *v11), *v7).u64[0];
  return result;
}

uint64_t CI::sw_ci_combine_rg(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return *v7;
}

double CI::sw_ci_combine_r16(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *v7 * 65535.0;
  v13.f32[0] = v12 + (floorf(v12 * 0.0039062) * -256.0);
  v14 = *v11 * 65535.0;
  v13.f32[1] = (v12 - v13.f32[0]) * 0.0039062;
  v13.f32[2] = v14 + (floorf(v14 * 0.0039062) * -256.0);
  v13.f32[3] = (v14 - v13.f32[2]) * 0.0039062;
  *&result = vdivq_f32(v13, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_combine_a16(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
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
  v10 = a3 + 16 * v9;
  v11 = a2 + (v9 << 6);
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *(v7 + 12) * 65535.0;
  v13.f32[0] = v12 + (floorf(v12 * 0.0039062) * -256.0);
  v14 = *(v11 + 12) * 65535.0;
  v13.f32[1] = (v12 - v13.f32[0]) * 0.0039062;
  v13.f32[2] = v14 + (floorf(v14 * 0.0039062) * -256.0);
  v13.f32[3] = (v14 - v13.f32[2]) * 0.0039062;
  *&result = vdivq_f32(v13, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

double CI::sw_ci_combine_l16(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v12.i32 = vaddv_f32(vadd_f32(*v12.i8, *&vextq_s8(v12, v12, 8uLL))) * 65535.0;
  v13.f32[0] = *v12.i32 + (floorf(*v12.i32 * 0.0039062) * -256.0);
  v14 = vmulq_f32(*v11, xmmword_19CF23D60);
  *v14.i32 = vaddv_f32(vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL))) * 65535.0;
  v13.f32[1] = (*v12.i32 - v13.f32[0]) * 0.0039062;
  v13.f32[2] = *v14.i32 + (floorf(*v14.i32 * 0.0039062) * -256.0);
  v13.f32[3] = (*v14.i32 - v13.f32[2]) * 0.0039062;
  *&result = vdivq_f32(v13, vdupq_n_s32(0x437F0000u)).u64[0];
  return result;
}

uint64_t CI::sw_ci_combine_la(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  v8.i32[0] = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
  v8.i32[1] = HIDWORD(*v7);
  return v8.i64[0];
}

FILE *__cdecl open_memstream(char **__bufp, size_t *__sizep)
{
  if (__bufp && __sizep)
  {
    *__bufp = 0;
    *__sizep = 0;
    result = malloc_type_calloc(1uLL, 0x28uLL, 0x10900400014C7C5uLL);
    if (!result)
    {
      return result;
    }

    v5 = result;
    result->_p = 0;
    result->_r = 4096;
    v6 = malloc_type_calloc(0x1000uLL, 1uLL, 0x288CFB44uLL);
    *&v5->_flags = v6;
    if (v6)
    {
      v5->_bf._base = __bufp;
      *&v5->_bf._size = __sizep;
      result = funopen(v5, memstream_read, memstream_write, memstream_seek, memstream_close);
      if (result)
      {
        return result;
      }

      free(*&v5->_flags);
    }

    free(v5);
    return 0;
  }

  else
  {
    v7 = __error();
    result = 0;
    *v7 = 22;
  }

  return result;
}

size_t memstream_read(uint64_t a1, void *__dst, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 4) - *a1;
    if (v5 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v5;
    }

    if (v6 < 1)
    {
      return 0;
    }

    else
    {
      memcpy(__dst, v3, v6);
      *a1 += v6;
    }
  }

  else
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  return v6;
}

uint64_t memstream_write(int *a1, void *__src, uint64_t a3)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }

  v4 = a3;
  v7 = *a1;
  v8 = *a1 + a3;
  if (a1[2] <= v8)
  {
    if ((memstream_grow(a1, v8) & 0x80000000) == 0)
    {
      v3 = *(a1 + 2);
      v7 = *a1;
      goto LABEL_5;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_5:
  memcpy((v3 + v7), __src, v4);
  v9 = a1[1];
  v10 = *a1 + v4;
  *a1 = v10;
  if (v9 < v10)
  {
    a1[1] = v10;
    **(a1 + 4) = v10;
    *(*(a1 + 2) + v10) = 0;
    v9 = a1[1];
  }

  if (v9 >= a1[2])
  {
    memstream_write_cold_1();
  }

  if (*(*(a1 + 2) + v9))
  {
    memstream_write_cold_2();
  }

  return v4;
}

uint64_t memstream_seek(int *a1, uint64_t a2, int a3)
{
  if (!*(a1 + 2))
  {
    v6 = 12;
LABEL_18:
    *__error() = v6;
    return -1;
  }

  v3 = a2;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = a1[1];
    }

    else
    {
      if (a3 != 1)
      {
LABEL_17:
        v6 = 22;
        goto LABEL_18;
      }

      v5 = *a1;
    }

    v3 = v5 + a2;
  }

  if (v3 < 0)
  {
    goto LABEL_17;
  }

  if (v3 >= a1[2])
  {
    memstream_grow(a1, v3);
  }

  *a1 = v3;
  v7 = a1[1];
  if (v7 < v3)
  {
    a1[1] = v3;
    **(a1 + 4) = v3;
    v7 = v3;
  }

  if (v7 >= a1[2] || *(*(a1 + 2) + v7))
  {
    memstream_seek_cold_1();
  }

  return v3;
}

uint64_t memstream_close(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    **(a1 + 24) = v1;
    v2 = *(a1 + 8);
    v3 = *(a1 + 4);
    **(a1 + 32) = v3;
    if (v3 >= v2)
    {
      memstream_close_cold_1();
    }

    *(*(a1 + 16) + v3) = 0;
    free(a1);
    return 0;
  }

  else
  {
    free(a1);
    *__error() = 12;
    return 0xFFFFFFFFLL;
  }
}

void stream_to_file(FILE *a1, uint64_t a2)
{
  v6 = 0;
  __bufp = 0;
  v4 = open_memstream(&__bufp, &v6);
  if (v4)
  {
    v5 = v4;
    (*(a2 + 16))(a2, v4);
    fclose(v5);
    fwrite(__bufp, 1uLL, v6, a1);
    fflush(a1);
    free(__bufp);
  }
}

CFStringRef stream_to_string(uint64_t a1)
{
  v6 = 0;
  __bufp = 0;
  v2 = open_memstream(&__bufp, &v6);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  (*(a1 + 16))(a1, v2);
  fclose(v3);
  v4 = CFStringCreateWithCString(0, __bufp, 0x8000100u);
  free(__bufp);
  return v4;
}

uint64_t memstream_grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    LODWORD(v4) = *(a1 + 8);
    if (v4 > a2)
    {
      return 0;
    }

    do
    {
      v4 = 2 * v4;
    }

    while (v4 <= a2);
    v6 = malloc_type_realloc(v3, v4, 0x9E6D655BuLL);
    if (v6)
    {
      *(a1 + 16) = v6;
      **(a1 + 24) = v6;
      bzero((*(a1 + 16) + *(a1 + 8)), v4 - *(a1 + 8));
      result = 0;
      *(a1 + 8) = v4;
      return result;
    }

    v7 = *(a1 + 16);
    if (v7)
    {
      free(v7);
    }

    *(a1 + 16) = 0;
    **(a1 + 24) = 0;
    *(a1 + 4) = 0;
    *(a1 + 8) = 0;
  }

  *__error() = 12;
  return 0xFFFFFFFFLL;
}

uint64_t CI::AffineNode::alpha_one(CI::AffineNode *this)
{
  result = (*(**(this + 5) + 280))(*(this + 5));
  if (!result)
  {
    return result;
  }

  v9.origin.x = (*(*this + 168))(this);
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  if (CGRectIsInfinite(v9))
  {
    *&v8.var0 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *&v8.var2 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    height = 1.79769313e308;
    width = 1.79769313e308;
    goto LABEL_4;
  }

  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (CGRectIsNull(v10))
  {
    *&v8.var0 = vdupq_n_s64(0x7FF0000000000000uLL);
    *&v8.var2 = 0uLL;
  }

  else
  {
    v8.var0 = x;
    v8.var1 = y;
    v8.var2 = width;
    v8.var3 = height;
    if (x == -8.98846567e307 && y == -8.98846567e307)
    {
LABEL_4:
      if (width == 1.79769313e308 && height == 1.79769313e308)
      {
        return 1;
      }
    }
  }

  return (fabs(*(this + 8)) < 0.0001 && fabs(*(this + 9)) < 0.0001 || fabs(*(this + 7)) < 0.0001 && fabs(*(this + 10)) < 0.0001) && Rectangle::isNearIntegral(&v8, 0.00001);
}

uint64_t CI::AffineNode::output_format(CI::AffineNode *this)
{
  result = CI::Affine::isOrientationWithIntegralTranslation((this + 56));
  if (result)
  {
    v3 = *(**(this + 5) + 328);

    return v3();
  }

  return result;
}

uint64_t CI::AffineNode::append_to_tree(CI::AffineNode *this, float64x2_t *a2, const CI::Affine *a3)
{
  v3 = a3;
  if (!CI::Affine::isIdentity(a2) || (v3 & 1) != 0)
  {
    if (*(*this + 16))(this) != 41 || (v3)
    {
      if ((*(*this + 16))(this) != 34)
      {
        operator new();
      }

      CI::Affine::operator*(this + 7, a2, &v8);
      if (!CI::Affine::isNearIdentity(&v8, 0.00001) || (v3 & 1) != 0)
      {
        operator new();
      }

      v6 = *(this + 5);
      if (v6)
      {
        CI::Object::ref(*(this + 5));
      }

      return v6;
    }
  }

  else if (!this)
  {
    return 0;
  }

  return CI::Object::ref(this);
}

float64x2_t CI::Affine::operator*@<Q0>(double *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = a2[1];
  v4 = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_n_f64(v3, a1[5]), *a2, a1[4]));
  result = vmlaq_n_f64(vmulq_n_f64(v3, a1[3]), *a2, a1[2]);
  *a3 = vmlaq_n_f64(vmulq_n_f64(v3, a1[1]), *a2, *a1);
  a3[1] = result;
  a3[2] = v4;
  return result;
}

CI::AffineNode *CI::AffineNode::append_to_tree_with_quality(CI::AffineNode *this, float64x2_t *a2, const CI::Affine *a3, CI::Context *a4)
{
  v4 = a4;
  if (CI::Affine::isIdentity(a2))
  {
    if (!this)
    {
      return this;
    }

    return CI::Object::ref(this);
  }

  v8 = hypot(a2->f64[0], a2->f64[1]);
  v9 = hypot(a2[1].f64[0], a2[1].f64[1]) < 1.0 || v8 < 1.0;
  if (!v9 || (v4 & 1) == 0)
  {

    return CI::AffineNode::append_to_tree(this, a2, 0);
  }

  v10 = a2[1];
  v40 = *a2;
  v41 = v10;
  v42 = a2[2];
  v11 = v40.f64[1];
  v12 = v40.f64[0];
  v13 = v10.f64[1];
  v14 = v10.f64[0];
  v15 = v42.f64[1];
  v16 = v42.f64[0];
  while (1)
  {
    if ((*(*this + 16))(this) == 34)
    {
      v17 = *(this + 7);
      v18 = *(this + 8);
      v19 = v18 * v14;
      v20 = *(this + 9);
      v21 = *(this + 10);
      v22 = *(this + 11);
      v23 = *(this + 12);
      v24 = v14 * v23;
      v14 = v14 * v21 + v20 * v12;
      v25 = v24 + v22 * v12;
      v12 = v19 + v17 * v12;
      v26 = v18 * v13;
      v27 = v13 * v21;
      v28 = v13 * v23;
      v13 = v27 + v20 * v11;
      v29 = v28 + v22 * v11;
      v11 = v26 + v17 * v11;
      v16 = v16 + v25;
      v15 = v29 + v15;
      v41.f64[0] = v14;
      v41.f64[1] = v13;
      v42.f64[0] = v16;
      v42.f64[1] = v15;
      goto LABEL_17;
    }

    if ((*(*this + 16))(this) != 45 || (*(*this + 424))(this) != 3)
    {
      break;
    }

LABEL_17:
    this = (*(*this + 48))(this, 0);
  }

  v40.f64[0] = v12;
  v40.f64[1] = v11;
  if (v12 == 1.0 && v11 == 0.0 && v14 == 0.0 && v13 == 1.0 && v16 == 0.0 && v15 == 0.0)
  {
    CI::Object::ref(this);
  }

  else
  {
    v30 = hypot(v12, v11);
    v31 = hypot(v14, v13);
    v32 = fmax(floor(-0.2 - log2(v30)), 0.0);
    v33 = fmax(floor(-0.2 - log2(v31)), 0.0);
    v34 = CI::Object::ref(this);
    if (v32 != 0.0 && v33 != 0.0)
    {
      v36 = 0;
      v35 = 0x3FE0000000000000uLL;
      v37 = 0x3FE0000000000000;
      v38 = 0;
      v39 = 0;
      CI::AffineNode::append_to_tree(v34, &v35, 0);
      if (v34)
      {
        CI::Object::unref(v34);
      }

      v40.f64[0] = v12 + v12;
      v40.f64[1] = v11 + v11;
      v41.f64[0] = v14 + v14;
      v41.f64[1] = v13 + v13;
      CI::NoopNode::append_to_tree_and_unref();
    }

    if (v32 != 0.0)
    {
      v36 = 0;
      v35 = 0x3FE0000000000000uLL;
      v37 = 0x3FF0000000000000;
      v38 = 0;
      v39 = 0;
      CI::AffineNode::append_to_tree(v34, &v35, 0);
      if (v34)
      {
        CI::Object::unref(v34);
      }

      v40 = vaddq_f64(v40, v40);
      CI::NoopNode::append_to_tree_and_unref();
    }

    if (v33 != 0.0)
    {
      v36 = 0;
      v35 = 0x3FF0000000000000uLL;
      v37 = 0x3FE0000000000000;
      v38 = 0;
      v39 = 0;
      CI::AffineNode::append_to_tree(v34, &v35, 0);
      if (v34)
      {
        CI::Object::unref(v34);
      }

      v41 = vaddq_f64(v41, v41);
      CI::NoopNode::append_to_tree_and_unref();
    }

    this = CI::AffineNode::append_to_tree(v34, &v40, 0);
    if (v34)
    {
      CI::Object::unref(v34);
    }
  }

  return this;
}

uint64_t CI::AffineNode::print_for_graph_core(double *a1, FILE *__stream, uint64_t a3, int a4)
{
  fwrite("affine ", 7uLL, 1uLL, __stream);
  if (a4)
  {
    return fprintf(__stream, "[%g %g %g %g %g %g]");
  }

  fprintf(__stream, "%c%g  %g  %g", 10, a1[7], a1[8], a1[11]);
  return fprintf(__stream, "%c%g  %g  %g");
}

void CI::AffineNode::convert_to_kernel_node(CI::AffineNode *this, CI::Context *a2)
{
  v2 = *(this + 72);
  v3[0] = *(this + 56);
  v3[1] = v2;
  v3[2] = *(this + 88);
  CI::Affine::inverse(v3, &v4);
  operator new();
}

void CI::AffineNode::~AffineNode(CI::AffineNode *this)
{
  *(this + 6) = &unk_1F1038B88;
  atomic_fetch_add(&dword_1ED7C47BC[32], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F1038B88;
  atomic_fetch_add(&dword_1ED7C47BC[32], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

void CI::AffineNode::roi_of_child(CI::AffineNode *this, CGRect a2)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  CI::Affine::inverse((this + 56), v6);
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  CI::Affine::applyToRect(v6, v7);
}

double CI::AffineNode::extent(CI::AffineNode *this)
{
  (*(**(this + 5) + 168))(*(this + 5));

  return CI::Affine::applyToRect((this + 56), *&v2);
}

void CI::AffineNode::extent_unclamped(CI::AffineNode *this)
{
  if ((fabs(*(this + 8)) >= 0.0001 || fabs(*(this + 9)) >= 0.0001) && (fabs(*(this + 7)) >= 0.0001 || fabs(*(this + 10)) >= 0.0001))
  {
    (*(*this + 168))(this);
  }

  else
  {
    v2.origin.x = (*(**(this + 5) + 176))(*(this + 5));
    CI::Affine::applyToRect((this + 56), v2);
  }
}

uint64_t CI::AffineNode::output_is_rg(CI::AffineNode *this)
{
  result = (*(*this + 280))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 288);

    return v3();
  }

  return result;
}

uint64_t CI::AffineNode::output_is_r(CI::AffineNode *this)
{
  result = (*(*this + 280))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 296);

    return v3();
  }

  return result;
}

uint64_t CI::AffineNode::output_is_luma(CI::AffineNode *this)
{
  result = (*(*this + 280))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 304);

    return v3();
  }

  return result;
}

uint64_t CI::AffineNode::output_depth(CI::AffineNode *this)
{
  isOrientationWithIntegralTranslation = CI::Affine::isOrientationWithIntegralTranslation((this + 56));
  result = (*(**(this + 5) + 320))(*(this + 5));
  if (!isOrientationWithIntegralTranslation)
  {
    if (result < 1)
    {
      return 0;
    }

    else
    {
      v4 = *(**(this + 5) + 320);

      return v4();
    }
  }

  return result;
}

void non-virtual thunk toCI::AffineNode::~AffineNode(CI::AffineNode *this)
{
  *this = &unk_1F1038B88;
  atomic_fetch_add(&dword_1ED7C47BC[32], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F1038B88;
  atomic_fetch_add(&dword_1ED7C47BC[32], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)34>::~InstanceCounted(void *result)
{
  *result = &unk_1F1038B88;
  atomic_fetch_add(&dword_1ED7C47BC[32], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)34>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1038B88;
  atomic_fetch_add(&dword_1ED7C47BC[32], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::SerialObjectPtrArray *CI::SerialObjectPtrArray::SerialObjectPtrArray(CI::SerialObjectPtrArray *this, CI::Object *a2, CI::Object *a3, CI::Object *a4)
{
  *this = 0;
  *(this + 2) = 0u;
  v7 = (this + 32);
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 4) = 0x30000000ALL;
  *(this + 2) = 0;
  *(this + 3) = a2;
  if (a2)
  {
    CI::Object::ref(a2);
  }

  *v7 = a3;
  if (a3)
  {
    CI::Object::ref(a3);
  }

  *(this + 5) = a4;
  if (a4)
  {
    CI::Object::ref(a4);
  }

  *this = 3;
  return this;
}

float32x2_t CI::sw_ci_affine(CI *a1, uint64_t a2, uint64_t a3)
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

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v16 = *v7;
  v17 = *v11;
  v12.i64[0] = *CI::getDC(a1);
  v12.i64[1] = 1065353216;
  v13 = vmulq_f32(v16, v12);
  *v13.i8 = vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL));
  v14 = vmulq_f32(v17, v12);
  *v14.i8 = vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
  return vadd_f32(vzip1_s32(*v13.i8, *v14.i8), vzip2_s32(*v13.i8, *v14.i8));
}

void CI::NodeWithChild::~NodeWithChild(CI::NodeWithChild *this)
{
  *this = &unk_1F1036B48;
  v2 = *(this + 5);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 5) = 0;

  CI::Node::~Node(this);
}

void CI::CGNode::CGNode(CI::Node *a1)
{
  CI::Node::Node(a1);
}

{
  CI::CGNode::CGNode(a1);
}

CFStringRef CI::cacheID(CI *this, CGImage *a2)
{
  Identifier = CGImageGetIdentifier();
  v3 = CFStringCreateWithFormat(0, 0, @"CGImageRef %d", Identifier);
  CFAutorelease(v3);
  return v3;
}

void CI::CGNode::~CGNode(CI::CGNode *this)
{
  *this = &unk_1F1038BE0;
  *(this + 5) = &unk_1F1038DB0;
  v2 = (this + 56);
  *(this + 7) = &unk_1F1038DD8;
  CI::CGNode::release_resources(this);
  CI::Tileable::~Tileable(v2);
  *(this + 5) = &unk_1F1038E38;
  atomic_fetch_add(&dword_1ED7C47BC[33], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

{
  CI::CGNode::~CGNode(this);

  JUMPOUT(0x19EAF5590);
}

void CI::Tileable::~Tileable(CI::Tileable *this)
{
  *this = &unk_1F1038E08;
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 4) = 0;
  v3 = (this + 8);
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v3);
}

void non-virtual thunk toCI::CGNode::~CGNode(CI::CGNode *this)
{
  CI::CGNode::~CGNode((this - 40));
}

{
  CI::CGNode::~CGNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

void CI::CGNode::release_resources(CGImageRef *this)
{
  CGImageRelease(this[13]);
  v2 = this[20];
  if (v2)
  {
    dispatch_release(v2);
  }

  this[13] = 0;
  this[20] = 0;
  v3 = this[11];
  if (v3)
  {
    CFRelease(v3);
  }

  this[11] = 0;
}

void CI::Tileable::updateCacheIdentity(CI::Tileable *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(this + 4);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 4) = cf;
}

void CI::CGNode::set_image(uint64_t a1, CGImageRef image, uint64_t a3, NSObject *a4)
{
  CGImageRetain(image);
  CGImageRelease(*(a1 + 104));
  if (a4)
  {
    dispatch_retain(a4);
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    dispatch_release(v9);
  }

  *(a1 + 104) = image;
  *(a1 + 112) = a3;
  *(a1 + 160) = a4;
  v10 = CI::cacheID(image, v8);

  CI::Tileable::updateCacheIdentity((a1 + 56), v10);
}

CGImageRef CI::CGNode::cgImageForROI@<X0>(CGImageRef *this@<X0>, const CGRect *a2@<X1>, CGImageRef *a3@<X8>)
{
  result = CGImageCreateWithImageInRect(this[13], *a2);
  *a3 = result;
  return result;
}

void CI::CGNode::tileRect(CI::CGNode *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = *(this + 8);
  v9 = *(this + 9);
  if (v8 == v9 || 0xAAAAAAAAAAAAAAABLL * (v9 - v8) <= a2 || (v10 = v8[1], *v8 == v10) || 0xAAAAAAAAAAAAAAABLL * ((v10 - *v8) >> 3) <= a3)
  {
    v31 = ci_logger_render();
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
LABEL_34:
      *(a4 + 16) = 0;
      goto LABEL_35;
    }

    v33 = *(this + 8);
    v32 = *(this + 9);
    if (v33 == v32)
    {
      v34 = 0;
    }

    else
    {
      v34 = 0xAAAAAAAAAAAAAAABLL * (v32 - v33);
      v36 = *v33;
      v35 = v33[1];
      if (v36 != v35)
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v36) >> 3);
        goto LABEL_42;
      }
    }

    v37 = 0;
LABEL_42:
    v38 = 134218752;
    v39 = a2;
    v40 = 2048;
    v41 = a3;
    v42 = 2048;
    v43 = v34;
    v44 = 2048;
    v45 = v37;
    _os_log_error_impl(&dword_19CC36000, v31, OS_LOG_TYPE_ERROR, "Request for a tile outside of expected indexes. Requested tile %zu %zu but only have %zu tiles horizontally and %zu tile vertically", &v38, 0x2Au);
    goto LABEL_34;
  }

  v11 = v8[3 * a2] + 24 * a3;
  v13 = *v11;
  v12 = *(v11 + 4);
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  if (v13 == 0x7FFFFFFF && v12 == 0x7FFFFFFF && v15 == 0 && v14 == 0)
  {
LABEL_32:
    *(a4 + 16) = 0;
LABEL_35:
    *a4 = IRectNull;
    return;
  }

  v20 = *(this + 16);
  v19 = *(this + 17);
  if (v13 != -2147483647 || v12 != -2147483647 || v15 != 0xFFFFFFFFLL || v14 != 0xFFFFFFFFLL)
  {
    v24 = v13 & ~(v13 >> 31);
    v25 = v13 + v15;
    if (v25 >= v20)
    {
      v25 = *(this + 16);
    }

    v26 = __OFSUB__(v25, v24);
    v27 = v25 - v24;
    if (v27 < 0 == v26)
    {
      v28 = v12 & ~(v12 >> 31);
      v29 = v12 + v14;
      if (v29 >= v19)
      {
        v29 = *(this + 17);
      }

      v26 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      if (v30 < 0 == v26)
      {
        *a4 = v24;
        *(a4 + 4) = v28;
        *(a4 + 8) = v27;
        *(a4 + 16) = v30;
        return;
      }
    }

    goto LABEL_32;
  }

  *a4 = 0;
  *(a4 + 8) = v20;
  *(a4 + 16) = v19;
}

uint64_t CI::CGNode::surfaceFormat(CI::CGNode *this)
{
  if (!CGImageGetImageProvider())
  {
    return 0;
  }

  ImageProvider = CGImageGetImageProvider();
  if (!CI::format_from_CGImageProvider(ImageProvider))
  {
    return 0;
  }

  v3 = *(this + 12);

  return CI::PixelFormatType_approx_from_format(v3);
}

__IOSurface *CI::CGNode::tileSurface(CI::CGNode *this, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v5 = this;
  memset(v13, 0, sizeof(v13));
  (*(*this + 432))(v13);
  v6 = *(v5 + 7);
  v5 = (v5 + 56);
  v7 = *(v5 + 10);
  v8 = *(v5 + 6);
  v9 = *(v5 - 2);
  v10 = *(v5 + 97) == 0;
  v11 = (*(v6 + 24))(v5, 0);
  return CI::ioSurfaceFromCGImage(v7, v8, v9, v13, v10, v11, *(v5 + 13), a4);
}

__IOSurface *CI::ioSurfaceFromCGImage(int a1, CGImageRef image, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v18 = *a4;
  v19 = *(a4 + 4);
  v20 = *(a4 + 8);
  v21 = *(a4 + 16);
  v49 = a1;
  v50 = a5;
  if (*a4 == -2147483647)
  {
    if (v19 != -2147483647 || v20 != 0xFFFFFFFF || v21 != 0xFFFFFFFF)
    {
      goto LABEL_21;
    }

    v25 = a8;
    v26 = MEMORY[0x1E695F040];
  }

  else
  {
    if (v18 != 0x7FFFFFFF || v19 != 0x7FFFFFFF || v20 != 0 || v21 != 0)
    {
LABEL_21:
      v25 = a8;
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v32 = v21;
      goto LABEL_24;
    }

    v25 = a8;
    v26 = MEMORY[0x1E695F050];
  }

  v29 = *v26;
  v30 = v26[1];
  v31 = v26[2];
  v32 = v26[3];
LABEL_24:
  v33 = 0;
  v34 = 0;
  v35 = Width;
  v56 = CGRectIntersection(*&v29, *(&Height - 3));
  v36 = CGImageCreateWithImageInRect(image, v56);
  v37 = CGImageGetWidth(v36);
  v38 = CGImageGetHeight(v36);
  ImageProvider = CGImageGetImageProvider();
  CGImageProviderRetain();
  v40 = CI::PixelFormatType_approx_from_format(a3);
  if (ImageProvider)
  {
    v41 = v40 == 0;
  }

  else
  {
    v41 = 1;
  }

  if (v41)
  {
    goto LABEL_35;
  }

  v42 = v40;
  v48 = a6;
  v43 = CI::format_from_CGImageProvider(ImageProvider);
  if (!v43)
  {
    goto LABEL_35;
  }

  v44 = v43;
  if (v50)
  {
    v54 = *a4;
    v55 = *(a4 + 16);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 0x40000000;
    v51[2] = ___ZN2CIL20ioSurfaceFromCGImageENS_10ImageIndexEP7CGImageNS_11PixelFormatERK5IRectbPK10__CFStringP16dispatch_queue_sRy_block_invoke;
    v51[3] = &__block_descriptor_tmp_18;
    v51[4] = v25;
    v51[5] = a4;
    v51[6] = ImageProvider;
    v52 = v43;
    v53 = a3;
    SurfaceFromCacheAndFill = GetSurfaceFromCacheAndFill(&v54, v42, 0, v49, v48, a7, v51);
    if (!SurfaceFromCacheAndFill)
    {
LABEL_33:
      v46 = ci_logger_render();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
      {
        CI::ioSurfaceFromCGImage();
      }

LABEL_35:
      SurfaceFromCacheAndFill = 0;
    }
  }

  else
  {
    SurfaceFromCacheAndFill = CreateSurface(v37, v38, 0x10uLL, v42, 0);
    CI::fillBlock(ImageProvider, v44, a3, SurfaceFromCacheAndFill);
    *v25 = *(a4 + 16) * *(a4 + 8);
    if (!SurfaceFromCacheAndFill)
    {
      goto LABEL_33;
    }
  }

  CGImageProviderRelease();
  CGImageRelease(v36);
  return SurfaceFromCacheAndFill;
}

void CI::CGNode::surfaceForROI(uint64_t a1@<X0>, uint64_t a2@<X1>, CGFloat *a3@<X2>, uint64_t a4@<X3>, __IOSurface **a5@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v10 = ci_signpost_log_render();
    v11 = *(a1 + 36) | ((*(*a2 + 280))(a2) << 32);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = *a3;
      v13 = *(a3 + 1);
      v14 = *(a3 + 2);
      v15 = *(a3 + 3);
      *buf = 134218752;
      *v37 = v12;
      *&v37[8] = 2048;
      *&v37[10] = v13;
      v38 = 2048;
      v39 = v14;
      v40 = 2048;
      v41 = v15;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "surface_for_roi_from_cg", "[%g %g %g %g]", buf, 0x2Au);
    }
  }

  v16 = (*(*a2 + 280))(a2);
  TimerBase::TimerBase(buf, v16, *(a1 + 36), "surface_for_roi_from_cg", 22);
  Current = CFAbsoluteTimeGetCurrent();
  v35 = 0;
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = *(a1 + 48);
  v21 = *a3;
  v22 = a3[1];
  v23 = a3[2];
  v24 = a3[3];
  v43.origin.x = *a3;
  v43.origin.y = v22;
  v43.size.width = v23;
  v43.size.height = v24;
  if (CGRectIsNull(v43))
  {
    height = 0;
    v33 = IRectNull;
  }

  else
  {
    v44.origin.x = v21;
    v44.origin.y = v22;
    v44.size.width = v23;
    v44.size.height = v24;
    if (CGRectIsInfinite(v44))
    {
      v33 = IRectInfinite;
      height = 0xFFFFFFFFLL;
    }

    else
    {
      v45.origin.x = v21;
      v45.origin.y = v22;
      v45.size.width = v23;
      v45.size.height = v24;
      v46 = CGRectInset(v45, 0.000001, 0.000001);
      v47 = CGRectIntegral(v46);
      LODWORD(v33) = v47.origin.x;
      DWORD1(v33) = v47.origin.y;
      *(&v33 + 1) = v47.size.width;
      height = v47.size.height;
    }
  }

  v26 = *(a1 + 56);
  v25 = a1 + 56;
  v27 = *(v25 + 97) == 0;
  v28 = (*(v26 + 24))(v25, 0);
  v29 = CI::ioSurfaceFromCGImage(v18, v19, v20, &v33, v27, v28, *(v25 + 104), &v35);
  *a4 = *a4 + CFAbsoluteTimeGetCurrent() - Current;
  *(a4 + 8) += a3[3] * a3[2];
  if (v29)
  {
    CFRetain(v29);
  }

  *a5 = v29;
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v30 = ci_signpost_log_render();
    v31 = *&v37[4];
    if ((*&v37[4] - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = v30;
      if (os_signpost_enabled(v30))
      {
        LOWORD(v33) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v32, OS_SIGNPOST_INTERVAL_END, v31, "surface_for_roi_from_cg", &unk_19CFBCBAE, &v33, 2u);
      }
    }
  }

  TimerBase::~TimerBase(buf);
}

uint64_t CI::CGNode::print_for_graph_core(uint64_t a1, FILE *__stream)
{
  fwrite("CGImageRef", 0xAuLL, 1uLL, __stream);
  if (*(a1 + 112))
  {
    fprintf(__stream, " content:%016llX");
  }

  else if (*(a1 + 104))
  {
    fprintf(__stream, " %p", *(a1 + 104));
    CGImageGetIdentifier();
    fprintf(__stream, "(%d)");
  }

  if (*(a1 + 52))
  {
    v4 = "s";
  }

  else
  {
    v4 = "";
  }

  v5 = CI::name_for_format(*(a1 + 120));
  result = fprintf(__stream, " %s%s", v4, v5);
  v7 = *(a1 + 144);
  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    if (v7 == 1)
    {
      v8 = "alpha_one";
      goto LABEL_19;
    }

LABEL_18:
    v8 = "alpha_unknown";
    goto LABEL_19;
  }

  if (v7 == 6)
  {
    v8 = "alpha_unpremul-clear-edges";
    goto LABEL_19;
  }

  if (v7 == 4)
  {
    v8 = "alpha_premul-clear-edges";
    goto LABEL_19;
  }

  if (v7 != 2)
  {
    goto LABEL_18;
  }

  v8 = "alpha_unpremul";
LABEL_19:
  result = fprintf(__stream, " %s", v8);
LABEL_20:
  v9 = *(a1 + 148);
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = "edge_clamp";
    }

    else
    {
      v10 = "edge_unknown";
    }

    result = fprintf(__stream, " %s", v10);
  }

  if (*(a1 + 152) == 1)
  {
    result = fwrite(" nearestsampling", 0x10uLL, 1uLL, __stream);
  }

  if (*(a1 + 153) == 1)
  {

    return fwrite(" cache", 6uLL, 1uLL, __stream);
  }

  return result;
}

uint64_t CI::CGNode::add_args_to_hash(CI::CGNode *this, CI::XXHashHelper *a2)
{
  if (*(this + 14))
  {
    __src = *(this + 14);
    v4 = a2;
    v5 = 8;
  }

  else
  {
    LODWORD(__src) = CGImageGetIdentifier();
    v4 = a2;
    v5 = 4;
  }

  XXH64_update(v4, &__src, v5);
  LODWORD(__src) = *(this + 36);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 37);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 152);
  XXH64_update(a2, &__src, 4uLL);
  LODWORD(__src) = *(this + 52);
  return XXH64_update(a2, &__src, 4uLL);
}

double CI::CGNode::find_matching_roi(CI::CGNode *this, const CGRect *a2)
{
  v4 = CI::Node::rois(this);
  x = a2->origin.x;
  y = a2->origin.y;
  width = a2->size.width;
  height = a2->size.height;
  v16.origin.x = (*(*this + 176))(this);
  v16.origin.y = v9;
  v16.size.width = v10;
  v16.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v15 = CGRectIntersection(v14, v16);

  return CI::SerialRectArray::smallestContainingRect(v4, v15);
}

double CI::SerialRectArray::smallestContainingRect(CGRect **this, CGRect a2)
{
  x = a2.origin.x;
  v13 = *MEMORY[0x1E695F050];
  v3 = *this;
  if (*this != this[1])
  {
    height = a2.size.height;
    width = a2.size.width;
    y = a2.origin.y;
    v8 = -1.0;
    do
    {
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      if (CGRectContainsRect(*v3, v14))
      {
        v9 = v3->size.width;
        v10 = v3->size.height;
        if (v8 < 0.0 || v9 * v10 < v8)
        {
          v13 = v3->origin.x;
          v8 = v9 * v10;
        }
      }

      v3 = (v3 + 120);
    }

    while (v3 != this[1]);
  }

  return v13;
}

void CI::CGNode::add_roi(CI::CGNode *this, unint64_t a2, unint64_t a3, CGRect a4, const CI::parentROI *a5)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  if (CGRectIsEmpty(a4))
  {
    v13 = this;
    v14 = a2;
    v15 = a3;
    v16 = x;
    v17 = y;
    v18 = width;
    v19 = height;
    goto LABEL_66;
  }

  v67.origin.x = (*(*this + 176))(this);
  v20 = v67.origin.x;
  v21 = v67.origin.y;
  v22 = v67.size.width;
  v23 = v67.size.height;
  if (CGRectIsNull(v67))
  {
    v24 = 0;
    v25 = 0;
    v26 = 0x7FFFFFFF;
    v27 = 0x7FFFFFFF;
  }

  else
  {
    v68.origin.x = v20;
    v68.origin.y = v21;
    v68.size.width = v22;
    v68.size.height = v23;
    if (CGRectIsInfinite(v68))
    {
      v26 = -2147483647;
      v24 = 0xFFFFFFFFLL;
      v25 = 0xFFFFFFFFLL;
      v27 = -2147483647;
    }

    else
    {
      v69.origin.x = v20;
      v69.origin.y = v21;
      v69.size.width = v22;
      v69.size.height = v23;
      v70 = CGRectInset(v69, 0.000001, 0.000001);
      v71 = CGRectIntegral(v70);
      v27 = v71.origin.x;
      v26 = v71.origin.y;
      v25 = v71.size.width;
      v24 = v71.size.height;
    }
  }

  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  if (CGRectIsNull(v72))
  {
    v28 = 0;
    v29 = 0;
    v30 = 0x7FFFFFFF;
    v31 = 0x7FFFFFFF;
  }

  else
  {
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    if (CGRectIsInfinite(v73))
    {
      v30 = -2147483647;
      v28 = 0xFFFFFFFFLL;
      v29 = 0xFFFFFFFFLL;
      v31 = -2147483647;
    }

    else
    {
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      v75 = CGRectInset(v74, 0.000001, 0.000001);
      v76 = CGRectIntegral(v75);
      v31 = v76.origin.x;
      v30 = v76.origin.y;
      v29 = v76.size.width;
      v28 = v76.size.height;
    }
  }

  if (*(this + 37) != 1 || v27 == -2147483647 && v26 == -2147483647 && v25 == 0xFFFFFFFF && v24 == 0xFFFFFFFF)
  {
    goto LABEL_18;
  }

  v34 = 0x7FFFFFFF;
  if (v31 == 0x7FFFFFFF)
  {
    if (v30 == 0x7FFFFFFF && !v29 && !v28)
    {
      v32 = 0;
      v33 = 0;
      v35 = 0x7FFFFFFF;
      goto LABEL_19;
    }
  }

  else if (v31 == -2147483647 && v30 == -2147483647 && v29 == 0xFFFFFFFF && v28 == 0xFFFFFFFF)
  {
    goto LABEL_121;
  }

  if (v24)
  {
    v54 = 0;
  }

  else
  {
    v54 = v25 == 0;
  }

  v56 = v54 && v26 == 0x7FFFFFFF && v27 == 0x7FFFFFFF;
  if (!v56 && v27 <= v31 && v27 + v25 >= v31 + v29 && v26 <= v30 && v26 + v24 >= v30 + v28)
  {
LABEL_18:
    v32 = v28;
    v33 = v29;
    v34 = v30;
    v35 = v31;
    goto LABEL_19;
  }

LABEL_121:
  if ((v27 != 0x7FFFFFFF || v26 != 0x7FFFFFFF || v25 || v24) && (v31 != 0x7FFFFFFF || v30 != 0x7FFFFFFF || v29 || v28))
  {
    if (v31 == -2147483647 && v30 == -2147483647 && v29 == 0xFFFFFFFF && (v32 = v24, v33 = v25, v34 = v26, v35 = v27, v28 == 0xFFFFFFFF))
    {
      if (!v25)
      {
        goto LABEL_129;
      }
    }

    else
    {
      if (v27 <= v31)
      {
        v35 = v31;
      }

      else
      {
        v35 = v27;
      }

      v63 = v27 + v25;
      if (v27 + v25 >= v31 + v29)
      {
        v63 = v31 + v29;
      }

      LODWORD(v33) = v63 - v35;
      if (v63 < v35)
      {
        goto LABEL_129;
      }

      if (v26 <= v30)
      {
        v34 = v30;
      }

      else
      {
        v34 = v26;
      }

      v64 = v26 + v24;
      if (v26 + v24 >= v30 + v28)
      {
        v64 = v30 + v28;
      }

      v65 = __OFSUB__(v64, v34);
      LODWORD(v32) = v64 - v34;
      if (v32 < 0 != v65)
      {
        goto LABEL_129;
      }

      v33 = v33;
      v32 = v32;
      if (!v33)
      {
        goto LABEL_129;
      }
    }

    if (v32)
    {
      goto LABEL_19;
    }
  }

LABEL_129:
  v57 = v31 + v29;
  if (v57 >= v27)
  {
    v58 = v27 + v25;
    if (v31 <= v27 + v25)
    {
      if (v31 <= v27)
      {
        v35 = v27;
      }

      else
      {
        v35 = v31;
      }

      if (v57 >= v58)
      {
        v59 = v27 + v25;
      }

      else
      {
        v59 = v57;
      }

      v33 = v59 - v35;
    }

    else
    {
      v35 = v58 - 1;
      v33 = 1;
    }
  }

  else
  {
    v33 = 1;
    v35 = v27;
  }

  v60 = v30 + v28;
  if (v60 >= v26)
  {
    v61 = v26 + v24;
    if (v30 <= v26 + v24)
    {
      if (v30 <= v26)
      {
        v34 = v26;
      }

      else
      {
        v34 = v30;
      }

      if (v60 >= v61)
      {
        v62 = v26 + v24;
      }

      else
      {
        v62 = v60;
      }

      v32 = v62 - v34;
    }

    else
    {
      v34 = v61 - 1;
      v32 = 1;
    }
  }

  else
  {
    v32 = 1;
    v34 = v26;
  }

LABEL_19:
  v36 = 0x7FFFFFFF;
  v39 = v27 == 0x7FFFFFFF && v26 == 0x7FFFFFFF && v25 == 0 && v24 == 0;
  v40 = v39;
  if (v39 || v35 == 0x7FFFFFFF && v34 == 0x7FFFFFFF && !v33 && !v32)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0x7FFFFFFF;
  }

  else
  {
    if (v27 == -2147483647 && v26 == -2147483647 && v25 == 0xFFFFFFFF && v24 == 0xFFFFFFFF)
    {
      v42 = v32;
      v41 = v33;
      v43 = v34;
      v36 = v35;
      goto LABEL_53;
    }

    if (v35 != -2147483647 || v34 != -2147483647 || v33 != 0xFFFFFFFFLL || (v36 = v27, v43 = v26, v41 = v25, v42 = v24, v32 != 0xFFFFFFFFLL))
    {
      if (v27 <= v35)
      {
        v45 = v35;
      }

      else
      {
        v45 = v27;
      }

      v46 = v27 + v25;
      if (v27 + v25 >= v35 + v33)
      {
        v46 = v35 + v33;
      }

      if (v26 <= v34)
      {
        v47 = v34;
      }

      else
      {
        v47 = v26;
      }

      v48 = v34 + v32;
      if (v26 + v24 < v48)
      {
        v48 = v26 + v24;
      }

      v49 = v48 < v47;
      v50 = v48 - v47;
      if (v49)
      {
        v51 = 0x7FFFFFFF;
      }

      else
      {
        v51 = v45;
      }

      if (v49)
      {
        v47 = 0x7FFFFFFF;
        v52 = 0;
      }

      else
      {
        v52 = v46 - v45;
      }

      if (v49)
      {
        v50 = 0;
      }

      v53 = v46 < v45;
      if (v46 >= v45)
      {
        v36 = v51;
      }

      else
      {
        v36 = 0x7FFFFFFF;
      }

      if (v53)
      {
        v43 = 0x7FFFFFFF;
      }

      else
      {
        v43 = v47;
      }

      if (v53)
      {
        v41 = 0;
      }

      else
      {
        v41 = v52;
      }

      if (v53)
      {
        v42 = 0;
      }

      else
      {
        v42 = v50;
      }
    }
  }

  if (v25 > 0x1000 || v24 > 0x1000 || 3 * v24 * v25 > 4 * v41 * v42)
  {
LABEL_53:
    if (v36 == -2147483647)
    {
      if (v43 == -2147483647 && v41 == 0xFFFFFFFF && v42 == 0xFFFFFFFF)
      {
        v44 = MEMORY[0x1E695F040];
        goto LABEL_63;
      }
    }

    else if (v36 == 0x7FFFFFFF && v43 == 0x7FFFFFFF && !v41 && !v42)
    {
      goto LABEL_58;
    }

    v16 = v36;
    v17 = v43;
    v18 = v41;
    v19 = v42;
    goto LABEL_65;
  }

  if (v40)
  {
LABEL_58:
    v44 = MEMORY[0x1E695F050];
LABEL_63:
    v16 = *v44;
    v17 = v44[1];
    v18 = v44[2];
    v19 = v44[3];
    goto LABEL_65;
  }

  v16 = v27;
  v17 = v26;
  v18 = v25;
  v19 = v24;
LABEL_65:
  v13 = this;
  v14 = a2;
  v15 = a3;
LABEL_66:

  CI::Node::add_roi(v13, v14, v15, *&v16, a5);
}

uint64_t CI::CGNode::graphviz_add_images(CI::CGNode *this, void *a2)
{
  result = CI_PRINT_TREE_dump_inputs();
  if (result)
  {
    v5 = *(this + 13);

    return CIGVNodeAddImage(a2, v5);
  }

  return result;
}

_DWORD *CI::CGNode::extent(_DWORD *this)
{
  if (!this[37])
  {
    return (*(*this + 176))(this);
  }

  return this;
}

uint64_t CI::CGNode::may_be_extended_range(CI::CGNode *this)
{
  if (*(this + 36))
  {
    return CI::format_is_float(*(this + 30));
  }

  else
  {
    return 1;
  }
}

uint64_t CI::CGNode::output_depth(CI::CGNode *this)
{
  if (CI::format_is_deep(*(this + 30)))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void CI::fillBlock(uint64_t a1, int a2, int a3, IOSurfaceRef buffer)
{
  if (buffer)
  {
    if (a1)
    {
      Width = IOSurfaceGetWidth(buffer);
      Height = IOSurfaceGetHeight(buffer);
      BytesPerElement = IOSurfaceGetBytesPerElement(buffer);
      PixelSize = CGImageProviderGetPixelSize();
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      __CFDictionary::setValue(Mutable, *MEMORY[0x1E695F290], 1, v12);
      __CFDictionary::setValue(Mutable, *MEMORY[0x1E695F298], 0, v13);
      __CFDictionary::setValue(Mutable, @"kCGImageBlockTileRequest", 0);
      CGImageProviderGetSize();
      v15 = v14;
      v17 = v16;
      v18 = CGImageProviderCopyImageBlockSetWithOptions();
      if (v18)
      {
        v19 = v18;
        CFRelease(Mutable);
LABEL_10:
        CGImageBlockSetGetRect();
        v27.origin.x = 0.0;
        v27.origin.y = 0.0;
        v27.size.width = v15;
        v27.size.height = v17;
        if (CGRectContainsRect(v26, v27))
        {
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 0x40000000;
          v23[2] = ___ZN2CIL9fillBlockEP15CGImageProviderNS_11PixelFormatES2_P11__IOSurface_block_invoke;
          v23[3] = &__block_descriptor_tmp_20_2;
          v23[5] = 0;
          v23[6] = 0;
          v23[4] = v19;
          *&v23[7] = Width;
          *&v23[8] = Height;
          v23[9] = BytesPerElement;
          v23[10] = PixelSize;
          v24 = a2;
          v25 = a3;
          SurfaceApplyPlaneBlock(buffer, v23);
        }

        CGImageBlockSetRelease();
        return;
      }

      v19 = CGImageProviderCopyImageBlockSetWithOptions();
      CFRelease(Mutable);
      if (v19)
      {
        goto LABEL_10;
      }

      v22 = ci_logger_render();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        CI::fillBlock();
      }
    }

    else
    {
      v21 = ci_logger_render();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        CI::fillBlock();
      }
    }
  }

  else
  {
    v20 = ci_logger_render();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      CI::fillBlock();
    }
  }
}

void ___ZN2CIL9fillBlockEP15CGImageProviderNS_11PixelFormatES2_P11__IOSurface_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, size_t a6)
{
  Count = CGImageBlockSetGetCount();
  if (!Count)
  {
    return;
  }

  v10 = Count;
  v11 = 0;
  while (1)
  {
    CGImageBlockSetGetImageBlock();
    CGImageBlockGetRect();
    v13 = v12;
    v15 = v14;
    v33.size.width = v16;
    v33.size.height = v17;
    v33.origin.x = v12;
    v33.origin.y = v14;
    v31 = CGRectIntersection(*(a1 + 40), v33);
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    BytesPerRow = CGImageBlockGetBytesPerRow();
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    if (!CGRectIsEmpty(v32))
    {
      break;
    }

LABEL_10:
    if (++v11 == v10)
    {
      return;
    }
  }

  v23 = *(a1 + 72);
  Data = CGImageBlockGetData();
  if (Data)
  {
    v25 = height;
    v26 = (a2 + v23 * x + y * a6);
    v27 = (Data + *(a1 + 80) * (x - v13) + (y - v15) * BytesPerRow);
    if (*(a1 + 88) == 1799 && *(a1 + 92) == 1800)
    {
      rgbSrc.data = (Data + *(a1 + 80) * (x - v13) + (y - v15) * BytesPerRow);
      rgbSrc.height = height;
      rgbSrc.width = width;
      rgbSrc.rowBytes = BytesPerRow;
      v29.data = v26;
      v29.height = height;
      v29.width = width;
      v29.rowBytes = a6;
      vImageConvert_RGB16UtoRGBA16U(&rgbSrc, 0, 0xFFFFu, &v29, 0, 0);
    }

    else
    {
      for (; v25; --v25)
      {
        memcpy(v26, v27, *(a1 + 80) * width);
        v26 += a6;
        v27 += BytesPerRow;
      }
    }

    goto LABEL_10;
  }

  v28 = ci_logger_render();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    ___ZN2CIL9fillBlockEP15CGImageProviderNS_11PixelFormatES2_P11__IOSurface_block_invoke_cold_1();
  }
}

void *CI::InstanceCounted<(CI::Type)35>::~InstanceCounted(void *result)
{
  *result = &unk_1F1038E38;
  atomic_fetch_add(&dword_1ED7C47BC[33], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)35>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1038E38;
  atomic_fetch_add(&dword_1ED7C47BC[33], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::ClampNode::adjust_roi_for_clamp_rect(CI::ClampNode *this, CGRect a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = a2.size.height;
  v8 = a2.size.width;
  v9 = a2.origin.y;
  v10 = a2.origin.x;
  CGRectGetMinX(a3);
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  CGRectGetMinY(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetMaxX(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetMaxY(v13);
  v14.origin.x = v10;
  v14.origin.y = v9;
  v14.size.width = v8;
  v14.size.height = v7;
  CGRectGetMinX(v14);
  v15.origin.x = v10;
  v15.origin.y = v9;
  v15.size.width = v8;
  v15.size.height = v7;
  CGRectGetMinY(v15);
  v16.origin.x = v10;
  v16.origin.y = v9;
  v16.size.width = v8;
  v16.size.height = v7;
  CGRectGetMaxX(v16);
  v17.origin.x = v10;
  v17.origin.y = v9;
  v17.size.width = v8;
  v17.size.height = v7;
  CGRectGetMaxY(v17);
}

uint64_t CI::ClampNode::append_to_tree(CI::ClampNode *this, CI::Node *a2, CGRect a3)
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  while (1)
  {
    while (1)
    {
      v8 = this;
      if ((*(*this + 16))(this, a2) == 41 || (v50.origin.x = (*(*this + 168))(this), CGRectIsInfinite(v50)) && (v61.origin.x = (*(*this + 176))(this), v61.origin.y = v9, v61.size.width = v10, v61.size.height = v11, v51.origin.x = x, v51.origin.y = y, v51.size.width = width, v51.size.height = height, CGRectContainsRect(v51, v61)))
      {
        v40 = this;
        goto LABEL_32;
      }

      v12 = (*(*this + 16))(this);
      if (v12 != 36)
      {
        break;
      }

      v55.origin.x = x;
      v55.origin.y = y;
      v55.size.width = width;
      v55.size.height = height;
      CI::ClampNode::adjust_roi_for_clamp_rect(v12, v55, *(this + 56));
      x = v23;
      y = v24;
      width = v25;
      height = v26;
      this = (*(*this + 48))(this, 0);
    }

    if ((*(*this + 16))(this) == 34)
    {
      v13 = *(this + 8);
      if (fabs(v13) < 0.0001 && (v14 = *(this + 9), fabs(v14) < 0.0001))
      {
        v15 = *(this + 7);
        v16 = *(this + 10);
      }

      else
      {
        v15 = *(this + 7);
        if (fabs(v15) >= 0.0001)
        {
          goto LABEL_11;
        }

        v16 = *(this + 10);
        if (fabs(v16) >= 0.0001)
        {
          goto LABEL_11;
        }

        v14 = *(this + 9);
      }

      v47.a = v15;
      v47.b = v13;
      v47.c = v14;
      v47.d = v16;
      *&v47.tx = *(this + 88);
      memset(&v48, 0, sizeof(v48));
      CGAffineTransformInvert(&v48, &v47);
      v47 = v48;
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v59 = CGRectApplyAffineTransform(v58, &v47);
      v41 = v59.origin.x;
      v42 = v59.origin.y;
      v43 = v59.size.width;
      v44 = v59.size.height;
      v45 = (*(*this + 48))(this, 0);
      v60.origin.x = v41;
      v60.origin.y = v42;
      v60.size.width = v43;
      v60.size.height = v44;
      CI::ClampNode::append_to_tree(v45, v46, v60);
      operator new();
    }

LABEL_11:
    if ((*(*this + 16))(this) != 40)
    {
      goto LABEL_18;
    }

    this = (*(*this + 48))(this, 0);
    v62.origin.x = (*(*v8 + 168))(v8);
    v62.origin.y = v17;
    v62.size.width = v18;
    v62.size.height = v19;
    v52.origin.x = x;
    v52.origin.y = y;
    v52.size.width = width;
    v52.size.height = height;
    if (CGRectEqualToRect(v52, v62))
    {
      v53.origin.x = (*(*this + 168))(this);
      if (CGRectIsInfinite(v53))
      {
        v63.origin.x = (*(*this + 176))(this);
        v63.origin.y = v20;
        v63.size.width = v21;
        v63.size.height = v22;
        v54.origin.x = x;
        v54.origin.y = y;
        v54.size.width = width;
        v54.size.height = height;
        if (CGRectEqualToRect(v54, v63))
        {
          break;
        }
      }
    }

    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    if (!CGRectContainsRect(*(v8 + 56), v64))
    {
LABEL_18:
      if (*(*v8 + 16))(v8) != 34 || (v27 = *(v8 + 72), *&v48.a = *(v8 + 56), *&v48.c = v27, *&v48.tx = *(v8 + 88), v28 = (*(*v8 + 48))(v8, 0), (*(*v28 + 16))(v28) != 40) || (v29 = (*(*v28 + 48))(v28, 0), v30 = (*(*v29 + 16))(v29), !CI::is_image_type(v30)) || (v65.origin.x = (*(*v28 + 168))(v28), v65.origin.y = v31, v65.size.width = v32, v65.size.height = v33, v56.origin.x = x, v56.origin.y = y, v56.size.width = width, v56.size.height = height, !CGRectEqualToRect(v56, v65)) || (v66.origin.x = (*(*v29 + 176))(v29), v66.origin.y = v34, v66.size.width = v35, v66.size.height = v36, v57.origin.x = x, v57.origin.y = y, v57.size.width = width, v57.size.height = height, v37 = CGRectEqualToRect(v57, v66), (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&v48.a, xmmword_19CF2D8A0), vceqq_f64(*&v48.c, xmmword_19CF26640)))))) || v48.tx != 0.0 || (v37 ? (v38 = v48.ty == height) : (v38 = 0), !v38))
      {
        operator new();
      }

      return CI::AffineNode::append_to_tree(v29, &v48, 0);
    }
  }

  v40 = this;
LABEL_32:

  return CI::Object::ref(v40);
}

void CI::ClampNode::~ClampNode(CI::ClampNode *this)
{
  *(this + 6) = &unk_1F1039048;
  atomic_fetch_add(&dword_1ED7C47BC[34], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F1039048;
  atomic_fetch_add(&dword_1ED7C47BC[34], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

size_t CI::ClampNode::print_for_graph_core(void *a1, FILE *__stream)
{
  fwrite("clampRect ", 0xAuLL, 1uLL, __stream);
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[10];

  return CI::fprintf(__stream, v4, *&v5);
}

uint64_t CI::ClampNode::alpha_one(CI::ClampNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 280);

    return v3();
  }

  return result;
}

uint64_t CI::ClampNode::output_is_rg(CI::ClampNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 288);

    return v3();
  }

  return result;
}

uint64_t CI::ClampNode::output_is_r(CI::ClampNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 296);

    return v3();
  }

  return result;
}

uint64_t CI::ClampNode::output_is_luma(CI::ClampNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 304);

    return v3();
  }

  return result;
}

uint64_t CI::ClampNode::output_depth(CI::ClampNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 320);

    return v3();
  }

  return result;
}

uint64_t CI::ClampNode::output_format(CI::ClampNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 328);

    return v3();
  }

  return result;
}

BOOL CI::ClampNode::is_simple(CI::ClampNode *this)
{
  v16.origin.x = (*(**(this + 5) + 168))(*(this + 5));
  result = CGRectContainsRect(v16, *(this + 56));
  if (result)
  {
    v3 = *(this + 7);
    v4 = *(this + 8);
    v5 = *(this + 9);
    v6 = *(this + 10);
    v17.origin.x = v3;
    v17.origin.y = v4;
    v17.size.width = v5;
    v17.size.height = v6;
    v18 = CGRectIntegral(v17);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;

    return CGRectEqualToRect(*&v11, *&x);
  }

  return result;
}

void non-virtual thunk toCI::ClampNode::~ClampNode(CI::ClampNode *this)
{
  *this = &unk_1F1039048;
  atomic_fetch_add(&dword_1ED7C47BC[34], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F1039048;
  atomic_fetch_add(&dword_1ED7C47BC[34], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)36>::~InstanceCounted(void *result)
{
  *result = &unk_1F1039048;
  atomic_fetch_add(&dword_1ED7C47BC[34], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)36>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1039048;
  atomic_fetch_add(&dword_1ED7C47BC[34], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

float32x2_t CI::sw_ci_clamp_rect(CI *a1, uint64_t a2, uint64_t a3)
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

  return vminnm_f32(vmaxnm_f32(*CI::getDC(a1), *v7), *&vextq_s8(*v7->f32, *v7->f32, 8uLL));
}

CI::Object *CI::ClampToAlphaNode::append_to_tree(CI::ClampToAlphaNode *this, CI::Node *a2)
{
  v2 = this;
  if (a2 && (*(*this + 240))(this))
  {
    v3 = 0;
    v4 = v2;
    while (1)
    {
      v5 = v4;
      if ((*(*v4 + 184))(v4))
      {
        break;
      }

      v4 = (*(*v4 + 48))(v4, 0);
      v3 = v5;
      if (((*(*v4 + 240))(v4) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v5 = v3;
  }

  else
  {
    v5 = 0;
    v4 = v2;
  }

LABEL_8:
  if ((*(*v4 + 272))(v4))
  {
    operator new();
  }

  CI::Object::ref(v4);
  if (!v5)
  {
    return v4;
  }

  (*(*v5 + 208))(v5, v4, 0);
  CI::Object::unref(v4);
  if (v2)
  {
    CI::Object::ref(v2);
  }

  return v2;
}

CI::Object *CI::ClampToZeroToOneNode::append_to_tree(CI::ClampToZeroToOneNode *this, CI::Node *a2)
{
  v2 = this;
  if (a2 && (*(*this + 240))(this))
  {
    v3 = 0;
    v4 = v2;
    while (1)
    {
      v5 = v4;
      if ((*(*v4 + 184))(v4))
      {
        break;
      }

      v4 = (*(*v4 + 48))(v4, 0);
      v3 = v5;
      if (((*(*v4 + 240))(v4) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v5 = v3;
  }

  else
  {
    v5 = 0;
    v4 = v2;
  }

LABEL_8:
  if ((*(*v4 + 16))(v4) != 38)
  {
    operator new();
  }

  CI::Object::ref(v4);
  if (!v5)
  {
    return v4;
  }

  (*(*v5 + 208))(v5, v4, 0);
  CI::Object::unref(v4);
  if (v2)
  {
    CI::Object::ref(v2);
  }

  return v2;
}

void CI::ClampToAlphaNode::~ClampToAlphaNode(CI::ClampToAlphaNode *this)
{
  *(this + 6) = &unk_1F1039430;
  atomic_fetch_add(&dword_1ED7C47BC[35], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F1039430;
  atomic_fetch_add(&dword_1ED7C47BC[35], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::ClampToAlphaNode::~ClampToAlphaNode(CI::ClampToAlphaNode *this)
{
  *this = &unk_1F1039430;
  atomic_fetch_add(&dword_1ED7C47BC[35], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F1039430;
  atomic_fetch_add(&dword_1ED7C47BC[35], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void CI::ClampToZeroToOneNode::~ClampToZeroToOneNode(CI::ClampToZeroToOneNode *this)
{
  *(this + 6) = &unk_1F1039458;
  atomic_fetch_add(&dword_1ED7C47BC[36], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F1039458;
  atomic_fetch_add(&dword_1ED7C47BC[36], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ClampToZeroToOneNode::may_be_extended_range(CI::ClampToZeroToOneNode *this)
{
  if ((*(**(this + 5) + 280))(*(this + 5)))
  {
    return 0;
  }

  v3 = *(**(this + 5) + 272);

  return v3();
}

void non-virtual thunk toCI::ClampToZeroToOneNode::~ClampToZeroToOneNode(CI::ClampToZeroToOneNode *this)
{
  *this = &unk_1F1039458;
  atomic_fetch_add(&dword_1ED7C47BC[36], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F1039458;
  atomic_fetch_add(&dword_1ED7C47BC[36], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)37>::~InstanceCounted(void *result)
{
  *result = &unk_1F1039430;
  atomic_fetch_add(&dword_1ED7C47BC[35], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)37>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1039430;
  atomic_fetch_add(&dword_1ED7C47BC[35], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

double CI::sw_ci_clamp_to_alpha(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vminnmq_f32(vmaxnmq_f32(*v7, 0), vdupq_laneq_s32(*v7, 3)).u64[0];
  return result;
}

void *CI::InstanceCounted<(CI::Type)38>::~InstanceCounted(void *result)
{
  *result = &unk_1F1039458;
  atomic_fetch_add(&dword_1ED7C47BC[36], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)38>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1039458;
  atomic_fetch_add(&dword_1ED7C47BC[36], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

double CI::sw_ci_clamp_to_zero_to_one(uint64_t a1, uint64_t a2, uint64_t a3)
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

  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(vmaxnmq_f32(*v7, 0), _Q1).u64[0];
  return result;
}

BOOL CI::ColorMatrixNode::is_identity(CI::ColorMatrixNode *this, const double (*a2)[4])
{
  return fabs(*this + -1.0) < 0.0003 && fabs(*(this + 1)) < 0.0003 && fabs(*(this + 2)) < 0.0003 && fabs(*(this + 3)) < 0.0003 && fabs(*(this + 4)) < 0.0003 && fabs(*(this + 5) + -1.0) < 0.0003 && fabs(*(this + 6)) < 0.0003 && fabs(*(this + 7)) < 0.0003 && fabs(*(this + 8)) < 0.0003 && fabs(*(this + 9)) < 0.0003 && fabs(*(this + 10) + -1.0) < 0.0003 && fabs(*(this + 11)) < 0.0003 && fabs(*(this + 12)) < 0.0003 && fabs(*(this + 13)) < 0.0003 && fabs(*(this + 14)) < 0.0003 && fabs(*(this + 15) + -1.0) < 0.0003 && fabs(*(this + 16)) < 0.0003 && fabs(*(this + 17)) < 0.0003 && fabs(*(this + 18)) < 0.0003 && fabs(*(this + 19)) < 0.0003;
}

{
  return CI::ColorMatrixNode::is_identity((this + 56), a2);
}

BOOL CI::ColorMatrixNode::is_3x1(CI::ColorMatrixNode *this, const double (*a2)[4])
{
  result = CI::ColorMatrixNode::is_3x3(this, a2);
  if (result)
  {
    v4 = *(this + 4);
    if (vabdd_f64(*this, v4) >= 0.0003)
    {
      return 0;
    }

    if (vabdd_f64(v4, *(this + 8)) >= 0.0003)
    {
      return 0;
    }

    v5 = *(this + 5);
    if (vabdd_f64(*(this + 1), v5) >= 0.0003)
    {
      return 0;
    }

    if (vabdd_f64(v5, *(this + 9)) >= 0.0003)
    {
      return 0;
    }

    v6 = *(this + 6);
    return vabdd_f64(*(this + 2), v6) < 0.0003 && vabdd_f64(v6, *(this + 10)) < 0.0003;
  }

  return result;
}

uint64_t CI::ColorMatrixNode::extent(uint64_t this)
{
  if (fabs(*(this + 208)) < 0.0003)
  {
    return (*(**(this + 40) + 168))(*(this + 40));
  }

  return this;
}

uint64_t CI::ColorMatrixNode::alpha_one(CI::ColorMatrixNode *this, const double (*a2)[4])
{
  if (CI::ColorMatrixNode::is_alpha_one((this + 56), a2))
  {
    return 1;
  }

  result = CI::ColorMatrixNode::is_alpha_preserving((this + 56), v3);
  if (result)
  {
    v5 = *(**(this + 5) + 280);

    return v5();
  }

  return result;
}

CI::ColorMatrixNode *CI::ColorMatrixNode::append_to_tree(CI::ColorMatrixNode *this, CI::Node *a2, const double (*a3)[4], int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = 0;
  v8 = *(a2 + 24);
  v9 = *(a2 + 5);
  v10 = 0;
  v11 = *(a2 + 3);
  v12 = *(a2 + 8);
  v13 = 0;
  v14 = xmmword_19CF2DB50;
  v15 = unk_19CF2DB60;
  v16 = 0u;
  v17 = 0u;
  return CI::ColorMatrixNode::append_to_tree(this, &v5, a3, a4);
}

{
  v5 = a3;
  v37 = *MEMORY[0x1E69E9840];
  if (CI::ColorMatrixNode::is_identity(a2, a2))
  {
    if (!this)
    {
      return this;
    }
  }

  else if (!(*(*this + 304))(this) || !CI::ColorMatrixNode::is_rrra(a2, v8))
  {
    if (a4 && (*(*this + 240))(this))
    {
      v10 = 0;
      v11 = this;
      do
      {
        v12 = v11;
        if ((*(*v11 + 184))(v11))
        {
          break;
        }

        v11 = (*(*v11 + 48))(v11, 0);
        v10 = v12;
      }

      while (((*(*v11 + 240))(v11) & 1) != 0);
    }

    else
    {
      v10 = 0;
      v11 = this;
    }

    if ((*(*v11 + 16))(v11) != 39)
    {
      operator new();
    }

    CMatrix::CMatrix(v25, 4u, 4u, v11 + 7);
    CMatrix::CMatrix(v24, 4u, 1u, v11 + 23);
    CMatrix::CMatrix(v23, 4u, 4u, a2);
    CMatrix::CMatrix(v22, 4u, 1u, a2 + 16);
    CMatrix::operator*(v23, v25, v21);
    CMatrix::operator*(v23, v24, v36);
    CMatrix::operator+(v36, v22, v20);
    v26[0] = CMatrix::operator[](v21, 0);
    v26[1] = v13;
    v14 = CMatrixRow::operator[](v26, 0);
    v36[4] = v14[4];
    v36[5] = v14[5];
    v36[6] = v14[6];
    v36[7] = v14[7];
    v36[0] = *v14;
    v36[1] = v14[1];
    v36[2] = v14[2];
    v36[3] = v14[3];
    v26[0] = CMatrix::operator[](v20, 0);
    v26[1] = v15;
    v16 = CMatrixRow::operator[](v26, 0);
    v36[8] = *v16;
    v36[9] = v16[1];
    if (*(v11 + 216) != v5)
    {
      operator new();
    }

    if (!CI::ColorMatrixNode::is_identity(v36, v17))
    {
      operator new();
    }

    v18 = (*(**(v11 + 5) + 16))(*(v11 + 5));
    if (CI::is_image_type(v18) && (*(**(v11 + 5) + 216))(*(v11 + 5)) == 2)
    {
      v27 = 0u;
      v29 = 0;
      v33 = 0u;
      v35 = 0;
      v34 = 0u;
      v32 = 0u;
      v31 = 0u;
      v28 = 0u;
      memset(&v26[1], 0, 32);
      v26[0] = 0x3FF0000000000000;
      *&v27 = 0x3FF0000000000000;
      v30 = 0x3FF0000000000000;
      *&v33 = 0x3FF0000000000000;
      operator new();
    }

    v19 = *(v11 + 5);
    if (v19)
    {
      CI::Object::ref(*(v11 + 5));
    }

    if (!v10)
    {
      return v19;
    }

    (*(*v10 + 208))(v10, v19, 0);
    if (v19)
    {
      CI::Object::unref(v19);
    }

    CI::Object::ref(this);
    return this;
  }

  return CI::Object::ref(this);
}

uint64_t CI::ColorMatrixNode::add_to_kernel_hash(CI::ColorMatrixNode *this, const double (*a2)[4])
{
  if (CI::ColorMatrixNode::is_rrra((this + 56), a2))
  {
    v5 = "_ci_colormatrix_rrra";
  }

  else if (CI::ColorMatrixNode::is_diagonal((this + 56), v4))
  {
    v5 = "_ci_colormatrixdiag";
  }

  else if (CI::ColorMatrixNode::is_diagonal4((this + 56), v6))
  {
    if (*(this + 216))
    {
      v5 = "_ci_colormatrixdiag4";
    }

    else
    {
      v5 = "_ci_colormatrixdiag4_ua";
    }
  }

  else if (CI::ColorMatrixNode::is_3x1((this + 56), v7))
  {
    v5 = "_ci_colormatrix3x1";
  }

  else if (CI::ColorMatrixNode::is_3x3((this + 56), v8))
  {
    v5 = "_ci_colormatrix3x3";
  }

  else
  {
    is_3x4 = CI::ColorMatrixNode::is_3x4((this + 56), v9);
    v11 = "_ci_colormatrix_ua";
    v12 = "_ci_colormatrix3x4_ua";
    if (*(this + 216))
    {
      v11 = "_ci_colormatrix";
      v12 = "_ci_colormatrix3x4";
    }

    if (is_3x4)
    {
      v5 = v12;
    }

    else
    {
      v5 = v11;
    }
  }

  return CI::XXHashHelper::addstr(a2, v5);
}

__n128 CI::ColorMatrixNode::make_rgbbias(CI::ColorMatrixNode *this, double *a2, const double *a3, const double *a4, __n128 *a5, double (*a6)[4])
{
  CMatrix::CMatrix(v27, 4u, 1u, *this, a4, a5, a6, *(this + 1), *(this + 2), 0);
  CMatrix::CMatrix(v26, 4u, 4u, *a2, v10, v11, *(a2 + 1), *(a2 + 2), 0, *a3, *(a3 + 1), *(a3 + 2), 0, *a4, *(a4 + 1), *(a4 + 2), 0, 0, 0, 0, 0x3FF0000000000000);
  CMatrix::operator*(v26, v27, v25);
  bzero(a5, 0xA0uLL);
  v23 = CMatrix::operator[](v26, 0);
  v24 = v12;
  v13 = CMatrixRow::operator[](&v23, 0);
  v14 = v13[3];
  v16 = *v13;
  v15 = v13[1];
  a5[2] = v13[2];
  a5[3] = v14;
  *a5 = v16;
  a5[1] = v15;
  v17 = v13[7];
  v19 = v13[4];
  v18 = v13[5];
  a5[6] = v13[6];
  a5[7] = v17;
  a5[4] = v19;
  a5[5] = v18;
  v23 = CMatrix::operator[](v25, 0);
  v24 = v20;
  v21 = CMatrixRow::operator[](&v23, 0);
  result = v21[1];
  a5[8] = *v21;
  a5[9] = result;
  return result;
}

size_t CI::ColorMatrixNode::print_for_graph_core(uint64_t a1, FILE *a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = 32;
  }

  else
  {
    v6 = 10;
  }

  if (CI::ColorMatrixNode::is_rrra((a1 + 56), a2))
  {

    return fwrite("color_matrix_rrra", 0x11uLL, 1uLL, a2);
  }

  else if (CI::ColorMatrixNode::is_diagonal((a1 + 56), v7))
  {
    return fprintf(a2, "color_matrix_diag%c[%g, %g, %g]");
  }

  else if (CI::ColorMatrixNode::is_diagonal4((a1 + 56), v9))
  {
    if (*(a1 + 216))
    {
      return fprintf(a2, "color_matrix_diag4%c[%g, %g, %g, %g]");
    }

    else
    {
      return fprintf(a2, "color_matrix_diag4_ua%c[%g, %g, %g, %g]");
    }
  }

  else if (CI::ColorMatrixNode::is_3x1((a1 + 56), v10))
  {
    return fprintf(a2, "color_matrix_3x1%c[%g, %g, %g]");
  }

  else if (CI::ColorMatrixNode::is_3x3((a1 + 56), v11))
  {
    v13 = CI::name_matrix_3x3((a1 + 56), v12);
    fprintf(a2, "color_matrix_%s%c", v13, v6);
    fprintf(a2, "r=[%g %g %g]%c", *(a1 + 56), *(a1 + 64), *(a1 + 72), v6);
    fprintf(a2, "g=[%g %g %g]%c", *(a1 + 88), *(a1 + 96), *(a1 + 104), v6);
    return fprintf(a2, "b=[%g %g %g]");
  }

  else if (CI::ColorMatrixNode::is_3x4((a1 + 56), v12))
  {
    if (*(a1 + 216))
    {
      v15 = "";
    }

    else
    {
      v15 = "_ua";
    }

    v16 = CI::name_matrix_3x4((a1 + 56), v14);
    fprintf(a2, "color_matrix_%s%s%c", v15, v16, v6);
    fprintf(a2, "r=[%g %g %g]%c", *(a1 + 56), *(a1 + 64), *(a1 + 72), v6);
    fprintf(a2, "g=[%g %g %g]%c", *(a1 + 88), *(a1 + 96), *(a1 + 104), v6);
    fprintf(a2, "b=[%g %g %g]%c", *(a1 + 120), *(a1 + 128), *(a1 + 136), v6);
    return fprintf(a2, "bias=[%g %g %g]");
  }

  else if (CI::ColorMatrixNode::is_4x3(a1))
  {
    fprintf(a2, "color_matrix_4x3%c", v6);
    fprintf(a2, "r=[%g %g %g %g]%c", *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), v6);
    fprintf(a2, "g=[%g %g %g %g]%c", *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), v6);
    return fprintf(a2, "b=[%g %g %g %g]%c");
  }

  else
  {
    if (*(a1 + 216))
    {
      v17 = "";
    }

    else
    {
      v17 = "_ua";
    }

    fprintf(a2, "color_matrix%s%c", v17, v6);
    fprintf(a2, "r=[%g %g %g %g]%c", *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), v6);
    fprintf(a2, "g=[%g %g %g %g]%c", *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), v6);
    fprintf(a2, "b=[%g %g %g %g]%c", *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), v6);
    fprintf(a2, "a=[%g %g %g %g]%c", *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), v6);
    return fprintf(a2, "bias=[%g %g %g %g]");
  }
}

const char *CI::name_matrix_3x3(CI *this, const double (*a2)[4])
{
  v3 = *this;
  if (fabs(*this + -1.22486) < 0.0003 && fabs(*(this + 1) + 0.225095) < 0.0003 && fabs(*(this + 2) + -0.0000143051) < 0.0003 && fabs(*(this + 4) + 0.0420312) < 0.0003 && fabs(*(this + 5) + -1.04215) < 0.0003 && fabs(*(this + 6) + -0.0000336338) < 0.0003 && fabs(*(this + 8) + 0.0196301) < 0.0003 && fabs(*(this + 9) + 0.0786319) < 0.0003 && fabs(*(this + 10) + -1.09799) < 0.0003)
  {
    return "P3_to_709";
  }

  if (fabs(v3 + -0.822518) < 0.0003 && fabs(*(this + 1) + -0.177654) < 0.0003 && fabs(*(this + 2) + 0.0000161231) < 0.0003 && fabs(*(this + 4) + -0.0331725) < 0.0003 && fabs(*(this + 5) + -0.966714) < 0.0003 && fabs(*(this + 6) + 0.0000300407) < 0.0003 && fabs(*(this + 8) + -0.0170808) < 0.0003 && fabs(*(this + 9) + -0.0724069) < 0.0003 && fabs(*(this + 10) + -0.910754) < 0.0003)
  {
    return "709_to_P3";
  }

  if (fabs(v3 + -1.66039) < 0.0003 && fabs(*(this + 1) + 0.587787) < 0.0003 && fabs(*(this + 2) + 0.0728179) < 0.0003 && fabs(*(this + 4) + 0.124542) < 0.0003 && fabs(*(this + 5) + -1.13299) < 0.0003 && fabs(*(this + 6) + 0.00833634) < 0.0003 && fabs(*(this + 8) + 0.0181401) < 0.0003 && fabs(*(this + 9) + 0.10058) < 0.0003 && fabs(*(this + 10) + -1.11843) < 0.0003)
  {
    return "2020_to_709";
  }

  if (fabs(v3 + -0.627445) < 0.0003 && fabs(*(this + 1) + -0.329358) < 0.0003 && fabs(*(this + 2) + -0.0433061) < 0.0003 && fabs(*(this + 4) + -0.0690914) < 0.0003 && fabs(*(this + 5) + -0.919472) < 0.0003 && fabs(*(this + 6) + -0.0113517) < 0.0003 && fabs(*(this + 8) + -0.01639) < 0.0003 && fabs(*(this + 9) + -0.0880293) < 0.0003 && fabs(*(this + 10) + -0.895833) < 0.0003)
  {
    return "709_to_2020";
  }

  if (fabs(v3 + -1.39826) < 0.0003 && fabs(*(this + 1) + 0.39846) < 0.0003 && fabs(*(this + 2) + -0.00000625849) < 0.0003 && fabs(*(this + 4) + -0.0000209321) < 0.0003 && fabs(*(this + 5) + -1.00008) < 0.0003 && fabs(*(this + 6) + -0.0000304971) < 0.0003 && fabs(*(this + 8) + -0.000014063) < 0.0003 && fabs(*(this + 9) + 0.0429515) < 0.0003 && fabs(*(this + 10) + -1.04267) < 0.0003)
  {
    return "AdobeRGB_to_709";
  }

  if (fabs(v3 + -0.715173) < 0.0003 && fabs(*(this + 1) + -0.284946) < 0.0003 && fabs(*(this + 2) + 0.0000126362) < 0.0003 && fabs(*(this + 4) + 0.0000149781) < 0.0003 && fabs(*(this + 5) + -0.999917) < 0.0003 && fabs(*(this + 6) + 0.0000292528) < 0.0003 && fabs(*(this + 8) + 0.0000102594) < 0.0003 && fabs(*(this + 9) + -0.0411866) < 0.0003 && fabs(*(this + 10) + -0.959077) < 0.0003)
  {
    return "709_to_AdobeRGB";
  }

  if (fabs(v3 + -1.34358) < 0.0003 && fabs(*(this + 1) + 0.282183) < 0.0003 && fabs(*(this + 2) + 0.061393) < 0.0003 && fabs(*(this + 4) + 0.0653165) < 0.0003 && fabs(*(this + 5) + -1.07578) < 0.0003 && fabs(*(this + 6) + 0.010508) < 0.0003 && fabs(*(this + 8) + -0.00282185) < 0.0003 && fabs(*(this + 9) + 0.0196068) < 0.0003 && fabs(*(this + 10) + -1.01677) < 0.0003)
  {
    return "2020_to_P3";
  }

  if (fabs(v3 + -0.753838) < 0.0003 && fabs(*(this + 1) + -0.198602) < 0.0003 && fabs(*(this + 2) + -0.0475697) < 0.0003 && fabs(*(this + 4) + -0.0457577) < 0.0003 && fabs(*(this + 5) + -0.941786) < 0.0003 && fabs(*(this + 6) + -0.012496) < 0.0003 && fabs(*(this + 8) + 0.00120976) < 0.0003 && fabs(*(this + 9) + -0.0176097) < 0.0003 && fabs(*(this + 10) + -0.983618) < 0.0003)
  {
    return "P3_to_2020";
  }

  if (CI::name_matrix_3x3(double const(*)[4])::onceToken != -1)
  {
    CI::name_matrix_3x3();
  }

  v5 = *this;
  v6 = &CI::name_matrix_3x3(double const(*)[4])::common;
  v7 = 6;
  v8 = 1;
  result = "3x3";
  while (vabdd_f64(v5, v6[2]) >= 0.0003 || vabdd_f64(*(this + 1), v6[3]) >= 0.0003 || vabdd_f64(*(this + 2), v6[4]) >= 0.0003 || vabdd_f64(*(this + 4), v6[5]) >= 0.0003 || vabdd_f64(*(this + 5), v6[6]) >= 0.0003 || vabdd_f64(*(this + 6), v6[7]) >= 0.0003 || vabdd_f64(*(this + 8), v6[8]) >= 0.0003 || vabdd_f64(*(this + 9), v6[9]) >= 0.0003 || vabdd_f64(*(this + 10), v6[10]) >= 0.0003)
  {
    if (vabdd_f64(v5, v6[15]) < 0.0003 && vabdd_f64(*(this + 1), v6[16]) < 0.0003 && vabdd_f64(*(this + 2), v6[17]) < 0.0003 && vabdd_f64(*(this + 4), v6[18]) < 0.0003 && vabdd_f64(*(this + 5), v6[19]) < 0.0003 && vabdd_f64(*(this + 6), v6[20]) < 0.0003 && vabdd_f64(*(this + 8), v6[21]) < 0.0003 && vabdd_f64(*(this + 9), v6[22]) < 0.0003 && vabdd_f64(*(this + 10), v6[23]) < 0.0003)
    {
      v8 = 14;
      return *&v6[v8];
    }

    v6 += 27;
    if (!--v7)
    {
      return result;
    }
  }

  return *&v6[v8];
}

const char *CI::name_matrix_3x4(CI *this, const double (*a2)[4])
{
  if (CI::name_matrix_3x4(double const(*)[4])::onceToken != -1)
  {
    CI::name_matrix_3x4();
  }

  v3 = *this;
  v4 = &CI::name_matrix_3x4(double const(*)[4])::common;
  v5 = 24;
  v6 = 2;
  result = "3x4";
  while (vabdd_f64(v3, v4[3]) >= 0.0003 || vabdd_f64(*(this + 1), v4[4]) >= 0.0003 || vabdd_f64(*(this + 2), v4[5]) >= 0.0003 || vabdd_f64(*(this + 4), v4[6]) >= 0.0003 || vabdd_f64(*(this + 5), v4[7]) >= 0.0003 || vabdd_f64(*(this + 6), v4[8]) >= 0.0003 || vabdd_f64(*(this + 8), v4[9]) >= 0.0003 || vabdd_f64(*(this + 9), v4[10]) >= 0.0003 || vabdd_f64(*(this + 10), v4[11]) >= 0.0003 || vabdd_f64(*(this + 16), v4[12]) >= 0.0003 || vabdd_f64(*(this + 17), v4[13]) >= 0.0003 || vabdd_f64(*(this + 18), v4[14]) >= 0.0003)
  {
    if (vabdd_f64(v3, v4[16]) < 0.0003 && vabdd_f64(*(this + 1), v4[17]) < 0.0003 && vabdd_f64(*(this + 2), v4[18]) < 0.0003 && vabdd_f64(*(this + 4), v4[19]) < 0.0003 && vabdd_f64(*(this + 5), v4[20]) < 0.0003 && vabdd_f64(*(this + 6), v4[21]) < 0.0003 && vabdd_f64(*(this + 8), v4[22]) < 0.0003 && vabdd_f64(*(this + 9), v4[23]) < 0.0003 && vabdd_f64(*(this + 10), v4[24]) < 0.0003 && vabdd_f64(*(this + 16), v4[25]) < 0.0003 && vabdd_f64(*(this + 17), v4[26]) < 0.0003 && vabdd_f64(*(this + 18), v4[27]) < 0.0003)
    {
      v6 = 15;
      return *&v4[v6];
    }

    v4 += 28;
    if (!--v5)
    {
      return result;
    }
  }

  return *&v4[v6];
}

size_t CI::ColorMatrixNode::print_for_graph_short(CI::ColorMatrixNode *this, __sFILE *a2)
{
  if (CI::ColorMatrixNode::is_rrra((this + 56), a2))
  {
    v5 = "color_matrix_rrra";
LABEL_5:
    v7 = 17;
    goto LABEL_6;
  }

  if (CI::ColorMatrixNode::is_diagonal((this + 56), v4))
  {
    v5 = "color_matrix_diag";
    goto LABEL_5;
  }

  if (CI::ColorMatrixNode::is_diagonal4((this + 56), v6))
  {
    if (*(this + 216))
    {
      v5 = "color_matrix_diag4";
      v7 = 18;
    }

    else
    {
      v5 = "color_matrix_diag4_ua";
      v7 = 21;
    }

    goto LABEL_6;
  }

  if (CI::ColorMatrixNode::is_3x1((this + 56), v9))
  {
    v5 = "color_matrix_3x1";
LABEL_14:
    v7 = 16;
    goto LABEL_6;
  }

  if (CI::ColorMatrixNode::is_3x3((this + 56), v10))
  {
    v12 = CI::name_matrix_3x3((this + 56), v11);
    return fprintf(a2, "color_matrix_%s", v12);
  }

  if (CI::ColorMatrixNode::is_3x4((this + 56), v11))
  {
    v12 = CI::name_matrix_3x4((this + 56), v13);
    return fprintf(a2, "color_matrix_%s", v12);
  }

  if (CI::ColorMatrixNode::is_4x3(this))
  {
    v5 = "color_matrix_4x3";
    goto LABEL_14;
  }

  if (*(this + 216))
  {
    v5 = "color_matrix";
    v7 = 12;
  }

  else
  {
    v5 = "color_matrix_ua";
    v7 = 15;
  }

LABEL_6:

  return fwrite(v5, v7, 1uLL, a2);
}

void CI::ColorMatrixNode::~ColorMatrixNode(CI::ColorMatrixNode *this)
{
  *(this + 6) = &unk_1F1039660;
  atomic_fetch_add(&dword_1ED7C47BC[37], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F1039660;
  atomic_fetch_add(&dword_1ED7C47BC[37], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ColorMatrixNode::may_be_extended_range(CI::ColorMatrixNode *this, const double (*a2)[4])
{
  if (!CI::ColorMatrixNode::is_rrra((this + 56), a2))
  {
    return 1;
  }

  v3 = *(**(this + 5) + 272);

  return v3();
}

uint64_t CI::ColorMatrixNode::output_is_luma(CI::ColorMatrixNode *this)
{
  result = (*(**(this + 5) + 280))(*(this + 5));
  if (result)
  {

    return CI::ColorMatrixNode::is_rrra((this + 56), v3);
  }

  return result;
}

uint64_t CI::ColorMatrixNode::output_depth(CI::ColorMatrixNode *this)
{
  if ((*(**(this + 5) + 320))(*(this + 5)) < 1)
  {
    return 0;
  }

  v2 = *(**(this + 5) + 320);

  return v2();
}

void non-virtual thunk toCI::ColorMatrixNode::~ColorMatrixNode(CI::ColorMatrixNode *this)
{
  *this = &unk_1F1039660;
  atomic_fetch_add(&dword_1ED7C47BC[37], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F1039660;
  atomic_fetch_add(&dword_1ED7C47BC[37], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)39>::~InstanceCounted(void *result)
{
  *result = &unk_1F1039660;
  atomic_fetch_add(&dword_1ED7C47BC[37], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)39>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1039660;
  atomic_fetch_add(&dword_1ED7C47BC[37], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

uint64_t CI::sw_ci_colormatrix_rrra(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  DWORD1(v8) = *v7;
  return v8;
}

unint64_t CI::sw_ci_colormatrixdiag(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return vmulq_f32(*v7, *(a2 + (*(v3 + 32) << 6))).u64[0];
}

double CI::sw_ci_colormatrixdiag4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = vmulq_laneq_f32(*v11, *v11, 3);
  v12.i32[3] = HIDWORD(*v11);
  *&result = vmulq_f32(*v7, v12).u64[0];
  return result;
}

double CI::sw_ci_colormatrixdiag4_ua(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_f32(*v7, *v11).u64[0];
  return result;
}

unint64_t CI::sw_ci_colormatrix3x1(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vmulq_f32(*v7, *(a2 + (*(v3 + 32) << 6)));
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  return vdupq_lane_s32(*v8.f32, 0).u64[0];
}

double CI::sw_ci_colormatrix3x3(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vaddq_f32(vmulq_laneq_f32(*(a2 + (*(v3 + 80) << 6)), *v7, 2), vaddq_f32(vmulq_n_f32(*(a2 + (*(v3 + 32) << 6)), COERCE_FLOAT(*v7)), vmulq_lane_f32(*(a2 + (*(v3 + 56) << 6)), *v7->f32, 1))).u64[0];
  return result;
}

unint64_t CI::sw_ci_colormatrix3x4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v20 = vuzp2q_s32(vuzp2q_s32(*v11, *v15), *v11);
  v20.i32[2] = HIDWORD(*v19);
  return vaddq_f32(vmulq_laneq_f32(v20, *v7, 3), vaddq_f32(vmulq_laneq_f32(*v19, *v7, 2), vaddq_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v7)), vmulq_lane_f32(*v15, *v7->f32, 1)))).u64[0];
}

unint64_t CI::sw_ci_colormatrix3x4_ua(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v20 = vuzp2q_s32(vuzp2q_s32(*v11, *v15), *v11);
  v20.i32[2] = HIDWORD(*v19);
  return vaddq_f32(v20, vaddq_f32(vmulq_laneq_f32(*v19, *v7, 2), vaddq_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v7)), vmulq_lane_f32(*v15, *v7->f32, 1)))).u64[0];
}

unint64_t CI::sw_ci_colormatrix(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v24 = *(v3 + 136);
  v25 = *(v3 + 128);
  v26 = (a3 + 16 * v25);
  v27 = (a2 + (v25 << 6));
  if (v24 == 5)
  {
    v27 = v26;
  }

  v28 = vmulq_n_f32(*v7, 1.0 / fmaxf(COERCE_FLOAT(HIDWORD(*v7)), 0.00001));
  v29 = vaddq_f32(*v27, vaddq_f32(vmulq_laneq_f32(*v23, *v7, 3), vaddq_f32(vmulq_laneq_f32(*v19, v28, 2), vaddq_f32(vmulq_lane_f32(*v15, *v28.f32, 1), vmulq_n_f32(*v11, v28.f32[0])))));
  return vmulq_laneq_f32(v29, v29, 3).u64[0];
}

double CI::sw_ci_colormatrix_ua(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v24 = *(v3 + 136);
  v25 = *(v3 + 128);
  v26 = (a3 + 16 * v25);
  v27 = (a2 + (v25 << 6));
  if (v24 == 5)
  {
    v27 = v26;
  }

  *&result = vaddq_f32(*v27, vaddq_f32(vmulq_laneq_f32(*v23, *v7, 3), vaddq_f32(vmulq_laneq_f32(*v19, *v7, 2), vaddq_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v7)), vmulq_lane_f32(*v15, *v7->f32, 1))))).u64[0];
  return result;
}

void ___ZN2CIL15name_matrix_3x3EPA4_Kd_block_invoke()
{
  for (i = 0; i != 1296; i += 216)
  {
    get_rgb_to_ycc_matrix(*&CI::name_matrix_3x3(double const(*)[4])::common[i], CI::name_matrix_3x3(double const(*)[4])::common[i + 4], 0, &CI::name_matrix_3x3(double const(*)[4])::common[i + 88], &CI::name_matrix_3x3(double const(*)[4])::common[i + 16], &CI::name_matrix_3x3(double const(*)[4])::common[i + 40], &CI::name_matrix_3x3(double const(*)[4])::common[i + 64]);
    get_ycc_to_rgb_bias_matrix(*&CI::name_matrix_3x3(double const(*)[4])::common[i], CI::name_matrix_3x3(double const(*)[4])::common[i + 4], 0, &CI::name_matrix_3x3(double const(*)[4])::common[i + 120], &CI::name_matrix_3x3(double const(*)[4])::common[i + 144], &CI::name_matrix_3x3(double const(*)[4])::common[i + 168], &CI::name_matrix_3x3(double const(*)[4])::common[i + 192]);
  }
}

void ___ZN2CIL15name_matrix_3x4EPA4_Kd_block_invoke()
{
  v0 = &qword_1EB00A300;
  v1 = 24;
  do
  {
    get_rgb_to_ycc_matrix(*(v0 - 50), *(v0 - 196), *(v0 - 48), v0 - 13, (v0 - 22), (v0 - 19), (v0 - 16));
    get_ycc_to_rgb_bias_matrix(*(v0 - 50), *(v0 - 196), *(v0 - 48), (v0 - 9), v0 - 6, (v0 - 3), v0);
    v0 += 28;
    --v1;
  }

  while (v1);
}

BOOL CI::CropNode::is_identity(CI::CropNode *this)
{
  CI::Node::roi(this);
  if (CGRectIsInfinite(v20))
  {
    return 0;
  }

  v21 = CGRectInset(*(this + 56), -0.01, -0.01);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  CI::Node::roi(this);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;

  return CGRectContainsRect(*&v15, *&v8);
}

uint64_t CI::CropNode::append_to_tree(CI::CropNode *this, CI::Node *a2, CGRect a3)
{
  v3 = a2;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsInfinite(a3))
  {
    while (1)
    {
      v35.origin.x = (*(*this + 168))(this);
      v35.origin.y = v10;
      v35.size.width = v11;
      v35.size.height = v12;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      if (!CGRectIntersectsRect(v31, v35))
      {
        operator new();
      }

      if ((*(*this + 16))(this) == 40)
      {
        v37.origin.x = x;
        v37.origin.y = y;
        v37.size.width = width;
        v37.size.height = height;
        CGRectIntersection(*(this + 56), v37);
        operator new();
      }

      if ((*(*this + 16))(this) != 36)
      {
        break;
      }

      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = height;
      if (!CGRectContainsRect(*(this + 56), v36))
      {
        break;
      }

      this = (*(*this + 48))(this, 0);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      v3 = 0;
      if (CGRectIsInfinite(v32))
      {
        goto LABEL_2;
      }
    }

    if (*(*this + 16))(this) == 34 && (v3)
    {
      v13 = *(this + 72);
      v27 = *(this + 56);
      v28 = v13;
      v29 = *(this + 88);
      CI::Affine::inverse(&v27, v26);
      if (fabs(*(&v27 + 1)) >= 0.0001 || (v14 = *&v28, fabs(*&v28) >= 0.0001))
      {
        v15 = *&v27;
        if (fabs(*&v27) >= 0.0001)
        {
          goto LABEL_24;
        }

        v16 = *(&v28 + 1);
        if (fabs(*(&v28 + 1)) >= 0.0001)
        {
          goto LABEL_24;
        }

        v14 = *&v28;
      }

      else
      {
        v15 = *&v27;
        v16 = *(&v28 + 1);
      }

      if (fabs(fabs(v15 * v16 - v14 * *(&v27 + 1)) + -1.0) < 0.01)
      {
        v33.origin.x = x;
        v33.origin.y = y;
        v33.size.width = width;
        v33.size.height = height;
        v17 = CI::Affine::applyToRect(v26, v33);
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = (*(*this + 48))(this, 0);
        v34.origin.x = v17;
        v34.origin.y = v19;
        v34.size.width = v21;
        v34.size.height = v23;
        CI::CropNode::append_to_tree(v24, 0, v34, v25);
        operator new();
      }
    }

LABEL_24:
    operator new();
  }

LABEL_2:
  if (!this)
  {
    return 0;
  }

  return CI::Object::ref(this);
}

void CI::CropNode::~CropNode(CI::CropNode *this)
{
  *(this + 6) = &unk_1F10398D0;
  atomic_fetch_add(&dword_1ED7C47BC[38], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F10398D0;
  atomic_fetch_add(&dword_1ED7C47BC[38], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

size_t CI::CropNode::print_for_graph_core(void *a1, FILE *__stream)
{
  fwrite("crop ", 5uLL, 1uLL, __stream);
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[10];

  return CI::fprintf(__stream, v4, *&v5);
}

double CI::CropNode::extent(CI::CropNode *this)
{
  (*(**(this + 5) + 168))(*(this + 5));
  v6 = *(this + 7);
  v7 = *(this + 8);
  v8 = *(this + 9);
  v9 = *(this + 10);

  *&result = CGRectIntersection(*&v2, *&v6);
  return result;
}

uint64_t CI::CropNode::alpha_one(CI::CropNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 280);

    return v3();
  }

  return result;
}

uint64_t CI::CropNode::output_is_rg(CI::CropNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 288);

    return v3();
  }

  return result;
}

uint64_t CI::CropNode::output_is_r(CI::CropNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 296);

    return v3();
  }

  return result;
}

uint64_t CI::CropNode::output_is_luma(CI::CropNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 304);

    return v3();
  }

  return result;
}

uint64_t CI::CropNode::output_depth(CI::CropNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 320);

    return v3();
  }

  return result;
}

uint64_t CI::CropNode::output_format(CI::CropNode *this)
{
  result = (*(*this + 424))(this);
  if (result)
  {
    v3 = *(**(this + 5) + 328);

    return v3();
  }

  return result;
}

BOOL CI::CropNode::is_simple(CI::CropNode *this)
{
  v16.origin.x = (*(**(this + 5) + 168))(*(this + 5));
  result = CGRectContainsRect(v16, *(this + 56));
  if (result)
  {
    v3 = *(this + 7);
    v4 = *(this + 8);
    v5 = *(this + 9);
    v6 = *(this + 10);
    v17.origin.x = v3;
    v17.origin.y = v4;
    v17.size.width = v5;
    v17.size.height = v6;
    v18 = CGRectIntegral(v17);
    x = v18.origin.x;
    y = v18.origin.y;
    width = v18.size.width;
    height = v18.size.height;
    v11 = v3;
    v12 = v4;
    v13 = v5;
    v14 = v6;

    return CGRectEqualToRect(*&v11, *&x);
  }

  return result;
}

void non-virtual thunk toCI::CropNode::~CropNode(CI::CropNode *this)
{
  *this = &unk_1F10398D0;
  atomic_fetch_add(&dword_1ED7C47BC[38], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F10398D0;
  atomic_fetch_add(&dword_1ED7C47BC[38], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void *CI::InstanceCounted<(CI::Type)40>::~InstanceCounted(void *result)
{
  *result = &unk_1F10398D0;
  atomic_fetch_add(&dword_1ED7C47BC[38], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)40>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F10398D0;
  atomic_fetch_add(&dword_1ED7C47BC[38], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

double CI::sw_ci_crop(CI *a1, uint64_t a2, uint64_t a3)
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

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v22 = *v11;
  v23 = *v7;
  v24 = *CI::getDC(a1);
  v12.i64[0] = v24;
  *v13.i64 = vec2::get_xxy(&v24, v12);
  __asm { FMOV            V1.4S, #1.0 }

  v19 = vaddq_f32(v22, vmulq_f32(v13, vnegq_f64(_Q1)));
  v20 = vminnmq_f32(vmaxnmq_f32(vminnmq_f32(v19, vextq_s8(v19, v19, 4uLL)), 0), _Q1);
  *&result = vmulq_n_f32(v23, vmuls_lane_f32(v20.f32[0], v20, 2)).u64[0];
  return result;
}

BOOL CI::CurveNode::is_inverse(CI::CurveNode *this, double a2, long double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (fabs(a5) < 1.0e-10)
  {
    return 0;
  }

  v16 = pow(a3, -a2);
  return vabdd_f64(1.0 / a2, *(this + 7)) < 0.00001 && vabdd_f64(v16, *(this + 8)) < 0.00001 && vabdd_f64(-(a7 * v16), *(this + 9)) < 0.00001 && vabdd_f64(1.0 / a5, *(this + 10)) < 0.00001 && vabdd_f64(a8 + a5 * a6, *(this + 11)) < 0.00001 && vabdd_f64(-a4 / a3, *(this + 12)) < 0.00001 && vabdd_f64(-a8 / a5, *(this + 13)) < 0.00001;
}

CI::Object *CI::CurveNode::append_to_tree(CI::CurveNode *this, CI::Node *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = this;
  if (a3 != 1.0)
  {
    if (a2 && (*(*this + 240))(this))
    {
      v18 = 0;
      v19 = v10;
      while (1)
      {
        v20 = v19;
        if ((*(*v19 + 184))(v19))
        {
          break;
        }

        v19 = (*(*v19 + 48))(v19, 0);
        v18 = v20;
        if (((*(*v19 + 240))(v19) & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v20 = v18;
    }

    else
    {
      v20 = 0;
      v19 = v10;
    }

LABEL_13:
    if ((*(*v19 + 16))(v19) != 43 || !(*(*v19 + 424))(v19, a3, a4, a5, a6, a7, a8, a9))
    {
      operator new();
    }

    v21 = v19[5];
    if (v21)
    {
      CI::Object::ref(v19[5]);
    }

    if (!v20)
    {
      return v21;
    }

    (*(*v20 + 208))(v20, v21, 0);
    if (v21)
    {
      CI::Object::unref(v21);
    }

    if (v10)
    {
      CI::Object::ref(v10);
    }

    return v10;
  }

  if (!this)
  {
    return v10;
  }

  return CI::Object::ref(this);
}

uint64_t CI::CurveNode::print_for_graph_core(double *a1, FILE *a2)
{
  v4 = (*(*a1 + 432))(a1);
  v5 = a1[7];
  if (v4)
  {
    return fprintf(a2, "curve%cgamma=%g", v5);
  }

  else
  {
    return fprintf(a2, "curve%cgamma=%g%ca=%g b=%g c=%g d=%g e=%g f=%g", v5);
  }
}

void CI::CurveNode::~CurveNode(CI::CurveNode *this)
{
  *this = &unk_1F10398F8;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 6) = &unk_1F1039AE8;
  atomic_fetch_add(&dword_1ED7C47BC[41], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *this = &unk_1F10398F8;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 6) = &unk_1F1039AE8;
  atomic_fetch_add(&dword_1ED7C47BC[41], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::CurveNode::add_args_to_hash(CI::CurveNode *this, CI::XXHashHelper *a2)
{
  __src = *(this + 7);
  XXH64_update(a2, &__src, 8uLL);
  __src = *(this + 8);
  XXH64_update(a2, &__src, 8uLL);
  __src = *(this + 9);
  XXH64_update(a2, &__src, 8uLL);
  __src = *(this + 10);
  XXH64_update(a2, &__src, 8uLL);
  __src = *(this + 11);
  XXH64_update(a2, &__src, 8uLL);
  __src = *(this + 12);
  XXH64_update(a2, &__src, 8uLL);
  __src = *(this + 13);
  return XXH64_update(a2, &__src, 8uLL);
}

uint64_t CI::CurveNode::output_depth(CI::CurveNode *this)
{
  if ((*(**(this + 5) + 320))(*(this + 5)) < 1)
  {
    return 0;
  }

  v2 = *(**(this + 5) + 320);

  return v2();
}

void non-virtual thunk toCI::CurveNode::~CurveNode(CI::CurveNode *this)
{
  *(this - 6) = &unk_1F10398F8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *this = &unk_1F1039AE8;
  atomic_fetch_add(&dword_1ED7C47BC[41], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  CI::CurveNode::~CurveNode((this - 48));
}

void *CI::InstanceCounted<(CI::Type)43>::~InstanceCounted(void *result)
{
  *result = &unk_1F1039AE8;
  atomic_fetch_add(&dword_1ED7C47BC[41], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)43>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1039AE8;
  atomic_fetch_add(&dword_1ED7C47BC[41], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

unint64_t CI::sw_ci_curv(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v25 = *v7;
  v23 = *v11;
  v24 = *(a2 + (*(v3 + 56) << 6));
  v12 = vaddq_f32(vdupq_laneq_s32(*v11, 2), vmulq_lane_f32(*v7, *v11->i8, 1));
  v12.i32[3] = 0;
  v13 = vmaxnmq_f32(v12, 0);
  v14 = vdupq_lane_s32(*v11->i8, 0);
  v13.i32[3] = 0;
  v14.i32[3] = 0;
  v15 = _simd_pow_f4(v13, v14);
  __asm { FMOV            V3.4S, #1.0 }

  v21 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v24.i8, 0), v25), 0, _Q3);
  return vmlaq_f32(vmulq_f32(vaddq_f32(vdupq_laneq_s32(v24, 2), vmulq_laneq_f32(v25, v23, 3)), vsubq_f32(_Q3, v21)), v21, vaddq_f32(vdupq_lane_s32(*v24.i8, 1), v15)).u64[0];
}

void CI::FillNode::~FillNode(CI::FillNode *this)
{
  *this = &unk_1F1039B10;
  *(this + 5) = &unk_1F1039CD8;
  v2 = *(this + 6);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 5) = &unk_1F1039D00;
  *(this + 6) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[39], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

{
  CI::FillNode::~FillNode(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::FillNode::~FillNode(CI::FillNode *this)
{
  CI::FillNode::~FillNode((this - 40));
}

{
  CI::FillNode::~FillNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

size_t CI::FillNode::print_for_graph_core(uint64_t a1, FILE *__stream)
{
  fwrite("fill ", 5uLL, 1uLL, __stream);
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(*v4 + 32);

    return v5();
  }

  else
  {

    return fwrite("clear", 5uLL, 1uLL, __stream);
  }
}

void CI::FillNode::convert_to_kernel_node(CI::FillNode *this, CGColorSpace **a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    CI::Color::vector_in_workingspace(v2, a2);
  }

  operator new();
}

void CI::FillNode::add_args_to_hash(CI::FillNode *this, CI::XXHashHelper *a2)
{
  v2 = *(this + 6);
  if (v2)
  {
    XXH64_update(a2, (v2 + 24), 0x10uLL);
    v4 = *(v2 + 40);

    CI::XXHashHelper::add(a2, v4);
  }
}

uint64_t CI::FillNode::may_be_extended_range(CI::FillNode *this)
{
  result = *(this + 6);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t CI::FillNode::output_is_rg(CI::FillNode *this)
{
  v1 = *(this + 6);
  if (v1 && *(v1 + 32) == 0.0)
  {
    return (*(*this + 280))();
  }

  else
  {
    return 0;
  }
}

uint64_t CI::FillNode::output_is_r(CI::FillNode *this)
{
  v1 = *(this + 6);
  if (v1 && *(v1 + 28) == 0.0)
  {
    return (*(*this + 288))();
  }

  else
  {
    return 0;
  }
}

uint64_t CI::FillNode::output_is_luma(CI::FillNode *this)
{
  v1 = *(this + 6);
  if (v1 && (v2 = v1[7], v1[6] == v2) && v2 == v1[8])
  {
    return (*(*this + 280))();
  }

  else
  {
    return 0;
  }
}

uint64_t CI::FillNode::output_depth(CI::FillNode *this)
{
  result = *(this + 6);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

uint64_t CI::FillNode::colorIsEmpty(CI::FillNode *this)
{
  v1 = *(this + 6);
  if (v1)
  {
    return (*(*v1 + 40))();
  }

  else
  {
    return 1;
  }
}

uint64_t CI::sw_ci_fill(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = a3 + 16 * v5;
  v7 = a2 + (v5 << 6);
  if (v4 == 5)
  {
    v7 = v6;
  }

  return *v7;
}

void *CI::InstanceCounted<(CI::Type)41>::~InstanceCounted(void *result)
{
  *result = &unk_1F1039D00;
  atomic_fetch_add(&dword_1ED7C47BC[39], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)41>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1039D00;
  atomic_fetch_add(&dword_1ED7C47BC[39], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::Object *CI::GammaNode::append_to_tree(CI::GammaNode *this, CI::Node *a2, double a3)
{
  v4 = this;
  if (a3 != 1.0)
  {
    if (a2 && (*(*this + 240))(this))
    {
      v6 = 0;
      v7 = v4;
      do
      {
        v8 = v7;
        if ((*(*v7 + 184))(v7))
        {
          break;
        }

        v7 = (*(*v7 + 48))(v7, 0);
        v6 = v8;
      }

      while (((*(*v7 + 240))(v7) & 1) != 0);
    }

    else
    {
      v6 = 0;
      v7 = v4;
    }

    v9 = (*(*v7 + 16))(v7);
    v10 = *v7;
    if (v9 == 41)
    {
      if (!(*(v10 + 432))(v7))
      {
LABEL_25:
        operator new();
      }
    }

    else
    {
      if ((*(v10 + 16))(v7) != 42)
      {
        goto LABEL_25;
      }

      v11 = *(v7 + 7) * a3;
      *(v7 + 7) = v11;
      if (fabs(v11 + -1.0) >= 0.0001)
      {
        operator new();
      }

      v7 = *(v7 + 5);
      if (!v7)
      {
LABEL_20:
        if (!v6)
        {
          return v7;
        }

        (*(*v6 + 208))(v6, v7, 0);
        if (v7)
        {
          CI::Object::unref(v7);
        }

        if (v4)
        {
          CI::Object::ref(v4);
        }

        return v4;
      }
    }

    CI::Object::ref(v7);
    goto LABEL_20;
  }

  if (!this)
  {
    return v4;
  }

  return CI::Object::ref(this);
}

uint64_t CI::GammaNode::add_to_kernel_hash(CI::GammaNode *this, CI::XXHashHelper *a2)
{
  v3 = *(this + 7);
  if (v3 == 2.0)
  {
    v4 = "builtin_sqr";
  }

  else
  {
    v5 = "builtin_gamma";
    if (v3 == 0.5)
    {
      v5 = "builtin_sqrt";
    }

    if (v3 == 4.0)
    {
      v4 = "builtin_pow4";
    }

    else
    {
      v4 = v5;
    }
  }

  return CI::XXHashHelper::addstr(a2, v4);
}

void CI::GammaNode::convert_to_kernel_node(CI::GammaNode *this, CI::Context *a2)
{
  v2 = *(this + 7);
  if (v2 != 2.0 && v2 != 4.0 && v2 != 0.5)
  {
    operator new();
  }

  operator new();
}

size_t CI::GammaNode::print_for_graph_core(uint64_t a1, FILE *__stream)
{
  v4 = *(a1 + 56);
  if (v4 == 2.0)
  {
    v5 = "sqr";
    v6 = 3;
  }

  else
  {
    if (v4 == 0.5)
    {
      v5 = "sqrt";
    }

    else
    {
      if (v4 != 4.0)
      {
        return fprintf(__stream, "gamma %g", v4);
      }

      v5 = "pow4";
    }

    v6 = 4;
  }

  return fwrite(v5, v6, 1uLL, __stream);
}

void CI::GammaNode::~GammaNode(CI::GammaNode *this)
{
  *this = &unk_1F1039D28;
  *(this + 6) = &unk_1F1039F08;
  *(this + 7) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[40], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *this = &unk_1F1039D28;
  *(this + 6) = &unk_1F1039F08;
  *(this + 7) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[40], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

const char *CI::GammaNode::short_name(CI::GammaNode *this)
{
  v1 = *(this + 7);
  if (v1 == 2.0)
  {
    return "sqr";
  }

  v3 = "gamma";
  if (v1 == 4.0)
  {
    v3 = "pow4";
  }

  if (v1 == 0.5)
  {
    return "sqrt";
  }

  else
  {
    return v3;
  }
}

uint64_t CI::GammaNode::output_depth(CI::GammaNode *this)
{
  if ((*(**(this + 5) + 320))(*(this + 5)) < 1)
  {
    return 0;
  }

  v2 = *(**(this + 5) + 320);

  return v2();
}

void non-virtual thunk toCI::GammaNode::~GammaNode(CI::GammaNode *this)
{
  *(this - 6) = &unk_1F1039D28;
  *this = &unk_1F1039F08;
  *(this + 1) = 0;
  atomic_fetch_add(&dword_1ED7C47BC[40], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  CI::GammaNode::~GammaNode((this - 48));
}

void *CI::InstanceCounted<(CI::Type)42>::~InstanceCounted(void *result)
{
  *result = &unk_1F1039F08;
  atomic_fetch_add(&dword_1ED7C47BC[40], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)42>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F1039F08;
  atomic_fetch_add(&dword_1ED7C47BC[40], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

unint64_t CI::sw_ci_sqr(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  v8.i32[3] = 0;
  v9 = vmaxnmq_f32(v8, 0);
  return vmulq_f32(v9, v9).u64[0];
}

unint64_t CI::sw_ci_pow4(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  v8.i32[3] = 0;
  v9 = vmaxnmq_f32(v8, 0);
  return vmulq_f32(v9, vmulq_f32(v9, vmulq_f32(v9, v9))).u64[0];
}

unint64_t CI::sw_ci_sqrt(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  v8.i32[3] = 0;
  v9 = vmaxnmq_f32(v8, 0);
  v9.i32[3] = 0;
  return vsqrtq_f32(v9).u64[0];
}

double CI::sw_ci_gamma(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = (a2 + (*(v3 + 32) << 6));
  v9 = *v7;
  v9.i32[3] = 0;
  v10 = vmaxnmq_f32(v9, 0);
  v10.i32[3] = 0;
  v11 = vld1q_dup_f32(v8);
  v11.i32[3] = 0;
  *&result = _simd_pow_f4(v10, v11).u64[0];
  return result;
}

void CI::ColorKernelNode::~ColorKernelNode(CI::ColorKernelNode *this)
{
  *this = &unk_1F1039F30;
  *(this + 5) = &unk_1F103A0F0;
  v2 = *(this + 6);
  if (v2 && *(v2 + 12) == 1)
  {
    CI::Object::unref(v2);
  }

  *(this + 6) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v3);
    MEMORY[0x19EAF5590]();
  }

  *(this + 7) = 0;
  _Block_release(*(this + 12));
  *(this + 12) = 0;
  *(this + 5) = &unk_1F103A118;
  atomic_fetch_add(&dword_1ED7C47BC[55], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

{
  CI::ColorKernelNode::~ColorKernelNode(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::ColorKernelNode::~ColorKernelNode(CI::ColorKernelNode *this)
{
  CI::ColorKernelNode::~ColorKernelNode((this - 40));
}

{
  CI::ColorKernelNode::~ColorKernelNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

uint64_t CI::ColorKernelNode::kernel_argument_type(CI::ColorKernelNode *this, signed int a2)
{
  v4 = *(this + 6);
  if (*(v4 + 12) == 1)
  {
    type = CI::KernelArguments::get_type((v4 + 136), a2);
  }

  else
  {
    if (*(v4 + 20) <= a2)
    {
      return 0;
    }

    type = *(*(v4 + 64) + 4 * a2);
  }

  if (type == 15 || type == 8)
  {
    v7 = *(this + 7);
    if (a2 > 9)
    {
      v8 = (*(v7 + 16) + 8 * a2 - 80);
    }

    else
    {
      v8 = (v7 + 8 * a2 + 24);
    }

    v9 = *v8;
    if ((*(**v8 + 16))(*v8) >= 33 && (*(*v9 + 16))(v9) < 61)
    {
      return 1;
    }
  }

  return type;
}

uint64_t CI::ColorKernelNode::get_argument(CI::ColorKernelNode *this, unsigned int a2)
{
  result = 0;
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(this + 7);
    if (v4)
    {
      if (*v4 <= a2)
      {
        return 0;
      }

      else
      {
        if (a2 > 9)
        {
          v5 = *(v4 + 16) + 8 * a2 - 80;
        }

        else
        {
          v5 = v4 + 8 * a2 + 24;
        }

        return *v5;
      }
    }
  }

  return result;
}

BOOL CI::ColorKernelNode::child_is_ArgumentTypeSampler2D(CI::ColorKernelNode *this, int a2)
{
  v2 = **(this + 7);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  for (i = -80; ; i += 8)
  {
    v8 = *(this + 7);
    if (v5 > 9)
    {
      v9 = (*(v8 + 16) + i);
    }

    else
    {
      v9 = (v8 + 8 * v5 + 24);
    }

    v10 = *v9;
    if ((*(**v9 + 16))(*v9) < 33 || (*(*v10 + 16))(v10) > 60)
    {
      goto LABEL_10;
    }

    if (v6 == a2)
    {
      break;
    }

    ++v6;
LABEL_10:
    if (v2 == ++v5)
    {
      return 0;
    }
  }

  v12 = *(this + 6);
  if (*(v12 + 12) == 1)
  {
    type = CI::KernelArguments::get_type((v12 + 136), v5);
  }

  else if (*(v12 + 20) <= v5)
  {
    type = 0;
  }

  else
  {
    type = *(*(v12 + 64) + 4 * v5);
  }

  return type == 4;
}

uint64_t CI::ColorKernelNode::child_count(CI::ColorKernelNode *this)
{
  v1 = **(this + 7);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = -80;
  do
  {
    v6 = *(this + 7);
    if (v3 > 9)
    {
      v7 = (*(v6 + 16) + v5);
    }

    else
    {
      v7 = (v6 + 8 * v3 + 24);
    }

    v8 = *v7;
    if ((*(**v7 + 16))(*v7) >= 33)
    {
      if ((*(*v8 + 16))(v8) >= 61)
      {
        v4 = v4;
      }

      else
      {
        v4 = (v4 + 1);
      }
    }

    ++v3;
    v5 += 8;
  }

  while (v1 != v3);
  return v4;
}

uint64_t CI::ColorKernelNode::child(CI::ColorKernelNode *this, int a2)
{
  v2 = **(this + 7);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = -80;
    do
    {
      v8 = *(this + 7);
      if (v5 > 9)
      {
        v9 = (*(v8 + 16) + v7);
      }

      else
      {
        v9 = (v8 + 8 * v5 + 24);
      }

      v10 = *v9;
      if ((*(**v9 + 16))(*v9) >= 33 && (*(*v10 + 16))(v10) <= 60)
      {
        if (v6 == a2)
        {
          return v10;
        }

        ++v6;
      }

      ++v5;
      v7 += 8;
    }

    while (v2 != v5);
  }

  return 0;
}

uint64_t CI::ColorKernelNode::alpha_one(CI::ColorKernelNode *this)
{
  if (*(this + 104))
  {
    return 1;
  }

  if (*(*(this + 6) + 154) != 1)
  {
    return 0;
  }

  result = (*(*this + 48))(this, 0);
  if (result)
  {
    v2 = *(*result + 280);

    return v2();
  }

  return result;
}

BOOL CI::ColorKernelNode::output_is_rg(CI::ColorKernelNode *this)
{
  v2 = *(this + 30);
  result = 1;
  if (!v2 || (CI::format_is_rg(v2) & 1) == 0)
  {
    if (*(*(this + 6) + 152) != 1)
    {
      return 0;
    }

    if (!(*(*this + 48))(this, 0))
    {
      return 0;
    }

    v4 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v4 + 168))(v4);
    if (!CGRectIsInfinite(v6))
    {
      return 0;
    }

    v5 = *(*(*this + 48))(this, 0);
    if (((*(v5 + 288))() & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL CI::ColorKernelNode::output_is_r(CI::ColorKernelNode *this)
{
  v2 = *(this + 30);
  result = 1;
  if (!v2 || (CI::format_is_r(v2) & 1) == 0)
  {
    if (*(*(this + 6) + 152) != 1)
    {
      return 0;
    }

    if (!(*(*this + 48))(this, 0))
    {
      return 0;
    }

    v4 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v4 + 168))(v4);
    if (!CGRectIsInfinite(v6))
    {
      return 0;
    }

    v5 = *(*(*this + 48))(this, 0);
    if (((*(v5 + 296))() & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL CI::ColorKernelNode::output_is_luma(CI::ColorKernelNode *this)
{
  v2 = *(this + 30);
  result = 1;
  if (!v2 || !CI::format_is_luminance(v2) || ((*(*this + 280))(this) & 1) == 0)
  {
    if (*(*(this + 6) + 152) != 1)
    {
      return 0;
    }

    if (!(*(*this + 48))(this, 0))
    {
      return 0;
    }

    v3 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v3 + 168))(v3);
    if (!CGRectIsInfinite(v6))
    {
      return 0;
    }

    v4 = *(*(*this + 48))(this, 0);
    if (((*(v4 + 304))() & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::ColorKernelNode::output_depth(CI::ColorKernelNode *this)
{
  v2 = *(this + 30);
  if (v2)
  {
    if (CI::format_is_deep(v2))
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (*(*(this + 6) + 156) != 1)
    {
      return 0;
    }

    result = (*(*this + 48))(this, 0);
    if (!result)
    {
      return result;
    }

    v4 = *(*(*this + 48))(this, 0);
    if ((*(v4 + 320))() >= 1)
    {
      v5 = *(*(*(*this + 48))(this, 0) + 320);

      return v5();
    }

    else
    {
      return 0;
    }
  }
}

uint64_t CI::ColorKernelNode::append_to_tree(uint64_t a1, CI::SerialObjectPtrArray *a2, uint64_t a3, int a4)
{
  v56 = 0;
  v57 = &v56;
  v58 = 0x2000000000;
  v59 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2000000000;
  v55 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2000000000;
  v53 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x4002000000;
  v47 = __Block_byref_object_copy__25;
  v48 = __Block_byref_object_dispose__25;
  __p = 0;
  v50 = 0;
  v51 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 0x40000000;
  v37 = ___ZN2CI15ColorKernelNode14append_to_treeEPKNS_6KernelEPNS_20SerialObjectPtrArrayE6CGRectU13block_pointerFS6_iS6_EbbNS_11PixelFormatE_block_invoke;
  v38 = &unk_1E75C6868;
  v42 = &v44;
  v43 = a1;
  v39 = v52;
  v40 = v54;
  v41 = &v56;
  if (*a2 >= 1)
  {
    v7 = 0;
    v8 = (a2 + 24);
    do
    {
      v9 = v8;
      if (v7 >= 0xA)
      {
        v9 = (*(a2 + 2) + 8 * v7 - 80);
      }

      v37(v36, v7++, *v9);
      ++v8;
    }

    while (v7 < *a2);
  }

  if ((*(*a1 + 16))(a1) != 70 || *(v57 + 6) != 2 || !*(a1 + 168))
  {
LABEL_24:
    if (a4 && *(a1 + 158) == 1)
    {
      v14 = *(v57 + 6);
      if (v14 == 1)
      {
        v15 = *v45[5];
        if (v15 > 9)
        {
          v16 = (*(a2 + 2) + 8 * v15 - 80);
        }

        else
        {
          v16 = (a2 + 8 * v15 + 24);
        }

        v26 = *v16;
        if ((*(**v16 + 240))(*v16))
        {
          if (((*(*v26 + 184))(v26) & 1) == 0)
          {
            v28 = v26;
            while (1)
            {
              v27 = v28;
              v28 = (*(*v28 + 48))(v28, 0);
              if (((*(*v28 + 240))(v28) & 1) == 0)
              {
                break;
              }

              if ((*(*v28 + 184))(v28))
              {
                goto LABEL_55;
              }
            }

LABEL_56:
            CI::Object::ref(v26);
            CI::SerialObjectPtrArray::replace(a2, v28, v15);
            operator new();
          }

          v27 = 0;
          v28 = v26;
LABEL_55:
          if (v27)
          {
            goto LABEL_56;
          }
        }

        operator new();
      }

      if (v14 >= 2)
      {
        v17 = 0;
        v18 = 0;
        v33 = 0x3FF0000000000000uLL;
        *&v34 = 0;
        *(&v34 + 1) = 0x3FF0000000000000;
        v19 = 1;
        v20 = 1;
        v35 = 0uLL;
        do
        {
          v21 = *(v45[5] + 4 * v17);
          if (v21 > 9)
          {
            v22 = (*(a2 + 2) + 8 * v21 - 80);
          }

          else
          {
            v22 = (a2 + 8 * v21 + 24);
          }

          v23 = *v22;
          if ((*(**v22 + 16))(*v22) != 34)
          {
            v19 = ((*(*v23 + 16))(v23) == 41) & v19;
          }

          if ((*(*v23 + 16))(v23) == 34)
          {
            v24 = *(v23 + 72);
            v30 = *(v23 + 56);
            v31 = v24;
            v32 = *(v23 + 88);
            isOrientationWithIntegralTranslation = CI::Affine::isOrientationWithIntegralTranslation(&v30);
            if ((v18 & 1) == 0)
            {
              v33 = v30;
              v34 = v31;
              v35 = v32;
            }

            v20 &= isOrientationWithIntegralTranslation;
            v18 = 1;
          }

          ++v17;
        }

        while (v17 < *(v57 + 6));
        if (v19 & v18 & v20)
        {
          CI::Affine::inverse(&v33, &v30);
          operator new();
        }
      }
    }

    operator new();
  }

  v11 = *(a2 + 3);
  v10 = *(a2 + 4);
  if ((*(*v11 + 16))(v11) == 41)
  {
    v60.origin.x = (*(*v11 + 168))(v11);
    IsEmpty = CGRectIsEmpty(v60);
  }

  else
  {
    IsEmpty = 0;
  }

  if ((*(*v10 + 16))(v10) == 41)
  {
    v61.origin.x = (*(*v10 + 168))(v10);
    v13 = CGRectIsEmpty(v61);
    if (!IsEmpty)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
    if (!IsEmpty)
    {
      goto LABEL_18;
    }
  }

  if (*(a1 + 154) == 1 || (*(a1 + 168) & 4) != 0)
  {
LABEL_43:
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(a2);
    MEMORY[0x19EAF5590]();
    operator new();
  }

LABEL_18:
  if (v13 && (*(a1 + 168) & 8) != 0)
  {
    goto LABEL_43;
  }

  if (IsEmpty && (*(a1 + 168) & 1) != 0)
  {
    CI::Object::ref(v10);
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(a2);
    MEMORY[0x19EAF5590]();
  }

  else
  {
    if (!v13 || (*(a1 + 168) & 2) == 0)
    {
      goto LABEL_24;
    }

    CI::Object::ref(v11);
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(a2);
    MEMORY[0x19EAF5590]();
    v10 = v11;
  }

  _Block_object_dispose(&v44, 8);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v52, 8);
  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v56, 8);
  return v10;
}

__n128 __Block_byref_object_copy__25(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__25(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN2CI15ColorKernelNode14append_to_treeEPKNS_6KernelEPNS_20SerialObjectPtrArrayE6CGRectU13block_pointerFS6_iS6_EbbNS_11PixelFormatE_block_invoke(void *a1, signed int a2, uint64_t a3)
{
  v5 = (*(*a3 + 16))(a3);
  if (!CI::is_any_TypeNode(v5))
  {
    return;
  }

  v6 = a1[8];
  if (*(v6 + 12) == 1)
  {
    type = CI::KernelArguments::get_type((v6 + 136), a2);
LABEL_6:
    if (type == 2)
    {
      v8 = a1[5];
      goto LABEL_12;
    }

    if (type == 4)
    {
      v8 = a1[4];
LABEL_12:
      ++*(*(v8 + 8) + 24);
      return;
    }

    goto LABEL_9;
  }

  if (*(v6 + 20) > a2)
  {
    type = *(*(v6 + 64) + 4 * a2);
    goto LABEL_6;
  }

LABEL_9:
  ++*(*(a1[6] + 8) + 24);
  v9 = *(a1[7] + 8);
  v11 = v9[6];
  v10 = v9[7];
  if (v11 >= v10)
  {
    v13 = v9[5];
    v14 = v11 - v13;
    v15 = (v11 - v13) >> 2;
    v16 = v15 + 1;
    if ((v15 + 1) >> 62)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v17 = v10 - v13;
    if (v17 >> 1 > v16)
    {
      v16 = v17 >> 1;
    }

    v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
    v19 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v18)
    {
      v19 = v16;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::NodeIndex>>((v9 + 5), v19);
    }

    v20 = (v11 - v13) >> 2;
    v21 = (4 * v15);
    v22 = (4 * v15 - 4 * v20);
    *v21 = a2;
    v12 = v21 + 1;
    memcpy(v22, v13, v14);
    v23 = v9[5];
    v9[5] = v22;
    v9[6] = v12;
    v9[7] = 0;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    *v11 = a2;
    v12 = v11 + 1;
  }

  v9[6] = v12;
}

CI::SerialObjectPtrArray *CI::SerialObjectPtrArray::SerialObjectPtrArray(CI::SerialObjectPtrArray *this, const CI::SerialObjectPtrArray *a2)
{
  v4 = CI::SerialObjectPtrArray::SerialObjectPtrArray(this, *a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v10 = ___ZN2CI20SerialObjectPtrArrayC1ERKS0__block_invoke;
  v11 = &__block_descriptor_tmp_16_0;
  v12 = v4;
  if (*a2 >= 1)
  {
    v5 = 0;
    v6 = 24;
    do
    {
      v7 = (a2 + v6);
      if (v5 >= 0xA)
      {
        v7 = (*(a2 + 2) + v6 - 104);
      }

      v10(v9, v5++, *v7);
      v6 += 8;
    }

    while (v5 < *a2);
  }

  return this;
}

void CI::ColorKernelNode::set_child(CI::ColorKernelNode *this, CI::Node *a2, int a3)
{
  if (a3 < 0)
  {
    return;
  }

  v4 = **(this + 7);
  if (v4 < 1)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  for (i = -80; ; i += 8)
  {
    v10 = *(this + 7);
    if (v7 > 9)
    {
      v11 = (*(v10 + 16) + i);
    }

    else
    {
      v11 = (v10 + 8 * v7 + 24);
    }

    v12 = *v11;
    if ((*(**v11 + 16))(*v11) < 33 || (*(*v12 + 16))(v12) > 60)
    {
      goto LABEL_11;
    }

    if (v8 == a3)
    {
      break;
    }

    ++v8;
LABEL_11:
    if (v4 == ++v7)
    {
      return;
    }
  }

  v13 = *(this + 7);

  CI::SerialObjectPtrArray::replace(v13, a2, v7);
}

uint64_t CI::ColorKernelNode::print_for_graph_core(uint64_t a1, FILE *a2, void *a3, int a4)
{
  result = fprintf(a2, "colorkernel %s", *(*(a1 + 48) + 24));
  v9 = **(a1 + 56);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = *(a1 + 56);
      if (i > 9)
      {
        v12 = (*(v11 + 16) + 8 * i - 80);
      }

      else
      {
        v12 = (v11 + 8 * i + 24);
      }

      v13 = *v12;
      if (a4)
      {
        if (i)
        {
          v14 = 44;
        }

        else
        {
          v14 = 40;
        }

        fputc(v14, a2);
        v15 = *(a1 + 48);
        if (*(v15 + 12) == 1)
        {
          name = CI::KernelArguments::get_name((v15 + 136), i);
        }

        else if (i >= *(v15 + 20))
        {
          name = 0;
        }

        else
        {
          name = *(*(v15 + 72) + 8 * i);
        }

        fputs(name, a2);
      }

      else
      {
        v17 = *(a1 + 48);
        if (*(v17 + 12) == 1)
        {
          v18 = CI::KernelArguments::get_name((v17 + 136), i);
        }

        else if (i >= *(v17 + 20))
        {
          v18 = 0;
        }

        else
        {
          v18 = *(*(v17 + 72) + 8 * i);
        }

        fprintf(a2, "\n%s", v18);
      }

      if ((*(*v13 + 16))(v13) < 33 || (*(*v13 + 16))(v13) > 60)
      {
        fputc(61, a2);
        result = (*(*v13 + 32))(v13, a2, 0);
      }

      else
      {
        if (CI_GRAPHVIZ_INTERNAL())
        {
          v19 = v13[9];
LABEL_29:
          result = fprintf(a2, "=(%d)", v19);
          continue;
        }

        v24 = v13;
        result = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(a3, &v24);
        if (result)
        {
          v19 = *(result + 24);
          goto LABEL_29;
        }
      }
    }
  }

  if (v9 && (a4 & 1) != 0)
  {
    result = fputc(41, a2);
  }

  if ((a4 & 1) == 0)
  {
    v20 = (*(**(a1 + 48) + 40))(*(a1 + 48));
    if (v20)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 0x40000000;
      v23[2] = ___ZNK2CI15ColorKernelNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke;
      v23[3] = &__block_descriptor_tmp_11_3;
      v23[4] = a2;
      __CFDictionary::for_each(v20, v23);
    }

    result = (*(*a1 + 328))(a1);
    if (result)
    {
      v21 = (*(*a1 + 328))(a1);
      v22 = CI::name_for_format(v21);
      return fprintf(a2, "\noutputFormat=%s", v22);
    }
  }

  return result;
}

void ___ZNK2CI15ColorKernelNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke(uint64_t a1, __CFObject *a2, __CFObject *a3)
{
  fputc(10, *(a1 + 32));
  __CFObject::fprint(a2, *(a1 + 32), v6);
  fputc(61, *(a1 + 32));
  v8 = *(a1 + 32);

  __CFObject::fprint(a3, v8, v7);
}

CFStringRef CI::ColorKernelNode::description(CI::ColorKernelNode *this)
{
  v2 = (*(*this + 16))(this);
  v3 = CI::name_for_type(v2);
  return CFStringCreateWithFormat(0, 0, @"<CI::%s %p, %s>", v3, this, *(*(this + 6) + 24));
}

uint64_t CI::ColorKernelNode::code_complexity(CI::ColorKernelNode *this)
{
  v1 = *(*(this + 6) + 32);
  if (v1)
  {
    result = 0;
    while (1)
    {
      if (*v1 == 59)
      {
        ++result;
      }

      else if (!*v1)
      {
        return result;
      }

      ++v1;
    }
  }

  return 0;
}

double CI::ColorKernelNode::roi_of_child(CI::ColorKernelNode *this, CGRect a2, uint64_t a3)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if ((a3 & 0x80000000) == 0 && **(this + 7) > a3)
  {
    if ((*(*this + 424))(this, a3))
    {
      v9 = (*(*this + 48))(this, a3);
      v10 = (*(*v9 + 16))(v9);
      if (!CI::is_image_type(v10))
      {
        return *MEMORY[0x1E695F040];
      }

      (*(*v9 + 176))(v9);
      return v11;
    }

    v12 = *(this + 12);
    if (v12)
    {
      return (*(v12 + 16))(v12, a3, x, y, width, height);
    }
  }

  return x;
}

uint64_t CI::ColorKernelNode::add_args_to_hash(CI::ColorKernelNode *this, CI::XXHashHelper *a2)
{
  (*(*this + 408))(this);
  v4 = **(this + 7);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = -80;
    do
    {
      v7 = *(this + 7);
      if (v5 > 9)
      {
        v8 = (*(v7 + 16) + v6);
      }

      else
      {
        v8 = (v7 + 8 * v5 + 24);
      }

      CI::Kernel::add_argument_to_digest(a2, *v8, 0);
      ++v5;
      v6 += 8;
    }

    while (v4 != v5);
  }

  __src = (*(**(this + 6) + 56))(*(this + 6));
  return XXH64_update(a2, &__src, 8uLL);
}

uint64_t CI::ColorKernelNode::color_for_graphviz(CI::ColorKernelNode *this)
{
  if (*(*(this + 6) + 158))
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

void CI::ColorKernelNode::extent_unclamped(CGRect *this)
{
  v2 = (*(*&this->origin.x + 40))(this);
  v3 = v2;
  if (v2 < 2)
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    CGRectIsInfinite(this[2]);
  }

  if (CGRectIsInfinite(this[2]) && *(*&this[1].size.width + 158) == 1)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    if (v3 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = (*(*&this->origin.x + 48))(this, v8);
        v16.origin.x = (*(*v9 + 168))(v9);
        IsInfinite = CGRectIsInfinite(v16);
        v11 = *v9;
        if (IsInfinite)
        {
          (*(v11 + 176))(v9);
        }

        else
        {
          v17.origin.x = (*(v11 + 168))(v9);
          *&v12 = CGRectInset(v17, -1.0, -1.0);
        }

        v23.origin.x = v12;
        v23.origin.y = v13;
        v23.size.width = v14;
        v23.size.height = v15;
        v18.origin.x = x;
        v18.origin.y = y;
        v18.size.width = width;
        v18.size.height = height;
        v19 = CGRectUnion(v18, v23);
        x = v19.origin.x;
        y = v19.origin.y;
        width = v19.size.width;
        height = v19.size.height;
        v8 = (v8 + 1);
      }

      while (v3 != v8);
    }

    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    if (!CGRectIsNull(v20))
    {
      v21.origin.x = x;
      v21.origin.y = y;
      v21.size.width = width;
      v21.size.height = height;
      if (!CGRectIsEmpty(v21))
      {
        v22.origin.x = x;
        v22.origin.y = y;
        v22.size.width = width;
        v22.size.height = height;
        if (!CGRectIsInfinite(v22))
        {
          v24.origin.x = x;
          v24.origin.y = y;
          v24.size.width = width;
          v24.size.height = height;
          CGRectIntersection(this[2], v24);
        }
      }
    }
  }
}

void *CI::InstanceCounted<(CI::Type)57>::~InstanceCounted(void *result)
{
  *result = &unk_1F103A118;
  atomic_fetch_add(&dword_1ED7C47BC[55], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)57>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103A118;
  atomic_fetch_add(&dword_1ED7C47BC[55], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::GeneralKernelNode::~GeneralKernelNode(CI::GeneralKernelNode *this)
{
  *this = &unk_1F103A140;
  *(this + 5) = &unk_1F103A310;
  v2 = *(this + 6);
  if (v2 && *(v2 + 12) == 1)
  {
    CI::Object::unref(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v3);
    MEMORY[0x19EAF5590]();
  }

  _Block_release(*(this + 15));
  *(this + 15) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  *(this + 5) = &unk_1F103A338;
  atomic_fetch_add(&dword_1ED7C47BC[57], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

{
  CI::GeneralKernelNode::~GeneralKernelNode(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::GeneralKernelNode::~GeneralKernelNode(CI::GeneralKernelNode *this)
{
  CI::GeneralKernelNode::~GeneralKernelNode((this - 40));
}

{
  CI::GeneralKernelNode::~GeneralKernelNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

void CI::GeneralKernelNode::release_resources(CI::GeneralKernelNode *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    _Block_release(v2);
  }

  *(this + 15) = 0;
}

uint64_t CI::GeneralKernelNode::alpha_one(CI::GeneralKernelNode *this)
{
  if (*(this + 128))
  {
    return 1;
  }

  if (*(*(this + 6) + 152) == 1)
  {
    if ((*(*this + 48))(this, 0))
    {
      v3 = (*(*this + 48))(this, 0);
      v5.origin.x = (*(*v3 + 168))(v3);
      if (CGRectIsInfinite(v5))
      {
        v4 = *(*(*this + 48))(this, 0);
        if ((*(v4 + 280))())
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

BOOL CI::GeneralKernelNode::output_is_rg(CI::GeneralKernelNode *this)
{
  v2 = *(this + 33);
  result = 1;
  if (!v2 || (CI::format_is_rg(v2) & 1) == 0)
  {
    if (*(*(this + 6) + 152) != 1)
    {
      return 0;
    }

    if (!(*(*this + 48))(this, 0))
    {
      return 0;
    }

    v4 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v4 + 168))(v4);
    if (!CGRectIsInfinite(v6))
    {
      return 0;
    }

    v5 = *(*(*this + 48))(this, 0);
    if (((*(v5 + 288))() & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL CI::GeneralKernelNode::output_is_r(CI::GeneralKernelNode *this)
{
  v2 = *(this + 33);
  result = 1;
  if (!v2 || (CI::format_is_r(v2) & 1) == 0)
  {
    if (*(*(this + 6) + 152) != 1)
    {
      return 0;
    }

    if (!(*(*this + 48))(this, 0))
    {
      return 0;
    }

    v4 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v4 + 168))(v4);
    if (!CGRectIsInfinite(v6))
    {
      return 0;
    }

    v5 = *(*(*this + 48))(this, 0);
    if (((*(v5 + 296))() & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

BOOL CI::GeneralKernelNode::output_is_luma(CI::GeneralKernelNode *this)
{
  v2 = *(this + 33);
  result = 1;
  if (!v2 || !CI::format_is_luminance(v2) || ((*(*this + 280))(this) & 1) == 0)
  {
    if (*(*(this + 6) + 152) != 1)
    {
      return 0;
    }

    if (!(*(*this + 48))(this, 0))
    {
      return 0;
    }

    v3 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v3 + 168))(v3);
    if (!CGRectIsInfinite(v6))
    {
      return 0;
    }

    v4 = *(*(*this + 48))(this, 0);
    if (((*(v4 + 304))() & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t CI::GeneralKernelNode::output_depth(CI::GeneralKernelNode *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    if (CI::format_is_deep(v2))
    {
      return 1;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (*(*(this + 6) + 156) != 1)
    {
      return 0;
    }

    result = (*(*this + 48))(this, 0);
    if (!result)
    {
      return result;
    }

    v4 = *(*(*this + 48))(this, 0);
    if ((*(v4 + 320))() >= 1)
    {
      v5 = *(*(*(*this + 48))(this, 0) + 320);

      return v5();
    }

    else
    {
      return 0;
    }
  }
}

uint64_t CI::GeneralKernelNode::print_for_graph_core(uint64_t a1, FILE *a2, void *a3, int a4)
{
  result = fprintf(a2, "kernel %s", *(*(a1 + 48) + 24));
  v9 = **(a1 + 56);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = *(a1 + 56);
      if (i > 9)
      {
        v12 = (*(v11 + 16) + 8 * i - 80);
      }

      else
      {
        v12 = (v11 + 8 * i + 24);
      }

      v13 = *v12;
      if (a4)
      {
        if (i)
        {
          v14 = 44;
        }

        else
        {
          v14 = 40;
        }

        fputc(v14, a2);
        v15 = *(a1 + 48);
        if (*(v15 + 12) == 1)
        {
          name = CI::KernelArguments::get_name((v15 + 136), i);
        }

        else if (i >= *(v15 + 20))
        {
          name = 0;
        }

        else
        {
          name = *(*(v15 + 72) + 8 * i);
        }

        fputs(name, a2);
      }

      else
      {
        v17 = *(a1 + 48);
        if (*(v17 + 12) == 1)
        {
          v18 = CI::KernelArguments::get_name((v17 + 136), i);
        }

        else if (i >= *(v17 + 20))
        {
          v18 = 0;
        }

        else
        {
          v18 = *(*(v17 + 72) + 8 * i);
        }

        fprintf(a2, "\n%s", v18);
      }

      if ((*(*v13 + 16))(v13) < 33 || (*(*v13 + 16))(v13) > 60)
      {
        fputc(61, a2);
        result = (*(*v13 + 32))(v13, a2, 0);
      }

      else
      {
        if (CI_GRAPHVIZ_INTERNAL())
        {
          v19 = v13[9];
LABEL_29:
          result = fprintf(a2, "=(%d)", v19);
          continue;
        }

        v28 = v13;
        result = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>(a3, &v28);
        if (result)
        {
          v19 = *(result + 24);
          goto LABEL_29;
        }
      }
    }
  }

  if (v9)
  {
    v20 = a4 == 0;
  }

  else
  {
    v20 = 1;
  }

  if (!v20)
  {
    result = fputc(41, a2);
  }

  if ((a4 & 1) == 0)
  {
    v21 = (*(**(a1 + 48) + 40))(*(a1 + 48));
    if (v21)
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 0x40000000;
      v27[2] = ___ZNK2CI17GeneralKernelNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke;
      v27[3] = &__block_descriptor_tmp_23;
      v27[4] = a2;
      __CFDictionary::for_each(v21, v27);
    }

    result = *(a1 + 132);
    if (result)
    {
      v22 = CI::name_for_format(result);
      result = fprintf(a2, "\noutputFormat=%s", v22);
    }

    v23 = *(a1 + 136);
    if (v23)
    {
      if (*(a1 + 140))
      {
        v24 = *(a1 + 144);
        if (v24)
        {
          result = fprintf(a2, "\nthreadsPerGroup=(%d,%d,%d)", v23, *(a1 + 140), v24);
        }
      }
    }

    v25 = *(a1 + 148);
    if (v25 && *(a1 + 152))
    {
      v26 = *(a1 + 156);
      if (v26)
      {
        return fprintf(a2, "\nthreadgroupsPerGrid=(%d,%d,%d)", v25, *(a1 + 152), v26);
      }
    }
  }

  return result;
}

void ___ZNK2CI17GeneralKernelNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke(uint64_t a1, __CFObject *a2, __CFObject *a3)
{
  fputc(10, *(a1 + 32));
  __CFObject::fprint(a2, *(a1 + 32), v6);
  fputc(61, *(a1 + 32));
  v8 = *(a1 + 32);

  __CFObject::fprint(a3, v8, v7);
}

uint64_t CI::GeneralKernelNode::code_complexity(CI::GeneralKernelNode *this)
{
  v1 = *(*(this + 6) + 32);
  if (v1)
  {
    result = 0;
    while (1)
    {
      if (*v1 == 59)
      {
        ++result;
      }

      else if (!*v1)
      {
        return result;
      }

      ++v1;
    }
  }

  return 0;
}

double CI::GeneralKernelNode::roi_of_child(CI::GeneralKernelNode *this, CGRect a2, uint64_t a3)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if ((a3 & 0x80000000) == 0 && **(this + 7) > a3)
  {
    if ((*(*this + 200))(this, a3))
    {
      v9 = *(this + 15);
      if (v9)
      {
        return (*(v9 + 16))(v9, a3, x, y, width, height);
      }

      v10 = ci_logger_render();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        CI::GeneralKernelNode::roi_of_child(this, v10);
      }

      v9 = *(this + 15);
      if (v9)
      {
        return (*(v9 + 16))(v9, a3, x, y, width, height);
      }
    }

    else
    {
      return *MEMORY[0x1E695F040];
    }
  }

  return x;
}

uint64_t CI::GeneralKernelNode::child_count(CI::GeneralKernelNode *this)
{
  v1 = **(this + 7);
  if (v1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  v5 = -80;
  do
  {
    v6 = *(this + 7);
    if (v3 > 9)
    {
      v7 = (*(v6 + 16) + v5);
    }

    else
    {
      v7 = (v6 + 8 * v3 + 24);
    }

    v8 = *v7;
    if ((*(**v7 + 16))(*v7) >= 33)
    {
      if ((*(*v8 + 16))(v8) >= 61)
      {
        v4 = v4;
      }

      else
      {
        v4 = (v4 + 1);
      }
    }

    ++v3;
    v5 += 8;
  }

  while (v1 != v3);
  return v4;
}

uint64_t CI::GeneralKernelNode::child(CI::GeneralKernelNode *this, int a2)
{
  v2 = **(this + 7);
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = -80;
    do
    {
      v8 = *(this + 7);
      if (v5 > 9)
      {
        v9 = (*(v8 + 16) + v7);
      }

      else
      {
        v9 = (v8 + 8 * v5 + 24);
      }

      v10 = *v9;
      if ((*(**v9 + 16))(*v9) >= 33 && (*(*v10 + 16))(v10) <= 60)
      {
        if (v6 == a2)
        {
          return v10;
        }

        ++v6;
      }

      ++v5;
      v7 += 8;
    }

    while (v2 != v5);
  }

  return 0;
}

BOOL CI::GeneralKernelNode::child_is_ArgumentTypeSampler(CI::GeneralKernelNode *this, int a2)
{
  v2 = **(this + 7);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  for (i = -80; ; i += 8)
  {
    v8 = *(this + 7);
    if (v5 > 9)
    {
      v9 = (*(v8 + 16) + i);
    }

    else
    {
      v9 = (v8 + 8 * v5 + 24);
    }

    v10 = *v9;
    if ((*(**v9 + 16))(*v9) < 33 || (*(*v10 + 16))(v10) > 60)
    {
      goto LABEL_10;
    }

    if (v6 == a2)
    {
      break;
    }

    ++v6;
LABEL_10:
    if (v2 == ++v5)
    {
      return 0;
    }
  }

  v12 = *(this + 6);
  if (*(v12 + 12) == 1)
  {
    type = CI::KernelArguments::get_type((v12 + 136), v5);
  }

  else if (*(v12 + 20) <= v5)
  {
    type = 0;
  }

  else
  {
    type = *(*(v12 + 64) + 4 * v5);
  }

  return type == 2;
}

BOOL CI::GeneralKernelNode::child_is_ArgumentTypeSampler2D(CI::GeneralKernelNode *this, int a2)
{
  v2 = **(this + 7);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  for (i = -80; ; i += 8)
  {
    v8 = *(this + 7);
    if (v5 > 9)
    {
      v9 = (*(v8 + 16) + i);
    }

    else
    {
      v9 = (v8 + 8 * v5 + 24);
    }

    v10 = *v9;
    if ((*(**v9 + 16))(*v9) < 33 || (*(*v10 + 16))(v10) > 60)
    {
      goto LABEL_10;
    }

    if (v6 == a2)
    {
      break;
    }

    ++v6;
LABEL_10:
    if (v2 == ++v5)
    {
      return 0;
    }
  }

  v12 = *(this + 6);
  if (*(v12 + 12) == 1)
  {
    type = CI::KernelArguments::get_type((v12 + 136), v5);
  }

  else if (*(v12 + 20) <= v5)
  {
    type = 0;
  }

  else
  {
    type = *(*(v12 + 64) + 4 * v5);
  }

  return type == 4;
}

BOOL CI::GeneralKernelNode::child_is_ArgumentTypeSample(CI::GeneralKernelNode *this, int a2)
{
  v2 = **(this + 7);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  for (i = -80; ; i += 8)
  {
    v8 = *(this + 7);
    if (v5 > 9)
    {
      v9 = (*(v8 + 16) + i);
    }

    else
    {
      v9 = (v8 + 8 * v5 + 24);
    }

    v10 = *v9;
    if ((*(**v9 + 16))(*v9) < 33 || (*(*v10 + 16))(v10) > 60)
    {
      goto LABEL_10;
    }

    if (v6 == a2)
    {
      break;
    }

    ++v6;
LABEL_10:
    if (v2 == ++v5)
    {
      return 0;
    }
  }

  v12 = *(this + 6);
  if (*(v12 + 12) == 1)
  {
    type = CI::KernelArguments::get_type((v12 + 136), v5);
  }

  else if (*(v12 + 20) <= v5)
  {
    type = 0;
  }

  else
  {
    type = *(*(v12 + 64) + 4 * v5);
  }

  return type != 2 && type != 4;
}

BOOL CI::GeneralKernelNode::is_color_general(CI::GeneralKernelNode *this)
{
  v1 = **(this + 7);
  if (v1 < 1)
  {
    return 0;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    v5 = -80;
    do
    {
      v6 = *(this + 7);
      if (v3 > 9)
      {
        v7 = (*(v6 + 16) + v5);
      }

      else
      {
        v7 = (v6 + 8 * v3 + 24);
      }

      v8 = *v7;
      if ((*(**v7 + 16))(*v7) >= 33 && (*(*v8 + 16))(v8) <= 60)
      {
        v9 = *(this + 6);
        if (*(v9 + 12) == 1)
        {
          type = CI::KernelArguments::get_type((v9 + 136), v3);
        }

        else
        {
          if (v3 >= *(v9 + 20))
          {
            return v4;
          }

          type = *(*(v9 + 64) + 4 * v3);
        }

        if (type != 4 && type != 2)
        {
          break;
        }
      }

      v4 = ++v3 < v1;
      v5 += 8;
    }

    while (v1 != v3);
  }

  return v4;
}

void CI::GeneralKernelNode::set_child(CI::GeneralKernelNode *this, CI::Node *a2, int a3)
{
  if (a3 < 0)
  {
    return;
  }

  v4 = **(this + 7);
  if (v4 < 1)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = *(this + 6);
    if (*(v9 + 12) == 1)
    {
      type = CI::KernelArguments::get_type((v9 + 136), v7);
      goto LABEL_8;
    }

    if (v7 < *(v9 + 20))
    {
      break;
    }

LABEL_14:
    if (v4 == ++v7)
    {
      return;
    }
  }

  type = *(*(v9 + 64) + 4 * v7);
LABEL_8:
  if (type > 4 || ((1 << type) & 0x16) == 0)
  {
    goto LABEL_14;
  }

  if (v8 != a3)
  {
    ++v8;
    goto LABEL_14;
  }

  v12 = *(this + 7);

  CI::SerialObjectPtrArray::replace(v12, a2, v7);
}

CFStringRef CI::GeneralKernelNode::description(CI::GeneralKernelNode *this)
{
  v2 = (*(*this + 16))(this);
  v3 = CI::name_for_type(v2);
  return CFStringCreateWithFormat(0, 0, @"<CI::%s %p [%s]>", v3, this, *(*(this + 6) + 24));
}

uint64_t CI::GeneralKernelNode::add_args_to_hash(CI::GeneralKernelNode *this, CI::XXHashHelper *a2)
{
  (*(*this + 408))(this);
  v4 = **(this + 7);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = -80;
    do
    {
      v7 = *(this + 7);
      if (v5 > 9)
      {
        v8 = (*(v7 + 16) + v6);
      }

      else
      {
        v8 = (v7 + 8 * v5 + 24);
      }

      CI::Kernel::add_argument_to_digest(a2, *v8, 0);
      ++v5;
      v6 += 8;
    }

    while (v4 != v5);
  }

  __src = (*(**(this + 6) + 56))(*(this + 6));
  return XXH64_update(a2, &__src, 8uLL);
}

void *std::vector<CGRect>::__assign_with_size[abi:nn200100]<CGRect*,CGRect*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CGRect>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void *CI::InstanceCounted<(CI::Type)59>::~InstanceCounted(void *result)
{
  *result = &unk_1F103A338;
  atomic_fetch_add(&dword_1ED7C47BC[57], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)59>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103A338;
  atomic_fetch_add(&dword_1ED7C47BC[57], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void CI::WarpKernelNode::~WarpKernelNode(CI::WarpKernelNode *this)
{
  *this = &unk_1F103A360;
  *(this + 5) = &unk_1F103A518;
  v2 = *(this + 6);
  if (v2 && *(v2 + 12) == 1)
  {
    CI::Object::unref(v2);
  }

  *(this + 6) = 0;
  v3 = *(this + 7);
  if (v3)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v3);
    MEMORY[0x19EAF5590]();
  }

  *(this + 7) = 0;
  _Block_release(*(this + 12));
  *(this + 12) = 0;
  *(this + 5) = &unk_1F103A540;
  atomic_fetch_add(&dword_1ED7C47BC[56], 0xFFFFFFFF);

  CI::Node::~Node(this);
}

{
  CI::WarpKernelNode::~WarpKernelNode(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::WarpKernelNode::~WarpKernelNode(CI::WarpKernelNode *this)
{
  CI::WarpKernelNode::~WarpKernelNode((this - 40));
}

{
  CI::WarpKernelNode::~WarpKernelNode((this - 40));

  JUMPOUT(0x19EAF5590);
}

void CI::WarpKernelNode::release_resources(CI::WarpKernelNode *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    _Block_release(v2);
  }

  *(this + 12) = 0;
}

uint64_t CI::WarpKernelNode::child(CI::WarpKernelNode *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = *(this + 7);
  v4 = *v3 - 1;
  if (*v3 > 10)
  {
    v5 = (*(v3 + 16) + 8 * v4 - 80);
  }

  else
  {
    v5 = (v3 + 8 * v4 + 24);
  }

  v6 = *v5;
  if ((*(**v5 + 16))(*v5) < 33)
  {
    return 0;
  }

  if ((*(*v6 + 16))(v6) >= 61)
  {
    return 0;
  }

  return v6;
}

BOOL CI::WarpKernelNode::output_is_rg(CI::WarpKernelNode *this)
{
  v5.origin.x = (*(*this + 168))(this);
  result = 0;
  if (CGRectIsInfinite(v5))
  {
    v2 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v2 + 168))(v2);
    if (CGRectIsInfinite(v6))
    {
      v3 = *(*(*this + 48))(this, 0);
      if ((*(v3 + 288))())
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL CI::WarpKernelNode::output_is_r(CI::WarpKernelNode *this)
{
  v5.origin.x = (*(*this + 168))(this);
  result = 0;
  if (CGRectIsInfinite(v5))
  {
    v2 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v2 + 168))(v2);
    if (CGRectIsInfinite(v6))
    {
      v3 = *(*(*this + 48))(this, 0);
      if ((*(v3 + 296))())
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL CI::WarpKernelNode::output_is_luma(CI::WarpKernelNode *this)
{
  v5.origin.x = (*(*this + 168))(this);
  result = 0;
  if (CGRectIsInfinite(v5))
  {
    v2 = (*(*this + 48))(this, 0);
    v6.origin.x = (*(*v2 + 168))(v2);
    if (CGRectIsInfinite(v6))
    {
      v3 = *(*(*this + 48))(this, 0);
      if ((*(v3 + 304))())
      {
        return 1;
      }
    }
  }

  return result;
}

void CI::WarpKernelNode::set_child(CI::WarpKernelNode *this, CI::Node *a2, int a3)
{
  if (a3 < 0)
  {
    return;
  }

  v4 = **(this + 7);
  if (v4 < 1)
  {
    return;
  }

  v7 = 0;
  v8 = 0;
  for (i = -80; ; i += 8)
  {
    v10 = *(this + 7);
    if (v7 > 9)
    {
      v11 = (*(v10 + 16) + i);
    }

    else
    {
      v11 = (v10 + 8 * v7 + 24);
    }

    v12 = *v11;
    if ((*(**v11 + 16))(*v11) < 33 || (*(*v12 + 16))(v12) > 60)
    {
      goto LABEL_11;
    }

    if (v8 == a3)
    {
      break;
    }

    ++v8;
LABEL_11:
    if (v4 == ++v7)
    {
      return;
    }
  }

  v13 = *(this + 7);

  CI::SerialObjectPtrArray::replace(v13, a2, v7);
}

void CI::WarpKernelNode::print_for_graph_core(uint64_t a1, FILE *a2, uint64_t a3, int a4)
{
  fprintf(a2, "warpkernel %s", *(*(a1 + 48) + 24));
  v7 = **(a1 + 56);
  v8 = v7 - ((*(**(a1 + 48) + 16))(*(a1 + 48)) == 71);
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = *(a1 + 56);
      if (i > 9)
      {
        v11 = (*(v10 + 16) + 8 * i - 80);
      }

      else
      {
        v11 = (v10 + 8 * i + 24);
      }

      v12 = *v11;
      if (a4)
      {
        if (i)
        {
          v13 = 44;
        }

        else
        {
          v13 = 40;
        }

        fputc(v13, a2);
        v14 = *(a1 + 48);
        if (*(v14 + 12) == 1)
        {
          name = CI::KernelArguments::get_name((v14 + 136), i);
        }

        else if (i >= *(v14 + 20))
        {
          name = 0;
        }

        else
        {
          name = *(*(v14 + 72) + 8 * i);
        }

        fputs(name, a2);
      }

      else
      {
        v16 = *(a1 + 48);
        if (*(v16 + 12) == 1)
        {
          v17 = CI::KernelArguments::get_name((v16 + 136), i);
        }

        else if (i >= *(v16 + 20))
        {
          v17 = 0;
        }

        else
        {
          v17 = *(*(v16 + 72) + 8 * i);
        }

        fprintf(a2, "\n%s", v17);
      }

      if ((*(*v12 + 16))(v12) < 33 || (*(*v12 + 16))(v12) >= 61)
      {
        fputc(61, a2);
        (*(*v12 + 32))(v12, a2, 0);
      }
    }
  }

  if (v8 && (a4 & 1) != 0)
  {
    fputc(41, a2);
  }

  if ((a4 & 1) == 0)
  {
    v18 = (*(**(a1 + 48) + 40))(*(a1 + 48));
    if (v18)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 0x40000000;
      v19[2] = ___ZNK2CI14WarpKernelNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke;
      v19[3] = &__block_descriptor_tmp_24;
      v19[4] = a2;
      __CFDictionary::for_each(v18, v19);
    }
  }
}

void ___ZNK2CI14WarpKernelNode20print_for_graph_coreEP7__sFILERKNSt3__113unordered_mapIPKNS_11GraphObjectEjNS3_4hashIS7_EENS3_8equal_toIS7_EENS3_9allocatorINS3_4pairIKS7_jEEEEEEb_block_invoke(uint64_t a1, __CFObject *a2, __CFObject *a3)
{
  fputc(10, *(a1 + 32));
  __CFObject::fprint(a2, *(a1 + 32), v6);
  fputc(61, *(a1 + 32));
  v8 = *(a1 + 32);

  __CFObject::fprint(a3, v8, v7);
}

CFStringRef CI::WarpKernelNode::description(CI::WarpKernelNode *this)
{
  v2 = (*(*this + 16))(this);
  v3 = CI::name_for_type(v2);
  return CFStringCreateWithFormat(0, 0, @"<CI::%s %p, %s>", v3, this, *(*(this + 6) + 24));
}

uint64_t CI::WarpKernelNode::code_complexity(CI::WarpKernelNode *this)
{
  v1 = *(*(this + 6) + 32);
  if (v1)
  {
    result = 0;
    while (1)
    {
      if (*v1 == 59)
      {
        ++result;
      }

      else if (!*v1)
      {
        return result;
      }

      ++v1;
    }
  }

  return 0;
}

double CI::WarpKernelNode::roi_of_child(CI::WarpKernelNode *this, CGRect a2, uint64_t a3)
{
  height = a2.size.height;
  width = a2.size.width;
  y = a2.origin.y;
  x = a2.origin.x;
  if (a3 <= 1)
  {
    v9 = *(this + 12);
    if (v9)
    {
      return (*(v9 + 16))(v9, a3, x, y, width, height);
    }

    v10 = ci_logger_render();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CI::WarpKernelNode::roi_of_child(this, v10);
    }

    v9 = *(this + 12);
    if (v9)
    {
      return (*(v9 + 16))(v9, a3, x, y, width, height);
    }
  }

  return x;
}

uint64_t CI::WarpKernelNode::add_args_to_hash(CI::WarpKernelNode *this, CI::XXHashHelper *a2)
{
  (*(*this + 408))(this);
  v4 = **(this + 7);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = -80;
    do
    {
      v7 = *(this + 7);
      if (v5 > 9)
      {
        v8 = (*(v7 + 16) + v6);
      }

      else
      {
        v8 = (v7 + 8 * v5 + 24);
      }

      CI::Kernel::add_argument_to_digest(a2, *v8, 0);
      ++v5;
      v6 += 8;
    }

    while (v4 != v5);
  }

  __src = (*(**(this + 6) + 56))(*(this + 6));
  return XXH64_update(a2, &__src, 8uLL);
}

uint64_t CI::WarpKernelNode::may_be_extended_range(CI::WarpKernelNode *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 272);

  return v1();
}

uint64_t CI::WarpKernelNode::alpha_one(CI::WarpKernelNode *this)
{
  v2 = (*(*this + 48))(this, 0);
  v6.origin.x = (*(*v2 + 168))(v2);
  result = CGRectIsInfinite(v6);
  if (result)
  {
    v4 = *(*(*(*this + 48))(this, 0) + 280);

    return v4();
  }

  return result;
}

uint64_t CI::WarpKernelNode::output_depth(CI::WarpKernelNode *this)
{
  v1 = *(*(*(*this + 48))(this, 0) + 320);

  return v1();
}

void *CI::InstanceCounted<(CI::Type)58>::~InstanceCounted(void *result)
{
  *result = &unk_1F103A540;
  atomic_fetch_add(&dword_1ED7C47BC[56], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)58>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103A540;
  atomic_fetch_add(&dword_1ED7C47BC[56], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

size_t CI::NoopNode::print_for_graph_core(uint64_t a1, FILE *__stream)
{
  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    if (v3 == 1)
    {
      v4 = "noop_intermediate_uncached";
      v5 = 26;
      return fwrite(v4, v5, 1uLL, __stream);
    }

    if (v3 == 3)
    {
      v4 = "noop_affine";
      v5 = 11;
      return fwrite(v4, v5, 1uLL, __stream);
    }

LABEL_12:
    v4 = "noop_intermediate";
    v5 = 17;
    return fwrite(v4, v5, 1uLL, __stream);
  }

  if (v3 == 4)
  {
    v4 = "noop_multiuse";
    v5 = 13;
    return fwrite(v4, v5, 1uLL, __stream);
  }

  if (v3 == 5)
  {
    v4 = "noop_samplemode";
    v5 = 15;
    return fwrite(v4, v5, 1uLL, __stream);
  }

  if (v3 != 6)
  {
    goto LABEL_12;
  }

  v4 = "noop_disablemerging";
  v5 = 19;
  return fwrite(v4, v5, 1uLL, __stream);
}

CI::Node *CI::NoopNode::program_graph(CI::NoopNode *this, CI::Context *a2, CI::NodeToNodeMap *a3, uint64_t a4)
{
  v8 = CI::NodeToNodeMap::findAndRef(a3, this);
  if (!v8)
  {
    v8 = (*(**(this + 5) + 344))(*(this + 5), a2, a3, a4);
    (*(*v8 + 16))(v8);
    if ((*(*v8 + 16))(v8) == 60)
    {
      v9 = *(v8 + 38);
      if ((*(*this + 424))(this) == 2)
      {
        if (v9 <= 7)
        {
          v10 = 7;
        }

        else
        {
          v10 = v9;
        }

        *(v8 + 38) = v10;
      }

      if ((*(*this + 424))(this) == 1)
      {
        *(v8 + 38) = -1;
      }

      if (!(*(*this + 424))(this))
      {
        if (v9 < 2)
        {
          v11 = 2;
        }

        else
        {
          v11 = v9;
        }

        *(v8 + 38) = v11;
      }
    }

    CI::NodeToNodeMap::add(a3, this, v8);
  }

  return v8;
}

uint64_t CI::NodeToNodeMap::findAndRef(CI::NodeToNodeMap *this, CI::Node *a2)
{
  v4 = *(this + 2);
  v2 = this + 16;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 4) > a2)
  {
    return 0;
  }

  result = *(v5 + 5);
  if (result)
  {
    CI::Object::ref(result);
    return *(v5 + 5);
  }

  return result;
}

void *CI::NodeToNodeMap::add(CI::NodeToNodeMap *this, CI::Node *a2, CI::Node *a3)
{
  v12[0] = a2;
  v6 = *(this + 2);
  result = (this + 16);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = result;
  do
  {
    v8 = *(v5 + 32);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * v10);
  }

  while (v5);
  if (v7 == result || *(v7 + 32) > a2)
  {
LABEL_9:
    v11 = (result - 1);
    if (a2)
    {
      CI::Object::ref(a2);
    }

    if (a3)
    {
      CI::Object::ref(a3);
    }

    v12[2] = v12;
    result = std::__tree<std::__value_type<CI::Node *,CI::Node *>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::Node *>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::Node *>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>(v11, v12);
    result[5] = a3;
  }

  return result;
}

void CI::NoopNode::~NoopNode(CI::NoopNode *this)
{
  *(this + 6) = &unk_1F103A750;
  atomic_fetch_add(&dword_1ED7C47BC[43], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *(this + 6) = &unk_1F103A750;
  atomic_fetch_add(&dword_1ED7C47BC[43], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

void non-virtual thunk toCI::NoopNode::~NoopNode(CI::NoopNode *this)
{
  *this = &unk_1F103A750;
  atomic_fetch_add(&dword_1ED7C47BC[43], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  *this = &unk_1F103A750;
  atomic_fetch_add(&dword_1ED7C47BC[43], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));

  JUMPOUT(0x19EAF5590);
}

void *std::__tree<std::__value_type<CI::Node *,CI::Node *>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::Node *>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::Node *>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *CI::InstanceCounted<(CI::Type)45>::~InstanceCounted(void *result)
{
  *result = &unk_1F103A750;
  atomic_fetch_add(&dword_1ED7C47BC[43], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)45>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103A750;
  atomic_fetch_add(&dword_1ED7C47BC[43], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

CI::PremultiplyNode *CI::PremultiplyNode::append_to_tree(CI::PremultiplyNode *this, CI::Node *a2, int a3)
{
  v3 = this;
  if (a2)
  {
    v5 = a2;
    if (a3 && (*(*this + 240))(this))
    {
      v6 = 0;
      v7 = v3;
      do
      {
        v8 = v7;
        if ((*(*v7 + 184))(v7))
        {
          break;
        }

        v7 = (*(*v7 + 48))(v7, 0);
        v6 = v8;
      }

      while (((*(*v7 + 240))(v7) & 1) != 0);
    }

    else
    {
      v6 = 0;
      v7 = v3;
    }

    if ((*(*v7 + 280))(v7))
    {
      goto LABEL_10;
    }

    if ((*(*v7 + 16))(v7) == 46)
    {
      if (!(*(v7 + 14) + v5))
      {
        v7 = *(v7 + 5);
        if (!v7)
        {
LABEL_26:
          if (!v6)
          {
            return v7;
          }

          (*(*v6 + 208))(v6, v7, 0);
          if (v7)
          {
            CI::Object::unref(v7);
          }

          if (v3)
          {
            CI::Object::ref(v3);
          }

          return v3;
        }

LABEL_10:
        CI::Object::ref(v7);
        goto LABEL_26;
      }
    }

    else if (v5 == -1)
    {
      if (a3)
      {
        if ((*(*v7 + 16))(v7) == 37)
        {
          v10 = (*(*v7 + 48))(v7, 0);
          if ((*(*v10 + 16))(v10) == 46)
          {
            v11 = (*(*v7 + 48))(v7, 0);
            if (v11[14] == 1)
            {
              (*(*v11 + 48))(v11, 0);
              operator new();
            }

            operator new();
          }
        }
      }
    }

    operator new();
  }

  if (!this)
  {
    return v3;
  }

  return CI::Object::ref(this);
}

uint64_t CI::PremultiplyNode::add_to_kernel_hash(uint64_t this, CI::XXHashHelper *a2)
{
  v2 = *(this + 56);
  if (v2 == 1)
  {
    v3 = "builtin_premultiply";
  }

  else
  {
    if (v2 != -1)
    {
      return this;
    }

    v3 = "builtin_unpremultiply";
  }

  return CI::XXHashHelper::addstr(a2, v3);
}

uint64_t CI::PremultiplyNode::convert_to_kernel_node(CI::PremultiplyNode *this, CI::Context *a2)
{
  v3 = (this + 56);
  v2 = *(this + 14);
  if (v2 == 1 || v2 == -1)
  {
    operator new();
  }

  v4 = ci_logger_render();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    CI::PremultiplyNode::convert_to_kernel_node(v3, v4);
  }

  return 0;
}

void CI::PremultiplyNode::~PremultiplyNode(CI::PremultiplyNode *this)
{
  *this = &unk_1F103A778;
  *(this + 14) = 0;
  *(this + 6) = &unk_1F103A958;
  atomic_fetch_add(&dword_1ED7C47BC[44], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);
}

{
  *this = &unk_1F103A778;
  *(this + 14) = 0;
  *(this + 6) = &unk_1F103A958;
  atomic_fetch_add(&dword_1ED7C47BC[44], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild(this);

  JUMPOUT(0x19EAF5590);
}

const char *CI::PremultiplyNode::short_name(CI::PremultiplyNode *this)
{
  v1 = "premul";
  v2 = *(this + 14);
  v3 = "badbremul";
  if (!v2)
  {
    v3 = "nopremul";
  }

  if (v2 != 1)
  {
    v1 = v3;
  }

  if (v2 == -1)
  {
    return "unpremul";
  }

  else
  {
    return v1;
  }
}

uint64_t CI::PremultiplyNode::output_depth(CI::PremultiplyNode *this)
{
  if ((*(**(this + 5) + 320))(*(this + 5)) < 1)
  {
    return 0;
  }

  v2 = *(**(this + 5) + 320);

  return v2();
}

void non-virtual thunk toCI::PremultiplyNode::~PremultiplyNode(CI::PremultiplyNode *this)
{
  *(this - 6) = &unk_1F103A778;
  *(this + 2) = 0;
  *this = &unk_1F103A958;
  atomic_fetch_add(&dword_1ED7C47BC[44], 0xFFFFFFFF);
  CI::NodeWithChild::~NodeWithChild((this - 48));
}

{
  CI::PremultiplyNode::~PremultiplyNode((this - 48));
}

void *CI::InstanceCounted<(CI::Type)46>::~InstanceCounted(void *result)
{
  *result = &unk_1F103A958;
  atomic_fetch_add(&dword_1ED7C47BC[44], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)46>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103A958;
  atomic_fetch_add(&dword_1ED7C47BC[44], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

unint64_t CI::sw_ci_premul(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return vmulq_laneq_f32(*v7, *v7, 3).u64[0];
}

unint64_t CI::sw_ci_unpremul(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return vdivq_f32(*v7, vdupq_laneq_s32(vmaxnmq_f32(*v7, vdupq_n_s32(0x3727C5ACu)), 3)).u64[0];
}

void CI::ProcessorNode::ProcessorNode(CI::Node *a1)
{
  CI::Node::Node(a1);
}

{
  CI::Node::Node(a1);
}

{
  CI::Node::Node(a1);
}

void CI::ProcessorNode::~ProcessorNode(CI::ProcessorNode *this)
{
  *this = &unk_1F103A980;
  *(this + 6) = &unk_1F103AB48;
  v2 = *(this + 34);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 28);
  if (v4)
  {
    free(v4);
  }

  v5 = *(this + 29);
  if (v5)
  {
    free(v5);
  }

  CI::ProcessorNode::set_callback(this, 0);
  CI::ProcessorNode::set_callbackm(this, 0);
  v6 = *(this + 31);
  if (v6)
  {
    _Block_release(v6);
  }

  *(this + 6) = &unk_1F103B0D8;
  atomic_fetch_add(&dword_1ED7C47BC[45], 0xFFFFFFFF);

  CI::NodeWithChildren::~NodeWithChildren(this);
}

{
  CI::ProcessorNode::~ProcessorNode(this);

  JUMPOUT(0x19EAF5590);
}

void CI::NodeWithChildren::~NodeWithChildren(CI::NodeWithChildren *this)
{
  *this = &unk_1F103AF20;
  v2 = *(this + 5);
  if (v2)
  {
    CI::SerialObjectPtrArray::~SerialObjectPtrArray(v2);
    MEMORY[0x19EAF5590]();
  }

  *(this + 5) = 0;

  CI::Node::~Node(this);
}

void non-virtual thunk toCI::ProcessorNode::~ProcessorNode(CI::ProcessorNode *this)
{
  CI::ProcessorNode::~ProcessorNode((this - 48));
}

{
  CI::ProcessorNode::~ProcessorNode((this - 48));

  JUMPOUT(0x19EAF5590);
}

void CI::ProcessorNode::release_resources(CI::ProcessorNode *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 33);
  if (v3)
  {
    _Block_release(v3);
  }

  v6 = *(this + 31);
  v5 = (this + 248);
  v4 = v6;
  if (v6)
  {
    _Block_release(v4);
  }

  *v5 = 0;
  v5[1] = 0;
  v5[2] = 0;
}

uint64_t CI::ProcessorNode::print_for_graph_core(CFStringRef *a1, FILE *__stream, uint64_t a3, int a4)
{
  v4 = a4;
  if (a4)
  {
    v7 = 32;
  }

  else
  {
    v7 = 10;
  }

  fwrite("processor ", 0xAuLL, 1uLL, __stream);
  CI::fprintf(__stream, a1[34], v8);
  if ((v4 & 1) == 0 && CI_GRAPHVIZ_INTERNAL() && ((*a1)[1].info)(a1) >= 1)
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        v10 = " ";
      }

      else
      {
        v10 = "\n  ";
      }

      v11 = ((*a1)[1].data)(a1, v9);
      fprintf(__stream, "%s(%d)", v10, *(v11 + 36));
      v9 = (v9 + 1);
    }

    while (v9 < ((*a1)[1].info)(a1));
  }

  v12 = a1[35];
  if (v12)
  {
    fprintf(__stream, "%c%016llX", v7, v12);
  }

  if (*(a1 + 72))
  {
    result = fwrite(" outputFormat", 0xDuLL, 1uLL, __stream);
    if (*(a1 + 72) >= 1)
    {
      v14 = 0;
      do
      {
        v15 = CI::name_for_format(*(a1 + v14 + 46));
        if (v14)
        {
          v16 = 44;
        }

        else
        {
          v16 = 61;
        }

        result = fprintf(__stream, "%c%s", v16, v15);
        ++v14;
      }

      while (v14 < *(a1 + 72));
    }
  }

  else
  {
    result = *(a1 + 46);
    if (result)
    {
      v17 = CI::name_for_format(result);
      result = fprintf(__stream, "%coutputFormat=%s", v7, v17);
    }
  }

  if ((*(a1 + 293) & 1) == 0)
  {
    result = fprintf(__stream, "%cnoPartialOutput", v7);
  }

  if (*(a1 + 241) == 1)
  {
    result = fprintf(__stream, "%ccanReduceChannels", v7);
  }

  if (*(a1 + 240) == 1)
  {
    result = fprintf(__stream, "%csupportsCompressed", v7);
  }

  if (*(a1 + 292) == 1)
  {
    return fprintf(__stream, "%conlyMetal", v7);
  }

  return result;
}

uint64_t CI::ProcessorOutputNode::print_for_graph_core(uint64_t a1, FILE *a2, uint64_t a3, int a4)
{
  fprintf(a2, "processorOutput %d", *(a1 + 136));
  result = *(a1 + 84);
  if (result)
  {
    v8 = CI::name_for_format(result);
    v9 = 10;
    if (a4)
    {
      v9 = 32;
    }

    return fprintf(a2, "%coutputFormat=%s", v9, v8);
  }

  return result;
}

void CI::ProcessorNode::regions_of_child(CGRect a1@<0:D0, 8:D1, 16:D2, 24:D3>, int a2@<W1>, void *a3@<X8>)
{
  if ((a2 & 0x80000000) == 0 && !CGRectIsEmpty(a1))
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = MEMORY[0x1E695F050];

  std::vector<CGRect>::push_back[abi:nn200100](a3, v5);
}

uint64_t CI::ProcessorNode::output_depth(CI::ProcessorNode *this)
{
  v2 = this + 184;
  v1 = *(this + 46);
  if (v2 == -1 || v1 == 0)
  {
    return 0;
  }

  if (CI::format_is_deep(v1))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CI::ProcessorNode::alpha_one(CI::ProcessorNode *this)
{
  if (*(this + 204))
  {
    return 1;
  }

  if ((*(*this + 288))(this) & 1) != 0 || ((*(*this + 296))(this))
  {
    return 1;
  }

  result = *(this + 46);
  if (result)
  {
    return CI::format_has_alpha(result) ^ 1;
  }

  return result;
}

uint64_t CI::ProcessorNode::output_is_rg(CI::ProcessorNode *this)
{
  v2 = *(this + 46);
  if (!v2)
  {
    goto LABEL_12;
  }

  if (CI::format_is_rg(v2))
  {
    return 1;
  }

  if (!*(this + 46))
  {
LABEL_12:
    if (*(this + 241) == 1)
    {
      if ((*(*this + 48))(this, 0))
      {
        v4 = (*(*this + 48))(this, 0);
        v6.origin.x = (*(*v4 + 168))(v4);
        if (CGRectIsInfinite(v6))
        {
          v5 = *(*(*this + 48))(this, 0);
          if ((*(v5 + 288))())
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t CI::ProcessorNode::output_is_r(CI::ProcessorNode *this)
{
  v2 = *(this + 46);
  if (!v2)
  {
    goto LABEL_12;
  }

  if (CI::format_is_r(v2))
  {
    return 1;
  }

  if (!*(this + 46))
  {
LABEL_12:
    if (*(this + 241) == 1)
    {
      if ((*(*this + 48))(this, 0))
      {
        v4 = (*(*this + 48))(this, 0);
        v6.origin.x = (*(*v4 + 168))(v4);
        if (CGRectIsInfinite(v6))
        {
          v5 = *(*(*this + 48))(this, 0);
          if ((*(v5 + 296))())
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t CI::ProcessorNode::output_is_luma(CI::ProcessorNode *this)
{
  result = CI::format_is_luminance(*(this + 46));
  if (result)
  {
    v3 = *(*this + 280);

    return v3(this);
  }

  return result;
}

uint64_t CI::ProcessorNode::add_args_to_hash(CFStringRef *this, CI::XXHashHelper *a2, const __CFString *a3)
{
  CI::XXHashHelper::add(a2, this[34]);
  v6 = this[35];
  if (!v6)
  {
    v6 = a3;
  }

  __src = v6;
  return XXH64_update(a2, &__src, 8uLL);
}

void CI::ProcessorNode::append_to_tree(CI::SerialObjectPtrArray *a1, uint64_t a2, uint64_t a3, double *a4)
{
  if (*a1 < 1)
  {
LABEL_17:
    operator new();
  }

  v7 = 0;
  v8 = -80;
  while (1)
  {
    if (v7 > 9)
    {
      v9 = (*(a1 + 2) + v8);
    }

    else
    {
      v9 = (a1 + 8 * v7 + 24);
    }

    v10 = *v9;
    (*(a2 + 16))(__p, a2, 0, *a4, a4[1], a4[2], a4[3]);
    v11 = (*(*v10 + 16))(v10);
    if (v11 == 36)
    {
      v24 = v10[7];
      v25 = v10[8];
      v26 = v10[9];
      v27 = v10[10];
      CI::ProcessorNode::unionROI(__p);
      v37.origin.x = v28;
      v37.origin.y = v29;
      v37.size.width = v30;
      v37.size.height = v31;
      v35.origin.x = v24;
      v35.origin.y = v25;
      v35.size.width = v26;
      v35.size.height = v27;
      if (CGRectContainsRect(v35, v37))
      {
        goto LABEL_13;
      }
    }

    else if (v11 == 40)
    {
      v12 = (*(*v10 + 48))(v10, 0);
      if ((*(*v12 + 16))(v12) >= 47 && (*(*v12 + 16))(v12) <= 49)
      {
        v13 = (*(*v10 + 168))(v10);
        v15 = v14;
        v17 = v16;
        v19 = v18;
        CI::ProcessorNode::unionROI(__p);
        v36.origin.x = v20;
        v36.origin.y = v21;
        v36.size.width = v22;
        v36.size.height = v23;
        v34.origin.x = v13;
        v34.origin.y = v15;
        v34.size.width = v17;
        v34.size.height = v19;
        if (CGRectContainsRect(v34, v36))
        {
LABEL_13:
          v32 = (*(*v10 + 48))(v10, 0);
          CI::SerialObjectPtrArray::replace(a1, v32, v7);
        }
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    ++v7;
    v8 += 8;
    if (v7 >= *a1)
    {
      goto LABEL_17;
    }
  }
}

void CI::ProcessorNode::append_to_tree(CI::SerialObjectPtrArray *a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (*a1 < 1)
  {
LABEL_17:
    operator new();
  }

  v16 = 0;
  v17 = -80;
  while (1)
  {
    if (v16 > 9)
    {
      v18 = (*(a1 + 2) + v17);
    }

    else
    {
      v18 = (a1 + 8 * v16 + 24);
    }

    v19 = *v18;
    (*(a14 + 16))(v42, a14, 0, *a3, a3[1], a3[2], a3[3]);
    v20 = (*(*v19 + 16))(v19);
    if (v20 == 36)
    {
      v33 = v19[7];
      v34 = v19[8];
      v35 = v19[9];
      v36 = v19[10];
      CI::ProcessorNode::unionROI(v42);
      v46.origin.x = v37;
      v46.origin.y = v38;
      v46.size.width = v39;
      v46.size.height = v40;
      v44.origin.x = v33;
      v44.origin.y = v34;
      v44.size.width = v35;
      v44.size.height = v36;
      if (CGRectContainsRect(v44, v46))
      {
        goto LABEL_13;
      }
    }

    else if (v20 == 40)
    {
      v21 = (*(*v19 + 48))(v19, 0);
      if ((*(*v21 + 16))(v21) >= 47 && (*(*v21 + 16))(v21) <= 49)
      {
        v22 = (*(*v19 + 168))(v19);
        v24 = v23;
        v26 = v25;
        v28 = v27;
        CI::ProcessorNode::unionROI(v42);
        v45.origin.x = v29;
        v45.origin.y = v30;
        v45.size.width = v31;
        v45.size.height = v32;
        v43.origin.x = v22;
        v43.origin.y = v24;
        v43.size.width = v26;
        v43.size.height = v28;
        if (CGRectContainsRect(v43, v45))
        {
LABEL_13:
          v41 = (*(*v19 + 48))(v19, 0);
          CI::SerialObjectPtrArray::replace(a1, v41, v16);
        }
      }
    }

    if (v42[0])
    {
      v42[1] = v42[0];
      operator delete(v42[0]);
    }

    ++v16;
    v17 += 8;
    if (v16 >= *a1)
    {
      goto LABEL_17;
    }
  }
}

void CI::ProcessorNode::render(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void *a5, double *a6, int a7)
{
  v95 = *MEMORY[0x1E69E9840];
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v10 = ci_signpost_log_render();
    v11 = *(a1 + 36) | ((*(*a3 + 280))(a3) << 32);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v12 = *(a1 + 272);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v12;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v11, "processor_render", "%{public}@", &buf, 0xCu);
    }
  }

  v13 = (*(*a3 + 280))(a3);
  TimerBase::TimerBase(v82, v13, *(a1 + 36), "processor_render", 15);
  v15 = *a4;
  v14 = a4[1];
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v63 = v14;
  v16 = (v14 - v15) >> 3;
  if (v14 != v15)
  {
    std::vector<__IOSurface *>::__vallocate[abi:nn200100](&v79, (v14 - v15) >> 3);
  }

  v76 = 0;
  v77 = 0;
  v78 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  if (CI_VERBOSE_SIGNPOSTS())
  {
    v17 = ci_signpost_log_render();
    v18 = *(a1 + 36) | ((*(*a3 + 280))(a3) << 32);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v19 = *(a1 + 272);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v19;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v18, "processor_prepinputs", "%{public}@", &buf, 0xCu);
    }
  }

  v20 = (*(*a3 + 280))(a3);
  TimerBase::TimerBase(&buf, v20, *(a1 + 36), "processor_prepinputs", 0);
  if (v63 != v15)
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = (*(*a1 + 48))(a1, v22);
      v24 = (*(**(*a4 + 8 * v21) + 32))(*(*a4 + 8 * v21));
      v25 = v70 + 32 * v21;
      v26 = v24[1];
      *v25 = *v24;
      v25[1] = v26;
      if ((***(*a4 + 8 * v21))() || ((*(**(*a4 + 8 * v21) + 24))(v93), v93[0]))
      {
        v27 = (***(*a4 + 8 * v21))(*(*a4 + 8 * v21));
        *(v79 + v21) = v27;
        RetainSurfaceFromCache(v27);
        v28 = v76 + 8 * v21;
        (*(**(*a4 + 8 * v21) + 24))(v93);
        std::vector<void const*>::insert(&v76, v28, v93);
        if (!v23)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v96 = *(*(**(*a4 + 8 * v21) + 32))(*(*a4 + 8 * v21));
        if (CGRectIsEmpty(v96))
        {
          *(v79 + v21) = 0;
          if (!v23)
          {
LABEL_19:
            v29 = 0;
            goto LABEL_20;
          }
        }

        else
        {
          for (i = (*(*v23 + 16))(v23); i == 45; i = (*(*v23 + 16))(v23))
          {
            v23 = (*(*v23 + 48))(v23, 0);
          }

          v31 = (*(**(*a4 + 8 * v21) + 32))(*(*a4 + 8 * v21));
          v93[0] = 0;
          v93[1] = 0;
          v32 = (*(*v23 + 16))(v23);
          if (v32 > 53)
          {
            if (v32 != 54)
            {
              if (v32 == 56)
              {
                std::vector<void const*>::insert(&v76, v76 + 8 * v21, v23 + 48);
              }

              goto LABEL_16;
            }

            CI::SurfaceNode::surfaceForROI(v23, a3, v93, v92, *v31, v31[1], v31[2], v31[3]);
            goto LABEL_34;
          }

          if (v32 == 35)
          {
            CI::CGNode::surfaceForROI(v23, a3, v31, v93, v92);
LABEL_34:
            v34 = v92[0];
            v92[0] = 0;
            *(v79 + v21) = v34;
            v35 = v92[0];
            v92[0] = 0;
            if (v35)
            {
              CFRelease(v35);
            }

            goto LABEL_16;
          }

          if (v32 == 52)
          {
            v33 = CI::ProviderNode::surfaceForROI(v23, a3, v31, v93);
            *(v79 + v21) = v33;
          }
        }
      }

LABEL_16:
      v29 = (*(*v23 + 400))(v23);
LABEL_20:
      *(v73 + v21) = v29;
      v21 = (v22 + 1);
      v22 = v21;
    }

    while (v16 > v21);
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v36 = ci_signpost_log_render();
    v37 = *(&buf + 1);
    if ((*(&buf + 1) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v38 = v36;
      if (os_signpost_enabled(v36))
      {
        LOWORD(v93[0]) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v38, OS_SIGNPOST_INTERVAL_END, v37, "processor_prepinputs", &unk_19CFBCBAE, v93, 2u);
      }
    }
  }

  TimerBase::~TimerBase(&buf);
  v39 = *(a1 + 232);
  if (v39)
  {
    v40 = (*(*a1 + 40))(a1);
    v68 = 0;
    v69 = 0;
    v67 = 0;
    std::vector<BOOL>::__init_with_size[abi:nn200100]<BOOL *,BOOL *>(&v67, v39, v39 + v40, v40);
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
  }

  v41 = *(a1 + 256);
  if (v41)
  {
    if (*(a1 + 288) != 1)
    {
      goto LABEL_55;
    }

    v42 = (****a5)(**a5);
    (*(***a5 + 24))(&buf);
    v43 = buf;
    v44 = (*(*a1 + 400))(a1);
    (*(v41 + 16))(v41, &v79, &v76, &v73, &v70, &v67, v42, v43, *a6, a6[1], a6[2], a6[3], v44, *(a1 + 208), a3, a2);
  }

  if (*(a1 + 264))
  {
    *v93 = 0u;
    v94 = 0u;
    memset(v92, 0, sizeof(v92));
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    buf = 0u;
    v85 = 0u;
    std::vector<CI::intermediate_t const*>::vector[abi:nn200100](&__p, a5);
    v45 = __p;
    if (v66 != __p)
    {
      v46 = 0;
      p_buf = &buf;
      do
      {
        v93[v46] = (**v45[v46])(v45[v46]);
        (*(**(__p + v46) + 24))(&v64);
        v92[v46] = v64;
        v48 = (*(**(__p + v46) + 32))(*(__p + v46));
        v49 = v48[1];
        *p_buf = *v48;
        p_buf[1] = v49;
        p_buf += 2;
        ++v46;
        v45 = __p;
      }

      while (v46 < (v66 - __p) >> 3);
    }

    v50 = *(a1 + 264);
    v51 = *(a1 + 288);
    v52 = (*(*a1 + 400))(a1);
    (*(v50 + 16))(v50, &v79, &v76, &v73, &v70, &v67, v51, v93, v92, v52, &buf, a1 + 208, a7, a3, a2);
    if (__p)
    {
      v66 = __p;
      operator delete(__p);
    }
  }

  if (v63 != v15)
  {
    v53 = 0;
    v54 = 1;
    do
    {
      ReturnSurfaceToCache(*(v79 + v53));
      v53 = v54;
    }

    while (v16 > v54++);
  }

LABEL_55:
  if (v67)
  {
    operator delete(v67);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (CI_VERBOSE_SIGNPOSTS())
  {
    v56 = ci_signpost_log_render();
    v57 = v83;
    if (v83 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v58 = v56;
      if (os_signpost_enabled(v56))
      {
        LOWORD(buf) = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v58, OS_SIGNPOST_INTERVAL_END, v57, "processor_render", &unk_19CFBCBAE, &buf, 2u);
      }
    }
  }

  TimerBase::~TimerBase(v82);
}

char *std::vector<void const*>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<void const*>::emplace_back<void const*>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

char *std::vector<void const*>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<void const*>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<void const*>::emplace_back<void const*>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}