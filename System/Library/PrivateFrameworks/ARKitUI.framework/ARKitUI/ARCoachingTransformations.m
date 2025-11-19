@interface ARCoachingTransformations
+ (__n128)translate:;
+ (__n64)rotate:(float)a1 axis:(float32x4_t)a2;
+ (double)lookAt:(float32x4_t)a1 center:(float32x4_t)a2 up:(float32x4_t)a3;
+ (float)perspective_fov:(float)a3 aspect:near:far:;
+ (float64x2_t)fromMatrix:(int32x4_t)a3@<Q1>;
@end

@implementation ARCoachingTransformations

+ (__n128)translate:
{
  result = *MEMORY[0x277D860B8];
  v1 = *(MEMORY[0x277D860B8] + 16);
  v2 = *(MEMORY[0x277D860B8] + 32);
  return result;
}

+ (__n64)rotate:(float)a1 axis:(float32x4_t)a2
{
  v2 = __sincospif_stret(a1 * 0.0055556);
  v3 = vmulq_f32(a2, a2);
  *&v4 = v3.f32[2] + vaddv_f32(*v3.f32);
  *v3.f32 = vrsqrte_f32(v4);
  *v3.f32 = vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32)));
  _Q3 = vmulq_n_f32(a2, vmul_f32(*v3.f32, vrsqrts_f32(v4, vmul_f32(*v3.f32, *v3.f32))).f32[0]);
  _Q5 = vmulq_n_f32(_Q3, v2.__sinval);
  _Q6 = vmulq_n_f32(_Q3, 1.0 - v2.__cosval);
  v8 = v2.__cosval + (_Q6.f32[0] * _Q3.f32[0]);
  _S4 = _Q3.i32[1];
  _Q3.i32[0] = _Q3.i32[2];
  result.n64_f32[0] = v8;
  result.n64_f32[1] = _Q5.f32[2] + (_Q6.f32[0] * _Q3.f32[1]);
  __asm
  {
    FMLA            S16, S4, V6.S[1]
    FMLA            S5, S3, V6.S[1]
    FMLA            S18, S3, V6.S[1]
    FMLA            S1, S3, V6.S[2]
  }

  return result;
}

+ (float)perspective_fov:(float)a3 aspect:near:far:
{
  *&a2 = *&a2 * 0.5;
  [a1 degreesToRadians:a2];
  return (1.0 / tanf(v4)) / a3;
}

+ (double)lookAt:(float32x4_t)a1 center:(float32x4_t)a2 up:(float32x4_t)a3
{
  v3 = vsubq_f32(a2, a1);
  v4 = vmulq_f32(v3, v3);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(a3)), v6, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmulq_f32(v8, v8);
  *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v12.i32[1] = vdupq_laneq_s32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v6)), v12, v7), 2).u32[0];
  return *v12.i64;
}

+ (float64x2_t)fromMatrix:(int32x4_t)a3@<Q1>
{
  v4 = a4.n128_f32[2] + (*a2.i32 + *&a3.i32[1]);
  if (v4 >= 0.0)
  {
    v12 = sqrtf(v4 + 1.0);
    v13 = v12 + v12;
    v14 = vrecpe_f32(COERCE_UNSIGNED_INT(v12 + v12));
    v15 = vmul_f32(v14, vrecps_f32(COERCE_UNSIGNED_INT(v12 + v12), v14));
    v15.i32[0] = vmul_f32(v15, vrecps_f32(COERCE_UNSIGNED_INT(v12 + v12), v15)).u32[0];
    v26 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a3, a3, 8uLL), a4.n128_u64[0]), vext_s8(a4.n128_u64[0], *&vextq_s8(a2, a2, 8uLL), 4uLL)), v15.f32[0]);
    v16.f32[0] = *&a2.i32[1] - *a3.i32;
    v16.f32[1] = v13;
    v15.i32[1] = 0.25;
    v28 = vmul_f32(v16, v15);
  }

  else if (*a2.i32 < *&a3.i32[1] || *a2.i32 < a4.n128_f32[2])
  {
    v6 = 1.0 - *a2.i32;
    if (*&a3.i32[1] >= a4.n128_f32[2])
    {
      v29 = sqrtf(*&a3.i32[1] + (v6 - a4.n128_f32[2]));
      *&v30 = v29 + v29;
      v31 = vrecpe_f32(v30);
      v32 = vmul_f32(v31, vrecps_f32(v30, v31));
      v33.i32[0] = vmul_f32(v32, vrecps_f32(v30, v32)).u32[0];
      v32.f32[0] = *&a2.i32[1] + *a3.i32;
      v32.i32[1] = v30;
      v28 = vmul_n_f32(vext_s8(vadd_f32(a4.n128_u64[0], vdup_laneq_s32(a3, 2)), vsub_f32(a4.n128_u64[0], *&vextq_s8(a2, a2, 8uLL)), 4uLL), v33.f32[0]);
      v33.i32[1] = 0.25;
      v26 = vmul_f32(v32, v33);
    }

    else
    {
      v7 = sqrtf(a4.n128_f32[2] + (v6 - *&a3.i32[1]));
      v8.f32[0] = v7 + v7;
      v9 = vrecpe_f32(COERCE_UNSIGNED_INT(v7 + v7));
      v10 = vmul_f32(v9, vrecps_f32(COERCE_UNSIGNED_INT(v7 + v7), v9));
      v10.i32[0] = vmul_f32(v10, vrecps_f32(COERCE_UNSIGNED_INT(v7 + v7), v10)).u32[0];
      v26 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a2, a2, 8uLL), *&vextq_s8(a3, a3, 8uLL)), a4.n128_u64[0]), v10.f32[0]);
      v8.f32[1] = *&a2.i32[1] - *a3.i32;
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v10.i32[0];
      v28 = vmul_f32(v8, _D0);
    }
  }

  else
  {
    v17 = sqrtf(*a2.i32 + ((1.0 - *&a3.i32[1]) - a4.n128_f32[2]));
    v18.f32[0] = v17 + v17;
    v19 = vrecpe_f32(v18.u32[0]);
    v20 = vmul_f32(v19, vrecps_f32(v18.u32[0], v19));
    LODWORD(v21) = vmul_f32(v20, vrecps_f32(v18.u32[0], v20)).u32[0];
    v18.f32[1] = *&a2.i32[1] + *a3.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v21;
    v26 = vmul_f32(v18, _D5);
    v27.i32[0] = vadd_f32(*&vextq_s8(a2, a2, 8uLL), a4.n128_u64[0]).u32[0];
    v27.i32[1] = vsub_f32(vdup_laneq_s32(a3, 2), *&a4).i32[1];
    v28 = vmul_n_f32(v27, v21);
  }

  result = vcvtq_f64_f32(v28);
  *a1 = vcvtq_f64_f32(v26);
  a1[1] = result;
  return result;
}

@end