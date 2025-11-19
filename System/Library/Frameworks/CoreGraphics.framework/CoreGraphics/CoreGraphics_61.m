unint64_t PDAmultiplyPDA(float16x4_t a1, __n128 a2, __n128 a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float16x4_t a17, float a18)
{
  a6.f32[0] = a18;
  a1.i16[1] = a2.n128_u16[0];
  a1.i16[2] = a3.n128_u16[0];
  a1.i16[3] = a4.i16[0];
  v16 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), vcvtq_f32_f16(a1));
  _Q1 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vcvtq_f32_f16(a17));
  _Q2 = vmulq_f32(v16, _Q1);
  a4.i32[0] = 1.0;
  v19 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, a4)), 0), vmlaq_n_f32(_Q2, v16, 1.0 - a18), _Q2);
  v20 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, a4)), 0), vmlaq_n_f32(v19, _Q1, 1.0 - a5.f32[0]), v19);
  _Q1.f32[0] = (a5.f32[0] + a18) - (a5.f32[0] * a18);
  _Q2.f32[0] = _Q1.f32[0] - v20.f32[0];
  __asm { FCVT            H2, S2 }

  *&_S3 = _Q1.f32[0] - v20.f32[2];
  __asm
  {
    FCVT            H3, S3
    FCVT            H4, S1
  }

  v20.i32[0] = vextq_s8(*&v20, *&v20, 8uLL).i32[1];
  *v20.f32 = vsub_f32(vdup_lane_s32(*_Q1.f32, 0), *v20.f32);
  v20.i64[0] = vmovl_u16(vcvt_f16_f32(v20)).u64[0];
  v27.i64[0] = v20.u32[0];
  v27.i64[1] = v20.u32[1];
  _Q1.i64[0] = 0xFFFFLL;
  _Q1.i64[1] = 0xFFFFLL;
  v28 = vshlq_u64(vandq_s8(v27, _Q1), xmmword_18439CB60);
  return v28.i64[0] | (_S3 << 32) | _Q2.u32[0] | v28.i64[1];
}

uint64_t PDAscreenPDA(__n128 _Q0, __n128 a2, __n128 _Q2, float16x4_t a4, double a5, float16x4_t a6, double _D6, int32x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float a21)
{
  a6.i16[0] = a20;
  LOWORD(_D6) = a19;
  *a8.i32 = a21;
  _H16 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S2, H2
    FCVT            S16, H16
    FCVT            S6, H6
  }

  v29 = (*&a5 - _S2) + ((a21 - *&_D6) * (1.0 - (*&a5 - _S2)));
  *&_D6 = (*&a5 + a21) - (*&a5 * a21);
  *&_S0 = *&_D6 - ((*&a5 - _S0) + ((a21 - _S16) * (1.0 - (*&a5 - _S0))));
  __asm { FCVT            H0, S0 }

  *&_S2 = *&_D6 - v29;
  __asm
  {
    FCVT            H2, S2
    FCVT            H16, S6
  }

  v32 = _S0;
  v33 = _S2;
  a4.i16[1] = a2.n128_u16[0];
  v34 = vcvtq_f32_f16(a4);
  *v34.f32 = vsub_f32(vdup_lane_s32(*&a5, 0), *v34.f32);
  a6.i16[1] = a18;
  __asm { FMOV            V2.2S, #1.0 }

  *v34.f32 = vsub_f32(vdup_lane_s32(*&_D6, 0), vmla_f32(*v34.f32, vsub_f32(_D2, *v34.f32), vsub_f32(vdup_lane_s32(a8, 0), *&vcvtq_f32_f16(a6))));
  v34.i64[0] = vmovl_u16(vcvt_f16_f32(v34)).u64[0];
  v36.i64[0] = v34.u32[0];
  v36.i64[1] = v34.u32[1];
  v37.i64[0] = 0xFFFFLL;
  v37.i64[1] = 0xFFFFLL;
  v38 = vshlq_u64(vandq_s8(v36, v37), xmmword_18439CB60);
  return v38.i64[0] | (v33 << 32) | v32 | v38.i64[1];
}

unint64_t PDAoverlayPDA(__n128 _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, float a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float a21)
{
  _H6 = a20;
  _H7 = a19;
  _H16 = a18;
  _H17 = a17;
  __asm { FCVT            S0, H0 }

  v27 = a5 - _S0;
  __asm { FCVT            S1, H1 }

  v29 = a5 - _S1;
  __asm { FCVT            S2, H2 }

  v31 = a5 - _S2;
  __asm { FCVT            S3, H3 }

  v33 = a5 - _S3;
  __asm { FCVT            S17, H17 }

  v35 = a21 - _S17;
  __asm { FCVT            S16, H16 }

  v37 = a21 - _S16;
  __asm { FCVT            S7, H7 }

  v39 = a21 - _S7;
  __asm { FCVT            S6, H6 }

  v41 = a21 - _S6;
  v42 = (v27 * v35) + (v27 * v35);
  v43 = (v29 * v37) + (v29 * v37);
  v44 = (v31 * v39) + (v31 * v39);
  v45 = (v33 * v41) + (v33 * v41);
  v46 = a5 * a21;
  v47 = a5 * 0.5;
  _NF = v27 < (a5 * 0.5);
  v48 = a21 + 1.0;
  v49 = a5 + 1.0;
  v50 = ((((a5 + 1.0) * v35) + (v27 * (a21 + 1.0))) - v42) - (a5 * a21);
  v51 = 1.0 - a21;
  v52 = 1.0 - a5;
  v53 = (((1.0 - a5) * v35) + (v27 * (1.0 - a21))) + v42;
  if (!_NF)
  {
    v53 = v50;
  }

  _NF = v29 < v47;
  v54 = (((v49 * v37) + (v29 * v48)) - v43) - v46;
  v55 = ((v52 * v37) + (v29 * v51)) + v43;
  if (!_NF)
  {
    v55 = v54;
  }

  _NF = v31 < v47;
  v56 = (((v49 * v39) + (v31 * v48)) - v44) - v46;
  v57 = ((v52 * v39) + (v31 * v51)) + v44;
  if (!_NF)
  {
    v57 = v56;
  }

  _NF = v33 < v47;
  v58 = (((v49 * v41) + (v33 * v48)) - v45) - v46;
  v59 = ((v52 * v41) + (v33 * v51)) + v45;
  if (!_NF)
  {
    v59 = v58;
  }

  _S4 = (a5 + a21) - v46;
  *&_S0 = _S4 - v53;
  __asm { FCVT            H0, S0 }

  *&_S1 = _S4 - v55;
  __asm { FCVT            H1, S1 }

  *&_S2 = _S4 - v57;
  __asm { FCVT            H2, S2 }

  *&_S3 = _S4 - v59;
  __asm
  {
    FCVT            H3, S3
    FCVT            H4, S4
  }

  return (_S2 << 32) | (_S3 << 48) | (_S1 << 16) | _S0;
}

unint64_t PDAlightenPDA(float16x4_t a1, __n128 a2, __n128 a3, __n128 a4, float32x4_t a5, float32x4_t a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float16x4_t a17, float a18)
{
  a6.f32[0] = a18;
  a1.i16[1] = a2.n128_u16[0];
  a1.i16[2] = a3.n128_u16[0];
  a1.i16[3] = a4.n128_u16[0];
  v16 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), vcvtq_f32_f16(a1));
  _Q1 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vcvtq_f32_f16(a17));
  v18 = vmulq_n_f32(v16, a18);
  _Q3 = vmulq_n_f32(_Q1, a5.f32[0]);
  _Q2 = vbslq_s8(vcgtq_f32(_Q3, v18), _Q3, v18);
  _Q3.i32[0] = 1.0;
  v21 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, _Q3)), 0), vmlaq_n_f32(_Q2, v16, 1.0 - a18), _Q2);
  v22 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, _Q3)), 0), vmlaq_n_f32(v21, _Q1, 1.0 - a5.f32[0]), v21);
  _Q1.f32[0] = (a5.f32[0] + a18) - (a5.f32[0] * a18);
  _Q2.f32[0] = _Q1.f32[0] - v22.f32[0];
  __asm { FCVT            H2, S2 }

  _Q3.f32[0] = _Q1.f32[0] - v22.f32[2];
  __asm
  {
    FCVT            H3, S3
    FCVT            H4, S1
  }

  v22.i32[0] = vextq_s8(*&v22, *&v22, 8uLL).i32[1];
  *v22.f32 = vsub_f32(vdup_lane_s32(*_Q1.f32, 0), *v22.f32);
  v22.i64[0] = vmovl_u16(vcvt_f16_f32(v22)).u64[0];
  v28.i64[0] = v22.u32[0];
  v28.i64[1] = v22.u32[1];
  _Q1.i64[0] = 0xFFFFLL;
  _Q1.i64[1] = 0xFFFFLL;
  v29 = vshlq_u64(vandq_s8(v28, _Q1), xmmword_18439CB60);
  return v29.i64[0] | (_Q3.u32[0] << 32) | _Q2.u32[0] | v29.i64[1];
}

unint64_t PDAdarkenPDA(float16x4_t a1, __n128 a2, __n128 a3, __n128 a4, float32x4_t a5, float32x4_t a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float16x4_t a17, float a18)
{
  a6.f32[0] = a18;
  a1.i16[1] = a2.n128_u16[0];
  a1.i16[2] = a3.n128_u16[0];
  a1.i16[3] = a4.n128_u16[0];
  v16 = vsubq_f32(vdupq_lane_s32(*a5.f32, 0), vcvtq_f32_f16(a1));
  _Q1 = vsubq_f32(vdupq_lane_s32(*a6.f32, 0), vcvtq_f32_f16(a17));
  v18 = vmulq_n_f32(v16, a18);
  _Q3 = vmulq_n_f32(_Q1, a5.f32[0]);
  _Q2 = vbslq_s8(vcgtq_f32(v18, _Q3), _Q3, v18);
  _Q3.i32[0] = 1.0;
  v21 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a6, _Q3)), 0), vmlaq_n_f32(_Q2, v16, 1.0 - a18), _Q2);
  v22 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vceqq_f32(a5, _Q3)), 0), vmlaq_n_f32(v21, _Q1, 1.0 - a5.f32[0]), v21);
  _Q1.f32[0] = (a5.f32[0] + a18) - (a5.f32[0] * a18);
  _Q2.f32[0] = _Q1.f32[0] - v22.f32[0];
  __asm { FCVT            H2, S2 }

  _Q3.f32[0] = _Q1.f32[0] - v22.f32[2];
  __asm
  {
    FCVT            H3, S3
    FCVT            H4, S1
  }

  v22.i32[0] = vextq_s8(*&v22, *&v22, 8uLL).i32[1];
  *v22.f32 = vsub_f32(vdup_lane_s32(*_Q1.f32, 0), *v22.f32);
  v22.i64[0] = vmovl_u16(vcvt_f16_f32(v22)).u64[0];
  v28.i64[0] = v22.u32[0];
  v28.i64[1] = v22.u32[1];
  _Q1.i64[0] = 0xFFFFLL;
  _Q1.i64[1] = 0xFFFFLL;
  v29 = vshlq_u64(vandq_s8(v28, _Q1), xmmword_18439CB60);
  return v29.i64[0] | (_Q3.u32[0] << 32) | _Q2.u32[0] | v29.i64[1];
}

unint64_t PDAcolordodgePDA(__n128 _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, float a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float a21)
{
  _H17 = a19;
  _H7 = a18;
  _H16 = a17;
  __asm { FCVT            S0, H0 }

  v26 = a5 - _S0;
  __asm { FCVT            S0, H1 }

  v28 = a5 - _S0;
  __asm
  {
    FCVT            S18, H2
    FCVT            S0, H16
  }

  v31 = a21 - _S0;
  __asm { FCVT            S19, H7 }

  v33 = a21 * a21;
  v34 = 0.0;
  v35 = 0.0;
  if (v26 != 0.0)
  {
    if (v31 == a21)
    {
      v35 = 1.0;
    }

    else
    {
      v35 = (v26 * v33) / (a21 - v31);
    }
  }

  _H20 = a20;
  __asm
  {
    FCVT            S21, H3
    FCVT            S22, H17
  }

  v39 = a5 - _S18;
  v40 = a21 - _S19;
  if (v28 != 0.0)
  {
    if (v40 == a21)
    {
      v34 = 1.0;
    }

    else
    {
      v34 = (v28 * v33) / (a21 - v40);
    }
  }

  __asm { FCVT            S23, H20 }

  v42 = a5 - _S21;
  v43 = a21 - _S22;
  v44 = 0.0;
  v45 = 0.0;
  if (v39 != 0.0)
  {
    if (v43 == a21)
    {
      v45 = 1.0;
    }

    else
    {
      v45 = (v39 * v33) / (a21 - v43);
    }
  }

  v46 = a21 - _S23;
  if (v42 != 0.0)
  {
    if (v46 == a21)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = (v42 * v33) / (a21 - v46);
    }
  }

  v47 = v35 + (v26 * (1.0 - a21));
  v48 = v34 + (v28 * (1.0 - a21));
  v49 = v45 + (v39 * (1.0 - a21));
  v50 = v44 + (v42 * (1.0 - a21));
  if (a21 == 1.0)
  {
    v47 = v35;
    v48 = v34;
    v51 = v45;
  }

  else
  {
    v51 = v49;
  }

  if (a21 == 1.0)
  {
    v52 = v44;
  }

  else
  {
    v52 = v50;
  }

  v53 = v47 + (v31 * (1.0 - a5));
  v54 = v48 + (v40 * (1.0 - a5));
  if (a5 == 1.0)
  {
    v53 = v47;
  }

  else
  {
    v48 = v54;
  }

  if (a5 == 1.0)
  {
    v55 = v52;
  }

  else
  {
    v51 = v51 + (v43 * (1.0 - a5));
    v55 = v52 + (v46 * (1.0 - a5));
  }

  _S4 = (a5 + a21) - (a5 * a21);
  if (v53 > _S4)
  {
    v53 = _S4;
  }

  if (v48 > _S4)
  {
    v48 = _S4;
  }

  if (v51 > _S4)
  {
    v51 = _S4;
  }

  if (v55 > _S4)
  {
    v55 = _S4;
  }

  *&_S0 = _S4 - v53;
  __asm { FCVT            H0, S0 }

  *&_S1 = _S4 - v48;
  __asm { FCVT            H1, S1 }

  *&_S2 = _S4 - v51;
  __asm { FCVT            H2, S2 }

  *&_S3 = _S4 - v55;
  __asm
  {
    FCVT            H3, S3
    FCVT            H4, S4
  }

  return (_S2 << 32) | (_S3 << 48) | (_S1 << 16) | _S0;
}

unint64_t PDAcolorburnPDA(__n128 _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, float a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float a21)
{
  _H6 = a20;
  _H21 = a19;
  _H18 = a18;
  _H16 = a17;
  __asm { FCVT            S0, H0 }

  v27 = a5 - _S0;
  __asm { FCVT            S0, H1 }

  v29 = a5 - _S0;
  __asm { FCVT            S0, H2 }

  v31 = a5 - _S0;
  __asm { FCVT            S0, H3 }

  v33 = a5 - _S0;
  __asm
  {
    FCVT            S16, H16
    FCVT            S18, H18
    FCVT            S23, H21
    FCVT            S24, H6
  }

  v38 = a5 * a21;
  v39 = a5 * a21;
  v40 = a5 * a21;
  v41 = a5 * a21;
  v42 = a5 * a21;
  if (a21 != 1.0)
  {
    v39 = v38 + (v27 * (1.0 - a21));
    v40 = v38 + (v29 * (1.0 - a21));
    v41 = v38 + (v31 * (1.0 - a21));
    v42 = v38 + (v33 * (1.0 - a21));
  }

  v43 = a21 - _S16;
  v44 = a21 - _S18;
  v45 = a21 - _S23;
  v46 = a21 - _S24;
  if (a5 != 1.0)
  {
    v39 = v39 + (v43 * (1.0 - a5));
    v40 = v40 + (v44 * (1.0 - a5));
    v41 = v41 + (v45 * (1.0 - a5));
    v42 = v42 + (v46 * (1.0 - a5));
  }

  v47 = a5 - v27;
  if (v47 != 0.0)
  {
    if (v43 == 0.0 || (v39 = v39 - (((a21 * a21) * v47) / v43), v39 < 0.0))
    {
      v39 = 0.0;
    }
  }

  v48 = a5 - v29;
  if (v48 != 0.0)
  {
    if (v44 == 0.0 || (v40 = v40 - (((a21 * a21) * v48) / v44), v40 < 0.0))
    {
      v40 = 0.0;
    }
  }

  v49 = a5 - v31;
  if (v49 != 0.0)
  {
    if (v45 == 0.0 || (v41 = v41 - (((a21 * a21) * v49) / v45), v41 < 0.0))
    {
      v41 = 0.0;
    }
  }

  v50 = a5 - v33;
  if (v50 != 0.0)
  {
    if (v46 == 0.0 || (v42 = v42 - (((a21 * a21) * v50) / v46), v42 < 0.0))
    {
      v42 = 0.0;
    }
  }

  _S0 = (a5 + a21) - v38;
  *&_S1 = _S0 - v39;
  __asm { FCVT            H1, S1 }

  *&_S2 = _S0 - v40;
  __asm { FCVT            H2, S2 }

  *&_S3 = _S0 - v41;
  __asm { FCVT            H3, S3 }

  *&_S4 = _S0 - v42;
  __asm
  {
    FCVT            H4, S4
    FCVT            H0, S0
  }

  return (_S3 << 32) | (_S4 << 48) | (_S2 << 16) | _S1;
}

unint64_t PDAhardlightPDA(__n128 _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, float a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float a21)
{
  _H6 = a20;
  _H7 = a19;
  _H16 = a18;
  _H17 = a17;
  __asm { FCVT            S0, H0 }

  v27 = a5 - _S0;
  __asm { FCVT            S1, H1 }

  v29 = a5 - _S1;
  __asm { FCVT            S2, H2 }

  v31 = a5 - _S2;
  __asm { FCVT            S3, H3 }

  v33 = a5 - _S3;
  __asm { FCVT            S17, H17 }

  v35 = a21 - _S17;
  __asm { FCVT            S16, H16 }

  v37 = a21 - _S16;
  __asm { FCVT            S7, H7 }

  v39 = a21 - _S7;
  __asm { FCVT            S6, H6 }

  v41 = a21 - _S6;
  v42 = (v27 * v35) + (v27 * v35);
  v43 = (v29 * v37) + (v29 * v37);
  v44 = (v31 * v39) + (v31 * v39);
  v45 = (v33 * v41) + (v33 * v41);
  v46 = a5 * a21;
  v47 = a21 * 0.5;
  v48 = 1.0 - a21;
  v49 = 1.0 - a5;
  v50 = (((1.0 - a5) * v35) + (v27 * (1.0 - a21))) + v42;
  v51 = a21 + 1.0;
  v52 = a5 + 1.0;
  v53 = ((((a5 + 1.0) * v35) + (v27 * (a21 + 1.0))) - v42) - (a5 * a21);
  if (v35 <= (a21 * 0.5))
  {
    v53 = v50;
  }

  v54 = ((v49 * v37) + (v29 * v48)) + v43;
  v55 = (((v52 * v37) + (v29 * v51)) - v43) - v46;
  if (v37 <= v47)
  {
    v55 = v54;
  }

  v56 = ((v49 * v39) + (v31 * v48)) + v44;
  v57 = (((v52 * v39) + (v31 * v51)) - v44) - v46;
  if (v39 <= v47)
  {
    v57 = v56;
  }

  v58 = ((v49 * v41) + (v33 * v48)) + v45;
  v59 = (((v52 * v41) + (v33 * v51)) - v45) - v46;
  if (v41 <= v47)
  {
    v59 = v58;
  }

  _S4 = (a5 + a21) - v46;
  *&_S0 = _S4 - v53;
  __asm { FCVT            H0, S0 }

  *&_S1 = _S4 - v55;
  __asm { FCVT            H1, S1 }

  *&_S2 = _S4 - v57;
  __asm { FCVT            H2, S2 }

  *&_S3 = _S4 - v59;
  __asm
  {
    FCVT            H3, S3
    FCVT            H4, S4
  }

  return (_S2 << 32) | (_S3 << 48) | (_S1 << 16) | _S0;
}

unint64_t PDAsoftlightPDA(float16x4_t a1, __n128 a2, __n128 a3, float16x4_t a4, double a5, int32x2_t a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int32 a17, __int16 a18, __int16 a19, float a20)
{
  *a6.i32 = a20;
  v18.i16[0] = a19;
  v19.i32[0] = a17;
  a1.i16[1] = a2.n128_u16[0];
  v21 = vcvtq_f32_f16(a1);
  v20 = vdup_lane_s32(*&a5, 0);
  *v21.f32 = vsub_f32(v20, *v21.f32);
  v22 = vdup_lane_s32(a6, 0);
  _D1 = vsub_f32(v22, *&vcvtq_f32_f16(v19));
  a4.i16[1] = a3.n128_u16[0];
  v24 = vsub_f32(v20, *&vcvtq_f32_f16(a4));
  v18.i16[1] = a18;
  v25 = vsub_f32(v22, *&vcvtq_f32_f16(v18));
  if (*&a5 == 0.0)
  {
    v28 = 0.0;
    v31 = 0.0;
  }

  else
  {
    v26 = vmul_f32(*v21.f32, _D1);
    v27 = vsub_f32(vadd_f32(v26, v26), vdiv_f32(vmul_f32(vmul_f32(*v21.f32, *v21.f32), vsub_f32(vadd_f32(_D1, _D1), v22)), v20));
    v28 = COERCE_DOUBLE(vbic_s8(v27, vcltz_f32(v27)));
    v29 = vmul_f32(v24, v25);
    v30 = vsub_f32(vadd_f32(v29, v29), vdiv_f32(vmul_f32(vmul_f32(v24, v24), vsub_f32(vadd_f32(v25, v25), v22)), v20));
    v31 = COERCE_DOUBLE(vbic_s8(v30, vcltz_f32(v30)));
  }

  v32 = COERCE_DOUBLE(vmla_n_f32(*&v28, *v21.f32, 1.0 - a20));
  *v21.f32 = vmla_n_f32(*&v31, v24, 1.0 - a20);
  if (a20 == 1.0)
  {
    v33 = v28;
  }

  else
  {
    v33 = v32;
  }

  if (a20 == 1.0)
  {
    *v21.i64 = v31;
  }

  if (*&a5 != 1.0)
  {
    v33 = COERCE_DOUBLE(vmla_n_f32(*&v33, _D1, 1.0 - *&a5));
    *v21.f32 = vmla_n_f32(*v21.f32, v25, 1.0 - *&a5);
  }

  _D1.f32[0] = (*&a5 + a20) - (*&a5 * a20);
  *&_S2 = _D1.f32[0] - *&v33;
  __asm { FCVT            H2, S2 }

  *&_S4 = _D1.f32[0] - v21.f32[1];
  __asm
  {
    FCVT            H4, S4
    FCVT            H5, S1
  }

  v21.i32[1] = HIDWORD(v33);
  *v21.f32 = vsub_f32(vdup_lane_s32(_D1, 0), *v21.f32);
  v41 = vmovl_u16(vcvt_f16_f32(v21)).u64[0];
  v42.i64[0] = v41;
  v42.i64[1] = HIDWORD(v41);
  v43.i64[0] = 0xFFFFLL;
  v43.i64[1] = 0xFFFFLL;
  v44 = vshlq_u64(vandq_s8(v42, v43), xmmword_18439CB60);
  return v44.i64[0] | (_S4 << 32) | _S2 | v44.i64[1];
}

uint64_t PDAdifferencePDA(__n128 _Q0, __n128 a2, __n128 _Q2, float16x4_t a4, double a5, int32x2_t a6, float16x4_t a7, double _D7, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float a21)
{
  a7.i16[0] = a20;
  _H7 = a19;
  *a6.i32 = a21;
  _H16 = a17;
  __asm { FCVT            S0, H0 }

  v28 = *&a5 - _S0;
  __asm { FCVT            S2, H2 }

  v30 = *&a5 - _S2;
  __asm { FCVT            S16, H16 }

  v32 = a21 - _S16;
  __asm { FCVT            S7, H7 }

  v34 = a21 - _S7;
  v35 = v28 + v32;
  v36 = v28 * a21;
  v37 = v32 * *&a5;
  v38 = v35 - v36;
  v39 = v36 - v37;
  v40 = v38 - v37;
  if (v39 < 0.0)
  {
    v39 = -v39;
  }

  v41 = v40 + v39;
  v42 = v30 + v34;
  v43 = v30 * a21;
  v44 = v34 * *&a5;
  v45 = v42 - v43;
  v46 = v43 - v44;
  *&_D7 = v45 - v44;
  if (v46 < 0.0)
  {
    v46 = -v46;
  }

  v47 = *&_D7 + v46;
  *&_D7 = (*&a5 + a21) - (*&a5 * a21);
  *&_S0 = *&_D7 - v41;
  __asm { FCVT            H0, S0 }

  *&_S2 = *&_D7 - v47;
  __asm
  {
    FCVT            H2, S2
    FCVT            H16, S7
  }

  v51 = _S0;
  v52 = _S2;
  a4.i16[1] = a2.n128_u16[0];
  v53 = vcvtq_f32_f16(a4);
  *v53.f32 = vsub_f32(vdup_lane_s32(*&a5, 0), *v53.f32);
  a7.i16[1] = a18;
  v54 = vsub_f32(vdup_lane_s32(a6, 0), *&vcvtq_f32_f16(a7));
  v55 = vadd_f32(*v53.f32, v54);
  *v53.f32 = vmul_n_f32(*v53.f32, a21);
  v56 = vmul_n_f32(v54, *&a5);
  v57 = vsub_f32(v55, *v53.f32);
  *v53.f32 = vsub_f32(*v53.f32, v56);
  *v53.f32 = vsub_f32(vdup_lane_s32(*&_D7, 0), vadd_f32(vsub_f32(v57, v56), vbsl_s8(vcltz_f32(*v53.f32), vneg_f32(*v53.f32), *v53.f32)));
  v53.i64[0] = vmovl_u16(vcvt_f16_f32(v53)).u64[0];
  v58.i64[0] = v53.u32[0];
  v58.i64[1] = v53.u32[1];
  v59.i64[0] = 0xFFFFLL;
  v59.i64[1] = 0xFFFFLL;
  v60 = vshlq_u64(vandq_s8(v58, v59), xmmword_18439CB60);
  return v60.i64[0] | (v52 << 32) | v51 | v60.i64[1];
}

unint64_t PDAexclusionPDA(__n128 _Q0, __n128 a2, __n128 _Q2, float16x4_t a4, double a5, float16x4_t a6, double _D6, int32x2_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float a21)
{
  a6.i16[0] = a20;
  LOWORD(_D6) = a19;
  *a8.i32 = a21;
  _H16 = a17;
  __asm
  {
    FCVT            S0, H0
    FCVT            S2, H2
    FCVT            S16, H16
    FCVT            S6, H6
  }

  v29 = ((*&a5 - _S2) + (a21 - *&_D6)) + (((a21 - *&_D6) * (*&a5 - _S2)) * -2.0);
  *&_D6 = (*&a5 + a21) - (*&a5 * a21);
  *&_S0 = *&_D6 - (((*&a5 - _S0) + (a21 - _S16)) + (((a21 - _S16) * (*&a5 - _S0)) * -2.0));
  __asm { FCVT            H0, S0 }

  *&_S2 = *&_D6 - v29;
  __asm
  {
    FCVT            H2, S2
    FCVT            H16, S6
  }

  v32 = _S0;
  a4.i16[1] = a2.n128_u16[0];
  v33 = vcvtq_f32_f16(a4);
  *v33.f32 = vsub_f32(vdup_lane_s32(*&a5, 0), *v33.f32);
  a6.i16[1] = a18;
  v34 = vsub_f32(vdup_lane_s32(a8, 0), *&vcvtq_f32_f16(a6));
  *v33.f32 = vsub_f32(vdup_lane_s32(*&_D6, 0), vmla_f32(vadd_f32(*v33.f32, v34), 0xC0000000C0000000, vmul_f32(v34, *v33.f32)));
  v33.i64[0] = vmovl_u16(vcvt_f16_f32(v33)).u64[0];
  v35.i64[0] = v33.u32[0];
  v35.i64[1] = v33.u32[1];
  v36.i64[0] = 0xFFFFLL;
  v36.i64[1] = 0xFFFFLL;
  v37 = vshlq_u64(vandq_s8(v35, v36), xmmword_18439CB60);
  return v37.i64[0] | (_S2 << 32) | v32 | v37.i64[1];
}

unint64_t PDAhuePDA(float32x4_t _Q0, __n128 _Q1, float16x4_t a3, __n128 a4, double _D4, int32x2_t a6, float16x4_t a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int32 a19, float a20)
{
  *a6.i32 = a20;
  a7.i32[0] = a19;
  _H7 = a18;
  _H16 = a17;
  v74 = *MEMORY[0x1E69E9840];
  __asm { FCVT            S0, H0 }

  v26 = *&_D4 - _S0;
  __asm { FCVT            S1, H1 }

  v28 = *&_D4 - _S1;
  a3.i16[1] = a4.n128_u16[0];
  v29 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(*&_D4, 0), *&vcvtq_f32_f16(a3)));
  __asm { FCVT            S2, H16 }

  v31 = a20 - _S2;
  __asm { FCVT            S2, H7 }

  v33 = a20 - _S2;
  v34 = vsub_f32(vdup_lane_s32(a6, 0), *&vcvtq_f32_f16(a7));
  v35 = v26 * a20;
  v36 = v26 - (v26 * a20);
  v37 = v28 - (v28 * a20);
  v38 = COERCE_DOUBLE(vmul_n_f32(*&v29, a20));
  v39 = COERCE_DOUBLE(vsub_f32(*&v29, *&v38));
  if (a20 == 1.0)
  {
    v36 = 0.0;
    v37 = 0.0;
    v40 = v28;
  }

  else
  {
    v40 = v28 * a20;
  }

  if (a20 == 1.0)
  {
    v35 = v26;
    v41 = 0.0;
  }

  else
  {
    v41 = v39;
  }

  if (a20 == 1.0)
  {
    *_Q0.i64 = v29;
  }

  else
  {
    *_Q0.i64 = v38;
  }

  v42 = (v31 + v36) - (v31 * *&_D4);
  v43 = vmul_n_f32(v34, *&_D4);
  v44 = COERCE_DOUBLE(vsub_f32(vadd_f32(v34, *&v41), v43));
  if (*&_D4 == 1.0)
  {
    v45 = v33;
  }

  else
  {
    v31 = v31 * *&_D4;
    v45 = v33 * *&_D4;
  }

  if (*&_D4 == 1.0)
  {
    v46 = v34.f32[0];
  }

  else
  {
    v46 = v43.f32[0];
  }

  if (*&_D4 == 1.0)
  {
    v47 = v36;
  }

  else
  {
    v47 = v42;
  }

  if (*&_D4 == 1.0)
  {
    v48 = v37;
  }

  else
  {
    v48 = (v33 + v37) - (v33 * *&_D4);
  }

  if (*&_D4 != 1.0)
  {
    v41 = v44;
  }

  v71 = v31;
  v72 = v45;
  v73 = v46;
  v49 = v31 < v45;
  v50 = v31 >= v45;
  if (v31 < v45)
  {
    v51 = v31;
  }

  else
  {
    v51 = v45;
  }

  if (v31 < v45)
  {
    v31 = v45;
  }

  if (v46 <= v31)
  {
    v52 = v50;
  }

  else
  {
    v52 = v49;
  }

  v53 = 2;
  if (v46 <= v31)
  {
    v54 = v49;
  }

  else
  {
    v54 = 2;
  }

  if (v46 < v51)
  {
    v55 = v49;
  }

  else
  {
    v53 = v50;
    v50 = v52;
    v55 = v54;
  }

  v56 = *(&v71 + v55);
  v57 = *(&v71 + v53);
  if (v56 <= v57)
  {
    *(&v71 + v55) = 0.0;
    *(&v71 + v50) = 0.0;
  }

  else
  {
    if (v35 >= v40)
    {
      v58 = v40;
    }

    else
    {
      v58 = v35;
    }

    if (v35 >= v40)
    {
      v59 = v35;
    }

    else
    {
      v59 = v40;
    }

    if (_Q0.f32[0] > v59)
    {
      v60 = _Q0.f32[0];
    }

    else
    {
      v60 = v59;
    }

    if (_Q0.f32[0] >= v58)
    {
      v59 = v60;
    }

    else
    {
      v58 = _Q0.f32[0];
    }

    v61 = v59 - v58;
    *(&v71 + v55) = v61;
    *(&v71 + v50) = (v61 / (v56 - v57)) * (*(&v71 + v50) - v57);
  }

  *(&v71 + v53) = 0.0;
  v62 = (((v40 - v72) * 0.59) + ((v35 - v71) * 0.3)) + ((_Q0.f32[0] - v73) * 0.11);
  *&_D4 = (*&_D4 + a20) - (*&_D4 * a20);
  *&_S3 = *&_D4 - (v47 + (v71 + v62));
  __asm { FCVT            H3, S3 }

  *&_S5 = *&_D4 - (v48 + (v72 + v62));
  __asm
  {
    FCVT            H5, S5
    FCVT            H6, S4
  }

  _Q0.f32[0] = v73 + v62;
  *_Q0.f32 = vsub_f32(vdup_lane_s32(*&_D4, 0), vadd_f32(*&v41, *_Q0.f32));
  v66 = vmovl_u16(vcvt_f16_f32(_Q0)).u64[0];
  v67.i64[0] = v66;
  v67.i64[1] = HIDWORD(v66);
  v68.i64[0] = 0xFFFFLL;
  v68.i64[1] = 0xFFFFLL;
  v69 = vshlq_u64(vandq_s8(v67, v68), xmmword_18439CB70);
  return vorrq_s8(v69, vdupq_laneq_s64(v69, 1)).u64[0] | (_S5 << 16) | _S3;
}

unint64_t PDAsaturationPDA(float32x4_t _Q0, __n128 _Q1, float16x4_t a3, __n128 a4, double _D4, int32x2_t a6, float16x4_t a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int32 a19, float a20)
{
  *a6.i32 = a20;
  a7.i32[0] = a19;
  _H7 = a18;
  _H16 = a17;
  v74 = *MEMORY[0x1E69E9840];
  __asm { FCVT            S0, H0 }

  v26 = *&_D4 - _S0;
  __asm { FCVT            S1, H1 }

  v28 = *&_D4 - _S1;
  a3.i16[1] = a4.n128_u16[0];
  v29 = COERCE_DOUBLE(vsub_f32(vdup_lane_s32(*&_D4, 0), *&vcvtq_f32_f16(a3)));
  __asm { FCVT            S2, H16 }

  v31 = a20 - _S2;
  __asm { FCVT            S2, H7 }

  v33 = a20 - _S2;
  v34 = vsub_f32(vdup_lane_s32(a6, 0), *&vcvtq_f32_f16(a7));
  v35 = v26 * a20;
  v36 = v26 - (v26 * a20);
  v37 = v28 - (v28 * a20);
  v38 = COERCE_DOUBLE(vmul_n_f32(*&v29, a20));
  v39 = COERCE_DOUBLE(vsub_f32(*&v29, *&v38));
  if (a20 == 1.0)
  {
    v36 = 0.0;
    v37 = 0.0;
    v40 = v28;
  }

  else
  {
    v40 = v28 * a20;
  }

  if (a20 == 1.0)
  {
    v35 = v26;
    v41 = 0.0;
  }

  else
  {
    v41 = v39;
  }

  if (a20 == 1.0)
  {
    *_Q0.i64 = v29;
  }

  else
  {
    *_Q0.i64 = v38;
  }

  v42 = (v31 + v36) - (v31 * *&_D4);
  v43 = vmul_n_f32(v34, *&_D4);
  v44 = COERCE_DOUBLE(vsub_f32(vadd_f32(v34, *&v41), v43));
  if (*&_D4 == 1.0)
  {
    v45 = v31;
  }

  else
  {
    v45 = v31 * *&_D4;
  }

  if (*&_D4 == 1.0)
  {
    v46 = v33;
  }

  else
  {
    v46 = v33 * *&_D4;
  }

  if (*&_D4 == 1.0)
  {
    v47 = v34.f32[0];
  }

  else
  {
    v47 = v43.f32[0];
  }

  if (*&_D4 == 1.0)
  {
    v48 = v36;
  }

  else
  {
    v48 = v42;
  }

  if (*&_D4 == 1.0)
  {
    v49 = v37;
  }

  else
  {
    v49 = (v33 + v37) - (v33 * *&_D4);
  }

  if (*&_D4 != 1.0)
  {
    v41 = v44;
  }

  v71 = v35;
  v72 = v40;
  v73 = _Q0.f32[0];
  v50 = v35 >= v40;
  if (v35 < v40)
  {
    v51 = v35;
  }

  else
  {
    v51 = v40;
  }

  if (v35 < v40)
  {
    v52 = v40;
  }

  else
  {
    v52 = v35;
  }

  if (_Q0.f32[0] <= v52)
  {
    v53 = v35 >= v40;
  }

  else
  {
    v53 = v35 < v40;
  }

  v54 = 2;
  if (_Q0.f32[0] <= v52)
  {
    v55 = v35 < v40;
  }

  else
  {
    v55 = 2;
  }

  if (_Q0.f32[0] < v51)
  {
    v56 = v35 < v40;
  }

  else
  {
    v54 = v35 >= v40;
    v50 = v53;
    v56 = v55;
  }

  v57 = *(&v71 + v56);
  v58 = *(&v71 + v54);
  if (v57 <= v58)
  {
    *(&v71 + v56) = 0.0;
    *(&v71 + v50) = 0.0;
  }

  else
  {
    if (v45 >= v46)
    {
      v59 = v46;
    }

    else
    {
      v59 = v45;
    }

    if (v45 < v46)
    {
      v45 = v46;
    }

    if (v47 > v45)
    {
      v60 = v47;
    }

    else
    {
      v60 = v45;
    }

    if (v47 >= v59)
    {
      v47 = v59;
      v45 = v60;
    }

    v61 = v45 - v47;
    *(&v71 + v56) = v61;
    *(&v71 + v50) = (v61 / (v57 - v58)) * (*(&v71 + v50) - v58);
  }

  *(&v71 + v54) = 0.0;
  v62 = (((v40 - v72) * 0.59) + ((v35 - v71) * 0.3)) + ((_Q0.f32[0] - v73) * 0.11);
  *&_D4 = (*&_D4 + a20) - (*&_D4 * a20);
  *&_S3 = *&_D4 - (v48 + (v71 + v62));
  __asm { FCVT            H3, S3 }

  *&_S5 = *&_D4 - (v49 + (v72 + v62));
  __asm
  {
    FCVT            H5, S5
    FCVT            H6, S4
  }

  _Q0.f32[0] = v73 + v62;
  *_Q0.f32 = vsub_f32(vdup_lane_s32(*&_D4, 0), vadd_f32(*&v41, *_Q0.f32));
  v66 = vmovl_u16(vcvt_f16_f32(_Q0)).u64[0];
  v67.i64[0] = v66;
  v67.i64[1] = HIDWORD(v66);
  v68.i64[0] = 0xFFFFLL;
  v68.i64[1] = 0xFFFFLL;
  v69 = vshlq_u64(vandq_s8(v67, v68), xmmword_18439CB70);
  return vorrq_s8(v69, vdupq_laneq_s64(v69, 1)).u64[0] | (_S5 << 16) | _S3;
}

unint64_t PDAluminosityPDA(__n128 _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, float a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, __int16 a18, __int16 a19, __int16 a20, float a21)
{
  _H6 = a20;
  _H7 = a19;
  _H16 = a18;
  _H17 = a17;
  __asm { FCVT            S0, H0 }

  v27 = a5 - _S0;
  __asm { FCVT            S1, H1 }

  v29 = a5 - _S1;
  __asm { FCVT            S2, H2 }

  v31 = a5 - _S2;
  __asm { FCVT            S17, H17 }

  v33 = a21 - _S17;
  __asm { FCVT            S16, H16 }

  v35 = a21 - _S16;
  __asm { FCVT            S7, H7 }

  v37 = a21 - _S7;
  __asm { FCVT            S6, H6 }

  v39 = a21 - _S6;
  __asm { FCVT            S3, H3 }

  v41 = v27 - (v27 * a21);
  v42 = v29 - (v29 * a21);
  v43 = v31 - (v31 * a21);
  v44 = (a5 - _S3) - ((a5 - _S3) * a21);
  if (_ZF)
  {
    v41 = 0.0;
    v42 = 0.0;
    v43 = 0.0;
    v44 = 0.0;
  }

  else
  {
    v31 = v31 * a21;
    v29 = v29 * a21;
    v27 = v27 * a21;
  }

  v45 = (v33 + v41) - (v33 * a5);
  v46 = (v35 + v42) - (v35 * a5);
  v47 = (v37 + v43) - (v37 * a5);
  v48 = (v39 + v44) - (v39 * a5);
  if (a5 == 1.0)
  {
    v45 = v41;
    v49 = v42;
  }

  else
  {
    v33 = v33 * a5;
    v35 = v35 * a5;
    v37 = v37 * a5;
    v39 = v39 * a5;
    v49 = v46;
  }

  if (a5 == 1.0)
  {
    v50 = v43;
  }

  else
  {
    v50 = v47;
  }

  if (a5 != 1.0)
  {
    v44 = v48;
  }

  v51 = (((v35 - v29) * 0.59) + ((v33 - v27) * 0.3)) + ((v37 - v31) * 0.11);
  _S4 = (a5 + a21) - (a5 * a21);
  *&_S0 = _S4 - (v45 + (v27 + v51));
  __asm { FCVT            H0, S0 }

  *&_S1 = _S4 - (v49 + (v29 + v51));
  __asm { FCVT            H1, S1 }

  *&_S2 = _S4 - (v50 + (v31 + v51));
  __asm { FCVT            H2, S2 }

  *&_S3 = _S4 - (v39 + v44);
  __asm
  {
    FCVT            H3, S3
    FCVT            H4, S4
  }

  return (_S2 << 32) | (_S3 << 48) | (_S1 << 16) | _S0;
}

unint64_t CMYKf16_mark_constmask(unint64_t result, uint64_t a2, double a3, __n128 _Q1, double a5, float32x4_t a6, float32x4_t _Q4, float32x4_t _Q5, double _D6, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *(result + 48);
  v17 = *(result + 136);
  v18 = *(result + 96);
  if (v18)
  {
    _H1 = *v18;
  }

  else
  {
    LOWORD(_H1) = COERCE_UNSIGNED_INT(1.0);
  }

  v20 = *(result + 12);
  v21 = *(result + 16);
  if (v16)
  {
    v22 = *(result + 32) >> 1;
    v23 = (v16 + 2 * v22 * v21 + 2 * v20);
    v24 = 1;
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
    if (!v17)
    {
      return result;
    }
  }

  v25 = *(result + 4);
  v26 = v22 - v25;
  if (v16)
  {
    v27 = v22 - v25;
  }

  else
  {
    v27 = v22;
  }

  v28 = *(result + 8);
  v29 = *(result + 28) >> 3;
  _D0 = **(result + 88);
  __asm { FCVT            S8, H1 }

  v36 = (*(result + 40) + 8 * v29 * v21 + 8 * v20);
  v37 = *(result + 124);
  v38 = v17 + *(result + 108) * v37 + *(result + 104);
  v39 = v37 - v25;
  v522 = v29 - v25;
  switch(a2)
  {
    case 0:
      if (v16)
      {
        v40 = 2 * v24;
        do
        {
          v41 = v25;
          do
          {
            v42 = *v38;
            if (*v38)
            {
              if (v42 == 255)
              {
                *v36 = 0;
                _H1 = 0;
              }

              else
              {
                v44 = (v42 ^ 0xFFu) * 0.0039216;
                *v36 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), v44));
                _H2 = *v23;
                __asm { FCVT            S2, H2 }

                _S1 = v44 * _S2;
                __asm { FCVT            H1, S1 }
              }

              *v23 = _H1;
            }

            ++v38;
            ++v36;
            v23 = (v23 + v40);
            --v41;
          }

          while (v41);
          v38 += v39;
          v36 += v522;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v346 = v25;
          do
          {
            v347 = *v38;
            if (*v38)
            {
              if (v347 == 255)
              {
                *v36 = 0;
              }

              else
              {
                *v36 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), (v347 ^ 0xFFu) * 0.0039216));
              }
            }

            ++v38;
            ++v36;
            --v346;
          }

          while (v346);
          v38 += v39;
          v36 += v522;
          --v28;
        }

        while (v28);
      }

      return result;
    case 1:
      v201 = v38 & 3;
      if (!v16)
      {
        v348 = -1 << (8 * v201);
        if ((v38 & 3) != 0)
        {
          v349 = v38 & 0xFC;
        }

        else
        {
          v349 = v17 + *(result + 108) * v37 + *(result + 104);
        }

        if ((v38 & 3) != 0)
        {
          v350 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v348 = -1;
          v350 = (v17 + *(result + 108) * v37 + *(result + 104));
        }

        if ((v38 & 3) != 0)
        {
          v351 = &v36[-(v38 & 3)];
        }

        else
        {
          v351 = v36;
        }

        if ((v38 & 3) != 0)
        {
          v352 = v201 + v25;
        }

        else
        {
          v352 = *(result + 4);
        }

        if (((v352 + v349) & 3) != 0)
        {
          v353 = 4 - ((v352 + v349) & 3);
          v201 += v353;
          v354 = 0xFFFFFFFF >> (8 * v353);
          if (v352 >= 4)
          {
            v355 = v354;
          }

          else
          {
            v355 = 0;
          }

          if (v352 >= 4)
          {
            v354 = -1;
          }

          v348 &= v354;
        }

        else
        {
          v355 = 0;
        }

        v495 = v39 - v201;
        v496 = v352 >> 2;
        v497 = vcvtq_f32_f16(_D0);
        v498 = v522 - v201;
        while (1)
        {
          v499 = *v350 & v348;
          v500 = v496;
          v501 = v355;
          if (!v499)
          {
            goto LABEL_537;
          }

LABEL_535:
          if (v499 == -1)
          {
            break;
          }

          while (1)
          {
            if (v499)
            {
              v503 = _D0;
              if (v499 != 255)
              {
                v503 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v497, v499 * 0.0039216))), vcvtq_f32_f16(*v351), 1.0 - (v499 * 0.0039216)));
              }

              *v351 = v503;
            }

            if (BYTE1(v499))
            {
              v504 = _D0;
              if (BYTE1(v499) != 255)
              {
                v504 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v497, BYTE1(v499) * 0.0039216))), vcvtq_f32_f16(v351[1]), 1.0 - (BYTE1(v499) * 0.0039216)));
              }

              v351[1] = v504;
            }

            result = BYTE2(v499);
            if (BYTE2(v499))
            {
              v505 = _D0;
              if (BYTE2(v499) != 255)
              {
                v505 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v497, BYTE2(v499) * 0.0039216))), vcvtq_f32_f16(v351[2]), 1.0 - (BYTE2(v499) * 0.0039216)));
              }

              v351[2] = v505;
            }

            v506 = HIBYTE(v499);
            if (v506 == 255)
            {
              goto LABEL_555;
            }

            if (v506)
            {
              v351[3] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v497, v506 * 0.0039216))), vcvtq_f32_f16(v351[3]), 1.0 - (v506 * 0.0039216)));
            }

LABEL_537:
            while (1)
            {
              v502 = v500;
              v351 += 4;
              --v500;
              ++v350;
              if (v502 < 2)
              {
                break;
              }

              v499 = *v350;
              if (*v350)
              {
                goto LABEL_535;
              }
            }

            if (!v501)
            {
              break;
            }

            v501 = 0;
            v499 = *v350 & v355;
          }

          v350 = (v350 + v495);
          v351 += v498;
          if (!--v28)
          {
            return result;
          }
        }

        *v351 = _D0;
        v351[1] = _D0;
        v351[2] = _D0;
LABEL_555:
        v351[3] = _D0;
        goto LABEL_537;
      }

      v202 = -1 << (8 * v201);
      v203 = &v36[-(v38 & 3)];
      if ((v38 & 3) != 0)
      {
        v204 = v38 & 0xFC;
      }

      else
      {
        v204 = v17 + *(result + 108) * v37 + *(result + 104);
      }

      if ((v38 & 3) != 0)
      {
        v205 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v202 = -1;
        v205 = (v17 + *(result + 108) * v37 + *(result + 104));
      }

      if ((v38 & 3) != 0)
      {
        v206 = &v23[-(v38 & 3)];
      }

      else
      {
        v206 = v23;
      }

      if ((v38 & 3) != 0)
      {
        v207 = v201 + v25;
      }

      else
      {
        v203 = v36;
        v207 = *(result + 4);
      }

      if (((v207 + v204) & 3) != 0)
      {
        v208 = 4 - ((v207 + v204) & 3);
        v201 += v208;
        v209 = 0xFFFFFFFF >> (8 * v208);
        if (v207 >= 4)
        {
          v210 = v209;
        }

        else
        {
          v210 = 0;
        }

        if (v207 >= 4)
        {
          v209 = -1;
        }

        v202 &= v209;
      }

      else
      {
        v210 = 0;
      }

      v410 = v39 - v201;
      v411 = v522 - v201;
      v412 = v207 >> 2;
      v413 = vcvtq_f32_f16(_D0);
      v414 = v26 - v201;
      do
      {
        v415 = *v205 & v202;
        LODWORD(result) = v412;
        v416 = v210;
        if (!v415)
        {
          goto LABEL_485;
        }

LABEL_483:
        if (v415 == -1)
        {
          *v203 = _D0;
          *v206 = _H1;
          v203[1] = _D0;
          v206[1] = _H1;
          v203[2] = _D0;
          v206[2] = _H1;
LABEL_506:
          v203[3] = _D0;
          v206[3] = _H1;
          goto LABEL_485;
        }

        while (1)
        {
          if (v415)
          {
            if (v415 == 255)
            {
              *v203 = _D0;
              _H5 = _H1;
            }

            else
            {
              v419 = v415 * 0.0039216;
              _S6 = v419 * _S8;
              __asm { FCVT            H6, S6 }

              v421 = 1.0 - v419;
              *v203 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v413, v419))), vcvtq_f32_f16(*v203), 1.0 - v419));
              __asm { FCVT            S5, H6 }

              *&_S6 = *v206;
              __asm { FCVT            S6, H6 }

              _S5 = _S5 + (_S6 * v421);
              __asm { FCVT            H5, S5 }
            }

            *v206 = _H5;
          }

          if (BYTE1(v415))
          {
            if (BYTE1(v415) == 255)
            {
              v203[1] = _D0;
              _H5 = _H1;
            }

            else
            {
              v426 = BYTE1(v415) * 0.0039216;
              _S6 = v426 * _S8;
              __asm { FCVT            H6, S6 }

              v428 = 1.0 - v426;
              v203[1] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v413, v426))), vcvtq_f32_f16(v203[1]), 1.0 - v426));
              __asm { FCVT            S5, H6 }

              *&_S6 = v206[1];
              __asm { FCVT            S6, H6 }

              _S5 = _S5 + (_S6 * v428);
              __asm { FCVT            H5, S5 }
            }

            v206[1] = _H5;
          }

          if (BYTE2(v415))
          {
            if (BYTE2(v415) == 255)
            {
              v203[2] = _D0;
              _H5 = _H1;
            }

            else
            {
              v433 = BYTE2(v415) * 0.0039216;
              _S6 = v433 * _S8;
              __asm { FCVT            H6, S6 }

              v435 = 1.0 - v433;
              v203[2] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v413, v433))), vcvtq_f32_f16(v203[2]), 1.0 - v433));
              __asm { FCVT            S5, H6 }

              *&_S6 = v206[2];
              __asm { FCVT            S6, H6 }

              _S5 = _S5 + (_S6 * v435);
              __asm { FCVT            H5, S5 }
            }

            v206[2] = _H5;
          }

          v439 = HIBYTE(v415);
          if (v439 == 255)
          {
            goto LABEL_506;
          }

          if (v439)
          {
            v440 = v439 * 0.0039216;
            _S6 = v440 * _S8;
            __asm { FCVT            H6, S6 }

            v442 = 1.0 - v440;
            v203[3] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v413, v440))), vcvtq_f32_f16(v203[3]), 1.0 - v440));
            __asm { FCVT            S5, H6 }

            *&_S6 = v206[3];
            __asm { FCVT            S6, H6 }

            _S5 = _S5 + (_S6 * v442);
            __asm { FCVT            H5, S5 }

            v206[3] = *&_S5;
          }

LABEL_485:
          while (1)
          {
            v417 = result;
            v203 += 4;
            v206 += 4;
            result = (result - 1);
            ++v205;
            if (v417 < 2)
            {
              break;
            }

            v415 = *v205;
            if (*v205)
            {
              goto LABEL_483;
            }
          }

          if (!v416)
          {
            break;
          }

          v416 = 0;
          v415 = *v205 & v210;
        }

        v205 = (v205 + v410);
        v203 += v411;
        v206 += v414;
        --v28;
      }

      while (v28);
      return result;
    case 2:
      _Q1.n128_f32[0] = 1.0 - _S8;
      v161 = v38 & 3;
      if (v16)
      {
        v162 = -1 << (8 * v161);
        v163 = &v36[-(v38 & 3)];
        if ((v38 & 3) != 0)
        {
          v164 = v38 & 0xFC;
        }

        else
        {
          v164 = v17 + *(result + 108) * v37 + *(result + 104);
        }

        if ((v38 & 3) != 0)
        {
          v165 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v162 = -1;
          v165 = (v17 + *(result + 108) * v37 + *(result + 104));
        }

        if ((v38 & 3) != 0)
        {
          v166 = &v23[-(v38 & 3)];
        }

        else
        {
          v166 = v23;
        }

        if ((v38 & 3) != 0)
        {
          v167 = v161 + v25;
        }

        else
        {
          v163 = v36;
          v167 = *(result + 4);
        }

        if (((v167 + v164) & 3) != 0)
        {
          v168 = 4 - ((v167 + v164) & 3);
          v161 += v168;
          v169 = 0xFFFFFFFF >> (8 * v168);
          if (v167 >= 4)
          {
            v170 = v169;
          }

          else
          {
            v170 = 0;
          }

          if (v167 >= 4)
          {
            v169 = -1;
          }

          v162 &= v169;
        }

        else
        {
          v170 = 0;
        }

        v371 = v39 - v161;
        v372 = v522 - v161;
        v373 = v167 >> 2;
        v374 = vcvtq_f32_f16(_D0);
        v375 = vdupq_lane_s32(_Q1.n128_u64[0], 0);
        v376 = v26 - v161;
        while (1)
        {
          v377 = *v165 & v162;
          LODWORD(result) = v373;
          v378 = v170;
          if (!v377)
          {
            goto LABEL_464;
          }

LABEL_462:
          if (v377 == -1)
          {
            break;
          }

          while (1)
          {
            if (v377)
            {
              _S5 = v377 * 0.0039216;
              _S6 = _S5 * _S8;
              __asm
              {
                FCVT            H6, S6
                FCVT            S6, H6
              }

              *v163 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v374, _S5))), vcvtq_f32_f16(*v163), 1.0 - _S6));
              *&_S5 = *v166;
              __asm { FCVT            S5, H5 }

              _S5 = _S6 + (_S5 * (1.0 - _S6));
              __asm { FCVT            H5, S5 }

              *v166 = *&_S5;
            }

            if ((v377 & 0xFF00) != 0)
            {
              _S5 = BYTE1(v377) * 0.0039216;
              _S6 = _S5 * _S8;
              __asm
              {
                FCVT            H6, S6
                FCVT            S6, H6
              }

              v163[1] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v374, _S5))), vcvtq_f32_f16(v163[1]), 1.0 - _S6));
              *&_S5 = v166[1];
              __asm { FCVT            S5, H5 }

              _S5 = _S6 + (_S5 * (1.0 - _S6));
              __asm { FCVT            H5, S5 }

              v166[1] = *&_S5;
            }

            if ((v377 & 0xFF0000) != 0)
            {
              _S5 = BYTE2(v377) * 0.0039216;
              _S6 = _S5 * _S8;
              __asm
              {
                FCVT            H6, S6
                FCVT            S6, H6
              }

              v163[2] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v374, _S5))), vcvtq_f32_f16(v163[2]), 1.0 - _S6));
              *&_S5 = v166[2];
              __asm { FCVT            S5, H5 }

              _S5 = _S6 + (_S5 * (1.0 - _S6));
              __asm { FCVT            H5, S5 }

              v166[2] = *&_S5;
            }

            v404 = HIBYTE(v377);
            if (v404)
            {
              _S5 = v404 * 0.0039216;
              _S6 = _S5 * _S8;
              __asm
              {
                FCVT            H6, S6
                FCVT            S6, H6
              }

              v163[3] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v374, _S5))), vcvtq_f32_f16(v163[3]), 1.0 - _S6));
              *&_S5 = v166[3];
              __asm { FCVT            S5, H5 }

              _S5 = _S6 + (_S5 * (1.0 - _S6));
              goto LABEL_477;
            }

LABEL_464:
            while (1)
            {
              v388 = result;
              v163 += 4;
              v166 += 4;
              result = (result - 1);
              ++v165;
              if (v388 < 2)
              {
                break;
              }

              v377 = *v165;
              if (*v165)
              {
                goto LABEL_462;
              }
            }

            if (!v378)
            {
              break;
            }

            v378 = 0;
            v377 = *v165 & v170;
          }

          v165 = (v165 + v371);
          v163 += v372;
          v166 += v376;
          if (!--v28)
          {
            return result;
          }
        }

        *v163 = vcvt_f16_f32(vmlaq_f32(v374, v375, vcvtq_f32_f16(*v163)));
        _H5 = *v166;
        __asm { FCVT            S5, H5 }

        _S5 = _S8 + (_S5 * _Q1.n128_f32[0]);
        __asm { FCVT            H5, S5 }

        *v166 = *&_S5;
        v163[1] = vcvt_f16_f32(vmlaq_f32(v374, v375, vcvtq_f32_f16(v163[1])));
        *&_S5 = v166[1];
        __asm { FCVT            S5, H5 }

        _S5 = _S8 + (_S5 * _Q1.n128_f32[0]);
        __asm { FCVT            H5, S5 }

        v166[1] = *&_S5;
        v163[2] = vcvt_f16_f32(vmlaq_f32(v374, v375, vcvtq_f32_f16(v163[2])));
        *&_S5 = v166[2];
        __asm { FCVT            S5, H5 }

        _S5 = _S8 + (_S5 * _Q1.n128_f32[0]);
        __asm { FCVT            H5, S5 }

        v166[2] = *&_S5;
        v163[3] = vcvt_f16_f32(vmlaq_f32(v374, v375, vcvtq_f32_f16(v163[3])));
        *&_S5 = v166[3];
        __asm { FCVT            S5, H5 }

        _S5 = _S8 + (_S5 * _Q1.n128_f32[0]);
LABEL_477:
        __asm { FCVT            H5, S5 }

        *(v166 + 3) = _H5;
        goto LABEL_464;
      }

      v335 = -1 << (8 * v161);
      if ((v38 & 3) != 0)
      {
        v336 = v38 & 0xFC;
      }

      else
      {
        v336 = v17 + *(result + 108) * v37 + *(result + 104);
      }

      if ((v38 & 3) != 0)
      {
        v337 = (v38 & 0xFFFFFFFFFFFFFFFCLL);
      }

      else
      {
        v335 = -1;
        v337 = (v17 + *(result + 108) * v37 + *(result + 104));
      }

      if ((v38 & 3) != 0)
      {
        v338 = &v36[-(v38 & 3)];
      }

      else
      {
        v338 = v36;
      }

      if ((v38 & 3) != 0)
      {
        v339 = v161 + v25;
      }

      else
      {
        v339 = *(result + 4);
      }

      if (((v339 + v336) & 3) != 0)
      {
        v340 = 4 - ((v339 + v336) & 3);
        v161 += v340;
        v341 = 0xFFFFFFFF >> (8 * v340);
        if (v339 >= 4)
        {
          v342 = v341;
        }

        else
        {
          v342 = 0;
        }

        if (v339 >= 4)
        {
          v341 = -1;
        }

        v335 &= v341;
      }

      else
      {
        v342 = 0;
      }

      v446 = v39 - v161;
      v447 = v522 - v161;
      v448 = v339 >> 2;
      v449 = vcvtq_f32_f16(_D0);
      v450 = vdupq_lane_s32(_Q1.n128_u64[0], 0);
      do
      {
        v451 = *v337 & v335;
        v452 = v448;
        v453 = v342;
        if (!v451)
        {
          goto LABEL_516;
        }

LABEL_514:
        if (v451 == -1)
        {
          *v338->i8 = vcvt_hight_f16_f32(vcvt_f16_f32(vmlaq_f32(v449, v450, vcvtq_f32_f16(*v338))), vmlaq_f32(v449, v450, vcvt_hight_f32_f16(*v338->i8)));
          v338[2] = vcvt_f16_f32(vmlaq_f32(v449, v450, vcvtq_f32_f16(v338[2])));
          _H16 = v338[3].i16[0];
          __asm { FCVT            S16, H16 }

          _S16 = v449.f32[0] + (_S16 * _Q1.n128_f32[0]);
          __asm { FCVT            H16, S16 }

          v338[3].i16[0] = LOWORD(_S16);
          LOWORD(_S16) = v338[3].i16[1];
          __asm { FCVT            S16, H16 }

          _S16 = v449.f32[1] + (_S16 * _Q1.n128_f32[0]);
          __asm { FCVT            H16, S16 }

          v338[3].i16[1] = LOWORD(_S16);
          LOWORD(_S16) = v338[3].i16[2];
          __asm { FCVT            S16, H16 }

          _S16 = v449.f32[2] + (_S16 * _Q1.n128_f32[0]);
          __asm { FCVT            H16, S16 }

          v338[3].i16[2] = LOWORD(_S16);
          LOWORD(_S16) = v338[3].i16[3];
          __asm { FCVT            S16, H16 }

          _S16 = v449.f32[3] + (_S16 * _Q1.n128_f32[0]);
LABEL_529:
          __asm { FCVT            H16, S16 }

          v338[3].i16[3] = _H16;
          goto LABEL_516;
        }

        while (1)
        {
          if (v451)
          {
            result = v451;
            v464 = v451 * 0.0039216;
            _S17 = v464 * _S8;
            __asm
            {
              FCVT            H17, S17
              FCVT            S17, H17
            }

            *v338 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v449, v464))), vcvtq_f32_f16(*v338), 1.0 - _S17));
          }

          if ((v451 & 0xFF00) != 0)
          {
            result = BYTE1(v451);
            v467 = BYTE1(v451) * 0.0039216;
            _S17 = v467 * _S8;
            __asm
            {
              FCVT            H17, S17
              FCVT            S17, H17
            }

            v338[1] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v449, v467))), vcvtq_f32_f16(v338[1]), 1.0 - _S17));
          }

          if ((v451 & 0xFF0000) != 0)
          {
            result = BYTE2(v451);
            v470 = BYTE2(v451) * 0.0039216;
            _S17 = v470 * _S8;
            __asm
            {
              FCVT            H17, S17
              FCVT            S17, H17
            }

            v338[2] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v449, v470))), vcvtq_f32_f16(v338[2]), 1.0 - _S17));
          }

          v473 = HIBYTE(v451);
          if (v473)
          {
            v474 = v473 * 0.0039216;
            _S17 = v474 * v449.f32[0];
            __asm { FCVT            H17, S17 }

            _S18 = v474 * v449.f32[1];
            __asm { FCVT            H18, S18 }

            _S19 = v474 * v449.f32[2];
            __asm { FCVT            H19, S19 }

            _S20 = v474 * v449.f32[3];
            __asm { FCVT            H20, S20 }

            _S16 = v474 * _S8;
            __asm
            {
              FCVT            H16, S16
              FCVT            S17, H17
            }

            _H21 = v338[3].i16[0];
            __asm
            {
              FCVT            S21, H21
              FCVT            S16, H16
            }

            v484 = 1.0 - _S16;
            _S17 = _S17 + (_S21 * v484);
            __asm { FCVT            H17, S17 }

            v338[3].i16[0] = LOWORD(_S17);
            __asm { FCVT            S17, H18 }

            LOWORD(_S18) = v338[3].i16[1];
            __asm { FCVT            S18, H18 }

            _S17 = _S17 + (_S18 * v484);
            __asm { FCVT            H17, S17 }

            v338[3].i16[1] = LOWORD(_S17);
            __asm { FCVT            S17, H19 }

            LOWORD(_S18) = v338[3].i16[2];
            __asm { FCVT            S18, H18 }

            _S17 = _S17 + (_S18 * v484);
            __asm { FCVT            H17, S17 }

            v338[3].i16[2] = LOWORD(_S17);
            __asm { FCVT            S17, H20 }

            LOWORD(_S18) = v338[3].i16[3];
            __asm { FCVT            S18, H18 }

            _S16 = _S17 + (_S18 * v484);
            goto LABEL_529;
          }

LABEL_516:
          while (1)
          {
            v463 = v452;
            v338 += 4;
            --v452;
            ++v337;
            if (v463 < 2)
            {
              break;
            }

            v451 = *v337;
            if (*v337)
            {
              goto LABEL_514;
            }
          }

          if (!v453)
          {
            break;
          }

          v453 = 0;
          v451 = *v337 & v342;
        }

        v337 = (v337 + v446);
        v338 += v447;
        --v28;
      }

      while (v28);
      return result;
    case 3:
      v180 = vcvtq_f32_f16(_D0);
      v181 = 2 * v24;
      do
      {
        v182 = v25;
        do
        {
          v183 = *v38;
          if (*v38)
          {
            if (v183 == 255)
            {
              _H5 = _H1 * *v23;
              *v36 = vmul_n_f16(_D0, *v23);
            }

            else
            {
              v185 = v183 * 0.0039216;
              _H6 = *v23;
              __asm { FCVT            S6, H6 }

              v188 = v185 * _S6;
              _S16 = (v185 * _S6) * _S8;
              __asm { FCVT            H16, S16 }

              v190 = 1.0 - v185;
              *v36 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v180, v188))), vcvtq_f32_f16(*v36), v190));
              __asm { FCVT            S7, H16 }

              _S5 = _S7 + (_S6 * v190);
              __asm { FCVT            H5, S5 }
            }

            *v23 = _H5;
          }

          ++v38;
          ++v36;
          v23 = (v23 + v181);
          --v182;
        }

        while (v182);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        --v28;
      }

      while (v28);
      return result;
    case 4:
      v108 = vcvtq_f32_f16(_D0);
      v109 = 2 * v24;
      do
      {
        v110 = v25;
        do
        {
          v111 = *v38;
          if (*v38)
          {
            if (v111 == 255)
            {
              _H3 = *v23;
              __asm { FCVT            S3, H3 }

              v114 = 1.0 - _S3;
              _S3 = (1.0 - _S3) * _S8;
              *v36 = vcvt_f16_f32(vmulq_n_f32(v108, v114));
            }

            else
            {
              v116 = v111 * 0.0039216;
              _H4 = *v23;
              __asm { FCVT            S4, H4 }

              v119 = v116 * (1.0 - _S4);
              _S6 = v119 * _S8;
              __asm { FCVT            H6, S6 }

              v121 = 1.0 - v116;
              *v36 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v108, v119))), vcvtq_f32_f16(*v36), v121));
              __asm { FCVT            S5, H6 }

              _S3 = _S5 + (_S4 * v121);
            }

            __asm { FCVT            H3, S3 }

            *v23 = _H3;
          }

          ++v38;
          ++v36;
          v23 = (v23 + v109);
          --v110;
        }

        while (v110);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        --v28;
      }

      while (v28);
      return result;
    case 5:
      v224 = vcvtq_f32_f16(_D0);
      v225 = 2 * v24;
      do
      {
        v226 = v25;
        do
        {
          if (*v38)
          {
            _H3 = *v23;
            __asm { FCVT            S3, H3 }

            v229 = *v38 * 0.0039216;
            _S5 = v229 * _S8;
            __asm
            {
              FCVT            H5, S5
              FCVT            S5, H5
            }

            *v36 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), 1.0 - _S5), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v224, v229))), _S3));
            _S3 = ((1.0 - _S5) * _S3) + (_S5 * _S3);
            __asm { FCVT            H3, S3 }

            *v23 = *&_S3;
          }

          ++v38;
          ++v36;
          v23 = (v23 + v225);
          --v226;
        }

        while (v226);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        --v28;
      }

      while (v28);
      return result;
    case 6:
      v248 = vcvtq_f32_f16(_D0);
      v249 = 2 * v24;
      while (1)
      {
        v250 = v25;
        do
        {
          v251 = *v38;
          if (!*v38)
          {
            goto LABEL_286;
          }

          _H3 = *v23;
          __asm { FCVT            S3, H3 }

          v254 = 1.0 - _S3;
          if ((1.0 - _S3) >= 1.0)
          {
            v259 = v251 * 0.0039216;
            _S3 = v259 * _S8;
            *v36 = vcvt_f16_f32(vmulq_n_f32(v248, v259));
          }

          else
          {
            if (v254 <= 0.0)
            {
              goto LABEL_286;
            }

            v255 = v251 * 0.0039216;
            _S6 = v255 * _S8;
            __asm { FCVT            H6, S6 }

            *v36 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v36), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v248, v255))), v254));
            __asm { FCVT            S5, H6 }

            _S3 = _S3 + (_S5 * v254);
          }

          __asm { FCVT            H3, S3 }

          *v23 = _H3;
LABEL_286:
          ++v38;
          ++v36;
          v23 = (v23 + v249);
          --v250;
        }

        while (v250);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 7:
      if (v16)
      {
        v193 = 2 * v24;
        do
        {
          v194 = v25;
          do
          {
            v195 = *v38;
            if (*v38)
            {
              if (v195 == 255)
              {
                *v36 = vmul_n_f16(*v36, _H1);
                _H3 = _H1 * *v23;
              }

              else
              {
                v197 = ((v195 * 0.0039216) * _S8) + (1.0 - (v195 * 0.0039216));
                *v36 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), v197));
                _H4 = *v23;
                __asm { FCVT            S4, H4 }

                _S3 = v197 * _S4;
                __asm { FCVT            H3, S3 }
              }

              *v23 = _H3;
            }

            ++v38;
            ++v36;
            v23 = (v23 + v193);
            --v194;
          }

          while (v194);
          v38 += v39;
          v36 += v522;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v343 = v25;
          do
          {
            v344 = *v38;
            if (*v38)
            {
              if (v344 == 255)
              {
                v345 = vmul_n_f16(*v36, _H1);
              }

              else
              {
                v345 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), ((v344 * 0.0039216) * _S8) + (1.0 - (v344 * 0.0039216))));
              }

              *v36 = v345;
            }

            ++v38;
            ++v36;
            --v343;
          }

          while (v343);
          v38 += v39;
          v36 += v522;
          --v28;
        }

        while (v28);
      }

      return result;
    case 8:
      v279 = 1.0 - _S8;
      if (v16)
      {
        v280 = 2 * v24;
        do
        {
          v281 = v25;
          do
          {
            v282 = *v38;
            if (*v38)
            {
              _H3 = v36->i16[0];
              if (v282 == 255)
              {
                __asm { FCVT            S3, H3 }

                _S4 = v279 * _S3;
                v286 = 1.0 - _S8;
              }

              else
              {
                __asm { FCVT            S4, H3 }

                v286 = ((v282 * -0.0039216) * _S8) + 1.0;
                _S4 = v286 * _S4;
              }

              __asm { FCVT            H4, S4 }

              v36->i16[0] = _H4;
              _H4 = v36->i16[1];
              __asm { FCVT            S4, H4 }

              _S4 = v286 * _S4;
              __asm { FCVT            H4, S4 }

              v36->i16[1] = LOWORD(_S4);
              LOWORD(_S4) = v36->i16[2];
              __asm { FCVT            S4, H4 }

              _S4 = v286 * _S4;
              __asm { FCVT            H4, S4 }

              v36->i16[2] = LOWORD(_S4);
              LOWORD(_S4) = v36->i16[3];
              __asm { FCVT            S4, H4 }

              _S4 = v286 * _S4;
              __asm { FCVT            H4, S4 }

              v36->i16[3] = LOWORD(_S4);
              *&_S4 = *v23;
              __asm { FCVT            S4, H4 }

              _S3 = v286 * _S4;
              __asm { FCVT            H3, S3 }

              *v23 = *&_S3;
            }

            ++v38;
            ++v36;
            v23 = (v23 + v280);
            --v281;
          }

          while (v281);
          v38 += v39;
          v36 += v522;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v356 = v25;
          do
          {
            v357 = *v38;
            if (*v38)
            {
              _H3 = v36->i16[0];
              if (v357 == 255)
              {
                __asm { FCVT            S3, H3 }

                _S4 = v279 * _S3;
                v361 = 1.0 - _S8;
              }

              else
              {
                __asm { FCVT            S4, H3 }

                v361 = ((v357 * -0.0039216) * _S8) + 1.0;
                _S4 = v361 * _S4;
              }

              __asm { FCVT            H4, S4 }

              v36->i16[0] = _H4;
              _H4 = v36->i16[1];
              __asm { FCVT            S4, H4 }

              _S4 = v361 * _S4;
              __asm { FCVT            H4, S4 }

              v36->i16[1] = LOWORD(_S4);
              LOWORD(_S4) = v36->i16[2];
              __asm { FCVT            S4, H4 }

              _S4 = v361 * _S4;
              __asm { FCVT            H4, S4 }

              v36->i16[2] = LOWORD(_S4);
              LOWORD(_S4) = v36->i16[3];
              __asm { FCVT            S4, H4 }

              _S3 = v361 * _S4;
              __asm { FCVT            H3, S3 }

              v36->i16[3] = LOWORD(_S3);
            }

            ++v38;
            ++v36;
            --v356;
          }

          while (v356);
          v38 += v39;
          v36 += v522;
          --v28;
        }

        while (v28);
      }

      return result;
    case 9:
      v135 = vcvtq_f32_f16(_D0);
      v136 = 2 * v24;
      do
      {
        v137 = v25;
        do
        {
          if (*v38)
          {
            v138 = *v38 * 0.0039216;
            _H4 = *v23;
            __asm { FCVT            S4, H4 }

            _S5 = v138 * _S8;
            __asm
            {
              FCVT            H5, S5
              FCVT            S5, H5
            }

            v143 = (1.0 - v138) + _S5;
            *v36 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), v143), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v135, v138))), 1.0 - _S4));
            _S3 = (v143 * _S4) + (_S5 * (1.0 - _S4));
            __asm { FCVT            H3, S3 }

            *v23 = *&_S3;
          }

          ++v38;
          ++v36;
          v23 = (v23 + v136);
          --v137;
        }

        while (v137);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        --v28;
      }

      while (v28);
      return result;
    case 10:
      v270 = vcvtq_f32_f16(_D0);
      v271 = 2 * v24;
      do
      {
        v272 = v25;
        do
        {
          if (*v38)
          {
            _H3 = *v23;
            __asm { FCVT            S3, H3 }

            v275 = *v38 * 0.0039216;
            _S5 = v275 * _S8;
            __asm
            {
              FCVT            H5, S5
              FCVT            S5, H5
            }

            *v36 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v36), 1.0 - _S5), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v270, v275))), 1.0 - _S3));
            _S3 = ((1.0 - _S5) * _S3) + (_S5 * (1.0 - _S3));
            __asm { FCVT            H3, S3 }

            *v23 = *&_S3;
          }

          ++v38;
          ++v36;
          v23 = (v23 + v271);
          --v272;
        }

        while (v272);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        --v28;
      }

      while (v28);
      return result;
    case 11:
      v71 = vcvtq_f32_f16(_D0);
      if (v16)
      {
        v72 = 2 * v24;
        do
        {
          v73 = v25;
          do
          {
            if (*v38)
            {
              v74 = *v38 * 0.0039216;
              _S7 = v74 * v71.f32[0];
              __asm { FCVT            H7, S7 }

              _S16 = v74 * v71.f32[1];
              __asm { FCVT            H16, S16 }

              _S17 = v74 * v71.f32[2];
              __asm { FCVT            H17, S17 }

              _S18 = v74 * v71.f32[3];
              __asm { FCVT            H18, S18 }

              _S6 = v74 * _S8;
              __asm { FCVT            H6, S6 }

              _H19 = *v23;
              __asm
              {
                FCVT            S19, H19
                FCVT            S6, H6
              }

              _S20 = _S6 + _S19;
              _H21 = v36->i16[0];
              __asm
              {
                FCVT            S21, H21
                FCVT            S7, H7
              }

              v90 = (_S6 - _S7) + (_S19 - _S21);
              if ((_S6 + _S19) > 1.0)
              {
                _S20 = 1.0;
              }

              _H21 = v36->i16[1];
              __asm
              {
                FCVT            S21, H21
                FCVT            S16, H16
              }

              v94 = (_S6 - _S16) + (_S19 - _S21);
              _S7 = _S20 - v90;
              __asm { FCVT            H7, S7 }

              v36->i16[0] = LOWORD(_S7);
              *&_S7 = *v23;
              __asm { FCVT            S7, H7 }

              _H19 = v36->i16[2];
              __asm
              {
                FCVT            S19, H19
                FCVT            S17, H17
              }

              v100 = (_S6 - _S17) + (_S7 - _S19);
              _S16 = _S20 - v94;
              __asm { FCVT            H16, S16 }

              v36->i16[1] = LOWORD(_S16);
              *&_S16 = *v23;
              __asm { FCVT            S16, H16 }

              LOWORD(_S17) = v36->i16[3];
              __asm { FCVT            S17, H17 }

              v104 = _S16 - _S17;
              __asm { FCVT            S17, H18 }

              _S7 = _S20 - v100;
              __asm { FCVT            H7, S7 }

              v36->i16[2] = LOWORD(_S7);
              __asm { FCVT            H7, S20 }

              *v23 = *&_S7;
              _S6 = _S20 - ((_S6 - _S17) + v104);
              __asm { FCVT            H6, S6 }

              v36->i16[3] = LOWORD(_S6);
            }

            ++v38;
            ++v36;
            v23 = (v23 + v72);
            --v73;
          }

          while (v73);
          v38 += v39;
          v36 += v522;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        __asm { FMOV            V2.4S, #1.0 }

        do
        {
          v332 = v25;
          do
          {
            if (*v38)
            {
              v333 = *v38 * 0.0039216;
              _Q4.f32[0] = v333 * _S8;
              __asm
              {
                FCVT            H4, S4
                FCVT            S4, H4
              }

              _Q4 = vdupq_lane_s32(*_Q4.f32, 0);
              *v36 = vcvt_f16_f32(vsubq_f32(_Q2, vaddq_f32(vsubq_f32(_Q4, vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(v71, v333)))), vsubq_f32(_Q2, vcvtq_f32_f16(*v36)))));
            }

            ++v38;
            ++v36;
            --v332;
          }

          while (v332);
          v38 += v39;
          v36 += v522;
          --v28;
        }

        while (v28);
      }

      return result;
    case 12:
      v124 = vcvtq_f32_f16(_D0);
      if (v16)
      {
        v125 = 2 * v24;
        do
        {
          v126 = v25;
          do
          {
            if (*v38)
            {
              v127 = *v38 * 0.0039216;
              _S4 = v127 * _S8;
              __asm { FCVT            H4, S4 }

              _H5 = *v23;
              __asm
              {
                FCVT            S5, H5
                FCVT            S4, H4
              }

              _S4 = _S4 + _S5;
              if (_S4 > 1.0)
              {
                _S4 = 1.0;
              }

              __asm { FCVT            H4, S4 }

              v134.i32[0] = v36->i32[0];
              *v23 = _H4;
              v134.i32[1] = v36->i32[1];
              *v36 = vadd_f16(v134, vcvt_f16_f32(vmulq_n_f32(v124, v127)));
            }

            ++v38;
            ++v36;
            v23 = (v23 + v125);
            --v126;
          }

          while (v126);
          v38 += v39;
          v36 += v522;
          v23 += v27;
          --v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v334 = v25;
          do
          {
            if (*v38)
            {
              *v36 = vadd_f16(*v36, vcvt_f16_f32(vmulq_n_f32(v124, *v38 * 0.0039216)));
            }

            ++v38;
            ++v36;
            --v334;
          }

          while (v334);
          v38 += v39;
          v36 += v522;
          --v28;
        }

        while (v28);
      }

      return result;
    case 13:
      v516 = vcvtq_f32_f16(_D0);
      v242 = 2 * v24;
      _D0.i32[1] = -1;
      while (1)
      {
        v243 = v25;
        do
        {
          if (*v38)
          {
            v244 = *v38 * 0.0039216;
            *_D0.i32 = v244 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v245 = v516;
              v246 = vmulq_n_f32(v516, v244);
              *_Q5.f32 = vcvt_f16_f32(v246);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_273;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _D0.i16[0] = v36->i16[0];
              v246.n128_u16[0] = v36->u16[1];
              v245.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAmultiplyPDA(_D0, v246, v245, a6, _Q4, _Q5, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, *_Q5.f32, *&_D6);
              _D0 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              if (v16)
              {
                _D0 = vuzp1_s16(_D0, _D0);
                *_Q5.f32 = vzip1_s32(result, _D0);
                _D0.i16[0] = a2;
LABEL_273:
                *v36 = *_Q5.f32;
                *v23 = *_D0.i16;
                goto LABEL_275;
              }

              v36->i32[0] = result;
              v36->i16[2] = _D0.i16[0];
              v36->i16[3] = _D0.i16[2];
            }
          }

LABEL_275:
          ++v38;
          ++v36;
          v23 = (v23 + v242);
          --v243;
        }

        while (v243);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 14:
      v509 = vcvtq_f32_f16(_D0);
      v63 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v65 = v25;
        do
        {
          if (*v38)
          {
            v66 = *v38 * 0.0039216;
            _Q0.n128_f32[0] = v66 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v67 = v509;
              v68 = vmulq_n_f32(v509, v66);
              v69 = vcvt_f16_f32(v68);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_63;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = v36->i16[0];
              v68.n128_u16[0] = v36->u16[1];
              v67.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAscreenPDA(_Q0, v68, v67, *a6.f32, *_Q4.i64, v69, _D6, *&a10, result, a2, v26, a12, a13, a14, a15, a16, v69.i16[0], v69.i16[1], v69.i16[2], v69.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              if (v16)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v69 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
LABEL_63:
                *v36 = v69;
                *v23 = *_Q0.n128_u16;
                goto LABEL_65;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.n128_u16[0];
              v36->i16[3] = _Q0.n128_i16[2];
            }
          }

LABEL_65:
          ++v38;
          ++v36;
          v23 = (v23 + v63);
          --v65;
        }

        while (v65);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 15:
      v512 = vcvtq_f32_f16(_D0);
      v171 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v173 = v25;
        do
        {
          if (*v38)
          {
            v174 = *v38 * 0.0039216;
            _Q0.n128_f32[0] = v174 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v175 = v512;
              v176 = vmulq_n_f32(v512, v174);
              v177 = vcvt_f16_f32(v176);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_165;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _S4 = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = v36->i16[0];
              v176.n128_u16[0] = v36->u16[1];
              v175.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAoverlayPDA(_Q0, v176, v175, a6, _S4, *&v177, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v177.i16[0], v177.i16[1], v177.i16[2], v177.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              if (v16)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v177 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
LABEL_165:
                *v36 = v177;
                *v23 = *_Q0.n128_u16;
                goto LABEL_167;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.n128_u16[0];
              v36->i16[3] = _Q0.n128_i16[2];
            }
          }

LABEL_167:
          ++v38;
          ++v36;
          v23 = (v23 + v171);
          --v173;
        }

        while (v173);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 16:
      v508 = vcvtq_f32_f16(_D0);
      v57 = 2 * v24;
      _D0.i32[1] = -1;
      while (1)
      {
        v58 = v25;
        do
        {
          if (*v38)
          {
            v59 = *v38 * 0.0039216;
            *_D0.i32 = v59 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v60 = v508;
              v61 = vmulq_n_f32(v508, v59);
              *_Q5.f32 = vcvt_f16_f32(v61);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_48;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _D0.i16[0] = v36->i16[0];
              v61.n128_u16[0] = v36->u16[1];
              v60.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAdarkenPDA(_D0, v61, v60, a6, _Q4, _Q5, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, *_Q5.f32, *&_D6);
              _D0 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              if (v16)
              {
                _D0 = vuzp1_s16(_D0, _D0);
                *_Q5.f32 = vzip1_s32(result, _D0);
                _D0.i16[0] = a2;
LABEL_48:
                *v36 = *_Q5.f32;
                *v23 = *_D0.i16;
                goto LABEL_50;
              }

              v36->i32[0] = result;
              v36->i16[2] = _D0.i16[0];
              v36->i16[3] = _D0.i16[2];
            }
          }

LABEL_50:
          ++v38;
          ++v36;
          v23 = (v23 + v57);
          --v58;
        }

        while (v58);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 17:
      v513 = vcvtq_f32_f16(_D0);
      v211 = 2 * v24;
      _D0.i32[1] = -1;
      while (1)
      {
        v212 = v25;
        do
        {
          if (*v38)
          {
            v213 = *v38 * 0.0039216;
            *_D0.i32 = v213 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v214 = v513;
              v215 = vmulq_n_f32(v513, v213);
              *_Q5.f32 = vcvt_f16_f32(v215);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_221;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _D0.i16[0] = v36->i16[0];
              v215.n128_u16[0] = v36->u16[1];
              v214.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAlightenPDA(_D0, v215, v214, a6, _Q4, _Q5, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, *_Q5.f32, *&_D6);
              _D0 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              if (v16)
              {
                _D0 = vuzp1_s16(_D0, _D0);
                *_Q5.f32 = vzip1_s32(result, _D0);
                _D0.i16[0] = a2;
LABEL_221:
                *v36 = *_Q5.f32;
                *v23 = *_D0.i16;
                goto LABEL_223;
              }

              v36->i32[0] = result;
              v36->i16[2] = _D0.i16[0];
              v36->i16[3] = _D0.i16[2];
            }
          }

LABEL_223:
          ++v38;
          ++v36;
          v23 = (v23 + v211);
          --v212;
        }

        while (v212);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 18:
      v517 = vcvtq_f32_f16(_D0);
      v261 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v263 = v25;
        do
        {
          if (*v38)
          {
            v264 = *v38 * 0.0039216;
            _Q0.n128_f32[0] = v264 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v265 = v517;
              v266 = vmulq_n_f32(v517, v264);
              v267 = vcvt_f16_f32(v266);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_299;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _S4 = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = v36->i16[0];
              v266.n128_u16[0] = v36->u16[1];
              v265.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAcolordodgePDA(_Q0, v266, v265, a6, _S4, *&v267, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v267.i16[0], v267.i16[1], v267.i16[2], v267.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              if (v16)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v267 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
LABEL_299:
                *v36 = v267;
                *v23 = *_Q0.n128_u16;
                goto LABEL_301;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.n128_u16[0];
              v36->i16[3] = _Q0.n128_i16[2];
            }
          }

LABEL_301:
          ++v38;
          ++v36;
          v23 = (v23 + v261);
          --v263;
        }

        while (v263);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 19:
      v519 = vcvtq_f32_f16(_D0);
      v306 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v308 = v25;
        do
        {
          if (*v38)
          {
            v309 = *v38 * 0.0039216;
            _Q0.n128_f32[0] = v309 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v310 = v519;
              v311 = vmulq_n_f32(v519, v309);
              v312 = vcvt_f16_f32(v311);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_347;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _S4 = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = v36->i16[0];
              v311.n128_u16[0] = v36->u16[1];
              v310.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAcolorburnPDA(_Q0, v311, v310, a6, _S4, *&v312, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v312.i16[0], v312.i16[1], v312.i16[2], v312.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              if (v16)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v312 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
LABEL_347:
                *v36 = v312;
                *v23 = *_Q0.n128_u16;
                goto LABEL_349;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.n128_u16[0];
              v36->i16[3] = _Q0.n128_i16[2];
            }
          }

LABEL_349:
          ++v38;
          ++v36;
          v23 = (v23 + v306);
          --v308;
        }

        while (v308);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 20:
      v514 = vcvtq_f32_f16(_D0);
      v217 = 2 * v24;
      _D0.i32[1] = -1;
      while (1)
      {
        v218 = v25;
        do
        {
          if (*v38)
          {
            v219 = *v38 * 0.0039216;
            *_D0.i32 = v219 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v220 = v514;
              v221 = vmulq_n_f32(v514, v219);
              v222 = vcvt_f16_f32(v221);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_236;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _D0.i16[0] = v36->i16[0];
              v221.n128_u16[0] = v36->u16[1];
              v220.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAsoftlightPDA(_D0, v221, v220, *a6.f32, *_Q4.i64, v222, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v222.i32[0], v222.i16[2], v222.i16[3], *&_D6);
              _D0 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              if (v16)
              {
                _D0 = vuzp1_s16(_D0, _D0);
                v222 = vzip1_s32(result, _D0);
                _D0.i16[0] = a2;
LABEL_236:
                *v36 = v222;
                *v23 = *_D0.i16;
                goto LABEL_238;
              }

              v36->i32[0] = result;
              v36->i16[2] = _D0.i16[0];
              v36->i16[3] = _D0.i16[2];
            }
          }

LABEL_238:
          ++v38;
          ++v36;
          v23 = (v23 + v217);
          --v218;
        }

        while (v218);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 21:
      v515 = vcvtq_f32_f16(_D0);
      v233 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v235 = v25;
        do
        {
          if (*v38)
          {
            v236 = *v38 * 0.0039216;
            _Q0.n128_f32[0] = v236 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v237 = v515;
              v238 = vmulq_n_f32(v515, v236);
              v239 = vcvt_f16_f32(v238);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_258;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _S4 = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = v36->i16[0];
              v238.n128_u16[0] = v36->u16[1];
              v237.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAhardlightPDA(_Q0, v238, v237, a6, _S4, *&v239, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v239.i16[0], v239.i16[1], v239.i16[2], v239.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              if (v16)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v239 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
LABEL_258:
                *v36 = v239;
                *v23 = *_Q0.n128_u16;
                goto LABEL_260;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.n128_u16[0];
              v36->i16[3] = _Q0.n128_i16[2];
            }
          }

LABEL_260:
          ++v38;
          ++v36;
          v23 = (v23 + v233);
          --v235;
        }

        while (v235);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 22:
      v518 = vcvtq_f32_f16(_D0);
      v298 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v300 = v25;
        do
        {
          if (*v38)
          {
            v301 = *v38 * 0.0039216;
            _Q0.n128_f32[0] = v301 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v302 = v518;
              v303 = vmulq_n_f32(v518, v301);
              v304 = vcvt_f16_f32(v303);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_332;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = v36->i16[0];
              v303.n128_u16[0] = v36->u16[1];
              v302.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAdifferencePDA(_Q0, v303, v302, *a6.f32, *_Q4.i64, v304, *&_D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v304.i16[0], v304.i16[1], v304.i16[2], v304.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              if (v16)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v304 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
LABEL_332:
                *v36 = v304;
                *v23 = *_Q0.n128_u16;
                goto LABEL_334;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.n128_u16[0];
              v36->i16[3] = _Q0.n128_i16[2];
            }
          }

LABEL_334:
          ++v38;
          ++v36;
          v23 = (v23 + v298);
          --v300;
        }

        while (v300);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 23:
      v520 = vcvtq_f32_f16(_D0);
      v315 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v317 = v25;
        do
        {
          if (*v38)
          {
            v318 = *v38 * 0.0039216;
            _Q0.n128_f32[0] = v318 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v319 = v520;
              v320 = vmulq_n_f32(v520, v318);
              v321 = vcvt_f16_f32(v320);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_362;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = v36->i16[0];
              v320.n128_u16[0] = v36->u16[1];
              v319.n128_u16[0] = v36->u16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAexclusionPDA(_Q0, v320, v319, *a6.f32, *_Q4.i64, v321, _D6, *&a10, result, a2, v26, a12, a13, a14, a15, a16, v321.i16[0], v321.i16[1], v321.i16[2], v321.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              if (v16)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v321 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
LABEL_362:
                *v36 = v321;
                *v23 = *_Q0.n128_u16;
                goto LABEL_364;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.n128_u16[0];
              v36->i16[3] = _Q0.n128_i16[2];
            }
          }

LABEL_364:
          ++v38;
          ++v36;
          v23 = (v23 + v315);
          --v317;
        }

        while (v317);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 24:
      v511 = vcvtq_f32_f16(_D0);
      v153 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v155 = v25;
        do
        {
          if (*v38)
          {
            v156 = *v38 * 0.0039216;
            _Q0.f32[0] = v156 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v157 = *v511.f32;
              v158 = vmulq_n_f32(v511, v156);
              v159 = vcvt_f16_f32(v158);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_130;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.i16[0] = v36->i16[0];
              v158.n128_u16[0] = v36->u16[1];
              v157.i16[0] = v36->i16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAhuePDA(_Q0, v158, v157, a6, *_Q4.i64, v159, *&_D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v159.i16[0], v159.i16[1], v159.i32[1], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              *_Q0.f32 = vmovn_s64(_Q0);
              if (v16)
              {
                *_Q0.f32 = vuzp1_s16(*_Q0.f32, *_Q0.f32);
                v159 = vzip1_s32(result, *_Q0.f32);
                _Q0.i16[0] = a2;
LABEL_130:
                *v36 = v159;
                *v23 = *_Q0.i16;
                goto LABEL_132;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.i16[0];
              v36->i16[3] = _Q0.i16[2];
            }
          }

LABEL_132:
          ++v38;
          ++v36;
          v23 = (v23 + v153);
          --v155;
        }

        while (v155);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 25:
      v510 = vcvtq_f32_f16(_D0);
      v145 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      while (1)
      {
        v147 = v25;
        do
        {
          if (*v38)
          {
            v148 = *v38 * 0.0039216;
            _Q0.f32[0] = v148 * _S8;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v149 = *v510.f32;
              v150 = vmulq_n_f32(v510, v148);
              v151 = vcvt_f16_f32(v150);
              if (v16)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_115;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.i16[0] = v36->i16[0];
              v150.n128_u16[0] = v36->u16[1];
              v149.i16[0] = v36->i16[2];
              a6.i16[0] = v36->i16[3];
              result = PDAsaturationPDA(_Q0, v150, v149, a6, *_Q4.i64, v151, *&_D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v151.i16[0], v151.i16[1], v151.i32[1], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              *_Q0.f32 = vmovn_s64(_Q0);
              if (v16)
              {
                *_Q0.f32 = vuzp1_s16(*_Q0.f32, *_Q0.f32);
                v151 = vzip1_s32(result, *_Q0.f32);
                _Q0.i16[0] = a2;
LABEL_115:
                *v36 = v151;
                *v23 = *_Q0.i16;
                goto LABEL_117;
              }

              v36->i32[0] = result;
              v36->i16[2] = _Q0.i16[0];
              v36->i16[3] = _Q0.i16[2];
            }
          }

LABEL_117:
          ++v38;
          ++v36;
          v23 = (v23 + v145);
          --v147;
        }

        while (v147);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 26:
      v521 = vcvtq_f32_f16(_D0);
      v323 = 2 * v24;
      while (1)
      {
        v324 = v25;
        do
        {
          if (*v38)
          {
            v325 = *v38 * 0.0039216;
            _Q1.n128_f32[0] = v325 * _S8;
            __asm
            {
              FCVT            H1, S1
              FCMP            H1, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v326 = v521;
              v327 = vmulq_n_f32(v521, v325);
              v327.n128_u64[0] = vcvt_f16_f32(v327);
              if (v16)
              {
                __asm { FCMP            H2, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_377;
                }

                __asm { FCVT            S5, H2 }
              }

              else
              {
                _Q5.i32[0] = 1.0;
              }

              __asm { FCVT            S4, H1 }

              _Q1.n128_u16[0] = v327.n128_u16[1];
              a6.i16[0] = v327.n128_i16[3];
              v326.n128_u16[0] = v327.n128_u16[2];
              result = PDAluminosityPDA(v327, _Q1, v326, a6, _S4, *_Q5.i64, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v36->i32[0], HIWORD(v36->i32[0]), v36->i32[1], HIWORD(v36->i32[1]), _Q5.f32[0]);
              _Q1 = xmmword_18439CB80;
              v330 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              if (v16)
              {
                _Q1.n128_u32[1] = HIDWORD(result);
                v327.n128_u64[0] = vzip1_s32(result, vuzp1_s16(v330, v330));
                _Q1.n128_u16[0] = a2;
LABEL_377:
                *v36 = v327.n128_u64[0];
                *v23 = *_Q1.n128_u16;
                goto LABEL_379;
              }

              v36->i32[0] = result;
              v36->i16[2] = v330.i16[0];
              v36->i16[3] = v330.i16[2];
            }
          }

LABEL_379:
          ++v38;
          ++v36;
          v23 = (v23 + v323);
          --v324;
        }

        while (v324);
        v38 += v39;
        v36 += v522;
        v23 += v27;
        if (!--v28)
        {
          return result;
        }
      }

    case 27:
      v507 = vcvtq_f32_f16(_D0);
      v48 = 2 * v24;
      _Q0 = xmmword_18439CB80;
      break;
    default:
      return result;
  }

LABEL_24:
  v50 = v25;
  while (1)
  {
    if (!*v38)
    {
      goto LABEL_35;
    }

    v51 = *v38 * 0.0039216;
    _Q0.n128_f32[0] = v51 * _S8;
    __asm
    {
      FCVT            H0, S0
      FCMP            H0, #0
    }

    if (_NF ^ _VF | _ZF)
    {
      goto LABEL_35;
    }

    v52 = v507;
    v53 = vmulq_n_f32(v507, v51);
    v54 = vcvt_f16_f32(v53);
    if (v16)
    {
      __asm { FCMP            H1, #0 }

      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_33;
      }

      __asm { FCVT            S4, H1 }
    }

    else
    {
      _S4 = 1.0;
    }

    __asm { FCVT            S6, H0 }

    _Q0.n128_u16[0] = v36->i16[0];
    v53.n128_u16[0] = v36->u16[1];
    v52.n128_u16[0] = v36->u16[2];
    a6.i16[0] = v36->i16[3];
    result = PDAluminosityPDA(_Q0, v53, v52, a6, _S4, *&v54, _D6, a10, result, a2, v26, a12, a13, a14, a15, a16, v54.i16[0], v54.i16[1], v54.i16[2], v54.i16[3], *&_D6);
    _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
    _Q0.n128_u64[0] = vmovn_s64(_Q0);
    if (!v16)
    {
      v36->i32[0] = result;
      v36->i16[2] = _Q0.n128_u16[0];
      v36->i16[3] = _Q0.n128_i16[2];
      goto LABEL_35;
    }

    _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
    v54 = vzip1_s32(result, _Q0.n128_u64[0]);
    _Q0.n128_u16[0] = a2;
LABEL_33:
    *v36 = v54;
    *v23 = *_Q0.n128_u16;
LABEL_35:
    ++v38;
    ++v36;
    v23 = (v23 + v48);
    if (!--v50)
    {
      v38 += v39;
      v36 += v522;
      v23 += v27;
      if (!--v28)
      {
        return result;
      }

      goto LABEL_24;
    }
  }
}

uint64_t CMYKf16_mark_pixelmask(uint64_t result, uint64_t a2, double a3, __n128 _Q1, double _D2, float32x4_t a6, float32x4_t _Q4, float32x4_t _Q5, double _D6, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *(result + 48);
  v17 = *(result + 136);
  v18 = *(result + 12);
  v19 = *(result + 16);
  if (v16)
  {
    v20 = *(result + 32) >> 1;
    v21 = (v16 + 2 * v20 * v19 + 2 * v18);
    v22 = 0xFFFFFFFFLL;
    if (!v17)
    {
      return result;
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v22 = 0;
    if (!v17)
    {
      return result;
    }
  }

  v23 = *(result + 4);
  v24 = *(result + 8);
  v26 = *(result + 88);
  v25 = *(result + 96);
  v27 = *(result + 28) >> 3;
  v28 = *(result + 40) + 8 * v27 * v19 + 8 * v18;
  v29 = *(result + 124);
  v30 = (v17 + *(result + 108) * v29 + *(result + 104));
  v31 = *(result + 56);
  v32 = *(result + 60);
  v33 = *(result + 76);
  if ((*result & 0xFF00) != 0x100)
  {
    v35 = *(result + 64);
    v36 = *(result + 68);
    v895 = v33 >> 3;
    if (v25)
    {
      v893 = *(result + 80) >> 1;
      v34 = 1;
    }

    else
    {
      v893 = 0;
      v34 = 0;
    }

    result = v26 + 8 * v895 * v36;
    v22 &= 1u;
    v41 = 1;
    v42 = v26;
    v37 = v26;
    goto LABEL_19;
  }

  v895 = v33 >> 3;
  if (v25)
  {
    v893 = *(result + 80) >> 1;
    v25 += 2 * v893 * v32 + 2 * v31;
    v34 = 0xFFFFFFFFLL;
  }

  else
  {
    v893 = 0;
    v34 = 0;
  }

  v37 = v26 + 8 * v895 * v32 + 8 * v31;
  if (v895 == v27)
  {
    v38 = (v28 - v37) >> 3;
    if (v38 >= 1)
    {
      if (v38 <= v23)
      {
        v28 += 8 * (v23 - 1);
        v37 += 8 * (v23 - 1);
        v30 += v23 - 1;
        v21 += (v22 & (v23 - 1));
        v41 = -1;
        v895 = *(result + 28) >> 3;
        v25 += 2 * (v34 & (v23 - 1));
        goto LABEL_16;
      }

      v39 = v24 - 1;
      v40 = v37 + 8 * v27 * v39;
      if (v28 <= v40 + 8 * v23 - 8)
      {
        v28 += 8 * v27 * v39;
        v30 += v29 * v39;
        v29 = -v29;
        v21 += v20 * v39;
        v20 = -v20;
        v22 &= 1u;
        v25 += 2 * v893 * v39;
        v893 = -v893;
        v34 &= 1u;
        v41 = 1;
        v37 = v40;
        v895 = -v27;
        v27 = -v27;
        goto LABEL_16;
      }
    }
  }

  v22 &= 1u;
  v34 &= 1u;
  v41 = 1;
LABEL_16:
  result = 0;
  v42 = 0;
  v26 = -1;
  v36 = v893;
  v35 = v895;
LABEL_19:
  v43 = v41 * v23;
  v894 = v23;
  v890 = result;
  v898 = v24;
  if (result)
  {
    v44 = v32 % v36;
    v45 = v37 + 8 * v895 * v44;
    result = v31 % v35;
    v37 = v45 + 8 * result;
    v46 = v35;
    v26 = v45 + 8 * v35;
    v47 = v25 + 2 * v893 * v44 + 2 * result;
    if (v34)
    {
      v25 = v47;
    }

    v896 = v25;
    v897 = v45 + 8 * result;
  }

  else
  {
    v896 = v25;
    v897 = v42;
    v895 -= v43;
    v893 -= v34 * v23;
    v46 = v35;
  }

  v892 = v29 - v43;
  v891 = v27 - v43;
  v889 = v20 - v22 * v23;
  v48 = v41;
  v899 = v22;
  v900 = v34;
  switch(a2)
  {
    case 0:
      if (v22)
      {
        do
        {
          v49 = v23;
          v50 = v898;
          do
          {
            v51 = *v30;
            if (*v30)
            {
              if (v51 == 255)
              {
                *v28 = 0;
                _H2 = 0;
              }

              else
              {
                v53 = (v51 * -0.0039216) + 1.0;
                *v28 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), v53));
                _H3 = *v21;
                __asm { FCVT            S3, H3 }

                _S2 = v53 * _S3;
                __asm { FCVT            H2, S2 }
              }

              *v21 = _H2;
            }

            v30 += v41;
            v21 += v22;
            v28 += 8 * v41;
            --v49;
          }

          while (v49);
          v30 += v892;
          v28 += 8 * v891;
          v21 += v889;
          --v898;
        }

        while (v50 != 1);
      }

      else
      {
        do
        {
          v760 = v23;
          v761 = v898;
          do
          {
            v762 = *v30;
            if (*v30)
            {
              if (v762 == 255)
              {
                *v28 = 0;
              }

              else
              {
                *v28 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), (v762 * -0.0039216) + 1.0));
              }
            }

            v30 += v41;
            v28 += 8 * v41;
            --v760;
          }

          while (v760);
          v30 += v892;
          v28 += 8 * v891;
          --v898;
        }

        while (v761 != 1);
      }

      return result;
    case 1:
      if (v22)
      {
        if (v34)
        {
          v394 = -v46;
          v395 = -(v895 * v36);
          v396 = -(v893 * v36);
          v397 = v896;
          do
          {
            v398 = v23;
            do
            {
              v399 = *v30;
              if (*v30)
              {
                if (v399 == 255)
                {
                  *v28 = *v37;
                  _H2 = *v397;
                }

                else
                {
                  v401 = v399 * 0.0039216;
                  *v28 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), 1.0 - v401), vcvtq_f32_f16(*v37), v401));
                  _H4 = *v397;
                  __asm { FCVT            S4, H4 }

                  _H5 = *v21;
                  __asm { FCVT            S5, H5 }

                  _S2 = ((1.0 - v401) * _S5) + (_S4 * v401);
                  __asm { FCVT            H2, S2 }
                }

                *v21 = _H2;
              }

              v30 += v41;
              v407 = v37 + 8 * v41;
              v408 = &v397[v34];
              if (v407 >= v26)
              {
                v409 = v394;
              }

              else
              {
                v409 = 0;
              }

              v397 = &v408[v409];
              v37 = v407 + 8 * v409;
              v21 += v22;
              v28 += 8 * v41;
              --v398;
            }

            while (v398);
            if (v890)
            {
              v410 = v897 + 8 * v895;
              if (v410 >= v890)
              {
                v411 = v396;
              }

              else
              {
                v411 = 0;
              }

              v412 = &v896[v893 + v411];
              if (v410 >= v890)
              {
                v413 = v395;
              }

              else
              {
                v413 = 0;
              }

              v37 = v410 + 8 * v413;
              v26 += 8 * v413 + 8 * v895;
              v896 += v893 + v411;
              v897 = v37;
              v397 = v412;
            }

            else
            {
              v37 += 8 * v895;
              v397 += v893;
            }

            v30 += v892;
            v28 += 8 * v891;
            v21 += v889;
            result = (v898 - 1);
            v898 = result;
          }

          while (result);
        }

        else
        {
          v814 = -(v895 * v36);
          do
          {
            v815 = v23;
            v816 = v898;
            do
            {
              v817 = *v30;
              if (*v30)
              {
                if (v817 == 255)
                {
                  *v28 = *v37;
                  _H2 = COERCE_UNSIGNED_INT(1.0);
                }

                else
                {
                  v819 = v817 * 0.0039216;
                  *v28 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), 1.0 - v819), vcvtq_f32_f16(*v37), v819));
                  _H4 = *v21;
                  __asm { FCVT            S4, H4 }

                  _S2 = v819 + ((1.0 - v819) * _S4);
                  __asm { FCVT            H2, S2 }
                }

                *v21 = _H2;
              }

              v30 += v48;
              v823 = v37 + 8 * v48;
              if (v823 >= v26)
              {
                v824 = -v46;
              }

              else
              {
                v824 = 0;
              }

              v37 = v823 + 8 * v824;
              v21 += v22;
              v28 += 8 * v48;
              --v815;
            }

            while (v815);
            v30 += v892;
            v28 += 8 * v891;
            v21 += v889;
            result = v897;
            v825 = v897 + 8 * v895;
            if (v825 >= v890)
            {
              v826 = v814;
            }

            else
            {
              v826 = 0;
            }

            v827 = v825 + 8 * v826;
            v828 = v26 + 8 * v826 + 8 * v895;
            if (v890)
            {
              v26 = v828;
              result = v827;
            }

            v897 = result;
            if (v890)
            {
              v37 = v827;
            }

            else
            {
              v37 += 8 * v895;
            }

            --v898;
          }

          while (v816 != 1);
        }
      }

      else
      {
        v763 = -v46;
        do
        {
          v764 = v23;
          v765 = v898;
          do
          {
            v766 = *v30;
            if (*v30)
            {
              if (v766 == 255)
              {
                v767 = *v37;
              }

              else
              {
                v767 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), 1.0 - (v766 * 0.0039216)), vcvtq_f32_f16(*v37), v766 * 0.0039216));
              }

              *v28 = v767;
            }

            v30 += v48;
            v768 = v37 + 8 * v48;
            if (v768 >= v26)
            {
              v769 = v763;
            }

            else
            {
              v769 = 0;
            }

            v37 = v768 + 8 * v769;
            v28 += 8 * v48;
            --v764;
          }

          while (v764);
          v30 += v892;
          v28 += 8 * v891;
          v770 = v897;
          v771 = v897 + 8 * v895;
          if (v771 >= v890)
          {
            v772 = -(v895 * v36);
          }

          else
          {
            v772 = 0;
          }

          v773 = v771 + 8 * v772;
          v774 = v26 + 8 * v772 + 8 * v895;
          if (v890)
          {
            v26 = v774;
            v770 = v773;
          }

          v897 = v770;
          if (v890)
          {
            v37 = v773;
          }

          else
          {
            v37 += 8 * v895;
          }

          --v898;
        }

        while (v765 != 1);
      }

      return result;
    case 2:
      v289 = -v46;
      if (v22)
      {
        v290 = -(v895 * v36);
        v291 = -(v893 * v36);
        v292 = v896;
        while (1)
        {
          v293 = v23;
          do
          {
            v294 = *v30;
            if (!*v30)
            {
              goto LABEL_285;
            }

            if (v294 == 255)
            {
              _H3 = *v292;
              if (*v292 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                *v28 = *v37;
                goto LABEL_284;
              }

              __asm { FCMP            H3, #0 }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_285;
              }

              __asm { FCVT            S3, H3 }

              *v28 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v37), vcvtq_f32_f16(*v28), 1.0 - _S3));
              _H5 = *v21;
              __asm { FCVT            S5, H5 }

              _S3 = _S3 + (_S5 * (1.0 - _S3));
            }

            else
            {
              v301 = v294 * 0.0039216;
              _H4 = *v292;
              __asm { FCVT            S4, H4 }

              _S4 = v301 * _S4;
              __asm
              {
                FCVT            H4, S4
                FCMP            H4, #0
              }

              if (_NF ^ _VF | _ZF)
              {
                goto LABEL_285;
              }

              __asm { FCVT            S4, H4 }

              *v28 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), v301))), vcvtq_f32_f16(*v28), 1.0 - _S4));
              _H3 = *v21;
              __asm { FCVT            S3, H3 }

              _S3 = _S4 + (_S3 * (1.0 - _S4));
            }

            __asm { FCVT            H3, S3 }

LABEL_284:
            *v21 = _H3;
LABEL_285:
            v30 += v41;
            v309 = v37 + 8 * v41;
            v310 = &v292[v34];
            if (v309 >= v26)
            {
              v311 = v289;
            }

            else
            {
              v311 = 0;
            }

            v292 = &v310[v311];
            v37 = v309 + 8 * v311;
            v21 += v22;
            v28 += 8 * v41;
            --v293;
          }

          while (v293);
          if (v890)
          {
            v312 = v897 + 8 * v895;
            if (v312 >= v890)
            {
              v313 = v291;
            }

            else
            {
              v313 = 0;
            }

            v314 = &v896[v893 + v313];
            if (v312 >= v890)
            {
              v315 = v290;
            }

            else
            {
              v315 = 0;
            }

            v37 = v312 + 8 * v315;
            v26 += 8 * v315 + 8 * v895;
            v896 += v893 + v313;
            v897 = v37;
            v292 = v314;
          }

          else
          {
            v37 += 8 * v895;
            v292 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          v21 += v889;
          result = (v898 - 1);
          v898 = result;
          if (!result)
          {
            return result;
          }
        }
      }

      v711 = -(v895 * v36);
      v712 = -(v893 * v36);
      v713 = v896;
LABEL_785:
      v714 = v23;
      v715 = v898;
      result = v890;
      while (1)
      {
        v716 = *v30;
        if (*v30)
        {
          if (v716 == 255)
          {
            if (*v713 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v719 = *v37;
              goto LABEL_794;
            }

            __asm { FCMP            H3, #0 }

            if (!(_NF ^ _VF | _ZF))
            {
              __asm { FCVT            S3, H3 }

              v719 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v37), vcvtq_f32_f16(*v28), 1.0 - _S3));
LABEL_794:
              *v28 = v719;
            }
          }

          else
          {
            v720 = v716 * 0.0039216;
            _H4 = *v713;
            __asm { FCVT            S4, H4 }

            _S4 = v720 * _S4;
            __asm
            {
              FCVT            H4, S4
              FCMP            H4, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              __asm { FCVT            S4, H4 }

              v719 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), v720))), vcvtq_f32_f16(*v28), 1.0 - _S4));
              goto LABEL_794;
            }
          }
        }

        v30 += v48;
        v726 = v37 + 8 * v48;
        v727 = &v713[v34];
        if (v726 >= v26)
        {
          v728 = v289;
        }

        else
        {
          v728 = 0;
        }

        v713 = &v727[v728];
        v37 = v726 + 8 * v728;
        v28 += 8 * v48;
        if (!--v714)
        {
          if (v890)
          {
            v729 = v897 + 8 * v895;
            if (v729 >= v890)
            {
              v730 = v712;
            }

            else
            {
              v730 = 0;
            }

            result = &v896[v893 + v730];
            if (v729 >= v890)
            {
              v731 = v711;
            }

            else
            {
              v731 = 0;
            }

            v37 = v729 + 8 * v731;
            v26 += 8 * v731 + 8 * v895;
            v896 += v893 + v730;
            v897 = v37;
            v713 = result;
          }

          else
          {
            v37 += 8 * v895;
            v713 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          --v898;
          if (v715 == 1)
          {
            return result;
          }

          goto LABEL_785;
        }
      }

    case 3:
      v335 = -v46;
      v336 = -(v895 * v36);
      v337 = -(v893 * v36);
      v338 = v896;
      do
      {
        v339 = v23;
        do
        {
          v340 = *v30;
          if (*v30)
          {
            if (v340 == 255)
            {
              *v28 = *v37 * *v21;
              *(v28 + 2) = *(v37 + 2) * *v21;
              *(v28 + 4) = *(v37 + 4) * *v21;
              *(v28 + 6) = *(v37 + 6) * *v21;
              if (v34)
              {
                _H1 = *v338;
                __asm { FCVT            S1, H1 }
              }

              else
              {
                _S1 = 1.0;
              }

              _H2 = *v21;
              __asm { FCVT            S2, H2 }

              _S1 = _S1 * _S2;
            }

            else
            {
              v343 = v340 * 0.0039216;
              _H1 = *v21;
              __asm { FCVT            S1, H1 }

              v346 = v343 * _S1;
              _S4 = 1.0;
              v348 = 1.0 - v343;
              *v28 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), v348), vcvtq_f32_f16(*v37), v346));
              if (v34)
              {
                _H4 = *v338;
                __asm { FCVT            S4, H4 }
              }

              _S1 = (v348 * _S1) + (_S4 * v346);
            }

            __asm { FCVT            H1, S1 }

            *v21 = _H1;
          }

          v30 += v41;
          v354 = v37 + 8 * v41;
          v355 = &v338[v34];
          if (v354 >= v26)
          {
            v356 = v335;
          }

          else
          {
            v356 = 0;
          }

          v338 = &v355[v356];
          v37 = v354 + 8 * v356;
          v21 += v22;
          v28 += 8 * v41;
          --v339;
        }

        while (v339);
        if (v890)
        {
          v357 = v897 + 8 * v895;
          if (v357 >= v890)
          {
            v358 = v337;
          }

          else
          {
            v358 = 0;
          }

          v359 = &v896[v893 + v358];
          if (v357 >= v890)
          {
            v360 = v336;
          }

          else
          {
            v360 = 0;
          }

          v37 = v357 + 8 * v360;
          v26 += 8 * v360 + 8 * v895;
          v896 += v893 + v358;
          v897 = v37;
          v338 = v359;
        }

        else
        {
          v37 += 8 * v895;
          v338 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        result = (v898 - 1);
        v898 = result;
      }

      while (result);
      return result;
    case 4:
      v170 = -v46;
      v171 = -(v895 * v36);
      v172 = -(v893 * v36);
      v173 = v896;
      do
      {
        v174 = v23;
        do
        {
          v175 = *v30;
          if (*v30)
          {
            if (v175 == 255)
            {
              _H2 = *v37;
              __asm { FCVT            S3, H2 }

              _H2 = *v21;
              __asm { FCVT            S4, H2 }

              _S2 = 1.0;
              _S3 = (1.0 - _S4) * _S3;
              __asm { FCVT            H3, S3 }

              *v28 = LOWORD(_S3);
              LOWORD(_S3) = *(v37 + 2);
              __asm { FCVT            S3, H3 }

              *&_S4 = *v21;
              __asm { FCVT            S4, H4 }

              _S3 = (1.0 - _S4) * _S3;
              __asm { FCVT            H3, S3 }

              *(v28 + 2) = LOWORD(_S3);
              LOWORD(_S3) = *(v37 + 4);
              __asm { FCVT            S3, H3 }

              *&_S4 = *v21;
              __asm { FCVT            S4, H4 }

              _S3 = (1.0 - _S4) * _S3;
              __asm { FCVT            H3, S3 }

              *(v28 + 4) = LOWORD(_S3);
              LOWORD(_S3) = *(v37 + 6);
              __asm { FCVT            S3, H3 }

              *&_S4 = *v21;
              __asm { FCVT            S4, H4 }

              _S3 = (1.0 - _S4) * _S3;
              __asm { FCVT            H3, S3 }

              *(v28 + 6) = LOWORD(_S3);
              if (v34)
              {
                _H2 = *v173;
                __asm { FCVT            S2, H2 }
              }

              _H3 = *v21;
              __asm { FCVT            S3, H3 }

              _S2 = _S2 * (1.0 - _S3);
            }

            else
            {
              v195 = v175 * 0.0039216;
              _H2 = *v21;
              __asm { FCVT            S2, H2 }

              _S4 = 1.0;
              v199 = v195 * (1.0 - _S2);
              v200 = 1.0 - v195;
              *v28 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), v200), vcvtq_f32_f16(*v37), v199));
              if (v34)
              {
                _H4 = *v173;
                __asm { FCVT            S4, H4 }
              }

              _S2 = (v200 * _S2) + (_S4 * v199);
            }

            __asm { FCVT            H2, S2 }

            *v21 = _H2;
          }

          v30 += v41;
          v203 = v37 + 8 * v41;
          v204 = &v173[v34];
          if (v203 >= v26)
          {
            v205 = v170;
          }

          else
          {
            v205 = 0;
          }

          v173 = &v204[v205];
          v37 = v203 + 8 * v205;
          v21 += v22;
          v28 += 8 * v41;
          --v174;
        }

        while (v174);
        if (v890)
        {
          v206 = v897 + 8 * v895;
          if (v206 >= v890)
          {
            v207 = v172;
          }

          else
          {
            v207 = 0;
          }

          v208 = &v896[v893 + v207];
          if (v206 >= v890)
          {
            v209 = v171;
          }

          else
          {
            v209 = 0;
          }

          v37 = v206 + 8 * v209;
          v26 += 8 * v209 + 8 * v895;
          v896 += v893 + v207;
          v897 = v37;
          v173 = v208;
        }

        else
        {
          v37 += 8 * v895;
          v173 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        result = (v898 - 1);
        v898 = result;
      }

      while (result);
      return result;
    case 5:
      v449 = -v46;
      v450 = v896;
      v451 = -(v895 * v36);
      v452 = -(v893 * v36);
      do
      {
        v453 = v23;
        do
        {
          if (*v30)
          {
            _H2 = *v21;
            __asm { FCVT            S2, H2 }

            v456 = *v30 * 0.0039216;
            _H4 = *v450;
            __asm { FCVT            S4, H4 }

            _S4 = v456 * _S4;
            __asm
            {
              FCVT            H4, S4
              FCVT            S4, H4
            }

            *v28 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), 1.0 - _S4), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), v456))), _S2));
            _S2 = ((1.0 - _S4) * _S2) + (_S4 * _S2);
            __asm { FCVT            H2, S2 }

            *v21 = *&_S2;
          }

          v30 += v41;
          v462 = v37 + 8 * v41;
          v463 = &v450[v34];
          if (v462 >= v26)
          {
            v464 = v449;
          }

          else
          {
            v464 = 0;
          }

          v450 = &v463[v464];
          v37 = v462 + 8 * v464;
          v21 += v22;
          v28 += 8 * v41;
          --v453;
        }

        while (v453);
        if (v890)
        {
          v465 = v897 + 8 * v895;
          if (v465 >= v890)
          {
            v466 = v452;
          }

          else
          {
            v466 = 0;
          }

          v467 = &v896[v893 + v466];
          if (v465 >= v890)
          {
            v468 = v451;
          }

          else
          {
            v468 = 0;
          }

          v37 = v465 + 8 * v468;
          v26 += 8 * v468 + 8 * v895;
          v896 += v893 + v466;
          v897 = v37;
          v450 = v467;
        }

        else
        {
          v37 += 8 * v895;
          v450 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        result = (v898 - 1);
        v898 = result;
      }

      while (result);
      return result;
    case 6:
      v505 = -v46;
      v506 = -(v895 * v36);
      v507 = -(v893 * v36);
      v508 = v896;
      while (1)
      {
        v509 = v23;
        do
        {
          v510 = *v30;
          if (!*v30)
          {
            goto LABEL_547;
          }

          _H2 = *v21;
          __asm { FCVT            S2, H2 }

          v513 = 1.0 - _S2;
          if ((1.0 - _S2) >= 1.0)
          {
            v517 = v510 * 0.0039216;
            *v28 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), v517));
            if (v34)
            {
              _H3 = *v508;
              __asm { FCVT            S3, H3 }
            }

            else
            {
              _S3 = 1.0;
            }

            _S2 = v517 * _S3;
          }

          else
          {
            if (v513 <= 0.0)
            {
              goto LABEL_547;
            }

            v514 = (v510 * 0.0039216) * v513;
            *v28 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v28), vcvtq_f32_f16(*v37), v514));
            if (v34)
            {
              _H4 = *v508;
              __asm { FCVT            S4, H4 }
            }

            else
            {
              _S4 = 1.0;
            }

            _S2 = _S2 + (_S4 * v514);
          }

          __asm { FCVT            H2, S2 }

          *v21 = _H2;
LABEL_547:
          v30 += v41;
          v522 = v37 + 8 * v41;
          v523 = &v508[v34];
          if (v522 >= v26)
          {
            v524 = v505;
          }

          else
          {
            v524 = 0;
          }

          v508 = &v523[v524];
          v37 = v522 + 8 * v524;
          v21 += v22;
          v28 += 8 * v41;
          --v509;
        }

        while (v509);
        if (v890)
        {
          v525 = v897 + 8 * v895;
          if (v525 >= v890)
          {
            v526 = v507;
          }

          else
          {
            v526 = 0;
          }

          v527 = &v896[v893 + v526];
          if (v525 >= v890)
          {
            v528 = v506;
          }

          else
          {
            v528 = 0;
          }

          v37 = v525 + 8 * v528;
          v26 += 8 * v528 + 8 * v895;
          v896 += v893 + v526;
          v897 = v37;
          v508 = v527;
        }

        else
        {
          v37 += 8 * v895;
          v508 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        result = (v898 - 1);
        v898 = result;
        if (!result)
        {
          return result;
        }
      }

    case 7:
      v361 = -v46;
      if (v22)
      {
        v362 = v896;
        v363 = -(v895 * v36);
        v364 = -(v893 * v36);
        do
        {
          v365 = v23;
          do
          {
            v366 = *v30;
            if (*v30)
            {
              if (v366 == 255)
              {
                *v28 = *v28 * *v362;
                *(v28 + 2) = *(v28 + 2) * *v362;
                *(v28 + 4) = *(v28 + 4) * *v362;
                *(v28 + 6) = *(v28 + 6) * *v362;
                _H2 = *v21 * *v362;
              }

              else
              {
                v368 = v366 * 0.0039216;
                _H3 = *v21;
                __asm { FCVT            S3, H3 }

                _H4 = *v28;
                __asm { FCVT            S4, H4 }

                _H5 = *v362;
                __asm { FCVT            S5, H5 }

                _S4 = ((1.0 - v368) * _S4) + (_S4 * (v368 * _S5));
                __asm { FCVT            H4, S4 }

                *v28 = LOWORD(_S4);
                LOWORD(_S4) = *(v28 + 2);
                __asm { FCVT            S4, H4 }

                *&_S5 = *v362;
                __asm { FCVT            S5, H5 }

                _S4 = ((1.0 - v368) * _S4) + (_S4 * (v368 * _S5));
                __asm { FCVT            H4, S4 }

                *(v28 + 2) = LOWORD(_S4);
                LOWORD(_S4) = *(v28 + 4);
                __asm { FCVT            S4, H4 }

                *&_S5 = *v362;
                __asm { FCVT            S5, H5 }

                _S4 = ((1.0 - v368) * _S4) + (_S4 * (v368 * _S5));
                __asm { FCVT            H4, S4 }

                *(v28 + 4) = LOWORD(_S4);
                LOWORD(_S4) = *(v28 + 6);
                __asm { FCVT            S4, H4 }

                *&_S5 = *v362;
                __asm { FCVT            S5, H5 }

                _S4 = ((1.0 - v368) * _S4) + (_S4 * (v368 * _S5));
                __asm { FCVT            H4, S4 }

                *(v28 + 6) = LOWORD(_S4);
                *&_S4 = *v362;
                __asm { FCVT            S4, H4 }

                _S2 = ((1.0 - v368) * _S3) + (_S3 * (v368 * _S4));
                __asm { FCVT            H2, S2 }
              }

              *v21 = _H2;
            }

            v30 += v41;
            v387 = v37 + 8 * v41;
            v388 = &v362[v34];
            if (v387 >= v26)
            {
              v389 = v361;
            }

            else
            {
              v389 = 0;
            }

            v362 = &v388[v389];
            v37 = v387 + 8 * v389;
            v21 += v22;
            v28 += 8 * v41;
            --v365;
          }

          while (v365);
          if (v890)
          {
            v390 = v897 + 8 * v895;
            if (v390 >= v890)
            {
              v391 = v364;
            }

            else
            {
              v391 = 0;
            }

            v392 = &v896[v893 + v391];
            if (v390 >= v890)
            {
              v393 = v363;
            }

            else
            {
              v393 = 0;
            }

            v37 = v390 + 8 * v393;
            v26 += 8 * v393 + 8 * v895;
            v896 += v893 + v391;
            v897 = v37;
            v362 = v392;
          }

          else
          {
            v37 += 8 * v895;
            v362 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          v21 += v889;
          result = (v898 - 1);
          v898 = result;
        }

        while (result);
      }

      else
      {
        v732 = -(v895 * v36);
        v733 = -(v893 * v36);
        v734 = v896;
        do
        {
          v735 = v23;
          v736 = v898;
          result = v890;
          do
          {
            v737 = *v30;
            if (*v30)
            {
              if (v737 == 255)
              {
                *v28 = *v28 * *v734;
                *(v28 + 2) = *(v28 + 2) * *v734;
                *(v28 + 4) = *(v28 + 4) * *v734;
                _H2 = *(v28 + 6) * *v734;
              }

              else
              {
                v739 = v737 * 0.0039216;
                _H3 = *v28;
                __asm { FCVT            S3, H3 }

                _H4 = *v734;
                __asm { FCVT            S4, H4 }

                _S3 = ((1.0 - v739) * _S3) + (_S3 * (v739 * _S4));
                __asm { FCVT            H3, S3 }

                *v28 = LOWORD(_S3);
                LOWORD(_S3) = *(v28 + 2);
                __asm { FCVT            S3, H3 }

                *&_S4 = *v734;
                __asm { FCVT            S4, H4 }

                _S3 = ((1.0 - v739) * _S3) + (_S3 * (v739 * _S4));
                __asm { FCVT            H3, S3 }

                *(v28 + 2) = LOWORD(_S3);
                LOWORD(_S3) = *(v28 + 4);
                __asm { FCVT            S3, H3 }

                *&_S4 = *v734;
                __asm { FCVT            S4, H4 }

                _S3 = ((1.0 - v739) * _S3) + (_S3 * (v739 * _S4));
                __asm { FCVT            H3, S3 }

                *(v28 + 4) = LOWORD(_S3);
                LOWORD(_S3) = *(v28 + 6);
                __asm { FCVT            S3, H3 }

                *&_S4 = *v734;
                __asm { FCVT            S4, H4 }

                _S2 = ((1.0 - v739) * _S3) + (_S3 * (v739 * _S4));
                __asm { FCVT            H2, S2 }
              }

              *(v28 + 6) = _H2;
            }

            v30 += v48;
            v754 = v37 + 8 * v48;
            v755 = &v734[v34];
            if (v754 >= v26)
            {
              v756 = v361;
            }

            else
            {
              v756 = 0;
            }

            v734 = &v755[v756];
            v37 = v754 + 8 * v756;
            v28 += 8 * v48;
            --v735;
          }

          while (v735);
          if (v890)
          {
            v757 = v897 + 8 * v895;
            if (v757 >= v890)
            {
              v758 = v733;
            }

            else
            {
              v758 = 0;
            }

            result = &v896[v893 + v758];
            if (v757 >= v890)
            {
              v759 = v732;
            }

            else
            {
              v759 = 0;
            }

            v37 = v757 + 8 * v759;
            v26 += 8 * v759 + 8 * v895;
            v896 += v893 + v758;
            v897 = v37;
            v734 = result;
          }

          else
          {
            v37 += 8 * v895;
            v734 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          --v898;
        }

        while (v736 != 1);
      }

      return result;
    case 8:
      v568 = -v46;
      if (v22)
      {
        v569 = -(v895 * v36);
        v570 = -(v893 * v36);
        v571 = v896;
        do
        {
          v572 = v23;
          do
          {
            v573 = *v30;
            if (*v30)
            {
              _H2 = *v28;
              if (v573 == 255)
              {
                __asm { FCVT            S2, H2 }

                _H3 = *v571;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - _S3) * _S2;
                __asm { FCVT            H2, S2 }

                *v28 = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 2);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v571;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - _S3) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 2) = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 4);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v571;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - _S3) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 4) = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 6);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v571;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - _S3) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 6) = LOWORD(_S2);
                LOWORD(_S2) = *v571;
                __asm { FCVT            S2, H2 }
              }

              else
              {
                __asm { FCVT            S2, H2 }

                _H3 = *v571;
                __asm { FCVT            S3, H3 }

                v592 = v573 * 0.0039216;
                _S2 = (1.0 - (v592 * _S3)) * _S2;
                __asm { FCVT            H2, S2 }

                *v28 = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 2);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v571;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - (v592 * _S3)) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 2) = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 4);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v571;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - (v592 * _S3)) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 4) = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 6);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v571;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - (v592 * _S3)) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 6) = LOWORD(_S2);
                LOWORD(_S2) = *v571;
                __asm { FCVT            S2, H2 }

                _S2 = v592 * _S2;
              }

              _H3 = *v21;
              __asm { FCVT            S3, H3 }

              _S2 = (1.0 - _S2) * _S3;
              __asm { FCVT            H2, S2 }

              *v21 = *&_S2;
            }

            v30 += v41;
            v607 = v37 + 8 * v41;
            v608 = &v571[v34];
            if (v607 >= v26)
            {
              v609 = v568;
            }

            else
            {
              v609 = 0;
            }

            v571 = &v608[v609];
            v37 = v607 + 8 * v609;
            v21 += v22;
            v28 += 8 * v41;
            --v572;
          }

          while (v572);
          if (v890)
          {
            v610 = v897 + 8 * v895;
            if (v610 >= v890)
            {
              v611 = v570;
            }

            else
            {
              v611 = 0;
            }

            v612 = &v896[v893 + v611];
            if (v610 >= v890)
            {
              v613 = v569;
            }

            else
            {
              v613 = 0;
            }

            v37 = v610 + 8 * v613;
            v26 += 8 * v613 + 8 * v895;
            v896 += v893 + v611;
            v897 = v37;
            v571 = v612;
          }

          else
          {
            v37 += 8 * v895;
            v571 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          v21 += v889;
          result = (v898 - 1);
          v898 = result;
        }

        while (result);
      }

      else
      {
        v775 = -(v895 * v36);
        v776 = -(v893 * v36);
        v777 = v896;
        do
        {
          v778 = v23;
          v779 = v898;
          result = v890;
          do
          {
            v780 = *v30;
            if (*v30)
            {
              _H2 = *v28;
              if (v780 == 255)
              {
                __asm { FCVT            S2, H2 }

                _H3 = *v777;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - _S3) * _S2;
                __asm { FCVT            H2, S2 }

                *v28 = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 2);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v777;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - _S3) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 2) = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 4);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v777;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - _S3) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 4) = LOWORD(_S2);
                LOWORD(_S2) = *v777;
                __asm { FCVT            S2, H2 }
              }

              else
              {
                __asm { FCVT            S2, H2 }

                _H3 = *v777;
                __asm { FCVT            S3, H3 }

                v796 = v780 * 0.0039216;
                _S2 = (1.0 - (v796 * _S3)) * _S2;
                __asm { FCVT            H2, S2 }

                *v28 = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 2);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v777;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - (v796 * _S3)) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 2) = LOWORD(_S2);
                LOWORD(_S2) = *(v28 + 4);
                __asm { FCVT            S2, H2 }

                LOWORD(_S3) = *v777;
                __asm { FCVT            S3, H3 }

                _S2 = (1.0 - (v796 * _S3)) * _S2;
                __asm { FCVT            H2, S2 }

                *(v28 + 4) = LOWORD(_S2);
                LOWORD(_S2) = *v777;
                __asm { FCVT            S2, H2 }

                _S2 = v796 * _S2;
              }

              _H3 = *(v28 + 6);
              __asm { FCVT            S3, H3 }

              _S2 = (1.0 - _S2) * _S3;
              __asm { FCVT            H2, S2 }

              *(v28 + 6) = LOWORD(_S2);
            }

            v30 += v48;
            v808 = v37 + 8 * v48;
            v809 = &v777[v34];
            if (v808 >= v26)
            {
              v810 = v568;
            }

            else
            {
              v810 = 0;
            }

            v777 = &v809[v810];
            v37 = v808 + 8 * v810;
            v28 += 8 * v48;
            --v778;
          }

          while (v778);
          if (v890)
          {
            v811 = v897 + 8 * v895;
            if (v811 >= v890)
            {
              v812 = v776;
            }

            else
            {
              v812 = 0;
            }

            result = &v896[v893 + v812];
            if (v811 >= v890)
            {
              v813 = v775;
            }

            else
            {
              v813 = 0;
            }

            v37 = v811 + 8 * v813;
            v26 += 8 * v813 + 8 * v895;
            v896 += v893 + v812;
            v897 = v37;
            v777 = result;
          }

          else
          {
            v37 += 8 * v895;
            v777 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          --v898;
        }

        while (v779 != 1);
      }

      return result;
    case 9:
      v232 = -v46;
      v233 = v896;
      v234 = -(v895 * v36);
      v235 = -(v893 * v36);
      do
      {
        v236 = v23;
        do
        {
          if (*v30)
          {
            _H2 = *v21;
            __asm { FCVT            S2, H2 }

            v239 = *v30 * 0.0039216;
            _H4 = *v233;
            __asm { FCVT            S4, H4 }

            _S4 = v239 * _S4;
            __asm
            {
              FCVT            H4, S4
              FCVT            S4, H4
            }

            v244 = (1.0 - v239) + _S4;
            *v28 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), v244), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), v239))), 1.0 - _S2));
            _S2 = (v244 * _S2) + (_S4 * (1.0 - _S2));
            __asm { FCVT            H2, S2 }

            *v21 = *&_S2;
          }

          v30 += v41;
          v246 = v37 + 8 * v41;
          v247 = &v233[v34];
          if (v246 >= v26)
          {
            v248 = v232;
          }

          else
          {
            v248 = 0;
          }

          v233 = &v247[v248];
          v37 = v246 + 8 * v248;
          v21 += v22;
          v28 += 8 * v41;
          --v236;
        }

        while (v236);
        if (v890)
        {
          v249 = v897 + 8 * v895;
          if (v249 >= v890)
          {
            v250 = v235;
          }

          else
          {
            v250 = 0;
          }

          v251 = &v896[v893 + v250];
          if (v249 >= v890)
          {
            v252 = v234;
          }

          else
          {
            v252 = 0;
          }

          v37 = v249 + 8 * v252;
          v26 += 8 * v252 + 8 * v895;
          v896 += v893 + v250;
          v897 = v37;
          v233 = v251;
        }

        else
        {
          v37 += 8 * v895;
          v233 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        result = (v898 - 1);
        v898 = result;
      }

      while (result);
      return result;
    case 10:
      v548 = -v46;
      v549 = v896;
      v550 = -(v895 * v36);
      v551 = -(v893 * v36);
      do
      {
        v552 = v23;
        do
        {
          if (*v30)
          {
            _H2 = *v21;
            __asm { FCVT            S2, H2 }

            v555 = *v30 * 0.0039216;
            _H4 = *v549;
            __asm { FCVT            S4, H4 }

            _S4 = v555 * _S4;
            __asm
            {
              FCVT            H4, S4
              FCVT            S4, H4
            }

            *v28 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v28), 1.0 - _S4), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), v555))), 1.0 - _S2));
            _S2 = ((1.0 - _S4) * _S2) + (_S4 * (1.0 - _S2));
            __asm { FCVT            H2, S2 }

            *v21 = *&_S2;
          }

          v30 += v41;
          v561 = v37 + 8 * v41;
          v562 = &v549[v34];
          if (v561 >= v26)
          {
            v563 = v548;
          }

          else
          {
            v563 = 0;
          }

          v549 = &v562[v563];
          v37 = v561 + 8 * v563;
          v21 += v22;
          v28 += 8 * v41;
          --v552;
        }

        while (v552);
        if (v890)
        {
          v564 = v897 + 8 * v895;
          if (v564 >= v890)
          {
            v565 = v551;
          }

          else
          {
            v565 = 0;
          }

          v566 = &v896[v893 + v565];
          if (v564 >= v890)
          {
            v567 = v550;
          }

          else
          {
            v567 = 0;
          }

          v37 = v564 + 8 * v567;
          v26 += 8 * v567 + 8 * v895;
          v896 += v893 + v565;
          v897 = v37;
          v549 = v566;
        }

        else
        {
          v37 += 8 * v895;
          v549 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        result = (v898 - 1);
        v898 = result;
      }

      while (result);
      return result;
    case 11:
      v115 = -v46;
      if (v22)
      {
        v116 = v896;
        v117 = -(v895 * v36);
        v118 = -(v893 * v36);
        do
        {
          v119 = v23;
          do
          {
            if (*v30)
            {
              if (v34)
              {
                _H2 = *v116;
                __asm { FCVT            S2, H2 }
              }

              else
              {
                _S2 = 1.0;
              }

              _H3 = *v37;
              __asm { FCVT            S3, H3 }

              _S4 = *v30 * 0.0039216;
              _S3 = _S4 * _S3;
              __asm { FCVT            H3, S3 }

              _H5 = *(v37 + 2);
              __asm { FCVT            S5, H5 }

              _S5 = _S4 * _S5;
              __asm { FCVT            H5, S5 }

              _H6 = *(v37 + 4);
              __asm { FCVT            S6, H6 }

              _S6 = _S4 * _S6;
              __asm { FCVT            H6, S6 }

              _H7 = *(v37 + 6);
              __asm { FCVT            S7, H7 }

              _S7 = _S4 * _S7;
              __asm { FCVT            H7, S7 }

              _S2 = _S4 * _S2;
              __asm { FCVT            H2, S2 }

              *&_S4 = *v21;
              __asm
              {
                FCVT            S4, H4
                FCVT            S2, H2
              }

              _S16 = _S4 + _S2;
              _H17 = *v28;
              __asm
              {
                FCVT            S17, H17
                FCVT            S3, H3
              }

              v145 = (_S4 - _S17) + (_S2 - _S3);
              if ((_S4 + _S2) > 1.0)
              {
                _S16 = 1.0;
              }

              _H17 = *(v28 + 2);
              __asm
              {
                FCVT            S17, H17
                FCVT            S5, H5
              }

              v149 = (_S2 - _S5) + (_S4 - _S17);
              _S3 = _S16 - v145;
              __asm { FCVT            H3, S3 }

              *v28 = LOWORD(_S3);
              *&_S3 = *v21;
              __asm { FCVT            S3, H3 }

              LOWORD(_S5) = *(v28 + 4);
              __asm { FCVT            S5, H5 }

              v153 = _S3 - _S5;
              __asm { FCVT            S5, H6 }

              v155 = (_S2 - _S5) + v153;
              _S4 = _S16 - v149;
              __asm { FCVT            H4, S4 }

              *(v28 + 2) = LOWORD(_S4);
              *&_S4 = *v21;
              __asm { FCVT            S4, H4 }

              LOWORD(_S5) = *(v28 + 6);
              __asm { FCVT            S5, H5 }

              v159 = _S4 - _S5;
              __asm { FCVT            S5, H7 }

              _S3 = _S16 - v155;
              __asm { FCVT            H3, S3 }

              *(v28 + 4) = LOWORD(_S3);
              __asm { FCVT            H3, S16 }

              *v21 = *&_S3;
              _S2 = _S16 - ((_S2 - _S5) + v159);
              __asm { FCVT            H2, S2 }

              *(v28 + 6) = LOWORD(_S2);
            }

            v30 += v41;
            v163 = v37 + 8 * v41;
            v164 = &v116[v34];
            if (v163 >= v26)
            {
              v165 = v115;
            }

            else
            {
              v165 = 0;
            }

            v116 = &v164[v165];
            v37 = v163 + 8 * v165;
            v21 += v22;
            v28 += 8 * v41;
            --v119;
          }

          while (v119);
          if (v890)
          {
            v166 = v897 + 8 * v895;
            if (v166 >= v890)
            {
              v167 = v118;
            }

            else
            {
              v167 = 0;
            }

            v168 = &v896[v893 + v167];
            if (v166 >= v890)
            {
              v169 = v117;
            }

            else
            {
              v169 = 0;
            }

            v37 = v166 + 8 * v169;
            v26 += 8 * v169 + 8 * v895;
            v896 += v893 + v167;
            v897 = v37;
            v116 = v168;
          }

          else
          {
            v37 += 8 * v895;
            v116 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          v21 += v889;
          result = (v898 - 1);
          v898 = result;
        }

        while (result);
      }

      else
      {
        v687 = -(v895 * v36);
        v688 = -(v893 * v36);
        __asm { FMOV            V1.4S, #1.0 }

        v690 = v896;
        do
        {
          v691 = v23;
          v692 = v898;
          result = v890;
          do
          {
            if (*v30)
            {
              if (v34)
              {
                _H2 = *v690;
                __asm { FCVT            S2, H2 }
              }

              else
              {
                LODWORD(_D2) = 1.0;
              }

              v694 = *v30 * 0.0039216;
              *&_D2 = v694 * *&_D2;
              __asm
              {
                FCVT            H2, S2
                FCVT            S2, H2
              }

              _D2 = COERCE_DOUBLE(vcvt_f16_f32(vsubq_f32(_Q1, vaddq_f32(vsubq_f32(vdupq_lane_s32(*&_D2, 0), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), v694)))), vsubq_f32(_Q1, vcvtq_f32_f16(*v28))))));
              *v28 = _D2;
            }

            v30 += v48;
            v695 = v37 + 8 * v48;
            v696 = &v690[v34];
            if (v695 >= v26)
            {
              v697 = v115;
            }

            else
            {
              v697 = 0;
            }

            v690 = &v696[v697];
            v37 = v695 + 8 * v697;
            v28 += 8 * v48;
            --v691;
          }

          while (v691);
          if (v890)
          {
            v698 = v897 + 8 * v895;
            if (v698 >= v890)
            {
              v699 = v688;
            }

            else
            {
              v699 = 0;
            }

            result = &v896[v893 + v699];
            if (v698 >= v890)
            {
              v700 = v687;
            }

            else
            {
              v700 = 0;
            }

            v37 = v698 + 8 * v700;
            v26 += 8 * v700 + 8 * v895;
            v896 += v893 + v699;
            v897 = v37;
            v690 = result;
          }

          else
          {
            v37 += 8 * v895;
            v690 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          --v898;
        }

        while (v692 != 1);
      }

      return result;
    case 12:
      if (v22)
      {
        v210 = -v46;
        v211 = v896;
        v212 = -(v895 * v36);
        v213 = -(v893 * v36);
        do
        {
          v214 = v23;
          do
          {
            if (*v30)
            {
              if (v34)
              {
                _H2 = *v211;
                __asm { FCVT            S2, H2 }
              }

              else
              {
                _S2 = 1.0;
              }

              _S3 = *v30 * 0.0039216;
              v218 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), _S3));
              _S2 = _S3 * _S2;
              __asm { FCVT            H2, S2 }

              *&_S3 = *v21;
              __asm
              {
                FCVT            S3, H3
                FCVT            S2, H2
              }

              _S2 = _S3 + _S2;
              if (_S2 > 1.0)
              {
                _S2 = 1.0;
              }

              __asm { FCVT            H2, S2 }

              v224.i32[0] = *v28;
              *v21 = _H2;
              v224.i32[1] = *(v28 + 4);
              *v28 = vadd_f16(v224, v218);
            }

            v30 += v41;
            v225 = v37 + 8 * v41;
            v226 = &v211[v34];
            if (v225 >= v26)
            {
              v227 = v210;
            }

            else
            {
              v227 = 0;
            }

            v211 = &v226[v227];
            v37 = v225 + 8 * v227;
            v21 += v22;
            v28 += 8 * v41;
            --v214;
          }

          while (v214);
          if (v890)
          {
            v228 = v897 + 8 * v895;
            if (v228 >= v890)
            {
              v229 = v213;
            }

            else
            {
              v229 = 0;
            }

            v230 = &v896[v893 + v229];
            if (v228 >= v890)
            {
              v231 = v212;
            }

            else
            {
              v231 = 0;
            }

            v37 = v228 + 8 * v231;
            v26 += 8 * v231 + 8 * v895;
            v896 += v893 + v229;
            v897 = v37;
            v211 = v230;
          }

          else
          {
            v37 += 8 * v895;
            v211 += v893;
          }

          v30 += v892;
          v28 += 8 * v891;
          v21 += v889;
          result = (v898 - 1);
          v898 = result;
        }

        while (result);
      }

      else
      {
        v701 = -v46;
        do
        {
          v702 = v23;
          v703 = v898;
          do
          {
            if (*v30)
            {
              *v28 = vadd_f16(*v28, vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v37), *v30 * 0.0039216)));
            }

            v30 += v48;
            v704 = v37 + 8 * v48;
            if (v704 >= v26)
            {
              v705 = v701;
            }

            else
            {
              v705 = 0;
            }

            v37 = v704 + 8 * v705;
            v28 += 8 * v48;
            --v702;
          }

          while (v702);
          v30 += v892;
          v28 += 8 * v891;
          v706 = v897;
          v707 = v897 + 8 * v895;
          if (v707 >= v890)
          {
            v708 = -(v895 * v36);
          }

          else
          {
            v708 = 0;
          }

          v709 = v707 + 8 * v708;
          v710 = v26 + 8 * v708 + 8 * v895;
          if (v890)
          {
            v26 = v710;
            v706 = v709;
          }

          v897 = v706;
          if (v890)
          {
            v37 = v709;
          }

          else
          {
            v37 += 8 * v895;
          }

          --v898;
        }

        while (v703 != 1);
      }

      return result;
    case 13:
      v488 = v34;
      v489 = -v46;
      v490 = v896;
      v838 = -(v893 * v36);
      v853 = -(v895 * v36);
      v491 = 2 * v22;
      _D0.i32[1] = -1;
      v868 = -v46;
      v883 = v34;
      while (1)
      {
        v493 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v490;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v496 = *v30 * 0.0039216;
            *_D0.i32 = v496 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v497 = vcvtq_f32_f16(*v37);
              v498 = vmulq_n_f32(v497, v496);
              *_Q5.f32 = vcvt_f16_f32(v498);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_518;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _D0.i16[0] = *v28;
              v498.n128_u16[0] = *(v28 + 2);
              v497.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAmultiplyPDA(_D0, v498, v497, a6, _Q4, _Q5, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, *_Q5.f32, *&_D6);
              _D0 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              v22 = v899;
              if (v899)
              {
                _D0 = vuzp1_s16(_D0, _D0);
                *_Q5.f32 = vzip1_s32(result, _D0);
                _D0.i16[0] = a2;
                v34 = v900;
                v489 = v868;
                v488 = v883;
LABEL_518:
                *v28 = _Q5.i64[0];
                *v21 = *_D0.i16;
                goto LABEL_520;
              }

              *v28 = result;
              *(v28 + 4) = _D0.i16[0];
              *(v28 + 6) = _D0.i16[2];
              v34 = v900;
              v489 = v868;
              v488 = v883;
            }
          }

LABEL_520:
          v30 += v48;
          v500 = v37 + 8 * v48;
          if (v500 >= v26)
          {
            v501 = v489;
          }

          else
          {
            v501 = 0;
          }

          v490 += v488 + v501;
          v37 = v500 + 8 * v501;
          v21 = (v21 + v491);
          v28 += 8 * v48;
          --v493;
        }

        while (v493);
        if (v890)
        {
          v502 = v897 + 8 * v895;
          v503 = v838;
          if (v502 < v890)
          {
            v503 = 0;
          }

          v490 = &v896[v893 + v503];
          v504 = v853;
          if (v502 < v890)
          {
            v504 = 0;
          }

          v37 = v502 + 8 * v504;
          v26 += 8 * v504 + 8 * v895;
          v896 += v893 + v503;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v490 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 14:
      v97 = v34;
      v98 = -v46;
      v99 = v896;
      v831 = -(v893 * v36);
      v846 = -(v895 * v36);
      v100 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v861 = -v46;
      v876 = v34;
      while (1)
      {
        v102 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v99;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v105 = *v30 * 0.0039216;
            _Q0.n128_f32[0] = v105 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v106 = vcvtq_f32_f16(*v37);
              v107 = vmulq_n_f32(v106, v105);
              v108 = vcvt_f16_f32(v107);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_106;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = *v28;
              v107.n128_u16[0] = *(v28 + 2);
              v106.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAscreenPDA(_Q0, v107, v106, *a6.f32, *_Q4.i64, v108, _D6, *&a10, result, a2, v23, v25, v42, v34, v22, a16, v108.i16[0], v108.i16[1], v108.i16[2], v108.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v108 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
                v34 = v900;
                v98 = v861;
                v97 = v876;
LABEL_106:
                *v28 = v108;
                *v21 = *_Q0.n128_u16;
                goto LABEL_108;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.n128_u16[0];
              *(v28 + 6) = _Q0.n128_u16[2];
              v34 = v900;
              v98 = v861;
              v97 = v876;
            }
          }

LABEL_108:
          v30 += v48;
          v110 = v37 + 8 * v48;
          if (v110 >= v26)
          {
            v111 = v98;
          }

          else
          {
            v111 = 0;
          }

          v99 += v97 + v111;
          v37 = v110 + 8 * v111;
          v21 = (v21 + v100);
          v28 += 8 * v48;
          --v102;
        }

        while (v102);
        if (v890)
        {
          v112 = v897 + 8 * v895;
          v113 = v831;
          if (v112 < v890)
          {
            v113 = 0;
          }

          v99 = &v896[v893 + v113];
          v114 = v846;
          if (v112 < v890)
          {
            v114 = 0;
          }

          v37 = v112 + 8 * v114;
          v26 += 8 * v114 + 8 * v895;
          v896 += v893 + v113;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v99 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 15:
      v316 = v34;
      v317 = -v46;
      v318 = v896;
      v834 = -(v893 * v36);
      v849 = -(v895 * v36);
      v319 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v864 = -v46;
      v879 = v34;
      while (1)
      {
        v321 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v318;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v324 = *v30 * 0.0039216;
            _Q0.n128_f32[0] = v324 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v325 = vcvtq_f32_f16(*v37);
              v326 = vmulq_n_f32(v325, v324);
              v327 = vcvt_f16_f32(v326);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_313;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _S4 = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = *v28;
              v326.n128_u16[0] = *(v28 + 2);
              v325.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAoverlayPDA(_Q0, v326, v325, a6, _S4, *&v327, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v327.i16[0], v327.i16[1], v327.i16[2], v327.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v327 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
                v34 = v900;
                v317 = v864;
                v316 = v879;
LABEL_313:
                *v28 = v327;
                *v21 = *_Q0.n128_u16;
                goto LABEL_315;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.n128_u16[0];
              *(v28 + 6) = _Q0.n128_u16[2];
              v34 = v900;
              v317 = v864;
              v316 = v879;
            }
          }

LABEL_315:
          v30 += v48;
          v330 = v37 + 8 * v48;
          if (v330 >= v26)
          {
            v331 = v317;
          }

          else
          {
            v331 = 0;
          }

          v318 += v316 + v331;
          v37 = v330 + 8 * v331;
          v21 = (v21 + v319);
          v28 += 8 * v48;
          --v321;
        }

        while (v321);
        if (v890)
        {
          v332 = v897 + 8 * v895;
          v333 = v834;
          if (v332 < v890)
          {
            v333 = 0;
          }

          v318 = &v896[v893 + v333];
          v334 = v849;
          if (v332 < v890)
          {
            v334 = 0;
          }

          v37 = v332 + 8 * v334;
          v26 += 8 * v334 + 8 * v895;
          v896 += v893 + v333;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v318 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 16:
      v80 = v34;
      v81 = -v46;
      v82 = v896;
      v830 = -(v893 * v36);
      v845 = -(v895 * v36);
      v83 = 2 * v22;
      _D0.i32[1] = -1;
      v860 = -v46;
      v875 = v34;
      while (1)
      {
        v85 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v82;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v88 = *v30 * 0.0039216;
            *_D0.i32 = v88 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v89 = vcvtq_f32_f16(*v37);
              v90 = vmulq_n_f32(v89, v88);
              *_Q5.f32 = vcvt_f16_f32(v90);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_78;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _D0.i16[0] = *v28;
              v90.n128_u16[0] = *(v28 + 2);
              v89.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAdarkenPDA(_D0, v90, v89, a6, _Q4, _Q5, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, *_Q5.f32, *&_D6);
              _D0 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              v22 = v899;
              if (v899)
              {
                _D0 = vuzp1_s16(_D0, _D0);
                *_Q5.f32 = vzip1_s32(result, _D0);
                _D0.i16[0] = a2;
                v34 = v900;
                v81 = v860;
                v80 = v875;
LABEL_78:
                *v28 = _Q5.i64[0];
                *v21 = *_D0.i16;
                goto LABEL_80;
              }

              *v28 = result;
              *(v28 + 4) = _D0.i16[0];
              *(v28 + 6) = _D0.i16[2];
              v34 = v900;
              v81 = v860;
              v80 = v875;
            }
          }

LABEL_80:
          v30 += v48;
          v92 = v37 + 8 * v48;
          if (v92 >= v26)
          {
            v93 = v81;
          }

          else
          {
            v93 = 0;
          }

          v82 += v80 + v93;
          v37 = v92 + 8 * v93;
          v21 = (v21 + v83);
          v28 += 8 * v48;
          --v85;
        }

        while (v85);
        if (v890)
        {
          v94 = v897 + 8 * v895;
          v95 = v830;
          if (v94 < v890)
          {
            v95 = 0;
          }

          v82 = &v896[v893 + v95];
          v96 = v845;
          if (v94 < v890)
          {
            v96 = 0;
          }

          v37 = v94 + 8 * v96;
          v26 += 8 * v96 + 8 * v895;
          v896 += v893 + v95;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v82 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 17:
      v414 = v34;
      v415 = -v46;
      v416 = v896;
      v835 = -(v893 * v36);
      v850 = -(v895 * v36);
      v417 = 2 * v22;
      _D0.i32[1] = -1;
      v865 = -v46;
      v880 = v34;
      while (1)
      {
        v419 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v416;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v422 = *v30 * 0.0039216;
            *_D0.i32 = v422 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v423 = vcvtq_f32_f16(*v37);
              v424 = vmulq_n_f32(v423, v422);
              *_Q5.f32 = vcvt_f16_f32(v424);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_415;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _D0.i16[0] = *v28;
              v424.n128_u16[0] = *(v28 + 2);
              v423.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAlightenPDA(_D0, v424, v423, a6, _Q4, _Q5, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, *_Q5.f32, *&_D6);
              _D0 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              v22 = v899;
              if (v899)
              {
                _D0 = vuzp1_s16(_D0, _D0);
                *_Q5.f32 = vzip1_s32(result, _D0);
                _D0.i16[0] = a2;
                v34 = v900;
                v415 = v865;
                v414 = v880;
LABEL_415:
                *v28 = _Q5.i64[0];
                *v21 = *_D0.i16;
                goto LABEL_417;
              }

              *v28 = result;
              *(v28 + 4) = _D0.i16[0];
              *(v28 + 6) = _D0.i16[2];
              v34 = v900;
              v415 = v865;
              v414 = v880;
            }
          }

LABEL_417:
          v30 += v48;
          v426 = v37 + 8 * v48;
          if (v426 >= v26)
          {
            v427 = v415;
          }

          else
          {
            v427 = 0;
          }

          v416 += v414 + v427;
          v37 = v426 + 8 * v427;
          v21 = (v21 + v417);
          v28 += 8 * v48;
          --v419;
        }

        while (v419);
        if (v890)
        {
          v428 = v897 + 8 * v895;
          v429 = v835;
          if (v428 < v890)
          {
            v429 = 0;
          }

          v416 = &v896[v893 + v429];
          v430 = v850;
          if (v428 < v890)
          {
            v430 = 0;
          }

          v37 = v428 + 8 * v430;
          v26 += 8 * v430 + 8 * v895;
          v896 += v893 + v429;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v416 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 18:
      v529 = v34;
      v530 = -v46;
      v531 = v896;
      v839 = -(v893 * v36);
      v854 = -(v895 * v36);
      v532 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v869 = -v46;
      v884 = v34;
      while (1)
      {
        v534 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v531;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v537 = *v30 * 0.0039216;
            _Q0.n128_f32[0] = v537 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v538 = vcvtq_f32_f16(*v37);
              v539 = vmulq_n_f32(v538, v537);
              v540 = vcvt_f16_f32(v539);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_575;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _S4 = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = *v28;
              v539.n128_u16[0] = *(v28 + 2);
              v538.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAcolordodgePDA(_Q0, v539, v538, a6, _S4, *&v540, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v540.i16[0], v540.i16[1], v540.i16[2], v540.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v540 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
                v34 = v900;
                v530 = v869;
                v529 = v884;
LABEL_575:
                *v28 = v540;
                *v21 = *_Q0.n128_u16;
                goto LABEL_577;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.n128_u16[0];
              *(v28 + 6) = _Q0.n128_u16[2];
              v34 = v900;
              v530 = v869;
              v529 = v884;
            }
          }

LABEL_577:
          v30 += v48;
          v543 = v37 + 8 * v48;
          if (v543 >= v26)
          {
            v544 = v530;
          }

          else
          {
            v544 = 0;
          }

          v531 += v529 + v544;
          v37 = v543 + 8 * v544;
          v21 = (v21 + v532);
          v28 += 8 * v48;
          --v534;
        }

        while (v534);
        if (v890)
        {
          v545 = v897 + 8 * v895;
          v546 = v839;
          if (v545 < v890)
          {
            v546 = 0;
          }

          v531 = &v896[v893 + v546];
          v547 = v854;
          if (v545 < v890)
          {
            v547 = 0;
          }

          v37 = v545 + 8 * v547;
          v26 += 8 * v547 + 8 * v895;
          v896 += v893 + v546;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v531 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 19:
      v632 = v34;
      v633 = -v46;
      v634 = v896;
      v841 = -(v893 * v36);
      v856 = -(v895 * v36);
      v635 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v871 = -v46;
      v886 = v34;
      while (1)
      {
        v637 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v634;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v640 = *v30 * 0.0039216;
            _Q0.n128_f32[0] = v640 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v641 = vcvtq_f32_f16(*v37);
              v642 = vmulq_n_f32(v641, v640);
              v643 = vcvt_f16_f32(v642);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_673;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _S4 = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = *v28;
              v642.n128_u16[0] = *(v28 + 2);
              v641.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAcolorburnPDA(_Q0, v642, v641, a6, _S4, *&v643, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v643.i16[0], v643.i16[1], v643.i16[2], v643.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v643 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
                v34 = v900;
                v633 = v871;
                v632 = v886;
LABEL_673:
                *v28 = v643;
                *v21 = *_Q0.n128_u16;
                goto LABEL_675;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.n128_u16[0];
              *(v28 + 6) = _Q0.n128_u16[2];
              v34 = v900;
              v633 = v871;
              v632 = v886;
            }
          }

LABEL_675:
          v30 += v48;
          v646 = v37 + 8 * v48;
          if (v646 >= v26)
          {
            v647 = v633;
          }

          else
          {
            v647 = 0;
          }

          v634 += v632 + v647;
          v37 = v646 + 8 * v647;
          v21 = (v21 + v635);
          v28 += 8 * v48;
          --v637;
        }

        while (v637);
        if (v890)
        {
          v648 = v897 + 8 * v895;
          v649 = v841;
          if (v648 < v890)
          {
            v649 = 0;
          }

          v634 = &v896[v893 + v649];
          v650 = v856;
          if (v648 < v890)
          {
            v650 = 0;
          }

          v37 = v648 + 8 * v650;
          v26 += 8 * v650 + 8 * v895;
          v896 += v893 + v649;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v634 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 20:
      v431 = v34;
      v432 = -v46;
      v433 = v896;
      v836 = -(v893 * v36);
      v851 = -(v895 * v36);
      v434 = 2 * v22;
      _D0.i32[1] = -1;
      v866 = -v46;
      v881 = v34;
      while (1)
      {
        v436 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v433;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v439 = *v30 * 0.0039216;
            *_D0.i32 = v439 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v440 = vcvtq_f32_f16(*v37);
              v441 = vmulq_n_f32(v440, v439);
              v442 = vcvt_f16_f32(v441);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_443;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _D0.i16[0] = *v28;
              v441.n128_u16[0] = *(v28 + 2);
              v440.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAsoftlightPDA(_D0, v441, v440, *a6.f32, *_Q4.i64, v442, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v442.i32[0], v442.i16[2], v442.i16[3], *&_D6);
              _D0 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              v22 = v899;
              if (v899)
              {
                _D0 = vuzp1_s16(_D0, _D0);
                v442 = vzip1_s32(result, _D0);
                _D0.i16[0] = a2;
                v34 = v900;
                v432 = v866;
                v431 = v881;
LABEL_443:
                *v28 = v442;
                *v21 = *_D0.i16;
                goto LABEL_445;
              }

              *v28 = result;
              *(v28 + 4) = _D0.i16[0];
              *(v28 + 6) = _D0.i16[2];
              v34 = v900;
              v432 = v866;
              v431 = v881;
            }
          }

LABEL_445:
          v30 += v48;
          v444 = v37 + 8 * v48;
          if (v444 >= v26)
          {
            v445 = v432;
          }

          else
          {
            v445 = 0;
          }

          v433 += v431 + v445;
          v37 = v444 + 8 * v445;
          v21 = (v21 + v434);
          v28 += 8 * v48;
          --v436;
        }

        while (v436);
        if (v890)
        {
          v446 = v897 + 8 * v895;
          v447 = v836;
          if (v446 < v890)
          {
            v447 = 0;
          }

          v433 = &v896[v893 + v447];
          v448 = v851;
          if (v446 < v890)
          {
            v448 = 0;
          }

          v37 = v446 + 8 * v448;
          v26 += 8 * v448 + 8 * v895;
          v896 += v893 + v447;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v433 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 21:
      v469 = v34;
      v470 = -v46;
      v471 = v896;
      v837 = -(v893 * v36);
      v852 = -(v895 * v36);
      v472 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v867 = -v46;
      v882 = v34;
      while (1)
      {
        v474 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v471;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v477 = *v30 * 0.0039216;
            _Q0.n128_f32[0] = v477 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v478 = vcvtq_f32_f16(*v37);
              v479 = vmulq_n_f32(v478, v477);
              v480 = vcvt_f16_f32(v479);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_490;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _S4 = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = *v28;
              v479.n128_u16[0] = *(v28 + 2);
              v478.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAhardlightPDA(_Q0, v479, v478, a6, _S4, *&v480, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v480.i16[0], v480.i16[1], v480.i16[2], v480.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v480 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
                v34 = v900;
                v470 = v867;
                v469 = v882;
LABEL_490:
                *v28 = v480;
                *v21 = *_Q0.n128_u16;
                goto LABEL_492;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.n128_u16[0];
              *(v28 + 6) = _Q0.n128_u16[2];
              v34 = v900;
              v470 = v867;
              v469 = v882;
            }
          }

LABEL_492:
          v30 += v48;
          v483 = v37 + 8 * v48;
          if (v483 >= v26)
          {
            v484 = v470;
          }

          else
          {
            v484 = 0;
          }

          v471 += v469 + v484;
          v37 = v483 + 8 * v484;
          v21 = (v21 + v472);
          v28 += 8 * v48;
          --v474;
        }

        while (v474);
        if (v890)
        {
          v485 = v897 + 8 * v895;
          v486 = v837;
          if (v485 < v890)
          {
            v486 = 0;
          }

          v471 = &v896[v893 + v486];
          v487 = v852;
          if (v485 < v890)
          {
            v487 = 0;
          }

          v37 = v485 + 8 * v487;
          v26 += 8 * v487 + 8 * v895;
          v896 += v893 + v486;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v471 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 22:
      v614 = v34;
      v615 = -v46;
      v616 = v896;
      v840 = -(v893 * v36);
      v855 = -(v895 * v36);
      v617 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v870 = -v46;
      v885 = v34;
      while (1)
      {
        v619 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v616;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v622 = *v30 * 0.0039216;
            _Q0.n128_f32[0] = v622 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v623 = vcvtq_f32_f16(*v37);
              v624 = vmulq_n_f32(v623, v622);
              v625 = vcvt_f16_f32(v624);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_645;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = *v28;
              v624.n128_u16[0] = *(v28 + 2);
              v623.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAdifferencePDA(_Q0, v624, v623, *a6.f32, *_Q4.i64, v625, *&_D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v625.i16[0], v625.i16[1], v625.i16[2], v625.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v625 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
                v34 = v900;
                v615 = v870;
                v614 = v885;
LABEL_645:
                *v28 = v625;
                *v21 = *_Q0.n128_u16;
                goto LABEL_647;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.n128_u16[0];
              *(v28 + 6) = _Q0.n128_u16[2];
              v34 = v900;
              v615 = v870;
              v614 = v885;
            }
          }

LABEL_647:
          v30 += v48;
          v627 = v37 + 8 * v48;
          if (v627 >= v26)
          {
            v628 = v615;
          }

          else
          {
            v628 = 0;
          }

          v616 += v614 + v628;
          v37 = v627 + 8 * v628;
          v21 = (v21 + v617);
          v28 += 8 * v48;
          --v619;
        }

        while (v619);
        if (v890)
        {
          v629 = v897 + 8 * v895;
          v630 = v840;
          if (v629 < v890)
          {
            v630 = 0;
          }

          v616 = &v896[v893 + v630];
          v631 = v855;
          if (v629 < v890)
          {
            v631 = 0;
          }

          v37 = v629 + 8 * v631;
          v26 += 8 * v631 + 8 * v895;
          v896 += v893 + v630;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v616 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 23:
      v651 = v34;
      v652 = -v46;
      v653 = v896;
      v842 = -(v893 * v36);
      v857 = -(v895 * v36);
      v654 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v872 = -v46;
      v887 = v34;
      while (1)
      {
        v656 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v653;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v659 = *v30 * 0.0039216;
            _Q0.n128_f32[0] = v659 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v660 = vcvtq_f32_f16(*v37);
              v661 = vmulq_n_f32(v660, v659);
              v662 = vcvt_f16_f32(v661);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_701;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.n128_u16[0] = *v28;
              v661.n128_u16[0] = *(v28 + 2);
              v660.n128_u16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAexclusionPDA(_Q0, v661, v660, *a6.f32, *_Q4.i64, v662, _D6, *&a10, result, a2, v23, v25, v42, v34, v22, a16, v662.i16[0], v662.i16[1], v662.i16[2], v662.i16[3], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              _Q0.n128_u64[0] = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v662 = vzip1_s32(result, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = a2;
                v34 = v900;
                v652 = v872;
                v651 = v887;
LABEL_701:
                *v28 = v662;
                *v21 = *_Q0.n128_u16;
                goto LABEL_703;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.n128_u16[0];
              *(v28 + 6) = _Q0.n128_u16[2];
              v34 = v900;
              v652 = v872;
              v651 = v887;
            }
          }

LABEL_703:
          v30 += v48;
          v664 = v37 + 8 * v48;
          if (v664 >= v26)
          {
            v665 = v652;
          }

          else
          {
            v665 = 0;
          }

          v653 += v651 + v665;
          v37 = v664 + 8 * v665;
          v21 = (v21 + v654);
          v28 += 8 * v48;
          --v656;
        }

        while (v656);
        if (v890)
        {
          v666 = v897 + 8 * v895;
          v667 = v842;
          if (v666 < v890)
          {
            v667 = 0;
          }

          v653 = &v896[v893 + v667];
          v668 = v857;
          if (v666 < v890)
          {
            v668 = 0;
          }

          v37 = v666 + 8 * v668;
          v26 += 8 * v668 + 8 * v895;
          v896 += v893 + v667;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v653 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 24:
      v271 = v34;
      v272 = -v46;
      v273 = v896;
      v833 = -(v893 * v36);
      v848 = -(v895 * v36);
      v274 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v863 = -v46;
      v878 = v34;
      while (1)
      {
        v276 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v273;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v279 = *v30 * 0.0039216;
            _Q0.f32[0] = v279 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v280 = vcvtq_f32_f16(*v37);
              v281 = vmulq_n_f32(v280, v279);
              v282 = vcvt_f16_f32(v281);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_257;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.i16[0] = *v28;
              v281.n128_u16[0] = *(v28 + 2);
              v280.i16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAhuePDA(_Q0, v281, *v280.f32, a6, *_Q4.i64, v282, *&_D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v282.i16[0], v282.i16[1], v282.i32[1], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              *_Q0.f32 = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                *_Q0.f32 = vuzp1_s16(*_Q0.f32, *_Q0.f32);
                v282 = vzip1_s32(result, *_Q0.f32);
                _Q0.i16[0] = a2;
                v34 = v900;
                v272 = v863;
                v271 = v878;
LABEL_257:
                *v28 = v282;
                *v21 = *_Q0.i16;
                goto LABEL_259;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.i16[0];
              *(v28 + 6) = _Q0.i16[2];
              v34 = v900;
              v272 = v863;
              v271 = v878;
            }
          }

LABEL_259:
          v30 += v48;
          v284 = v37 + 8 * v48;
          if (v284 >= v26)
          {
            v285 = v272;
          }

          else
          {
            v285 = 0;
          }

          v273 += v271 + v285;
          v37 = v284 + 8 * v285;
          v21 = (v21 + v274);
          v28 += 8 * v48;
          --v276;
        }

        while (v276);
        if (v890)
        {
          v286 = v897 + 8 * v895;
          v287 = v833;
          if (v286 < v890)
          {
            v287 = 0;
          }

          v273 = &v896[v893 + v287];
          v288 = v848;
          if (v286 < v890)
          {
            v288 = 0;
          }

          v37 = v286 + 8 * v288;
          v26 += 8 * v288 + 8 * v895;
          v896 += v893 + v287;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v273 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 25:
      v253 = v34;
      v254 = -v46;
      v255 = v896;
      v832 = -(v893 * v36);
      v847 = -(v895 * v36);
      v256 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v862 = -v46;
      v877 = v34;
      while (1)
      {
        v258 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v255;
              __asm { FCVT            S0, H0 }
            }

            else
            {
              _S0 = 1.0;
            }

            v261 = *v30 * 0.0039216;
            _Q0.f32[0] = v261 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v262 = vcvtq_f32_f16(*v37);
              v263 = vmulq_n_f32(v262, v261);
              v264 = vcvt_f16_f32(v263);
              if (v22)
              {
                __asm { FCMP            H1, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_229;
                }

                __asm { FCVT            S4, H1 }
              }

              else
              {
                _Q4.i32[0] = 1.0;
              }

              __asm { FCVT            S6, H0 }

              _Q0.i16[0] = *v28;
              v263.n128_u16[0] = *(v28 + 2);
              v262.i16[0] = *(v28 + 4);
              a6.i16[0] = *(v28 + 6);
              result = PDAsaturationPDA(_Q0, v263, *v262.f32, a6, *_Q4.i64, v264, *&_D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v264.i16[0], v264.i16[1], v264.i32[1], *&_D6);
              _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
              *_Q0.f32 = vmovn_s64(_Q0);
              v22 = v899;
              if (v899)
              {
                *_Q0.f32 = vuzp1_s16(*_Q0.f32, *_Q0.f32);
                v264 = vzip1_s32(result, *_Q0.f32);
                _Q0.i16[0] = a2;
                v34 = v900;
                v254 = v862;
                v253 = v877;
LABEL_229:
                *v28 = v264;
                *v21 = *_Q0.i16;
                goto LABEL_231;
              }

              *v28 = result;
              *(v28 + 4) = _Q0.i16[0];
              *(v28 + 6) = _Q0.i16[2];
              v34 = v900;
              v254 = v862;
              v253 = v877;
            }
          }

LABEL_231:
          v30 += v48;
          v266 = v37 + 8 * v48;
          if (v266 >= v26)
          {
            v267 = v254;
          }

          else
          {
            v267 = 0;
          }

          v255 += v253 + v267;
          v37 = v266 + 8 * v267;
          v21 = (v21 + v256);
          v28 += 8 * v48;
          --v258;
        }

        while (v258);
        if (v890)
        {
          v268 = v897 + 8 * v895;
          v269 = v832;
          if (v268 < v890)
          {
            v269 = 0;
          }

          v255 = &v896[v893 + v269];
          v270 = v847;
          if (v268 < v890)
          {
            v270 = 0;
          }

          v37 = v268 + 8 * v270;
          v26 += 8 * v270 + 8 * v895;
          v896 += v893 + v269;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v255 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 26:
      v669 = v34;
      v670 = -v46;
      v671 = v896;
      v843 = -(v893 * v36);
      v858 = -(v895 * v36);
      v672 = 2 * v22;
      v873 = -v46;
      v888 = v34;
      while (1)
      {
        v673 = v894;
        do
        {
          if (*v30)
          {
            if (v34)
            {
              _H0 = *v671;
              __asm { FCVT            S1, H0 }
            }

            else
            {
              _S1 = 1.0;
            }

            v676 = *v30 * 0.0039216;
            _Q1.n128_f32[0] = v676 * _S1;
            __asm
            {
              FCVT            H1, S1
              FCMP            H1, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v677 = vcvtq_f32_f16(*v37);
              v678 = vmulq_n_f32(v677, v676);
              v678.n128_u64[0] = vcvt_f16_f32(v678);
              if (v22)
              {
                __asm { FCMP            H2, #0 }

                if (_NF ^ _VF | _ZF)
                {
                  goto LABEL_729;
                }

                __asm { FCVT            S5, H2 }
              }

              else
              {
                _Q5.i32[0] = 1.0;
              }

              __asm { FCVT            S4, H1 }

              _Q1.n128_u16[0] = v678.n128_u16[1];
              a6.i16[0] = v678.n128_i16[3];
              v677.n128_u16[0] = v678.n128_u16[2];
              result = PDAluminosityPDA(v678, _Q1, v677, a6, _S4, *_Q5.i64, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, *v28, HIWORD(*v28), *(v28 + 4), HIWORD(*(v28 + 4)), _Q5.f32[0]);
              _Q1 = xmmword_18439CB80;
              v681 = vmovn_s64(vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80));
              v22 = v899;
              if (v899)
              {
                _Q1.n128_u32[1] = HIDWORD(result);
                v678.n128_u64[0] = vzip1_s32(result, vuzp1_s16(v681, v681));
                _Q1.n128_u16[0] = a2;
                v34 = v900;
                v670 = v873;
                v669 = v888;
LABEL_729:
                *v28 = v678.n128_u64[0];
                *v21 = *_Q1.n128_u16;
                goto LABEL_731;
              }

              *v28 = result;
              *(v28 + 4) = v681.i16[0];
              *(v28 + 6) = v681.i16[2];
              v34 = v900;
              v670 = v873;
              v669 = v888;
            }
          }

LABEL_731:
          v30 += v48;
          v682 = v37 + 8 * v48;
          if (v682 >= v26)
          {
            v683 = v670;
          }

          else
          {
            v683 = 0;
          }

          v671 += v669 + v683;
          v37 = v682 + 8 * v683;
          v21 = (v21 + v672);
          v28 += 8 * v48;
          --v673;
        }

        while (v673);
        if (v890)
        {
          v684 = v897 + 8 * v895;
          v685 = v843;
          if (v684 < v890)
          {
            v685 = 0;
          }

          v671 = &v896[v893 + v685];
          v686 = v858;
          if (v684 < v890)
          {
            v686 = 0;
          }

          v37 = v684 + 8 * v686;
          v26 += 8 * v686 + 8 * v895;
          v896 += v893 + v685;
          v897 = v37;
        }

        else
        {
          v37 += 8 * v895;
          v671 += v893;
        }

        v30 += v892;
        v28 += 8 * v891;
        v21 += v889;
        if (!--v898)
        {
          return result;
        }
      }

    case 27:
      v61 = v34;
      v62 = -v46;
      v63 = v896;
      v829 = -(v893 * v36);
      v844 = -(v895 * v36);
      v64 = 2 * v22;
      _Q0 = xmmword_18439CB80;
      v859 = -v46;
      v874 = v34;
      break;
    default:
      return result;
  }

  do
  {
    v66 = v894;
    do
    {
      if (*v30)
      {
        if (v34)
        {
          _H0 = *v63;
          __asm { FCVT            S0, H0 }
        }

        else
        {
          _S0 = 1.0;
        }

        v69 = *v30 * 0.0039216;
        _Q0.n128_f32[0] = v69 * _S0;
        __asm
        {
          FCVT            H0, S0
          FCMP            H0, #0
        }

        if (!(_NF ^ _VF | _ZF))
        {
          v70 = vcvtq_f32_f16(*v37);
          v71 = vmulq_n_f32(v70, v69);
          v72 = vcvt_f16_f32(v71);
          if (v22)
          {
            __asm { FCMP            H1, #0 }

            if (_NF ^ _VF | _ZF)
            {
              goto LABEL_50;
            }

            __asm { FCVT            S4, H1 }
          }

          else
          {
            _S4 = 1.0;
          }

          __asm { FCVT            S6, H0 }

          _Q0.n128_u16[0] = *v28;
          v71.n128_u16[0] = *(v28 + 2);
          v70.n128_u16[0] = *(v28 + 4);
          a6.i16[0] = *(v28 + 6);
          result = PDAluminosityPDA(_Q0, v71, v70, a6, _S4, *&v72, _D6, a10, result, a2, v23, v25, v42, v34, v22, a16, v72.i16[0], v72.i16[1], v72.i16[2], v72.i16[3], *&_D6);
          _Q0 = vshlq_u64(vdupq_n_s64(result), xmmword_18439CB80);
          _Q0.n128_u64[0] = vmovn_s64(_Q0);
          v22 = v899;
          if (v899)
          {
            _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
            v72 = vzip1_s32(result, _Q0.n128_u64[0]);
            _Q0.n128_u16[0] = a2;
            v34 = v900;
            v62 = v859;
            v61 = v874;
LABEL_50:
            *v28 = v72;
            *v21 = *_Q0.n128_u16;
            goto LABEL_52;
          }

          *v28 = result;
          *(v28 + 4) = _Q0.n128_u16[0];
          *(v28 + 6) = _Q0.n128_u16[2];
          v34 = v900;
          v62 = v859;
          v61 = v874;
        }
      }

LABEL_52:
      v30 += v48;
      v75 = v37 + 8 * v48;
      if (v75 >= v26)
      {
        v76 = v62;
      }

      else
      {
        v76 = 0;
      }

      v63 += v61 + v76;
      v37 = v75 + 8 * v76;
      v21 = (v21 + v64);
      v28 += 8 * v48;
      --v66;
    }

    while (v66);
    if (v890)
    {
      v77 = v897 + 8 * v895;
      v78 = v829;
      if (v77 < v890)
      {
        v78 = 0;
      }

      v63 = &v896[v893 + v78];
      v79 = v844;
      if (v77 < v890)
      {
        v79 = 0;
      }

      v37 = v77 + 8 * v79;
      v26 += 8 * v79 + 8 * v895;
      v896 += v893 + v78;
      v897 = v37;
    }

    else
    {
      v37 += 8 * v895;
      v63 += v893;
    }

    v30 += v892;
    v28 += 8 * v891;
    v21 += v889;
    --v898;
  }

  while (v898);
  return result;
}

uint64_t CMYKf16_image(uint64_t *a1, unsigned __int8 *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  memset(v32, 0, 512);
  if (*(a2 + 12))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 8) >= 1.0;
  }

  v8 = *(*(v6 + 7) + 16 * *a2 + 8 * v7 + 4 * (*(a2 + 6) == 0));
  if (v8 > 28)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a2 + 1) < 1 || *(a2 + 2) < 1)
  {
    return 0;
  }

  if (_blt_image_initialize(a2, a3, &v26, v32) < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = *v6;
  v19 = *a3;
  v27 = v19;
  v28 = v18;
  if (v19 != 269501477)
  {
    v20 = SAMPLEINDEX(v19, v10, v11, v12, v13, v14, v15, v16);
    if (v20)
    {
      if (v20 <= 0x1B)
      {
        _CGHandleAssert("CMYKf16_image_inner", 15096, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphics/Misc/blt_float16/blt_cmyk_float16.cc", "index > SAMPLEF", "index = %d", v21, v22, v23, v20);
      }

      v26 = CMYKF16_image_sample[v20 + 1];
      if (v26)
      {
        v27 = 269501477;
        goto LABEL_27;
      }

      if ((HIWORD(*a3) & 0x3Fu) > 8)
      {
        if ((*a3 & 0x3F0000u) >> 16 > 0x10)
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        v26 = *&CMYK8_image_sample[2 * v20 + 2];
        if (v26)
        {
          v24 = 8;
          v25 = 134759444;
LABEL_26:
          v29 = v24;
          v27 = v25;
          goto LABEL_27;
        }
      }

      v26 = *&CMYK16_image_sample[2 * v20 + 2];
      if (v26)
      {
        v24 = 16;
        v25 = 269501476;
        goto LABEL_26;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (!v31 && (~v30 & 0xC3) == 0)
  {
    v17.n128_u32[0] = *(a3 + 8);
    if (v17.n128_f32[0] >= 1.0 && !*(a3 + 24))
    {
      if ((v30 & 4) != 0)
      {
        v17.n128_u64[0] = *(a3 + 32);
        *(a2 + 8) = v17.n128_u64[0];
      }

      CMYKf16_mark_inner(*(*a1 + 56), v17);
      return 1;
    }
  }

  v26 = CMYKf16_sample_CMYKf_inner;
LABEL_27:
  CMYKf16_image_mark(a2, &v26, v8, v17);
  return 1;
}

void CMYKf16_image_mark(uint64_t a1, uint64_t a2, int a3, __n128 a4)
{
  v639 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 4);
  v632 = *(a1 + 8);
  v626 = v4;
  v5 = v4;
  v6 = *(a1 + 28);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  a4.n128_u32[0] = *(a2 + 184);
  v9 = *(a1 + 136);
  v10 = *(a2 + 104);
  v634 = *(a2 + 96);
  v635 = v10;
  v638 = 0;
  *(a2 + 264) = &v638;
  v624 = v5;
  v11 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v11 <= 0x1FFFFFF)
  {
    v630 = a4;
    v637 = v7;
    v14 = *(a1 + 12);
    v15 = *(a1 + 16);
    v627 = a2;
    v16 = *(a2 + 16);
    v17 = (v16 + 12) * v11;
    if (v17 > 65439)
    {
      v21 = malloc_type_calloc(1uLL, v17 + 96, 0x9E68F379uLL);
      v19 = v21;
      v22 = v627;
      v23 = v637;
      if (!v21)
      {
        return;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a4);
      v19 = &v618 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v19, v18);
      v21 = 0;
      v22 = v627;
      v23 = v637;
    }

    v625 = a3;
    v24 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
    v25 = v24 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = 10 * v11 + 15;
    v27 = v26 & 0xFFFFFFFFFFFFFFF0;
    if (v16)
    {
      v28 = v26 & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v28 = 0;
    }

    v29 = v25 + v28;
    v30 = v6 >> 3;
    v22[18] = v24;
    v22[19] = v29;
    v22[20] = v25;
    if (v23)
    {
      v31 = *(a1 + 32) >> 1;
      v32 = (v23 + 2 * v31 * v15 + 2 * v14);
      v33 = v624;
      v631 = v31 - v624;
      v34 = 1;
    }

    else
    {
      v32 = 0;
      v631 = 0;
      v34 = 0;
      v33 = v624;
    }

    v35 = v8 + 8 * v30 * v15 + 8 * v14;
    v629 = v30 - v33;
    v36 = *(a1 + 104);
    v37 = *(a1 + 108);
    v38 = *(a1 + 2);
    if (v38 == 6 || v38 == 1)
    {
      v39 = v625;
      v40 = v627;
      v41 = v634;
      if (v9)
      {
        v619 = v30;
        v621 = v21;
        v42 = 0;
        v43 = *(a1 + 124);
        v44 = 0;
        v45 = v9 + v43 * v37 + v36;
        v33 = v624;
        v628 = v43 - v624;
        v46 = v626;
        goto LABEL_24;
      }

LABEL_21:
      if (v21)
      {
        free(v21);
      }

      return;
    }

    v619 = v30;
    v621 = v21;
    if (v9)
    {
      v47 = v27;
      v620 = v34;
      shape_enum_clip_alloc(v21, v20, v9, 1, 1, 1, v36, v37, v626, v632);
      if (v48)
      {
        v44 = v48;
        v636 = 0;
        v49 = ((v16 * v11 + 15) & 0xFFFFFFF0);
        if (!v16)
        {
          v49 = v47;
        }

        v50 = v624;
        v628 = -v624;
        v45 = (v29 + v49 + 16);
        v39 = v625;
        v46 = v626;
        v40 = v627;
        v51 = v637;
        v41 = v634;
        goto LABEL_577;
      }

LABEL_576:
      v21 = v621;
      goto LABEL_21;
    }

    v628 = 0;
    v44 = 0;
    v45 = 0;
    v42 = 0;
    v39 = v625;
    v46 = v626;
    v40 = v627;
    v41 = v634;
LABEL_24:
    v636 = v42;
    v623 = (v46 - 1);
    v622 = -v33;
    v620 = v34;
    v52 = 2 * v34;
    v53 = v44;
    v54 = v632;
    v55 = v635;
LABEL_25:
    v633 = v53;
    v634 = v41;
    *(v40 + 60) = v54;
    v56 = *v40;
    v635 = v55;
    v57 = v56(v40, v41);
    v72 = v40[20];
    v73 = v40[18];
    v74 = *(v40 + 2);
    if (v74 == *(v40 + 3))
    {
      _Q1 = v630;
      if (v630.n128_f32[0] < 1.0)
      {
        v75 = v46;
        v76 = v40[18];
        do
        {
          if (*v76)
          {
            _Q0 = vmulq_n_f32(vcvtq_f32_f16(*v72), _Q1.n128_f32[0]);
            _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
            *v72 = _Q0.n128_u64[0];
            _Q0.n128_u16[0] = v72[1].u16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = _Q1.n128_f32[0] * _Q0.n128_f32[0];
            __asm { FCVT            H0, S0 }

            v72[1].i16[0] = _Q0.n128_u16[0];
          }

          ++v76;
          v72 = (v72 + 10);
          --v75;
        }

        while (v75);
        v72 = (v72 + 10 * v622);
        v73 += v623 + v622 + 1;
      }
    }

    else
    {
      v81 = v40[19];
      v82 = HIWORD(v74) & 0x3F;
      v83 = v630.n128_f32[0];
      if (v82 == 16)
      {
        v87 = 0;
        v88 = (v81 + 8);
        if (v630.n128_f32[0] >= 1.0)
        {
          v97 = v72 + 2;
          do
          {
            if (v73[v87])
            {
              v98 = *v88;
              v99 = *(v88 - 1);
              _S0 = *&_blt_float[v99 + 256] + *&_blt_float[BYTE1(v99) + 512];
              __asm { FCVT            H0, S0 }

              *(v97 - 2) = LOWORD(_S0);
              _S0 = *&_blt_float[BYTE2(v99) + 256] + *&_blt_float[BYTE3(v99) | 0x200];
              __asm { FCVT            H0, S0 }

              *(v97 - 1) = LOWORD(_S0);
              _S0 = *&_blt_float[BYTE4(v99) + 256] + *&_blt_float[BYTE5(v99) + 512];
              __asm { FCVT            H0, S0 }

              *v97 = LOWORD(_S0);
              _S0 = *&_blt_float[BYTE6(v99) + 256] + *&_blt_float[HIBYTE(v99) + 512];
              __asm { FCVT            H0, S0 }

              v97[1] = LOWORD(_S0);
              _S0 = *&_blt_float[v98 + 256] + *(&_blt_float[512] + ((v98 >> 6) & 0x3FC));
              __asm { FCVT            H0, S0 }

              v97[2] = LOWORD(_S0);
            }

            v88 += 8;
            ++v87;
            v97 += 5;
          }

          while (v46 != v87);
        }

        else
        {
          v89 = v72 + 1;
          do
          {
            if (v73[v87])
            {
              v90 = *v88;
              v91 = *(v88 - 1);
              v92.i32[0] = _blt_float[v91 + 256];
              _Q1.n128_u32[0] = _blt_float[BYTE1(v91) + 512];
              v57 = &_blt_float[BYTE5(v91) + 512];
              v92.i32[1] = _blt_float[BYTE2(v91) + 256];
              v92.i32[2] = _blt_float[BYTE4(v91) + 256];
              v92.i32[3] = _blt_float[BYTE6(v91) + 256];
              _Q1.n128_u32[1] = _blt_float[BYTE3(v91) | 0x200];
              _Q1.n128_u32[2] = *v57;
              _Q1.n128_u32[3] = _blt_float[HIBYTE(v91) + 512];
              _Q0 = vmulq_n_f32(vaddq_f32(v92, _Q1), v83);
              _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
              v89[-1] = _Q0.n128_u64[0];
              _Q0.n128_f32[0] = v83 * (*&_blt_float[v90 + 256] + *(&_blt_float[512] + ((v90 >> 6) & 0x3FC)));
              __asm { FCVT            H0, S0 }

              v89->i16[0] = _Q0.n128_u16[0];
            }

            v88 += 8;
            ++v87;
            v89 = (v89 + 10);
          }

          while (v46 != v87);
        }
      }

      else if (v82 == 32)
      {
        v84 = 0;
        v85 = (v81 + 8);
        v86 = v72 + 1;
        if (v630.n128_f32[0] >= 1.0)
        {
          do
          {
            if (v73[v84])
            {
              _Q0.n128_u64[0] = *(v85 - 1);
              v86[-1] = _Q0.n128_u64[0];
              v86->i16[0] = *v85;
            }

            v85 += 5;
            ++v84;
            v86 = (v86 + 10);
          }

          while (v46 != v84);
        }

        else
        {
          do
          {
            if (v73[v84])
            {
              _Q0 = vmulq_n_f32(vcvtq_f32_f16(*(v85 - 4)), v83);
              _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
              v86[-1] = _Q0.n128_u64[0];
              _Q0.n128_u16[0] = *v85;
              __asm { FCVT            S0, H0 }

              _Q0.n128_f32[0] = v83 * _Q0.n128_f32[0];
              __asm { FCVT            H0, S0 }

              v86->i16[0] = _Q0.n128_u16[0];
            }

            v85 += 5;
            ++v84;
            v86 = (v86 + 10);
          }

          while (v46 != v84);
        }
      }

      else
      {
        v93 = 0;
        if (v630.n128_f32[0] >= 1.0)
        {
          v105 = v72 + 2;
          do
          {
            if (v73[v93])
            {
              v106 = *(v81 + 8 * v93);
              _S0 = _blt_float[BYTE3(v106)];
              __asm { FCVT            H0, S0 }

              *(v105 - 2) = _S0;
              _S0 = _blt_float[BYTE2(v106)];
              __asm { FCVT            H0, S0 }

              *(v105 - 1) = _S0;
              _S0 = _blt_float[BYTE1(v106)];
              __asm { FCVT            H0, S0 }

              *v105 = _S0;
              _S0 = _blt_float[v106];
              __asm { FCVT            H0, S0 }

              v105[1] = _S0;
              _S0 = _blt_float[BYTE4(v106)];
              __asm { FCVT            H0, S0 }

              v105[2] = _S0;
            }

            ++v93;
            v105 += 5;
          }

          while (v46 != v93);
        }

        else
        {
          v94 = v72 + 1;
          do
          {
            if (v73[v93])
            {
              v95 = *(v81 + 8 * v93);
              v96.i32[0] = _blt_float[BYTE3(v95)];
              v96.i32[1] = _blt_float[BYTE2(v95)];
              v96.i32[2] = _blt_float[BYTE1(v95)];
              v96.i32[3] = _blt_float[v95];
              _Q0 = vmulq_n_f32(v96, v83);
              _Q0.n128_u64[0] = vcvt_f16_f32(_Q0);
              v94[-1] = _Q0.n128_u64[0];
              _Q0.n128_f32[0] = v83 * *&_blt_float[BYTE4(v95)];
              __asm { FCVT            H0, S0 }

              v94->i16[0] = _Q0.n128_u16[0];
            }

            ++v93;
            v94 = (v94 + 10);
          }

          while (v46 != v93);
        }
      }
    }

    switch(v39)
    {
      case 0:
        v112 = v45 != 0;
        v51 = v637;
        if (v637)
        {
          v113 = v46;
          v114 = v45;
          do
          {
            v115 = *v73;
            if (*v73)
            {
              if (v45)
              {
                v115 = (*v114 * v115 + ((*v114 * v115) >> 8) + 1) >> 8;
              }

              if (v115)
              {
                if (v115 == 255)
                {
                  *v35 = 0;
                  _H0 = 0;
                }

                else
                {
                  v117 = (v115 * -0.0039216) + 1.0;
                  *v35 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v35), v117));
                  _H1 = *v32;
                  __asm { FCVT            S1, H1 }

                  _S0 = v117 * _S1;
                  __asm { FCVT            H0, S0 }
                }

                *v32 = _H0;
              }
            }

            ++v73;
            v114 += v112;
            v35 += 8;
            ++v32;
            --v113;
          }

          while (v113);
        }

        else
        {
          v533 = v46;
          v114 = v45;
          do
          {
            v534 = *v73;
            if (*v73)
            {
              if (v45)
              {
                v534 = (*v114 * v534 + ((*v114 * v534) >> 8) + 1) >> 8;
              }

              if (v534)
              {
                if (v534 == 255)
                {
                  *v35 = 0;
                }

                else
                {
                  *v35 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v35), (v534 * -0.0039216) + 1.0));
                }
              }
            }

            ++v73;
            v114 += v112;
            v35 += 8;
            --v533;
          }

          while (v533);
        }

        goto LABEL_521;
      case 1:
        v338 = *v73;
        v51 = v637;
        if (v637)
        {
          if (v45)
          {
            v339 = 0;
            v340 = v72 + 1;
            v341 = v73 + 1;
            v342 = v32 - 1;
            v283 = (v35 - 8);
            v284 = v634;
            do
            {
              if (v338)
              {
                v343 = ((v45[v339] * v338 + ((v45[v339] * v338) >> 8) + 1) >> 8);
                if (v343)
                {
                  if (v343 == 255)
                  {
                    *(v35 + 8 * v339) = v340[-1];
                    _H0 = v340->i16[0];
                  }

                  else
                  {
                    v345 = v343 * 0.0039216;
                    *(v35 + 8 * v339) = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*(v35 + 8 * v339)), 1.0 - v345), vcvtq_f32_f16(v340[-1]), v345));
                    _H2 = v340->i16[0];
                    __asm { FCVT            S2, H2 }

                    _H3 = v32[v339];
                    __asm { FCVT            S3, H3 }

                    _S0 = ((1.0 - v345) * _S3) + (_S2 * v345);
                    __asm { FCVT            H0, S0 }
                  }

                  LOWORD(v32[v339]) = _H0;
                }
              }

              v338 = v341[v339++];
              v340 = (v340 + 10);
              ++v342;
              ++v283;
            }

            while (v46 != v339);
            v45 += v339 + v628;
          }

          else
          {
            v589 = v72 + 1;
            v590 = v73 + 1;
            v342 = v32 - 1;
            v283 = (v35 - 8);
            v591 = v46;
            v284 = v634;
            do
            {
              if (v338)
              {
                if (v338 == 255)
                {
                  v283[1] = v589[-1];
                  _H0 = v589->i16[0];
                }

                else
                {
                  v593 = v338 * 0.0039216;
                  v283[1] = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(v283[1]), 1.0 - v593), vcvtq_f32_f16(v589[-1]), v593));
                  _H2 = v589->i16[0];
                  __asm { FCVT            S2, H2 }

                  _H3 = *(v342 + 1);
                  __asm { FCVT            S3, H3 }

                  _S0 = ((1.0 - v593) * _S3) + (_S2 * v593);
                  __asm { FCVT            H0, S0 }
                }

                *(v342 + 1) = _H0;
              }

              v599 = *v590++;
              v338 = v599;
              v589 = (v589 + 10);
              ++v342;
              ++v283;
              --v591;
            }

            while (v591);
            v45 = 0;
          }

          v588 = &v342[v631];
          goto LABEL_550;
        }

        v535 = v73 + 1;
        v536 = (v35 - 8);
        v537 = v46;
        if (v45)
        {
          v284 = v634;
          do
          {
            if (v338)
            {
              v538 = ((*v45 * v338 + ((*v45 * v338) >> 8) + 1) >> 8);
              if (v538)
              {
                if (v538 == 255)
                {
                  v539 = *v72;
                }

                else
                {
                  v539 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(v536[1]), 1.0 - (v538 * 0.0039216)), vcvtq_f32_f16(*v72), v538 * 0.0039216));
                }

                v536[1] = v539;
              }
            }

            v540 = *v535++;
            v338 = v540;
            v72 = (v72 + 10);
            ++v45;
            ++v536;
            --v537;
          }

          while (v537);
          v45 += v628;
        }

        else
        {
          v284 = v634;
          do
          {
            if (v338)
            {
              if (v338 == 255)
              {
                v611 = *v72;
              }

              else
              {
                v611 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(v536[1]), 1.0 - (v338 * 0.0039216)), vcvtq_f32_f16(*v72), v338 * 0.0039216));
              }

              v536[1] = v611;
            }

            v612 = *v535++;
            v338 = v612;
            v72 = (v72 + 10);
            ++v536;
            --v537;
          }

          while (v537);
          v45 = 0;
        }

        v610 = &v536[v629];
        goto LABEL_573;
      case 2:
        v279 = *v73;
        v51 = v637;
        if (v637)
        {
          if (v45)
          {
            v280 = 0;
            v281 = v73 + 1;
            v282 = v32 - 1;
            v283 = (v35 - 8);
            v284 = v634;
            while (1)
            {
              if (!v279)
              {
                goto LABEL_212;
              }

              v285 = ((v45[v280] * v279 + ((v45[v280] * v279) >> 8) + 1) >> 8);
              if (!v285)
              {
                goto LABEL_212;
              }

              if (v285 == 255)
              {
                _H0 = *v72[1].i16;
                if (_H0 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  *(v35 + 8 * v280) = *v72;
                  goto LABEL_211;
                }

                __asm { FCMP            H0, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S0, H0 }

                  *(v35 + 8 * v280) = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v72), vcvtq_f32_f16(*(v35 + 8 * v280)), 1.0 - _S0));
                  _H2 = v32[v280];
                  __asm { FCVT            S2, H2 }

                  _S0 = _S0 + (_S2 * (1.0 - _S0));
                  goto LABEL_209;
                }
              }

              else
              {
                v292 = v285 * 0.0039216;
                _H1 = v72[1].i16[0];
                __asm { FCVT            S1, H1 }

                _S1 = v292 * _S1;
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H1, #0
                }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S1, H1 }

                  *(v35 + 8 * v280) = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v72), v292))), vcvtq_f32_f16(*(v35 + 8 * v280)), 1.0 - _S1));
                  _H0 = v32[v280];
                  __asm { FCVT            S0, H0 }

                  _S0 = _S1 + (_S0 * (1.0 - _S1));
LABEL_209:
                  __asm { FCVT            H0, S0 }

LABEL_211:
                  v32[v280] = _H0;
                }
              }

LABEL_212:
              v279 = v281[v280];
              v72 = (v72 + 10);
              ++v280;
              ++v282;
              ++v283;
              if (v46 == v280)
              {
                v45 += v280 + v628;
                goto LABEL_540;
              }
            }
          }

          v571 = v73 + 1;
          v282 = v32 - 1;
          v283 = (v35 - 8);
          v572 = v46;
          v284 = v634;
          while (1)
          {
            if (v279)
            {
              if (v279 == 255)
              {
                _H0 = *v72[1].i16;
                if (_H0 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
                {
                  v283[1] = *v72;
                  goto LABEL_537;
                }

                __asm { FCMP            H0, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S0, H0 }

                  v283[1] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v72), vcvtq_f32_f16(v283[1]), 1.0 - _S0));
                  _H2 = *(v282 + 1);
                  __asm { FCVT            S2, H2 }

                  _S0 = _S0 + (_S2 * (1.0 - _S0));
                  goto LABEL_535;
                }
              }

              else
              {
                v579 = v279 * 0.0039216;
                _H1 = v72[1].i16[0];
                __asm { FCVT            S1, H1 }

                _S1 = v579 * _S1;
                __asm
                {
                  FCVT            H1, S1
                  FCMP            H1, #0
                }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S1, H1 }

                  v283[1] = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v72), v579))), vcvtq_f32_f16(v283[1]), 1.0 - _S1));
                  _H0 = *(v282 + 1);
                  __asm { FCVT            S0, H0 }

                  _S0 = _S1 + (_S0 * (1.0 - _S1));
LABEL_535:
                  __asm { FCVT            H0, S0 }

LABEL_537:
                  v282[1] = _H0;
                }
              }
            }

            v587 = *v571++;
            v279 = v587;
            v72 = (v72 + 10);
            ++v282;
            ++v283;
            if (!--v572)
            {
              v45 = 0;
LABEL_540:
              v588 = &v282[v631];
LABEL_550:
              v35 = &v283[v629 + 1];
              v32 = v588 + 1;
              goto LABEL_524;
            }
          }
        }

        v512 = v73 + 1;
        v513 = (v35 - 8);
        v514 = v46;
        if (v45)
        {
          v284 = v634;
          while (1)
          {
            if (!v279)
            {
              goto LABEL_478;
            }

            v515 = ((*v45 * v279 + ((*v45 * v279) >> 8) + 1) >> 8);
            if (!v515)
            {
              goto LABEL_478;
            }

            if (v515 == 255)
            {
              if (*v72[1].i16 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                v518 = *v72;
                goto LABEL_477;
              }

              __asm { FCMP            H0, #0 }

              if (!(_NF ^ _VF | _ZF))
              {
                __asm { FCVT            S0, H0 }

                v518 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v72), vcvtq_f32_f16(v513[1]), 1.0 - _S0));
LABEL_477:
                v513[1] = v518;
              }
            }

            else
            {
              v519 = v515 * 0.0039216;
              _H1 = v72[1].i16[0];
              __asm { FCVT            S1, H1 }

              _S1 = v519 * _S1;
              __asm
              {
                FCVT            H1, S1
                FCMP            H1, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                __asm { FCVT            S1, H1 }

                v518 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v72), v519))), vcvtq_f32_f16(v513[1]), 1.0 - _S1));
                goto LABEL_477;
              }
            }

LABEL_478:
            v525 = *v512++;
            v279 = v525;
            v72 = (v72 + 10);
            ++v45;
            ++v513;
            if (!--v514)
            {
              v45 += v628;
LABEL_563:
              v610 = &v513[v629];
LABEL_573:
              v35 = &v610[1];
              v32 += v631;
LABEL_524:
              if (!--v54)
              {
                v44 = v633;
                if (v633)
                {
LABEL_575:
                  free(v44);
                }

                goto LABEL_576;
              }

              v53 = 0;
              ++v636;
              v41 = v40[16] + v284;
              v55 = v40[17] + v635;
              if (v633)
              {
                v635 += v40[17];
                v632 = v54;
                v50 = v624;
                v44 = v633;
LABEL_577:
                v613 = v631 + v50;
                while (1)
                {
                  while (1)
                  {
                    v614 = *(v45 - 4);
                    v42 = v636;
                    v615 = v614 - v636;
                    if (v614 <= v636)
                    {
                      break;
                    }

                    v632 -= v615;
                    if (v632 < 1)
                    {
                      goto LABEL_575;
                    }

                    v41 += v40[16] * v615;
                    v635 += v40[17] * v615;
                    v35 += 8 * v619 * v615;
                    v617 = v613 * v615;
                    if (!v51)
                    {
                      v617 = 0;
                    }

                    v32 += v617;
                    v636 = v614;
                  }

                  if (v636 < *(v45 - 3) + v614)
                  {
                    break;
                  }

                  v616 = shape_enum_clip_scan(v44, v45 - 4);
                  v51 = v637;
                  if (!v616)
                  {
                    goto LABEL_575;
                  }
                }

                v33 = v624;
                v34 = v620;
                goto LABEL_24;
              }

              goto LABEL_25;
            }
          }
        }

        v284 = v634;
        while (1)
        {
          if (v279)
          {
            if (v279 == 255)
            {
              if (*v72[1].i16 >= COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
              {
                v602 = *v72;
                goto LABEL_560;
              }

              __asm { FCMP            H0, #0 }

              if (!(_NF ^ _VF | _ZF))
              {
                __asm { FCVT            S0, H0 }

                v602 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v72), vcvtq_f32_f16(v513[1]), 1.0 - _S0));
LABEL_560:
                v513[1] = v602;
              }
            }

            else
            {
              v603 = v279 * 0.0039216;
              _H1 = v72[1].i16[0];
              __asm { FCVT            S1, H1 }

              _S1 = v603 * _S1;
              __asm
              {
                FCVT            H1, S1
                FCMP            H1, #0
              }

              if (!(_NF ^ _VF | _ZF))
              {
                __asm { FCVT            S1, H1 }

                v602 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v72), v603))), vcvtq_f32_f16(v513[1]), 1.0 - _S1));
                goto LABEL_560;
              }
            }
          }

          v609 = *v512++;
          v279 = v609;
          v72 = (v72 + 10);
          ++v513;
          if (!--v514)
          {
            v45 = 0;
            goto LABEL_563;
          }
        }

      case 3:
        v311 = &v72[1];
        v312 = v46;
        v203 = v45;
        do
        {
          v313 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v313 = (*v203 * v313 + ((*v203 * v313) >> 8) + 1) >> 8;
            }

            if (v313)
            {
              if (v313 == 255)
              {
                *v35 = *(v311 - 4) * *v32;
                *(v35 + 2) = *(v311 - 3) * *v32;
                *(v35 + 4) = *(v311 - 2) * *v32;
                *(v35 + 6) = *(v311 - 1) * *v32;
                _H0 = *v311 * *v32;
              }

              else
              {
                v315 = v313 * 0.0039216;
                _H1 = *v32;
                __asm { FCVT            S1, H1 }

                v318 = v315 * _S1;
                v319 = 1.0 - v315;
                *v35 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v35), v319), vcvtq_f32_f16(*(v311 - 4)), v318));
                _H3 = *v311;
                __asm { FCVT            S3, H3 }

                _S0 = (v319 * _S1) + (_S3 * v318);
                __asm { FCVT            H0, S0 }
              }

              *v32 = _H0;
            }
          }

          ++v73;
          v203 += v45 != 0;
          v35 += 8;
          v311 += 5;
          v32 = (v32 + v52);
          --v312;
        }

        while (v312);
        goto LABEL_371;
      case 4:
        v201 = v72 + 1;
        v202 = v46;
        v203 = v45;
        do
        {
          v204 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v204 = (*v203 * v204 + ((*v203 * v204) >> 8) + 1) >> 8;
            }

            if (v204)
            {
              if (v204 == 255)
              {
                _H0 = v201[-1].i16[0];
                __asm { FCVT            S0, H0 }

                _H1 = *v32;
                __asm { FCVT            S1, H1 }

                _S0 = (1.0 - _S1) * _S0;
                __asm { FCVT            H0, S0 }

                *v35 = LOWORD(_S0);
                LOWORD(_S0) = v201[-1].i16[1];
                __asm { FCVT            S0, H0 }

                *&_S1 = *v32;
                __asm { FCVT            S1, H1 }

                _S0 = (1.0 - _S1) * _S0;
                __asm { FCVT            H0, S0 }

                *(v35 + 2) = LOWORD(_S0);
                LOWORD(_S0) = v201[-1].i16[2];
                __asm { FCVT            S0, H0 }

                *&_S1 = *v32;
                __asm { FCVT            S1, H1 }

                _S0 = (1.0 - _S1) * _S0;
                __asm { FCVT            H0, S0 }

                *(v35 + 4) = LOWORD(_S0);
                LOWORD(_S0) = v201[-1].i16[3];
                __asm { FCVT            S0, H0 }

                *&_S1 = *v32;
                __asm { FCVT            S1, H1 }

                _S0 = (1.0 - _S1) * _S0;
                __asm { FCVT            H0, S0 }

                *(v35 + 6) = LOWORD(_S0);
                LOWORD(_S0) = v201->i16[0];
                __asm { FCVT            S0, H0 }

                *&_S1 = *v32;
                __asm { FCVT            S1, H1 }

                _S0 = (1.0 - _S1) * _S0;
              }

              else
              {
                v222 = v204 * 0.0039216;
                _H1 = *v32;
                __asm { FCVT            S1, H1 }

                v225 = v222 * (1.0 - _S1);
                v226 = 1.0 - v222;
                *v35 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v35), v226), vcvtq_f32_f16(v201[-1]), v225));
                _H2 = v201->i16[0];
                __asm { FCVT            S2, H2 }

                _S0 = (v226 * _S1) + (_S2 * v225);
              }

              __asm { FCVT            H0, S0 }

              *v32 = _H0;
            }
          }

          ++v73;
          v203 += v45 != 0;
          v35 += 8;
          v201 = (v201 + 10);
          v32 = (v32 + v52);
          --v202;
        }

        while (v202);
        goto LABEL_371;
      case 5:
        v370 = v72 + 1;
        v371 = v46;
        v203 = v45;
        while (1)
        {
          v372 = *v73;
          if (*v73)
          {
            if (!v45)
            {
              goto LABEL_301;
            }

            v373 = *v203 * v372 + ((*v203 * v372) >> 8) + 1;
            if (v373 >= 0x100)
            {
              break;
            }
          }

LABEL_302:
          ++v73;
          v203 += v45 != 0;
          v35 += 8;
          v370 = (v370 + 10);
          v32 = (v32 + v52);
          if (!--v371)
          {
            goto LABEL_371;
          }
        }

        v372 = v373 >> 8;
LABEL_301:
        _H0 = *v32;
        __asm { FCVT            S0, H0 }

        v376 = v372 * 0.0039216;
        _H2 = v370->i16[0];
        __asm { FCVT            S2, H2 }

        _S2 = v376 * _S2;
        __asm
        {
          FCVT            H2, S2
          FCVT            S2, H2
        }

        *v35 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v35), 1.0 - _S2), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v370[-1]), v376))), _S0));
        _S0 = ((1.0 - _S2) * _S0) + (_S2 * _S0);
        __asm { FCVT            H0, S0 }

        *v32 = *&_S0;
        goto LABEL_302;
      case 6:
        v402 = v72 + 1;
        v403 = v46;
        v203 = v45;
        while (1)
        {
          v404 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v405 = *v203 * v404 + ((*v203 * v404) >> 8) + 1;
              if (v405 < 0x100)
              {
                goto LABEL_346;
              }

              v404 = v405 >> 8;
            }

            _H0 = *v32;
            __asm { FCVT            S0, H0 }

            v408 = 1.0 - _S0;
            if ((1.0 - _S0) >= 1.0)
            {
              v413 = v404 * 0.0039216;
              *v35 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v402[-1]), v413));
              _H1 = v402->i16[0];
              __asm { FCVT            S1, H1 }

              _S0 = v413 * _S1;
              goto LABEL_345;
            }

            if (v408 > 0.0)
            {
              v409 = (v404 * 0.0039216) * v408;
              *v35 = vcvt_f16_f32(vmlaq_n_f32(vcvtq_f32_f16(*v35), vcvtq_f32_f16(v402[-1]), v409));
              _H2 = v402->i16[0];
              __asm { FCVT            S2, H2 }

              _S0 = _S0 + (_S2 * v409);
LABEL_345:
              __asm { FCVT            H0, S0 }

              *v32 = _H0;
            }
          }

LABEL_346:
          ++v73;
          v203 += v45 != 0;
          v35 += 8;
          v402 = (v402 + 10);
          v32 = (v32 + v52);
          if (!--v403)
          {
            goto LABEL_371;
          }
        }

      case 7:
        v323 = v45 != 0;
        v51 = v637;
        if (v637)
        {
          v324 = &v72[1];
          v325 = v46;
          v114 = v45;
          do
          {
            v326 = *v73;
            if (*v73)
            {
              if (v45)
              {
                v326 = (*v114 * v326 + ((*v114 * v326) >> 8) + 1) >> 8;
              }

              if (v326)
              {
                if (v326 == 255)
                {
                  v327 = *v324;
                  *v35 = vmul_n_f16(*v35, *v324);
                  _H0 = v327 * *v32;
                }

                else
                {
                  v329 = v326 * 0.0039216;
                  _H1 = *v32;
                  __asm { FCVT            S1, H1 }

                  _H2 = *v324;
                  __asm { FCVT            S2, H2 }

                  v334 = v329 * _S2;
                  v335 = 1.0 - v329;
                  v336 = vcvtq_f32_f16(*v35);
                  *v35 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v336, v335), v336, v334));
                  _S0 = (v335 * _S1) + (_S1 * v334);
                  __asm { FCVT            H0, S0 }
                }

                *v32 = _H0;
              }
            }

            ++v73;
            v114 += v323;
            v35 += 8;
            ++v32;
            v324 += 5;
            --v325;
          }

          while (v325);
        }

        else
        {
          v526 = &v72[1];
          v527 = v46;
          v114 = v45;
          do
          {
            v528 = *v73;
            if (*v73)
            {
              if (v45)
              {
                v528 = (*v114 * v528 + ((*v114 * v528) >> 8) + 1) >> 8;
              }

              if (v528)
              {
                if (v528 == 255)
                {
                  v529 = vmul_n_f16(*v35, *v526);
                }

                else
                {
                  _H1 = *v526;
                  __asm { FCVT            S1, H1 }

                  v532 = vcvtq_f32_f16(*v35);
                  v529 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v532, 1.0 - (v528 * 0.0039216)), v532, (v528 * 0.0039216) * _S1));
                }

                *v35 = v529;
              }
            }

            ++v73;
            v114 += v323;
            v35 += 8;
            v526 += 5;
            --v527;
          }

          while (v527);
        }

        goto LABEL_521;
      case 8:
        v440 = v45 != 0;
        v51 = v637;
        if (v637)
        {
          v441 = v72 + 1;
          v442 = v46;
          v114 = v45;
          do
          {
            v443 = *v73;
            if (*v73)
            {
              if (v45)
              {
                v443 = (*v114 * v443 + ((*v114 * v443) >> 8) + 1) >> 8;
              }

              if (v443)
              {
                if (v443 == 255)
                {
                  _H0 = v441->i16[0];
                  __asm { FCVT            S0, H0 }

                  v446 = 1.0 - _S0;
                  *v35 = vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v35), v446));
                  _H1 = *v32;
                  __asm { FCVT            S1, H1 }

                  _S0 = v446 * _S1;
                }

                else
                {
                  v450 = v443 * 0.0039216;
                  _H1 = *v32;
                  __asm { FCVT            S1, H1 }

                  _H2 = v441->i16[0];
                  __asm { FCVT            S2, H2 }

                  v455 = v450 * (1.0 - _S2);
                  v456 = 1.0 - v450;
                  v457 = vcvtq_f32_f16(*v35);
                  *v35 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(v457, v456), v457, v455));
                  _S0 = (v456 * _S1) + (_S1 * v455);
                }

                __asm { FCVT            H0, S0 }

                *v32 = _H0;
              }
            }

            ++v73;
            v114 += v440;
            v35 += 8;
            ++v32;
            v441 = (v441 + 10);
            --v442;
          }

          while (v442);
        }

        else
        {
          v541 = v72 + 1;
          v542 = v46;
          v114 = v45;
          do
          {
            v543 = *v73;
            if (*v73)
            {
              if (v45)
              {
                v543 = (*v114 * v543 + ((*v114 * v543) >> 8) + 1) >> 8;
              }

              if (v543)
              {
                if (v543 == 255)
                {
                  _H0 = *v35;
                  __asm { FCVT            S0, H0 }

                  _H1 = v541->i16[0];
                  __asm { FCVT            S1, H1 }

                  v548 = 1.0 - _S1;
                  _S0 = v548 * _S0;
                  __asm { FCVT            H0, S0 }

                  *v35 = LOWORD(_S0);
                  LOWORD(_S0) = *(v35 + 2);
                  __asm { FCVT            S0, H0 }

                  _S0 = v548 * _S0;
                  __asm { FCVT            H0, S0 }

                  *(v35 + 2) = LOWORD(_S0);
                  LOWORD(_S0) = *(v35 + 4);
                  __asm { FCVT            S0, H0 }

                  _S0 = v548 * _S0;
                  __asm { FCVT            H0, S0 }

                  *(v35 + 4) = LOWORD(_S0);
                  v554 = (v35 + 6);
                  LOWORD(_S0) = *(v35 + 6);
                  __asm { FCVT            S0, H0 }

                  _S0 = v548 * _S0;
                }

                else
                {
                  v557 = v543 * 0.0039216;
                  _H1 = *v35;
                  __asm { FCVT            S1, H1 }

                  _H2 = v541->i16[0];
                  __asm { FCVT            S2, H2 }

                  v562 = v557 * (1.0 - _S2);
                  v563 = 1.0 - v557;
                  _S1 = (v563 * _S1) + (_S1 * v562);
                  __asm { FCVT            H1, S1 }

                  *v35 = LOWORD(_S1);
                  LOWORD(_S1) = *(v35 + 2);
                  __asm { FCVT            S1, H1 }

                  _S1 = (v563 * _S1) + (_S1 * v562);
                  __asm { FCVT            H1, S1 }

                  *(v35 + 2) = LOWORD(_S1);
                  LOWORD(_S1) = *(v35 + 4);
                  __asm { FCVT            S1, H1 }

                  _S1 = (v563 * _S1) + (_S1 * v562);
                  __asm { FCVT            H1, S1 }

                  *(v35 + 4) = LOWORD(_S1);
                  v554 = (v35 + 6);
                  LOWORD(_S1) = *(v35 + 6);
                  __asm { FCVT            S1, H1 }

                  _S0 = (v563 * _S1) + (_S1 * v562);
                }

                __asm { FCVT            H0, S0 }

                *v554 = _H0;
              }
            }

            ++v73;
            v114 += v440;
            v35 += 8;
            v541 = (v541 + 10);
            --v542;
          }

          while (v542);
        }

        goto LABEL_521;
      case 9:
        v246 = v72 + 1;
        v247 = v46;
        v203 = v45;
        while (1)
        {
          v248 = *v73;
          if (*v73)
          {
            if (!v45)
            {
              goto LABEL_163;
            }

            v249 = *v203 * v248 + ((*v203 * v248) >> 8) + 1;
            if (v249 >= 0x100)
            {
              break;
            }
          }

LABEL_164:
          ++v73;
          v203 += v45 != 0;
          v35 += 8;
          v246 = (v246 + 10);
          v32 = (v32 + v52);
          if (!--v247)
          {
            goto LABEL_371;
          }
        }

        v248 = v249 >> 8;
LABEL_163:
        _H0 = *v32;
        __asm { FCVT            S0, H0 }

        v252 = v248 * 0.0039216;
        _H2 = v246->i16[0];
        __asm { FCVT            S2, H2 }

        _S2 = v252 * _S2;
        __asm
        {
          FCVT            H2, S2
          FCVT            S2, H2
        }

        v257 = (1.0 - v252) + _S2;
        *v35 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v35), v257), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v246[-1]), v252))), 1.0 - _S0));
        _S0 = (v257 * _S0) + (_S2 * (1.0 - _S0));
        __asm { FCVT            H0, S0 }

        *v32 = *&_S0;
        goto LABEL_164;
      case 10:
        v428 = v72 + 1;
        v429 = v46;
        v203 = v45;
        while (1)
        {
          v430 = *v73;
          if (*v73)
          {
            if (!v45)
            {
              goto LABEL_369;
            }

            v431 = *v203 * v430 + ((*v203 * v430) >> 8) + 1;
            if (v431 >= 0x100)
            {
              break;
            }
          }

LABEL_370:
          ++v73;
          v203 += v45 != 0;
          v35 += 8;
          v428 = (v428 + 10);
          v32 = (v32 + v52);
          if (!--v429)
          {
LABEL_371:
            v45 = &v203[v628];
            v35 += 8 * v629;
            v32 += v631;
LABEL_372:
            v51 = v637;
            goto LABEL_523;
          }
        }

        v430 = v431 >> 8;
LABEL_369:
        _H0 = *v32;
        __asm { FCVT            S0, H0 }

        v434 = v430 * 0.0039216;
        _H2 = v428->i16[0];
        __asm { FCVT            S2, H2 }

        _S2 = v434 * _S2;
        __asm
        {
          FCVT            H2, S2
          FCVT            S2, H2
        }

        *v35 = vcvt_f16_f32(vmlaq_n_f32(vmulq_n_f32(vcvtq_f32_f16(*v35), 1.0 - _S2), vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v428[-1]), v434))), 1.0 - _S0));
        _S0 = ((1.0 - _S2) * _S0) + (_S2 * (1.0 - _S0));
        __asm { FCVT            H0, S0 }

        *v32 = *&_S0;
        goto LABEL_370;
      case 11:
        v153 = v45 != 0;
        v51 = v637;
        if (v637)
        {
          v154 = v72 + 2;
          v155 = v46;
          v114 = v45;
          while (1)
          {
            v156 = *v73;
            if (*v73)
            {
              if (!v45)
              {
                goto LABEL_131;
              }

              v157 = *v114 * v156 + ((*v114 * v156) >> 8) + 1;
              if (v157 >= 0x100)
              {
                break;
              }
            }

LABEL_134:
            ++v73;
            v114 += v153;
            v35 += 8;
            ++v32;
            v154 += 5;
            if (!--v155)
            {
              goto LABEL_521;
            }
          }

          v156 = v157 >> 8;
LABEL_131:
          _H0 = *(v154 - 2);
          __asm { FCVT            S0, H0 }

          v160 = v156 * 0.0039216;
          _S0 = v160 * _S0;
          __asm { FCVT            H0, S0 }

          _H2 = *(v154 - 1);
          __asm { FCVT            S2, H2 }

          _S2 = v160 * _S2;
          __asm { FCVT            H2, S2 }

          _H3 = *v154;
          __asm { FCVT            S3, H3 }

          _S3 = v160 * _S3;
          __asm { FCVT            H3, S3 }

          _H4 = v154[1];
          __asm { FCVT            S4, H4 }

          _S4 = v160 * _S4;
          __asm { FCVT            H4, S4 }

          _H5 = v154[2];
          __asm { FCVT            S5, H5 }

          _S1 = v160 * _S5;
          __asm { FCVT            H1, S1 }

          *&_S5 = *v32;
          __asm
          {
            FCVT            S5, H5
            FCVT            S1, H1
          }

          _S6 = _S5 + _S1;
          _H7 = *v35;
          __asm
          {
            FCVT            S7, H7
            FCVT            S0, H0
          }

          v183 = (_S5 - _S7) + (_S1 - _S0);
          if ((_S5 + _S1) > 1.0)
          {
            _S6 = 1.0;
          }

          _H7 = *(v35 + 2);
          __asm
          {
            FCVT            S7, H7
            FCVT            S2, H2
          }

          v187 = (_S5 - _S7) + (_S1 - _S2);
          _S0 = _S6 - v183;
          __asm { FCVT            H0, S0 }

          *v35 = LOWORD(_S0);
          *&_S0 = *v32;
          __asm { FCVT            S0, H0 }

          _H5 = *(v35 + 4);
          __asm
          {
            FCVT            S5, H5
            FCVT            S3, H3
          }

          v193 = (_S1 - _S3) + (_S0 - _S5);
          _S2 = _S6 - v187;
          __asm { FCVT            H2, S2 }

          *(v35 + 2) = LOWORD(_S2);
          *&_S2 = *v32;
          __asm { FCVT            S2, H2 }

          LOWORD(_S3) = *(v35 + 6);
          __asm { FCVT            S3, H3 }

          v197 = _S2 - _S3;
          __asm { FCVT            S3, H4 }

          _S0 = _S6 - v193;
          __asm { FCVT            H0, S0 }

          *(v35 + 4) = LOWORD(_S0);
          __asm { FCVT            H0, S6 }

          *v32 = *&_S0;
          _S0 = _S6 - ((_S1 - _S3) + v197);
          __asm { FCVT            H0, S0 }

          *(v35 + 6) = LOWORD(_S0);
          goto LABEL_134;
        }

        v502 = v72 + 1;
        v503 = v46;
        v114 = v45;
        while (1)
        {
          v504 = *v73;
          if (*v73)
          {
            if (!v45)
            {
              goto LABEL_455;
            }

            v505 = *v114 * v504 + ((*v114 * v504) >> 8) + 1;
            if (v505 >= 0x100)
            {
              break;
            }
          }

LABEL_456:
          ++v73;
          v114 += v153;
          v35 += 8;
          v502 = (v502 + 10);
          if (!--v503)
          {
LABEL_521:
            v45 = &v114[v628];
LABEL_522:
            v35 += 8 * v629;
            v32 += v631;
LABEL_523:
            v284 = v634;
            goto LABEL_524;
          }
        }

        v504 = v505 >> 8;
LABEL_455:
        v506 = v504 * 0.0039216;
        _Q1.n128_u16[0] = v502->i16[0];
        __asm { FCVT            S1, H1 }

        _Q1.n128_f32[0] = v506 * _Q1.n128_f32[0];
        __asm
        {
          FCVT            H1, S1
          FCVT            S1, H1
          FMOV            V3.4S, #1.0
        }

        _Q1 = vdupq_lane_s32(_Q1.n128_u64[0], 0);
        *v35 = vcvt_f16_f32(vsubq_f32(_Q3, vaddq_f32(vsubq_f32(_Q1, vcvtq_f32_f16(vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(v502[-1]), v506)))), vsubq_f32(_Q3, vcvtq_f32_f16(*v35)))));
        goto LABEL_456;
      case 12:
        v230 = v45 != 0;
        v51 = v637;
        if (v637)
        {
          v231 = v72 + 1;
          v232 = v46;
          v114 = v45;
          while (1)
          {
            v233 = *v73;
            if (*v73)
            {
              if (!v45)
              {
                goto LABEL_153;
              }

              v234 = *v114 * v233 + ((*v114 * v233) >> 8) + 1;
              if (v234 >= 0x100)
              {
                break;
              }
            }

LABEL_156:
            ++v73;
            v114 += v230;
            v35 += 8;
            ++v32;
            v231 = (v231 + 10);
            if (!--v232)
            {
              goto LABEL_521;
            }
          }

          v233 = v234 >> 8;
LABEL_153:
          v235 = v233 * 0.0039216;
          _H1 = v231->i16[0];
          __asm { FCVT            S1, H1 }

          _S1 = v235 * _S1;
          __asm { FCVT            H1, S1 }

          _H2 = *v32;
          __asm
          {
            FCVT            S2, H2
            FCVT            S1, H1
          }

          _S1 = _S2 + _S1;
          if (_S1 > 1.0)
          {
            _S1 = 1.0;
          }

          __asm { FCVT            H1, S1 }

          v244 = vmulq_n_f32(vcvtq_f32_f16(v231[-1]), v235);
          v245.i32[0] = *v35;
          *v32 = _H1;
          v245.i32[1] = *(v35 + 4);
          *v35 = vadd_f16(v245, vcvt_f16_f32(v244));
          goto LABEL_156;
        }

        v508 = v46;
        v509 = v45;
        while (1)
        {
          v510 = *v73;
          if (*v73)
          {
            if (!v45)
            {
              goto LABEL_463;
            }

            v511 = *v509 * v510 + ((*v509 * v510) >> 8) + 1;
            if (v511 >= 0x100)
            {
              break;
            }
          }

LABEL_464:
          ++v73;
          v72 = (v72 + 10);
          v509 += v230;
          v35 += 8;
          if (!--v508)
          {
            v45 = &v509[v628];
            goto LABEL_522;
          }
        }

        v510 = v511 >> 8;
LABEL_463:
        *v35 = vadd_f16(*v35, vcvt_f16_f32(vmulq_n_f32(vcvtq_f32_f16(*v72), v510 * 0.0039216)));
        goto LABEL_464;
      case 13:
        v632 = v54;
        v393 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v394 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v395 = *v134 * v394 + ((*v134 * v394) >> 8) + 1;
              if (v395 < 0x100)
              {
                goto LABEL_334;
              }

              v394 = v395 >> 8;
            }

            v396 = v394 * 0.0039216;
            _H0 = v393->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v396 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v399 = vcvtq_f32_f16(v393[-1]);
              v400 = vmulq_n_f32(v399, v396);
              *_Q5.f32 = vcvt_f16_f32(v400);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_330;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_330:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v400.n128_u16[0] = *(v35 + 2);
                v399.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAmultiplyPDA(_Q0.n128_u64[0], v400, v399, v67, _Q4, _Q5, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, *_Q5.f32, *&_D6);
                _Q0.n128_u64[0] = vmovn_s64(vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80));
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_334;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                *_Q5.f32 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = _Q5.i64[0];
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_334:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v393 = (v393 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 14:
        v632 = v54;
        v143 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v144 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v145 = *v134 * v144 + ((*v134 * v144) >> 8) + 1;
              if (v145 < 0x100)
              {
                goto LABEL_123;
              }

              v144 = v145 >> 8;
            }

            v146 = v144 * 0.0039216;
            _H0 = v143->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v146 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v149 = vcvtq_f32_f16(v143[-1]);
              v150 = vmulq_n_f32(v149, v146);
              v151 = vcvt_f16_f32(v150);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_119;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_119:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v150.n128_u16[0] = *(v35 + 2);
                v149.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAscreenPDA(_Q0, v150, v149, v67.n128_u64[0], *_Q4.i64, v151, _D6, *&v71, v57, v58, v59, v60, v61, v62, v63, v64, v151.i16[0], v151.i16[1], v151.i16[2], v151.i16[3], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_123;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v151 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v151;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_123:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v143 = (v143 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 15:
        v632 = v54;
        v300 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v301 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v302 = *v134 * v301 + ((*v134 * v301) >> 8) + 1;
              if (v302 < 0x100)
              {
                goto LABEL_228;
              }

              v301 = v302 >> 8;
            }

            v303 = v301 * 0.0039216;
            _H0 = v300->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v303 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v306 = vcvtq_f32_f16(v300[-1]);
              v307 = vmulq_n_f32(v306, v303);
              v308 = vcvt_f16_f32(v307);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_224;
                }
              }

              else
              {
                _S4 = 1.0;
LABEL_224:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v307.n128_u16[0] = *(v35 + 2);
                v306.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAoverlayPDA(_Q0, v307, v306, v67, _S4, *&v308, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v308.i16[0], v308.i16[1], v308.i16[2], v308.i16[3], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_228;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v308 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v308;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_228:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v300 = (v300 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 16:
        v632 = v54;
        v133 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v135 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v136 = *v134 * v135 + ((*v134 * v135) >> 8) + 1;
              if (v136 < 0x100)
              {
                goto LABEL_107;
              }

              v135 = v136 >> 8;
            }

            v137 = v135 * 0.0039216;
            _H0 = v133->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v137 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v140 = vcvtq_f32_f16(v133[-1]);
              v141 = vmulq_n_f32(v140, v137);
              *_Q5.f32 = vcvt_f16_f32(v141);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_103;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_103:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v141.n128_u16[0] = *(v35 + 2);
                v140.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAdarkenPDA(_Q0.n128_u64[0], v141, v140, v67, _Q4, _Q5, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, *_Q5.f32, *&_D6);
                _Q0.n128_u64[0] = vmovn_s64(vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80));
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_107;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                *_Q5.f32 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = _Q5.i64[0];
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_107:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v133 = (v133 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 17:
        v632 = v54;
        v351 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v352 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v353 = *v134 * v352 + ((*v134 * v352) >> 8) + 1;
              if (v353 < 0x100)
              {
                goto LABEL_278;
              }

              v352 = v353 >> 8;
            }

            v354 = v352 * 0.0039216;
            _H0 = v351->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v354 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v357 = vcvtq_f32_f16(v351[-1]);
              v358 = vmulq_n_f32(v357, v354);
              *_Q5.f32 = vcvt_f16_f32(v358);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_274;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_274:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v358.n128_u16[0] = *(v35 + 2);
                v357.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAlightenPDA(_Q0.n128_u64[0], v358, v357, v67, _Q4, _Q5, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, *_Q5.f32, *&_D6);
                _Q0.n128_u64[0] = vmovn_s64(vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80));
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_278;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                *_Q5.f32 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = _Q5.i64[0];
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_278:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v351 = (v351 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 18:
        v632 = v54;
        v417 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v418 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v419 = *v134 * v418 + ((*v134 * v418) >> 8) + 1;
              if (v419 < 0x100)
              {
                goto LABEL_362;
              }

              v418 = v419 >> 8;
            }

            v420 = v418 * 0.0039216;
            _H0 = v417->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v420 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v423 = vcvtq_f32_f16(v417[-1]);
              v424 = vmulq_n_f32(v423, v420);
              v425 = vcvt_f16_f32(v424);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_358;
                }
              }

              else
              {
                _S4 = 1.0;
LABEL_358:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v424.n128_u16[0] = *(v35 + 2);
                v423.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAcolordodgePDA(_Q0, v424, v423, v67, _S4, *&v425, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v425.i16[0], v425.i16[1], v425.i16[2], v425.i16[3], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_362;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v425 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v425;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_362:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v417 = (v417 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 19:
        v632 = v54;
        v469 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v470 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v471 = *v134 * v470 + ((*v134 * v470) >> 8) + 1;
              if (v471 < 0x100)
              {
                goto LABEL_415;
              }

              v470 = v471 >> 8;
            }

            v472 = v470 * 0.0039216;
            _H0 = v469->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v472 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v475 = vcvtq_f32_f16(v469[-1]);
              v476 = vmulq_n_f32(v475, v472);
              v477 = vcvt_f16_f32(v476);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_411;
                }
              }

              else
              {
                _S4 = 1.0;
LABEL_411:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v476.n128_u16[0] = *(v35 + 2);
                v475.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAcolorburnPDA(_Q0, v476, v475, v67, _S4, *&v477, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v477.i16[0], v477.i16[1], v477.i16[2], v477.i16[3], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_415;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v477 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v477;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_415:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v469 = (v469 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 20:
        v632 = v54;
        v360 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v361 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v362 = *v134 * v361 + ((*v134 * v361) >> 8) + 1;
              if (v362 < 0x100)
              {
                goto LABEL_294;
              }

              v361 = v362 >> 8;
            }

            v363 = v361 * 0.0039216;
            _H0 = v360->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v363 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v366 = vcvtq_f32_f16(v360[-1]);
              v367 = vmulq_n_f32(v366, v363);
              v368 = vcvt_f16_f32(v367);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_290;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_290:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v367.n128_u16[0] = *(v35 + 2);
                v366.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAsoftlightPDA(_Q0.n128_u64[0], v367, v366, v67.n128_u64[0], *_Q4.i64, v368, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v368.i32[0], v368.i16[2], v368.i16[3], *&_D6);
                _Q0.n128_u64[0] = vmovn_s64(vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80));
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_294;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v368 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v368;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_294:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v360 = (v360 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 21:
        v632 = v54;
        v382 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v383 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v384 = *v134 * v383 + ((*v134 * v383) >> 8) + 1;
              if (v384 < 0x100)
              {
                goto LABEL_318;
              }

              v383 = v384 >> 8;
            }

            v385 = v383 * 0.0039216;
            _H0 = v382->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v385 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v388 = vcvtq_f32_f16(v382[-1]);
              v389 = vmulq_n_f32(v388, v385);
              v390 = vcvt_f16_f32(v389);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_314;
                }
              }

              else
              {
                _S4 = 1.0;
LABEL_314:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v389.n128_u16[0] = *(v35 + 2);
                v388.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAhardlightPDA(_Q0, v389, v388, v67, _S4, *&v390, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v390.i16[0], v390.i16[1], v390.i16[2], v390.i16[3], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_318;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v390 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v390;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_318:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v382 = (v382 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 22:
        v632 = v54;
        v459 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v460 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v461 = *v134 * v460 + ((*v134 * v460) >> 8) + 1;
              if (v461 < 0x100)
              {
                goto LABEL_399;
              }

              v460 = v461 >> 8;
            }

            v462 = v460 * 0.0039216;
            _H0 = v459->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v462 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v465 = vcvtq_f32_f16(v459[-1]);
              v466 = vmulq_n_f32(v465, v462);
              v467 = vcvt_f16_f32(v466);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_395;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_395:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v466.n128_u16[0] = *(v35 + 2);
                v465.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAdifferencePDA(_Q0, v466, v465, v67.n128_u64[0], *_Q4.i64, v467, *&_D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v467.i16[0], v467.i16[1], v467.i16[2], v467.i16[3], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_399;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v467 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v467;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_399:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v459 = (v459 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 23:
        v632 = v54;
        v480 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v481 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v482 = *v134 * v481 + ((*v134 * v481) >> 8) + 1;
              if (v482 < 0x100)
              {
                goto LABEL_431;
              }

              v481 = v482 >> 8;
            }

            v483 = v481 * 0.0039216;
            _H0 = v480->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v483 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v486 = vcvtq_f32_f16(v480[-1]);
              v487 = vmulq_n_f32(v486, v483);
              v488 = vcvt_f16_f32(v487);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_427;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_427:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v487.n128_u16[0] = *(v35 + 2);
                v486.n128_u16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAexclusionPDA(_Q0, v487, v486, v67.n128_u64[0], *_Q4.i64, v488, _D6, *&v71, v57, v58, v59, v60, v61, v62, v63, v64, v488.i16[0], v488.i16[1], v488.i16[2], v488.i16[3], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_431;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v488 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v488;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_431:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v480 = (v480 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 24:
        v632 = v54;
        v269 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v270 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v271 = *v134 * v270 + ((*v134 * v270) >> 8) + 1;
              if (v271 < 0x100)
              {
                goto LABEL_196;
              }

              v270 = v271 >> 8;
            }

            v272 = v270 * 0.0039216;
            _H0 = v269->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v272 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v275 = vcvtq_f32_f16(v269[-1]);
              v276 = vmulq_n_f32(v275, v272);
              v277 = vcvt_f16_f32(v276);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_192;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_192:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v276.n128_u16[0] = *(v35 + 2);
                v275.i16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAhuePDA(_Q0, v276, *v275.f32, v67, *_Q4.i64, v277, *&_D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v277.i16[0], v277.i16[1], v277.i32[1], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_196;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v277 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v277;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_196:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v269 = (v269 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
            goto LABEL_432;
          }
        }

      case 25:
        v632 = v54;
        v259 = v72 + 1;
        v134 = v45;
        v51 = v637;
        while (1)
        {
          v260 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v261 = *v134 * v260 + ((*v134 * v260) >> 8) + 1;
              if (v261 < 0x100)
              {
                goto LABEL_180;
              }

              v260 = v261 >> 8;
            }

            v262 = v260 * 0.0039216;
            _H0 = v259->i16[0];
            __asm { FCVT            S0, H0 }

            _Q0.n128_f32[0] = v262 * _S0;
            __asm
            {
              FCVT            H0, S0
              FCMP            H0, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v265 = vcvtq_f32_f16(v259[-1]);
              v266 = vmulq_n_f32(v265, v262);
              v267 = vcvt_f16_f32(v266);
              if (v51)
              {
                __asm { FCMP            H1, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S4, H1 }

                  goto LABEL_176;
                }
              }

              else
              {
                _Q4.i32[0] = 1.0;
LABEL_176:
                __asm { FCVT            S6, H0 }

                _Q0.n128_u16[0] = *v35;
                v266.n128_u16[0] = *(v35 + 2);
                v265.i16[0] = *(v35 + 4);
                v67.n128_u16[0] = *(v35 + 6);
                v57 = PDAsaturationPDA(_Q0, v266, *v265.f32, v67, *_Q4.i64, v267, *&_D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v267.i16[0], v267.i16[1], v267.i32[1], *&_D6);
                _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
                _Q0.n128_u64[0] = vmovn_s64(_Q0);
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = _Q0.n128_u16[0];
                  *(v35 + 6) = _Q0.n128_u16[2];
                  goto LABEL_180;
                }

                _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
                v267 = vzip1_s32(v57, _Q0.n128_u64[0]);
                _Q0.n128_u16[0] = v58;
              }

              *v35 = v267;
              *v32 = *_Q0.n128_u16;
            }
          }

LABEL_180:
          ++v73;
          v134 += v45 != 0;
          v35 += 8;
          v259 = (v259 + 10);
          v32 = (v32 + v52);
          if (!--v46)
          {
LABEL_432:
            v45 = &v134[v628];
LABEL_433:
            v35 += 8 * v629;
            v32 += v631;
            v39 = v625;
            v46 = v626;
            v40 = v627;
            v54 = v632;
            goto LABEL_523;
          }
        }

      case 26:
        v632 = v54;
        v490 = v72 + 1;
        v491 = v46;
        v122 = v45;
        v51 = v637;
        while (1)
        {
          v492 = *v73;
          if (*v73)
          {
            if (v45)
            {
              v493 = *v122 * v492 + ((*v122 * v492) >> 8) + 1;
              if (v493 < 0x100)
              {
                goto LABEL_448;
              }

              v492 = v493 >> 8;
            }

            v494 = v492 * 0.0039216;
            _H1 = v490->i16[0];
            __asm { FCVT            S1, H1 }

            _Q1.n128_f32[0] = v494 * _S1;
            __asm
            {
              FCVT            H1, S1
              FCMP            H1, #0
            }

            if (!(_NF ^ _VF | _ZF))
            {
              v497 = vcvtq_f32_f16(v490[-1]);
              v498 = vmulq_n_f32(v497, v494);
              v498.n128_u64[0] = vcvt_f16_f32(v498);
              if (v51)
              {
                __asm { FCMP            H2, #0 }

                if (!(_NF ^ _VF | _ZF))
                {
                  __asm { FCVT            S5, H2 }

                  goto LABEL_444;
                }
              }

              else
              {
                _Q5.i32[0] = 1.0;
LABEL_444:
                __asm { FCVT            S4, H1 }

                _Q1.n128_u16[0] = v498.n128_u16[1];
                v67.n128_u16[0] = v498.n128_u16[3];
                v497.n128_u16[0] = v498.n128_u16[2];
                v57 = PDAluminosityPDA(v498, _Q1, v497, v67, _S4, *_Q5.i64, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, *v35, HIWORD(*v35), *(v35 + 4), HIWORD(*(v35 + 4)), _Q5.f32[0]);
                _Q1 = xmmword_18439CB80;
                v501 = vmovn_s64(vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80));
                v51 = v637;
                if (!v637)
                {
                  *v35 = v57;
                  *(v35 + 4) = v501.i16[0];
                  *(v35 + 6) = v501.i16[2];
                  goto LABEL_448;
                }

                _Q1.n128_u32[1] = HIDWORD(v57);
                v498.n128_u64[0] = vzip1_s32(v57, vuzp1_s16(v501, v501));
                _Q1.n128_u16[0] = v58;
              }

              *v35 = v498.n128_u64[0];
              *v32 = *_Q1.n128_u16;
            }
          }

LABEL_448:
          ++v73;
          v122 += v45 != 0;
          v35 += 8;
          v490 = (v490 + 10);
          v32 = (v32 + v52);
          if (!--v491)
          {
            goto LABEL_449;
          }
        }

      case 27:
        v632 = v54;
        v121 = v72 + 1;
        v122 = v45;
        v51 = v637;
        break;
      default:
        goto LABEL_372;
    }

    while (1)
    {
      v123 = *v73;
      if (*v73)
      {
        if (v45)
        {
          v124 = *v122 * v123 + ((*v122 * v123) >> 8) + 1;
          if (v124 < 0x100)
          {
            goto LABEL_91;
          }

          v123 = v124 >> 8;
        }

        v125 = v123 * 0.0039216;
        _H0 = v121->i16[0];
        __asm { FCVT            S0, H0 }

        _Q0.n128_f32[0] = v125 * _S0;
        __asm
        {
          FCVT            H0, S0
          FCMP            H0, #0
        }

        if (!(_NF ^ _VF | _ZF))
        {
          v128 = vcvtq_f32_f16(v121[-1]);
          v129 = vmulq_n_f32(v128, v125);
          v130 = vcvt_f16_f32(v129);
          if (v51)
          {
            __asm { FCMP            H1, #0 }

            if (!(_NF ^ _VF | _ZF))
            {
              __asm { FCVT            S4, H1 }

              goto LABEL_87;
            }
          }

          else
          {
            _S4 = 1.0;
LABEL_87:
            __asm { FCVT            S6, H0 }

            _Q0.n128_u16[0] = *v35;
            v129.n128_u16[0] = *(v35 + 2);
            v128.n128_u16[0] = *(v35 + 4);
            v67.n128_u16[0] = *(v35 + 6);
            v57 = PDAluminosityPDA(_Q0, v129, v128, v67, _S4, *&v130, _D6, v71, v57, v58, v59, v60, v61, v62, v63, v64, v130.i16[0], v130.i16[1], v130.i16[2], v130.i16[3], *&_D6);
            _Q0 = vshlq_u64(vdupq_n_s64(v57), xmmword_18439CB80);
            _Q0.n128_u64[0] = vmovn_s64(_Q0);
            v51 = v637;
            if (!v637)
            {
              *v35 = v57;
              *(v35 + 4) = _Q0.n128_u16[0];
              *(v35 + 6) = _Q0.n128_u16[2];
              goto LABEL_91;
            }

            _Q0.n128_u64[0] = vuzp1_s16(_Q0.n128_u64[0], _Q0.n128_u64[0]);
            v130 = vzip1_s32(v57, _Q0.n128_u64[0]);
            _Q0.n128_u16[0] = v58;
          }

          *v35 = v130;
          *v32 = *_Q0.n128_u16;
        }
      }

LABEL_91:
      ++v73;
      v122 += v45 != 0;
      v35 += 8;
      v121 = (v121 + 10);
      v32 = (v32 + v52);
      if (!--v46)
      {
LABEL_449:
        v45 = &v122[v628];
        goto LABEL_433;
      }
    }
  }
}