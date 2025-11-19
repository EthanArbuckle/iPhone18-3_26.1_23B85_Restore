float sub_239EE9458(int a1, int a2, int a3)
{
  v3 = 1.0 / a3;
  v4 = 0.0;
  if (a3 >= 2)
  {
    v4 = (2.0 - (v3 * 2.0)) / (a3 + -1.0);
  }

  v5 = ((((v3 + -1.0) + (v4 * a1)) * ((v3 + -1.0) + (v4 * a1))) + 1.0) + (((v3 + -1.0) + (v4 * a2)) * ((v3 + -1.0) + (v4 * a2)));
  return 4.0 / (sqrtf(v5) * v5);
}

uint64_t sub_239EE94B8(uint64_t a1, void *a2, CGColor *a3)
{
  v5 = a2;
  *a1 = &unk_284D17048;
  *(a1 + 8) = 0;
  v6 = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = 4;
  *(a1 + 8) = CGColorCreateCopy(a3);

  return a1;
}

uint64_t sub_239EE9548(uint64_t a1)
{
  *a1 = &unk_284D17048;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  v3 = *(a1 + 8);
  if (v3)
  {
    CGColorRelease(v3);
  }

  return a1;
}

void sub_239EE95B0(uint64_t a1)
{
  sub_239EE9548(a1);

  JUMPOUT(0x23EE802C0);
}

CGColorRef sub_239EE95E8(uint64_t a1, CGColorRef color)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    CGColorRelease(v4);
  }

  result = CGColorCreateCopy(color);
  *(a1 + 8) = result;
  return result;
}

float32x2_t sub_239EE962C(uint64_t a1)
{
  Components = CGColorGetComponents(*(a1 + 8));
  result = vcvt_f32_f64(*Components);
  v3 = Components[1].f64[0];
  return result;
}

double sub_239EE966C(uint64_t a1, void *a2, CGColor *a3)
{
  v3 = sub_239EE94B8(a1, a2, a3);
  *v3 = &unk_284D17128;
  *(v3 + 28) = xmmword_239F9C980;
  result = 0.0000305175854;
  *(v3 + 44) = 0x3F00000040000000;
  return result;
}

uint64_t sub_239EE96B8(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 48) == 0.0)
  {
    v8 = *(a1 + 16);

    return objc_msgSend_translation(v8, a2, a3);
  }

  else
  {
    arc4random();
    arc4random();
    arc4random();
    v4 = *(a1 + 48);
    return objc_msgSend_translation(*(a1 + 16), v5, v6);
  }
}

double sub_239EE97A8(uint64_t a1, const char *a2, uint64_t a3, float a4)
{
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), a2, a3, 0.0);
  v7 = vmlaq_f32(vmulq_f32(v5, 0), 0, v6);
  __asm { FMOV            V1.4S, #-1.0 }

  v15 = vmlaq_f32(vmlaq_f32(v7, _Q1, v13), 0, v14);
  v16 = vmulq_f32(v15, v15);
  v13.f32[0] = vaddv_f32(*v16.f32) + v16.f32[2];
  *v16.f32 = vrsqrte_f32(v13.u32[0]);
  *v16.f32 = vmul_f32(vrsqrts_f32(v13.u32[0], vmul_f32(*v16.f32, *v16.f32)), *v16.f32);
  v28 = vmulq_f32(vmulq_n_f32(vdupq_n_s32(0x42C80000u), vmul_f32(*v16.f32, vrsqrts_f32(v13.u32[0], vmul_f32(*v16.f32, *v16.f32))).f32[0]), v15);
  v17 = arc4random();
  *v18.f32 = vmla_f32(0xBF000000BF000000, 0x3000000030000000, vcvt_f32_u32(__PAIR64__(arc4random(), v17)));
  v29 = v18;
  v19 = arc4random();
  v20 = v29;
  v20.f32[2] = (v19 * 4.6566e-10) + -0.5;
  v30 = v20;
  v21 = vmulq_f32(v20, v20);
  v20.f32[0] = vaddv_f32(*v21.f32) + v21.f32[2];
  *v21.f32 = vrsqrte_f32(v20.u32[0]);
  *v21.f32 = vmul_f32(vrsqrts_f32(v20.u32[0], vmul_f32(*v21.f32, *v21.f32)), *v21.f32);
  *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(v20.u32[0], vmul_f32(*v21.f32, *v21.f32)));
  v27 = v21;
  v22.f32[0] = sinf(a4);
  v23 = vmlaq_n_f32(v28, v30, vmulq_f32(v27, v22).f32[0]);
  v24 = vmulq_f32(v23, v23);
  *&v25 = vaddv_f32(*v24.f32) + v24.f32[2];
  *v24.f32 = vrsqrte_f32(v25);
  *v24.f32 = vmul_f32(vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)), *v24.f32);
  *&result = vmulq_n_f32(v23, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]).u64[0];
  return result;
}

float sub_239EE9918(uint64_t a1, const char *a2, uint64_t a3, float32x4_t a4)
{
  v4 = *(a1 + 24);
  if (v4 != 3 && v4 != 0)
  {
    return 1.0;
  }

  objc_msgSend_translation(*(a1 + 16), a2, a3);
  v32 = v7;
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), v8, v9, 0.0);
  v12 = vmlaq_f32(vmulq_f32(v10, 0), 0, v11);
  __asm { FMOV            V0.4S, #-1.0 }

  v19 = vmlaq_f32(vmlaq_f32(v12, _Q0, v17), 0, v18);
  v20 = vmulq_f32(v19, v19);
  v11.f32[0] = vaddv_f32(*v20.f32) + v20.f32[2];
  *v20.f32 = vrsqrte_f32(v11.u32[0]);
  *v20.f32 = vmul_f32(vrsqrts_f32(v11.u32[0], vmul_f32(*v20.f32, *v20.f32)), *v20.f32);
  LODWORD(v21) = vmul_f32(*v20.f32, vrsqrts_f32(v11.u32[0], vmul_f32(*v20.f32, *v20.f32))).u32[0];
  v22 = *(a1 + 40);
  v23 = vsubq_f32(a4, v32);
  v35 = v23;
  if (v22 == 0.0)
  {
    v26 = 1.0;
  }

  else
  {
    v24 = vmulq_f32(v23, v23);
    v31 = v21;
    v33 = v19;
    v25 = powf(fminf(fmaxf((v22 - sqrtf(vaddv_f32(*v24.f32) + v24.f32[2])) / (v22 - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
    v21 = v31;
    v19 = v33;
    v26 = v25;
  }

  if (!*(a1 + 24))
  {
    v27 = vmulq_f32(v35, v35);
    *&v28 = vaddv_f32(*v27.f32) + v27.f32[2];
    *v27.f32 = vrsqrte_f32(v28);
    *v27.f32 = vmul_f32(vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)), *v27.f32);
    v29 = vmulq_n_f32(vmulq_f32(vmulq_n_f32(v35, v21), v19), vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
    v36 = vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*(a1 + 28)), vdupq_n_s64(0x3F91DF46A2529D39uLL)));
    return fminf(fmaxf((v36.f32[1] - acosf(vaddv_f32(*v29.f32) + v29.f32[2])) / (v36.f32[1] - v36.f32[0]), 0.0), 1.0) * v26;
  }

  return v26;
}

CGColorRef sub_239EE9AE0(CGColorRef *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = (*(*a1 + 6))(a1);
  Components = CGColorGetComponents(a1[1]);
  v9 = vmulq_n_f64(*Components, v2);
  v4 = *(Components + 3);
  v10 = Components[2] * v2;
  v11 = v4;
  ColorSpace = CGColorGetColorSpace(a1[1]);
  v6 = CGColorCreate(ColorSpace, v9.f64);
  CFRelease(ColorSpace);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

CGColorRef sub_239EE9BAC(CGColorRef *a1, CGColorSpace *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = (*(*a1 + 6))(a1);
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(a2, kCGRenderingIntentAbsoluteColorimetric, a1[1], 0);
  Components = CGColorGetComponents(CopyByMatchingToColorSpace);
  v11 = vmulq_n_f64(*Components, v4);
  v7 = *(Components + 3);
  v12 = Components[2] * v4;
  v13 = v7;
  v8 = CGColorCreate(a2, v11.f64);
  CFRelease(CopyByMatchingToColorSpace);
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

double sub_239EE9C88(uint64_t a1, float32x4_t a2, float32x4_t a3)
{
  v4 = (*(*a1 + 48))(a1);
  v36 = *&v4;
  objc_msgSend_translation(*(a1 + 16), v5, v6);
  v33 = v7;
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), v8, v9, 0.0);
  v14 = *(a1 + 24);
  if (v14 != 2)
  {
    if (v14 == 1)
    {
      v15 = vmlaq_f32(vmulq_f32(v10, 0), 0, v11);
      __asm { FMOV            V1.4S, #-1.0 }

      v21 = vmlaq_f32(vmlaq_f32(v15, _Q1, v12), 0, v13);
      v22 = vmulq_f32(v21, v21);
      *&v23 = vaddv_f32(*v22.f32) + v22.f32[2];
      *v22.f32 = vrsqrte_f32(v23);
      *v22.f32 = vmul_f32(vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32)), *v22.f32);
      v24 = vmulq_f32(v21, vnegq_f32(vdupq_lane_s32(vmul_f32(*v22.f32, vrsqrts_f32(v23, vmul_f32(*v22.f32, *v22.f32))), 0)));
    }

    else
    {
      v25 = vsubq_f32(v33, a2);
      v26 = vmulq_f32(v25, v25);
      *&v27 = vaddv_f32(*v26.f32) + v26.f32[2];
      *v26.f32 = vrsqrte_f32(v27);
      *v26.f32 = vmul_f32(vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32)), *v26.f32);
      v24 = vmulq_n_f32(v25, vmul_f32(*v26.f32, vrsqrts_f32(v27, vmul_f32(*v26.f32, *v26.f32))).f32[0]);
    }

    v28 = vmulq_f32(v24, a3);
    v36 = fmaxf(vaddv_f32(*v28.f32) + v28.f32[2], 0.0) * v36;
  }

  Components = CGColorGetComponents(*(a1 + 8));
  v30 = *Components;
  *v30.f32 = vcvt_f32_f64(*Components);
  v31 = Components[1].f64[0];
  v30.f32[2] = v31;
  *&result = vmulq_n_f32(v30, v36).u64[0];
  return result;
}

double sub_239EE9DF4(uint64_t a1, void *a2, CGColor *a3)
{
  v3 = sub_239EE94B8(a1, a2, a3);
  *(v3 + 28) = xmmword_239F9C980;
  *(v3 + 44) = 0x3F00000040000000;
  *v3 = &unk_284D171F8;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 56) = result;
  *(v3 + 64) = 1065353216;
  return result;
}

float sub_239EE9E50(uint64_t a1, const char *a2, uint64_t a3, float32x4_t a4)
{
  objc_msgSend_translation(*(a1 + 16), a2, a3);
  v8 = *(a1 + 40);
  if (v8 == 0.0)
  {
    v11 = 1.0;
  }

  else
  {
    v9 = vsubq_f32(a4, v7);
    v10 = vmulq_f32(v9, v9);
    v11 = powf(fminf(fmaxf((v8 - sqrtf(vaddv_f32(*v10.f32) + v10.f32[2])) / (v8 - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
  }

  __p = 0;
  v66 = 0;
  v12 = 0.0;
  v67 = 0;
  v13 = 0.0;
  do
  {
    v14 = *(a1 + 48);
    v15 = *(a1 + 64);
    v62.i64[0] = *(a1 + 56);
    objc_msgSend_matrix(*(a1 + 16), v5, v6);
    v57 = v16;
    v58 = v17;
    v59 = v18;
    v56 = v19;
    v22 = __sincosf_stret(v12);
    *v21.i32 = v22.__cosval;
    *v20.i32 = v22.__sinval;
    v55 = v20;
    v60 = v21;
    *v23.i32 = powf(fabsf(v22.__sinval), 2.0 / v62.f32[1]) * v14;
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v55.i32[0] = vbslq_s8(v24, v23, v55).u32[0];
    *v25.i32 = (v15 * v14) * powf(fabsf(*v60.i32), 2.0 / v62.f32[0]);
    v26.i64[0] = 0x8000000080000000;
    v26.i64[1] = 0x8000000080000000;
    v27 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vsubq_f32(v56, a4), v57, *vbslq_s8(v26, v25, v60).i32), v58, *v55.i32), 0, v59);
    v28 = vmulq_f32(v27, v27);
    *v26.i32 = vaddv_f32(*v28.f32) + v28.f32[2];
    *v28.f32 = vrsqrte_f32(v26.u32[0]);
    *v28.f32 = vmul_f32(vrsqrts_f32(v26.u32[0], vmul_f32(*v28.f32, *v28.f32)), *v28.f32);
    v29 = vmulq_n_f32(v27, vmul_f32(*v28.f32, vrsqrts_f32(v26.u32[0], vmul_f32(*v28.f32, *v28.f32))).f32[0]);
    v30 = v66;
    if (v66 >= v67)
    {
      v32 = (v66 - __p) >> 4;
      if ((v32 + 1) >> 60)
      {
        sub_239E797B4();
      }

      v33 = (v67 - __p) >> 3;
      if (v33 <= v32 + 1)
      {
        v33 = v32 + 1;
      }

      if (v67 - __p >= 0x7FFFFFFFFFFFFFF0)
      {
        v34 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v34 = v33;
      }

      if (v34)
      {
        sub_239E91AC8(&__p, v34);
      }

      *(16 * v32) = v29;
      v31 = (16 * v32 + 16);
      v35 = (16 * v32 - (v66 - __p));
      memcpy(v35, __p, v66 - __p);
      v36 = __p;
      __p = v35;
      v66 = v31;
      v67 = 0;
      if (v36)
      {
        operator delete(v36);
      }
    }

    else
    {
      *v66 = v29;
      v31 = v30 + 16;
    }

    v66 = v31;
    v12 = v13 + 0.104719755;
    v13 = v12;
  }

  while (v12 < 6.28318531);
  v37 = v31 - __p;
  if (v31 != __p)
  {
    v38 = v37 >> 4;
    if ((v37 >> 4) <= 1)
    {
      v39 = 1;
    }

    else
    {
      v39 = v37 >> 4;
    }

    v40 = 0uLL;
    v41 = 1;
    v42 = __p;
    do
    {
      v63 = v40;
      v43 = *v42++;
      v61 = *(__p + v41 % v38);
      v44 = vmulq_f32(v61, v43);
      v45.f32[0] = acosf(vaddv_f32(*v44.f32) + v44.f32[2]);
      v46 = vmlaq_f32(vnegq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v61, v61), v61, 0xCuLL), v43)), vextq_s8(vuzp1q_s32(v43, v43), v43, 0xCuLL), v61);
      v47 = vmulq_f32(v46, v46);
      *&v48 = (v47.f32[2] + v47.f32[0]) + v47.f32[1];
      v49 = vrsqrte_f32(v48);
      v50 = vmul_f32(vrsqrts_f32(v48, vmul_f32(v49, v49)), v49);
      v51 = vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL);
      *v46.i8 = vmul_f32(v50, vrsqrts_f32(v48, vmul_f32(v50, v50)));
      v40 = vmlaq_n_f32(v63, v51, vmulq_f32(v45, v46).f32[0]);
      ++v41;
      --v39;
    }

    while (v39);
    goto LABEL_26;
  }

  v40 = 0uLL;
  if (__p)
  {
LABEL_26:
    v64 = v40;
    v66 = __p;
    operator delete(__p);
    v40 = v64;
  }

  v52 = vmulq_f32(v40, v40);
  return sqrtf(vaddv_f32(*v52.f32) + v52.f32[2]) * v11;
}

void sub_239EEA1E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EEA208(uint64_t a1, uint64_t a2, void *a3, CGColor *a4)
{
  v6 = sub_239EE94B8(a1, a3, a4);
  *(v6 + 28) = xmmword_239F9C980;
  *(v6 + 44) = 0x3F00000040000000;
  *v6 = &unk_284D17240;
  sub_239EEAC28(v6 + 56, a2);
  *(a1 + 152) = 1056964608;
  return a1;
}

uint64_t sub_239EEA298(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 152) == 0.0)
  {
    v8 = *(a1 + 16);

    return objc_msgSend_translation(v8, a2, a3);
  }

  else
  {
    arc4random();
    arc4random();
    arc4random();
    v4 = *(a1 + 152);
    return objc_msgSend_translation(*(a1 + 16), v5, v6);
  }
}

unint64_t sub_239EEA388(uint64_t a1, float a2)
{
  v2 = *a1;
  v3 = **a1;
  if (v3 <= a2)
  {
    v6 = *(a1 + 8);
    v7 = *(v6 - 4);
    v8 = (v6 - v2) >> 2;
    v4 = v8 - 1;
    if (v7 >= a2)
    {
      if (v8 < 3)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        do
        {
          if (v2[(v4 + v9) / 2] >= a2)
          {
            v4 = (v4 + v9) / 2;
          }

          else
          {
            v9 = (v4 + v9) / 2;
          }
        }

        while (v4 - v9 > 1);
        v3 = v2[v9];
      }

      v5 = COERCE_UNSIGNED_INT((v2[v4] - a2) / (v2[v4] - v3)) << 32;
      v4 = v9;
    }

    else
    {
      v5 = 0x3F80000000000000;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0x3F80000000000000;
  }

  return v5 | v4;
}

float sub_239EEA45C(uint64_t a1, const char *a2, uint64_t a3, float32x4_t a4)
{
  objc_msgSend_translation(*(a1 + 16), a2, a3);
  v60 = v5;
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), v6, v7, 0.0);
  v10 = vmlaq_f32(vmulq_f32(v8, 0), 0, v9);
  __asm { FMOV            V1.4S, #-1.0 }

  v17 = vmlaq_f32(vmlaq_f32(v10, _Q1, v15), 0, v16);
  v18 = vmulq_f32(v17, v17);
  v15.f32[0] = vaddv_f32(*v18.f32) + v18.f32[2];
  *v18.f32 = vrsqrte_f32(v15.u32[0]);
  *v18.f32 = vmul_f32(vrsqrts_f32(v15.u32[0], vmul_f32(*v18.f32, *v18.f32)), *v18.f32);
  v59 = vmulq_n_f32(v17, vmul_f32(*v18.f32, vrsqrts_f32(v15.u32[0], vmul_f32(*v18.f32, *v18.f32))).f32[0]);
  objc_msgSend_rotationMatrixAtTime_(*(a1 + 16), v19, v20, 0.0);
  v25 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, 0, v21), 0, v23), 0, v24);
  v26 = vmulq_f32(v25, v25);
  v23.f32[0] = vaddv_f32(*v26.f32) + v26.f32[2];
  *v26.f32 = vrsqrte_f32(v23.u32[0]);
  *v24.f32 = vmul_f32(vrsqrts_f32(v23.u32[0], vmul_f32(*v26.f32, *v26.f32)), *v26.f32);
  v27 = vsubq_f32(a4, v60);
  v28 = vmulq_f32(v27, v27);
  *&v29 = vaddv_f32(*v28.f32) + v28.f32[2];
  *v28.f32 = vrsqrte_f32(v29);
  *v28.f32 = vmul_f32(vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)), *v28.f32);
  v30 = vmulq_n_f32(v27, vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
  v31 = vmulq_f32(v30, v59);
  v31.f32[0] = vaddv_f32(*v31.f32) + v31.f32[2];
  v32 = vmlsq_lane_f32(v30, v59, *v31.f32, 0);
  v33 = vmulq_f32(v32, v32);
  *&v34 = vaddv_f32(*v33.f32) + v33.f32[2];
  v23.i32[0] = vmul_f32(*v24.f32, vrsqrts_f32(v23.u32[0], vmul_f32(*v24.f32, *v24.f32))).u32[0];
  *v24.f32 = vrsqrte_f32(v34);
  *v24.f32 = vmul_f32(vrsqrts_f32(v34, vmul_f32(*v24.f32, *v24.f32)), *v24.f32);
  v35 = vmulq_f32(vmulq_n_f32(vmulq_n_f32(v25, v23.f32[0]), vmul_f32(*v24.f32, vrsqrts_f32(v34, vmul_f32(*v24.f32, *v24.f32))).f32[0]), v32);
  v36 = fminf(fmaxf(vaddv_f32(*v35.f32) + v35.f32[2], -1.0), 1.0);
  v37 = acosf(v31.f32[0]) * 57.2957795;
  v38 = acosf(v36);
  v39 = *(a1 + 64);
  v40 = 0.0;
  _ZF = v37 < 0.0 && *v39 == 0.0;
  v42 = -v37;
  if (!_ZF)
  {
    v42 = v37;
  }

  v44 = sub_239EEA388(a1 + 64, v42);
  if (v44 != -1)
  {
    v45 = v43;
    v47 = *(a1 + 88);
    v46 = *(a1 + 96);
    if (v46 - v47 == 4)
    {
      return (*(*(a1 + 112) + 4 * v44) * *(&v44 + 1)) + (*(*(a1 + 112) + 4 * v43) * *(&v43 + 1));
    }

    else
    {
      v48 = v38 * 57.2957795;
      v49 = (*(a1 + 72) - v39) >> 2;
      if (v48 < 0.0 && *v47 == 0.0)
      {
        v48 = -v48;
      }

      v51 = *(v46 - 4);
      if (v48 > 180.0 && v51 <= 180.0)
      {
        v48 = 360.0 - v48;
      }

      if (v48 > 90.0 && v51 <= 90.0)
      {
        v48 = 180.0 - v48;
      }

      v54 = sub_239EEA388(a1 + 88, v48);
      v55 = *(a1 + 112);
      return (((*(v55 + 4 * (v54 * v49 + v44)) * *(&v44 + 1)) + (*(v55 + 4 * (v54 * v49 + v45)) * *(&v45 + 1))) * *(&v54 + 1)) + (((*(v55 + 4 * (v56 * v49 + v44)) * *(&v44 + 1)) + (*(v55 + 4 * (v56 * v49 + v45)) * *(&v45 + 1))) * v57);
    }
  }

  return v40;
}

CGColorRef sub_239EEA778(uint64_t a1, const char *a2, uint64_t a3, float32x4_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  objc_msgSend_translation(*(a1 + 16), a2, a3);
  v8 = *(a1 + 40);
  if (v8 == 0.0)
  {
    v11 = 1.0;
  }

  else
  {
    v9 = vsubq_f32(a4, v7);
    v10 = vmulq_f32(v9, v9);
    v11 = powf(fminf(fmaxf((v8 - sqrtf(vaddv_f32(*v10.f32) + v10.f32[2])) / (v8 - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
  }

  v12 = (sub_239EEA45C(a1, v5, v6, a4) * v11) * *(a1 + 140);
  v13 = CGColorGetComponents(*(a1 + 8));
  *components = vmulq_n_f64(*v13, v12);
  v14 = *(v13 + 3);
  v21 = v13[2] * v12;
  v22 = v14;
  ColorSpace = CGColorGetColorSpace(*(a1 + 8));
  v16 = CGColorCreate(ColorSpace, components);
  CFRelease(ColorSpace);
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

CGColorRef sub_239EEA89C(uint64_t a1, char *a2, uint64_t a3, float32x4_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  objc_msgSend_translation(*(a1 + 16), a2, a3);
  v9 = *(a1 + 40);
  if (v9 == 0.0)
  {
    v12 = 1.0;
  }

  else
  {
    v10 = vsubq_f32(a4, v8);
    v11 = vmulq_f32(v10, v10);
    v12 = powf(fminf(fmaxf((v9 - sqrtf(vaddv_f32(*v11.f32) + v11.f32[2])) / (v9 - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
  }

  v13 = (sub_239EEA45C(a1, v6, v7, a4) * v12) * *(a1 + 140);
  v14 = CGColorGetComponents(*(a1 + 8));
  *components = vmulq_n_f64(*v14, v13);
  v15 = *(v14 + 3);
  v20 = v14[2] * v13;
  v21 = v15;
  result = CGColorCreate(a2, components);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_239EEA9AC(uint64_t a1, const char *a2, uint64_t a3, float32x4_t a4, float32x4_t a5)
{
  objc_msgSend_translation(*(a1 + 16), a2, a3);
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 == 0.0)
  {
    v14 = 1.0;
  }

  else
  {
    v11 = vsubq_f32(a4, v9);
    v12 = vmulq_f32(v11, v11);
    v21 = v9;
    v13 = powf(fminf(fmaxf((v10 - sqrtf(vaddv_f32(*v12.f32) + v12.f32[2])) / (v10 - *(a1 + 36)), 0.0), 1.0), *(a1 + 44));
    v9 = v21;
    v14 = v13;
  }

  v15 = vsubq_f32(v9, a4);
  v16 = vmulq_f32(v15, v15);
  *&v17 = vaddv_f32(*v16.f32) + v16.f32[2];
  *v16.f32 = vrsqrte_f32(v17);
  *v16.f32 = vmul_f32(vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32)), *v16.f32);
  v18 = vmulq_f32(vmulq_n_f32(v15, vmul_f32(*v16.f32, vrsqrts_f32(v17, vmul_f32(*v16.f32, *v16.f32))).f32[0]), a5);
  *v19.i32 = ((sub_239EEA45C(a1, v6, v7, a4) * v14) * *(a1 + 140)) * fmaxf(vaddv_f32(*v18.f32) + v18.f32[2], 0.0);
  *&result = vdupq_lane_s32(v19, 0).u64[0];
  return result;
}

void sub_239EEAACC(uint64_t a1)
{
  sub_239EE9548(a1);

  JUMPOUT(0x23EE802C0);
}

void sub_239EEAB08(uint64_t a1)
{
  sub_239EE9548(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239EEAB40(void *a1)
{
  *a1 = &unk_284D17240;
  sub_239EBC240(a1 + 7);

  return sub_239EE9548(a1);
}

void sub_239EEAB94(void *a1)
{
  *a1 = &unk_284D17240;
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  sub_239EE9548(a1);

  JUMPOUT(0x23EE802C0);
}

uint64_t sub_239EEAC28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_239EBD38C(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_239EBD38C(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_239EBD38C(a1 + 56, *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 2);
  v4 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v4;
  return a1;
}

void sub_239EEACD0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

id sub_239EEAD04(uint64_t a1, int a2, double a3, double a4)
{
  v69[2] = *MEMORY[0x277D85DE8];
  v68[1] = 0;
  v68[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v68[0] = MEMORY[0x277D86760] + 16;
  __dst[0] = 0;
  __dst[1] = 0;
  v67 = 0;
  sub_239E58260(a1, &v63);
  String = pxrInternal__aapl__pxrReserved__::SdfPath::GetString(&v63);
  if (*(String + 23) < 0)
  {
    sub_239E5BAE0(__dst, *String, *(String + 8));
  }

  else
  {
    v8 = *String;
    v67 = *(String + 16);
    *__dst = v8;
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v63);
  v58 = objc_opt_new();
  v69[0] = 0;
  v69[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::GetJointsAttr(&v63, v68);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((BYTE8(v64) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v64 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v64);
  if (*(&v63 + 1))
  {
    sub_239E5E560(*(&v63 + 1));
  }

  if (!sub_239EEB424(v69))
  {
    goto LABEL_47;
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v9 = sub_239EEB45C(v69);
  v10 = *(v9 + 16);
  v63 = *v9;
  v64 = v10;
  v11 = *(v9 + 32);
  v65 = v11;
  if (v11)
  {
    v12 = v11 - 2;
    if (*(&v64 + 1))
    {
      v12 = *(&v64 + 1);
    }

    atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
  }

  sub_239EEC084(&v63);
  v13 = v65;
  sub_239EEC084(&v63);
  v15 = &v65[v63];
  if (v13 == v15)
  {
LABEL_46:
    sub_239EEBFE4(&v63);
LABEL_47:
    v29 = [MDLPackedJointAnimation alloc];
    if (v67 >= 0)
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, __dst);
    }

    else
    {
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, __dst[0]);
    }
    v30 = ;
    v32 = objc_msgSend_initWithName_jointPaths_(v29, v31, v30, v58);

    v63 = 0u;
    v64 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::GetTranslationsAttr(&v63, v68);
    *__p = 0u;
    v62 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::GetRotationsAttr(__p, v68);
    v59 = 0u;
    v60 = 0u;
    pxrInternal__aapl__pxrReserved__::UsdSkelAnimation::GetScalesAttr(&v59, v68);
    objc_msgSend_translations(v32, v33, v34);
    if (a2)
      v35 = {;
      objc_msgSend_resetWithUsdAttribute_timeScale_(v35, v36, &v63, a3);

      v39 = objc_msgSend_rotations(v32, v37, v38);
      objc_msgSend_resetWithUsdAttribute_timeScale_(v39, v40, __p, a3);

      v43 = objc_msgSend_scales(v32, v41, v42);
      objc_msgSend_resetWithUsdAttribute_timeScale_(v43, v44, &v59, a3);
    }

    else
      v45 = {;
      objc_msgSend_resetWithUsdAttribute_timeScale_time_(v45, v46, &v63, a3, a4);

      v49 = objc_msgSend_rotations(v32, v47, v48);
      objc_msgSend_resetWithUsdAttribute_timeScale_time_(v49, v50, __p, a3, a4);

      v43 = objc_msgSend_scales(v32, v51, v52);
      objc_msgSend_resetWithUsdAttribute_timeScale_time_(v43, v53, &v59, a3, a4);
    }

    v54 = v32;
    if ((BYTE8(v60) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v60 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v60);
    if (*(&v59 + 1))
    {
      sub_239E5E560(*(&v59 + 1));
    }

    if ((BYTE8(v62) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v62 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v62);
    if (__p[1])
    {
      sub_239E5E560(__p[1]);
    }

    if ((BYTE8(v64) & 7) != 0)
    {
      atomic_fetch_add_explicit((*(&v64 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v64);
    if (*(&v63 + 1))
    {
      sub_239E5E560(*(&v63 + 1));
    }

    goto LABEL_66;
  }

  while (1)
  {
    v16 = *v13;
    if ((*v13 & 7) != 0 && (atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
    {
      v16 &= 0xFFFFFFFFFFFFFFF8;
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v62 = 0;
    v17 = v16 & 0xFFFFFFFFFFFFFFF8;
    v18 = (v16 & 0xFFFFFFFFFFFFFFF8) != 0 ? v17 + 16 : pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v14);
    if (*(v18 + 23) < 0)
    {
      sub_239E5BAE0(__p, *v18, *(v18 + 8));
    }

    else
    {
      v19 = *v18;
      *&v62 = *(v18 + 16);
      *__p = v19;
    }

    v20 = (SBYTE7(v62) & 0x80u) == 0 ? BYTE7(v62) : __p[1];
    if (v20)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      if ((SBYTE7(v62) & 0x80u) == 0)
      {
        v23 = objc_msgSend_initWithUTF8String_(v21, v22, __p);
      }

      else
      {
        v23 = objc_msgSend_initWithUTF8String_(v21, v22, __p[0]);
      }

      v25 = v23;
      if (v23)
      {
        objc_msgSend_addObject_(v58, v24, v23);
      }
    }

    else
    {
      if (v17)
      {
        v26 = (v17 + 16);
        if (*(v17 + 39) < 0)
        {
          v26 = *v26;
        }
      }

      else
      {
        v26 = "";
      }

      v27 = __dst;
      if (v67 < 0)
      {
        v27 = __dst[0];
      }

      NSLog(&cfstr_IllegalJointPa.isa, v26, v27);
    }

    if (SBYTE7(v62) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v16 & 7) != 0)
    {
      atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_release);
    }

    if (!v20)
    {
      break;
    }

    if (++v13 == v15)
    {
      goto LABEL_46;
    }
  }

  sub_239EEBFE4(&v63);
  v54 = 0;
LABEL_66:
  sub_239E5B240(v69);

  if (SHIBYTE(v67) < 0)
  {
    operator delete(__dst[0]);
  }

  MEMORY[0x23EE7E930](v68);
  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

void sub_239EEB28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    sub_239E797CC(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EEB424(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 60)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17AF8);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239EEB45C(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239EEB424(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239EEBF28, &stru_284D17AF8);
  }
}

id sub_239EEB4F0(_DWORD *a1, double a2)
{
  v45[2] = *MEMORY[0x277D85DE8];
  v44[1] = 0;
  v44[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v44[0] = MEMORY[0x277D86720] + 16;
  v4 = *sub_239E5DFB4(a1) & 0xFFFFFFFFFFFFFFF8;
  if (v4)
  {
    v5 = (v4 + 16);
    if (*(v4 + 39) < 0)
    {
      v5 = *v5;
    }
  }

  else
  {
    v5 = "";
  }

  v6 = objc_opt_new();
  v45[0] = 0;
  v45[1] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetJointsAttr(&v41, v44);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((BYTE8(v42) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v42 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v42);
  if (*(&v41 + 1))
  {
    sub_239E5E560(*(&v41 + 1));
  }

  if (sub_239EEB424(v45))
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v9 = sub_239EEB45C(v45);
    v10 = *(v9 + 16);
    v41 = *v9;
    v42 = v10;
    v11 = *(v9 + 32);
    v43 = v11;
    if (v11)
    {
      v12 = v11 - 2;
      if (*(&v42 + 1))
      {
        v12 = *(&v42 + 1);
      }

      atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
    }

    sub_239EEC084(&v41);
    v13 = v43;
    sub_239EEC084(&v41);
    for (i = &v43[v41]; v13 != i; ++v13)
    {
      v15 = *v13;
      if ((*v13 & 7) != 0 && (atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        v15 &= 0xFFFFFFFFFFFFFFF8;
      }

      if (!v15)
      {
        NSLog(&cfstr_IllegalJointPa_0.isa, "", v5);
LABEL_44:
        sub_239EEBFE4(&v41);
LABEL_45:
        v36 = 0;
        goto LABEL_46;
      }

      v16 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = v15 & 0xFFFFFFFFFFFFFFF8;
      if ((v15 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v19 = (v18 + 16);
        if (*(v18 + 39) < 0)
        {
          v20 = objc_msgSend_initWithUTF8String_(v16, v17, *v19);
          goto LABEL_24;
        }
      }

      else
      {
        v19 = "";
      }

      v20 = objc_msgSend_initWithUTF8String_(v16, v17, v19);
LABEL_24:
      v22 = v20;
      if (v20)
      {
        objc_msgSend_addObject_(v6, v21, v20);
      }

      else
      {
        NSLog(&cfstr_IllegalJointPa_1.isa, v5);
      }

      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_release);
      }

      if (!v22)
      {
        goto LABEL_44;
      }
    }

    sub_239EEBFE4(&v41);
  }

  if (!objc_msgSend_count(v6, v7, v8))
  {
    NSLog(&cfstr_NoJointPathsEx.isa, v5);
    goto LABEL_45;
  }

  v23 = [MDLSkeleton alloc];
  v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, v5);
  v27 = objc_msgSend_initWithName_jointPaths_(v23, v26, v25, v6);

  v41 = 0u;
  v42 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetBindTransformsAttr(&v41, v44);
  v30 = objc_msgSend_jointBindTransforms(v27, v28, v29);
  objc_msgSend_resetWithUsdAttribute_time_(v30, v31, &v41, a2);

  v39 = 0u;
  v40 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelSkeleton::GetRestTransformsAttr(&v39, v44);
  v34 = objc_msgSend_jointRestTransforms(v27, v32, v33);
  objc_msgSend_resetWithUsdAttribute_time_(v34, v35, &v39, a2);

  v36 = v27;
  if ((BYTE8(v40) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v40);
  if (*(&v39 + 1))
  {
    sub_239E5E560(*(&v39 + 1));
  }

  if ((BYTE8(v42) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v42 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v42);
  if (*(&v41 + 1))
  {
    sub_239E5E560(*(&v41 + 1));
  }

LABEL_46:
  sub_239E5B240(v45);

  MEMORY[0x23EE7E870](v44);
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

void sub_239EEB8F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EEBFE4(va);
  sub_239E5B240(va2);

  MEMORY[0x23EE7E870](va1);
  _Unwind_Resume(a1);
}

void sub_239EEB9F8(uint64_t a1, pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  a34 = *MEMORY[0x277D85DE8];
  v67 = a3;
  *&v68 = a4;
  *(&v68 + 1) = a5;
  a32 = 0;
  a33 = 0;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetJointsAttr(&a21, a2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::Get();
  if ((BYTE8(a22) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&a22 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&a22);
  if (*(&a21 + 1))
  {
    sub_239E5E560(*(&a21 + 1));
  }

  if (sub_239EEB424(&a32))
  {
    *&a23 = 0;
    a21 = 0u;
    a22 = 0u;
    v38 = sub_239EEB45C(&a32);
    v39 = *(v38 + 16);
    a21 = *v38;
    a22 = v39;
    v40 = *(v38 + 32);
    *&a23 = v40;
    if (v40)
    {
      v41 = (v40 - 16);
      if (*(&a22 + 1))
      {
        v41 = *(&a22 + 1);
      }

      atomic_fetch_add_explicit(v41, 1uLL, memory_order_relaxed);
    }

    v42 = objc_opt_new();
    sub_239EEC084(&a21);
    v43 = a23;
    sub_239EEC084(&a21);
    v44 = (a23 + 8 * a21);
    if (v43 != v44)
    {
      while (1)
      {
        v45 = *v43;
        if ((*v43 & 7) != 0 && (atomic_fetch_add_explicit((v45 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
        {
          v45 &= 0xFFFFFFFFFFFFFFF8;
        }

        if (!v45)
        {
          sub_239E58260(a1, var20);
          pxrInternal__aapl__pxrReserved__::SdfPath::GetText(var20);
          NSLog(&cfstr_IllegalJointPa_0.isa);
          pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
          sub_239E5B574(var20);
          objc_msgSend_removeAllObjects(v42, v53, v54);
          goto LABEL_26;
        }

        v46 = objc_alloc(MEMORY[0x277CCACA8]);
        v48 = v45 & 0xFFFFFFFFFFFFFFF8;
        if ((v45 & 0xFFFFFFFFFFFFFFF8) == 0)
        {
          break;
        }

        v49 = (v48 + 16);
        if ((*(v48 + 39) & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        v50 = objc_msgSend_initWithUTF8String_(v46, v47, *v49);
LABEL_20:
        v52 = v50;
        objc_msgSend_addObject_(v42, v51, v50);

        if ((v45 & 7) != 0)
        {
          atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_release);
        }

        if (++v43 == v44)
        {
          goto LABEL_26;
        }
      }

      v49 = "";
LABEL_19:
      v50 = objc_msgSend_initWithUTF8String_(v46, v47, v49);
      goto LABEL_20;
    }

LABEL_26:
    sub_239EEBFE4(&a21);
  }

  else
  {
    v42 = 0;
  }

  a29 = 0u;
  a30 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetGeomBindTransformAttr(&a29, a2);
  v57 = sub_239E5E5B4(&a29);
  if (v68 != 0 || (objc_msgSend_count(v42, v55, v56) != 0) | v57 & 1)
  {
    v58 = objc_opt_new();
    objc_msgSend_setSkeleton_(v58, v59, v68);
    objc_msgSend_setJointAnimation_(v58, v60, *(&v68 + 1));
    a27 = 0u;
    a28 = 0u;
    a25 = 0u;
    a26 = 0u;
    a23 = 0u;
    a24 = 0u;
    a21 = 0u;
    a22 = 0u;
    if (v57)
    {
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfMatrix4d>();
    }

    v70 = *(MEMORY[0x277D860A0] + 64);
    v71 = *(MEMORY[0x277D860A0] + 80);
    v72 = *(MEMORY[0x277D860A0] + 96);
    v73 = *(MEMORY[0x277D860A0] + 112);
    v62 = *(MEMORY[0x277D860A0] + 16);
    var20[0] = *MEMORY[0x277D860A0];
    var20[1] = v62;
    v63 = *(MEMORY[0x277D860A0] + 48);
    var20[2] = *(MEMORY[0x277D860A0] + 32);
    objc_msgSend_setGeometryBindTransform_(v58, v61, var20);
    if (v42 && objc_msgSend_count(v42, v64, v65))
    {
      objc_msgSend_setJointPaths_(v58, v64, v42);
    }

    objc_msgSend_setComponent_forProtocol_(v67, v64, v58, &unk_284D24710);
  }

  if ((BYTE8(a30) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&a30 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&a30);
  if (*(&a29 + 1))
  {
    sub_239E5E560(*(&a29 + 1));
  }

  sub_239E5B240(&a32);

  v66 = *MEMORY[0x277D85DE8];
}

void sub_239EEBE20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  if ((v57 & 7) != 0)
  {
    atomic_fetch_add_explicit((v57 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239EEBFE4(&a35);

  sub_239E5B240(&a56);
  _Unwind_Resume(a1);
}

uint64_t sub_239EEBF88(uint64_t result)
{
  if (result)
  {
    sub_239EEBFE4(result);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void sub_239EEBFE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = a1 + 24;
    if (*(a1 + 24))
    {
      sub_239F737B4(*(a1 + 24), v2);
    }

    else if (atomic_fetch_add_explicit((v1 - 16), 0xFFFFFFFFFFFFFFFFLL, memory_order_release) == 1)
    {
      __dmb(9u);
      v3 = *(a1 + 32);
      if (*a1)
      {
        v4 = 8 * *a1;
        do
        {
          if ((*v3 & 7) != 0)
          {
            atomic_fetch_add_explicit((*v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          ++v3;
          v4 -= 8;
        }

        while (v4);
        v3 = *(a1 + 32);
      }

      operator delete(v3 - 2);
    }

    *v2 = 0;
    *(v2 + 8) = 0;
  }
}

void sub_239EEC084(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (*(a1 + 24) || (v2 = atomic_load((v1 - 16)), v2 != 1))
    {
      sub_239F74464(a1, (a1 + 32));
    }
  }
}

uint64_t *sub_239EEC0C8(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  result = sub_239EEC13C(a1, a3);
  if (a4)
  {
    v7 = 8 * a4;
    v8 = result;
    do
    {
      v9 = *a2;
      *v8 = *a2;
      if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *v8 &= 0xFFFFFFFFFFFFFFF8;
      }

      ++a2;
      ++v8;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void *sub_239EEC13C(uint64_t a1, unint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_239E56D84(v6);
  if (a2 > 0xFFFFFFFFFFFFFFDLL)
  {
    v3 = -1;
  }

  else
  {
    v3 = 8 * a2 + 16;
  }

  v4 = operator new(v3);
  *v4 = 1;
  v4[1] = a2;
  if (v6[0])
  {
    pxrInternal__aapl__pxrReserved__::TfMallocTag::_End();
  }

  return v4 + 2;
}

void sub_239EEC1D4(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v23 = 0;
  v24 = 0;
  v2 = pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v21 = 0;
  v22 = MEMORY[0x277D86768] + 16;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0;
  memset(&v3[3], 0, 32);
  pxrInternal__aapl__pxrReserved__::UsdGeomNurbsPatch::GetUVertexCountAttr(v3, v2);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<int>();
}

void sub_239EED260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, char *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  MEMORY[0x23EE802C0](v51, 0x60C4044C4A2DFLL);
  __cxa_guard_abort(&qword_27DF91288);
  __p = &a26;
  sub_239EED794(&__p);

  sub_239E56C80(&a29);
  sub_239E56C80(&a35);
  sub_239E56C80(&a41);
  sub_239E56C80(&a51);
  sub_239E56C80(v52 - 224);
  v54 = *(v52 - 168);
  if ((v54 & 7) != 0)
  {
    atomic_fetch_add_explicit((v54 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v55 = *(v52 - 160);
  if ((v55 & 7) != 0)
  {
    atomic_fetch_add_explicit((v55 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E980](v52 - 152);

  _Unwind_Resume(a1);
}

void sub_239EED6A4(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_239E797B4();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_239EED794(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EED7E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_239EED7E8(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

double sub_239EED86C(float64x2_t *a1)
{
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(*a1), a1[1]).u64[0];
  v2 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[2]), a1[3]);
  v3 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[4]), a1[5]);
  v4 = vcvt_hight_f32_f64(vcvt_f32_f64(a1[6]), a1[7]);
  return result;
}

uint64_t sub_239EED8A0(char *a1, uint64_t *a2, char *a3)
{
  v6 = 672;
  v7 = &byte_27DF90A38;
  do
  {
    sub_239E552A0(__p, *(v7 - 2));
    MEMORY[0x23EE80200](&v12);
    v8 = sub_239EED9DC(a1, __p, &v12);
    std::locale::~locale(&v12);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v10 = *(v7 - 1);
      goto LABEL_10;
    }

    v7 += 24;
    v6 -= 24;
  }

  while (v6);
  sub_239E552A0(__p, qword_27DF90CC8);
  MEMORY[0x23EE80200](&v12);
  v9 = sub_239EED9DC(a1, __p, &v12);
  std::locale::~locale(&v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
    if (v9 < 0)
    {
      return 0;
    }

LABEL_8:
    v7 = &byte_27DF90CD8;
    v10 = qword_27DF90CD0;
LABEL_10:
    *a2 = v10;
    *a3 = *v7;
    return 1;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  return 0;
}

void sub_239EED9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  std::locale::~locale(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_239EED9DC(char *a1, uint64_t a2, const std::locale *a3)
{
  v3 = a1;
  v4 = *(a1 + 1);
  if (a1[23] >= 0)
  {
    v5 = a1[23];
  }

  else
  {
    a1 = *a1;
    v5 = v4;
  }

  v6 = *(a2 + 23);
  if ((v6 & 0x80u) == 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  v13 = a3;
  v12 = 0;
  v8 = sub_239EF2D08(a1, &a1[v5], v7, &v7[v6], &v13, &v12, &v12);
  v9 = v3[23];
  if (v9 < 0)
  {
    v10 = v3;
    v3 = *v3;
    v9 = *(v10 + 1);
  }

  if (&v3[v9] == v8)
  {
    return -1;
  }

  else
  {
    return v8 - v3;
  }
}

void sub_239EEDA7C(void *a1, uint64_t a2, void *a3, pxrInternal__aapl__pxrReserved__::UsdShadeInput *a4, void *a5)
{
  v53[2] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a3;
  v53[0] = 0;
  v53[1] = 0;
  if ((pxrInternal__aapl__pxrReserved__::UsdShadeInput::Get() & 1) == 0)
  {
    goto LABEL_49;
  }

  v11 = sub_239E6A188(v53);
  if (v11)
  {
    v12 = 7;
  }

  else
  {
    v12 = 0;
  }

  if (sub_239E6A150(v53))
  {
    v13 = 8;
  }

  else if (sub_239E6A084(v53))
  {
    v13 = 5;
  }

  else
  {
    v14 = sub_239E68724(v53);
    if (v14)
    {
      v13 = 3;
    }

    else
    {
      v13 = v12;
    }

    if (((v14 | v11) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  v15 = MEMORY[0x277CCACA8];
  pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(__dst, a4);
  v17 = __dst[0] & 0xFFFFFFFFFFFFFFF8;
  if ((__dst[0] & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    v18 = "";
    goto LABEL_17;
  }

  v18 = (v17 + 16);
  if ((*(v17 + 39) & 0x80000000) == 0)
  {
LABEL_17:
    objc_msgSend_stringWithUTF8String_(v15, v16, v18);
    goto LABEL_18;
  }

  objc_msgSend_stringWithUTF8String_(v15, v16, *v18);
  v20 = LABEL_18:;
  if ((__dst[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__dst[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = objc_msgSend_propertyNamed_(v9, v19, v20);
  v24 = v21;
  if (!v21 || objc_msgSend_semantic(v21, v22, v23) != a2)
  {
    v26 = [MDLMaterialProperty alloc];
    v28 = objc_msgSend_initWithName_semantic_(v26, v27, v20, a2);

    v24 = v28;
  }

  if (v13 <= 4)
  {
    if (v13 == 3)
    {
      memset(v52, 0, 32);
      *__dst = 0u;
      v32 = sub_239E687A8(v53);
      v33 = v32;
      if (*(v32 + 23) < 0)
      {
        sub_239E5BAE0(__dst, *v32, *(v32 + 8));
      }

      else
      {
        v34 = *v32;
        v52[0] = *(v32 + 16);
        *__dst = v34;
      }

      if (*(v33 + 47) < 0)
      {
        sub_239E5BAE0(&v52[1], *(v33 + 24), *(v33 + 32));
      }

      else
      {
        v42 = *(v33 + 24);
        v52[3] = *(v33 + 40);
        *&v52[1] = v42;
      }

      __p[0] = 0;
      __p[1] = 0;
      v50 = 0;
      if (SHIBYTE(v52[3]) < 0)
      {
        sub_239E5BAE0(__p, v52[1], v52[2]);
      }

      else
      {
        *__p = *&v52[1];
        v50 = v52[3];
      }

      sub_239E6883C(a5, __p);
      v43 = objc_alloc(MEMORY[0x277CCACA8]);
      if (SHIBYTE(v50) >= 0)
      {
        v45 = objc_msgSend_initWithCString_encoding_(v43, v44, __p, 4, __p[0], __p[1], v50);
      }

      else
      {
        v45 = objc_msgSend_initWithCString_encoding_(v43, v44, __p[0], 4, __p[0], __p[1], v50);
      }

      v47 = v45;
      objc_msgSend_setStringValue_(v24, v46, v45);

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v52[3]) < 0)
      {
        operator delete(v52[1]);
      }

      if (SHIBYTE(v52[0]) < 0)
      {
        operator delete(__dst[0]);
      }
    }
  }

  else if (v13 == 5)
  {
    LODWORD(v35) = *sub_239E6A0BC(v53);
    objc_msgSend_setFloatValue_(v24, v36, v37, v35);
  }

  else if (v13 == 7)
  {
    v38 = sub_239EEDF80(v53);
    v39 = *(v38 + 8);
    objc_msgSend_setFloat3Value_(v24, v40, v41, *v38);
  }

  else
  {
    v29 = sub_239EEDEEC(v53);
    objc_msgSend_setFloat4Value_(v24, v30, v31, *v29);
  }

  objc_msgSend_setProperty_(v9, v25, v24);

LABEL_49:
  sub_239E5B240(v53);

  v48 = *MEMORY[0x277D85DE8];
}

void sub_239EEDDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_239EEDEA8(&__p);

  sub_239E5B240(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_239EEDEA8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_239EEDEEC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E6A150(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86638];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17C20);
  }
}

uint64_t sub_239EEDF80(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239E6A188(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v5 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v5(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D86618];

    return MEMORY[0x282207DB0](a1, v4, &stru_284D17C50);
  }
}

void sub_239EEE014(uint64_t a1, uint64_t *a2, float64x2_t *a3, void *a4)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = (v4 - *a2) >> 3;
  if (v6 == *a4)
  {
    v9 = objc_opt_new();
    __p = 0;
    v33 = 0;
    v34 = 0;
    sub_239EF3834(&__p, v6);
    if (v4 != v5)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = v6;
      do
      {
        *&v14 = sub_239EED86C((a4[4] + v12));
        v15 = __p + v11;
        *v15 = v14;
        v15[1] = v16;
        v15[2] = v17;
        v15[3] = v18;
        v19 = MEMORY[0x277CCACA8];
        Text = pxrInternal__aapl__pxrReserved__::SdfPath::GetText((*a2 + v10));
        v22 = objc_msgSend_stringWithUTF8String_(v19, v21, Text);
        objc_msgSend_addObject_(v9, v23, v22);

        v12 += 128;
        v11 += 64;
        v10 += 8;
        --v13;
      }

      while (v13);
    }

    v24 = [MDLSkinDeformer alloc];
    v25 = __p;
    v26 = sub_239EED86C(a3);
    v28 = objc_msgSend_initWithJointPaths_jointBindTransforms_count_meshBindTransform_(v24, v27, v9, v25, v6, v26);
    v29 = *(a1 + 96);
    *(a1 + 96) = v28;

    if (__p)
    {
      v33 = __p;
      operator delete(__p);
    }
  }

  else
  {
    NSLog(&cfstr_WarningJointPa.isa);
  }
}

void sub_239EEE188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EEE1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a7;
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
}

void sub_239EEE8E4(void *a1)
{
  v3 = a1[1];
  v2 = a1 + 1;
  if (!v3 || (*(sub_239EF2C90(v2) + 14) == 1 ? (v4 = *a1 == 0) : (v4 = 1), v4))
  {
    sub_239F74544(v5);
  }
}

_DWORD *sub_239EEE934@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::operator BOOL();
  if (v4 || (a1 = *(a1 + 8)) != 0)
  {
    sub_239E57FC0(a2, (a1 + 16));
    v5 = a2 + 1;
    v6 = (a1 + 20);
  }

  else
  {
    v8 = pxrInternal__aapl__pxrReserved__::SdfPath::EmptyPath(v4);
    sub_239E57FC0(a2, v8);
    v5 = a2 + 1;
    v6 = v8 + 1;
  }

  return sub_239E5B49C(v5, v6);
}

void sub_239EEE9B4(uint64_t a1)
{
  v2[2] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  v2[1] = 0;
  sub_239E5B3EC(v2, a1);
  *(a1 + 8) = &off_284D15780;
  sub_239EC8A68();
}

void sub_239EEEA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

void **sub_239EEEA84(void **a1)
{
  sub_239E5B240((a1 + 5));
  sub_239E5B240((a1 + 3));
  v3 = a1;
  sub_239EF2044(&v3);
  return a1;
}

void sub_239EEEAD4(void *a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = sub_239E6AD14(*(a2 + 8));
  v4 = *(v3 + 16);
  v36 = *v3;
  v37 = v4;
  v5 = *(v3 + 32);
  v38 = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(&v37 + 1))
    {
      v6 = *(&v37 + 1);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
    v33 = v36;
    v34 = v37;
    v35 = v38;
    if (v38)
    {
      v7 = (v38 - 16);
      if (*(&v34 + 1))
      {
        v7 = *(&v34 + 1);
      }

      atomic_fetch_add_explicit(v7, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v33 = v36;
    v34 = v37;
    v35 = 0;
  }

  MEMORY[0x23EE7ED20](&v39, "points");
  v8 = v39 ^ a1[7];
  if ((v39 & 7) != 0)
  {
    atomic_fetch_add_explicit((v39 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (v8 <= 7)
  {
    v9 = sub_239E6AD14(a1);
    v10 = *(v9 + 16);
    v39 = *v9;
    v40 = v10;
    v11 = *(v9 + 32);
    v41 = v11;
    if (v11)
    {
      v12 = (v11 - 16);
      if (*(&v40 + 1))
      {
        v12 = *(&v40 + 1);
      }

      atomic_fetch_add_explicit(v12, 1uLL, memory_order_relaxed);
    }

    v13 = a1[2];
    if (v39 >= v13)
    {
      if (v13)
      {
        v14 = 0;
        v15 = 0;
        do
        {
          sub_239E56C3C((a1 + 2));
          v16 = *(a1[6] + 4 * v15);
          if (v33 > v16)
          {
            sub_239E56B84(&v33);
            v17 = v35;
            sub_239E56B84(&v39);
            v18 = (v17 + 12 * v16);
            v19 = v18[1].f32[0];
            v20 = *v18;
            v21 = *(v41 + v14);
            v22 = *(v41 + v14 + 8);
            sub_239E56B84(&v33);
            v23 = (v35 + 12 * v16);
            *v23 = vadd_f32(v21, v20);
            v23[1].f32[0] = v22 + v19;
          }

          ++v15;
          v14 += 12;
        }

        while (v15 < a1[2]);
      }

      else if (v39 && v33)
      {
        v24 = 0;
        v25 = 1;
        do
        {
          sub_239E56B84(&v33);
          v26 = v35;
          sub_239E56B84(&v39);
          v27 = *(v26 + v24 + 8);
          v28 = *(v26 + v24);
          v29 = *(v41 + v24);
          v30 = *(v41 + v24 + 8);
          sub_239E56B84(&v33);
          v31 = (v35 + v24);
          *v31 = vadd_f32(v29, v28);
          v31[1].f32[0] = v30 + v27;
          if (v25 >= v39)
          {
            break;
          }

          v24 += 12;
        }

        while (v25++ < v33);
      }
    }

    sub_239E56C80(&v39);
  }

  *&v39 = 0;
  *(&v39 + 1) = &off_284D15C88;
  sub_239EB5D90();
}

void sub_239EEEDA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_239E797CC(exception_object);
}

uint64_t sub_239EEEE1C(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v4 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (*a2 == v4)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      sub_239EEC084(a2);
      v9 = a2[4];
      sub_239EEC084(a1);
      v8 |= (*(a1[4] + 8 * v7) ^ *(v9 + 8 * v7)) > 7uLL;
      ++v7;
    }

    while (*a2 > v7);
    if (v8)
    {
      v4 = *a1;
      goto LABEL_7;
    }

    return 0;
  }

LABEL_7:
  v15 = 0;
  v16 = &v15;
  sub_239E5AE38(a3, v4, &v16);
  if (*a1)
  {
    v10 = 0;
    do
    {
      sub_239EEC084(a2);
      v11 = a2[4];
      sub_239EEC084(a2);
      v12 = a2[4] + 8 * *a2;
      sub_239EEC084(a1);
      if (v11 != v12)
      {
        while ((*v11 ^ *(a1[4] + 8 * v10)) >= 8)
        {
          if (++v11 == v12)
          {
            v11 = v12;
            break;
          }
        }
      }

      sub_239EEC084(a2);
      if (v11 == (a2[4] + 8 * *a2))
      {
        LODWORD(v13) = -1;
      }

      else
      {
        sub_239EEC084(a2);
        v13 = (v11 - a2[4]) >> 3;
      }

      sub_239E56C3C(a3);
      *(a3[4] + 4 * v10++) = v13;
    }

    while (v10 < *a1);
  }

  return 1;
}

void sub_239EEEFA0(void *a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::Vt_ArrayBase *a3)
{
  v7 = a1;
  if (*a3)
  {
    v4 = 0;
    do
    {
      sub_239E56C3C(a3);
      if (*(*(a3 + 4) + 4 * v4) >= 1)
      {
        objc_msgSend_elementCount(v7, v5, v6);
        pxrInternal__aapl__pxrReserved__::UsdAttribute::GetTimeSamples();
        operator new[]();
      }

      ++v4;
    }

    while (v4 < *a3);
  }
}

void sub_239EEF1B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EEF20C(void *a1, pxrInternal__aapl__pxrReserved__::UsdObject *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v5 = *a3;
  v4 = a3[1];
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v39 = 0u;
  v40 = 0u;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v38[2] = 0;
  v37 = MEMORY[0x277D86780] + 16;
  pxrInternal__aapl__pxrReserved__::UsdSkelBindingAPI::GetBlendShapesAttr(&v39, &v37);
  MEMORY[0x23EE7E9E0](&v37);
  if (sub_239E5E5B4(&v39))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::TfToken>>();
  }

  if ((BYTE8(v40) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v40);
  if (*(&v39 + 1))
  {
    sub_239E5E560(*(&v39 + 1));
  }

  v7 = *a3;
  v6 = a3[1];
  if (*&v31[0] == (v6 - *a3) >> 3)
  {
    if (v7 == v6)
    {
LABEL_55:
      *&v41 = 0;
      v39 = 0u;
      v40 = 0u;
      sub_239EEE9B4(&v44 + 8);
    }

    while (1)
    {
      v30 = 0;
      sub_239E57FC0(&v30, v7);
      sub_239E5B49C(&v30 + 1, v7 + 1);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      pxrInternal__aapl__pxrReserved__::UsdObject::GetStage(&v37, a2);
      sub_239EEE8E4(&v37);
      pxrInternal__aapl__pxrReserved__::UsdStage::GetPrimAtPath(&v39, v8, &v30);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v27 = MEMORY[0x277D86788] + 16;
      if ((BYTE8(v40) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239F744DC(&v40, &v39 + 1, v38);
      memset(v26, 0, sizeof(v26));
      sub_239E5815C(&v39, &v28, &v29);
      v9 = sub_239E5DFB4(&v39);
      sub_239E5BA20(v26, v9);
      if ((BYTE8(v40) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v40);
      if (*(&v39 + 1))
      {
        sub_239E5E560(*(&v39 + 1));
      }

      if (v28 && (*(v28 + 57) & 8) == 0 && ((*(v27 + 32))(&v27) & 1) != 0)
      {
        v24 = 0u;
        v25 = 0u;
        pxrInternal__aapl__pxrReserved__::UsdSkelBlendShape::GetOffsetsAttr(&v24, &v27);
        if (sub_239E5E5B4(&v24))
        {
          pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
        }

        v15 = *a1 & 0xFFFFFFFFFFFFFFF8;
        if (v15)
        {
          v16 = (v15 + 16);
          if (*(v15 + 39) < 0)
          {
            v16 = *v16;
          }
        }

        else
        {
          v16 = "";
        }

        sub_239E5815C(&v39, &v28, &v29);
        v17 = *sub_239E5DFB4(&v39) & 0xFFFFFFFFFFFFFFF8;
        if (v17)
        {
          v18 = (v17 + 16);
          if (*(v17 + 39) < 0)
          {
            v18 = *v18;
          }
        }

        else
        {
          v18 = "";
        }

        NSLog(&cfstr_WarningSSkippi_5.isa, v16, v18);
        if ((BYTE8(v40) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v40);
        if (*(&v39 + 1))
        {
          sub_239E5E560(*(&v39 + 1));
        }

        if ((BYTE8(v25) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v25 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v25);
        v14 = *(&v24 + 1);
        if (!*(&v24 + 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        v10 = *a1 & 0xFFFFFFFFFFFFFFF8;
        if (v10)
        {
          v11 = (v10 + 16);
          if (*(v10 + 39) < 0)
          {
            v11 = *v11;
          }
        }

        else
        {
          v11 = "";
        }

        sub_239E5815C(&v39, &v28, &v29);
        v12 = *sub_239E5DFB4(&v39) & 0xFFFFFFFFFFFFFFF8;
        if (v12)
        {
          v13 = (v12 + 16);
          if (*(v12 + 39) < 0)
          {
            v13 = *v13;
          }
        }

        else
        {
          v13 = "";
        }

        NSLog(&cfstr_WarningSSkippi_5.isa, v11, v13);
        if ((BYTE8(v40) & 7) != 0)
        {
          atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
        sub_239E5B574(&v40);
        v14 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          goto LABEL_32;
        }
      }

      sub_239E5E560(v14);
LABEL_32:
      *&v39 = v26 + 8;
      sub_239EC8004(&v39);
      if ((v26[0] & 7) != 0)
      {
        atomic_fetch_add_explicit((*&v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      MEMORY[0x23EE7E9F0](&v27);
      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v30);
      v7 += 2;
      if (v7 == v6)
      {
        goto LABEL_55;
      }
    }
  }

  v19 = *a1 & 0xFFFFFFFFFFFFFFF8;
  if (v19)
  {
    v20 = (v19 + 16);
    if (*(v19 + 39) < 0)
    {
      v20 = *v20;
    }
  }

  else
  {
    v20 = "";
  }

  NSLog(&cfstr_WarningSMismat.isa, v20);
  sub_239EEBFE4(v31);
  sub_239E56C80(v33);
  sub_239E56C80(v35);

  sub_239E5B240(&v44 + 8);
  sub_239E5B240(&v43 + 8);
  *&v39 = &v42;
  sub_239EF2044(&v39);
  v21 = *MEMORY[0x277D85DE8];
}

void sub_239EF00DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_239E797CC(a1);
}

uint64_t sub_239EF04B0(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_239EF406C(a1, a2);
  }

  else
  {
    sub_239EF3FC8(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_239EF04F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

uint64_t sub_239EF054C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

std::type_info *sub_239EF05A8(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = a1;
  v5[2] = *MEMORY[0x277D85DE8];
  if ((sub_239EC9710(a1) & 1) == 0)
  {
    pxrInternal__aapl__pxrReserved__::VtValue::_PerformCast(v5, &stru_284D17A50, v1, v2);
    v1 = sub_239EC8B1C(v1, v5);
    sub_239E5B240(v5);
  }

  v3 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_239EF0634(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = a2[1];
    v8 = *a2;
    v9 = v3;
    v4 = *(a2 + 4);
    v10 = v4;
    if (v4)
    {
      v5 = (v4 - 16);
      if (*(&v9 + 1))
      {
        v5 = *(&v9 + 1);
      }

      atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
    }

    if (&v8 != a1)
    {
      sub_239E56C80(a1);
      v6 = v9;
      *a1 = v8;
      *(a1 + 16) = v6;
      v8 = 0u;
      v9 = 0u;
      *(a1 + 32) = v10;
      v10 = 0;
    }

    sub_239E56C80(&v8);
  }

  return a1;
}

uint64_t sub_239EF06E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

uint64_t sub_239EF0744(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_239E5E560(v3);
  }

  return a1;
}

double sub_239EF07A0(float *a1, void *a2, void *a3)
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *&v13 = *a2;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetScale();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *a1;
  v9 = 0;
  v10 = 0;
  v11 = 0x3FF0000000000000;
  v12 = v5;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetRotate();
  *&v8[0] = *a3;
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::SetTranslate();
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
  memset(v8, 0, sizeof(v8));
  pxrInternal__aapl__pxrReserved__::GfMatrix4f::operator*=();
  v6 = 0;
  memset(v21, 0, sizeof(v21));
  do
  {
    v21[v6] = v8[v6];
    ++v6;
  }

  while (v6 != 4);
  return *v21;
}

void sub_239EF08BC(pxrInternal__aapl__pxrReserved__::UsdShadeShader *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = a2;
  v44 = 0u;
  v45 = 0u;
  MEMORY[0x23EE7ED20](&v42, "rotation");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v44, a1, &v42);
  if ((v42 & 7) != 0)
  {
    atomic_fetch_add_explicit((v42 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v42 = 0u;
  v43 = 0u;
  MEMORY[0x23EE7ED20](&v40, "scale");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v42, a1, &v40);
  if ((v40 & 7) != 0)
  {
    atomic_fetch_add_explicit((v40 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v40 = 0u;
  v41 = 0u;
  MEMORY[0x23EE7ED20](&v35, "translation");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v40, a1, &v35);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v39 = 0;
  if (sub_239E5E5B4(&v44) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<float>();
  }

  v38 = 0x3F8000003F800000;
  if (sub_239E5E5B4(&v42) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2f>();
  }

  v37 = 0;
  if (sub_239E5E5B4(&v40) && pxrInternal__aapl__pxrReserved__::UsdShadeInput::IsInput())
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::GfVec2f>();
  }

  v7 = sub_239EF07A0(&v39, &v38, &v37);
  v24 = v8;
  v25 = v7;
  v22 = v10;
  v23 = v9;
  sub_239E681C0(v6);
  v11 = [MDLTransform alloc];
  v14 = objc_msgSend_initWithMatrix_(v11, v12, v13, v25, v24, v23, v22);
  v17 = objc_msgSend_textureSamplerValue(v6, v15, v16);
  objc_msgSend_setTransform_(v17, v18, v14);

  v35 = 0u;
  v36 = 0u;
  MEMORY[0x23EE7ED20](&v33, "in");
  pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetInput(&v35, a1, &v33);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if (pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::HasConnectedSource())
  {
    v33 = 0u;
    v34 = 0u;
    LODWORD(v29) = 1;
    v30 = 0;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle::Handle();
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::Handle();
    v32 = 0;
    pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
    *(&v34 + 1) = 0;
    *&v33 = MEMORY[0x277D867A8] + 16;
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v31);
    v28 = 0;
    v27 = 0;
    pxrInternal__aapl__pxrReserved__::UsdShadeConnectableAPI::GetConnectedSource();
    v19 = sub_239E5815C(&v29, &v33 + 1, &v34);
    pxrInternal__aapl__pxrReserved__::UsdShadeShader::_GetStaticTfType(v19);
    pxrInternal__aapl__pxrReserved__::UsdSchemaRegistry::FindSchemaInfo();
    IsA = pxrInternal__aapl__pxrReserved__::UsdPrim::_IsA();
    if ((v32 & 7) != 0)
    {
      atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
    sub_239E5B574(&v31);
    if (v30)
    {
      sub_239E5E560(v30);
    }

    if (IsA)
    {
      v26[1] = 0;
      v26[2] = 0;
      sub_239E5815C(&v29, &v33 + 1, &v34);
      pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
      v26[0] = MEMORY[0x277D86708] + 16;
      if ((v32 & 7) != 0)
      {
        atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v31);
      if (v30)
      {
        sub_239E5E560(v30);
      }

      pxrInternal__aapl__pxrReserved__::UsdShadeShader::GetIdAttr(&v29, v26);
      v21 = *a4;
      pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
    }

    MEMORY[0x23EE7EB40](&v33);
  }

  if ((BYTE8(v36) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v36 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v36);
  if (*(&v35 + 1))
  {
    sub_239E5E560(*(&v35 + 1));
  }

  if ((BYTE8(v41) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v41 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v41);
  if (*(&v40 + 1))
  {
    sub_239E5E560(*(&v40 + 1));
  }

  if ((BYTE8(v43) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v43 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v43);
  if (*(&v42 + 1))
  {
    sub_239E5E560(*(&v42 + 1));
  }

  if ((BYTE8(v45) & 7) != 0)
  {
    atomic_fetch_add_explicit((*(&v45 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
  sub_239E5B574(&v45);
  if (*(&v44 + 1))
  {
    sub_239E5E560(*(&v44 + 1));
  }
}

void sub_239EF0E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if ((a17 & 7) != 0)
  {
    atomic_fetch_add_explicit((a17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E820](&a18);
  if ((a22 & 7) != 0)
  {
    atomic_fetch_add_explicit((a22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7EB40](&a27);
  sub_239EF06E8(&a31);
  sub_239EF06E8(v32 - 160);
  sub_239EF06E8(v32 - 128);
  sub_239EF06E8(v32 - 96);

  _Unwind_Resume(a1);
}

void sub_239EF1014(void *a1, uint64_t a2, __n128 a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = v4;
  if (*(a2 + 72) && (v8 = objc_msgSend_semantic(v4, v5, v6), v8 <= 0xD) && ((1 << v8) & 0x2209) != 0)
  {
    *components = vcvtq_f64_f32(a3.n128_u64[0]);
    v15 = a3.n128_f32[2];
    v16 = 0x3FF0000000000000;
    v9 = CGColorCreate(*(a2 + 72), components);
    objc_msgSend_setColor_(v7, v10, v9);
    objc_msgSend_setType_(v7, v11, 4);
    CFRelease(v9);
  }

  else
  {
    objc_msgSend_setFloat3Value_(v7, v5, v6, a3.n128_f64[0], *&a3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_239EF1120(void *a1, uint64_t a2, float32x4_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v7 = v4;
  if (*(a2 + 72) && (v8 = objc_msgSend_semantic(v4, v5, v6), v8 <= 0xD) && ((1 << v8) & 0x2209) != 0)
  {
    *components = vcvtq_f64_f32(*a3.f32);
    v15 = vcvt_hight_f64_f32(a3);
    v9 = CGColorCreate(*(a2 + 72), components);
    objc_msgSend_setColor_(v7, v10, v9);
    objc_msgSend_setType_(v7, v11, 4);
    CFRelease(v9);
  }

  else
  {
    objc_msgSend_setFloat4Value_(v7, v5, v6, *a3.i64, *&a3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id sub_239EF121C(_DWORD *a1, void *a2, pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph *a3, void *a4)
{
  v35 = a2;
  pxrInternal__aapl__pxrReserved__::UsdShadeNodeGraph::GetInputs(a3);
  v33 = a1;
  v7 = v42;
  if (v41 != v42)
  {
    v8 = 0;
    v9 = v41 + 16;
    do
    {
      v39 = 0u;
      v40 = 0u;
      v10 = v9 - 16;
      LODWORD(v39) = *(v9 - 16);
      v11 = *(v9 - 8);
      *(&v39 + 1) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 48), 1uLL, memory_order_relaxed);
      }

      sub_239E57FC0(&v40, v9);
      sub_239E5B49C(&v40 + 1, (v9 + 4));
      v12 = *(v9 + 8);
      *(&v40 + 1) = v12;
      if ((v12 & 7) != 0 && (atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(&v40 + 1) &= 0xFFFFFFFFFFFFFFF8;
      }

      v38 = 0x8000;
      v37 = 0;
      BaseName = pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v36, &v39);
      if ((v36 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        EmptyString = ((v36 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(BaseName);
      }

      v15 = sub_239EED8A0(EmptyString, &v38, &v37);
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v15)
      {
        v8 = (v37 | v8) != 0;
      }

      if ((BYTE8(v40) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v40);
      if (*(&v39 + 1))
      {
        sub_239E5E560(*(&v39 + 1));
      }

      v9 += 32;
    }

    while (v10 + 32 != v7);
  }

  v16 = MEMORY[0x277CCACA8];
  v18 = *sub_239E5DFB4(v33) & 0xFFFFFFFFFFFFFFF8;
  if (v18)
  {
    v19 = (v18 + 16);
    if (*(v18 + 39) < 0)
    {
      objc_msgSend_stringWithUTF8String_(v16, v17, *v19);
      goto LABEL_25;
    }
  }

  else
  {
    v19 = "";
  }

  objc_msgSend_stringWithUTF8String_(v16, v17, v19);
  v34 = LABEL_25:;
  v20 = [MDLMaterial alloc];
  v21 = objc_opt_new();
  v23 = objc_msgSend_initWithName_scatteringFunction_(v20, v22, v34, v21);

  v24 = v42;
  if (v42 != v41)
  {
    v25 = v41 + 16;
    do
    {
      v39 = 0u;
      v40 = 0u;
      v26 = v25 - 16;
      LODWORD(v39) = *(v25 - 16);
      v27 = *(v25 - 8);
      *(&v39 + 1) = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 48), 1uLL, memory_order_relaxed);
      }

      sub_239E57FC0(&v40, v25);
      sub_239E5B49C(&v40 + 1, (v25 + 4));
      v28 = *(v25 + 8);
      *(&v40 + 1) = v28;
      if ((v28 & 7) != 0 && (atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
      {
        *(&v40 + 1) &= 0xFFFFFFFFFFFFFFF8;
      }

      v38 = 0x8000;
      v37 = 0;
      v29 = pxrInternal__aapl__pxrReserved__::UsdShadeInput::GetBaseName(&v36, &v39);
      if ((v36 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v30 = ((v36 & 0xFFFFFFFFFFFFFFF8) + 16);
      }

      else
      {
        v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
      }

      v31 = sub_239EED8A0(v30, &v38, &v37);
      if ((v36 & 7) != 0)
      {
        atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if (v31)
      {
        sub_239EEDA7C(v23, v38, v35, &v39, a4);
      }

      if ((BYTE8(v40) & 7) != 0)
      {
        atomic_fetch_add_explicit((*(&v40 + 1) & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(&v40);
      if (*(&v39 + 1))
      {
        sub_239E5E560(*(&v39 + 1));
      }

      v25 += 32;
    }

    while (v26 + 32 != v24);
  }

  *&v39 = &v41;
  sub_239E61AB0(&v39);

  return v23;
}

void sub_239EF15E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  a15 = &a20;
  sub_239E61AB0(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_239EF16D8(uint64_t a1, uint64_t a2)
{
  sub_239EF4454(&v6, a2 + 96, *(a1 + 8), a2);
  sub_239EF210C(a1, v4);
  return a2;
}

void sub_239EF1724(void *a1@<X1>, _DWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  v8[1] = 0;
  v8[2] = 0;
  pxrInternal__aapl__pxrReserved__::UsdSchemaBase::UsdSchemaBase();
  v8[0] = MEMORY[0x277D866A8] + 16;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 336) = 0u;
  *(a3 + 352) = 0u;
  *(a3 + 368) = 0u;
  *(a3 + 384) = 0u;
  *(a3 + 400) = 0u;
  *(a3 + 416) = 0u;
  *(a3 + 432) = 0u;
  *(a3 + 448) = 0u;
  v6 = sub_239E5DFB4(a2);
  sub_239E5BA20(a3, v6);
  pxrInternal__aapl__pxrReserved__::UsdGeomMesh::GetSubdivisionSchemeAttr(&v7, v8);
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::TfToken>();
}

void sub_239EF1B04(void *a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t a5, void *a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v11 = a3;
  v12 = a6;
  v13 = *(a2 + 64);
  *(a2 + 26) = 1;
  memset(v14, 0, sizeof(v14));
  sub_239EF1724(v11, a4, v14);
}

void sub_239EF1F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if ((a34 & 7) != 0)
  {
    atomic_fetch_add_explicit((a34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  MEMORY[0x23EE7E550](&a35);
  sub_239EF2A80(&a39);

  _Unwind_Resume(a1);
}

unint64_t sub_239EF1FFC(unint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a2)
  {
    if (a2 != result)
    {
      v3 = (a2 - 1);
      if (a2 - 1 > result)
      {
        while (*v3 != a3)
        {
          if (--v3 == result)
          {
            goto LABEL_8;
          }
        }

        result = v3;
      }
    }

LABEL_8:
    ++result;
  }

  return result;
}

void sub_239EF2044(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EF2098(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239EF2098(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 32)
  {
    v7 = (i - 24);
    sub_239EC8004(&v7);
    v6 = *(i - 32);
    v5 = v6;
    if ((v6 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  *(a1 + 8) = a2;
}

uint64_t sub_239EF210C(uint64_t result, void *a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_239E63168(v3, i))
  {
    i -= 12;
  }

  *(v3 + 8) = a2;
  return result;
}

void *sub_239EF2160(void *a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 != a2)
  {
    if (a2[1])
    {
      v8 = 0;
      v9 = 0;
      sub_239E5B3EC(&v8, a1);
      v4 = a2[1];
      v5 = ~*(a2 + 2);
      a1[1] = v4;
      if ((v5 & 3) != 0)
      {
        (*((v4 & 0xFFFFFFFFFFFFFFF8) + 24))(a2, a1);
      }

      else
      {
        *a1 = *a2;
      }

      if (v9)
      {
        (*(v9 + 32))(&v8);
      }
    }

    else
    {
      sub_239F745EC(a1);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_239EF2230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11)
{
  if (a11)
  {
    (*(a11 + 32))(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF2270(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 5)
  {
    sub_239EF238C(a1);
    if (!(a4 >> 59))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 4;
      if (v9 >> 4 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFE0)
      {
        v11 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_239EF23CC(a1, v11);
    }

    sub_239E797B4();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 5)
  {
    sub_239EF25FC(&v15, a2, a3, v8);
    sub_239EF2098(a1, v13);
  }

  else
  {
    sub_239EF25FC(&v14, a2, (a2 + v12), v8);
    *(a1 + 8) = sub_239EF2408(a1, (a2 + v12), a3, *(a1 + 8));
  }
}

void sub_239EF238C(uint64_t *a1)
{
  if (*a1)
  {
    sub_239EF2098(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_239EF23CC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_239EF28B4(a1, a2);
  }

  sub_239E797B4();
}

uint64_t *sub_239EF2408(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_239EF24B0(a1, v4, v6);
      v6 += 4;
      v4 = v12 + 4;
      v12 += 4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_239EF2540(v9);
  return v4;
}

uint64_t sub_239EF24B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  *a2 = *a3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *a2 &= 0xFFFFFFFFFFFFFFF8;
  }

  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  return sub_239EC7E90((a2 + 1), a3[1], a3[2], 0xAAAAAAAAAAAAAAABLL * ((a3[2] - a3[1]) >> 5));
}

uint64_t sub_239EF2540(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EF258C(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_239EF258C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v11[5] = v5;
    v11[6] = v6;
    v8 = a3;
    do
    {
      v11[0] = (v8 - 24);
      sub_239EC8004(v11);
      v10 = *(v8 - 32);
      v8 -= 32;
      v9 = v10;
      if ((v10 & 7) != 0)
      {
        atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }
    }

    while (v8 != a5);
  }
}

void *sub_239EF25FC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_239E5BA20(a4, v5);
      if (v5 != a4)
      {
        sub_239EF2684((a4 + 1), v5[1], v5[2], 0xAAAAAAAAAAAAAAABLL * ((v5[2] - v5[1]) >> 5));
      }

      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_239EF2684(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    sub_239EF27D0(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_239EC7F18(a1, v10);
    }

    sub_239E797B4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_239EF2810(&v15, a2, a3, v8);
    return sub_239EF210C(a1, v13);
  }

  else
  {
    sub_239EF2810(&v14, a2, a2 + v11, v8);
    result = sub_239EC7F64(a1, a2 + v11, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void sub_239EF27D0(void **a1)
{
  if (*a1)
  {
    sub_239EF210C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_239EF2810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_239EF2160(a4, v5);
    sub_239EB3650(a4 + 16, (v5 + 16));
    sub_239E5BA20((a4 + 56), (v5 + 56));
    sub_239E5BA20((a4 + 64), (v5 + 64));
    *(a4 + 72) = *(v5 + 72);
    sub_239E5BA20((a4 + 80), (v5 + 80));
    *(a4 + 88) = *(v5 + 88);
    a4 += 96;
    v5 += 96;
  }

  while (v5 != v6);
  return v6;
}

void sub_239EF28B4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EF28FC(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  v1 = *(a1 + 1);
  if (!v1)
  {
    return 0;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFFF8) + 16) == 12)
  {
    return 1;
  }

  if ((v1 & 4) != 0)
  {
    return pxrInternal__aapl__pxrReserved__::VtValue::_TypeIsImpl(a1, &stru_284D17670);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_239EF2934(pxrInternal__aapl__pxrReserved__::VtValue *a1)
{
  if (sub_239EF28FC(a1))
  {
    v2 = *(a1 + 1);
    if ((v2 & 4) != 0)
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFFF8) + 168);

      return v4(a1);
    }

    else
    {
      return *a1;
    }
  }

  else
  {

    return MEMORY[0x282207DB0](a1, sub_239EF29C8, &stru_284D17670);
  }
}

uint64_t sub_239EF2A24(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EF2A80(uint64_t a1)
{
  v4 = (a1 + 440);
  sub_239EF2B94(&v4);
  sub_239E56C80(a1 + 400);
  sub_239E56C80(a1 + 360);
  sub_239E56C80(a1 + 320);
  sub_239E56C80(a1 + 280);
  sub_239E56C80(a1 + 240);
  v2 = *(a1 + 232);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  sub_239E56C80(a1 + 192);
  sub_239E56C80(a1 + 152);
  sub_239E56C80(a1 + 112);

  sub_239E5B240(a1 + 72);
  sub_239E5B240(a1 + 56);
  v4 = (a1 + 32);
  sub_239EF2044(&v4);
  v4 = (a1 + 8);
  sub_239EC8004(&v4);
  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void sub_239EF2B94(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 56;
        sub_239EF2C1C(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_239EF2C50(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();

  return sub_239E5B574(a2);
}

uint64_t sub_239EF2C90(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    v2 = j__strrchr("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", 47);
    sub_239EF1FFC("/AppleInternal/Library/BuildRoots/4~B_v6ugBQ30mPoOJpFY6Mvy8YBJ4c54SMfX5Td4U/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/usd/pxr/base/tf/refPtr.h", v2, 0x2Fu);
    v3 = pxrInternal__aapl__pxrReserved__::Tf_PostNullSmartPtrDereferenceFatalError();
    return sub_239EF2D08(v3);
  }

  return result;
}

char *sub_239EF2D08(char *result, uint64_t a2, char *a3, char *a4, const std::locale **a5, uint64_t a6, uint64_t a7)
{
  if (a4 != a3)
  {
    if (a2 - result >= a4 - a3)
    {
      return sub_239EF2D4C(result, a2, a3, a4, a5, a6, a7, a2 - result, a4 - a3);
    }

    else
    {
      return a2;
    }
  }

  return result;
}

char *sub_239EF2D4C(char *a1, uint64_t a2, char *a3, char *a4, const std::locale **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = &a1[a8 - a9 + 1];
  if (v10 != a1)
  {
    v14 = a1;
    v15 = a3 + 1;
    while (!sub_239EF2E14(a5, *v14, *a3))
    {
LABEL_7:
      if (++v14 == v10)
      {
        return a2;
      }
    }

    v16 = v14 + 1;
    v17 = v15;
    while (v17 != a4)
    {
      v19 = *v16++;
      v18 = v19;
      v20 = *v17++;
      if (!sub_239EF2E14(a5, v18, v20))
      {
        goto LABEL_7;
      }
    }

    return v14;
  }

  return a2;
}

BOOL sub_239EF2E14(const std::locale **a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D82680];
  v7 = std::locale::use_facet(*a1, MEMORY[0x277D82680]);
  LODWORD(a2) = (v7->__vftable[1].~facet)(v7, a2);
  v8 = std::locale::use_facet(*a1, v6);
  return a2 == (v8->__vftable[1].~facet)(v8, a3);
}

uint64_t sub_239EF2F8C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 47) < 0)
    {
      operator delete(*(result + 24));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

BOOL sub_239EF2FF8(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

unint64_t sub_239EF3070(_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t sub_239EF3168(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t sub_239EF3214(void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void sub_239EF32D4(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_239EF3390(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EF3468(uint64_t a1)
{
  v40 = (a1 + 304);
  sub_239E878AC(&v40);
  v2 = *(a1 + 296);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v3 = *(a1 + 288);
  if ((v3 & 7) != 0)
  {
    atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v4 = *(a1 + 280);
  if ((v4 & 7) != 0)
  {
    atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v5 = *(a1 + 272);
  if ((v5 & 7) != 0)
  {
    atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v6 = *(a1 + 264);
  if ((v6 & 7) != 0)
  {
    atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v7 = *(a1 + 256);
  if ((v7 & 7) != 0)
  {
    atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v8 = *(a1 + 248);
  if ((v8 & 7) != 0)
  {
    atomic_fetch_add_explicit((v8 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v9 = *(a1 + 240);
  if ((v9 & 7) != 0)
  {
    atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v10 = *(a1 + 232);
  if ((v10 & 7) != 0)
  {
    atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v11 = *(a1 + 224);
  if ((v11 & 7) != 0)
  {
    atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v12 = *(a1 + 216);
  if ((v12 & 7) != 0)
  {
    atomic_fetch_add_explicit((v12 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v13 = *(a1 + 208);
  if ((v13 & 7) != 0)
  {
    atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v14 = *(a1 + 200);
  if ((v14 & 7) != 0)
  {
    atomic_fetch_add_explicit((v14 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v15 = *(a1 + 192);
  if ((v15 & 7) != 0)
  {
    atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v16 = *(a1 + 184);
  if ((v16 & 7) != 0)
  {
    atomic_fetch_add_explicit((v16 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v17 = *(a1 + 176);
  if ((v17 & 7) != 0)
  {
    atomic_fetch_add_explicit((v17 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v18 = *(a1 + 168);
  if ((v18 & 7) != 0)
  {
    atomic_fetch_add_explicit((v18 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v19 = *(a1 + 160);
  if ((v19 & 7) != 0)
  {
    atomic_fetch_add_explicit((v19 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v20 = *(a1 + 152);
  if ((v20 & 7) != 0)
  {
    atomic_fetch_add_explicit((v20 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v21 = *(a1 + 144);
  if ((v21 & 7) != 0)
  {
    atomic_fetch_add_explicit((v21 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v22 = *(a1 + 136);
  if ((v22 & 7) != 0)
  {
    atomic_fetch_add_explicit((v22 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v23 = *(a1 + 128);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v24 = *(a1 + 120);
  if ((v24 & 7) != 0)
  {
    atomic_fetch_add_explicit((v24 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v25 = *(a1 + 112);
  if ((v25 & 7) != 0)
  {
    atomic_fetch_add_explicit((v25 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v26 = *(a1 + 104);
  if ((v26 & 7) != 0)
  {
    atomic_fetch_add_explicit((v26 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v27 = *(a1 + 96);
  if ((v27 & 7) != 0)
  {
    atomic_fetch_add_explicit((v27 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v28 = *(a1 + 88);
  if ((v28 & 7) != 0)
  {
    atomic_fetch_add_explicit((v28 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v29 = *(a1 + 80);
  if ((v29 & 7) != 0)
  {
    atomic_fetch_add_explicit((v29 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v30 = *(a1 + 72);
  if ((v30 & 7) != 0)
  {
    atomic_fetch_add_explicit((v30 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v31 = *(a1 + 64);
  if ((v31 & 7) != 0)
  {
    atomic_fetch_add_explicit((v31 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v32 = *(a1 + 56);
  if ((v32 & 7) != 0)
  {
    atomic_fetch_add_explicit((v32 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v33 = *(a1 + 48);
  if ((v33 & 7) != 0)
  {
    atomic_fetch_add_explicit((v33 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v34 = *(a1 + 40);
  if ((v34 & 7) != 0)
  {
    atomic_fetch_add_explicit((v34 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v35 = *(a1 + 32);
  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v36 = *(a1 + 24);
  if ((v36 & 7) != 0)
  {
    atomic_fetch_add_explicit((v36 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v37 = *(a1 + 16);
  if ((v37 & 7) != 0)
  {
    atomic_fetch_add_explicit((v37 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  v38 = *(a1 + 8);
  if ((v38 & 7) != 0)
  {
    atomic_fetch_add_explicit((v38 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*a1 & 7) != 0)
  {
    atomic_fetch_add_explicit((*a1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  return a1;
}

void *sub_239EF3834(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_239EF38C0(result, a2);
  }

  return result;
}

void sub_239EF38A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF38C0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_239EF38FC(a1, a2);
  }

  sub_239E797B4();
}

void sub_239EF38FC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EF3944(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_239E797B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_239EF28B4(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_239EF24B0(a1, (32 * v2), a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = (32 * v2 + *a1 - v8);
  sub_239EF3A58(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_239EF3B80(&v14);
  return v13;
}

void sub_239EF3A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239EF3B80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239EF3A58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v7 = a4;
  v6[0] = a1;
  v6[1] = &v7;
  v6[2] = &v8;
  if (a2 != a3)
  {
    v4 = a2;
    do
    {
      *a4 = *v4;
      *v4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 0;
      *(a4 + 1) = *(v4 + 8);
      a4[3] = *(v4 + 24);
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      v4 += 32;
      a4 += 4;
    }

    while (v4 != a3);
    v8 = a4;
  }

  v6[3] = 1;
  sub_239EF3B0C(a1, a2, a3);
  return sub_239EF2540(v6);
}

void sub_239EF3B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v7[5] = v3;
    v7[6] = v4;
    v6 = a2;
    do
    {
      v7[0] = (v6 + 8);
      sub_239EC8004(v7);
      if ((*v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 += 32;
    }

    while (v6 != a3);
  }
}

uint64_t sub_239EF3B80(uint64_t a1)
{
  sub_239EF3BB8(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239EF3BB8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    v6 = (i - 24);
    sub_239EC8004(&v6);
    v5 = *(i - 32);
    if ((v5 & 7) != 0)
    {
      atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }
}

uint64_t *sub_239EF3C34(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *a2 = *result;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 40), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t *sub_239EF3C54(uint64_t *result, uint64_t *a2)
{
  *a2 = *result;
  *result = 0;
  return sub_239EF3DF8(result);
}

unint64_t sub_239EF3C6C(uint64_t *a1)
{
  v1 = *a1;
  v3[1] = 1;
  v3[0] = *v1;
  pxrInternal__aapl__pxrReserved__::Tf_HashState::_AppendBytes(v3, *(v1 + 32));
  return bswap64(0x9E3779B97F4A7C55 * v3[0]);
}

uint64_t sub_239EF3CEC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 32);
  pxrInternal__aapl__pxrReserved__::VtStreamOutArray();
  return a2;
}

void sub_239EF3DE0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  *(a2 + 8) = &off_284D15780;
  sub_239EC8A68();
}

uint64_t *sub_239EF3DF8(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add_explicit((v1 + 40), 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    sub_239E56C80(v1);

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

uint64_t sub_239EF3E70(uint64_t *a1)
{
  v1 = atomic_load((*a1 + 40));
  if (v1 != 1)
  {
    v2 = *a1;
    sub_239EC89EC();
  }

  return *a1;
}

void sub_239EF3ED8(void *a1)
{
  v1 = **a1;
  *a1 += 4;
  JUMPOUT(0x23EE80150);
}

void sub_239EF3EF0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EF3F44(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_239EF3F44(void *result)
{
  v1 = result;
  v3 = *result;
  v2 = result[1];
  if (v2 != *result)
  {
    v4 = v2 - 12;
    do
    {
      v5 = *(v4 + 4);
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL();
      sub_239E5B574(v4 - 4);
      result = *(v4 - 12);
      if (result)
      {
        result = sub_239E5E560(result);
      }

      v6 = v4 - 20;
      v4 -= 32;
    }

    while (v6 != v3);
  }

  v1[1] = v3;
  return result;
}

uint64_t sub_239EF3FC8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  *v3 = *a2;
  if ((v4 & 7) != 0 && (atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v3 &= 0xFFFFFFFFFFFFFFF8;
  }

  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0;
  result = sub_239EC7E90((v3 + 1), a2[1], a2[2], 0xAAAAAAAAAAAAAAABLL * ((a2[2] - a2[1]) >> 5));
  *(a1 + 8) = v3 + 4;
  return result;
}

uint64_t sub_239EF406C(uint64_t *a1, uint64_t *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_239E797B4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_239EF28B4(a1, v7);
  }

  v8 = (32 * v2);
  v16 = 0;
  v17 = v8;
  v18 = v8;
  v9 = *a2;
  *v8 = *a2;
  if ((v9 & 7) != 0 && (atomic_fetch_add_explicit((v9 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *v8 &= 0xFFFFFFFFFFFFFFF8;
  }

  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  sub_239EC7E90((v8 + 1), a2[1], a2[2], 0xAAAAAAAAAAAAAAABLL * ((a2[2] - a2[1]) >> 5));
  *&v18 = v18 + 32;
  v10 = a1[1];
  v11 = (v17 + *a1 - v10);
  sub_239EF3A58(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_239EF3B80(&v16);
  return v15;
}

void sub_239EF41B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_239EF3B80(va);
  _Unwind_Resume(a1);
}

void sub_239EF41E4(uint64_t a1, _DWORD *a2)
{
  if (!*(a1 + 8))
  {
    v4 = *a1;
    if (!*(a1 + 24))
    {
      v5 = *(a1 + 32);
      if (!v5)
      {
        goto LABEL_10;
      }

      v6 = atomic_load((v5 - 16));
      if (v6 != 1)
      {
        goto LABEL_14;
      }

      v5 = *(a1 + 32);
      if (v5)
      {
        if (*(a1 + 24))
        {
          v7 = a1;
        }

        else
        {
          v7 = (v5 - 8);
        }

        v8 = *v7;
      }

      else
      {
LABEL_10:
        v8 = 0;
      }

      if (v4 != v8)
      {
        *(v5 + 4 * v4) = *a2;
LABEL_13:
        ++*a1;
        return;
      }
    }

LABEL_14:
    sub_239F746A0(a1);
    goto LABEL_13;
  }

  sub_239F74634(a1);
}

void *sub_239EF42E4(void *result)
{
  if (result)
  {
    if ((*result & 7) != 0)
    {
      atomic_fetch_add_explicit((*result & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    JUMPOUT(0x23EE802C0);
  }

  return result;
}

void *sub_239EF4318(void *a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_239EC7A30(a1, v4, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

id sub_239EF4398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v4 = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  *(a2 + 8) = v4;
  v5 = *(a3 + 40);
  *(a2 + 40) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 32))
    {
      v6 = *(a2 + 32);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  result = *(a3 + 48);
  *(a2 + 48) = result;
  return result;
}

void sub_239EF4400(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 56;
      sub_239EF2C1C(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_239EF4454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  v7 = 0;
  do
  {
    v8 = a4 + v7;
    v9 = a2 + v7;
    sub_239EC8B1C((a4 + v7), (a2 + v7));
    if (a4 == a2)
    {
      *(v8 + 72) = *(v9 + 72);
    }

    else
    {
      sub_239E56C80(v8 + 16);
      v10 = *(v9 + 32);
      *(v8 + 16) = *(v9 + 16);
      *(v8 + 32) = v10;
      *(v9 + 16) = 0u;
      *(v9 + 32) = 0u;
      *(v8 + 48) = *(v9 + 48);
      *(v9 + 48) = 0;
      v11 = *(v8 + 56);
      if ((v11 & 7) != 0)
      {
        atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      *(v8 + 56) = *(v9 + 56);
      *(v9 + 56) = 0;
      v12 = (a4 + v7);
      v13 = *(a4 + v7 + 64);
      if ((v13 & 7) != 0)
      {
        atomic_fetch_add_explicit((v13 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v14 = a2 + v7;
      v12[8] = *(a2 + v7 + 64);
      *(a2 + v7 + 64) = 0;
      v12[9] = *(a2 + v7 + 72);
      v15 = v12[10];
      if ((v15 & 7) != 0)
      {
        atomic_fetch_add_explicit((v15 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v12[10] = *(v14 + 80);
      *(v14 + 80) = 0;
    }

    *(v8 + 88) = *(v9 + 88);
    v7 += 96;
  }

  while (v9 + 96 != v6);
  return v6;
}

void sub_239EF459C(void *a1, void *a2, uint64_t a3, __n128 a4)
{
  if (a2[2])
  {
    v5 = *(a2[1] + 16);
    operator new();
  }

  v6 = a1[9];
  v7 = a1[10];
  if (v6 != v7)
  {
    a4.n128_u64[0] = 0x7F0000007FLL;
    v8 = vneg_f32(0x7F0000007FLL);
    do
    {
      v20 = *v6;
      sub_239F372BC(v20, a4);
      sub_239F37070(v20);
      sub_239F37C10(v20);
      a4.n128_u64[0] = vcge_s32((v20[4] & 0x7FFFFFFF7FFFFFFFLL), v8);
      if ((a4.n128_u32[0] | a4.n128_u32[1]))
      {
        sub_239E9BFD8((a1 + 12), &v20);
      }

      ++v6;
    }

    while (v6 != v7);
  }

  v9 = a1[12];
  v10 = a1[13];
  if (v9 != v10)
  {
    v11 = a1[10];
    do
    {
      v12 = a1[9];
      if (v12 != v11)
      {
        v13 = a1[9];
        while (*v13 != *v9)
        {
          v13 += 8;
          v12 += 8;
          if (v13 == v11)
          {
            v12 = v11;
            break;
          }
        }
      }

      a2 = v12 + 8;
      v14 = v11 - (v12 + 8);
      if (v11 != v12 + 8)
      {
        memmove(v12, a2, v11 - (v12 + 8));
      }

      v11 = &v12[v14];
      a1[10] = &v12[v14];
      ++v9;
    }

    while (v9 != v10);
  }

  v15 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], a2, a3);
  v18 = objc_msgSend_completedUnitCount(v15, v16, v17);
  objc_msgSend_setCompletedUnitCount_(v15, v19, v18 + 6);
}

void *sub_239EF4794(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_239EFAD80(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_239E9876C(v10);
}

void sub_239EF484C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239E9876C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239EF4860(uint64_t result)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(result + 96);
  v25 = *(result + 104);
  if (v1 != v25)
  {
    v2 = result;
    do
    {
      v4 = **v1;
      v3 = (*v1)[1];
      v26 = v1;
      v27 = v3;
      while (v4 != v3)
      {
        v5 = *v4;
        memset(v34, 0, 32);
        sub_239EC3484(v34);
        v32 = 0u;
        v33 = 0u;
        sub_239EC3480(&v32, v5[4], v5[5]);
        v30 = 0u;
        v31 = 0u;
        sub_239EC3480(&v30, v5[5], v5[6]);
        v28 = 0u;
        v29 = 0u;
        sub_239EC3480(&v28, v5[6], v5[4]);
        v6 = sub_239EC34E0(&v32);
        if (v6 < sub_239EC34E0(&v30))
        {
          v8 = v32;
          v7 = v33;
          v32 = v30;
          v33 = v31;
          v30 = v8;
          v31 = v7;
        }

        v9 = sub_239EC34E0(&v32);
        if (v9 < sub_239EC34E0(&v28))
        {
          v11 = v32;
          v10 = v33;
          v32 = v28;
          v33 = v29;
          v28 = v11;
          v29 = v10;
        }

        v12 = sub_239EC34E0(&v30);
        if (v12 < sub_239EC34E0(&v28))
        {
          v14 = v30;
          v13 = v31;
          v30 = v28;
          v31 = v29;
          v28 = v14;
          v29 = v13;
        }

        v15 = 0;
        v47[0] = v32;
        v47[1] = v33;
        v47[2] = v30;
        v47[3] = v31;
        v47[4] = v28;
        v47[5] = v29;
        while (1)
        {
          result = sub_239EC3C28(v5, (v2 + 120), v47[v15], v47[v15 + 1]);
          if (result)
          {
            break;
          }

          v15 += 2;
          if (v15 == 6)
          {
            goto LABEL_21;
          }
        }

        v16 = 0;
        v17 = v5[5];
        v41 = v5[4];
        v42 = v5 + 1;
        v43 = v17;
        v44 = &v5[1].i8[8];
        v45 = v5[6];
        v46 = v5 + 2;
        do
        {
          v18 = 0;
          v19 = *(&v41 + v16 + 16);
          *v19 = *(result + 16);
          v20 = *(result + 80);
          v35 = *(result + 64);
          v21 = *(&v41 + v16);
          v36 = result + 16;
          v37 = v20;
          v38 = result + 24;
          v39 = *(result + 96);
          v40 = result + 32;
          do
          {
            v22 = vsubq_f32(*(&v35 + v18), v21);
            v23 = vmulq_f32(v22, v22);
            if (sqrtf(vaddv_f32(*v23.f32) + v23.f32[2]) < 0.000001)
            {
              *v19 = **(&v35 + v18 + 16);
            }

            v18 += 32;
          }

          while (v18 != 96);
          v16 += 32;
        }

        while (v16 != 96);
LABEL_21:
        ++v4;
        v3 = v27;
      }

      v1 = v26 + 1;
    }

    while (v26 + 1 != v25);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239EF4B0C(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2 == a2)
  {
    goto LABEL_11;
  }

  v4 = 0;
  do
  {
    v5 = v2[2];
    v24 = *(v5 + 64);
    v22 = *(v5 + 80);
    v23 = *(v5 + 96);
    sub_239EC3D28(v5);
    v6 = vsubq_f32(v22, v24);
    v7 = vmulq_f32(v6, v6);
    *&v8 = vaddv_f32(*v7.f32) + v7.f32[2];
    *v7.f32 = vrsqrte_f32(v8);
    *v7.f32 = vmul_f32(vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)), *v7.f32);
    v7.i32[0] = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).u32[0];
    v9 = vsubq_f32(v23, v24);
    v10 = vmulq_f32(v9, v9);
    *&v11 = vaddv_f32(*v10.f32) + v10.f32[2];
    *v10.f32 = vrsqrte_f32(v11);
    *v10.f32 = vmul_f32(vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)), *v10.f32);
    v12 = vmulq_n_f32(vmulq_n_f32(vmulq_f32(v9, v6), v7.f32[0]), vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
    if (fabsf(vaddv_f32(*v12.f32) + v12.f32[2]) == 1.0 || sub_239EC361C(v5) < 0.000001)
    {
      v13 = *v2;
      v14 = v2[1];
      *(v13 + 8) = v14;
      *v14 = v13;
      --a2[2];
      operator delete(v2);
      v4 = (v4 + 1);
    }

    else
    {
      v14 = v2[1];
    }

    v2 = v14;
  }

  while (v14 != a2);
  if (!v4)
  {
LABEL_11:
    v16 = MEMORY[0x277D82678];
    v17 = "No bad triangles found.";
    v18 = 23;
  }

  else
  {
    v15 = sub_239E98B94(MEMORY[0x277D82678], "Removed ", 8);
    v16 = MEMORY[0x23EE80140](v15, v4);
    v17 = " bad triangles";
    v18 = 14;
  }

  v19 = sub_239E98B94(v16, v17, v18);
  std::ios_base::getloc((v19 + *(*v19 - 24)));
  v20 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v25);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t sub_239EF4D4C@<X0>(uint64_t *a1@<X1>, void *a2@<X8>)
{
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  memset(v13, 0, sizeof(v13));
  v14 = 1065353216;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v4 = a1[1];
  if (v4 != a1)
  {
    do
    {
      v12 = v4[2];
      v5 = sub_239EFADF4(v15, v12);
      v6 = v12;
      v17 = v12;
      if (v5)
      {
        v7 = sub_239EFAEF0(v15, v12);
        v12[16].i64[1] = v7[18].i64[0];
        sub_239E9CEF0(v13, &v12);
        sub_239E9BFD8(a2, &v12);
      }

      else
      {
        sub_239EFAEF0(v15, v12)[18].i64[0] = v6;
      }

      v4 = v4[1];
    }

    while (v4 != a1);
    v4 = a1[1];
  }

  if (v4 != a1)
  {
    do
    {
      v8 = sub_239E9F610(v13, v4 + 2);
      v9 = v4[1];
      if (v8)
      {
        v10 = *v4;
        *(v10 + 8) = v9;
        *v9 = v10;
        --a1[2];
        operator delete(v4);
      }

      v4 = v9;
    }

    while (v9 != a1);
  }

  sub_239E7B644(v13);
  return sub_239E7B644(v15);
}

void sub_239EF4EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  sub_239E7B644(va);
  sub_239E7B644(va1);
  _Unwind_Resume(a1);
}

void sub_239EF4EDC(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = 126 - 2 * __clz((v3 - v2) >> 3);
  v32 = sub_239EF5118;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_239E9E154(v2, v3, &v32, v5, 1);
  v6 = *(*(a1 + 72) + (((*(a1 + 80) - *(a1 + 72)) >> 1) & 0xFFFFFFFFFFFFFFF8));
  v7 = sub_239F37B70(v6);
  v8 = sub_239F37BB8(v6);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v11 = v10 - v9;
  if (v10 != v9)
  {
    v12 = 0;
    v13 = v8 * (1.0 / v7);
    __asm { FMOV            V10.2S, #1.0 }

    v19 = vneg_f32(0x7F0000007FLL);
    do
    {
      v31 = *(v9 + 8 * v12);
      v20 = sub_239F37B70(v31);
      v22 = v20 / sub_239F37BB8(v31);
      if (v12 > v11 >> 3)
      {
        v22 = sqrtf(sub_239F37B70(*(*(a1 + 72) + v11)) / v20) * v22;
      }

      *v21.i32 = sqrtf(v13 * v22);
      sub_239F37014(v31, vdup_lane_s32(v21, 0));
      v23 = v31;
      v31[8] = _D10;
      v24 = vcge_s32((v23[4] & 0x7FFFFFFF7FFFFFFFLL), v19);
      if ((v24.i32[0] | v24.i32[1]))
      {
        sub_239E9BFD8(&v32, &v31);
      }

      ++v12;
      v9 = *(a1 + 72);
    }

    while (v12 < (*(a1 + 80) - v9) >> 3);
    v25 = v32;
    v26 = v33;
    if (v32 != v33)
    {
      do
      {
        v31 = *v25;
        sub_239E9BFD8(a1 + 96, &v31);
        v28 = *(a1 + 72);
        v27 = *(a1 + 80);
        if (v28 != v27)
        {
          v29 = *(a1 + 72);
          while (*v29 != v31)
          {
            ++v29;
            ++v28;
            if (v29 == v27)
            {
              v28 = *(a1 + 80);
              break;
            }
          }
        }

        v30 = (v27 - (v28 + 1));
        if (v27 != v28 + 1)
        {
          memmove(v28, v28 + 1, v27 - (v28 + 1));
        }

        *(a1 + 80) = &v30[v28];
        ++v25;
      }

      while (v25 != v26);
      v25 = v32;
    }

    if (v25)
    {
      v33 = v25;
      operator delete(v25);
    }
  }
}

void sub_239EF50F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_239EF5158(float32x4_t ***a1, float a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0.0;
  while (v3 != v4)
  {
    v6 = *v3;
    sub_239EC361C(*v3);
    v5 = sub_239EC361C(v6) + v5;
    ++v3;
  }

  return sqrtf(v5 / ((dword_27DF912CC * dword_27DF912CC) * a2));
}

void sub_239EF51E0(int a1@<W0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>, __n128 a5@<Q0>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_239EFB1FC(a4, a1);
  if ((atomic_load_explicit(&qword_27DF91298, memory_order_acquire) & 1) == 0)
  {
    sub_239F74714();
  }

  if ((atomic_load_explicit(&qword_27DF912A0, memory_order_acquire) & 1) == 0)
  {
    sub_239F74760();
  }

  v9 = sqrt(a1);
  if (v9)
  {
    v10 = 0;
    v11 = a5;
    v11.n128_u32[3] = 0;
    v40 = v11;
    v12 = dword_27DF91290;
    v13 = *&dword_27DF91294 * 4.6566e-10;
    if ((v9 * v9) <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = (v9 * v9);
    }

    v15 = 1.0 / v9;
    do
    {
      if (a3)
      {
        v16 = 48271 * (v12 % 0xADC8);
        v17 = 3399 * (v12 / 0xADC8);
        v18 = v16 >= v17;
        v19 = v16 - v17;
        if (v18)
        {
          v20 = 0;
        }

        else
        {
          v20 = 0x7FFFFFFF;
        }

        v21 = v20 + v19;
        v22 = (v21 - 1);
        v23 = v21 / 0xADC8;
        v24 = 48271 * (v21 % 0xADC8);
        v23 *= 3399;
        v18 = v24 >= v23;
        v25 = v24 - v23;
        if (v18)
        {
          v26 = 0;
        }

        else
        {
          v26 = 0x7FFFFFFF;
        }

        v12 = v26 + v25;
        dword_27DF91290 = v26 + v25;
        v27 = (v10 % v9) + (v13 * v22);
        v28 = (v10 / v9) + (v13 * (v26 + v25 - 1));
      }

      else
      {
        v27 = (v10 % v9) + 0.5;
        v28 = (v10 / v9) + 0.5;
      }

      v29 = (v27 * v15) * 6.28318531;
      v30 = acosf(((v28 + v28) * v15) + -1.0);
      v31 = __sincosf_stret(v30);
      v32 = __sincosf_stret(v29);
      v33.f32[0] = v32.__cosval * v31.__sinval;
      v33.f32[1] = v32.__sinval * v31.__sinval;
      v33.i64[1] = LODWORD(v31.__cosval);
      v34 = vmulq_f32(v33, v33);
      *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v34.i32[0] = vadd_f32(*v34.i8, vdup_lane_s32(*v34.i8, 1)).u32[0];
      v35 = vrsqrte_f32(v34.u32[0]);
      v36 = vmul_f32(vrsqrts_f32(v34.u32[0], vmul_f32(v35, v35)), v35);
      v37 = vmulq_n_f32(v33, vmul_f32(v36, vrsqrts_f32(v34.u32[0], vmul_f32(v36, v36))).f32[0]);
      if (a2)
      {
        v38 = vmulq_f32(v37, v40);
        if (vaddv_f32(vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL))) < 0.0)
        {
          v37 = vnegq_f32(v37);
        }
      }

      *(*a4 + 16 * v10++) = v37;
    }

    while (v14 != v10);
  }
}

float sub_239EF5468(float32x4_t a1, __n128 a2, float a3, uint64_t a4, uint64_t **a5, int a6, int a7)
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v8 = 1.0;
  if (a3 <= 1.0)
  {
    v8 = a3;
  }

  if (v8 >= 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = sqrt(a6);
  v11 = v10 * v10;
  sub_239EF51E0(v11, 1, a7, &v30, a2);
  v12 = v30;
  v13 = v31;
  if (v30 != v31)
  {
    v27 = v11;
    v28 = vdupq_n_s32(0x38D1B717u);
    __asm { FMOV            V10.2S, #1.0 }

    do
    {
      v19 = vmlaq_f32(a1, v28, *v12);
      v21 = *a5;
      v20 = a5[1];
      while (v21 != v20)
      {
        v22 = *v21;
        v23 = v21[1];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v39 = 0u;
        v37 = 0u;
        v38 = 0u;
        v33 = 0u;
        LODWORD(v33) = 2139095039;
        v40 = 0uLL;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        *&v37 = 0;
        sub_239E879CC(v22);
        if (v37 && *&v33 < ((v9 * -50.0) + 50.5))
        {
          ++v32;
          if (v23)
          {
            sub_239E9A9B4(v23);
          }

          break;
        }

        if (v23)
        {
          sub_239E9A9B4(v23);
        }

        v21 += 2;
      }

      ++v12;
    }

    while (v12 != v13);
    v12 = v30;
    v11 = v27;
  }

  if (v12)
  {
    v31 = v12;
    operator delete(v12);
  }

  v24 = powf(1.0 - ((v11 - v32) / v11), (v9 * 2.0) + 1.0);
  v25 = *MEMORY[0x277D85DE8];
  return 1.0 - v24;
}

double sub_239EF56F4(uint64_t **a1, uint64_t **a2, uint64_t a3, float32x4_t a4, __n128 a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v28 = a1[1];
  if (*a1 != v28)
  {
    v34 = a4;
    __asm { FMOV            V10.2S, #1.0 }

    a4.i64[1] = 0;
    v32 = 0u;
    while (1)
    {
      v31 = v5;
      v35 = *v5;
      v11 = *(*v5 + 24);
      a4.i64[0] = 0;
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          a4.f32[0] = sub_239EF5468(v34, a5, 0.15, a1, a2, 121, 1);
          goto LABEL_28;
        }

        if (v11 == 3)
        {
LABEL_17:
          v19 = 0;
          for (i = 0; i != 60; ++i)
          {
            *a4.i64 = (*(*v35 + 32))(v35, a4);
            v22 = *a2;
            v21 = a2[1];
            if (*a2 != v21)
            {
              do
              {
                v23 = *v22;
                v24 = v22[1];
                if (v24)
                {
                  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_239E879CC(v23);
                a4.i32[0] = 2139095039;
                if (v24)
                {
                  sub_239E9A9B4(v24);
                }

                v22 += 2;
              }

              while (v22 != v21);
            }

            ++v19;
          }

          v18 = v19;
          goto LABEL_26;
        }
      }

      else
      {
        if (!v11)
        {
          goto LABEL_17;
        }

        if (v11 == 1)
        {
          v12 = 0;
          for (j = 0; j != 60; ++j)
          {
            sub_239EE97A8(v35, a2, a3, 0.05);
            v14 = *a2;
            v15 = a2[1];
            if (*a2 != v15)
            {
              do
              {
                v16 = *v14;
                v17 = v14[1];
                if (v17)
                {
                  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_239E879CC(v16);
                if (v17)
                {
                  sub_239E9A9B4(v17);
                }

                v14 += 2;
              }

              while (v14 != v15);
            }

            ++v12;
          }

          v18 = v12;
LABEL_26:
          a4.f32[0] = v18 * 0.016667;
        }
      }

LABEL_28:
      v30 = a4.f32[0];
      *a4.i64 = (*(*v35 + 40))(v35, v34, a5);
      v32 = vmlaq_n_f32(v32, a4, v30);
      v5 = v31 + 1;
      if (v31 + 1 == v28)
      {
        goto LABEL_31;
      }
    }
  }

  v32 = 0u;
LABEL_31:
  v25 = *MEMORY[0x277D85DE8];
  v26 = v32;
  v26.i32[3] = 0;
  *&result = vminnmq_f32(v26, xmmword_239F9BA10).u64[0];
  return result;
}

void sub_239EF5BA8(void *a1@<X0>, void *a2@<X8>, float32x4_t a3@<Q0>, float32x4_t a4@<Q1>, float32x4_t a5@<Q2>, float32x4_t a6@<Q3>)
{
  v117 = *MEMORY[0x277D85DE8];
  v87 = a1;
  v9 = objc_msgSend_transform(v87, v7, v8);
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  v86 = v9;
  if (v9)
  {
    objc_msgSend_matrix(v9, v10, v11);
    v12 = 0;
    *__p = v13;
    v108 = v14;
    v109 = v15;
    v110 = v16;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    do
    {
      *(&v113 + v12 * 8) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*&__p[v12])), a4, __p[v12], 1), a5, *&__p[v12], 2), a6, *&__p[v12], 3);
      v12 += 2;
    }

    while (v12 != 8);
    a4 = v114;
    a3 = v113;
    a6 = v116;
    a5 = v115;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v85 = v87;
    if (objc_msgSend_makeVerticesUniqueAndReturnError_(v85, v19, 0))
    {
      v21 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v85, v20, @"position", 786435);
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      obj = objc_msgSend_submeshes(v85, v22, v23);
      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v103, v112, 16);
      if (!v90)
      {
        goto LABEL_27;
      }

      v89 = *v104;
      v93 = a2;
      while (1)
      {
        for (i = 0; i != v90; ++i)
        {
          if (*v104 != v89)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v103 + 1) + 8 * i);
          v28 = objc_msgSend_indexBuffer(v27, v25, v26);
          v91 = objc_msgSend_map(v28, v29, v30);

          v94 = objc_msgSend_bytes(v91, v31, v32);
          __p[0] = 0;
          __p[1] = 0;
          *&v108 = 0;
          if (objc_msgSend_geometryType(v27, v33, v34) != 2 || objc_msgSend_indexType(v27, v35, v36) != 32)
          {
            v37 = objc_msgSend_indexCount(v27, v35, v36);
            sub_239EB2474(__p, v37);
            if (objc_msgSend_geometryType(v27, v38, v39) != 5)
            {
              goto LABEL_18;
            }

            v42 = objc_msgSend_topology(v27, v40, v41);
            if (!v42)
            {
              v62 = 0;
              v54 = 0;
              goto LABEL_20;
            }

            v43 = objc_msgSend_topology(v27, v40, v41);
            v46 = objc_msgSend_faceTopology(v43, v44, v45);
            v47 = v46 == 0;

            if (v47)
            {
LABEL_18:
              v62 = 0;
              v54 = 0;
              v42 = 0;
            }

            else
            {
              v48 = objc_msgSend_topology(v27, v40, v41);
              v51 = objc_msgSend_faceTopology(v48, v49, v50);
              v54 = objc_msgSend_map(v51, v52, v53);

              v42 = objc_msgSend_bytes(v54, v55, v56);
              v59 = objc_msgSend_topology(v27, v57, v58);
              v62 = objc_msgSend_faceCount(v59, v60, v61);
            }

LABEL_20:
            v63 = objc_msgSend_indexCount(v27, v40, v41);
            v66 = objc_msgSend_indexType(v27, v64, v65);
            v69 = objc_msgSend_geometryType(v27, v67, v68);
            sub_239F5960C(__p, v94, v63, v42, v62, v66, v69, 2);
          }

          if (objc_msgSend_indexCount(v27, v35, v36))
          {
            operator new();
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          a2 = v93;
        }

        v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v103, v112, 16);
        if (!v90)
        {
LABEL_27:

          goto LABEL_28;
        }
      }
    }
  }

  else
  {
LABEL_28:
    v70 = objc_msgSend_children(v87, v17, v18);
    v71 = v70;
    if (v70)
    {
      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v72 = v70;
      v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v73, &v99, v111, 16);
      if (v74)
      {
        v75 = *v100;
        do
        {
          for (j = 0; j != v74; ++j)
          {
            if (*v100 != v75)
            {
              objc_enumerationMutation(v72);
            }

            v77 = *(*(&v99 + 1) + 8 * j);
            v113 = 0uLL;
            v114.i64[0] = 0;
            sub_239EF5BA8(&v113, v77, a3, a4, a5, a6);
            v78 = v114.i64[0];
            if (v114.i64[0])
            {
              v79 = v113;
              v80 = *(v113.i64[0] + 8);
              v81 = *v113.i64[1];
              *(v81 + 8) = v80;
              *v80 = v81;
              v82 = *a2;
              *(v82 + 8) = v79.i64[1];
              *v79.i64[1] = v82;
              *a2 = v79.i64[0];
              *(v79.i64[0] + 8) = a2;
              a2[2] += v78;
              v114.i64[0] = 0;
            }

            sub_239E9876C(&v113);
          }

          v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v72, v83, &v99, v111, 16);
        }

        while (v74);
      }
    }
  }

  v84 = *MEMORY[0x277D85DE8];
}

void sub_239EF61F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  sub_239E9876C(v45);

  _Unwind_Resume(a1);
}

uint64_t sub_239EF6350(uint64_t a1)
{
  memset(v2, 0, sizeof(v2));
  v3 = 1065353216;
  if (*a1 != *(a1 + 8))
  {
    sub_239EFB2F4(v2, (**a1 + 64));
    operator new();
  }

  return sub_239EFB274(v2);
}

_BYTE *sub_239EF67A8@<X0>(void *a1@<X0>, int *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  if (!a3[2])
  {
    v30 = "No triangles to map";
LABEL_10:
    result = sub_239E552A0((a4 + 8), v30);
    *a4 = 0;
    return result;
  }

  for (i = a3[1]; i != a3; i = *(i + 8))
  {
    v45 = *(i + 16);
    *&v43[0].__locale_ = 0u;
    v44 = 0u;
    sub_239EC3480(v43, v45[4], v45[5]);
    memset(v42, 0, sizeof(v42));
    sub_239EC3480(v42, v45[4], v45[6]);
    memset(v41, 0, sizeof(v41));
    sub_239EC3480(v41, v45[5], v45[6]);
    v46 = v43;
    v10 = sub_239EFB670(a1 + 15, v43);
    sub_239E9BFD8(&v10[3], &v45);
    v46 = v42;
    v11 = sub_239EFB670(a1 + 15, v42);
    sub_239E9BFD8(&v11[3], &v45);
    v46 = v41;
    v12 = sub_239EFB670(a1 + 15, v41);
    sub_239E9BFD8(&v12[3], &v45);
  }

  sub_239EF459C(a1, a3, a3, a5);
  if (a1[10] == a1[9])
  {
    v30 = "Unable to pack a map for AO baking";
    goto LABEL_10;
  }

  sub_239EF4EDC(a1);
  sub_239EF4860(a1);
  if (*a2 <= 4096)
  {
    __asm { FMOV            V0.2S, #1.0 }

    sub_239EC2CF0(*a2);
    operator new();
  }

  v15 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], v13, v14);
  v18 = objc_msgSend_completedUnitCount(v15, v16, v17);
  objc_msgSend_setCompletedUnitCount_(v15, v19, v18 + 4);

  v20 = sub_239E98B94(MEMORY[0x277D82678], "Fraction completed : ", 21);
  v23 = objc_msgSend_currentProgress(MEMORY[0x277CCAC48], v21, v22);
  objc_msgSend_fractionCompleted(v23, v24, v25);
  v26 = MEMORY[0x23EE80120](v20);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(v43, MEMORY[0x277D82680]);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(v43);
  std::ostream::put();
  std::ostream::flush();

  if (*a2 <= 4096)
  {
    sub_239F3804C(0, v28);
    *&v36 = sub_239F37FFC(0);
    sub_239F37ED4(0, v36, v37, v38, v39, v40);
    *a4 = 0;
    return sub_239E552A0((a4 + 8), "");
  }

  else
  {
    result = sub_239E552A0((a4 + 8), "Too many triangles to pack in a maximum size texture");
    *a4 = 0;
  }

  return result;
}

void sub_239EF6F44(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v118 = *MEMORY[0x277D85DE8];
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v97 = v11;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  v17 = v11;
  v100 = v17;
  if (v12)
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v20 = objc_msgSend_submeshes(v17, v18, v19);
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v112, v117, 16);
    if (v24)
    {
      v25 = *v113;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v113 != v25)
          {
            objc_enumerationMutation(v20);
          }

          v27 = objc_msgSend_material(*(*(&v112 + 1) + 8 * i), v22, v23);
          objc_msgSend_setProperty_(v27, v28, v12);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v112, v117, 16);
      }

      while (v24);
    }

    v17 = v100;
  }

  v29 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v17, v18, v14);
  v32 = v29;
  if (v29)
  {
    if (objc_msgSend_format(v29, v30, v31) == 786435)
    {
      v33 = 1;
      v34 = a6;
      goto LABEL_23;
    }

    v35 = objc_msgSend_format(v32, v30, v31);
    v37 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v100, v36, v14, v35);

    v33 = v35 == 0;
    v32 = v37;
  }

  else
  {
    v33 = 1;
  }

  if (v32)
  {
    v34 = a6;
  }

  else
  {
    v34 = 0;
  }

  if (!v32 && a6)
  {
    objc_msgSend_addAttributeWithName_format_(v100, v30, v14, 786435);
    v32 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v100, v38, v14, 786435);
    v34 = 1;
  }

  if (v32)
  {
LABEL_23:
    v40 = objc_msgSend_format(v32, v30, v31) & 0x1F;
    if (!v40)
    {
      goto LABEL_36;
    }

    v41 = objc_msgSend_format(v32, v30, v39) & 0xFFFF0000;
    if (v41 >= 720896)
    {
      if (v41 == 720896)
      {
        memset(__p, 0, sizeof(__p));
        sub_239EC4064(__p, *a5, a5[1], (a5[1] - *a5) >> 3);
        sub_239EF7A40(v32, __p, v100, v40, sub_239F5E8F8);
        v42 = __p[0];
        if (!__p[0])
        {
          goto LABEL_36;
        }

        v43 = __p;
        goto LABEL_35;
      }

      if (v41 == 786432)
      {
        memset(v111, 0, sizeof(v111));
        sub_239EC4064(v111, *a5, a5[1], (a5[1] - *a5) >> 3);
        sub_239EF7728(v32, v111, v100, v40, nullsub_10);
        v42 = v111[0];
        if (v111[0])
        {
          v43 = v111;
          goto LABEL_35;
        }
      }
    }

    else if (v41 == 0x10000 || v41 == 196608)
    {
      memset(v109, 0, sizeof(v109));
      sub_239EC4064(v109, *a5, a5[1], (a5[1] - *a5) >> 3);
      sub_239EF7D58(v32, v109, v100, v40, sub_239EF6F2C);
      v42 = v109[0];
      if (v109[0])
      {
        v43 = v109;
LABEL_35:
        v43[1] = v42;
        operator delete(v42);
      }
    }

LABEL_36:
    if (!v33)
    {
      objc_msgSend_updateAttributeNamed_withData_(v100, v30, v14, v32);
    }
  }

  v44 = objc_msgSend_vertexAttributeDataForAttributeNamed_(v100, v30, v13);
  v47 = v44;
  if (!v44)
  {
    v93 = 1;
    goto LABEL_43;
  }

  if (objc_msgSend_format(v44, v45, v46) != 786434)
  {
    v48 = objc_msgSend_format(v47, v45, v46);
    v50 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v100, v49, v13, 786434);

    v93 = v48 == 0;
    v47 = v50;
LABEL_43:
    if (v47)
    {
      v51 = 1;
    }

    else
    {
      v51 = v34;
    }

    if ((v51 & 1) == 0)
    {
      objc_msgSend_addAttributeWithName_format_(v100, v45, v13, 786434);
      v47 = objc_msgSend_vertexAttributeDataForAttributeNamed_asFormat_(v100, v52, v13, 786434);
    }

    goto LABEL_48;
  }

  v93 = 1;
LABEL_48:
  v96 = v47;
  v53 = objc_msgSend_bufferSize(v47, v45, v46);
  v95 = objc_msgSend_stride(v47, v54, v55);
  if (v47)
  {
    v92 = v32;
    v58 = *a5;
    v98 = a5[1];
    if (*a5 != v98)
    {
      v94 = vdupq_n_s32(v53);
      do
      {
        v99 = v58;
        v59 = *v58;
        v60 = (*v58)[1];
        v61 = **v58;
        v62 = (*v58)[2];
        if (objc_msgSend_vertexCount(v100, v56, v57, v92) > v61)
        {
          v63 = v59[1];
          if (objc_msgSend_vertexCount(v100, v56, v57) > v63)
          {
            v64 = v59[2];
            if (objc_msgSend_vertexCount(v100, v56, v57) > v64)
            {
              v65.i32[0] = v61 * v95;
              v65.i32[1] = v60 * v95;
              v65.i32[2] = v62 * v95;
              v66 = vcgeq_s32(v65, v94);
              v66.i32[3] = v66.i32[2];
              if ((vmaxvq_u32(v66) & 0x80000000) == 0)
              {
                v67 = objc_msgSend_dataStart(v96, v56, v57);
                v70 = (v67 + objc_msgSend_stride(v96, v68, v69) * *v59);
                *v70 = *(v59 + 2);
                v70[1] = v59[5];
                v73 = objc_msgSend_dataStart(v96, v71, v72);
                v76 = (v73 + objc_msgSend_stride(v96, v74, v75) * v59[1]);
                *v76 = *(v59 + 3);
                v76[1] = v59[7];
                v79 = objc_msgSend_dataStart(v96, v77, v78);
                v82 = (v79 + objc_msgSend_stride(v96, v80, v81) * v59[2]);
                *v82 = *(v59 + 4);
                v82[1] = v59[9];
              }
            }
          }
        }

        v58 = v99 + 1;
      }

      while (v99 + 1 != v98);
    }

    v32 = v92;
    v47 = v96;
    if (!v93)
    {
      objc_msgSend_updateAttributeNamed_withData_(v100, v56, v13, v96);
    }
  }

LABEL_60:
  v83 = objc_msgSend_children(v97, v15, v16, v92);
  if (v83)
  {
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v101 = v83;
    v84 = v83;
    v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v85, &v105, v116, 16);
    if (v86)
    {
      v87 = *v106;
      do
      {
        for (j = 0; j != v86; ++j)
        {
          if (*v106 != v87)
          {
            objc_enumerationMutation(v84);
          }

          v89 = *(*(&v105 + 1) + 8 * j);
          v103 = 0;
          v104 = 0;
          v102 = 0;
          sub_239EC4064(&v102, *a5, a5[1], (a5[1] - *a5) >> 3);
          sub_239EF6F44(v89, v12, v13, v14, &v102, a6);
          if (v102)
          {
            v103 = v102;
            operator delete(v102);
          }
        }

        v86 = objc_msgSend_countByEnumeratingWithState_objects_count_(v84, v90, &v105, v116, 16);
      }

      while (v86);
    }

    v83 = v101;
  }

  v91 = *MEMORY[0x277D85DE8];
}

void sub_239EF760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_239EF7728(void *a1, int ***a2, void *a3, int a4, float (*a5)(float))
{
  v64 = a1;
  v8 = a3;
  v11 = objc_msgSend_bufferSize(v64, v9, v10);
  v14 = objc_msgSend_stride(v64, v12, v13);
  v17 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    v19 = v14;
    v59 = vdupq_n_s32(v11);
    do
    {
      v20 = *v17;
      v21 = (*v17)[1];
      v22 = **v17;
      v23 = (*v17)[2];
      if (objc_msgSend_vertexCount(v8, v15, v16, *&v59) > v22)
      {
        v24 = v20->n128_i32[1];
        if (objc_msgSend_vertexCount(v8, v15, v16) > v24)
        {
          v25 = v20->n128_i32[2];
          if (objc_msgSend_vertexCount(v8, v15, v16) > v25)
          {
            v26.i32[0] = v22 * v19;
            v26.i32[1] = v21 * v19;
            v26.i32[2] = v23 * v19;
            v27 = vcgeq_s32(v26, v59);
            v27.i32[3] = v27.i32[2];
            if ((vmaxvq_u32(v27) & 0x80000000) == 0)
            {
              v28 = objc_msgSend_dataStart(v64, v15, v16);
              v31 = objc_msgSend_stride(v64, v29, v30);
              v32 = v20->n128_i32[0];
              v60 = v20[13];
              v35 = objc_msgSend_format(v64, v33, v34);
              if (a4 >= 1)
              {
                v38 = (v28 + v31 * v32);
                *v38 = (a5)(v35, v60);
                if (a4 != 1)
                {
                  v38[1] = a5(v60.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v38[2] = a5(v60.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v38[3] = a5(1.0);
                    }
                  }
                }
              }

              v39 = objc_msgSend_dataStart(v64, v36, v37);
              v42 = objc_msgSend_stride(v64, v40, v41);
              v43 = v20->n128_i32[1];
              v61 = v20[14];
              v46 = objc_msgSend_format(v64, v44, v45);
              if (a4 >= 1)
              {
                v49 = (v39 + v42 * v43);
                *v49 = (a5)(v46, v61);
                if (a4 != 1)
                {
                  v49[1] = a5(v61.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v49[2] = a5(v61.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v49[3] = a5(1.0);
                    }
                  }
                }
              }

              v50 = objc_msgSend_dataStart(v64, v47, v48);
              v53 = objc_msgSend_stride(v64, v51, v52);
              v54 = v20->n128_i32[2];
              v62 = v20[15];
              v57 = objc_msgSend_format(v64, v55, v56);
              if (a4 >= 1)
              {
                v58 = (v50 + v53 * v54);
                *v58 = (a5)(v57, v62);
                if (a4 != 1)
                {
                  v58[1] = a5(v62.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v58[2] = a5(v62.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v58[3] = a5(1.0);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v17;
    }

    while (v17 != v18);
  }
}

void sub_239EF7A40(void *a1, int ***a2, void *a3, int a4, uint64_t (*a5)(float))
{
  v64 = a1;
  v8 = a3;
  v11 = objc_msgSend_bufferSize(v64, v9, v10);
  v14 = objc_msgSend_stride(v64, v12, v13);
  v17 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    v19 = v14;
    v59 = vdupq_n_s32(v11);
    do
    {
      v20 = *v17;
      v21 = (*v17)[1];
      v22 = **v17;
      v23 = (*v17)[2];
      if (objc_msgSend_vertexCount(v8, v15, v16, *&v59) > v22)
      {
        v24 = v20->n128_i32[1];
        if (objc_msgSend_vertexCount(v8, v15, v16) > v24)
        {
          v25 = v20->n128_i32[2];
          if (objc_msgSend_vertexCount(v8, v15, v16) > v25)
          {
            v26.i32[0] = v22 * v19;
            v26.i32[1] = v21 * v19;
            v26.i32[2] = v23 * v19;
            v27 = vcgeq_s32(v26, v59);
            v27.i32[3] = v27.i32[2];
            if ((vmaxvq_u32(v27) & 0x80000000) == 0)
            {
              v28 = objc_msgSend_dataStart(v64, v15, v16);
              v31 = objc_msgSend_stride(v64, v29, v30);
              v32 = v20->n128_i32[0];
              v60 = v20[13];
              v35 = objc_msgSend_format(v64, v33, v34);
              if (a4 >= 1)
              {
                v38 = (v28 + v31 * v32);
                *v38 = (a5)(v35, v60);
                if (a4 != 1)
                {
                  v38[1] = a5(v60.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v38[2] = a5(v60.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v38[3] = a5(1.0);
                    }
                  }
                }
              }

              v39 = objc_msgSend_dataStart(v64, v36, v37);
              v42 = objc_msgSend_stride(v64, v40, v41);
              v43 = v20->n128_i32[1];
              v61 = v20[14];
              v46 = objc_msgSend_format(v64, v44, v45);
              if (a4 >= 1)
              {
                v49 = (v39 + v42 * v43);
                *v49 = (a5)(v46, v61);
                if (a4 != 1)
                {
                  v49[1] = a5(v61.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v49[2] = a5(v61.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v49[3] = a5(1.0);
                    }
                  }
                }
              }

              v50 = objc_msgSend_dataStart(v64, v47, v48);
              v53 = objc_msgSend_stride(v64, v51, v52);
              v54 = v20->n128_i32[2];
              v62 = v20[15];
              v57 = objc_msgSend_format(v64, v55, v56);
              if (a4 >= 1)
              {
                v58 = (v50 + v53 * v54);
                *v58 = (a5)(v57, v62);
                if (a4 != 1)
                {
                  v58[1] = a5(v62.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v58[2] = a5(v62.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v58[3] = a5(1.0);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v17;
    }

    while (v17 != v18);
  }
}

void sub_239EF7D58(void *a1, int ***a2, void *a3, int a4, uint64_t (*a5)(float))
{
  v64 = a1;
  v8 = a3;
  v11 = objc_msgSend_bufferSize(v64, v9, v10);
  v14 = objc_msgSend_stride(v64, v12, v13);
  v17 = *a2;
  v18 = a2[1];
  if (*a2 != v18)
  {
    v19 = v14;
    v59 = vdupq_n_s32(v11);
    do
    {
      v20 = *v17;
      v21 = (*v17)[1];
      v22 = **v17;
      v23 = (*v17)[2];
      if (objc_msgSend_vertexCount(v8, v15, v16, *&v59) > v22)
      {
        v24 = v20->n128_i32[1];
        if (objc_msgSend_vertexCount(v8, v15, v16) > v24)
        {
          v25 = v20->n128_i32[2];
          if (objc_msgSend_vertexCount(v8, v15, v16) > v25)
          {
            v26.i32[0] = v22 * v19;
            v26.i32[1] = v21 * v19;
            v26.i32[2] = v23 * v19;
            v27 = vcgeq_s32(v26, v59);
            v27.i32[3] = v27.i32[2];
            if ((vmaxvq_u32(v27) & 0x80000000) == 0)
            {
              v28 = objc_msgSend_dataStart(v64, v15, v16);
              v31 = objc_msgSend_stride(v64, v29, v30);
              v32 = v20->n128_i32[0];
              v60 = v20[13];
              v35 = objc_msgSend_format(v64, v33, v34);
              if (a4 >= 1)
              {
                v38 = (v28 + v31 * v32);
                *v38 = (a5)(v35, v60);
                if (a4 != 1)
                {
                  v38[1] = a5(v60.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v38[2] = a5(v60.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v38[3] = a5(1.0);
                    }
                  }
                }
              }

              v39 = objc_msgSend_dataStart(v64, v36, v37);
              v42 = objc_msgSend_stride(v64, v40, v41);
              v43 = v20->n128_i32[1];
              v61 = v20[14];
              v46 = objc_msgSend_format(v64, v44, v45);
              if (a4 >= 1)
              {
                v49 = (v39 + v42 * v43);
                *v49 = (a5)(v46, v61);
                if (a4 != 1)
                {
                  v49[1] = a5(v61.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v49[2] = a5(v61.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v49[3] = a5(1.0);
                    }
                  }
                }
              }

              v50 = objc_msgSend_dataStart(v64, v47, v48);
              v53 = objc_msgSend_stride(v64, v51, v52);
              v54 = v20->n128_i32[2];
              v62 = v20[15];
              v57 = objc_msgSend_format(v64, v55, v56);
              if (a4 >= 1)
              {
                v58 = (v50 + v53 * v54);
                *v58 = (a5)(v57, v62);
                if (a4 != 1)
                {
                  v58[1] = a5(v62.n128_f32[1]);
                  if (a4 >= 3)
                  {
                    v58[2] = a5(v62.n128_f32[2]);
                    if (a4 != 3)
                    {
                      v58[3] = a5(1.0);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v17;
    }

    while (v17 != v18);
  }
}

void sub_239EF8070(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_239EC4064(&__p, *a5, a5[1], (a5[1] - *a5) >> 3);
  sub_239EF6F44(v11, v12, v13, v14, &__p, a6);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_239EF8130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_239EF8164(void *a1, void *a2, signed int a3, void *a4, int a5)
{
  v9 = a2;
  v10 = a4;
  if (*a1 == a1[1])
  {
    v17 = objc_alloc(MEMORY[0x277CBEB28]);
    v18 = a3 * a3;
    v14 = objc_msgSend_initWithLength_(v17, v19, (a3 * a3));
    if (a3)
    {
      v20 = 0;
      if (v18 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v18;
      }

      do
      {
        v22 = v14;
        v25 = objc_msgSend_bytes(v22, v23, v24);
        v26 = v9;
        *(v25 + v20) = *(objc_msgSend_bytes(v26, v27, v28) + 4 * v20);
        ++v20;
      }

      while (v20 != v21);
    }

    v29 = [MDLTexture alloc];
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v32 = objc_msgSend_initWithFormat_(v30, v31, @"$ao-%lu", a5);
    LOBYTE(v42) = 0;
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v29, v33, v14, 1, v32, a3, 1, 1, COERCE_DOUBLE(vdup_n_s32(a3)), v42);
  }

  else
  {
    v11 = [MDLTexture alloc];
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v14 = objc_msgSend_initWithFormat_(v12, v13, @"$ao-%lu", a5);
    LOBYTE(v41) = 0;
    isCube = objc_msgSend_initWithData_topLeftOrigin_name_dimensions_rowStride_channelCount_channelEncoding_isCube_(v11, v15, v9, 1, v14, 4 * a3, 4, 1, COERCE_DOUBLE(vdup_n_s32(a3)), v41);
  }

  v34 = objc_opt_new();
  objc_msgSend_setTexture_(v34, v35, isCube);
  v36 = [MDLMaterialProperty alloc];
  v38 = objc_msgSend_initWithName_semantic_(v36, v37, v10, 22);
  objc_msgSend_setTextureSamplerValue_(v38, v39, v34);

  return v38;
}

void sub_239EF835C(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_239EF83C0(uint64_t a1, uint64_t **a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v4 = *v2;
      v5 = v2[1];
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_239E879CC(v4);
      if (v5)
      {
        sub_239E9A9B4(v5);
      }

      v2 += 2;
    }

    while (v2 != v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_239EF84FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_239E9A9B4(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF8514(uint64_t a1, uint64_t **a2, uint64_t a3, int a4, uint64_t *a5)
{
  v49 = *MEMORY[0x277D85DE8];
  __p = 0;
  v28 = 0uLL;
  if (!a4)
  {
    sub_239E91AC8(&__p, 1uLL);
  }

  sub_239EF51E0(64, 1, 1, v29, *(a3 + 64));
  v9 = *v29;
  __p = *v29;
  v28 = *&v29[8];
  v10 = *&v29[8];
  if (*v29 != *&v29[8])
  {
    v26 = vdupq_n_s32(0x38D1B717u);
    __asm { FMOV            V8.2S, #1.0 }

    do
    {
      v16 = *v9;
      v17 = *a3;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v41 = 0u;
      LODWORD(v41) = 2139095039;
      *&v48 = 0;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      *&v45 = 0;
      v18 = vmlaq_f32(v17, v26, v16);
      *v29 = v18;
      *&v29[16] = v16;
      *v18.f32 = vdiv_f32(_D8, *v16.f32);
      v18.f32[2] = 1.0 / v16.f32[2];
      v30 = v18;
      LOBYTE(v31) = v18.f32[0] < 0.0;
      BYTE1(v31) = v18.f32[1] < 0.0;
      BYTE2(v31) = (1.0 / v16.f32[2]) < 0.0;
      v32 = 0x7F7FFFFF3A83126FLL;
      sub_239EF83C0(v8, a2);
      if (v45)
      {
        v19 = *(a3 + 16);
        v20 = *(a3 + 32);
        v21 = *(a3 + 176) + 1;
        *v29 = v46;
        *&v29[16] = v19;
        v30.i64[0] = v20;
        v31 = v41;
        v33 = v42;
        v34 = v43;
        v35 = v44;
        v36 = v45;
        v37 = v46;
        v38 = v47;
        v39 = v48;
        v40 = v21;
        v22 = a5[1];
        if (v22 >= a5[2])
        {
          v8 = sub_239EFB94C(a5, v29);
        }

        else
        {
          v23 = *v29;
          v24 = *&v29[16];
          *(v22 + 32) = v30.i64[0];
          *v22 = v23;
          *(v22 + 16) = v24;
          *(v22 + 48) = v31;
          *(v22 + 64) = v33;
          *(v22 + 80) = v34;
          *(v22 + 96) = v35;
          *(v22 + 112) = v36;
          *(v22 + 128) = v37;
          *(v22 + 144) = v38;
          *(v22 + 160) = v39;
          *(v22 + 176) = v40;
          v8 = v22 + 192;
        }

        a5[1] = v8;
      }

      ++v9;
    }

    while (v9 != v10);
    v9 = __p;
  }

  if (v9)
  {
    *&v28 = v9;
    operator delete(v9);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_239EF87E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF880C(uint64_t *a1, uint64_t **a2)
{
  v79 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v4 = 0uLL;
  v41 = 0u;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v7 = *v5;
      if (*(*v5 + 24) == 3)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        sub_239EF51E0(128, 0, 1, &v38, 0);
        v8 = v38;
        v9 = v39;
        if (v38 != v39)
        {
          do
          {
            v37 = *v8;
            *&v10 = (*(*v7 + 32))(v7);
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            v11 = v7[1];
            v67 = v10;
            v68 = v37;
            *&v69 = v11;
            LODWORD(v70) = 2139095039;
            v75 = 0u;
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            *&v74 = 0;
            v12 = a1[21];
            if (v12 >= a1[22])
            {
              v21 = sub_239EFBC38(a1 + 20, &v67);
              v15 = v70;
              v16 = v74;
              v18 = *(&v76 + 1);
              v17 = v76;
              v19 = v77;
              v20 = v78;
            }

            else
            {
              v13 = v67;
              v14 = v68;
              *(v12 + 32) = v69;
              *v12 = v13;
              *(v12 + 16) = v14;
              v15 = v70;
              *(v12 + 48) = v70;
              *(v12 + 64) = v71;
              *(v12 + 80) = v72;
              *(v12 + 96) = v73;
              v16 = v74;
              *(v12 + 112) = v74;
              *(v12 + 128) = v75;
              v17 = v76;
              *(v12 + 144) = v76;
              v18 = *(&v76 + 1);
              *(v12 + 152) = *(&v76 + 1);
              v19 = v77;
              *(v12 + 160) = v77;
              v20 = v78;
              *(v12 + 176) = v78;
              v21 = v12 + 192;
            }

            a1[21] = v21;
            v55[0] = v67;
            v55[1] = v68;
            v56 = v69;
            v57 = v15;
            v58 = v71;
            v59 = v72;
            v60 = v73;
            v61 = v16;
            v62 = v75;
            v63 = v17;
            v64 = v18;
            v65 = v19;
            v66 = v20;
            sub_239EF8514(v21, a2, v55, 0, &v41);
            ++v8;
          }

          while (v8 != v9);
          v8 = v38;
        }

        if (v8)
        {
          v39 = v8;
          operator delete(v8);
        }
      }

      v5 += 8;
    }

    while (v5 != v6);
    v4 = v41;
  }

  v22 = sub_239EFBE04((a1 + 20), a1[21], v4, *(&v4 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v4 + 1) - v4) >> 6));
  v24 = *(&v41 + 1);
  v23 = v41;
  if (v41 != *(&v41 + 1))
  {
    do
    {
      v25 = v23[12];
      v26 = *(v23 + 4);
      v27 = *(v23 + 5);
      v28 = *(v23 + 6);
      v29 = *(v23 + 14);
      v30 = *(v23 + 8);
      v31 = *(v23 + 18);
      v32 = *(v23 + 19);
      v33 = *(v23 + 20);
      v34 = v23[44];
      v35 = *(v23 + 1);
      v43[0] = *v23;
      v43[1] = v35;
      v44 = *(v23 + 4);
      v45 = v25;
      v46 = v26;
      v47 = v27;
      v48 = v28;
      v49 = v29;
      v50 = v30;
      v51 = v31;
      v52 = v32;
      v53 = v33;
      v54 = v34;
      sub_239EF8514(v22, a2, v43, 1, a1 + 20);
      v23 += 48;
    }

    while (v23 != v24);
    v23 = v41;
  }

  if (v23)
  {
    *(&v41 + 1) = v23;
    operator delete(v23);
  }

  v36 = *MEMORY[0x277D85DE8];
}

void sub_239EF8B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EF8B70(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, int a6@<W6>, _BYTE *a7@<X8>)
{
  v60 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v42 = a3;
  v40 = a4;
  v41 = a5;
  v58 = a6;
  v15 = objc_msgSend_progressWithTotalUnitCount_(MEMORY[0x277CCAC48], v14, 70);
  objc_msgSend_setCancellable_(v15, v16, 1);
  objc_msgSend_setPausable_(v15, v17, 0);
  memset(__src, 0, sizeof(__src));
  v43 = v15;
  v20 = objc_msgSend_count(v13, v18, v19);
  sub_239EF9870(__src, v20);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v13;
  v39 = a7;
  if (objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v53, v59, 16))
  {
    *v54;
    *v54;
    v45 = **(&v53 + 1);
    v49[0] = 0;
    v49[1] = 0;
    LODWORD(v46) = 6;
    sub_239EFC57C();
  }

  objc_msgSend_becomeCurrentWithPendingUnitCount_(v15, v22, 70);
  if (*a1 != a1[1])
  {
    sub_239EF880C(a1, __src);
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51 = 0;
  v50 = 0;
  v52 = 0;
  sub_239EF5BA8(v42, &v50, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  if (v52)
  {
    sub_239EF4B0C(v24, &v50);
    sub_239EF4D4C(&v50, &v46);
    v25 = a1[6];
    if (v25)
    {
      a1[7] = v25;
      operator delete(v25);
      a1[6] = 0;
      a1[7] = 0;
      a1[8] = 0;
    }

    *(a1 + 3) = v46;
    a1[8] = v47;
    for (i = v51; i != &v50; i = i[1])
    {
      *&v46 = i[2];
      sub_239E9BFD8((a1 + 3), &v46);
    }

    memset(v49, 0, 32);
    sub_239EF67A8(a1, &v58, &v50, v49, 0);
    if (v49[0])
    {
      v27 = objc_alloc(MEMORY[0x277CBEB28]);
      v38 = objc_msgSend_initWithLength_(v27, v28, (4 * v58 * v58));
      v29 = v38;
      objc_msgSend_mutableBytes(v38, v30, v31);
      srand(0x1337u);
      dispatch_group_create();
      dispatch_get_global_queue(0, 0);
      objc_claimAutoreleasedReturnValue();
      objc_alloc_init(MEMORY[0x277CCAAF8]);
      *&v46 = 0;
      *(&v46 + 1) = &v46;
      v47 = 0x3020000000;
      v48 = 0;
      operator new();
    }

    if (v49[3] >= 0)
    {
      v32 = &v49[1];
    }

    else
    {
      v32 = v49[1];
    }

    if (v49[3] >= 0)
    {
      v33 = HIBYTE(v49[3]);
    }

    else
    {
      v33 = v49[2];
    }

    v34 = sub_239E98B94(MEMORY[0x277D82670], v32, v33);
    std::ios_base::getloc((v34 + *(*v34 - 24)));
    v35 = std::locale::use_facet(&v46, MEMORY[0x277D82680]);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(&v46);
    std::ostream::put();
    std::ostream::flush();
    *a7 = 0;
    v36 = a7 + 8;
    if (SHIBYTE(v49[3]) < 0)
    {
      sub_239E5BAE0(v36, v49[1], v49[2]);
    }

    else
    {
      *v36 = *&v49[1];
      *(v39 + 3) = v49[3];
    }

    if (SHIBYTE(v49[3]) < 0)
    {
      operator delete(v49[1]);
    }
  }

  else
  {
    *a7 = 0;
    sub_239E552A0(a7 + 8, "Couldn't parse triangles from supplied meshes");
  }

  sub_239E9876C(&v50);

  *&v46 = __src;
  sub_239EFC40C(&v46);

  v37 = *MEMORY[0x277D85DE8];
}

void sub_239EF966C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (SLOBYTE(STACK[0x20F]) < 0)
  {
    operator delete(__p);
  }

  sub_239E9876C(&STACK[0x218]);

  a71 = &STACK[0x270];
  sub_239EFC40C(&a71);

  _Unwind_Resume(a1);
}

void *sub_239EF9870(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      v3 = result;
      sub_239EFC4AC(result, a2);
    }

    sub_239E797B4();
  }

  return result;
}

uint64_t sub_239EF990C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 80);
  v48 = 0;
  atomic_store(0, &v48);
  v5 = *&dword_27DF912D0;
  objc_msgSend_lock(*(a1 + 32), a2, a3);
  v9 = *(a1 + 88);
  v10 = v9[5];
  if (v10)
  {
    *v8.i32 = v5 * 0.5;
    v11 = vdup_lane_s32(v8, 0);
    v12 = vdup_n_s32(0x437F0000u);
    do
    {
      v13 = *(*(v9[1] + ((v9[4] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9[4] & 0x3FFLL));
      v14 = *(a1 + 136);
      ++v9[4];
      v9[5] = v10 - 1;
      sub_239EFCDBC(v9, 1);
      objc_msgSend_unlock(*(a1 + 32), v15, v16);
      if (v14 > v13)
      {
        v20 = *(a1 + 136);
        if (v20 >= 1)
        {
          for (i = 0; i < v20; ++i)
          {
            v22.f32[0] = i;
            *v19.i32 = v20;
            v22.f32[1] = v13;
            v23 = vdiv_f32(v22, vdup_lane_s32(v19, 0));
            v24 = sub_239F3805C(*(a1 + 96), *&v23);
            if (v24 && (v25 = v24, sub_239F3761C(v24, v23)))
            {
              v46 = 0uLL;
              v47 = 0;
              sub_239F37800(v25, &v46, vadd_f32(v23, v11));
              v26 = v47;
              if (!v47)
              {
                sub_239F37800(v25, &v44, v23);
                v26 = v45;
                v47 = v45;
                v46 = v44;
              }

              v43 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v26 + 64), *&v46), *(v26 + 80), *(&v46 + 1)), *(v26 + 96), *(&v46 + 2));
              v29 = sub_239EC3D28(v26);
              if (*v4 == *(v4 + 8))
              {
                v31 = (sub_239EF5468(v43, v29, *(a1 + 144), v27, (a1 + 104), *(a1 + 140), 1) * 255.0);
                v19 = vdup_n_s32(v31);
              }

              else
              {
                *v30.i64 = sub_239EF56F4(v4, (a1 + 104), v28, v43, v29);
                v19 = vcvt_s32_f32(vmul_f32(*v30.f32, v12));
                v31 = vmuls_lane_f32(255.0, v30, 2);
              }

              v32 = -1;
            }

            else
            {
              LOBYTE(v31) = 0;
              v32 = 0;
              atomic_fetch_add(&v48, 1u);
              v19 = 0;
            }

            v33 = (*(a1 + 128) + 4 * (i + *(a1 + 136) * v13));
            *v33 = v19.i8[0];
            v33[1] = v19.i8[4];
            v33[2] = v31;
            v33[3] = v32;
            v20 = *(a1 + 136);
          }
        }
      }

      atomic_fetch_add(&v48, *(*(*(a1 + 48) + 8) + 40));
      objc_msgSend_lock(*(a1 + 32), v17, v18, *&v43);
      if ((++*(*(*(a1 + 56) + 8) + 24) / *(*(*(a1 + 64) + 8) + 24)) > (*(*(*(a1 + 72) + 8) + 24) * 0.022222))
      {
        v36 = *(a1 + 40);
        v37 = objc_msgSend_completedUnitCount(v36, v34, v35);
        objc_msgSend_setCompletedUnitCount_(v36, v38, v37 + 1);
        ++*(*(*(a1 + 72) + 8) + 24);
      }

      objc_msgSend_unlock(*(a1 + 32), v34, v35);
      v48 = 0;
      atomic_store(0, &v48);
      *v39.i32 = *&dword_27DF912D0 * 0.5;
      v11 = vdup_lane_s32(v39, 0);
      objc_msgSend_lock(*(a1 + 32), v40, v41);
      v9 = *(a1 + 88);
      v10 = v9[5];
    }

    while (v10);
  }

  return objc_msgSend_unlock(*(a1 + 32), v6, v7);
}

uint64_t sub_239EF9C38(uint64_t a1, uint64_t a2)
{
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v2 = a1 + 104;
  *(v2 + 16) = 0;
  return sub_239EFCE1C(v2, *(a2 + 104), *(a2 + 112), (*(a2 + 112) - *(a2 + 104)) >> 4);
}

void sub_239EF9C80(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = a2;
  v8 = a3;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_239EF5BA8(v7, &v22, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  if (v24)
  {
    sub_239EF4B0C(v9, &v22);
    for (i = v23; i != &v22; i = *(i + 8))
    {
      v20[0] = *(i + 16);
      sub_239E9BFD8((a1 + 3), v20);
    }

    v21 = 4096;
    memset(v20, 0, 32);
    sub_239EF67A8(a1, &v21, &v22, v20, 0);
    v11 = v20[0];
    if (v20[0])
    {
      __p = 0;
      v18 = 0;
      v19 = 0;
      sub_239EC4064(&__p, a1[3], a1[4], (a1[4] - a1[3]) >> 3);
      sub_239EF8070(v7, 0, v8, 0, &__p, 0);
      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }

      MEMORY[0x23EE802C0](v11, 0x1020C4084B17629);
      *a4 = 1;
      sub_239E552A0(a4 + 8, "");
    }

    else
    {
      if (SHIBYTE(v20[3]) >= 0)
      {
        v12 = &v20[1];
      }

      else
      {
        v12 = v20[1];
      }

      if (SHIBYTE(v20[3]) >= 0)
      {
        v13 = HIBYTE(v20[3]);
      }

      else
      {
        v13 = v20[2];
      }

      v14 = sub_239E98B94(MEMORY[0x277D82670], v12, v13);
      std::ios_base::getloc((v14 + *(*v14 - 24)));
      v15 = std::locale::use_facet(&v25, MEMORY[0x277D82680]);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v25);
      std::ostream::put();
      std::ostream::flush();
      *a4 = 0;
      v16 = (a4 + 8);
      if (SHIBYTE(v20[3]) < 0)
      {
        sub_239E5BAE0(v16, v20[1], v20[2]);
      }

      else
      {
        *v16 = *&v20[1];
        v16[2] = v20[3];
      }
    }

    if (SHIBYTE(v20[3]) < 0)
    {
      operator delete(v20[1]);
    }
  }

  else
  {
    *a4 = 0;
    sub_239E552A0(a4 + 8, "Couldn't parse triangles from supplied meshes");
  }

  sub_239E9876C(&v22);
}

void sub_239EF9EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_239E9876C(&a22);

  _Unwind_Resume(a1);
}

void sub_239EF9F64(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, _BYTE *a4@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_239EF5BA8(v8, &v29, *MEMORY[0x277D860B8], *(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48));
  if (v31)
  {
    memset(v28, 0, sizeof(v28));
    v12 = objc_msgSend_count(v7, v10, v11);
    sub_239EF9870(v28, v12);
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v7;
    if (objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v35, 16))
    {
      *v25;
      *v25;
      v15 = **(&v24 + 1);
      v23[0].__locale_ = 0;
      v23[1].__locale_ = 0;
      operator new();
    }

    v33 = 0;
    v34 = 0;
    v32 = 0;
    if (v30 == &v29)
    {
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v17 = v30;
      do
      {
        ++v16;
        v17 = v17[1];
      }

      while (v17 != &v29);
    }

    sub_239EFD33C(&v32, v30, &v29, v16);
    v18 = sub_239E98B94(MEMORY[0x277D82678], "Computing vertex bake information for ", 38);
    v19 = MEMORY[0x23EE80160](v18, (v33 - v32) >> 3);
    v20 = sub_239E98B94(v19, " triangles", 10);
    std::ios_base::getloc((v20 + *(*v20 - 24)));
    v21 = std::locale::use_facet(v23, MEMORY[0x277D82680]);
    (v21->__vftable[2].~facet_0)(v21, 10);
    std::locale::~locale(v23);
    std::ostream::put();
    std::ostream::flush();
    dispatch_group_create();
    dispatch_get_global_queue(0, 0);
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  *a4 = 0;
  sub_239E552A0(a4 + 8, "Couldn't parse triangles from supplied meshes");
  sub_239E9876C(&v29);

  v22 = *MEMORY[0x277D85DE8];
}

void sub_239EFA618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::locale a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56)
{
  sub_239E9876C(&a52);

  _Unwind_Resume(a1);
}

uint64_t sub_239EFA76C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  objc_msgSend_lock(*(a1 + 32), a2, a3);
  v7 = *(a1 + 56);
  for (i = v7[5]; i; i = v7[5])
  {
    v9 = *(*(v7[1] + ((v7[4] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v7[4] & 0x3FFLL));
    ++v7[4];
    v7[5] = i - 1;
    sub_239EFCDBC(v7, 1);
    objc_msgSend_unlock(*(a1 + 32), v10, v11);
    if ((v9 & 0x80000000) == 0)
    {
      v14 = (*(a1 + 72) - *(a1 + 64)) >> 3;
      if (v9 + 250 >= v14)
      {
        v15 = (*(a1 + 72) - *(a1 + 64)) >> 3;
      }

      else
      {
        v15 = v9 + 250;
      }

      if (v9 < v14)
      {
        v16 = 8 * v9;
        do
        {
          v17 = *(*(a1 + 64) + v16);
          if (*v4 == *(v4 + 8))
          {
            v27 = *(a1 + 112);
            v54 = *(v17 + 64);
            v28 = sub_239EC3D28(v17);
            *v30.i32 = sub_239EF5468(v54, v28, *(a1 + 116), v29, (a1 + 88), v27, 0);
            *(v17 + 208) = vdupq_lane_s32(v30, 0);
            v31 = *(a1 + 112);
            v55 = *(v17 + 80);
            v32 = sub_239EC3D28(v17);
            *v34.i32 = sub_239EF5468(v55, v32, *(a1 + 116), v33, (a1 + 88), v31, 0);
            *(v17 + 224) = vdupq_lane_s32(v34, 0);
            v35 = *(a1 + 112);
            v56 = *(v17 + 96);
            v36 = sub_239EC3D28(v17);
            *v38.i32 = sub_239EF5468(v56, v36, *(a1 + 116), v37, (a1 + 88), v35, 0);
            v26 = vdupq_lane_s32(v38, 0);
          }

          else
          {
            v51 = *(v17 + 64);
            v18 = sub_239EC3D28(v17);
            *&v20 = sub_239EF56F4(v4, (a1 + 88), v19, v51, v18);
            *(v17 + 208) = v20;
            v52 = *(v17 + 80);
            v21 = sub_239EC3D28(v17);
            *&v23 = sub_239EF56F4(v4, (a1 + 88), v22, v52, v21);
            *(v17 + 224) = v23;
            v53 = *(v17 + 96);
            v24 = sub_239EC3D28(v17);
            *v26.i64 = sub_239EF56F4(v4, (a1 + 88), v25, v53, v24);
          }

          *(v17 + 240) = v26;
          v16 += 8;
          LODWORD(v9) = v9 + 1;
        }

        while (v15 > v9);
      }

      objc_msgSend_lock(*(a1 + 32), v12, v13);
      objc_msgSend_fractionCompleted(*(a1 + 40), v39, v40);
      NSLog(&cfstr_FractionComple_0.isa, v41);
      v42 = *(a1 + 40);
      v45 = objc_msgSend_completedUnitCount(v42, v43, v44);
      objc_msgSend_setCompletedUnitCount_(v42, v46, v45 + 1);
      objc_msgSend_unlock(*(a1 + 32), v47, v48);
    }

    objc_msgSend_lock(*(a1 + 32), v12, v13);
    v7 = *(a1 + 56);
  }

  v49 = *(a1 + 32);

  return objc_msgSend_unlock(v49, v5, v6);
}

uint64_t sub_239EFA9D4(void *a1, uint64_t *a2)
{
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  sub_239EC4064((a1 + 8), a2[8], a2[9], (a2[9] - a2[8]) >> 3);
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  return sub_239EFCE1C((a1 + 11), a2[11], a2[12], (a2[12] - a2[11]) >> 4);
}

void sub_239EFAA40(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EFAA5C(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_239EFC40C(&v3);
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }
}

void sub_239EFAAA4(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(a1 + 8) = *a1;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = v3;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v24, v28, 16);
  if (v8)
  {
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = objc_msgSend_rtLight(*(*(&v24 + 1) + 8 * i), v6, v7, v24);
        v13 = *(a1 + 8);
        v12 = *(a1 + 16);
        if (v13 >= v12)
        {
          v15 = (v13 - *a1) >> 3;
          if ((v15 + 1) >> 61)
          {
            sub_239E797B4();
          }

          v16 = v12 - *a1;
          v17 = v16 >> 2;
          if (v16 >> 2 <= (v15 + 1))
          {
            v17 = v15 + 1;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          if (v18)
          {
            sub_239E7C684(a1, v18);
          }

          v19 = (8 * v15);
          *v19 = v11;
          v14 = 8 * v15 + 8;
          v20 = *(a1 + 8) - *a1;
          v21 = v19 - v20;
          memcpy(v19 - v20, *a1, v20);
          v22 = *a1;
          *a1 = v21;
          *(a1 + 8) = v14;
          *(a1 + 16) = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v13 = v11;
          v14 = (v13 + 1);
        }

        *(a1 + 8) = v14;
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v24, v28, 16);
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239EFAC84(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_239EFAD30(a1);
}

uint64_t sub_239EFAD30(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_239EFAD80(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

float32x4_t *sub_239EFADF4(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC3DD4(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = i->i64[0])
  {
    v12 = i->u64[1];
    if (v12 == v6)
    {
      if (sub_239EC3E64(i + 1, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

float32x4_t *sub_239EFAEF0(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC3DD4(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_239EFB16C();
  }

  while (1)
  {
    v12 = v11->u64[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC3E64(v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239EFB150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239EFB1E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *sub_239EFB1FC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_239E9830C(result, a2);
  }

  return result;
}

void sub_239EFB258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EFB274(uint64_t a1)
{
  sub_239EFB2B0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_239EFB2B0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_239E9876C(v2 + 4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

float32x4_t *sub_239EFB2F4(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC2FA4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC2FB4(a1, v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239EFB56C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_239EFB580(va);
  _Unwind_Resume(a1);
}

uint64_t sub_239EFB580(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_239E9876C(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_239EFB5CC(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return result;
}

float32x4_t *sub_239EFB670(void *a1, float32x4_t *a2)
{
  v4 = sub_239EC3490(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11->u64[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = v11->i64[0];
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_239EC3500(v11 + 1, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_239EFB8E8(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      __p[7] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_239EFB94C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_239EFBBE0(a1, v6);
  }

  v7 = 192 * v2;
  __p = 0;
  v13 = v7;
  v15 = 0;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 16) = v9;
  *(v7 + 48) = *(a2 + 12);
  *(v7 + 64) = a2[4];
  *(v7 + 80) = a2[5];
  *(v7 + 96) = a2[6];
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 128) = a2[8];
  *(v7 + 144) = *(a2 + 18);
  *(v7 + 152) = *(a2 + 19);
  *(v7 + 160) = *(a2 + 20);
  *(v7 + 176) = *(a2 + 44);
  v14 = 192 * v2 + 192;
  sub_239EFBB18(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 = (v14 - v13 - 192) % 0xC0uLL + v13;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_239EFBAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_239EFBB18(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *v2;
      v7 = v2[1];
      *(v5 + 32) = *(v2 + 4);
      *v5 = v6;
      *(v5 + 16) = v7;
      *(v5 + 48) = *(v2 + 12);
      *(v5 + 64) = v2[4];
      *(v5 + 80) = v2[5];
      *(v5 + 96) = v2[6];
      *(v5 + 112) = *(v2 + 14);
      *(v5 + 128) = v2[8];
      *(v5 + 144) = *(v2 + 18);
      *(v5 + 152) = *(v2 + 19);
      *(v5 + 160) = *(v2 + 20);
      *(v5 + 176) = *(v2 + 44);
      v2 += 12;
      v5 += 192;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_239EFBBE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x155555555555556)
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EFBC38(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 6);
  v3 = v2 + 1;
  if (v2 + 1 > 0x155555555555555)
  {
    sub_239E797B4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 6) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 6);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 6) >= 0xAAAAAAAAAAAAAALL)
  {
    v6 = 0x155555555555555;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_239EFBBE0(a1, v6);
  }

  v7 = 192 * v2;
  __p = 0;
  v13 = v7;
  v15 = 0;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = *(a2 + 4);
  *v7 = v8;
  *(v7 + 16) = v9;
  *(v7 + 48) = *(a2 + 12);
  *(v7 + 64) = a2[4];
  *(v7 + 80) = a2[5];
  *(v7 + 96) = a2[6];
  *(v7 + 112) = *(a2 + 14);
  *(v7 + 128) = a2[8];
  *(v7 + 144) = *(a2 + 18);
  *(v7 + 152) = *(a2 + 19);
  *(v7 + 160) = *(a2 + 20);
  *(v7 + 176) = *(a2 + 44);
  v14 = 192 * v2 + 192;
  sub_239EFBB18(a1, &__p);
  v10 = a1[1];
  if (v14 != v13)
  {
    v14 = (v14 - v13 - 192) % 0xC0uLL + v13;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_239EFBDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_239EFBE04(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 6)) >= a5)
    {
      v16 = v10 - a2;
      if (a5 <= (0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 6)))
      {
        v29 = 3 * a5;
        sub_239EFC1BC(a1, a2, *(a1 + 8), a2 + 192 * a5);
        v30 = 0;
        v31 = &v7[4 * v29];
        do
        {
          v32 = &v5[v30];
          v33 = *v7;
          v34 = v7[1];
          v35 = v7[3];
          v32[2] = v7[2];
          v32[3] = v35;
          *v32 = v33;
          v32[1] = v34;
          v36 = v7[4];
          v37 = v7[5];
          v38 = v7[7];
          v32[6] = v7[6];
          v32[7] = v38;
          v32[4] = v36;
          v32[5] = v37;
          v39 = v7[8];
          v40 = v7[9];
          v41 = v7[10];
          *(v32 + 44) = *(v7 + 44);
          v32[9] = v40;
          v32[10] = v41;
          v32[8] = v39;
          v7 += 12;
          v30 += 12;
        }

        while (v7 != v31);
      }

      else
      {
        v17 = (a3 + v16);
        sub_239EFC13C(a1, (a3 + v16), a4);
        if (v16 >= 1)
        {
          sub_239EFC1BC(a1, v5, v10, &v5[12 * a5]);
          v18 = 0;
          do
          {
            v19 = &v5[v18];
            v20 = *v7;
            v21 = v7[1];
            v22 = v7[3];
            v19[2] = v7[2];
            v19[3] = v22;
            *v19 = v20;
            v19[1] = v21;
            v23 = v7[4];
            v24 = v7[5];
            v25 = v7[7];
            v19[6] = v7[6];
            v19[7] = v25;
            v19[4] = v23;
            v19[5] = v24;
            v26 = v7[8];
            v27 = v7[9];
            v28 = v7[10];
            *(v19 + 44) = *(v7 + 44);
            v19[9] = v27;
            v19[10] = v28;
            v19[8] = v26;
            v7 += 12;
            v18 += 12;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v48 = 0;
      v12 = a5 - 0x5555555555555555 * ((v10 - v11) >> 6);
      if (v12 > 0x155555555555555)
      {
        sub_239E797B4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 6);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0xAAAAAAAAAAAAAALL)
      {
        v15 = 0x155555555555555;
      }

      else
      {
        v15 = v12;
      }

      v50 = a1;
      if (v15)
      {
        sub_239EFBBE0(a1, v15);
      }

      v42 = v13 >> 6 << 6;
      __p = 0;
      v47 = v42;
      v49 = 0;
      do
      {
        v43 = *v7;
        v44 = v7[1];
        *(v42 + 32) = *(v7 + 4);
        *v42 = v43;
        *(v42 + 16) = v44;
        *(v42 + 48) = *(v7 + 12);
        *(v42 + 64) = v7[4];
        *(v42 + 80) = v7[5];
        *(v42 + 96) = v7[6];
        *(v42 + 112) = *(v7 + 14);
        *(v42 + 128) = v7[8];
        *(v42 + 144) = *(v7 + 18);
        *(v42 + 152) = *(v7 + 19);
        *(v42 + 160) = *(v7 + 20);
        *(v42 + 176) = *(v7 + 44);
        v42 += 192;
        v7 += 12;
      }

      while (v42 != (v13 >> 6 << 6) + 192 * a5);
      v48 = (v13 >> 6 << 6) + 192 * a5;
      v5 = sub_239EFC2A0(a1, &__p, v5);
      if (v48 != v47)
      {
        v48 = (v48 - v47 - 192) % 0xC0uLL + v47;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_239EFC0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239EFC13C(uint64_t result, __int128 *a2, __int128 *a3)
{
  v3 = *(result + 8);
  while (a2 != a3)
  {
    v4 = *a2;
    v5 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v4;
    *(v3 + 16) = v5;
    *(v3 + 48) = *(a2 + 12);
    *(v3 + 64) = a2[4];
    *(v3 + 80) = a2[5];
    *(v3 + 96) = a2[6];
    *(v3 + 112) = *(a2 + 14);
    *(v3 + 128) = a2[8];
    *(v3 + 144) = *(a2 + 18);
    *(v3 + 152) = *(a2 + 19);
    *(v3 + 160) = *(a2 + 20);
    *(v3 + 176) = *(a2 + 44);
    a2 += 12;
    v3 += 192;
  }

  *(result + 8) = v3;
  return result;
}

__n128 sub_239EFC1BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = v4 - a4;
  v6 = a2 + v4 - a4;
  v7 = v4;
  while (v6 < a3)
  {
    result = *v6;
    v8 = *(v6 + 16);
    *(v7 + 32) = *(v6 + 32);
    *v7 = result;
    *(v7 + 16) = v8;
    *(v7 + 48) = *(v6 + 48);
    *(v7 + 64) = *(v6 + 64);
    *(v7 + 80) = *(v6 + 80);
    *(v7 + 96) = *(v6 + 96);
    *(v7 + 112) = *(v6 + 112);
    *(v7 + 128) = *(v6 + 128);
    *(v7 + 144) = *(v6 + 144);
    result.n128_u64[0] = *(v6 + 152);
    *(v7 + 152) = result.n128_u64[0];
    *(v7 + 160) = *(v6 + 160);
    *(v7 + 176) = *(v6 + 176);
    v6 += 192;
    v7 += 192;
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v10 = v4 - 192;
    v11 = a2 - 192;
    do
    {
      v12 = *(v11 + v5);
      v13 = *(v11 + v5 + 16);
      v14 = *(v11 + v5 + 48);
      *(v10 + 32) = *(v11 + v5 + 32);
      *(v10 + 48) = v14;
      *v10 = v12;
      *(v10 + 16) = v13;
      v15 = *(v11 + v5 + 64);
      v16 = *(v11 + v5 + 80);
      v17 = *(v11 + v5 + 112);
      *(v10 + 96) = *(v11 + v5 + 96);
      *(v10 + 112) = v17;
      *(v10 + 64) = v15;
      *(v10 + 80) = v16;
      result = *(v11 + v5 + 128);
      v18 = *(v11 + v5 + 144);
      v19 = *(v11 + v5 + 160);
      *(v10 + 176) = *(v11 + v5 + 176);
      *(v10 + 144) = v18;
      *(v10 + 160) = v19;
      *(v10 + 128) = result;
      v10 -= 192;
      v5 -= 192;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_239EFC2A0(__int128 **a1, void *a2, __int128 *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 == a3)
  {
    v11 = a2[1];
    v10 = a3;
  }

  else
  {
    v7 = a3;
    do
    {
      v8 = *v7;
      v9 = v7[1];
      *(v6 + 32) = *(v7 + 4);
      *v6 = v8;
      *(v6 + 16) = v9;
      *(v6 + 48) = *(v7 + 12);
      *(v6 + 64) = v7[4];
      *(v6 + 80) = v7[5];
      *(v6 + 96) = v7[6];
      *(v6 + 112) = *(v7 + 14);
      *(v6 + 128) = v7[8];
      *(v6 + 144) = *(v7 + 18);
      *(v6 + 152) = *(v7 + 19);
      *(v6 + 160) = *(v7 + 20);
      *(v6 + 176) = *(v7 + 44);
      v7 += 12;
      v6 += 192;
    }

    while (v7 != v4);
    v10 = a1[1];
    v11 = a2[1];
    v6 = a2[2];
  }

  a2[2] = v6 + v10 - a3;
  a1[1] = a3;
  v12 = *a1;
  v13 = (v11 + *a1 - a3);
  if (*a1 != a3)
  {
    v14 = v13;
    do
    {
      v15 = *v12;
      v16 = v12[1];
      *(v14 + 4) = *(v12 + 4);
      *v14 = v15;
      v14[1] = v16;
      *(v14 + 12) = *(v12 + 12);
      v14[4] = v12[4];
      v14[5] = v12[5];
      v14[6] = v12[6];
      *(v14 + 14) = *(v12 + 14);
      v14[8] = v12[8];
      *(v14 + 18) = *(v12 + 18);
      *(v14 + 19) = *(v12 + 19);
      *(v14 + 20) = *(v12 + 20);
      *(v14 + 44) = *(v12 + 44);
      v12 += 12;
      v14 += 12;
    }

    while (v12 != a3);
    v12 = *a1;
  }

  a2[1] = v13;
  *a1 = v13;
  a1[1] = v12;
  a2[1] = v12;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void sub_239EFC40C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_239EFC460(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_239EFC460(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_239E9A9B4(v4);
    }
  }

  a1[1] = v2;
}

void sub_239EFC4AC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_239E79870();
}

void **sub_239EFC4F4(void **a1)
{
  sub_239EFC528(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_239EFC528(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      sub_239E9A9B4(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *sub_239EFC5F0(void *a1, void *a2, unsigned int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284D16EB8;
  sub_239F46F8C(a1 + 4, *a2, *a3);
  return a1;
}

void sub_239EFC674(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D16EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE802C0);
}

void *sub_239EFC6F0(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = sub_239EFC778(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *sub_239EFC778(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    sub_239EFCD74(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return sub_239EFC94C(a1, &v10);
}

void sub_239EFC900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_239EFC94C(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_239EFCD74(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_239EFCA54(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_239EFCD74(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *sub_239EFCB60(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_239EFCD74(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **sub_239EFCC68(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_239EFCD74(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_239EFCD74(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_239E79870();
}

uint64_t sub_239EFCDBC(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x400)
  {
    a2 = 1;
  }

  if (v2 < 0x800)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v4 ^ 1u;
}

uint64_t sub_239EFCE1C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239EFCEA4(result, a4);
  }

  return result;
}

void sub_239EFCE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_239EFC40C(&a9);
  _Unwind_Resume(a1);
}

void sub_239EFCEA4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    sub_239EFC4AC(a1, a2);
  }

  sub_239E797B4();
}

void *sub_239EFCEE0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_239EFCF68(v7);
  return v4;
}

uint64_t sub_239EFCF68(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_239EFCFA0(a1);
  }

  return a1;
}

void sub_239EFCFA0(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 8);
    if (v3)
    {
      sub_239E9A9B4(v3);
    }

    v1 -= 16;
  }
}

char *sub_239EFCFE4(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      sub_239E797B4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      sub_239E7C684(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}