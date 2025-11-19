int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAf,unsigned int,true,true,false,true>(int *a1, int a2, const unsigned __int8 *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v31 = *(*a1 + 16);
    v32 = **a1;
    v5 = a1[15];
    v29 = *(*a1 + 36);
    v30 = *(*a1 + 32);
    v28 = a1[16];
    v6 = a1[13];
    v27 = a1[14];
    do
    {
      --v4;
      v7 = v30 - 0x8000;
      if (v6 < v30 - 0x8000)
      {
        v7 = v6;
      }

      if (v7 <= -32768)
      {
        v7 = -32768;
      }

      v8 = v7 + 0x8000;
      if (v6 <= 0x8000)
      {
        v9 = 0x8000;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 0x8000;
      if (v10 >= v30)
      {
        v11 = v30;
      }

      else
      {
        v11 = v10;
      }

      v12 = v29 - 0x8000;
      if (v5 < v29 - 0x8000)
      {
        v12 = v5;
      }

      if (v12 <= -32768)
      {
        v12 = -32768;
      }

      v13 = v12 + 0x8000;
      if (v5 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v5;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v29)
      {
        v16 = v29;
      }

      else
      {
        v16 = v15;
      }

      v17 = v32 + v31 * (v16 >> 16);
      v18 = v32 + v31 * HIWORD(v13);
      v19 = (v11 >> 12) & 0xFFFFFFF0;
      v20 = (v18 + v19);
      v33 = 0;
      v34[0] = 0;
      v21 = (v8 >> 12) & 0xFFFF0;
      CA::OGL::SW::Format::RGBAf::load_1((v34 + 4), (v17 + v19), a3);
      CA::OGL::SW::Format::RGBAf::load_1(v34, (v17 + v21), v22);
      CA::OGL::SW::Format::RGBAf::load_1((&v33 + 4), v20, v23);
      CA::OGL::SW::Format::RGBAf::load_1(&v33, (v18 + v21), v24);
      v25 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v33, HIDWORD(v33)), __PAIR64__(v34[0], HIDWORD(v34[0]))), vdupq_n_s16((v16 >> 1) & 0x7F80)), __PAIR64__(v34[0], HIDWORD(v34[0])));
      *v25.i8 = vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v11 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v25.i8, *v25.i8);
      v6 += v27;
      v5 += v28;
      *v3 = result.i32[0];
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAf,unsigned int,true,true,true,false>(uint64_t **a1, int a2, const unsigned __int8 *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = *a1;
    v35 = (*a1)[2];
    v36 = **a1;
    v6 = *(*a1 + 8);
    v7 = *(*a1 + 9);
    v8 = *(a1[3] + 3);
    v9 = *(a1 + 48);
    v10 = *(a1[2] + 3);
    v11 = *(a1 + 15);
    v12 = *(a1 + 16);
    v13 = *(a1 + 13);
    v14 = *(a1 + 14);
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v37 = 0;
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      CA::OGL::SW::Format::RGBAf::load_1(&v37, (v36 + v35 * (v33 >> 16) + ((v32 >> 12) & 0xFFFFFFF0)), a3);
      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *v3 = v37;
      v3 += 4;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAf,unsigned int,true,true,false,false>(int *a1, int a2, const unsigned __int8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = a1[15];
    v9 = a1[16];
    v12 = a1[13];
    v11 = a1[14];
    do
    {
      --v4;
      v15 = 0;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      CA::OGL::SW::Format::RGBAf::load_1(&v15, (v5 + v6 * (v14 >> 16) + ((v13 >> 12) & 0xFFFFFFF0)), a3);
      v12 += v11;
      v10 += v9;
      *v3 = v15;
      v3 += 4;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAh,unsigned int,true,true,true,true>(uint64_t **a1, int a2, const unsigned __int8 *a3)
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v53 = (*a1)[2];
    v54 = **a1;
    v47 = *a1;
    v5 = *(a1[3] + 3);
    v6 = *(a1 + 48);
    v7 = *(a1[2] + 3);
    v8 = *(a1 + 15);
    v9 = *(a1 + 13);
    v48 = *(a1 + 14);
    v49 = *(a1 + 16);
    v51 = *(*a1 + 9);
    v52 = *(*a1 + 8);
    v10 = vdup_n_s32(0x37800000u);
    v11 = vdup_n_s32(0x3F7FFFFFu);
    v12 = vdup_n_s32(0x47800000u);
    v50 = v6;
    do
    {
      v13.f32[0] = (1.0 / v7) * v9;
      v13.f32[1] = (1.0 / v7) * v8;
      v14 = vcvt_s32_f32(v13);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v26 = vmul_f32(vcvt_f32_s32(v14), vmul_f32(v10, *(v47 + 10)));
          v17 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), v11)), vmul_f32(v12, vcvt_f32_u32(*(v47 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v18 = vcvt_f32_s32(v14);
          v19 = vcvt_f32_s32(*(v47 + 8));
          v20 = vmul_f32(*(a1 + 84), v19);
          v21 = vmul_f32(*(a1 + 92), v19);
          v22 = vbsl_s8(vcgt_f32(v18, v21), v21, v18);
          v17 = vbsl_s8(vcgt_f32(v20, v22), v20, v22);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v23 = vmul_f32(*(v47 + 10), vcvt_f32_s32(v14));
          v24 = vmul_f32(v23, v23);
          v25 = vadd_f32(vdup_lane_s32(v24, 1), v24);
          *v24.i32 = fmaxf(vaddv_f32(v24), 0.00001);
          v24.i32[0] = vmul_f32(v25, vrsqrte_f32(vdup_lane_s32(v24, 0))).u32[0];
          v24.i32[1] = 0.5;
          v17 = vmul_f32(v24, vcvt_f32_u32(*(v47 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v15 = atan2f(v47[11] * v14.i32[1], v47[10] * v14.i32[0]);
          v16.i32[1] = 1056964608;
          v16.f32[0] = (v15 * -10430.0) + 32768.0;
          v17 = vmul_f32(v16, vcvt_f32_u32(*(v47 + 6)));
LABEL_12:
          v14 = vcvt_s32_f32(v17);
        }
      }

      --v4;
      v27 = v14.i32[0];
      v28 = v52 - 0x8000;
      if (v14.i32[0] < v52 - 0x8000)
      {
        v28 = v14.i32[0];
      }

      if (v28 <= -32768)
      {
        v28 = -32768;
      }

      v29 = v28 + 0x8000;
      if (v14.i32[0] <= 0x8000)
      {
        v27 = 0x8000;
      }

      v30 = v27 - 0x8000;
      if (v30 >= v52)
      {
        v31 = v52;
      }

      else
      {
        v31 = v30;
      }

      v32 = v14.i32[1];
      v33 = v51 - 0x8000;
      if (v14.i32[1] < v51 - 0x8000)
      {
        v33 = v14.i32[1];
      }

      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      v34 = v33 + 0x8000;
      if (v14.i32[1] <= 0x8000)
      {
        v32 = 0x8000;
      }

      v35 = v32 - 0x8000;
      if (v35 >= v51)
      {
        v36 = v51;
      }

      else
      {
        v36 = v35;
      }

      v37 = v54 + v53 * (v36 >> 16);
      v38 = v54 + v53 * HIWORD(v34);
      v39 = (v31 >> 13) & 0xFFFFFFF8;
      v40 = (v38 + v39);
      v55 = 0;
      v56[0] = 0;
      v41 = (v29 >> 13) & 0x7FFF8;
      CA::OGL::SW::Format::RGBAh::load_1((v56 + 4), (v37 + v39), a3);
      CA::OGL::SW::Format::RGBAh::load_1(v56, (v37 + v41), v42);
      CA::OGL::SW::Format::RGBAh::load_1((&v55 + 4), v40, v43);
      CA::OGL::SW::Format::RGBAh::load_1(&v55, (v38 + v41), v44);
      v45 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v55, HIDWORD(v55)), __PAIR64__(v56[0], HIDWORD(v56[0]))), vdupq_n_s16((v36 >> 1) & 0x7F80)), __PAIR64__(v56[0], HIDWORD(v56[0])));
      *v45.i8 = vadd_s16(*v45.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v45, v45, 8uLL), *v45.i8), vdup_n_s16((v31 >> 1) & 0x7F80)));
      v7 = v7 + v5;
      v9 += v48;
      v8 += v49;
      *v3 = vuzp1_s8(*v45.i8, *v45.i8).u32[0];
      v3 += 4;
      v6 = v50;
    }

    while (v4);
  }
}

int8x8_t CA::OGL::SW::Format::RGBAh::load_1(CA::OGL::SW::Format::RGBAh *this, unsigned int *a2, const unsigned __int8 *a3)
{
  v18 = CA::HalfFloat::to_float(*a2);
  v17 = CA::HalfFloat::to_float(*(a2 + 1));
  v19 = CA::HalfFloat::to_float(*(a2 + 2));
  v5 = CA::HalfFloat::to_float(*(a2 + 3));
  __asm { FMOV            V1.2S, #1.0 }

  v11 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v18), LODWORD(v17)), _D1), _D1, __PAIR64__(LODWORD(v18), LODWORD(v17)));
  v12 = vdup_n_s32(0x437F0000u);
  v13 = vshl_u32(vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v12, vbic_s8(v11, vcltz_f32(v11)))), 0x1000000008);
  v13.i32[0] = vorr_s8(v13, vdup_lane_s32(v13, 1)).u32[0];
  v14 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v5), LODWORD(v19)), _D1), _D1, __PAIR64__(LODWORD(v5), LODWORD(v19)));
  v15 = vcvt_u32_f32(vmla_f32(0x3F0000003F000000, v12, vbic_s8(v14, vcltz_f32(v14))));
  v13.i32[1] = 24;
  result = vorr_s8(vdup_lane_s32(vshl_u32(v15, v13), 1), v15);
  *this = result.i32[0] | v13.i32[0];
  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAh,unsigned int,true,true,false,true>(int *a1, int a2, const unsigned __int8 *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v31 = *(*a1 + 16);
    v32 = **a1;
    v5 = a1[15];
    v29 = *(*a1 + 36);
    v30 = *(*a1 + 32);
    v28 = a1[16];
    v6 = a1[13];
    v27 = a1[14];
    do
    {
      --v4;
      v7 = v30 - 0x8000;
      if (v6 < v30 - 0x8000)
      {
        v7 = v6;
      }

      if (v7 <= -32768)
      {
        v7 = -32768;
      }

      v8 = v7 + 0x8000;
      if (v6 <= 0x8000)
      {
        v9 = 0x8000;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 0x8000;
      if (v10 >= v30)
      {
        v11 = v30;
      }

      else
      {
        v11 = v10;
      }

      v12 = v29 - 0x8000;
      if (v5 < v29 - 0x8000)
      {
        v12 = v5;
      }

      if (v12 <= -32768)
      {
        v12 = -32768;
      }

      v13 = v12 + 0x8000;
      if (v5 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v5;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v29)
      {
        v16 = v29;
      }

      else
      {
        v16 = v15;
      }

      v17 = v32 + v31 * (v16 >> 16);
      v18 = v32 + v31 * HIWORD(v13);
      v19 = (v11 >> 13) & 0xFFFFFFF8;
      v20 = (v18 + v19);
      v33 = 0;
      v34[0] = 0;
      v21 = (v8 >> 13) & 0x7FFF8;
      CA::OGL::SW::Format::RGBAh::load_1((v34 + 4), (v17 + v19), a3);
      CA::OGL::SW::Format::RGBAh::load_1(v34, (v17 + v21), v22);
      CA::OGL::SW::Format::RGBAh::load_1((&v33 + 4), v20, v23);
      CA::OGL::SW::Format::RGBAh::load_1(&v33, (v18 + v21), v24);
      v25 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v33, HIDWORD(v33)), __PAIR64__(v34[0], HIDWORD(v34[0]))), vdupq_n_s16((v16 >> 1) & 0x7F80)), __PAIR64__(v34[0], HIDWORD(v34[0])));
      *v25.i8 = vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v11 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v25.i8, *v25.i8);
      v6 += v27;
      v5 += v28;
      *v3 = result.i32[0];
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAh,unsigned int,true,true,true,false>(uint64_t **a1, int a2, const unsigned __int8 *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = *a1;
    v35 = (*a1)[2];
    v36 = **a1;
    v6 = *(*a1 + 8);
    v7 = *(*a1 + 9);
    v8 = *(a1[3] + 3);
    v9 = *(a1 + 48);
    v10 = *(a1[2] + 3);
    v11 = *(a1 + 15);
    v12 = *(a1 + 16);
    v13 = *(a1 + 13);
    v14 = *(a1 + 14);
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v37 = 0;
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(a1 + 84), v24);
          v26 = vmul_f32(*(a1 + 92), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      CA::OGL::SW::Format::RGBAh::load_1(&v37, (v36 + v35 * (v33 >> 16) + ((v32 >> 13) & 0xFFFFFFF8)), a3);
      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *v3 = v37;
      v3 += 4;
    }

    while (v4);
  }
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBAh,unsigned int,true,true,false,false>(int *a1, int a2, const unsigned __int8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = **a1;
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = a1[15];
    v9 = a1[16];
    v12 = a1[13];
    v11 = a1[14];
    do
    {
      --v4;
      v15 = 0;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      CA::OGL::SW::Format::RGBAh::load_1(&v15, (v5 + v6 * (v14 >> 16) + ((v13 >> 13) & 0xFFFFFFF8)), a3);
      v12 += v11;
      v10 += v9;
      *v3 = v15;
      v3 += 4;
    }

    while (v4);
  }
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v56 = v8;
    v57 = v11;
    v55 = v15;
    v54 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v55;
          v8 = v56;
          v13 = v25;
          v11 = v57;
          v7 = v24;
          result = v54;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      if (v41 >= v8)
      {
        v41 = v8;
      }

      v42 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = (v40 >> 14) & 0x3FFFC;
      v50.i32[0] = *(v46 + v48);
      v50.i32[1] = *(v46 + v49);
      v51.i32[0] = *(v47 + v48);
      v51.i32[1] = *(v47 + v49);
      v52 = *&vshr_n_u32(vrev32_s8(v50), 8uLL) | 0xFF000000FF000000;
      v53 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vshr_n_u32(vrev32_s8(v51), 8uLL) | 0xFF000000FF000000), v52), vdupq_n_s16((v45 >> 1) & 0x7F80)), v52);
      *v53.i8 = vadd_s16(*v53.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v53, v53, 8uLL), *v53.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v12 = -32768;
      }

      else
      {
        v12 = v11;
      }

      if (v10 <= 0x8000)
      {
        v13 = 0x8000;
      }

      else
      {
        v13 = v10;
      }

      v14 = v13 - 0x8000;
      if (v14 >= v5)
      {
        v14 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v15 = v6 - 0x8000;
      }

      else
      {
        v15 = v8;
      }

      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      if (v8 <= 0x8000)
      {
        v16 = 0x8000;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16 - 0x8000;
      v18 = v15 + 0x8000;
      if (v17 >= v6)
      {
        v17 = v6;
      }

      v19 = v3 + v4 * (v17 >> 16);
      v20 = v3 + v4 * HIWORD(v18);
      v21 = (v14 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v22 = ((v12 + 0x8000) >> 14) & 0x3FFFC;
      v23.i32[0] = *(v19 + v21);
      v24.i32[0] = *(v20 + v21);
      v23.i32[1] = *(v19 + v22);
      v24.i32[1] = *(v20 + v22);
      v25 = *&vshr_n_u32(vrev32_s8(v23), 8uLL) | 0xFF000000FF000000;
      v26 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vshr_n_u32(vrev32_s8(v24), 8uLL) | 0xFF000000FF000000), v25), vdupq_n_s16((v17 >> 1) & 0x7F80)), v25);
      *v26.i8 = vadd_s16(*v26.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v14 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v26.i8, *v26.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = result[15];
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v16 = v7 - 0x8000;
      }

      else
      {
        v16 = v6;
      }

      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      v17 = v16 + 0x8000;
      if (v6 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v6;
      }

      v19 = v18 - 0x8000;
      if (v19 >= v7)
      {
        v19 = v7;
      }

      result = ((v19 >> 14) & 0xFFFFFFFFFFFFFFFCLL);
      v20 = (v17 >> 14) & 0x3FFFC;
      v21.i32[0] = *(result + v14);
      v21.i32[1] = *(v14 + v20);
      v22.i32[0] = *(result + v15);
      v22.i32[1] = *(v15 + v20);
      v23 = *&vshr_n_u32(vrev32_s8(v21), 8uLL) | 0xFF000000FF000000;
      v24 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vshr_n_u32(vrev32_s8(v22), 8uLL) | 0xFF000000FF000000), v23), a4, 0), v23);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v24.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v24, v24, 8uLL), *v24.i8), vdup_n_s16((v19 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = result[16];
    v7 = result[13];
    v6 = result[14];
    v8 = result[15] - 0x8000;
    do
    {
      v9 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v10 = v3 + v4 * (v8 >> 16);
      v11 = vshr_n_s32(v9, 0xEuLL);
      v12 = v3 + v4 * ((v8 + 0x10000) >> 16);
      v13 = v11.i32[0] & 0xFFFFFFFC;
      result = (v10 + (v11.i32[1] & 0xFFFFFFFC));
      v14 = (v12 + (v11.i32[1] & 0xFFFFFFFC));
      v11.i32[0] = *(v10 + (v11.i32[0] & 0xFFFFFFFC));
      v11.i32[1] = *result;
      v15.i32[0] = *(v12 + v13);
      v15.i32[1] = *v14;
      v16 = *&vshr_n_u32(vrev32_s8(v11), 8uLL) | 0xFF000000FF000000;
      v17 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vshr_n_u32(vrev32_s8(v15), 8uLL) | 0xFF000000FF000000), v16), vdupq_n_s16((v8 >> 1) & 0x7F80)), v16);
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v17.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v17, v17, 8uLL), *v17.i8), vdup_n_s16((v9.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v14 = vshr_n_s32(v13, 0xEuLL);
      v15 = v14.i32[0] & 0xFFFFFFFC;
      v16 = v14.i32[1] & 0xFFFFFFFC;
      v14.i32[0] = *(v11 + (v14.i32[0] & 0xFFFFFFFC));
      v14.i32[1] = *(v11 + (v14.i32[1] & 0xFFFFFFFC));
      v17.i32[0] = *(v12 + v15);
      v17.i32[1] = *(v12 + v16);
      v18 = *&vshr_n_u32(vrev32_s8(v14), 8uLL) | 0xFF000000FF000000;
      v19 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vshr_n_u32(vrev32_s8(v17), 8uLL) | 0xFF000000FF000000), v18), a4, 0), v18);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v19.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v19, v19, 8uLL), *v19.i8), vdup_n_s16((v13.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (bswap32(*(v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL))) >> 8) | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = (bswap32(*(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL))) >> 8) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v4 += v3;
      *a3++ = (bswap32(*(v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL))) >> 8) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = bswap32(*(v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      v8 += v7;
      v6 += v5;
      *a3++ = (v9 >> 8) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBX8,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = bswap32(*(v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      v4 += v3;
      *a3++ = (v6 >> 8) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v56 = v8;
    v57 = v11;
    v55 = v15;
    v54 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v55;
          v8 = v56;
          v13 = v25;
          v11 = v57;
          v7 = v24;
          result = v54;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      if (v41 >= v8)
      {
        v41 = v8;
      }

      v42 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      HIDWORD(v49) = bswap32(*(v46 + v47));
      LODWORD(v49) = HIDWORD(v49);
      v48 = v49 >> 8;
      v50 = (v40 >> 14) & 0x3FFFC;
      HIDWORD(v49) = bswap32(*(v46 + v50));
      LODWORD(v49) = HIDWORD(v49);
      LODWORD(v46) = v49 >> 8;
      v51 = v6 + v7 * HIWORD(v44);
      HIDWORD(v49) = bswap32(*(v51 + v47));
      LODWORD(v49) = HIDWORD(v49);
      LODWORD(v47) = v49 >> 8;
      HIDWORD(v49) = bswap32(*(v51 + v50));
      LODWORD(v49) = HIDWORD(v49);
      v52.i32[0] = v47;
      v52.i32[1] = v49 >> 8;
      v53 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v52, __PAIR64__(v46, v48)), vdupq_n_s16((v45 >> 1) & 0x7F80)), __PAIR64__(v46, v48));
      *v53.i8 = vadd_s16(*v53.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v53, v53, 8uLL), *v53.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v11 = -32768;
      }

      v12 = v11 + 0x8000;
      if (v10 <= 0x8000)
      {
        v13 = 0x8000;
      }

      else
      {
        v13 = v10;
      }

      v14 = v13 - 0x8000;
      if (v14 >= v5)
      {
        v14 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v15 = v6 - 0x8000;
      }

      else
      {
        v15 = v8;
      }

      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      v16 = v15 + 0x8000;
      if (v8 <= 0x8000)
      {
        v17 = 0x8000;
      }

      else
      {
        v17 = v8;
      }

      v18 = v17 - 0x8000;
      if (v18 >= v6)
      {
        v18 = v6;
      }

      v19 = v3 + v4 * (v18 >> 16);
      v20 = v3 + v4 * HIWORD(v16);
      v21 = (v14 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v22 = (v12 >> 14) & 0x3FFFC;
      v23 = bswap32(*(v19 + v21));
      HIDWORD(v24) = bswap32(*(v20 + v21));
      LODWORD(v24) = HIDWORD(v24);
      LODWORD(v21) = v24 >> 8;
      HIDWORD(v24) = v23;
      LODWORD(v24) = v23;
      v25 = v24 >> 8;
      LODWORD(v19) = bswap32(*(v19 + v22));
      LODWORD(v22) = bswap32(*(v20 + v22));
      HIDWORD(v24) = v19;
      LODWORD(v24) = v19;
      LODWORD(v20) = v24 >> 8;
      HIDWORD(v24) = v22;
      LODWORD(v24) = v22;
      v26.i32[0] = v21;
      v26.i32[1] = v24 >> 8;
      v27 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v26, __PAIR64__(v20, v25)), vdupq_n_s16((v18 >> 1) & 0x7F80)), __PAIR64__(v20, v25));
      *v27.i8 = vadd_s16(*v27.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v27, v27, 8uLL), *v27.i8), vdup_n_s16((v14 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v27.i8, *v27.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,false,true,false,true>(unint64_t result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = *(result + 56);
    v5 = *(result + 60);
    v6 = *(result + 52);
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = *(result + 60);
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v16 = v7 - 0x8000;
      }

      else
      {
        v16 = v6;
      }

      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      v17 = v16 + 0x8000;
      if (v6 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v6;
      }

      v19 = v18 - 0x8000;
      if (v19 >= v7)
      {
        v19 = v7;
      }

      v20 = (v19 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v21 = (v17 >> 14) & 0x3FFFC;
      HIDWORD(v23) = bswap32(*(v14 + v21));
      LODWORD(v23) = HIDWORD(v23);
      v22 = v23 >> 8;
      HIDWORD(v23) = bswap32(*(v14 + v20));
      LODWORD(v23) = HIDWORD(v23);
      v24 = v23 >> 8;
      HIDWORD(v23) = bswap32(*(v15 + v20));
      LODWORD(v23) = HIDWORD(v23);
      result = (v23 >> 8);
      HIDWORD(v23) = bswap32(*(v15 + v21));
      LODWORD(v23) = HIDWORD(v23);
      v25.i32[0] = result;
      v25.i32[1] = v23 >> 8;
      v26 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v25, __PAIR64__(v22, v24)), a4, 0), __PAIR64__(v22, v24));
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v26.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v19 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = result[16];
    v7 = result[13];
    v6 = result[14];
    v8 = result[15] - 0x8000;
    do
    {
      v9 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v10 = v3 + v4 * (v8 >> 16);
      v11 = vshr_n_s32(v9, 0xEuLL);
      v12 = v3 + v4 * ((v8 + 0x10000) >> 16);
      HIDWORD(v13) = bswap32(*(v10 + (v11.i32[0] & 0xFFFFFFFC)));
      LODWORD(v13) = HIDWORD(v13);
      result = (v13 >> 8);
      HIDWORD(v13) = bswap32(*(v12 + (v11.i32[0] & 0xFFFFFFFC)));
      LODWORD(v13) = HIDWORD(v13);
      v14 = v13 >> 8;
      HIDWORD(v13) = bswap32(*(v10 + (v11.i32[1] & 0xFFFFFFFC)));
      LODWORD(v13) = HIDWORD(v13);
      LODWORD(v10) = v13 >> 8;
      HIDWORD(v13) = bswap32(*(v12 + (v11.i32[1] & 0xFFFFFFFC)));
      LODWORD(v13) = HIDWORD(v13);
      v15.i32[0] = v14;
      v15.i32[1] = v13 >> 8;
      v16 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v15, __PAIR64__(v10, result)), vdupq_n_s16((v8 >> 1) & 0x7F80)), __PAIR64__(v10, result));
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v16.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v16, v16, 8uLL), *v16.i8), vdup_n_s16((v9.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v14 = vshr_n_s32(v13, 0xEuLL);
      HIDWORD(v16) = bswap32(*(v11 + (v14.i32[0] & 0xFFFFFFFC)));
      LODWORD(v16) = HIDWORD(v16);
      v15 = v16 >> 8;
      HIDWORD(v16) = bswap32(*(v12 + (v14.i32[0] & 0xFFFFFFFC)));
      LODWORD(v16) = HIDWORD(v16);
      v17 = v16 >> 8;
      HIDWORD(v16) = bswap32(*(v11 + (v14.i32[1] & 0xFFFFFFFC)));
      LODWORD(v16) = HIDWORD(v16);
      v18 = v16 >> 8;
      HIDWORD(v16) = bswap32(*(v12 + (v14.i32[1] & 0xFFFFFFFC)));
      LODWORD(v16) = HIDWORD(v16);
      v19.i32[0] = v17;
      v19.i32[1] = v16 >> 8;
      v20 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v19, __PAIR64__(v18, v15)), a4, 0), __PAIR64__(v18, v15));
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v20.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v20, v20, 8uLL), *v20.i8), vdup_n_s16((v13.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v40 = v12;
    v39 = v8;
    v38 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v38;
          v12 = v40;
          v8 = v39;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      HIDWORD(v37) = bswap32(*(v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      LODWORD(v37) = HIDWORD(v37);
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = v37 >> 8;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,true,true,false,false>(int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      HIDWORD(v13) = bswap32(*(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      LODWORD(v13) = HIDWORD(v13);
      v10 += v9;
      v8 += v7;
      *a3++ = v13 >> 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,false,true,false,false>(_DWORD *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      HIDWORD(v9) = bswap32(*(v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      LODWORD(v9) = HIDWORD(v9);
      v4 += v3;
      *a3++ = v9 >> 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,true,false,false,false>(_DWORD *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      HIDWORD(v9) = bswap32(*(v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      LODWORD(v9) = HIDWORD(v9);
      v8 += v7;
      v6 += v5;
      *a3++ = v9 >> 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGBA8,unsigned int,false,false,false,false>(uint64_t result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      HIDWORD(v6) = bswap32(*(v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      LODWORD(v6) = HIDWORD(v6);
      v4 += v3;
      *a3++ = v6 >> 8;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x10101u);
    v20 = vdup_n_s32(0x37800000u);
    v21 = vdup_n_s32(0x3F7FFFFFu);
    v22 = vdup_n_s32(0x47800000u);
    v52 = v8;
    v53 = v11;
    v51 = v15;
    v50 = result;
    do
    {
      *v23.i32 = (1.0 / v12) * v16;
      *&v23.i32[1] = (1.0 / v12) * v14;
      v24 = vcvt_s32_f32(v23);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v24), vmul_f32(v20, *(v5 + 10)));
          v23 = *(result + 84);
          v29 = vmul_f32(vmla_f32(*(result + 92), v23, vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v21)), vmul_f32(v22, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v30 = vcvt_f32_s32(v24);
          v31 = vcvt_f32_s32(*(v5 + 8));
          v23 = vmul_f32(*(result + 84), v31);
          v32 = vmul_f32(*(result + 92), v31);
          v33 = vbsl_s8(vcgt_f32(v30, v32), v32, v30);
          v29 = vbsl_s8(vcgt_f32(v23, v33), v23, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v24));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v23 = vcvt_f32_u32(*(v5 + 6));
          v35.i32[1] = 0.5;
          v29 = vmul_f32(v35, v23);
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v25 = v7;
          v26 = v13;
          v27 = atan2f(v5[11] * v24.i32[1], v5[10] * v24.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v51;
          v8 = v52;
          v13 = v26;
          v11 = v53;
          v7 = v25;
          result = v50;
          v23 = vcvt_f32_u32(*(v5 + 6));
          v28.i32[1] = 1056964608;
          v28.f32[0] = (v27 * -10430.0) + 32768.0;
          v29 = vmul_f32(v28, v23);
LABEL_12:
          v24 = vcvt_s32_f32(v29);
        }
      }

      v38 = v24.i32[0];
      if (v24.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v24.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = (v39 + 0x8000);
      if (v24.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      if (v41 >= v8)
      {
        v41 = v8;
      }

      v42 = v24.i32[1];
      if (v24.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v24.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v24.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v24.i8[0] = *(v46 + (v41 >> 16));
      v24.i8[4] = *(v46 + (v40 >> 16));
      v23.i8[0] = *(v47 + (v41 >> 16));
      v23.i8[4] = *(v47 + (v40 >> 16));
      v48 = *&vmul_s32(vand_s8(v24, 0xFF000000FFLL), v19) | 0xFF000000FF000000;
      v49 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vmul_s32(vand_s8(v23, 0xFF000000FFLL), v19) | 0xFF000000FF000000), v48), vdupq_n_s16((v45 >> 1) & 0x7F80)), v48);
      *v49.i8 = vadd_s16(*v49.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v49, v49, 8uLL), *v49.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v49.i8, *v49.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,true,true,false,true>(uint64_t result, int a2, _DWORD *a3, double a4, double a5, int8x8_t a6, int8x8_t a7)
{
  if (a2)
  {
    v7 = **result;
    v8 = *(*result + 16);
    v9 = *(*result + 32);
    v10 = *(*result + 36);
    v12 = *(result + 60);
    v11 = *(result + 64);
    v14 = *(result + 52);
    v13 = *(result + 56);
    result = 4294934528;
    v15 = vdup_n_s32(0x10101u);
    do
    {
      if (v14 >= v9 - 0x8000)
      {
        v16 = v9 - 0x8000;
      }

      else
      {
        v16 = v14;
      }

      if (v16 <= -32768)
      {
        v17 = -32768;
      }

      else
      {
        v17 = v16;
      }

      if (v14 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v14;
      }

      v19 = v18 - 0x8000;
      if (v19 >= v9)
      {
        v19 = v9;
      }

      v20 = (v17 + 0x8000);
      if (v12 >= v10 - 0x8000)
      {
        v21 = v10 - 0x8000;
      }

      else
      {
        v21 = v12;
      }

      if (v21 <= -32768)
      {
        v21 = -32768;
      }

      if (v12 <= 0x8000)
      {
        v22 = 0x8000;
      }

      else
      {
        v22 = v12;
      }

      v23 = v21 + 0x8000;
      v24 = v22 - 0x8000;
      if (v24 >= v10)
      {
        v24 = v10;
      }

      v25 = v7 + v8 * (v24 >> 16);
      v26 = v7 + v8 * HIWORD(v23);
      a6.i8[0] = *(v25 + (v19 >> 16));
      a7.i8[0] = *(v26 + (v19 >> 16));
      a6.i8[4] = *(v25 + (v20 >> 16));
      a7.i8[4] = *(v26 + (v20 >> 16));
      v27 = *&vmul_s32(vand_s8(a6, 0xFF000000FFLL), v15) | 0xFF000000FF000000;
      v28 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vmul_s32(vand_s8(a7, 0xFF000000FFLL), v15) | 0xFF000000FF000000), v27), vdupq_n_s16((v24 >> 1) & 0x7F80)), v27);
      a7 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v28, v28, 8uLL), *v28.i8), vdup_n_s16((v19 >> 1) & 0x7F80));
      a6 = vuzp1_s8(vadd_s16(*v28.i8, a7), 0xFF000000FFLL);
      v14 += v13;
      v12 += v11;
      *a3++ = a6.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, double a5, double a6, int8x8_t a7, int8x8_t a8)
{
  if (a2)
  {
    v8 = result[14];
    v9 = result[15];
    v10 = result[13];
    v11 = *(*result + 32);
    v12 = *(*result + 36);
    v13 = *(*result + 16);
    v14 = **result;
    if (v9 >= v12 - 0x8000)
    {
      v15 = v12 - 0x8000;
    }

    else
    {
      v15 = result[15];
    }

    if (v15 <= -32768)
    {
      v15 = -32768;
    }

    if (v9 <= 0x8000)
    {
      v9 = 0x8000;
    }

    v16 = v9 - 0x8000;
    if (v16 >= v12)
    {
      v17 = *(*result + 36);
    }

    else
    {
      v17 = v16;
    }

    v18 = v14 + v13 * (v17 >> 16);
    v19 = v14 + v13 * ((v15 + 0x8000) >> 16);
    a4.i32[0] = (v17 >> 1) & 0x7F80;
    v20 = vdup_n_s32(0x10101u);
    do
    {
      if (v10 >= v11 - 0x8000)
      {
        v21 = v11 - 0x8000;
      }

      else
      {
        v21 = v10;
      }

      if (v21 <= -32768)
      {
        v21 = -32768;
      }

      if (v10 <= 0x8000)
      {
        v22 = 0x8000;
      }

      else
      {
        v22 = v10;
      }

      v23 = v22 - 0x8000;
      if (v23 >= v11)
      {
        v23 = v11;
      }

      v24 = (v21 + 0x8000);
      result = (v19 + (v23 >> 16));
      a7.i8[0] = *(v18 + (v23 >> 16));
      a7.i8[4] = *(v18 + (v24 >> 16));
      a8.i8[0] = *result;
      a8.i8[4] = *(v19 + (v24 >> 16));
      v25 = *&vmul_s32(vand_s8(a7, 0xFF000000FFLL), v20) | 0xFF000000FF000000;
      v26 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vmul_s32(vand_s8(a8, 0xFF000000FFLL), v20) | 0xFF000000FF000000), v25), a4, 0), v25);
      a8 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v23 >> 1) & 0x7F80));
      a7 = vuzp1_s8(vadd_s16(*v26.i8, a8), a4);
      v10 += v8;
      *a3++ = a7.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3, double a4, double a5, double a6, double a7, double a8, int8x8_t a9)
{
  if (a2)
  {
    v9 = **result;
    v10 = *(*result + 16);
    v11 = result[16];
    v13 = result[13];
    v12 = result[14];
    v14 = result[15] - 0x8000;
    v15 = vdup_n_s32(0x10101u);
    do
    {
      v16 = vadd_s32(vdup_n_s32(v13), 0x8000FFFF8000);
      v17 = v9 + v10 * (v14 >> 16);
      v18 = v9 + v10 * ((v14 + 0x10000) >> 16);
      v19 = vshr_n_u32(v16, 0x10uLL);
      result = (v17 + v19.i16[0]);
      v20 = (v18 + v19.i16[0]);
      v19.i8[0] = *result;
      v21 = (v18 + v19.i16[2]);
      v19.i8[4] = *(v17 + v19.i16[2]);
      a9.i8[0] = *v20;
      a9.i8[4] = *v21;
      v22 = *&vmul_s32(vand_s8(v19, 0xFF000000FFLL), v15) | 0xFF000000FF000000;
      v23 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vmul_s32(vand_s8(a9, 0xFF000000FFLL), v15) | 0xFF000000FF000000), v22), vdupq_n_s16((v14 >> 1) & 0x7F80)), v22);
      a9 = vdup_n_s16((v16.u16[0] >> 1) & 0x7F80);
      v13 += v12;
      *a3++ = vuzp1_s8(vadd_s16(*v23.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v23, v23, 8uLL), *v23.i8), a9)), 0x8000FFFF8000).u32[0];
      v14 += v11;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, double a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  if (a2)
  {
    v10 = result[14];
    v11 = result[15];
    v12 = result[13];
    v13 = *(*result + 16);
    v14 = **result;
    v15 = v11 + 0x8000;
    v16 = v11 - 0x8000;
    v17 = v14 + v13 * ((v11 - 0x8000) >> 16);
    v18 = v14 + v13 * (v15 >> 16);
    a4.i32[0] = (v16 >> 1) & 0x7F80;
    v19 = vdup_n_s32(0x10101u);
    do
    {
      v20 = vadd_s32(vdup_n_s32(v12), 0x8000FFFF8000);
      v21 = vshr_n_u32(v20, 0x10uLL);
      v22 = v21.i16[2];
      v23 = (v18 + v21.i16[0]);
      v21.i8[0] = *(v17 + v21.i16[0]);
      v21.i8[4] = *(v17 + v21.i16[2]);
      a10.i8[0] = *v23;
      a10.i8[4] = *(v18 + v22);
      v24 = *&vmul_s32(vand_s8(v21, 0xFF000000FFLL), v19) | 0xFF000000FF000000;
      v25 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vmul_s32(vand_s8(a10, 0xFF000000FFLL), v19) | 0xFF000000FF000000), v24), a4, 0), v24);
      a10 = vdup_n_s16((v20.u16[0] >> 1) & 0x7F80);
      v12 += v10;
      *a3++ = vuzp1_s8(vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), a10)), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = (65793 * *(v7 + v8 * (v36 >> 16) + (v35 >> 16))) | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      result = (v3 + v4 * (v12 >> 16));
      v10 += v9;
      v8 += v7;
      *a3++ = (65793 * *(result + (v11 >> 16))) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v4 += v3;
      *a3++ = (65793 * *(v7 + (v8 >> 16))) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,true,false,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = (65793 * *(v3 + v4 * (v6 >> 16) + (v8 >> 16))) | 0xFF000000;
      v8 += v7;
      v6 += v5;
      *a3++ = v9;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::L8,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = (65793 * *(v5 + (v4 >> 16))) | 0xFF000000;
      v4 += v3;
      *a3++ = v6;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3, double a4, double a5, double a6)
{
  if (a2)
  {
    v7 = a2;
    v8 = *result;
    v9 = **result;
    v10 = (*result)[2];
    v11 = *(*result + 8);
    v12 = *(*result + 9);
    v13 = *(result[3] + 3);
    v14 = *(result + 48);
    v15 = *(result[2] + 3);
    v17 = *(result + 15);
    v16 = *(result + 16);
    v19 = *(result + 13);
    v18 = *(result + 14);
    v20 = v11 - 0x8000;
    v21 = v12 - 0x8000;
    v22 = vdup_n_s32(0x37800000u);
    v23 = vdup_n_s32(0x3F7FFFFFu);
    v24 = vdup_n_s32(0x47800000u);
    v56 = v11;
    v57 = v14;
    v55 = v18;
    v54 = result;
    do
    {
      *&a6 = v17;
      v25.f32[0] = (1.0 / v15) * v19;
      v25.f32[1] = (1.0 / v15) * v17;
      v26 = vcvt_s32_f32(v25);
      if (v14 > 2)
      {
        if (v14 == 3)
        {
          v39 = vmul_f32(vcvt_f32_s32(v26), vmul_f32(v22, *(v8 + 10)));
          a6 = COERCE_DOUBLE(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v39, vrndm_f32(v39)), v23)));
          v30 = vmul_f32(*&a6, vmul_f32(v24, vcvt_f32_u32(*(v8 + 6))));
          goto LABEL_12;
        }

        if (v14 == 5)
        {
          v31 = vcvt_f32_s32(v26);
          v32 = vcvt_f32_s32(*(v8 + 8));
          v33 = vmul_f32(*(result + 84), v32);
          v34 = vmul_f32(*(result + 92), v32);
          v35 = vbsl_s8(vcgt_f32(v31, v34), v34, v31);
          a6 = COERCE_DOUBLE(vcgt_f32(v33, v35));
          v30 = vbsl_s8(*&a6, v33, v35);
          goto LABEL_12;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v36 = vmul_f32(*(v8 + 10), vcvt_f32_s32(v26));
          v37 = vmul_f32(v36, v36);
          v38 = vadd_f32(vdup_lane_s32(v37, 1), v37);
          *v37.i32 = fmaxf(vaddv_f32(v37), 0.00001);
          v37.i32[0] = vmul_f32(v38, vrsqrte_f32(vdup_lane_s32(v37, 0))).u32[0];
          LODWORD(a6) = 0.5;
          v37.i32[1] = 0.5;
          v30 = vmul_f32(v37, vcvt_f32_u32(*(v8 + 6)));
          goto LABEL_12;
        }

        if (v14 == 2)
        {
          v27 = v10;
          v28 = v16;
          v29 = atan2f(v8[11] * v26.i32[1], v8[10] * v26.i32[0]);
          v21 = v12 - 0x8000;
          v18 = v55;
          v11 = v56;
          v16 = v28;
          v14 = v57;
          v10 = v27;
          result = v54;
          HIDWORD(a6) = 1056964608;
          *&a6 = (v29 * -10430.0) + 32768.0;
          v30 = vmul_f32(*&a6, vcvt_f32_u32(*(v8 + 6)));
LABEL_12:
          v26 = vcvt_s32_f32(v30);
        }
      }

      v40 = v26.i32[0];
      if (v26.i32[0] >= v20)
      {
        v41 = v20;
      }

      else
      {
        v41 = v26.i32[0];
      }

      if (v41 <= -32768)
      {
        v41 = -32768;
      }

      v42 = (v41 + 0x8000);
      if (v26.i32[0] <= 0x8000)
      {
        v40 = 0x8000;
      }

      v43 = v40 - 0x8000;
      if (v43 >= v11)
      {
        v43 = v11;
      }

      v44 = v26.i32[1];
      if (v26.i32[1] >= v21)
      {
        v45 = v21;
      }

      else
      {
        v45 = v26.i32[1];
      }

      if (v45 <= -32768)
      {
        v45 = -32768;
      }

      v46 = v45 + 0x8000;
      if (v26.i32[1] <= 0x8000)
      {
        v44 = 0x8000;
      }

      v47 = v44 - 0x8000;
      if (v47 >= v12)
      {
        v47 = v12;
      }

      v48 = v9 + v10 * (v47 >> 16);
      v49 = v9 + v10 * HIWORD(v46);
      v26.i8[0] = *(v48 + (v43 >> 16));
      v26.i8[4] = *(v48 + (v42 >> 16));
      v50 = vsli_n_s32(v26, vand_s8(v26, 0xFF000000FFLL), 8uLL);
      LOBYTE(a6) = *(v49 + (v43 >> 16));
      v51 = vorr_s8(vshl_n_s32(v50, 0x10uLL), v50);
      BYTE4(a6) = *(v49 + (v42 >> 16));
      v52 = vsli_n_s32(*&a6, vand_s8(*&a6, 0xFF000000FFLL), 8uLL);
      v53 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vshl_n_s32(v52, 0x10uLL), v52), v51), vdupq_n_s16((v47 >> 1) & 0x7F80)), v51);
      a6 = COERCE_DOUBLE(vdup_n_s16((v43 >> 1) & 0x7F80));
      *v53.i8 = vadd_s16(*v53.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v53, v53, 8uLL), *v53.i8), *&a6));
      v15 = v15 + v13;
      v19 += v18;
      v17 += v16;
      *a3++ = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,true,true,false,true>(uint64_t result, int a2, _DWORD *a3, double a4, int32x2_t a5, double a6, int32x2_t a7)
{
  if (a2)
  {
    v7 = **result;
    v8 = *(*result + 16);
    v9 = *(*result + 32);
    v10 = *(*result + 36);
    v12 = *(result + 60);
    v11 = *(result + 64);
    v14 = *(result + 52);
    v13 = *(result + 56);
    result = 4294934528;
    do
    {
      if (v14 >= v9 - 0x8000)
      {
        v15 = v9 - 0x8000;
      }

      else
      {
        v15 = v14;
      }

      if (v15 <= -32768)
      {
        v16 = -32768;
      }

      else
      {
        v16 = v15;
      }

      if (v14 <= 0x8000)
      {
        v17 = 0x8000;
      }

      else
      {
        v17 = v14;
      }

      v18 = v17 - 0x8000;
      if (v18 >= v9)
      {
        v18 = v9;
      }

      if (v12 >= v10 - 0x8000)
      {
        v19 = v10 - 0x8000;
      }

      else
      {
        v19 = v12;
      }

      v20 = (v16 + 0x8000);
      if (v19 <= -32768)
      {
        v19 = -32768;
      }

      if (v12 <= 0x8000)
      {
        v21 = 0x8000;
      }

      else
      {
        v21 = v12;
      }

      v22 = v21 - 0x8000;
      v23 = v19 + 0x8000;
      if (v22 >= v10)
      {
        v22 = v10;
      }

      v24 = v7 + v8 * (v22 >> 16);
      v25 = v7 + v8 * HIWORD(v23);
      a5.i8[0] = *(v24 + (v18 >> 16));
      a5.i8[4] = *(v24 + (v20 >> 16));
      a7.i8[0] = *(v25 + (v18 >> 16));
      v26 = vsli_n_s32(a5, vand_s8(a5, 0xFF000000FFLL), 8uLL);
      a7.i8[4] = *(v25 + (v20 >> 16));
      v27 = vsli_n_s32(a7, vand_s8(a7, 0xFF000000FFLL), 8uLL);
      v28 = vorr_s8(vshl_n_s32(v26, 0x10uLL), v26);
      v29 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vorr_s8(vshl_n_s32(v27, 0x10uLL), v27), v28), vdupq_n_s16((v22 >> 1) & 0x7F80)), v28);
      a7 = vdup_n_s16((v18 >> 1) & 0x7F80);
      a5 = vuzp1_s8(vadd_s16(*v29.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v29, v29, 8uLL), *v29.i8), a7)), 0xFF000000FFLL);
      v14 += v13;
      v12 += v11;
      *a3++ = a5.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, double a5, int8x8_t a6)
{
  if (a2)
  {
    v6 = result[14];
    v7 = result[15];
    v8 = result[13];
    v9 = *(*result + 32);
    v10 = *(*result + 36);
    v11 = *(*result + 16);
    v12 = **result;
    if (v7 >= v10 - 0x8000)
    {
      v13 = v10 - 0x8000;
    }

    else
    {
      v13 = result[15];
    }

    if (v13 <= -32768)
    {
      v13 = -32768;
    }

    if (v7 <= 0x8000)
    {
      v7 = 0x8000;
    }

    v14 = v7 - 0x8000;
    if (v14 >= v10)
    {
      v15 = *(*result + 36);
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 + v11 * (v15 >> 16);
    v17 = v12 + v11 * ((v13 + 0x8000) >> 16);
    a4.i32[0] = (v15 >> 1) & 0x7F80;
    do
    {
      if (v8 >= v9 - 0x8000)
      {
        v18 = v9 - 0x8000;
      }

      else
      {
        v18 = v8;
      }

      if (v18 <= -32768)
      {
        v18 = -32768;
      }

      v19 = (v18 + 0x8000);
      if (v8 <= 0x8000)
      {
        v20 = 0x8000;
      }

      else
      {
        v20 = v8;
      }

      v21 = v20 - 0x8000;
      if (v21 >= v9)
      {
        v21 = v9;
      }

      result = (v17 + (v21 >> 16));
      a6.i8[0] = *(v16 + (v21 >> 16));
      a6.i8[4] = *(v16 + (v19 >> 16));
      v22 = vand_s8(a6, 0xFF000000FFLL);
      v23 = vsli_n_s32(a6, v22, 8uLL);
      v22.i8[0] = *result;
      v22.i8[4] = *(v17 + (v19 >> 16));
      v24 = vsli_n_s32(v22, vand_s8(v22, 0xFF000000FFLL), 8uLL);
      v25 = vorr_s8(vshl_n_s32(v23, 0x10uLL), v23);
      v26 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vorr_s8(vshl_n_s32(v24, 0x10uLL), v24), v25), a4, 0), v25);
      a6 = vuzp1_s8(vadd_s16(*v26.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v21 >> 1) & 0x7F80))), a4);
      v8 += v6;
      *a3++ = a6.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3, double a4, double a5, double a6, double a7, double a8, int16x8_t a9)
{
  if (a2)
  {
    v9 = **result;
    v10 = *(*result + 16);
    v11 = result[16];
    v13 = result[13];
    v12 = result[14];
    v14 = result[15] - 0x8000;
    do
    {
      v15 = vadd_s32(vdup_n_s32(v13), 0x8000FFFF8000);
      v16 = v9 + v10 * (v14 >> 16);
      v17 = v9 + v10 * ((v14 + 0x10000) >> 16);
      v18 = vshr_n_u32(v15, 0x10uLL);
      result = (v16 + v18.i16[0]);
      v19 = (v17 + v18.i16[0]);
      v20 = (v17 + v18.i16[2]);
      v18.i8[0] = *result;
      v18.i8[4] = *(v16 + v18.i16[2]);
      v21 = vsli_n_s32(v18, vand_s8(v18, 0xFF000000FFLL), 8uLL);
      a9.i8[0] = *v19;
      v22 = vorr_s8(vshl_n_s32(v21, 0x10uLL), v21);
      a9.i8[4] = *v20;
      v23 = vsli_n_s32(*a9.i8, vand_s8(*a9.i8, 0xFF000000FFLL), 8uLL);
      v24 = vsubl_u8(vorr_s8(vshl_n_s32(v23, 0x10uLL), v23), v22);
      a9 = vdupq_n_s16((v14 >> 1) & 0x7F80);
      v25 = vaddw_u8(vqrdmulhq_s16(v24, a9), v22);
      v13 += v12;
      *a3++ = vuzp1_s8(vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v15.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v14 += v11;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v14 = vshr_n_u32(v13, 0x10uLL);
      v15 = (v12 + v14.i16[0]);
      v16 = (v12 + v14.i16[2]);
      v14.i8[0] = *(v11 + v14.i16[0]);
      v14.i8[4] = *(v11 + v14.i16[2]);
      v17 = vand_s8(v14, 0xFF000000FFLL);
      v18 = vsli_n_s32(v14, v17, 8uLL);
      v17.i8[0] = *v15;
      v17.i8[4] = *v16;
      v19 = vorr_s8(vshl_n_s32(v18, 0x10uLL), v18);
      v20 = vsli_n_s32(v17, vand_s8(v17, 0xFF000000FFLL), 8uLL);
      v21 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vorr_s8(vshl_n_s32(v20, 0x10uLL), v20), v19), a4, 0), v19);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v21.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v21, v21, 8uLL), *v21.i8), vdup_n_s16((v13.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v40 = v12;
    v39 = v8;
    v38 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v38;
          v12 = v40;
          v8 = v39;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v37 = *(v7 + v8 * (v36 >> 16) + (v35 >> 16));
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = v37 | (v37 << 8) | ((v37 | (v37 << 8)) << 16);
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,true,true,false,false>(int *result, int a2, int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = *(v3 + v4 * (v12 >> 16) + (v11 >> 16));
      v10 += v9;
      v8 += v7;
      *a3++ = v13 | (v13 << 8) | ((v13 | (v13 << 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,false,true,false,false>(_DWORD *result, int a2, int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v9 = *(v7 + (v8 >> 16));
      v4 += v3;
      *a3++ = v9 | (v9 << 8) | ((v9 | (v9 << 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,true,false,false,false>(int *result, int a2, int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = *(v3 + v4 * (v6 >> 16) + (v8 >> 16));
      v8 += v7;
      v6 += v5;
      *a3++ = v9 | (v9 << 8) | ((v9 | (v9 << 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::A8,unsigned int,false,false,false,false>(uint64_t result, int a2, int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = *(v5 + (v4 >> 16));
      v4 += v3;
      *a3++ = v6 | (v6 << 8) | ((v6 | (v6 << 8)) << 16);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v51 = v8;
    v52 = v11;
    v50 = v15;
    v49 = result;
    do
    {
      *v22.i32 = (1.0 / v12) * v16;
      *&v22.i32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v36 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v22 = *(result + 84);
          v28 = vmul_f32(vmla_f32(*(result + 92), v22, vminnm_f32(vsub_f32(v36, vrndm_f32(v36)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v22 = vmul_f32(*(result + 84), v30);
          v31 = vmul_f32(*(result + 92), v30);
          v32 = vbsl_s8(vcgt_f32(v29, v31), v31, v29);
          v28 = vbsl_s8(vcgt_f32(v22, v32), v22, v32);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v33 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v34 = vmul_f32(v33, v33);
          v35 = vadd_f32(vdup_lane_s32(v34, 1), v34);
          *v34.i32 = fmaxf(vaddv_f32(v34), 0.00001);
          v34.i32[0] = vmul_f32(v35, vrsqrte_f32(vdup_lane_s32(v34, 0))).u32[0];
          v22 = vcvt_f32_u32(*(v5 + 6));
          v34.i32[1] = 0.5;
          v28 = vmul_f32(v34, v22);
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v50;
          v8 = v51;
          v13 = v25;
          v11 = v52;
          v7 = v24;
          result = v49;
          v22 = vcvt_f32_u32(*(v5 + 6));
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, v22);
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v37 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v38 = v17;
      }

      else
      {
        v38 = v23.i32[0];
      }

      if (v38 <= -32768)
      {
        v38 = -32768;
      }

      v39 = (v38 + 0x8000);
      if (v23.i32[0] <= 0x8000)
      {
        v37 = 0x8000;
      }

      v40 = v37 - 0x8000;
      if (v40 >= v8)
      {
        v40 = v8;
      }

      v41 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v42 = v18;
      }

      else
      {
        v42 = v23.i32[1];
      }

      if (v42 <= -32768)
      {
        v42 = -32768;
      }

      v43 = v42 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v41 = 0x8000;
      }

      v44 = v41 - 0x8000;
      if (v44 >= v9)
      {
        v44 = v9;
      }

      v45 = v6 + v7 * (v44 >> 16);
      v46 = v6 + v7 * HIWORD(v43);
      v23.i8[0] = *(v45 + (v40 >> 16));
      v23.i8[4] = *(v45 + (v39 >> 16));
      v47 = vshl_n_s32(v23, 0x18uLL);
      v22.i8[0] = *(v46 + (v40 >> 16));
      v22.i8[4] = *(v46 + (v39 >> 16));
      v48 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vshl_n_s32(v22, 0x18uLL), v47), vdupq_n_s16((v44 >> 1) & 0x7F80)), v47);
      *v48.i8 = vadd_s16(*v48.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v48, v48, 8uLL), *v48.i8), vdup_n_s16((v40 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v48.i8, *v48.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int32x2_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3, int32x2_t result, int32x2_t a5)
{
  if (a2)
  {
    v5 = **a1;
    v6 = *(*a1 + 16);
    v7 = *(*a1 + 32);
    v8 = *(*a1 + 36);
    v10 = a1[15];
    v9 = a1[16];
    v12 = a1[13];
    v11 = a1[14];
    do
    {
      if (v12 >= v7 - 0x8000)
      {
        v13 = v7 - 0x8000;
      }

      else
      {
        v13 = v12;
      }

      if (v13 <= -32768)
      {
        v13 = -32768;
      }

      if (v12 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v12;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v7)
      {
        v15 = v7;
      }

      if (v10 >= v8 - 0x8000)
      {
        v16 = v8 - 0x8000;
      }

      else
      {
        v16 = v10;
      }

      v17 = (v13 + 0x8000);
      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      if (v10 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v10;
      }

      v19 = v18 - 0x8000;
      v20 = v16 + 0x8000;
      if (v19 >= v8)
      {
        v19 = v8;
      }

      v21 = v5 + v6 * (v19 >> 16);
      v22 = v5 + v6 * HIWORD(v20);
      result.i8[0] = *(v21 + (v15 >> 16));
      a5.i8[0] = *(v22 + (v15 >> 16));
      a5.i8[4] = *(v22 + (v17 >> 16));
      result.i8[4] = *(v21 + (v17 >> 16));
      v23 = vshl_n_s32(result, 0x18uLL);
      v24 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vshl_n_s32(a5, 0x18uLL), v23), vdupq_n_s16((v19 >> 1) & 0x7F80)), v23);
      a5 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v24, v24, 8uLL), *v24.i8), vdup_n_s16((v15 >> 1) & 0x7F80));
      *v24.i8 = vadd_s16(*v24.i8, a5);
      result = vuzp1_s8(*v24.i8, *v24.i8);
      v12 += v11;
      v10 += v9;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, int32x2_t a5, int32x2_t a6)
{
  if (a2)
  {
    v6 = result[14];
    v7 = result[15];
    v8 = result[13];
    v9 = *(*result + 32);
    v10 = *(*result + 36);
    v11 = *(*result + 16);
    v12 = **result;
    if (v7 >= v10 - 0x8000)
    {
      v13 = v10 - 0x8000;
    }

    else
    {
      v13 = result[15];
    }

    if (v13 <= -32768)
    {
      v13 = -32768;
    }

    if (v7 <= 0x8000)
    {
      v7 = 0x8000;
    }

    v14 = v7 - 0x8000;
    if (v14 >= v10)
    {
      v15 = *(*result + 36);
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 + v11 * (v15 >> 16);
    v17 = v12 + v11 * ((v13 + 0x8000) >> 16);
    a4.i32[0] = (v15 >> 1) & 0x7F80;
    do
    {
      if (v8 >= v9 - 0x8000)
      {
        v18 = v9 - 0x8000;
      }

      else
      {
        v18 = v8;
      }

      if (v18 <= -32768)
      {
        v18 = -32768;
      }

      v19 = (v18 + 0x8000);
      if (v8 <= 0x8000)
      {
        v20 = 0x8000;
      }

      else
      {
        v20 = v8;
      }

      v21 = v20 - 0x8000;
      if (v21 >= v9)
      {
        v21 = v9;
      }

      result = (v17 + (v21 >> 16));
      a5.i8[0] = *(v16 + (v21 >> 16));
      a5.i8[4] = *(v16 + (v19 >> 16));
      a6.i8[0] = *result;
      a6.i8[4] = *(v17 + (v19 >> 16));
      v22 = vshl_n_s32(a5, 0x18uLL);
      v23 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vshl_n_s32(a6, 0x18uLL), v22), a4, 0), v22);
      a6 = vqrdmulh_s16(vsub_s16(*&vextq_s8(v23, v23, 8uLL), *v23.i8), vdup_n_s16((v21 >> 1) & 0x7F80));
      a5 = vuzp1_s8(vadd_s16(*v23.i8, a6), a4);
      v8 += v6;
      *a3++ = a5.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3, double a4, double a5, double a6, int32x2_t a7)
{
  if (a2)
  {
    v7 = **result;
    v8 = *(*result + 16);
    v9 = result[16];
    v11 = result[13];
    v10 = result[14];
    v12 = result[15] - 0x8000;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v11), 0x8000FFFF8000);
      v14 = v7 + v8 * (v12 >> 16);
      v15 = v7 + v8 * ((v12 + 0x10000) >> 16);
      v16 = vshr_n_u32(v13, 0x10uLL);
      result = (v14 + v16.i16[0]);
      v17 = (v15 + v16.i16[0]);
      v18 = (v15 + v16.i16[2]);
      v16.i8[0] = *result;
      v16.i8[4] = *(v14 + v16.i16[2]);
      v19 = vshl_n_s32(v16, 0x18uLL);
      a7.i8[0] = *v17;
      a7.i8[4] = *v18;
      v20 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vshl_n_s32(a7, 0x18uLL), v19), vdupq_n_s16((v12 >> 1) & 0x7F80)), v19);
      a7 = vdup_n_s16((v13.u16[0] >> 1) & 0x7F80);
      v11 += v10;
      *a3++ = vuzp1_s8(vadd_s16(*v20.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v20, v20, 8uLL), *v20.i8), a7)), 0x8000FFFF8000).u32[0];
      v12 += v9;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4, double a5, double a6, double a7, int32x2_t a8)
{
  if (a2)
  {
    v8 = result[14];
    v9 = result[15];
    v10 = result[13];
    v11 = *(*result + 16);
    v12 = **result;
    v13 = v9 + 0x8000;
    v14 = v9 - 0x8000;
    v15 = v12 + v11 * ((v9 - 0x8000) >> 16);
    v16 = v12 + v11 * (v13 >> 16);
    a4.i32[0] = (v14 >> 1) & 0x7F80;
    do
    {
      v17 = vadd_s32(vdup_n_s32(v10), 0x8000FFFF8000);
      v18 = vshr_n_u32(v17, 0x10uLL);
      v19 = (v16 + v18.i16[0]);
      v20 = (v16 + v18.i16[2]);
      v18.i8[0] = *(v15 + v18.i16[0]);
      v18.i8[4] = *(v15 + v18.i16[2]);
      v21 = vshl_n_s32(v18, 0x18uLL);
      a8.i8[0] = *v19;
      a8.i8[4] = *v20;
      v22 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(vshl_n_s32(a8, 0x18uLL), v21), a4, 0), v21);
      a8 = vdup_n_s16((v17.u16[0] >> 1) & 0x7F80);
      v10 += v8;
      *a3++ = vuzp1_s8(vadd_s16(*v22.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v22, v22, 8uLL), *v22.i8), a8)), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,true,true,true,false>(uint64_t **a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = *(v7 + v8 * (v36 >> 16) + (v35 >> 16)) << 24;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,true,true,false,false>(int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = *(v3 + v4 * (v12 >> 16) + (v11 >> 16)) << 24;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,false,true,false,false>(_DWORD *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v4 += v3;
      *a3++ = *(v7 + (v8 >> 16)) << 24;
      --a2;
    }

    while (a2);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,true,false,false,false>(int *result, int a2, int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = *(v3 + v4 * (v6 >> 16) + (v8 >> 16)) << 24;
      v8 += v7;
      v6 += v5;
      *a3++ = v9;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::S8,unsigned int,false,false,false,false>(uint64_t result, int a2, int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = *(v5 + (v4 >> 16)) << 24;
      v4 += v3;
      *a3++ = v6;
      --a2;
    }

    while (a2);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::YCbYCr8,unsigned int,true,true,true,true>(int *result, int a2, const unsigned __int8 *a3)
{
  v46 = result;
  v56[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v53 = *(*result + 16);
    v54 = **result;
    v47 = *result;
    v5 = *(*(result + 3) + 12);
    v6 = *(result + 48);
    v7 = *(*(result + 2) + 12);
    v8 = result[15];
    v9 = result[13];
    v48 = result[14];
    v49 = result[16];
    v51 = *(*result + 36);
    v52 = *(*result + 32);
    v10 = vdup_n_s32(0x37800000u);
    v11 = vdup_n_s32(0x3F7FFFFFu);
    v12 = vdup_n_s32(0x47800000u);
    v50 = v6;
    do
    {
      v13.f32[0] = (1.0 / v7) * v9;
      v13.f32[1] = (1.0 / v7) * v8;
      v14 = vcvt_s32_f32(v13);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v26 = vmul_f32(vcvt_f32_s32(v14), vmul_f32(v10, *(v47 + 10)));
          v17 = vmul_f32(vmla_f32(*(v46 + 23), *(v46 + 21), vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), v11)), vmul_f32(v12, vcvt_f32_u32(*(v47 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v18 = vcvt_f32_s32(v14);
          v19 = vcvt_f32_s32(*(v47 + 8));
          v20 = vmul_f32(*(v46 + 21), v19);
          v21 = vmul_f32(*(v46 + 23), v19);
          v22 = vbsl_s8(vcgt_f32(v18, v21), v21, v18);
          v17 = vbsl_s8(vcgt_f32(v20, v22), v20, v22);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v23 = vmul_f32(*(v47 + 10), vcvt_f32_s32(v14));
          v24 = vmul_f32(v23, v23);
          v25 = vadd_f32(vdup_lane_s32(v24, 1), v24);
          *v24.i32 = fmaxf(vaddv_f32(v24), 0.00001);
          v24.i32[0] = vmul_f32(v25, vrsqrte_f32(vdup_lane_s32(v24, 0))).u32[0];
          v24.i32[1] = 0.5;
          v17 = vmul_f32(v24, vcvt_f32_u32(*(v47 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v15 = atan2f(v47[11] * v14.i32[1], v47[10] * v14.i32[0]);
          v16.i32[1] = 1056964608;
          v16.f32[0] = (v15 * -10430.0) + 32768.0;
          v17 = vmul_f32(v16, vcvt_f32_u32(*(v47 + 6)));
LABEL_12:
          v14 = vcvt_s32_f32(v17);
        }
      }

      --v4;
      v27 = v14.i32[0];
      v28 = v52 - 0x8000;
      if (v14.i32[0] < v52 - 0x8000)
      {
        v28 = v14.i32[0];
      }

      if (v28 <= -32768)
      {
        v28 = -32768;
      }

      v29 = v28 + 0x8000;
      if (v14.i32[0] <= 0x8000)
      {
        v27 = 0x8000;
      }

      v30 = v27 - 0x8000;
      if (v30 >= v52)
      {
        v31 = v52;
      }

      else
      {
        v31 = v30;
      }

      v32 = v14.i32[1];
      v33 = v51 - 0x8000;
      if (v14.i32[1] < v51 - 0x8000)
      {
        v33 = v14.i32[1];
      }

      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      v34 = v33 + 0x8000;
      if (v14.i32[1] <= 0x8000)
      {
        v32 = 0x8000;
      }

      v35 = v32 - 0x8000;
      if (v35 >= v51)
      {
        v36 = v51;
      }

      else
      {
        v36 = v35;
      }

      v37 = v54 + v53 * (v36 >> 16);
      v38 = v54 + v53 * HIWORD(v34);
      v39 = (v31 >> 15) & 0xFFFFFFFE;
      v40 = v38 + v39;
      v55 = 0;
      v56[0] = 0;
      v41 = (v29 >> 15) & 0x1FFFE;
      CA::OGL::SW::Format::YCbYCr8::load_1(v56 + 1, v37 + v39, a3);
      CA::OGL::SW::Format::YCbYCr8::load_1(v56, v37 + v41, v42);
      CA::OGL::SW::Format::YCbYCr8::load_1(&v55 + 1, v40, v43);
      result = CA::OGL::SW::Format::YCbYCr8::load_1(&v55, v38 + v41, v44);
      v45 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v55, HIDWORD(v55)), __PAIR64__(v56[0], HIDWORD(v56[0]))), vdupq_n_s16((v36 >> 1) & 0x7F80)), __PAIR64__(v56[0], HIDWORD(v56[0])));
      *v45.i8 = vadd_s16(*v45.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v45, v45, 8uLL), *v45.i8), vdup_n_s16((v31 >> 1) & 0x7F80)));
      v7 = v7 + v5;
      v9 += v48;
      v8 += v49;
      *v3 = vuzp1_s8(*v45.i8, *v45.i8).u32[0];
      v3 += 4;
      v6 = v50;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::Format::YCbYCr8::load_1(int *this, unint64_t a2, const unsigned __int8 *a3)
{
  v3 = *((a2 & 0xFFFFFFFFFFFFFFFDLL) + 1) - 128;
  v4 = *((a2 & 0xFFFFFFFFFFFFFFFDLL) + 3) - 128;
  v5 = 38155 * *a2 - 610480;
  v6 = (v5 + 52299 * v4) >> 15;
  if (v6 >= 255)
  {
    v7 = 255;
  }

  else
  {
    v7 = (v5 + 52299 * v4) >> 15;
  }

  v8 = (v7 << 16) - 0x1000000;
  if (v6 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -16777216;
  }

  v10 = (v5 - 12836 * v3 - 26638 * v4) >> 15;
  if (v10 >= 255)
  {
    v11 = 255;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 << 8;
  if (v10 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v5 + 66101 * v3) >> 15;
  if (v14 >= 255)
  {
    v14 = 255;
  }

  *this = v13 | v14 & ~(v14 >> 31) | v9;
  return this;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::YCbYCr8,unsigned int,true,true,false,true>(int *a1, int a2, const unsigned __int8 *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v31 = *(*a1 + 16);
    v32 = **a1;
    v5 = a1[15];
    v29 = *(*a1 + 36);
    v30 = *(*a1 + 32);
    v28 = a1[16];
    v6 = a1[13];
    v27 = a1[14];
    do
    {
      --v4;
      v7 = v30 - 0x8000;
      if (v6 < v30 - 0x8000)
      {
        v7 = v6;
      }

      if (v7 <= -32768)
      {
        v7 = -32768;
      }

      v8 = v7 + 0x8000;
      if (v6 <= 0x8000)
      {
        v9 = 0x8000;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 0x8000;
      if (v10 >= v30)
      {
        v11 = v30;
      }

      else
      {
        v11 = v10;
      }

      v12 = v29 - 0x8000;
      if (v5 < v29 - 0x8000)
      {
        v12 = v5;
      }

      if (v12 <= -32768)
      {
        v12 = -32768;
      }

      v13 = v12 + 0x8000;
      if (v5 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v5;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v29)
      {
        v16 = v29;
      }

      else
      {
        v16 = v15;
      }

      v17 = v32 + v31 * (v16 >> 16);
      v18 = v32 + v31 * HIWORD(v13);
      v19 = (v11 >> 15) & 0xFFFFFFFE;
      v20 = v18 + v19;
      v33 = 0;
      v34[0] = 0;
      v21 = (v8 >> 15) & 0x1FFFE;
      CA::OGL::SW::Format::YCbYCr8::load_1(v34 + 1, v17 + v19, a3);
      CA::OGL::SW::Format::YCbYCr8::load_1(v34, v17 + v21, v22);
      CA::OGL::SW::Format::YCbYCr8::load_1(&v33 + 1, v20, v23);
      CA::OGL::SW::Format::YCbYCr8::load_1(&v33, v18 + v21, v24);
      v25 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v33, HIDWORD(v33)), __PAIR64__(v34[0], HIDWORD(v34[0]))), vdupq_n_s16((v16 >> 1) & 0x7F80)), __PAIR64__(v34[0], HIDWORD(v34[0])));
      *v25.i8 = vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v11 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v25.i8, *v25.i8);
      v6 += v27;
      v5 += v28;
      *v3 = result.i32[0];
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::YCbYCr8,unsigned int,true,true,true,false>(int *result, int a2, const unsigned __int8 *a3)
{
  v34 = result;
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = *result;
    v35 = *(*result + 16);
    v36 = **result;
    v6 = *(*result + 32);
    v7 = *(*result + 36);
    v8 = *(*(result + 3) + 12);
    v9 = *(result + 48);
    v10 = *(*(result + 2) + 12);
    v11 = result[15];
    v12 = result[16];
    v13 = result[13];
    v14 = result[14];
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v37 = 0;
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(v34 + 23), *(v34 + 21), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(v34 + 21), v24);
          v26 = vmul_f32(*(v34 + 23), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      result = CA::OGL::SW::Format::YCbYCr8::load_1(&v37, v36 + v35 * (v33 >> 16) + ((v32 >> 15) & 0xFFFFFFFE), a3);
      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *v3 = v37;
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::YCbYCr8,unsigned int,true,true,false,false>(int *result, int a2, const unsigned __int8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = **result;
    v6 = *(*result + 16);
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v10 = result[15];
    v9 = result[16];
    v12 = result[13];
    v11 = result[14];
    do
    {
      --v4;
      v15 = 0;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      result = CA::OGL::SW::Format::YCbYCr8::load_1(&v15, v5 + v6 * (v14 >> 16) + ((v13 >> 15) & 0xFFFFFFFE), a3);
      v12 += v11;
      v10 += v9;
      *v3 = v15;
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::CbYCrY8,unsigned int,true,true,true,true>(int *result, int a2, const unsigned __int8 *a3)
{
  v46 = result;
  v56[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v53 = *(*result + 16);
    v54 = **result;
    v47 = *result;
    v5 = *(*(result + 3) + 12);
    v6 = *(result + 48);
    v7 = *(*(result + 2) + 12);
    v8 = result[15];
    v9 = result[13];
    v48 = result[14];
    v49 = result[16];
    v51 = *(*result + 36);
    v52 = *(*result + 32);
    v10 = vdup_n_s32(0x37800000u);
    v11 = vdup_n_s32(0x3F7FFFFFu);
    v12 = vdup_n_s32(0x47800000u);
    v50 = v6;
    do
    {
      v13.f32[0] = (1.0 / v7) * v9;
      v13.f32[1] = (1.0 / v7) * v8;
      v14 = vcvt_s32_f32(v13);
      if (v6 > 2)
      {
        if (v6 == 3)
        {
          v26 = vmul_f32(vcvt_f32_s32(v14), vmul_f32(v10, *(v47 + 10)));
          v17 = vmul_f32(vmla_f32(*(v46 + 23), *(v46 + 21), vminnm_f32(vsub_f32(v26, vrndm_f32(v26)), v11)), vmul_f32(v12, vcvt_f32_u32(*(v47 + 6))));
          goto LABEL_12;
        }

        if (v6 == 5)
        {
          v18 = vcvt_f32_s32(v14);
          v19 = vcvt_f32_s32(*(v47 + 8));
          v20 = vmul_f32(*(v46 + 21), v19);
          v21 = vmul_f32(*(v46 + 23), v19);
          v22 = vbsl_s8(vcgt_f32(v18, v21), v21, v18);
          v17 = vbsl_s8(vcgt_f32(v20, v22), v20, v22);
          goto LABEL_12;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v23 = vmul_f32(*(v47 + 10), vcvt_f32_s32(v14));
          v24 = vmul_f32(v23, v23);
          v25 = vadd_f32(vdup_lane_s32(v24, 1), v24);
          *v24.i32 = fmaxf(vaddv_f32(v24), 0.00001);
          v24.i32[0] = vmul_f32(v25, vrsqrte_f32(vdup_lane_s32(v24, 0))).u32[0];
          v24.i32[1] = 0.5;
          v17 = vmul_f32(v24, vcvt_f32_u32(*(v47 + 6)));
          goto LABEL_12;
        }

        if (v6 == 2)
        {
          v15 = atan2f(v47[11] * v14.i32[1], v47[10] * v14.i32[0]);
          v16.i32[1] = 1056964608;
          v16.f32[0] = (v15 * -10430.0) + 32768.0;
          v17 = vmul_f32(v16, vcvt_f32_u32(*(v47 + 6)));
LABEL_12:
          v14 = vcvt_s32_f32(v17);
        }
      }

      --v4;
      v27 = v14.i32[0];
      v28 = v52 - 0x8000;
      if (v14.i32[0] < v52 - 0x8000)
      {
        v28 = v14.i32[0];
      }

      if (v28 <= -32768)
      {
        v28 = -32768;
      }

      v29 = v28 + 0x8000;
      if (v14.i32[0] <= 0x8000)
      {
        v27 = 0x8000;
      }

      v30 = v27 - 0x8000;
      if (v30 >= v52)
      {
        v31 = v52;
      }

      else
      {
        v31 = v30;
      }

      v32 = v14.i32[1];
      v33 = v51 - 0x8000;
      if (v14.i32[1] < v51 - 0x8000)
      {
        v33 = v14.i32[1];
      }

      if (v33 <= -32768)
      {
        v33 = -32768;
      }

      v34 = v33 + 0x8000;
      if (v14.i32[1] <= 0x8000)
      {
        v32 = 0x8000;
      }

      v35 = v32 - 0x8000;
      if (v35 >= v51)
      {
        v36 = v51;
      }

      else
      {
        v36 = v35;
      }

      v37 = v54 + v53 * (v36 >> 16);
      v38 = v54 + v53 * HIWORD(v34);
      v39 = (v31 >> 15) & 0xFFFFFFFE;
      v40 = v38 + v39;
      v55 = 0;
      v56[0] = 0;
      v41 = (v29 >> 15) & 0x1FFFE;
      CA::OGL::SW::Format::CbYCrY8::load_1(v56 + 1, v37 + v39, a3);
      CA::OGL::SW::Format::CbYCrY8::load_1(v56, v37 + v41, v42);
      CA::OGL::SW::Format::CbYCrY8::load_1(&v55 + 1, v40, v43);
      result = CA::OGL::SW::Format::CbYCrY8::load_1(&v55, v38 + v41, v44);
      v45 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v55, HIDWORD(v55)), __PAIR64__(v56[0], HIDWORD(v56[0]))), vdupq_n_s16((v36 >> 1) & 0x7F80)), __PAIR64__(v56[0], HIDWORD(v56[0])));
      *v45.i8 = vadd_s16(*v45.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v45, v45, 8uLL), *v45.i8), vdup_n_s16((v31 >> 1) & 0x7F80)));
      v7 = v7 + v5;
      v9 += v48;
      v8 += v49;
      *v3 = vuzp1_s8(*v45.i8, *v45.i8).u32[0];
      v3 += 4;
      v6 = v50;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::Format::CbYCrY8::load_1(int *this, unint64_t a2, const unsigned __int8 *a3)
{
  v3 = *(a2 & 0xFFFFFFFFFFFFFFFDLL) - 128;
  v4 = *((a2 & 0xFFFFFFFFFFFFFFFDLL) + 2) - 128;
  v5 = 38155 * *(a2 + 1) - 610480;
  v6 = (v5 + 52299 * v4) >> 15;
  if (v6 >= 255)
  {
    v7 = 255;
  }

  else
  {
    v7 = (v5 + 52299 * v4) >> 15;
  }

  v8 = (v7 << 16) - 0x1000000;
  if (v6 >= 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = -16777216;
  }

  v10 = (v5 - 12836 * v3 - 26638 * v4) >> 15;
  if (v10 >= 255)
  {
    v11 = 255;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 << 8;
  if (v10 >= 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v5 + 66101 * v3) >> 15;
  if (v14 >= 255)
  {
    v14 = 255;
  }

  *this = v13 | v14 & ~(v14 >> 31) | v9;
  return this;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::CbYCrY8,unsigned int,true,true,false,true>(int *a1, int a2, const unsigned __int8 *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v31 = *(*a1 + 16);
    v32 = **a1;
    v5 = a1[15];
    v29 = *(*a1 + 36);
    v30 = *(*a1 + 32);
    v28 = a1[16];
    v6 = a1[13];
    v27 = a1[14];
    do
    {
      --v4;
      v7 = v30 - 0x8000;
      if (v6 < v30 - 0x8000)
      {
        v7 = v6;
      }

      if (v7 <= -32768)
      {
        v7 = -32768;
      }

      v8 = v7 + 0x8000;
      if (v6 <= 0x8000)
      {
        v9 = 0x8000;
      }

      else
      {
        v9 = v6;
      }

      v10 = v9 - 0x8000;
      if (v10 >= v30)
      {
        v11 = v30;
      }

      else
      {
        v11 = v10;
      }

      v12 = v29 - 0x8000;
      if (v5 < v29 - 0x8000)
      {
        v12 = v5;
      }

      if (v12 <= -32768)
      {
        v12 = -32768;
      }

      v13 = v12 + 0x8000;
      if (v5 <= 0x8000)
      {
        v14 = 0x8000;
      }

      else
      {
        v14 = v5;
      }

      v15 = v14 - 0x8000;
      if (v15 >= v29)
      {
        v16 = v29;
      }

      else
      {
        v16 = v15;
      }

      v17 = v32 + v31 * (v16 >> 16);
      v18 = v32 + v31 * HIWORD(v13);
      v19 = (v11 >> 15) & 0xFFFFFFFE;
      v20 = v18 + v19;
      v33 = 0;
      v34[0] = 0;
      v21 = (v8 >> 15) & 0x1FFFE;
      CA::OGL::SW::Format::CbYCrY8::load_1(v34 + 1, v17 + v19, a3);
      CA::OGL::SW::Format::CbYCrY8::load_1(v34, v17 + v21, v22);
      CA::OGL::SW::Format::CbYCrY8::load_1(&v33 + 1, v20, v23);
      CA::OGL::SW::Format::CbYCrY8::load_1(&v33, v18 + v21, v24);
      v25 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(__PAIR64__(v33, HIDWORD(v33)), __PAIR64__(v34[0], HIDWORD(v34[0]))), vdupq_n_s16((v16 >> 1) & 0x7F80)), __PAIR64__(v34[0], HIDWORD(v34[0])));
      *v25.i8 = vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v11 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v25.i8, *v25.i8);
      v6 += v27;
      v5 += v28;
      *v3 = result.i32[0];
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::CbYCrY8,unsigned int,true,true,true,false>(int *result, int a2, const unsigned __int8 *a3)
{
  v34 = result;
  v38 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = *result;
    v35 = *(*result + 16);
    v36 = **result;
    v6 = *(*result + 32);
    v7 = *(*result + 36);
    v8 = *(*(result + 3) + 12);
    v9 = *(result + 48);
    v10 = *(*(result + 2) + 12);
    v11 = result[15];
    v12 = result[16];
    v13 = result[13];
    v14 = result[14];
    v15 = vdup_n_s32(0x37800000u);
    v16 = vdup_n_s32(0x3F7FFFFFu);
    v17 = vdup_n_s32(0x47800000u);
    do
    {
      v37 = 0;
      v18.f32[0] = (1.0 / v10) * v13;
      v18.f32[1] = (1.0 / v10) * v11;
      v19 = vcvt_s32_f32(v18);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v31 = vmul_f32(vcvt_f32_s32(v19), vmul_f32(v15, *(v5 + 10)));
          v22 = vmul_f32(vmla_f32(*(v34 + 23), *(v34 + 21), vminnm_f32(vsub_f32(v31, vrndm_f32(v31)), v16)), vmul_f32(v17, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v9 == 5)
        {
          v23 = vcvt_f32_s32(v19);
          v24 = vcvt_f32_s32(*(v5 + 8));
          v25 = vmul_f32(*(v34 + 21), v24);
          v26 = vmul_f32(*(v34 + 23), v24);
          v27 = vbsl_s8(vcgt_f32(v23, v26), v26, v23);
          v22 = vbsl_s8(vcgt_f32(v25, v27), v25, v27);
          goto LABEL_12;
        }
      }

      else
      {
        if (v9 == 1)
        {
          v28 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v19));
          v29 = vmul_f32(v28, v28);
          v30 = vadd_f32(vdup_lane_s32(v29, 1), v29);
          *v29.i32 = fmaxf(vaddv_f32(v29), 0.00001);
          v29.i32[0] = vmul_f32(v30, vrsqrte_f32(vdup_lane_s32(v29, 0))).u32[0];
          v29.i32[1] = 0.5;
          v22 = vmul_f32(v29, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v9 == 2)
        {
          v20 = atan2f(v5[11] * v19.i32[1], v5[10] * v19.i32[0]);
          v21.i32[1] = 1056964608;
          v21.f32[0] = (v20 * -10430.0) + 32768.0;
          v22 = vmul_f32(v21, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v19 = vcvt_s32_f32(v22);
        }
      }

      --v4;
      v32 = v19.i32[0] & ~(v19.i32[0] >> 31);
      if (v32 >= v6)
      {
        v32 = v6;
      }

      v33 = v19.i32[1] & ~(v19.i32[1] >> 31);
      if (v33 >= v7)
      {
        v33 = v7;
      }

      result = CA::OGL::SW::Format::CbYCrY8::load_1(&v37, v36 + v35 * (v33 >> 16) + ((v32 >> 15) & 0xFFFFFFFE), a3);
      v10 = v10 + v8;
      v13 += v14;
      v11 += v12;
      *v3 = v37;
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::CbYCrY8,unsigned int,true,true,false,false>(int *result, int a2, const unsigned __int8 *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a3;
    v4 = a2;
    v5 = **result;
    v6 = *(*result + 16);
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v10 = result[15];
    v9 = result[16];
    v12 = result[13];
    v11 = result[14];
    do
    {
      --v4;
      v15 = 0;
      v13 = v12 & ~(v12 >> 31);
      if (v13 >= v7)
      {
        v13 = v7;
      }

      v14 = v10 & ~(v10 >> 31);
      if (v14 >= v8)
      {
        v14 = v8;
      }

      result = CA::OGL::SW::Format::CbYCrY8::load_1(&v15, v5 + v6 * (v14 >> 16) + ((v13 >> 15) & 0xFFFFFFFE), a3);
      v12 += v11;
      v10 += v9;
      *v3 = v15;
      v3 += 4;
    }

    while (v4);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v15 = *(result + 13);
    v16 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = 1.0;
    v19 = vdup_n_s32(0x70707u);
    v56 = vdup_n_s32(0x3F7FFFFFu);
    v57 = vdup_n_s32(0x37800000u);
    v55 = vdup_n_s32(0x47800000u);
    v61 = v13;
    v62 = v8;
    v60 = result;
    v59 = v8 - 0x8000;
    v58 = v6;
    do
    {
      v20.f32[0] = (v18 / v12) * v15;
      v20.f32[1] = (v18 / v12) * v14;
      v21 = vcvt_s32_f32(v20);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v35 = vmul_f32(vcvt_f32_s32(v21), vmul_f32(v57, *(v5 + 10)));
          v26 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v35, vrndm_f32(v35)), v56)), vmul_f32(v55, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v27 = vcvt_f32_s32(v21);
          v28 = vcvt_f32_s32(*(v5 + 8));
          v29 = vmul_f32(*(result + 84), v28);
          v30 = vmul_f32(*(result + 92), v28);
          v31 = vbsl_s8(vcgt_f32(v27, v30), v30, v27);
          v26 = vbsl_s8(vcgt_f32(v29, v31), v29, v31);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v32 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v21));
          v33 = vmul_f32(v32, v32);
          v34 = vadd_f32(vdup_lane_s32(v33, 1), v33);
          *v33.i32 = fmaxf(vaddv_f32(v33), 0.00001);
          v33.i32[0] = vmul_f32(v34, vrsqrte_f32(vdup_lane_s32(v33, 0))).u32[0];
          v33.i32[1] = 0.5;
          v26 = vmul_f32(v33, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v22 = v7;
          v23 = v11;
          v24 = atan2f(v5[11] * v21.i32[1], v5[10] * v21.i32[0]);
          v18 = 1.0;
          v17 = v59;
          v13 = v61;
          v8 = v62;
          v11 = v23;
          v7 = v22;
          v6 = v58;
          result = v60;
          v25.i32[1] = 1056964608;
          v25.f32[0] = (v24 * -10430.0) + 32768.0;
          v26 = vmul_f32(v25, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v21 = vcvt_s32_f32(v26);
        }
      }

      v36 = v21.i32[0];
      if (v21.i32[0] >= v17)
      {
        v37 = v17;
      }

      else
      {
        v37 = v21.i32[0];
      }

      if (v37 <= -32768)
      {
        v37 = -32768;
      }

      v38 = v37 + 0x8000;
      if (v21.i32[0] <= 0x8000)
      {
        v36 = 0x8000;
      }

      v39 = v36 - 0x8000;
      if (v39 >= v8)
      {
        v39 = v8;
      }

      v40 = v21.i32[1];
      if (v21.i32[1] >= v9 - 0x8000)
      {
        v41 = v9 - 0x8000;
      }

      else
      {
        v41 = v21.i32[1];
      }

      if (v41 <= -32768)
      {
        v41 = -32768;
      }

      v42 = v41 + 0x8000;
      if (v21.i32[1] <= 0x8000)
      {
        v40 = 0x8000;
      }

      v43 = v40 - 0x8000;
      if (v43 >= v9)
      {
        v43 = v9;
      }

      v44 = v6 + v7 * (v43 >> 16);
      v45 = v6 + v7 * HIWORD(v42);
      v46 = (v39 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v47 = (v38 >> 15) & 0x1FFFE;
      v21.i16[0] = *(v44 + v46);
      v21.i16[2] = *(v44 + v47);
      v48 = vand_s8(v21, 0xFFFF0000FFFFLL);
      v49 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v48, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v48, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v21, 9uLL), 0xF8000000F80000));
      v50 = vand_s8(vshr_n_u32(v49, 3uLL), v19);
      v51 = vorr_s8(v49, v50);
      v50.i16[0] = *(v45 + v46);
      v50.i16[2] = *(v45 + v47);
      v52 = vand_s8(v50, 0xFFFF0000FFFFLL);
      v53 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v52, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v52, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v50, 9uLL), 0xF8000000F80000));
      v54 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(v53, vand_s8(vshr_n_u32(v53, 3uLL), v19)) | 0xFF000000FF000000), (*&v51 | 0xFF000000FF000000)), vdupq_n_s16((v43 >> 1) & 0x7F80)), (*&v51 | 0xFF000000FF000000));
      *v54.i8 = vadd_s16(*v54.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v54, v54, 8uLL), *v54.i8), vdup_n_s16((v39 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v15 += v16;
      v14 += v13;
      *a3++ = vuzp1_s8(*v54.i8, *v54.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,true,true,false,true>(uint64_t result, int a2, _DWORD *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, int8x8_t a11)
{
  if (a2)
  {
    v12 = **result;
    v13 = *(*result + 16);
    v14 = *(*result + 32);
    v15 = *(*result + 36);
    v17 = *(result + 60);
    v16 = *(result + 64);
    v19 = *(result + 52);
    v18 = *(result + 56);
    result = 4294934528;
    v20 = vdup_n_s32(0x70707u);
    do
    {
      if (v19 >= v14 - 0x8000)
      {
        v21 = v14 - 0x8000;
      }

      else
      {
        v21 = v19;
      }

      if (v21 <= -32768)
      {
        v21 = -32768;
      }

      v22 = v21 + 0x8000;
      if (v19 <= 0x8000)
      {
        v23 = 0x8000;
      }

      else
      {
        v23 = v19;
      }

      v24 = v23 - 0x8000;
      if (v24 >= v14)
      {
        v24 = v14;
      }

      if (v17 >= v15 - 0x8000)
      {
        v25 = v15 - 0x8000;
      }

      else
      {
        v25 = v17;
      }

      if (v25 <= -32768)
      {
        v25 = -32768;
      }

      v26 = v25 + 0x8000;
      if (v17 <= 0x8000)
      {
        v27 = 0x8000;
      }

      else
      {
        v27 = v17;
      }

      v28 = v27 - 0x8000;
      if (v28 >= v15)
      {
        v28 = v15;
      }

      v29 = v12 + v13 * (v28 >> 16);
      v30 = v12 + v13 * HIWORD(v26);
      v31 = (v24 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v32 = (v22 >> 15) & 0x1FFFE;
      a11.i16[0] = *(v29 + v31);
      a11.i16[2] = *(v29 + v32);
      v33 = vand_s8(a11, 0xFFFF0000FFFFLL);
      v11.i16[0] = *(v30 + v31);
      v11.i16[2] = *(v30 + v32);
      v34 = vand_s8(v11, 0xFFFF0000FFFFLL);
      v35 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v33, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v33, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(a11, 9uLL), 0xF8000000F80000));
      v36 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v34, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v34, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v11, 9uLL), 0xF8000000F80000));
      v11 = vand_s8(vshr_n_u32(v36, 3uLL), v20);
      v37 = *&vorr_s8(v35, vand_s8(vshr_n_u32(v35, 3uLL), v20)) | 0xFF000000FF000000;
      v38 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(v36, v11) | 0xFF000000FF000000), v37), vdupq_n_s16((v28 >> 1) & 0x7F80)), v37);
      a11 = vuzp1_s8(vadd_s16(*v38.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v38, v38, 8uLL), *v38.i8), vdup_n_s16((v24 >> 1) & 0x7F80))), 0xFFFF0000FFFFLL);
      v19 += v18;
      v17 += v16;
      *a3++ = a11.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v6 = result[14];
    v7 = result[15];
    v8 = result[13];
    v9 = *(*result + 32);
    v10 = *(*result + 36);
    v11 = *(*result + 16);
    v12 = **result;
    if (v7 >= v10 - 0x8000)
    {
      v13 = v10 - 0x8000;
    }

    else
    {
      v13 = result[15];
    }

    if (v13 <= -32768)
    {
      v13 = -32768;
    }

    if (v7 <= 0x8000)
    {
      v7 = 0x8000;
    }

    v14 = v7 - 0x8000;
    if (v14 >= v10)
    {
      v15 = *(*result + 36);
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 + v11 * (v15 >> 16);
    v17 = v12 + v11 * ((v13 + 0x8000) >> 16);
    a4.i32[0] = (v15 >> 1) & 0x7F80;
    v18 = vdup_n_s32(0x70707u);
    do
    {
      if (v8 >= v9 - 0x8000)
      {
        v19 = v9 - 0x8000;
      }

      else
      {
        v19 = v8;
      }

      if (v19 <= -32768)
      {
        v19 = -32768;
      }

      if (v8 <= 0x8000)
      {
        v20 = 0x8000;
      }

      else
      {
        v20 = v8;
      }

      v21 = v20 - 0x8000;
      v22 = v19 + 0x8000;
      if (v21 >= v9)
      {
        v23 = v9;
      }

      else
      {
        v23 = v21;
      }

      v24 = (v23 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v25 = (v22 >> 15) & 0x1FFFE;
      v4.i16[0] = *(v16 + v24);
      v4.i16[2] = *(v16 + v25);
      result = (v17 + v25);
      v26 = vand_s8(v4, 0xFFFF0000FFFFLL);
      v5.i16[0] = *(v17 + v24);
      v5.i16[2] = *result;
      v27 = vand_s8(v5, 0xFFFF0000FFFFLL);
      v28 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v26, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v26, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v4, 9uLL), 0xF8000000F80000));
      v5 = vshl_n_s32(v5, 9uLL);
      v29 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v27, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v27, 0x600000003), 0xF800000000F8)), vand_s8(v5, 0xF8000000F80000));
      v30 = *&vorr_s8(v28, vand_s8(vshr_n_u32(v28, 3uLL), v18)) | 0xFF000000FF000000;
      v31 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(v29, vand_s8(vshr_n_u32(v29, 3uLL), v18)) | 0xFF000000FF000000), v30), a4, 0), v30);
      v4 = vuzp1_s8(vadd_s16(*v31.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v31, v31, 8uLL), *v31.i8), vdup_n_s16((v23 >> 1) & 0x7F80))), a4);
      v8 += v6;
      *a3++ = v4.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = **result;
    v5 = *(*result + 16);
    v6 = result[16];
    v8 = result[13];
    v7 = result[14];
    v9 = result[15] - 0x8000;
    v10 = vdup_n_s32(0x70707u);
    do
    {
      v11 = vadd_s32(vdup_n_s32(v8), 0x8000FFFF8000);
      v12 = v4 + v5 * (v9 >> 16);
      v13 = v4 + v5 * ((v9 + 0x10000) >> 16);
      v14 = *&vshr_n_s32(v11, 0xFuLL) & 0xFFFFFFFEFFFFFFFELL;
      result = (v12 + v14);
      v15 = (v13 + v14);
      v16 = (v13 + SHIDWORD(v14));
      LOWORD(v14) = *result;
      WORD2(v14) = *(v12 + SHIDWORD(v14));
      v17 = vand_s8(v14, 0xFFFF0000FFFFLL);
      v3.i16[0] = *v15;
      v3.i16[2] = *v16;
      v18 = vand_s8(v3, 0xFFFF0000FFFFLL);
      v19 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v17, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v17, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v14, 9uLL), 0xF8000000F80000));
      v3 = vand_s8(vshl_n_s32(v3, 9uLL), 0xF8000000F80000);
      v20 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v18, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v18, 0x600000003), 0xF800000000F8)), v3);
      v21 = *&vorr_s8(v19, vand_s8(vshr_n_u32(v19, 3uLL), v10)) | 0xFF000000FF000000;
      v22 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(v20, vand_s8(vshr_n_u32(v20, 3uLL), v10)) | 0xFF000000FF000000), v21), vdupq_n_s16((v9 >> 1) & 0x7F80)), v21);
      v8 += v7;
      *a3++ = vuzp1_s8(vadd_s16(*v22.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v22, v22, 8uLL), *v22.i8), vdup_n_s16((v11.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v9 += v6;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v5 = result[14];
    v6 = result[15];
    v7 = result[13];
    v8 = *(*result + 16);
    v9 = **result;
    v10 = v6 + 0x8000;
    v11 = v6 - 0x8000;
    v12 = v9 + v8 * ((v6 - 0x8000) >> 16);
    v13 = v9 + v8 * (v10 >> 16);
    a4.i32[0] = (v11 >> 1) & 0x7F80;
    v14 = vdup_n_s32(0x70707u);
    do
    {
      v15 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v16 = *&vshr_n_s32(v15, 0xFuLL) & 0xFFFFFFFEFFFFFFFELL;
      v17 = (v13 + v16);
      v18 = (v13 + SHIDWORD(v16));
      LOWORD(v16) = *(v12 + v16);
      WORD2(v16) = *(v12 + SHIDWORD(v16));
      v19 = vand_s8(v16, 0xFFFF0000FFFFLL);
      v4.i16[0] = *v17;
      v4.i16[2] = *v18;
      v20 = vand_s8(v4, 0xFFFF0000FFFFLL);
      v21 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v19, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v19, 0x600000003), 0xF800000000F8)), vand_s8(vshl_n_s32(v16, 9uLL), 0xF8000000F80000));
      v4 = vand_s8(vshl_n_s32(v4, 9uLL), 0xF8000000F80000);
      v22 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v20, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v20, 0x600000003), 0xF800000000F8)), v4);
      v23 = *&vorr_s8(v21, vand_s8(vshr_n_u32(v21, 3uLL), v14)) | 0xFF000000FF000000;
      v24 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8((*&vorr_s8(v22, vand_s8(vshr_n_u32(v22, 3uLL), v14)) | 0xFF000000FF000000), v23), a4, 0), v23);
      v7 += v5;
      *a3++ = vuzp1_s8(vadd_s16(*v24.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v24, v24, 8uLL), *v24.i8), vdup_n_s16((v15.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v41 = v12;
    v40 = v8;
    v39 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v39;
          v12 = v41;
          v8 = v40;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v37 = *(v7 + v8 * (v36 >> 16) + ((v35 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v38 = (v37 << 6) & 0xF800 | (8 * (v37 & 0x1F)) | (((v37 >> 10) & 0x1F) << 19);
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = v38 | (v38 >> 3) & 0x7070707 | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = *(v3 + v4 * (v12 >> 16) + ((v11 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      result = ((v13 << 6) & 0xF800 | (8 * (v13 & 0x1F)) | (((v13 >> 10) & 0x1F) << 19));
      v10 += v9;
      v8 += v7;
      *a3++ = result | (result >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v9 = *(v7 + ((v8 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v10 = (v9 << 6) & 0xF800 | (8 * (v9 & 0x1F)) | (((v9 >> 10) & 0x1F) << 19);
      v4 += v3;
      *a3++ = v10 | (v10 >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = *(v3 + v4 * (v6 >> 16) + ((v8 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v10 = (v9 << 6) & 0xF800 | (8 * (v9 & 0x1F)) | (((v9 >> 10) & 0x1F) << 19);
      v8 += v7;
      v6 += v5;
      *a3++ = v10 | (v10 >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Host,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = *(v5 + ((v4 >> 15) & 0xFFFFFFFFFFFFFFFELL));
      v7 = (v6 << 6) & 0xF800 | (8 * (v6 & 0x1F)) | (((v6 >> 10) & 0x1F) << 19);
      v4 += v3;
      *a3++ = v7 | (v7 >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Rev,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = 1.0;
    v20 = vdup_n_s32(0x70707u);
    v59 = vdup_n_s32(0x3F7FFFFFu);
    v60 = vdup_n_s32(0x37800000u);
    v58 = vdup_n_s32(0x47800000u);
    v63 = v8;
    v64 = v11;
    v62 = v15;
    v61 = result;
    do
    {
      v21.f32[0] = (v19 / v12) * v16;
      v21.f32[1] = (v19 / v12) * v14;
      v22 = vcvt_s32_f32(v21);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v36 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v60, *(v5 + 10)));
          v27 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v36, vrndm_f32(v36)), v59)), vmul_f32(v58, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v28 = vcvt_f32_s32(v22);
          v29 = vcvt_f32_s32(*(v5 + 8));
          v30 = vmul_f32(*(result + 84), v29);
          v31 = vmul_f32(*(result + 92), v29);
          v32 = vbsl_s8(vcgt_f32(v28, v31), v31, v28);
          v27 = vbsl_s8(vcgt_f32(v30, v32), v30, v32);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v33 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v22));
          v34 = vmul_f32(v33, v33);
          v35 = vadd_f32(vdup_lane_s32(v34, 1), v34);
          *v34.i32 = fmaxf(vaddv_f32(v34), 0.00001);
          v34.i32[0] = vmul_f32(v35, vrsqrte_f32(vdup_lane_s32(v34, 0))).u32[0];
          v34.i32[1] = 0.5;
          v27 = vmul_f32(v34, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v23 = v7;
          v24 = v13;
          v25 = atan2f(v5[11] * v22.i32[1], v5[10] * v22.i32[0]);
          v19 = 1.0;
          v18 = v9 - 0x8000;
          v15 = v62;
          v8 = v63;
          v13 = v24;
          v11 = v64;
          v7 = v23;
          result = v61;
          v26.i32[1] = 1056964608;
          v26.f32[0] = (v25 * -10430.0) + 32768.0;
          v27 = vmul_f32(v26, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v27);
        }
      }

      v37 = v22.i32[0];
      if (v22.i32[0] >= v17)
      {
        v38 = v17;
      }

      else
      {
        v38 = v22.i32[0];
      }

      if (v38 <= -32768)
      {
        v38 = -32768;
      }

      v39 = v38 + 0x8000;
      if (v22.i32[0] <= 0x8000)
      {
        v37 = 0x8000;
      }

      v40 = v37 - 0x8000;
      if (v40 >= v8)
      {
        v40 = v8;
      }

      v41 = v22.i32[1];
      if (v22.i32[1] >= v18)
      {
        v42 = v18;
      }

      else
      {
        v42 = v22.i32[1];
      }

      if (v42 <= -32768)
      {
        v42 = -32768;
      }

      v43 = v42 + 0x8000;
      if (v22.i32[1] <= 0x8000)
      {
        v41 = 0x8000;
      }

      v44 = v41 - 0x8000;
      if (v44 >= v9)
      {
        v44 = v9;
      }

      v45 = v6 + v7 * (v44 >> 16);
      v46 = v6 + v7 * HIWORD(v43);
      v47 = (v40 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v48 = (v39 >> 15) & 0x1FFFE;
      v22.i16[0] = *(v45 + v47);
      v22.i16[2] = *(v45 + v48);
      v49 = vrev32_s8(v22);
      v50 = vshr_n_u32(v49, 0x10uLL);
      v51 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v50, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v50, 0x600000003), 0xF800000000F8)), vand_s8(vshr_n_u32(v49, 7uLL), 0xF8000000F80000));
      v52 = vand_s8(vshr_n_u32(v51, 3uLL), v20);
      v53 = vorr_s8(v51, v52);
      v52.i16[0] = *(v46 + v47);
      v52.i16[2] = *(v46 + v48);
      v54 = vrev32_s8(v52);
      v55 = vshr_n_u32(v54, 0x10uLL);
      v56 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v55, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v55, 0x600000003), 0xF800000000F8)), vand_s8(vshr_n_u32(v54, 7uLL), 0xF8000000F80000));
      v57 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(v56, vand_s8(vshr_n_u32(v56, 3uLL), v20)) | 0xFF000000FF000000), (*&v53 | 0xFF000000FF000000)), vdupq_n_s16((v44 >> 1) & 0x7F80)), (*&v53 | 0xFF000000FF000000));
      *v57.i8 = vadd_s16(*v57.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v57, v57, 8uLL), *v57.i8), vdup_n_s16((v40 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v57.i8, *v57.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Rev,unsigned int,true,true,false,true>(uint64_t result, int a2, _DWORD *a3, double a4, double a5, double a6, double a7, double a8, double a9, int8x8_t a10)
{
  if (a2)
  {
    v11 = **result;
    v12 = *(*result + 16);
    v13 = *(*result + 32);
    v14 = *(*result + 36);
    v16 = *(result + 60);
    v15 = *(result + 64);
    v18 = *(result + 52);
    v17 = *(result + 56);
    result = 4294934528;
    v19 = vdup_n_s32(0x70707u);
    do
    {
      if (v18 >= v13 - 0x8000)
      {
        v20 = v13 - 0x8000;
      }

      else
      {
        v20 = v18;
      }

      if (v20 <= -32768)
      {
        v21 = -32768;
      }

      else
      {
        v21 = v20;
      }

      if (v18 <= 0x8000)
      {
        v22 = 0x8000;
      }

      else
      {
        v22 = v18;
      }

      v23 = v22 - 0x8000;
      if (v23 >= v13)
      {
        v23 = v13;
      }

      if (v16 >= v14 - 0x8000)
      {
        v24 = v14 - 0x8000;
      }

      else
      {
        v24 = v16;
      }

      if (v24 <= -32768)
      {
        v24 = -32768;
      }

      if (v16 <= 0x8000)
      {
        v25 = 0x8000;
      }

      else
      {
        v25 = v16;
      }

      v26 = v25 - 0x8000;
      v27 = v24 + 0x8000;
      if (v26 >= v14)
      {
        v28 = v14;
      }

      else
      {
        v28 = v26;
      }

      v29 = v11 + v12 * (v28 >> 16);
      v30 = v11 + v12 * HIWORD(v27);
      v31 = (v23 >> 15) & 0xFFFFFFFFFFFFFFFELL;
      v32 = ((v21 + 0x8000) >> 15) & 0x1FFFE;
      a10.i16[0] = *(v29 + v31);
      a10.i16[2] = *(v29 + v32);
      v33 = vrev32_s8(a10);
      v34 = vshr_n_u32(v33, 0x10uLL);
      v10.i16[0] = *(v30 + v31);
      v10.i16[2] = *(v30 + v32);
      v35 = vrev32_s8(v10);
      v36 = vshr_n_u32(v35, 0x10uLL);
      v37 = vorr_s8(vorr_s8(vand_s8(vshl_u32(v34, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v34, 0x600000003), 0xF800000000F8)), vand_s8(vshr_n_u32(v33, 7uLL), 0xF8000000F80000));
      v38 = vorr_s8(vand_s8(vshl_u32(v36, 0x300000006), 0xF80000F800), vand_s8(vshl_u32(v36, 0x600000003), 0xF800000000F8));
      v10 = vand_s8(vshr_n_u32(v37, 3uLL), v19);
      v39 = vorr_s8(v38, vand_s8(vshr_n_u32(v35, 7uLL), 0xF8000000F80000));
      v40 = *&vorr_s8(v37, v10) | 0xFF000000FF000000;
      v41 = vaddw_u8(vqrdmulhq_s16(vsubl_u8((*&vorr_s8(v39, vand_s8(vshr_n_u32(v39, 3uLL), v19)) | 0xFF000000FF000000), v40), vdupq_n_s16((v28 >> 1) & 0x7F80)), v40);
      a10 = vuzp1_s8(vadd_s16(*v41.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v41, v41, 8uLL), *v41.i8), vdup_n_s16((v23 >> 1) & 0x7F80))), 0x300000006);
      v18 += v17;
      v16 += v15;
      *a3++ = a10.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Rev,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v41 = v12;
    v40 = v8;
    v39 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v39;
          v12 = v41;
          v8 = v40;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v37 = bswap32(*(v7 + v8 * (v36 >> 16) + ((v35 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      v38 = (v37 >> 13) & 0xF8 | (v37 >> 10) & 0xF800 | (v37 >> 7) & 0xF80000;
      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = v38 | (v38 >> 3) & 0x7070707 | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::RGB5_Rev,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v13 = bswap32(*(v3 + v4 * (v12 >> 16) + ((v11 >> 15) & 0xFFFFFFFFFFFFFFFELL)));
      result = ((v13 >> 10) & 0xF800);
      v14 = (v13 >> 13) & 0xF8 | result | (v13 >> 7) & 0xF80000;
      v10 += v9;
      v8 += v7;
      *a3++ = v14 | (v14 >> 3) & 0x7070707 | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v55 = v8;
    v56 = v11;
    v54 = v15;
    v53 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v54;
          v8 = v55;
          v13 = v25;
          v11 = v56;
          v7 = v24;
          result = v53;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      v42 = v23.i32[1];
      if (v41 >= v8)
      {
        v41 = v8;
      }

      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = (v40 >> 14) & 0x3FFFC;
      v50.i32[0] = *(v47 + v48) | 0xFF000000;
      v50.i32[1] = *(v47 + v49) | 0xFF000000;
      v51.i32[0] = *(v46 + v48) | 0xFF000000;
      v51.i32[1] = *(v46 + v49) | 0xFF000000;
      v52 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v50, v51), vdupq_n_s16((v45 >> 1) & 0x7F80)), v51);
      *v52.i8 = vadd_s16(*v52.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v52, v52, 8uLL), *v52.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v52.i8, *v52.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v11 = -32768;
      }

      if (v10 <= 0x8000)
      {
        v12 = 0x8000;
      }

      else
      {
        v12 = v10;
      }

      v13 = v12 - 0x8000;
      if (v13 >= v5)
      {
        v13 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v14 = v6 - 0x8000;
      }

      else
      {
        v14 = v8;
      }

      if (v14 <= -32768)
      {
        v14 = -32768;
      }

      v15 = v14 + 0x8000;
      if (v8 <= 0x8000)
      {
        v16 = 0x8000;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16 - 0x8000;
      if (v17 >= v6)
      {
        v17 = v6;
      }

      v18 = v3 + v4 * (v17 >> 16);
      v19 = v3 + v4 * HIWORD(v15);
      v20 = (v13 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v21 = ((v11 + 0x8000) >> 14) & 0x3FFFC;
      v22.i32[0] = *(v19 + v20) | 0xFF000000;
      v22.i32[1] = *(v19 + v21) | 0xFF000000;
      v23.i32[0] = *(v18 + v20) | 0xFF000000;
      v23.i32[1] = *(v18 + v21) | 0xFF000000;
      v24 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v22, v23), vdupq_n_s16((v17 >> 1) & 0x7F80)), v23);
      *v24.i8 = vadd_s16(*v24.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v24, v24, 8uLL), *v24.i8), vdup_n_s16((v13 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v24.i8, *v24.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = result[15];
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v16 = v7 - 0x8000;
      }

      else
      {
        v16 = v6;
      }

      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      if (v6 <= 0x8000)
      {
        v17 = 0x8000;
      }

      else
      {
        v17 = v6;
      }

      v18 = v16 + 0x8000;
      v19 = v17 - 0x8000;
      if (v19 >= v7)
      {
        v19 = v7;
      }

      result = ((v19 >> 14) & 0xFFFFFFFFFFFFFFFCLL);
      v20 = (v18 >> 14) & 0x3FFFC;
      v21.i32[0] = *(result + v15) | 0xFF000000;
      v21.i32[1] = *(v15 + v20) | 0xFF000000;
      v22.i32[0] = *(result + v14) | 0xFF000000;
      v22.i32[1] = *(v14 + v20) | 0xFF000000;
      v23 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v21, v22), a4, 0), v22);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v23.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v23, v23, 8uLL), *v23.i8), vdup_n_s16((v19 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = result[16];
    v7 = result[13];
    v6 = result[14];
    v8 = result[15] - 0x8000;
    do
    {
      v9 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v10 = v3 + v4 * (v8 >> 16);
      v11 = v3 + v4 * ((v8 + 0x10000) >> 16);
      v12 = vshr_n_s32(v9, 0xEuLL);
      result = (v10 + (v12.i32[1] & 0xFFFFFFFC));
      v13.i32[0] = *(v11 + (v12.i32[0] & 0xFFFFFFFC)) | 0xFF000000;
      v13.i32[1] = *(v11 + (v12.i32[1] & 0xFFFFFFFC)) | 0xFF000000;
      v12.i32[0] = *(v10 + (v12.i32[0] & 0xFFFFFFFC)) | 0xFF000000;
      v12.i32[1] = *result | 0xFF000000;
      v14 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v13, v12), vdupq_n_s16((v8 >> 1) & 0x7F80)), v12);
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v14.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v14, v14, 8uLL), *v14.i8), vdup_n_s16((v9.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v14 = vshr_n_s32(v13, 0xEuLL);
      v15.i32[0] = *(v12 + (v14.i32[0] & 0xFFFFFFFC)) | 0xFF000000;
      v15.i32[1] = *(v12 + (v14.i32[1] & 0xFFFFFFFC)) | 0xFF000000;
      v14.i32[0] = *(v11 + (v14.i32[0] & 0xFFFFFFFC)) | 0xFF000000;
      v14.i32[1] = *(v11 + (v14.i32[1] & 0xFFFFFFFC)) | 0xFF000000;
      v16 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v15, v14), a4, 0), v14);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v16.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v16, v16, 8uLL), *v16.i8), vdup_n_s16((v13.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,true,true,true,false>(uint64_t **a1, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = *(v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) | 0xFF000000;
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,true,true,false,false>(int *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = *(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,false,true,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v4 += v3;
      *a3++ = *(v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) | 0xFF000000;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,true,false,false,false>(_DWORD *result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = *(v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) | 0xFF000000;
      v8 += v7;
      v6 += v5;
      *a3++ = v9;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Host,unsigned int,false,false,false,false>(uint64_t result, int a2, unsigned int *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = *(v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) | 0xFF000000;
      v4 += v3;
      *a3++ = v6;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Rev,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v56 = v8;
    v57 = v11;
    v55 = v15;
    v54 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v55;
          v8 = v56;
          v13 = v25;
          v11 = v57;
          v7 = v24;
          result = v54;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      if (v41 >= v8)
      {
        v41 = v8;
      }

      v42 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = (v40 >> 14) & 0x3FFFC;
      v50.i32[0] = *(v46 + v48) | 0xFF;
      v50.i32[1] = *(v46 + v49) | 0xFF;
      v51 = vrev32_s8(v50);
      v52.i32[0] = *(v47 + v48) | 0xFF;
      v52.i32[1] = *(v47 + v49) | 0xFF;
      v53 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vrev32_s8(v52), v51), vdupq_n_s16((v45 >> 1) & 0x7F80)), v51);
      *v53.i8 = vadd_s16(*v53.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v53, v53, 8uLL), *v53.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Rev,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v11 = -32768;
      }

      v12 = v11 + 0x8000;
      if (v10 <= 0x8000)
      {
        v13 = 0x8000;
      }

      else
      {
        v13 = v10;
      }

      v14 = v13 - 0x8000;
      if (v14 >= v5)
      {
        v14 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v15 = v6 - 0x8000;
      }

      else
      {
        v15 = v8;
      }

      if (v15 <= -32768)
      {
        v15 = -32768;
      }

      v16 = v15 + 0x8000;
      if (v8 <= 0x8000)
      {
        v17 = 0x8000;
      }

      else
      {
        v17 = v8;
      }

      v18 = v17 - 0x8000;
      if (v18 >= v6)
      {
        v18 = v6;
      }

      v19 = v3 + v4 * (v18 >> 16);
      v20 = v3 + v4 * HIWORD(v16);
      v21 = (v12 >> 14) & 0x3FFFC;
      v22 = (v14 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v23.i32[0] = *(v20 + v22) | 0xFF;
      v23.i32[1] = *(v20 + v21) | 0xFF;
      v24.i32[0] = *(v19 + v22) | 0xFF;
      v24.i32[1] = *(v19 + v21) | 0xFF;
      v25 = vrev32_s8(v24);
      v26 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vrev32_s8(v23), v25), vdupq_n_s16((v18 >> 1) & 0x7F80)), v25);
      *v26.i8 = vadd_s16(*v26.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v26, v26, 8uLL), *v26.i8), vdup_n_s16((v14 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v26.i8, *v26.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Rev,unsigned int,true,true,true,false>(uint64_t **a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = bswap32(*(v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) | 0xFF);
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::XRGB8_Rev,unsigned int,true,true,false,false>(int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = bswap32(*(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL)) | 0xFF);
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v55 = v8;
    v56 = v11;
    v54 = v15;
    v53 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v54;
          v8 = v55;
          v13 = v25;
          v11 = v56;
          v7 = v24;
          result = v53;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      if (v41 >= v8)
      {
        v41 = v8;
      }

      v42 = v23.i32[1];
      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = (v40 >> 14) & 0x3FFFC;
      v50.i32[0] = *(v46 + v48);
      v50.i32[1] = *(v46 + v49);
      v51.i32[0] = *(v47 + v48);
      v51.i32[1] = *(v47 + v49);
      v52 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v51, v50), vdupq_n_s16((v45 >> 1) & 0x7F80)), v50);
      *v52.i8 = vadd_s16(*v52.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v52, v52, 8uLL), *v52.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v52.i8, *v52.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v11 = -32768;
      }

      if (v10 <= 0x8000)
      {
        v12 = 0x8000;
      }

      else
      {
        v12 = v10;
      }

      v13 = v12 - 0x8000;
      if (v13 >= v5)
      {
        v13 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v14 = v6 - 0x8000;
      }

      else
      {
        v14 = v8;
      }

      if (v14 <= -32768)
      {
        v14 = -32768;
      }

      if (v8 <= 0x8000)
      {
        v15 = 0x8000;
      }

      else
      {
        v15 = v8;
      }

      v16 = v15 - 0x8000;
      v17 = v14 + 0x8000;
      if (v16 >= v6)
      {
        v16 = v6;
      }

      v18 = v3 + v4 * (v16 >> 16);
      v19 = v3 + v4 * HIWORD(v17);
      v20 = (v13 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v21 = ((v11 + 0x8000) >> 14) & 0x3FFFC;
      v22.i32[0] = *(v18 + v20);
      v23.i32[0] = *(v19 + v20);
      v22.i32[1] = *(v18 + v21);
      v23.i32[1] = *(v19 + v21);
      v24 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v23, v22), vdupq_n_s16((v16 >> 1) & 0x7F80)), v22);
      *v24.i8 = vadd_s16(*v24.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v24, v24, 8uLL), *v24.i8), vdup_n_s16((v13 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v24.i8, *v24.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,false,true,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 32);
    v8 = *(*result + 36);
    v9 = *(*result + 16);
    v10 = **result;
    if (v5 >= v8 - 0x8000)
    {
      v11 = v8 - 0x8000;
    }

    else
    {
      v11 = result[15];
    }

    if (v11 <= -32768)
    {
      v11 = -32768;
    }

    if (v5 <= 0x8000)
    {
      v5 = 0x8000;
    }

    v12 = v5 - 0x8000;
    if (v12 >= v8)
    {
      v13 = *(*result + 36);
    }

    else
    {
      v13 = v12;
    }

    v14 = v10 + v9 * (v13 >> 16);
    v15 = v10 + v9 * ((v11 + 0x8000) >> 16);
    a4.i32[0] = (v13 >> 1) & 0x7F80;
    do
    {
      if (v6 >= v7 - 0x8000)
      {
        v16 = v7 - 0x8000;
      }

      else
      {
        v16 = v6;
      }

      if (v16 <= -32768)
      {
        v16 = -32768;
      }

      v17 = v16 + 0x8000;
      if (v6 <= 0x8000)
      {
        v18 = 0x8000;
      }

      else
      {
        v18 = v6;
      }

      v19 = v18 - 0x8000;
      if (v19 >= v7)
      {
        v19 = v7;
      }

      result = ((v19 >> 14) & 0xFFFFFFFFFFFFFFFCLL);
      v20 = (v17 >> 14) & 0x3FFFC;
      v21.i32[0] = *(result + v14);
      v21.i32[1] = *(v14 + v20);
      v22.i32[0] = *(result + v15);
      v22.i32[1] = *(v15 + v20);
      v23 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v22, v21), a4, 0), v21);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v23.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v23, v23, 8uLL), *v23.i8), vdup_n_s16((v19 >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

unsigned int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,true,false,false,true>(unsigned int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = result[16];
    v7 = result[13];
    v6 = result[14];
    v8 = result[15] - 0x8000;
    do
    {
      v9 = vadd_s32(vdup_n_s32(v7), 0x8000FFFF8000);
      v10 = v3 + v4 * (v8 >> 16);
      v11 = vshr_n_s32(v9, 0xEuLL);
      v12 = v3 + v4 * ((v8 + 0x10000) >> 16);
      v13 = v11.i32[0] & 0xFFFFFFFC;
      result = (v10 + (v11.i32[1] & 0xFFFFFFFC));
      v14 = (v12 + (v11.i32[1] & 0xFFFFFFFC));
      v11.i32[0] = *(v10 + (v11.i32[0] & 0xFFFFFFFC));
      v11.i32[1] = *result;
      v15.i32[0] = *(v12 + v13);
      v15.i32[1] = *v14;
      v16 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(v15, v11), vdupq_n_s16((v8 >> 1) & 0x7F80)), v11);
      v7 += v6;
      *a3++ = vuzp1_s8(vadd_s16(*v16.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v16, v16, 8uLL), *v16.i8), vdup_n_s16((v9.u16[0] >> 1) & 0x7F80))), 0x8000FFFF8000).u32[0];
      v8 += v5;
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,false,false,false,true>(_DWORD *result, int a2, _DWORD *a3, int16x4_t a4)
{
  if (a2)
  {
    v4 = result[14];
    v5 = result[15];
    v6 = result[13];
    v7 = *(*result + 16);
    v8 = **result;
    v9 = v5 + 0x8000;
    v10 = v5 - 0x8000;
    v11 = v8 + v7 * ((v5 - 0x8000) >> 16);
    v12 = v8 + v7 * (v9 >> 16);
    a4.i32[0] = (v10 >> 1) & 0x7F80;
    do
    {
      v13 = vadd_s32(vdup_n_s32(v6), 0x8000FFFF8000);
      v14 = vshr_n_s32(v13, 0xEuLL);
      v15 = v14.i32[0] & 0xFFFFFFFC;
      v16 = v14.i32[1] & 0xFFFFFFFC;
      v14.i32[0] = *(v11 + (v14.i32[0] & 0xFFFFFFFC));
      v14.i32[1] = *(v11 + (v14.i32[1] & 0xFFFFFFFC));
      v17.i32[0] = *(v12 + v15);
      v17.i32[1] = *(v12 + v16);
      v18 = vaddw_u8(vqrdmulhq_lane_s16(vsubl_u8(v17, v14), a4, 0), v14);
      v6 += v4;
      *a3++ = vuzp1_s8(vadd_s16(*v18.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v18, v18, 8uLL), *v18.i8), vdup_n_s16((v13.u16[0] >> 1) & 0x7F80))), a4).u32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,true,true,true,false>(uint64_t **a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = *(v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,true,true,false,false>(int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = *(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,false,true,false,false>(_DWORD *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = result[14];
    v4 = result[13];
    v5 = *(*result + 32);
    v6 = result[15] & ~(result[15] >> 31);
    if (v6 >= *(*result + 36))
    {
      v6 = *(*result + 36);
    }

    v7 = **result + *(*result + 16) * (v6 >> 16);
    do
    {
      v8 = v4 & ~(v4 >> 31);
      if (v8 >= v5)
      {
        v8 = v5;
      }

      v4 += v3;
      *a3++ = *(v7 + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      --a2;
    }

    while (a2);
  }

  return result;
}

_DWORD *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,true,false,false,false>(_DWORD *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v6 = result[15];
    v5 = result[16];
    v8 = result[13];
    v7 = result[14];
    do
    {
      v9 = *(v3 + v4 * (v6 >> 16) + ((v8 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v8 += v7;
      v6 += v5;
      *a3++ = v9;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Host,unsigned int,false,false,false,false>(uint64_t result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = *(result + 52);
    v3 = *(result + 56);
    v5 = **result + *(*result + 16) * *(result + 62);
    do
    {
      v6 = *(v5 + ((v4 >> 14) & 0xFFFFFFFFFFFFFFFCLL));
      v4 += v3;
      *a3++ = v6;
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t **CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Rev,unsigned int,true,true,true,true>(uint64_t **result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = *result;
    v6 = **result;
    v7 = (*result)[2];
    v8 = *(*result + 8);
    v9 = *(*result + 9);
    v10 = *(result[3] + 3);
    v11 = *(result + 48);
    v12 = *(result[2] + 3);
    v14 = *(result + 15);
    v13 = *(result + 16);
    v16 = *(result + 13);
    v15 = *(result + 14);
    v17 = v8 - 0x8000;
    v18 = v9 - 0x8000;
    v19 = vdup_n_s32(0x37800000u);
    v20 = vdup_n_s32(0x3F7FFFFFu);
    v21 = vdup_n_s32(0x47800000u);
    v56 = v8;
    v57 = v11;
    v55 = v15;
    v54 = result;
    do
    {
      v22.f32[0] = (1.0 / v12) * v16;
      v22.f32[1] = (1.0 / v12) * v14;
      v23 = vcvt_s32_f32(v22);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v37 = vmul_f32(vcvt_f32_s32(v23), vmul_f32(v19, *(v5 + 10)));
          v28 = vmul_f32(vmla_f32(*(result + 92), *(result + 84), vminnm_f32(vsub_f32(v37, vrndm_f32(v37)), v20)), vmul_f32(v21, vcvt_f32_u32(*(v5 + 6))));
          goto LABEL_12;
        }

        if (v11 == 5)
        {
          v29 = vcvt_f32_s32(v23);
          v30 = vcvt_f32_s32(*(v5 + 8));
          v31 = vmul_f32(*(result + 84), v30);
          v32 = vmul_f32(*(result + 92), v30);
          v33 = vbsl_s8(vcgt_f32(v29, v32), v32, v29);
          v28 = vbsl_s8(vcgt_f32(v31, v33), v31, v33);
          goto LABEL_12;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v34 = vmul_f32(*(v5 + 10), vcvt_f32_s32(v23));
          v35 = vmul_f32(v34, v34);
          v36 = vadd_f32(vdup_lane_s32(v35, 1), v35);
          *v35.i32 = fmaxf(vaddv_f32(v35), 0.00001);
          v35.i32[0] = vmul_f32(v36, vrsqrte_f32(vdup_lane_s32(v35, 0))).u32[0];
          v35.i32[1] = 0.5;
          v28 = vmul_f32(v35, vcvt_f32_u32(*(v5 + 6)));
          goto LABEL_12;
        }

        if (v11 == 2)
        {
          v24 = v7;
          v25 = v13;
          v26 = atan2f(v5[11] * v23.i32[1], v5[10] * v23.i32[0]);
          v18 = v9 - 0x8000;
          v15 = v55;
          v8 = v56;
          v13 = v25;
          v11 = v57;
          v7 = v24;
          result = v54;
          v27.i32[1] = 1056964608;
          v27.f32[0] = (v26 * -10430.0) + 32768.0;
          v28 = vmul_f32(v27, vcvt_f32_u32(*(v5 + 6)));
LABEL_12:
          v23 = vcvt_s32_f32(v28);
        }
      }

      v38 = v23.i32[0];
      if (v23.i32[0] >= v17)
      {
        v39 = v17;
      }

      else
      {
        v39 = v23.i32[0];
      }

      if (v39 <= -32768)
      {
        v39 = -32768;
      }

      v40 = v39 + 0x8000;
      if (v23.i32[0] <= 0x8000)
      {
        v38 = 0x8000;
      }

      v41 = v38 - 0x8000;
      v42 = v23.i32[1];
      if (v41 >= v8)
      {
        v41 = v8;
      }

      if (v23.i32[1] >= v18)
      {
        v43 = v18;
      }

      else
      {
        v43 = v23.i32[1];
      }

      if (v43 <= -32768)
      {
        v43 = -32768;
      }

      v44 = v43 + 0x8000;
      if (v23.i32[1] <= 0x8000)
      {
        v42 = 0x8000;
      }

      v45 = v42 - 0x8000;
      if (v45 >= v9)
      {
        v45 = v9;
      }

      v46 = v6 + v7 * (v45 >> 16);
      v47 = v6 + v7 * HIWORD(v44);
      v48 = (v41 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v49 = (v40 >> 14) & 0x3FFFC;
      v50.i32[0] = *(v46 + v48);
      v50.i32[1] = *(v46 + v49);
      v51 = vrev32_s8(v50);
      v52.i32[0] = *(v47 + v48);
      v52.i32[1] = *(v47 + v49);
      v53 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vrev32_s8(v52), v51), vdupq_n_s16((v45 >> 1) & 0x7F80)), v51);
      *v53.i8 = vadd_s16(*v53.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v53, v53, 8uLL), *v53.i8), vdup_n_s16((v41 >> 1) & 0x7F80)));
      v12 = v12 + v10;
      v16 += v15;
      v14 += v13;
      *a3++ = vuzp1_s8(*v53.i8, *v53.i8).u32[0];
      --v4;
    }

    while (v4);
  }

  return result;
}

int8x8_t CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Rev,unsigned int,true,true,false,true>(int *a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **a1;
    v4 = *(*a1 + 16);
    v5 = *(*a1 + 32);
    v6 = *(*a1 + 36);
    v8 = a1[15];
    v7 = a1[16];
    v10 = a1[13];
    v9 = a1[14];
    do
    {
      if (v10 >= v5 - 0x8000)
      {
        v11 = v5 - 0x8000;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= -32768)
      {
        v11 = -32768;
      }

      if (v10 <= 0x8000)
      {
        v12 = 0x8000;
      }

      else
      {
        v12 = v10;
      }

      v13 = v12 - 0x8000;
      if (v13 >= v5)
      {
        v13 = v5;
      }

      if (v8 >= v6 - 0x8000)
      {
        v14 = v6 - 0x8000;
      }

      else
      {
        v14 = v8;
      }

      if (v14 <= -32768)
      {
        v14 = -32768;
      }

      v15 = v14 + 0x8000;
      if (v8 <= 0x8000)
      {
        v16 = 0x8000;
      }

      else
      {
        v16 = v8;
      }

      v17 = v16 - 0x8000;
      if (v17 >= v6)
      {
        v17 = v6;
      }

      v18 = v3 + v4 * (v17 >> 16);
      v19 = v3 + v4 * HIWORD(v15);
      v20 = (v13 >> 14) & 0xFFFFFFFFFFFFFFFCLL;
      v21 = ((v11 + 0x8000) >> 14) & 0x3FFFC;
      v22.i32[0] = *(v18 + v20);
      v23.i32[0] = *(v19 + v20);
      v23.i32[1] = *(v19 + v21);
      v22.i32[1] = *(v18 + v21);
      v24 = vrev32_s8(v22);
      v25 = vaddw_u8(vqrdmulhq_s16(vsubl_u8(vrev32_s8(v23), v24), vdupq_n_s16((v17 >> 1) & 0x7F80)), v24);
      *v25.i8 = vadd_s16(*v25.i8, vqrdmulh_s16(vsub_s16(*&vextq_s8(v25, v25, 8uLL), *v25.i8), vdup_n_s16((v13 >> 1) & 0x7F80)));
      result = vuzp1_s8(*v25.i8, *v25.i8);
      v10 += v9;
      v8 += v7;
      *a3++ = result.i32[0];
      --a2;
    }

    while (a2);
  }

  return result;
}

void CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Rev,unsigned int,true,true,true,false>(uint64_t **a1, int a2, _DWORD *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = *a1;
    v7 = **a1;
    v8 = (*a1)[2];
    v9 = *(*a1 + 8);
    v10 = *(*a1 + 9);
    v11 = *(a1[3] + 3);
    v12 = *(a1 + 48);
    v13 = *(a1[2] + 3);
    v15 = *(a1 + 15);
    v14 = *(a1 + 16);
    v17 = *(a1 + 13);
    v16 = *(a1 + 14);
    v18 = vdup_n_s32(0x37800000u);
    v19 = vdup_n_s32(0x3F7FFFFFu);
    v20 = vdup_n_s32(0x47800000u);
    v39 = v12;
    v38 = v8;
    v37 = v16;
    do
    {
      v21.f32[0] = (1.0 / v13) * v17;
      v21.f32[1] = (1.0 / v13) * v15;
      v22 = vcvt_s32_f32(v21);
      if (v12 > 2)
      {
        if (v12 == 3)
        {
          v34 = vmul_f32(vcvt_f32_s32(v22), vmul_f32(v18, *(v6 + 10)));
          v25 = vmul_f32(vmla_f32(*(a1 + 92), *(a1 + 84), vminnm_f32(vsub_f32(v34, vrndm_f32(v34)), v19)), vmul_f32(v20, vcvt_f32_u32(*(v6 + 6))));
          goto LABEL_12;
        }

        if (v12 == 5)
        {
          v26 = vcvt_f32_s32(v22);
          v27 = vcvt_f32_s32(*(v6 + 8));
          v28 = vmul_f32(*(a1 + 84), v27);
          v29 = vmul_f32(*(a1 + 92), v27);
          v30 = vbsl_s8(vcgt_f32(v26, v29), v29, v26);
          v25 = vbsl_s8(vcgt_f32(v28, v30), v28, v30);
          goto LABEL_12;
        }
      }

      else
      {
        if (v12 == 1)
        {
          v31 = vmul_f32(*(v6 + 10), vcvt_f32_s32(v22));
          v32 = vmul_f32(v31, v31);
          v33 = vadd_f32(vdup_lane_s32(v32, 1), v32);
          *v32.i32 = fmaxf(vaddv_f32(v32), 0.00001);
          v32.i32[0] = vmul_f32(v33, vrsqrte_f32(vdup_lane_s32(v32, 0))).u32[0];
          v32.i32[1] = 0.5;
          v25 = vmul_f32(v32, vcvt_f32_u32(*(v6 + 6)));
          goto LABEL_12;
        }

        if (v12 == 2)
        {
          v23 = atan2f(v6[11] * v22.i32[1], v6[10] * v22.i32[0]);
          v16 = v37;
          v12 = v39;
          v8 = v38;
          v24.i32[1] = 1056964608;
          v24.f32[0] = (v23 * -10430.0) + 32768.0;
          v25 = vmul_f32(v24, vcvt_f32_u32(*(v6 + 6)));
LABEL_12:
          v22 = vcvt_s32_f32(v25);
        }
      }

      v35 = v22.i32[0] & ~(v22.i32[0] >> 31);
      if (v35 >= v9)
      {
        v35 = v9;
      }

      v36 = v22.i32[1] & ~(v22.i32[1] >> 31);
      if (v36 >= v10)
      {
        v36 = v10;
      }

      v13 = v13 + v11;
      v17 += v16;
      v15 += v14;
      *a3++ = bswap32(*(v7 + v8 * (v36 >> 16) + ((v35 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      --v4;
    }

    while (v4);
  }
}

int *CA::OGL::SW::image_sampler<CA::OGL::SW::Format::ARGB8_Rev,unsigned int,true,true,false,false>(int *result, int a2, _DWORD *a3)
{
  if (a2)
  {
    v3 = **result;
    v4 = *(*result + 16);
    v5 = *(*result + 32);
    v6 = *(*result + 36);
    v8 = result[15];
    v7 = result[16];
    v10 = result[13];
    v9 = result[14];
    do
    {
      v11 = v10 & ~(v10 >> 31);
      if (v11 >= v5)
      {
        v11 = v5;
      }

      v12 = v8 & ~(v8 >> 31);
      if (v12 >= v6)
      {
        v12 = v6;
      }

      v10 += v9;
      v8 += v7;
      *a3++ = bswap32(*(v3 + v4 * (v12 >> 16) + ((v11 >> 14) & 0xFFFFFFFFFFFFFFFCLL)));
      --a2;
    }

    while (a2);
  }

  return result;
}

uint64_t CA::OGL::SWContext::get(uint64_t a1, int a2)
{
  result = 1;
  if (a2 <= 6)
  {
    if (a2 <= 3)
    {
      if ((a2 - 1) < 2)
      {
        return 4096;
      }

      if (a2 == 3)
      {
        return 3;
      }

      return a2 == 16;
    }

    if (a2 != 4)
    {
      if (a2 != 6)
      {
        return a2 == 16;
      }

      return result;
    }

    return 0x4000;
  }

  if (a2 > 20)
  {
    if (a2 != 21)
    {
      if (a2 == 28)
      {
        return 0;
      }

      return a2 == 16;
    }

    return result;
  }

  if (a2 == 7)
  {
    return 0x4000;
  }

  if (a2 != 8)
  {
    return a2 == 16;
  }

  return result;
}

void CA::OGL::SWContext::~SWContext(CA::OGL::SWContext *this)
{
  CA::OGL::Context::~Context(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

os_log_t ___Z21x_log_get_transactionv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Transaction");
  x_log_get_transaction(void)::log = result;
  return result;
}

os_log_t ___Z28x_log_get_transaction_stallsv_block_invoke()
{
  result = os_log_create("com.apple.coreanimation", "Transaction.Stalls");
  x_log_get_transaction_stalls(void)::log = result;
  return result;
}

uint64_t X::HashTable<unsigned int,CA::KTraceEntry *>::foreach(std::function<void ()(unsigned int,CA::KTraceEntry *)>)::{lambda(void *,void *,void *)#1}::__invoke(int a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = a1;
  v5 = a2;
  v3 = *(a3 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void std::__function::__func<CA::Transaction::clear_ktrace_values(void)::$_0,std::allocator<CA::Transaction::clear_ktrace_values(void)::$_0>,void ()(unsigned int,CA::KTraceEntry *)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    kdebug_trace_string();

    JUMPOUT(0x1865EA9A0);
  }
}

uint64_t CA::Transaction::ktrace_value_from_string(uint64_t a1, int a2, char *a3, int a4)
{
  v4 = 0;
  if (a3 && (BYTE12(xmmword_1ED4E980C) & 1) != 0)
  {
    v9 = *(a1 + 88);
    if (!v9)
    {
      v10 = a4;
      v9 = x_hash_table_new_(0, 0, 0, 0, 0, 0);
      a4 = v10;
      *(a1 + 88) = v9;
    }

    HIDWORD(v11) = (461845907 * ((380141568 * a2) | ((-862048943 * a2) >> 17))) ^ 0xB57AC1E;
    LODWORD(v11) = HIDWORD(v11);
    HIDWORD(v11) = (461845907 * ((380141568 * *a3) | ((-862048943 * *a3) >> 17))) ^ (5 * (v11 >> 19) - 430675100);
    LODWORD(v11) = HIDWORD(v11);
    HIDWORD(v11) = (5 * (v11 >> 19) - 430675100) ^ (461845907 * ((380141568 * a4) | ((-862048943 * a4) >> 17)));
    LODWORD(v11) = HIDWORD(v11);
    v12 = -2048144789 * ((5 * (v11 >> 19) - 430675100) ^ ((5 * (v11 >> 19) - 430675100) >> 16) ^ 0xC);
    v13 = x_hash_table_lookup(v9, (-1028477387 * (v12 ^ (v12 >> 13))) ^ ((-1028477387 * (v12 ^ (v12 >> 13))) >> 16), 0);
    if (!v13 || (v4 = *(v13 + 8)) == 0)
    {
      v4 = kdebug_trace_string();
      if (v4)
      {
        operator new();
      }
    }
  }

  return v4;
}

void CA::Transaction::free_commit_handlers_list(void *a1)
{
  v1 = a1;
  v2 = a1;
  do
  {
    _Block_release(*v2);
    v2 = v2[1];
  }

  while (v2);
  if (v1)
  {
    do
    {
      v3 = v1[1];
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

void CA::Transaction::free_batch_handlers_list(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1;
    do
    {
      _Block_release(*v2);
      v2 = v2[1];
    }

    while (v2);
    do
    {
      v3 = v1[1];
      free(v1);
      v1 = v3;
    }

    while (v3);
  }
}

uint64_t X::HashTable<CA::Layer *,CA::Layer *>::foreach(std::function<void ()(CA::Layer *,CA::Layer *)>)::{lambda(void *,void *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6[0] = a1;
  v3 = *(a3 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:nn200100]();
  }

  return (*(*v3 + 48))(v3, v6, &v5);
}

void std::__function::__func<CA::Transaction::release_thread(void *)::$_0,std::allocator<CA::Transaction::release_thread(void *)::$_0>,void ()(CA::Layer *,CA::Layer *)>::operator()(uint64_t a1, atomic_uint **a2)
{
  v2 = *a2;
  while (1)
  {
    v3 = *v2;
    if (!*v2)
    {
      break;
    }

    v4 = *v2;
    atomic_compare_exchange_strong(v2, &v4, v3 - 1);
    if (v4 == v3)
    {
      if (v3 == 1)
      {
        CA::Layer::destroy(v2);
        CA::Layer::~Layer(v2);
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v5 = malloc_zone;

        malloc_zone_free(v5, v2);
      }

      return;
    }
  }
}

void CA::CA_ABORT_ON_NON_MAIN_THREAD_TRANSACTION_PUSH(CA *this)
{
  if (x_log_get_api::once[0] != -1)
  {
    dispatch_once(x_log_get_api::once, &__block_literal_global_2145);
  }

  v1 = x_log_get_api::log;
  if (os_log_type_enabled(x_log_get_api::log, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_183AA6000, v1, OS_LOG_TYPE_ERROR, "CoreAnimation: CA_ASSERT_MAIN_THREAD_TRANSACTIONS is set and an implicit transaction wasn't created on a main thread.\n", v2, 2u);
  }

  abort();
}

BOOL CA::HDRProcessorInternal::prefers_async(CA::HDRProcessorInternal *this, const CA::Render::Update *a2)
{
  v2 = *(a2 + 130);
  if (CADeviceHasHardwareAcceleratedHDR::once != -1)
  {
    dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
  }

  v4 = v2 < 2 || v2 == 3;
  return CADeviceHasHardwareAcceleratedHDR::has_capability == 1 && v4;
}

uint64_t CA::HDRProcessorInternal::configure_display_pipe_tonemap(os_unfair_lock_s *a1, __IOSurface *a2, float a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v105 = *MEMORY[0x1E69E9840];
  if (hdrprocessing_init_once != -1)
  {
    dispatch_once_f(&hdrprocessing_init_once, 0, load_hdrprocessing_symbols);
  }

  if (hdr_handle)
  {
    v17 = objc_autoreleasePoolPush();
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v83 = 132;
    if (IOSurfaceGetBulkAttachments())
    {
      v19 = 0;
LABEL_14:
      objc_autoreleasePoolPop(v17);
      return v19;
    }

    cf = IOSurfaceCopyAllValues(a2);
    if (CFDictionaryGetValue(cf, _kHDRProcessingDolbyVisionRPUDataKey))
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v18 = x_log_get_utilities::log;
      if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v26 = "HDR surface with RPUData unsupported for display tone map";
      v27 = v18;
      v28 = 2;
      goto LABEL_77;
    }

    if (BYTE12(v87) != 18)
    {
      if (BYTE12(v87) == 16 && BYTE11(v87) <= 0xCu && ((1 << SBYTE11(v87)) & 0x1202) != 0)
      {
        v21 = &_kHDRProcessingSourceContentTypeHDR10;
        goto LABEL_23;
      }

      if (!CA_CFDictionaryGetBool(cf, @"isHLG"))
      {
        if (x_log_get_utilities::once != -1)
        {
          dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
        }

        v25 = x_log_get_utilities::log;
        if (!os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_9;
        }

        *buf = 67109376;
        *&buf[4] = BYTE12(v87);
        *&buf[8] = 1024;
        *&buf[10] = BYTE11(v87);
        v26 = "HDR surface with transfer index %d color index %d unsupported for display tone map";
        v27 = v25;
        v28 = 14;
LABEL_77:
        _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
        goto LABEL_9;
      }
    }

    v21 = &_kHDRProcessingSourceContentTypeHLG;
LABEL_23:
    v22 = *v21;
    if (!*v21)
    {
      goto LABEL_9;
    }

    v23 = CA::HDRProcessorInternal::output_pixel_format(a1, a5, 3u, a2, 1);
    v73 = CA::Render::fourcc_compressed_of_type(v23, 0, 0);
    v82 = 0;
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v78 = 0;
    CA::HDRProcessorInternal::get_config(buf, 0, a2, a5, &v82, 0, &v78, v23);
    v79 = *buf;
    v80 = *&buf[16];
    v81 = *&buf[32];
    if (*MEMORY[0x1E6965DB8] == *&buf[24])
    {
      v24 = 33;
    }

    else if (*MEMORY[0x1E6965DD0] == *&buf[24])
    {
      v24 = 20;
    }

    else
    {
      if (*MEMORY[0x1E6965DB0] != *&buf[24])
      {
        goto LABEL_37;
      }

      v24 = 13;
    }

    v29 = CAGetColorSpace(v24);
    if (a6 && v29)
    {
      *a6 = v29;
    }

LABEL_37:
    v30 = *(a5 + 12);
    HIDWORD(v81) = 2;
    HIDWORD(v79) = v30;
    os_unfair_lock_lock(a1 + 5);
    if (!CA::HDRProcessorInternal::get_or_create_hdr_processor_instance(a1, 2, &v79, a5))
    {
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v43 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v43, OS_LOG_TYPE_ERROR, "Failed to create HDRProcessor for display", buf, 2u);
      }

      goto LABEL_95;
    }

    os_unfair_lock_unlock(a1 + 5);
    v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v32 setObject:v22 forKeyedSubscript:_kHDRProcessingSourceContentTypeKey];
    [v31 setObject:v32 forKeyedSubscript:_kHDRProcessingSourceContentKey];

    if (_hdrp_version >= 1)
    {
      [v31 setObject:&unk_1EF22B9A0 forKeyedSubscript:_kHDRProcessingApiInterfaceVersionKey];
    }

    if (_kHDRProcessingGCPGammaValueKey)
    {
      if (CADeviceSupportsGCP::once != -1)
      {
        dispatch_once(&CADeviceSupportsGCP::once, &__block_literal_global_488);
      }

      if (CADeviceSupportsGCP::b == 1 && (byte_1ED4E98A8 & 1) == 0 && *(a5 + 32) != 0.0)
      {
        v34 = [MEMORY[0x1E696AD98] numberWithFloat:?];
        [v31 setObject:v34 forKeyedSubscript:_kHDRProcessingGCPGammaValueKey];
      }
    }

    if (_kHDRProcessingHDRConstraintStrengthKey && (*(a5 + 62) & 1) == 0)
    {
      v35 = [MEMORY[0x1E696AD98] numberWithDouble:a3 * 0.5];
      [v31 setObject:v35 forKeyedSubscript:_kHDRProcessingHDRConstraintStrengthKey];
    }

    v36 = *(a5 + 68);
    v75 = 3;
    v37 = 100.0;
    if (v36 <= 6 && ((1 << v36) & 0x61) != 0)
    {
      if (*(a5 + 12) == 0.0)
      {
        v37 = 100.0;
      }

      else
      {
        v37 = *(a5 + 12);
      }

      LODWORD(v33) = *(a5 + 20);
      v38 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
      [v31 setObject:v38 forKeyedSubscript:_kHDRProcessingMaximumExtendedDynamicRangeColorComponentValueKey];
      if (v73 == 1380411457 || v73 == 1919365992 || v78 == 16)
      {
        [v31 setObject:&unk_1EF22F9C0 forKeyedSubscript:_kHDRProcessingEDRFactorKey];
      }

      else
      {
        *&v39 = 1.0 / *(a5 + 20);
        v47 = [MEMORY[0x1E696AD98] numberWithFloat:v39];
        [v31 setObject:v47 forKeyedSubscript:_kHDRProcessingEDRFactorKey];
      }

      LODWORD(v40) = *(a5 + 16);
      v41 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
      [v31 setObject:v41 forKeyedSubscript:_kHDRProcessingAmbientLightInNitsKey];
      if (*(a5 + 56) == 1)
      {
        [v31 setObject:MEMORY[0x1E695E118] forKeyedSubscript:_kHDRProcessingDisplaySupportsAmbientAdaptationKey];
      }

      if (*(a5 + 62) & 1) != 0 || (byte_1ED4E981D)
      {
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
        [v31 setObject:v44 forKeyedSubscript:_kHDRProcessingOperationEnum];
        v42 = 1;
      }

      else
      {
        v42 = 3;
      }

      v75 = v42;
      v36 = *(a5 + 68);
      if (v36 <= 6 && ((1 << v36) & 0x61) != 0)
      {
        v45 = *(a5 + 72);
        v46 = &_kHDRProcessingDisplayPipelineCompensationTypeNone;
        if (v45 != 1 && (xmmword_1ED4E980C & 1) == 0)
        {
          if (v45 == 3)
          {
            v46 = &_kHDRProcessingDisplayPipelineCompensationTypeHeadroomDependent;
          }

          else
          {
            if (v45 != 2)
            {
              goto LABEL_81;
            }

            v46 = &_kHDRProcessingDisplayPipelineCompensationTypePurePower;
          }
        }

        [v31 setObject:*v46 forKeyedSubscript:_kHDRProcessingDisplayPipelineCompensationType];
        v36 = *(a5 + 68);
      }
    }

LABEL_81:
    if (v36 == 2 && ((*(a5 + 61) | BYTE6(xmmword_1ED4E980C)) & 1) == 0)
    {
      v37 = 1000.0;
    }

    *&v33 = v37;
    v48 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
    [v31 setObject:v48 forKeyedSubscript:_kHDRProcessingCurrentMaxPanelNitsKey];
    v49 = forward_display_params_from_attributes(a5, 1);
    if (v49)
    {
      [v31 setObject:v49 forKeyedSubscript:_kHDRProcessingDisplayKey];
    }

    if (byte_1ED4E983D == 1)
    {
      v74 = [objc_msgSend(v31 debugDescription];
      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v54 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_DEFAULT))
      {
        ID = IOSurfaceGetID(a2);
        Width = IOSurfaceGetWidth(a2);
        Height = IOSurfaceGetHeight(a2);
        PixelFormat = IOSurfaceGetPixelFormat(a2);
        v56 = HIBYTE(PixelFormat);
        if ((PixelFormat & 0x80000000) != 0)
        {
          v57 = __maskrune(v56, 0x40000uLL);
        }

        else
        {
          v57 = *(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000;
        }

        if (v57)
        {
          v58 = IOSurfaceGetPixelFormat(a2) >> 24;
        }

        else
        {
          v58 = 32;
        }

        v69 = v58;
        v59 = (IOSurfaceGetPixelFormat(a2) >> 16);
        if (v59 <= 0x7F)
        {
          v60 = *(MEMORY[0x1E69E9830] + 4 * v59 + 60) & 0x40000;
        }

        else
        {
          v60 = __maskrune(v59, 0x40000uLL);
        }

        if (v60)
        {
          v61 = (IOSurfaceGetPixelFormat(a2) << 8) >> 24;
        }

        else
        {
          v61 = 32;
        }

        v68 = v61;
        v62 = (IOSurfaceGetPixelFormat(a2) >> 8);
        if (v62 <= 0x7F)
        {
          v63 = *(MEMORY[0x1E69E9830] + 4 * v62 + 60) & 0x40000;
        }

        else
        {
          v63 = __maskrune(v62, 0x40000uLL);
        }

        if (v63)
        {
          v64 = IOSurfaceGetPixelFormat(a2) >> 8;
        }

        else
        {
          v64 = 32;
        }

        v65 = IOSurfaceGetPixelFormat(a2);
        if (v65 <= 0x7F)
        {
          v66 = *(MEMORY[0x1E69E9830] + 4 * v65 + 60) & 0x40000;
        }

        else
        {
          v66 = __maskrune(v65, 0x40000uLL);
        }

        if (v66)
        {
          v67 = IOSurfaceGetPixelFormat(a2);
        }

        else
        {
          v67 = 32;
        }

        *buf = 134220290;
        *&buf[4] = a1;
        *&buf[12] = 1024;
        *&buf[14] = ID;
        *&buf[18] = 2048;
        *&buf[20] = Width;
        *&buf[28] = 2048;
        *&buf[30] = Height;
        *&buf[38] = 1024;
        v94 = v69;
        v95 = 1024;
        v96 = v68;
        v97 = 1024;
        v98 = v64;
        v99 = 1024;
        v100 = v67;
        v101 = 1024;
        v102 = v75;
        v103 = 2080;
        v104 = v74;
        _os_log_impl(&dword_183AA6000, v54, OS_LOG_TYPE_DEFAULT, "HDRProcessor %p accelerator Display src surface 0x%x [%zu x %zu] (%c%c%c%c) operation 0x%x metadata: %s\n", buf, 0x4Eu);
      }
    }

    os_unfair_lock_lock(a1 + 5);
    hdr_processor_instance = CA::HDRProcessorInternal::get_or_create_hdr_processor_instance(a1, 2, &v79, a5);
    if (hdr_processor_instance)
    {
      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = ___ZN2CA20HDRProcessorInternal30configure_display_pipe_tonemapEP11__IOSurfacejPKNS_6Render17DisplayAttributesEfPP12CGColorSpaceU13block_pointerFvP18IOMFBToneMapConfigEU13block_pointerFv13IOMFBCurveLocPK14IOMFBCurveDataEU13block_pointerFv14IOMFBICCMatLocPK16IOMFBColorMatrixE_block_invoke;
      v77[3] = &unk_1E6DEDDF0;
      v77[4] = a7;
      v77[5] = a8;
      v77[6] = a9;
      v51 = [hdr_processor_instance iterateDisplayConfigWithType:0 operation:v75 inputSurface:a2 options:v31 config:v77];
      os_unfair_lock_unlock(a1 + 5);
      if (v51 == -17000)
      {

        v19 = 1;
LABEL_10:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_14;
      }

      if (x_log_get_utilities::once != -1)
      {
        dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
      }

      v53 = x_log_get_utilities::log;
      if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        *&buf[4] = v51;
        *&buf[12] = 2048;
        *&buf[14] = a2;
        *&buf[22] = 2048;
        *&buf[24] = v31;
        _os_log_error_impl(&dword_183AA6000, v53, OS_LOG_TYPE_ERROR, "HDRProcessor error (%ld) (src:%p, md:%p)", buf, 0x20u);
      }

LABEL_9:
      v19 = 0;
      goto LABEL_10;
    }

    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v52 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_183AA6000, v52, OS_LOG_TYPE_ERROR, "Failed to create HDRProcessor for display", buf, 2u);
    }

LABEL_95:
    os_unfair_lock_unlock(a1 + 5);
    goto LABEL_9;
  }

  return 0;
}

void sub_183CEAE40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  objc_autoreleasePoolPop(v16);
  _Unwind_Resume(a1);
}

uint64_t CA::HDRProcessorInternal::output_pixel_format(uint64_t a1, uint64_t a2, unsigned int a3, IOSurfaceRef buffer, int a5)
{
  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (!dword_1ED4E9728)
  {
    if (CADeviceSupportsToneMapAcceleratorSwitching::once != -1)
    {
      dispatch_once(&CADeviceSupportsToneMapAcceleratorSwitching::once, &__block_literal_global_294);
    }

    if (CADeviceSupportsToneMapAcceleratorSwitching::accelerator_switching == 1)
    {
      if (CADeviceHasHardwareAcceleratedHDR::once != -1)
      {
        dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
      }

      if (a3 == 2 && (CADeviceHasHardwareAcceleratedHDR::has_capability & 1) != 0)
      {
        v10 = IOSurfaceCopyValue(buffer, _kHDRProcessingDolbyVisionRPUDataKey);
        if (!v10)
        {
          return 1380411457;
        }

        CFRelease(v10);
      }
    }

    PixelFormat = IOSurfaceGetPixelFormat(buffer);
    if (CADeviceHasHardwareAcceleratedHDR::once != -1)
    {
      dispatch_once(&CADeviceHasHardwareAcceleratedHDR::once, &__block_literal_global_144);
    }

    if (CADeviceHasHardwareAcceleratedHDR::has_capability)
    {
      v12 = a3 < 2;
      if (a3 == 3)
      {
        v12 = 1;
      }

      *(a1 + 89) = v12;
      v13 = (a1 + 89);
      if (a3 <= 3 && a3 != 2)
      {
        v14 = 1380411457;
        if (PixelFormat == 642934849 || PixelFormat == 1380411457)
        {
          return v14;
        }

        if (PixelFormat == 2033463606)
        {
          return 2033463606;
        }
      }
    }

    else
    {
      v12 = 0;
      *(a1 + 89) = 0;
      v13 = (a1 + 89);
    }

    v15 = *(a2 + 68);
    if ((v15 - 2) >= 5)
    {
      if (v15 == 1)
      {
        goto LABEL_37;
      }

      if (v15)
      {
        return 0;
      }

      if (!v12)
      {
        goto LABEL_37;
      }

      if (CADevicePrefersHDR444Internal::once != -1)
      {
        dispatch_once(&CADevicePrefersHDR444Internal::once, &__block_literal_global_434);
      }

      if (CADevicePrefersHDR444Internal::b != 1 || (CA::Render::fourcc_is_lossy_compressed(PixelFormat) & 1) != 0)
      {
LABEL_37:
        if (*v13 != 1)
        {
          return 1999843442;
        }

        v14 = 1882468912;
        if ((CA::Render::fourcc_is_420(PixelFormat) & 1) == 0)
        {
          if (CA::Render::fourcc_is_422(PixelFormat))
          {
            return 1882468914;
          }

          else
          {
            v14 = 1882469428;
            if ((CA::Render::fourcc_is_444(PixelFormat) & 1) == 0)
            {
              if (CA::Render::fourcc_is_rgb(PixelFormat))
              {
                return 1882469428;
              }

              else
              {
                return 1882468912;
              }
            }
          }
        }

        return v14;
      }
    }

    else
    {
      if (CADeviceIsVirtualized::once[0] != -1)
      {
        dispatch_once(CADeviceIsVirtualized::once, &__block_literal_global_323);
      }

      if (CADeviceIsVirtualized::is_virtualized)
      {
        return 1380411457;
      }

      if (*v13 != 1)
      {
        return 1919365992;
      }

      if (CADevicePrefersHDR444::once != -1)
      {
        dispatch_once(&CADevicePrefersHDR444::once, &__block_literal_global_428);
      }

      if (CADevicePrefersHDR444::b != 1 || (CA::Render::fourcc_is_lossy_compressed(PixelFormat) & 1) != 0)
      {
        if (CA::Render::fourcc_is_420(PixelFormat))
        {
          v16 = 1886680624;
          v17 = 1953903152;
        }

        else
        {
          if (!CA::Render::fourcc_is_422(PixelFormat))
          {
            if ((CA::Render::fourcc_is_444(PixelFormat) & 1) == 0 && !CA::Render::fourcc_is_rgb(PixelFormat))
            {
              return 1953903152;
            }

            if (a5)
            {
              return 1886680628;
            }

            return 1953903668;
          }

          v16 = 1886680626;
          v17 = 1953903154;
        }

        if (a5)
        {
          return v16;
        }

        else
        {
          return v17;
        }
      }
    }

    if (a5)
    {
      return 1886680628;
    }

    else
    {
      return 1953903668;
    }
  }

  v19 = dword_1ED4E9728;

  return CA::Render::fourcc_compressed_of_type(v19, 0, 0);
}

void CA::HDRProcessorInternal::get_config(uint64_t a1, __IOSurface *a2, __IOSurface *a3, uint64_t a4, _DWORD *a5, int a6, _BYTE *a7, CA::Render *PixelFormat)
{
  v35 = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = a3;
  }

  *a1 = IOSurfaceGetWidth(v15);
  *(a1 + 4) = IOSurfaceGetHeight(v15);
  if (a2)
  {
    PixelFormat = IOSurfaceGetPixelFormat(a2);
  }

  *(a1 + 16) = PixelFormat;
  v16 = *MEMORY[0x1E6965DB8];
  *(a1 + 24) = *MEMORY[0x1E6965DB8];
  *a5 = 3;
  v17 = CA::Render::fourcc_compressed_of_type(PixelFormat, 0, 0);
  v18 = IOSurfaceGetPixelFormat(a3);
  v33 = CA::Render::fourcc_compressed_of_type(v18, 0, 0);
  v19 = *(a4 + 68);
  if (v19 == 4)
  {
    v20 = *(a4 + 4);
  }

  else
  {
    v20 = 100;
    if (v19 == 1 && (*(a4 + 58) & 1) != 0)
    {
      if (initialized[0] != -1)
      {
        dispatch_once_f(initialized, 0, init_debug);
      }

      v20 = *&dword_1ED4E96B0;
      if (!*&dword_1ED4E96B0)
      {
        v20 = 200;
      }
    }
  }

  v31 = v16;
  *(a1 + 12) = v20;
  LOBYTE(v16) = 13;
  if (v17 <= 1953903151)
  {
    if (v17 <= 1882469427)
    {
      if (v17 > 1882468911)
      {
        if (v17 == 1882468912)
        {
          goto LABEL_37;
        }

        v22 = 1882468914;
      }

      else
      {
        if (v17 == 1380411457)
        {
          *(a1 + 24) = *MEMORY[0x1E6965DD0];
          LOBYTE(v16) = 8;
          goto LABEL_54;
        }

        v22 = 1815162994;
      }

      if (v17 != v22)
      {
        goto LABEL_54;
      }

      goto LABEL_37;
    }

    if ((v17 - 1886680624) > 4 || ((1 << (v17 - 48)) & 0x15) == 0)
    {
      if (v17 != 1882469428)
      {
        if (v17 == 1919365992)
        {
          LOBYTE(v16) = 8;
        }

        goto LABEL_54;
      }

LABEL_37:
      *(a1 + 24) = *MEMORY[0x1E6965DD0];
      goto LABEL_54;
    }

    goto LABEL_46;
  }

  if (v17 > 2016686639)
  {
    if (v17 > 2019963439)
    {
      if (v17 != 2019963440 && v17 != 2019963956)
      {
        if (v17 != 2033463606)
        {
          goto LABEL_54;
        }

        v21 = *(a4 + 68);
        if (v21 <= 1)
        {
          *(a1 + 24) = *MEMORY[0x1E6965DD0];
          LOBYTE(v16) = 13;
          goto LABEL_54;
        }

        goto LABEL_47;
      }

LABEL_46:
      v21 = *(a4 + 68);
LABEL_47:
      *(a1 + 24) = *MEMORY[0x1E6965DB0];
      if ((v21 > 6 || ((1 << v21) & 0x73) == 0) && (*(a4 + 58) & 1) == 0)
      {
        *a5 = 1;
      }

      if (*(a4 + 61) == 1 && (v33 == 1380411457 || CA::Render::fourcc_to_format(v33) - 33 <= 2))
      {
        *a5 = 4;
        LOBYTE(v16) = 16;
      }

      else
      {
        LOBYTE(v16) = 16;
      }

      goto LABEL_54;
    }

    if (v17 == 2016686640)
    {
      goto LABEL_46;
    }

    v23 = 2016687156;
LABEL_45:
    if (v17 != v23)
    {
      goto LABEL_54;
    }

    goto LABEL_46;
  }

  if (v17 <= 1953903667)
  {
    if (v17 == 1953903152)
    {
      goto LABEL_46;
    }

    v23 = 1953903154;
    goto LABEL_45;
  }

  if (v17 == 1953903668)
  {
    goto LABEL_46;
  }

  if (v17 == 1999843442 && (v33 == 1380411457 || CA::Render::fourcc_to_format(v33) - 33 <= 2))
  {
    *a5 = 2;
  }

LABEL_54:
  BulkAttachments = IOSurfaceGetBulkAttachments();
  if (a6)
  {
    *buf = 132;
    if (!IOSurfaceGetBulkAttachments())
    {
      LOBYTE(v16) = 0;
    }
  }

  else if (*(a4 + 62) == 1 && !BulkAttachments)
  {
    v25 = IOSurfaceCopyValue(a3, _kHDRProcessingDolbyVisionRPUDataKey);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9720)
  {
    v28 = *&dword_1ED4E9720;
    if (*&dword_1ED4E9720 <= 8)
    {
      v30 = v31;
      switch(v28)
      {
        case 1:
LABEL_94:
          *(a1 + 24) = v30;
          goto LABEL_65;
        case 5:
          v29 = MEMORY[0x1E6965DA0];
          break;
        case 6:
          v29 = MEMORY[0x1E6965DD8];
          break;
        default:
          goto LABEL_65;
      }
    }

    else if (v28 > 11)
    {
      if (v28 == 12)
      {
        v29 = MEMORY[0x1E6965DD0];
      }

      else
      {
        if (v28 != 22)
        {
          goto LABEL_65;
        }

        v29 = MEMORY[0x1E6965DC0];
      }
    }

    else if (v28 == 9)
    {
      v29 = MEMORY[0x1E6965DB0];
    }

    else
    {
      if (v28 != 11)
      {
        goto LABEL_65;
      }

      v29 = MEMORY[0x1E6965D98];
    }

    v30 = *v29;
    goto LABEL_94;
  }

LABEL_65:
  if (*&dword_1ED4E9724)
  {
    LODWORD(v16) = *&dword_1ED4E9724;
    if (!a2)
    {
      goto LABEL_72;
    }
  }

  else if (!a2)
  {
    goto LABEL_72;
  }

  CA::Render::ycbcr_fourcc_depth(v33);
  v26 = IOSurfaceSetBulkAttachments2();
  if (v26)
  {
    if (x_log_get_utilities::once != -1)
    {
      dispatch_once(&x_log_get_utilities::once, &__block_literal_global_5_2153);
    }

    v27 = x_log_get_utilities::log;
    if (os_log_type_enabled(x_log_get_utilities::log, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v26;
      _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, "Error setting bulk attachments: 0x%x", buf, 8u);
    }
  }

LABEL_72:
  *a7 = v16;
}

void *CA::HDRProcessorInternal::get_or_create_hdr_processor_instance(uint64_t a1, __CFRunLoop *a2, uint64_t a3, uint64_t a4)
{
  v4 = 48;
  if (a2 == 1)
  {
    v4 = 96;
  }

  if (a2 == 2)
  {
    v4 = 112;
  }

  if (_hdrp_supports_new_init)
  {
    v5 = 40;
  }

  else
  {
    v5 = v4;
  }

  if (!a3)
  {
    __assert_rtn("get_or_create_hdr_processor_instance", "CAHDRProcessing.mm", 1025, "config");
  }

  v8 = a2;
  result = *(a1 + v5);
  if (!result)
  {
    goto LABEL_23;
  }

  v11 = *(a1 + 120);
  v12 = *(a3 + 36);
  if (v11 != v12)
  {
    v16 = v11 == 1;
    v15 = v11 == 2;
    v17 = 2;
    if (!v15)
    {
      v17 = v16;
    }

    if (*(a4 + 68) == *(a1 + 136 * v17 + 316))
    {
LABEL_31:
      v19 = v12 == 1;
      v15 = v12 == 2;
      v20 = 2;
      if (v15)
      {
        v19 = 2;
      }

      v21 = a1 + 40 * v19;
      v22 = *a3;
      v23 = *(a3 + 16);
      *(v21 + 160) = *(a3 + 32);
      *(v21 + 128) = v22;
      *(v21 + 144) = v23;
      v24 = *(a3 + 36);
      if (v24 != 2)
      {
        v20 = v24 == 1;
      }

      v25 = a1 + 136 * v20;
      v26 = *(a4 + 80);
      v27 = *(a4 + 96);
      v28 = *(a4 + 112);
      *(v25 + 376) = *(a4 + 128);
      *(v25 + 248) = *a4;
      v29 = *(a4 + 16);
      v30 = *(a4 + 32);
      v31 = *(a4 + 64);
      *(v25 + 296) = *(a4 + 48);
      *(v25 + 312) = v31;
      *(v25 + 264) = v29;
      *(v25 + 280) = v30;
      *(v25 + 344) = v27;
      *(v25 + 360) = v28;
      *(v25 + 328) = v26;
      LODWORD(v25) = *(a3 + 36);
      *(a1 + 120) = v25;
      if (v25 == 1 && *(a1 + 89) == 1 && !*(a1 + 104))
      {
        if (CA::WindowServer::accelerator_runloop(void)::once[0] != -1)
        {
          dispatch_once(CA::WindowServer::accelerator_runloop(void)::once, &__block_literal_global_6932);
        }

        CA::IOSAManager::create_new_iosa_manager(CA::WindowServer::accelerator_runloop(void)::runloop, a2);
      }

      return result;
    }

LABEL_23:

    if (!v8 || (_hdrp_supports_new_init & 1) != 0)
    {
      CA::HDRProcessorInternal::initialize_metal(a1);
      if (!*(a1 + 24))
      {
        result = 0;
        *(a1 + v5) = 0;
        return result;
      }

      if (_hdrp_supports_new_init)
      {
        v18 = *(a1 + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    result = CA::create_hdrprocessor(v18, a3);
    *(a1 + v5) = result;
    v12 = *(a3 + 36);
    goto LABEL_31;
  }

  v13 = v11 == 1;
  if (v11 == 2)
  {
    v13 = 2;
  }

  v14 = a1 + 40 * v13;
  v15 = *(v14 + 144) == *(a3 + 16) && *(v14 + 152) == *(a3 + 24);
  if (!v15 || *(a4 + 68) != *(a1 + 136 * v13 + 316))
  {
    goto LABEL_23;
  }

  return result;
}

void *forward_display_params_from_attributes(uint64_t a1, int a2)
{
  v4 = [MEMORY[0x1E695DF90] dictionary];
  result = 0;
  v6 = *(a1 + 68);
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = _kHDRProcessingDestinationDisplayTypeSDRTV;
      }

      else
      {
        if (v6 != 2)
        {
          return result;
        }

        v7 = _kHDRProcessingDestinationDisplayTypeHDR10TV;
      }
    }

    else if (_hdrp_version <= 0)
    {
      if (!_kHDRProcessingDestinationDisplayTypeInternalPanelLCD)
      {
        goto LABEL_27;
      }

      if (CADeviceHasLCDPanel::once != -1)
      {
        dispatch_once(&CADeviceHasLCDPanel::once, &__block_literal_global_110);
      }

      if (CADeviceHasLCDPanel::has_lcd & 1) != 0 || (byte_1ED4E981C)
      {
        v7 = _kHDRProcessingDestinationDisplayTypeInternalPanelLCD;
      }

      else
      {
LABEL_27:
        v7 = _kHDRProcessingDestinationDisplayTypeInternalPanel;
      }
    }

    else
    {
      if (!_kHDRProcessingDestinationDisplayTypeInternalPanelLCD)
      {
        goto LABEL_18;
      }

      if (CADeviceHasLCDPanel::once != -1)
      {
        dispatch_once(&CADeviceHasLCDPanel::once, &__block_literal_global_110);
      }

      if (CADeviceHasLCDPanel::has_lcd & 1) != 0 || (byte_1ED4E981C)
      {
        v7 = _kHDRProcessingDestinationDisplayTypeInternalPanel0DBL;
      }

      else
      {
LABEL_18:
        v7 = _kHDRProcessingDestinationDisplayTypeInternalPanelOLED;
      }
    }

LABEL_30:
    v8 = _kHDRProcessingDestinationDisplayTypeKey;
    goto LABEL_31;
  }

  if ((v6 - 5) >= 2)
  {
    if (v6 == 3)
    {
      v7 = _kHDRProcessingDestinationDisplayTypeDolbyVisionTV;
    }

    else
    {
      if (v6 != 4)
      {
        return result;
      }

      v7 = _kHDRProcessingDestinationDisplayTypeLowLatencyDolbyVisionTV;
    }

    goto LABEL_30;
  }

  v8 = _kHDRProcessingDestinationDisplayTypeKey;
  if (_hdrp_version <= 0)
  {
    v7 = _kHDRProcessingDestinationDisplayTypeReferenceDisplay;
  }

  else
  {
    v7 = _kHDRProcessingDestinationDisplayTypeInternalPanel2DBL;
  }

LABEL_31:
  [v4 setObject:v7 forKeyedSubscript:v8];
  if (!_kHDRProcessingEdrRangeTypeKey || !a2)
  {
LABEL_37:
    if (v6 <= 2)
    {
      if (!v6)
      {
        goto LABEL_49;
      }

      if (v6 != 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v6 - 3) < 2)
      {
        if (*(a1 + 132) >= 1 && _kHDRProcessingDisplayDolbyVisionDMVersionKey)
        {
          v10 = [MEMORY[0x1E696AD98] numberWithInt:?];
          [v4 setObject:v10 forKeyedSubscript:_kHDRProcessingDisplayDolbyVisionDMVersionKey];
        }

LABEL_44:
        LODWORD(v9) = *a1;
        v11 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
        [v4 setObject:v11 forKeyedSubscript:_kHDRProcessingDisplayMinimumBrightnessInNitsKey];
        LODWORD(v12) = *(a1 + 4);
        v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
        [v4 setObject:v13 forKeyedSubscript:_kHDRProcessingDisplayMaximumBrightnessInNitsKey];
        [v4 setObject:&unk_1EF22BA18 forKeyedSubscript:_kHDRProcessingDisplayAverageBrightnessInNitsKey];
        if (_hdrp_version > 0)
        {
          goto LABEL_52;
        }

LABEL_48:
        v14 = &unk_1EF22B9E8;
        goto LABEL_51;
      }

      if (v6 != 5)
      {
        goto LABEL_49;
      }
    }

    if (_hdrp_version >= 1)
    {
      goto LABEL_52;
    }

    goto LABEL_48;
  }

  if (v6 || *(a1 + 65) != 1)
  {
    [v4 setObject:_kHDRProcessingEdrRangeTypeNonNormalized forKeyedSubscript:?];
    goto LABEL_37;
  }

  [v4 setObject:_kHDRProcessingEdrRangeTypeNormalized forKeyedSubscript:?];
LABEL_49:
  if (_hdrp_version >= 1)
  {
    goto LABEL_52;
  }

  v14 = &unk_1EF22BA00;
LABEL_51:
  [v4 setObject:v14 forKeyedSubscript:_kHDRProcessingDisplayDiagonalSizeInInchesKey];
LABEL_52:
  if (*(a1 + 108) == 1 && _kHDRProcessingDisplayChromaticityBx)
  {
    LODWORD(v9) = *(a1 + 92);
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    [v4 setObject:v15 forKeyedSubscript:_kHDRProcessingDisplayChromaticityBx];
    LODWORD(v16) = *(a1 + 96);
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    [v4 setObject:v17 forKeyedSubscript:_kHDRProcessingDisplayChromaticityBy];
    LODWORD(v18) = *(a1 + 84);
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    [v4 setObject:v19 forKeyedSubscript:_kHDRProcessingDisplayChromaticityGx];
    LODWORD(v20) = *(a1 + 88);
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    [v4 setObject:v21 forKeyedSubscript:_kHDRProcessingDisplayChromaticityGy];
    LODWORD(v22) = *(a1 + 76);
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    [v4 setObject:v23 forKeyedSubscript:_kHDRProcessingDisplayChromaticityRx];
    LODWORD(v24) = *(a1 + 80);
    v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
    [v4 setObject:v25 forKeyedSubscript:_kHDRProcessingDisplayChromaticityRy];
    LODWORD(v26) = *(a1 + 100);
    v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
    [v4 setObject:v27 forKeyedSubscript:_kHDRProcessingDisplayChromaticityWx];
    LODWORD(v28) = *(a1 + 104);
    v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
    [v4 setObject:v29 forKeyedSubscript:_kHDRProcessingDisplayChromaticityWy];
  }

  if (_kHDRProcessingDisplayAveragePixelThresholdKey)
  {
    if (_kHDRProcessingDisplayAveragePixelWeightR)
    {
      if (_kHDRProcessingDisplayAveragePixelWeightG)
      {
        if (_kHDRProcessingDisplayAveragePixelWeightB)
        {
          if (*(a1 + 112) != 1.0)
          {
            v30 = [MEMORY[0x1E696AD98] numberWithFloat:?];
            [v4 setObject:v30 forKeyedSubscript:_kHDRProcessingDisplayAveragePixelThresholdKey];
            LODWORD(v31) = *(a1 + 116);
            v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
            [v4 setObject:v32 forKeyedSubscript:_kHDRProcessingDisplayAveragePixelWeightR];
            LODWORD(v33) = *(a1 + 120);
            v34 = [MEMORY[0x1E696AD98] numberWithFloat:v33];
            [v4 setObject:v34 forKeyedSubscript:_kHDRProcessingDisplayAveragePixelWeightG];
            LODWORD(v35) = *(a1 + 124);
            v36 = [MEMORY[0x1E696AD98] numberWithFloat:v35];
            [v4 setObject:v36 forKeyedSubscript:_kHDRProcessingDisplayAveragePixelWeightB];
            if (*(a1 + 128) > 0.0)
            {
              if (_kHDRProcessingDisplaySustainedBrightnessInNitsKey)
              {
                v37 = [MEMORY[0x1E696AD98] numberWithFloat:?];
                [v4 setObject:v37 forKeyedSubscript:_kHDRProcessingDisplaySustainedBrightnessInNitsKey];
              }
            }
          }
        }
      }
    }
  }

  return v4;
}