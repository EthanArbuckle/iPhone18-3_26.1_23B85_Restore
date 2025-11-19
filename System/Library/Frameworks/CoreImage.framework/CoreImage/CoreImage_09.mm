double CI::sw_cubicDownsampleV(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v5 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v5 + 56);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v5 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v5 + 88);
  v16 = *(v5 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (v15 == 5)
  {
    v18 = v17;
  }

  v51 = *v10;
  v45 = *v18;
  v46 = *v14;
  DC = CI::getDC(a1);
  __asm { FMOV            V2.2D, #0.5 }

  v29 = vaddq_f64(vrndmq_f64(vaddq_f64(vcvtq_f64_f32(vmul_lane_f32(vadd_f32(vdup_lane_s32(*DC, 1), COERCE_FLOAT32X2_T(--2.00000143)), *&v51, 1)), xmmword_19CF29EC0)), _Q2);
  *v29.f32 = vcvt_f32_f64(v29);
  v30 = v29.f32[1];
  if (v29.f32[0] <= v29.f32[1])
  {
    v32 = *(&v51 + 3);
    v33 = a4 + 80 * v6;
    v34 = vmul_f32(*&v51, *DC);
    *v21.i8 = vzip1_s32(v34, *v29.f32);
    v35 = *(&v51 + 3) * vsub_f32(*v29.f32, vdup_lane_s32(v34, 1)).f32[0];
    v31 = 0uLL;
    v20.i64[0] = 0;
    __asm { FMOV            V3.4S, #1.0 }

    v44 = HIDWORD(_Q3);
    do
    {
      v52 = v21;
      v48 = v20;
      v49 = v31;
      v50 = v29;
      v20.f32[0] = fabsf(v35);
      v37.f32[0] = (v35 * v35) * v20.f32[0];
      v37.f32[1] = v35 * v35;
      v37.i64[1] = __PAIR64__(v44, v20.u32[0]);
      v29.i32[0] = 1.0;
      HIDWORD(v38) = v45.i32[1];
      v39 = vmulq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v29, v20), 0), v46, v45), v37);
      v40 = vextq_s8(v39, v39, 8uLL);
      *&v40.f64[0] = vadd_f32(*v39.i8, *&v40.f64[0]);
      *v39.i32 = *(v33 + 24) + (vmuls_lane_f32(*(v33 + 20), *v21.i8, 1) + (*v21.i32 * *(v33 + 16)));
      v21.i32[0] = *(v33 + 36);
      *&v38 = vmuls_lane_f32(*(v33 + 32), *v52.i8, 1) + (*v52.i32 * *(v33 + 28));
      *v37.f32 = vadd_f32(*&v40.f64[0], vdup_lane_s32(*&v40.f64[0], 1));
      v47 = v37.f32[0];
      v41 = vaddv_f32(*&v40.f64[0]);
      *v40.f64 = *v21.i32 + *&v38;
      *&v39.i32[1] = *v21.i32 + *&v38;
      *v42.i64 = CI::BitmapSampler::read(*(v33 + 8), *v39.i64, v40, v38, *v37.i64, v21, v52, v22, v23);
      v29 = v50;
      v21 = v52;
      v31 = vaddq_f32(v49, vmulq_n_f32(v42, v47));
      v20 = v48;
      v20.f32[0] = v48.f32[0] + v41;
      v35 = v32 + v35;
      v29.f32[0] = v50.f32[0] + 1.0;
      *&v21.i32[1] = v50.f32[0] + 1.0;
    }

    while ((v50.f32[0] + 1.0) <= v30);
  }

  else
  {
    v20.i64[0] = 0;
    v31 = 0uLL;
  }

  *&result = vdivq_f32(v31, vdupq_lane_s32(*v20.f32, 0)).u64[0];
  return result;
}

double CI::sw_cubicUpsample10(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v11 = vadd_f32(vmul_f32(*v9, *CI::getDC(a1)), 0xBF000000BF000000);
  v12 = vrndm_f32(v11);
  __asm { FMOV            V4.2S, #1.0 }

  v18 = vadd_f32(vsub_f32(v12, v11), _D4);
  v19 = vsub_f32(v11, v12);
  *v20.i8 = vmul_f32(v18, 0x3F0000003F000000);
  *v21.i8 = vmul_f32(v18, *v20.i8);
  v22 = vdup_n_s32(0x3E2AAAABu);
  *v23.i8 = vadd_f32(vadd_f32(*v20.i8, vadd_f32(*v21.i8, vmul_f32(v18, vmul_f32(v18, vmul_f32(v18, vdup_n_s32(0xBEAAAAAB)))))), v22);
  *v24.i8 = vsub_f32(_D4, *v23.i8);
  v61 = v24;
  *v25.i8 = vadd_f32(vadd_f32(v12, vdiv_f32(vadd_f32(vadd_f32(*v20.i8, vsub_f32(*v21.i8, vmul_f32(v18, *v21.i8))), v22), *v23.i8)), 0xBF000000BF000000);
  __asm { FMOV            V1.2S, #6.0 }

  v27 = vadd_f32(v12, vdiv_f32(vdiv_f32(vmul_f32(v19, vmul_f32(v19, v19)), _D1), *v24.i8));
  __asm { FMOV            V1.2S, #1.5 }

  *v29.i8 = vadd_f32(v27, *&_Q1.f64[0]);
  v58 = v23;
  v59 = v29;
  *v29.i32 = vmuls_lane_f32(*v23.i32, *v23.i8, 1);
  v54 = v29;
  v56 = v25;
  v30 = v25;
  v12.i32[0] = *(v10 + 28);
  *v29.i32 = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v25.i8, 1) + (*v25.i32 * *(v10 + 16)));
  v25.i32[0] = *(v10 + 36);
  *_Q1.f64 = *v25.i32 + (vmuls_lane_f32(*(v10 + 32), *v30.i8, 1) + (*v30.i32 * v12.f32[0]));
  v29.i32[1] = LODWORD(_Q1.f64[0]);
  *v31.i64 = CI::BitmapSampler::read(*(v10 + 8), *v29.i64, _Q1, *&v12, *v25.i64, v30, v23, v20, v21);
  v32 = v54;
  v55 = vmulq_n_f32(v31, *v54.f64);
  v31.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v56.i8, 1) + (*v59.i32 * *(v10 + 16)));
  LODWORD(v33) = *(v10 + 36);
  v34 = v61;
  *v34.i32 = vmuls_lane_f32(*v61.i32, *v58.i8, 1);
  v53 = v34;
  *v32.f64 = *&v33 + (vmuls_lane_f32(*(v10 + 32), *v56.i8, 1) + (*v59.i32 * *(v10 + 28)));
  v31.i32[1] = LODWORD(v32.f64[0]);
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), *v31.i64, v32, *v34.i64, v33, v58, v56, v59, v35);
  v37 = v56;
  v38 = vmuls_lane_f32(*(v10 + 20), *v59.i8, 1) + (*v56.i32 * *(v10 + 16));
  LODWORD(v39) = *(v10 + 24);
  v40.i32[0] = *(v10 + 36);
  *&v41 = vmuls_lane_f32(*(v10 + 32), *v59.i8, 1) + (*v56.i32 * *(v10 + 28));
  v57 = vaddq_f32(v55, vmulq_n_f32(v36, *v53.i32));
  v36.f32[0] = *&v39 + v38;
  *v42.f64 = *v40.i32 + *&v41;
  v36.f32[1] = *v40.i32 + *&v41;
  *v43.i64 = CI::BitmapSampler::read(*(v10 + 8), *v36.i64, v42, v39, v41, v58, v40, v53, v37);
  HIDWORD(v44) = v59.i32[1];
  v45 = vmuls_lane_f32(*(v10 + 20), *v59.i8, 1) + (*v59.i32 * *(v10 + 16));
  v46 = v59;
  LODWORD(v47) = *(v10 + 24);
  v48.i32[0] = *(v10 + 36);
  *&v44 = vmuls_lane_f32(*(v10 + 32), *v59.i8, 1) + (*v59.i32 * *(v10 + 28));
  v60 = vaddq_f32(v57, vmulq_n_f32(v43, vmuls_lane_f32(*v58.i32, *v61.i8, 1)));
  v43.f32[0] = *&v47 + v45;
  *v49.f64 = *v48.i32 + *&v44;
  v43.f32[1] = *v48.i32 + *&v44;
  *v51.i64 = CI::BitmapSampler::read(*(v10 + 8), *v43.i64, v49, v47, v44, v57, v48, v46, v50);
  *&result = vaddq_f32(v60, vmulq_n_f32(v51, vmuls_lane_f32(*v61.i32, *v61.i8, 1))).u64[0];
  return result;
}

double CI::sw_cubicUpsampleX0(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
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
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v74 = *v13;
  v71 = *v17;
  v19 = vmul_f32(*v9, *CI::getDC(a1));
  v20 = vadd_f32(vrndm_f32(vadd_f32(v19, 0xBF000000BF000000)), 0x3F0000003F000000);
  v21 = vsub_f32(v20, v19);
  __asm { FMOV            V3.2S, #-1.0 }

  v27 = vabs_f32(vadd_f32(v21, _D3));
  v28.i64[1] = v71.i64[1];
  v29 = vdup_laneq_s32(v71, 3);
  v30.i64[1] = v71.i64[1];
  v31 = vabd_f32(v20, v19);
  v32 = vadd_f32(vdup_laneq_s32(v74, 3), vadd_f32(vmul_laneq_f32(v31, v74, 2), vadd_f32(vmul_f32(v31, vmul_lane_f32(v31, *v74.f32, 1)), vmul_f32(v31, vmul_f32(v31, vmul_n_f32(v31, v74.f32[0]))))));
  v33 = vabs_f32(vadd_f32(v21, 0x4000000040000000));
  v34 = vadd_f32(v29, vadd_f32(vmul_laneq_f32(v33, v71, 2), vadd_f32(vmul_f32(v33, vmul_lane_f32(v33, *v71.f32, 1)), vmul_f32(v33, vmul_f32(v33, vmul_n_f32(v33, v71.f32[0]))))));
  *v30.i8 = vadd_f32(v32, vadd_f32(v29, vadd_f32(vmul_laneq_f32(v27, v71, 2), vadd_f32(vmul_f32(v27, vmul_lane_f32(v27, *v71.f32, 1)), vmul_f32(v27, vmul_f32(v27, vmul_n_f32(v27, v71.f32[0])))))));
  __asm { FMOV            V4.2S, #1.0 }

  *v28.i8 = vsub_f32(_D4, *v30.i8);
  *v36.i8 = vdup_n_s32(0xB8D1B717);
  v70 = v30;
  *v37.i8 = vcltz_f32(vadd_f32(*v30.i8, *v36.i8));
  *v38.i8 = vadd_f32(vadd_f32(v20, _D3), vbic_s8(vdiv_f32(v32, *v30.i8), *v37.i8));
  v75 = v28;
  v39 = vdiv_f32(v34, *v28.i8);
  *&v40.f64[0] = vadd_f32(v20, _D4);
  *v41.i8 = vadd_f32(*&v40.f64[0], vbic_s8(v39, vcltz_f32(vadd_f32(*v28.i8, *v36.i8))));
  v72 = v41;
  *v41.i32 = vmuls_lane_f32(*v30.i32, *v30.i8, 1);
  v66 = v41;
  v68 = v38;
  v42 = v38;
  v39.i32[0] = *(v18 + 28);
  *v41.i32 = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v38.i8, 1) + (*v38.i32 * *(v18 + 16)));
  v38.i32[0] = *(v18 + 36);
  *v40.f64 = *v38.i32 + (vmuls_lane_f32(*(v18 + 32), *v42.i8, 1) + (*v42.i32 * *v39.i32));
  v41.i32[1] = LODWORD(v40.f64[0]);
  *v43.i64 = CI::BitmapSampler::read(*(v18 + 8), *v41.i64, v40, *&v39, *v38.i64, v42, v36, v37, v28);
  v44 = v66;
  v67 = vmulq_n_f32(v43, *v66.f64);
  v43.f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v68.i8, 1) + (*v72.i32 * *(v18 + 16)));
  LODWORD(v45) = *(v18 + 36);
  v46 = v75;
  *v46.i32 = vmuls_lane_f32(*v75.i32, *v70.i8, 1);
  v65 = v46;
  *v44.f64 = *&v45 + (vmuls_lane_f32(*(v18 + 32), *v68.i8, 1) + (*v72.i32 * *(v18 + 28)));
  v43.i32[1] = LODWORD(v44.f64[0]);
  *v48.i64 = CI::BitmapSampler::read(*(v18 + 8), *v43.i64, v44, *v46.i64, v45, v70, v68, v72, v47);
  v49 = v68;
  v50 = vmuls_lane_f32(*(v18 + 20), *v72.i8, 1) + (*v68.i32 * *(v18 + 16));
  LODWORD(v51) = *(v18 + 24);
  v52.i32[0] = *(v18 + 36);
  *&v53 = vmuls_lane_f32(*(v18 + 32), *v72.i8, 1) + (*v68.i32 * *(v18 + 28));
  v69 = vaddq_f32(v67, vmulq_n_f32(v48, *v65.i32));
  v48.f32[0] = *&v51 + v50;
  *v54.f64 = *v52.i32 + *&v53;
  v48.f32[1] = *v52.i32 + *&v53;
  *v55.i64 = CI::BitmapSampler::read(*(v18 + 8), *v48.i64, v54, v51, v53, v70, v52, v65, v49);
  HIDWORD(v56) = v72.i32[1];
  v57 = vmuls_lane_f32(*(v18 + 20), *v72.i8, 1) + (*v72.i32 * *(v18 + 16));
  v58 = v72;
  LODWORD(v59) = *(v18 + 24);
  v60.i32[0] = *(v18 + 36);
  *&v56 = vmuls_lane_f32(*(v18 + 32), *v72.i8, 1) + (*v72.i32 * *(v18 + 28));
  v73 = vaddq_f32(v69, vmulq_n_f32(v55, vmuls_lane_f32(*v70.i32, *v75.i8, 1)));
  v55.f32[0] = *&v59 + v57;
  *v61.f64 = *v60.i32 + *&v56;
  v55.f32[1] = *v60.i32 + *&v56;
  *v63.i64 = CI::BitmapSampler::read(*(v18 + 8), *v55.i64, v61, v59, v56, v69, v60, v58, v62);
  *&result = vaddq_f32(v73, vmulq_n_f32(v63, vmuls_lane_f32(*v75.i32, *v75.i8, 1))).u64[0];
  return result;
}

double CI::sw_cubicUpsample(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
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
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v162 = *v17;
  v166 = *v13;
  v19 = vmul_f32(*v9, *CI::getDC(a1));
  *v20.i8 = vadd_f32(vrndm_f32(vadd_f32(v19, 0xBF000000BF000000)), 0x3F0000003F000000);
  v21 = vsub_f32(*v20.i8, v19);
  v22 = v20;
  __asm { FMOV            V9.2S, #-1.0 }

  *v20.i8 = vabs_f32(vadd_f32(v21, *&_D9));
  v28.i64[1] = v162.i64[1];
  *v29.i8 = vadd_f32(vdup_laneq_s32(v162, 3), vadd_f32(vmul_laneq_f32(*v20.i8, v162, 2), vadd_f32(vmul_f32(*v20.i8, vmul_lane_f32(*v20.i8, *v162.f32, 1)), vmul_f32(*v20.i8, vmul_f32(*v20.i8, vmul_n_f32(*v20.i8, v162.f32[0]))))));
  v163 = v29;
  v30 = vabd_f32(*v22.i8, v19);
  v168 = v22;
  v31 = v166;
  v32 = vmul_f32(v30, vmul_lane_f32(v30, *v166.f32, 1));
  v33 = vadd_f32(vmul_laneq_f32(v30, v166, 2), vadd_f32(v32, vmul_f32(v30, vmul_f32(v30, vmul_n_f32(v30, v166.f32[0])))));
  __asm { FMOV            V8.2S, #1.0 }

  v35 = vabs_f32(vadd_f32(v21, *&_D8));
  *v20.i8 = vadd_f32(*v22.i8, *&_D9);
  v32.f32[0] = vmuls_lane_f32(*(v18 + 20), *v20.i8, 1) + (*v20.i32 * *(v18 + 16));
  v31.i32[0] = *(v18 + 24);
  v36.i32[0] = *(v18 + 36);
  *v20.i32 = vmuls_lane_f32(*(v18 + 32), *v20.i8, 1) + (*v20.i32 * *(v18 + 28));
  *v28.i8 = vmul_f32(v35, vmul_lane_f32(v35, *v166.f32, 1));
  *v22.i8 = vdup_laneq_s32(v166, 3);
  *v37.i8 = vadd_f32(*v22.i8, v33);
  *&v38.f64[0] = vadd_f32(*v22.i8, vadd_f32(vmul_laneq_f32(v35, v166, 2), vadd_f32(*v28.i8, vmul_f32(v35, vmul_f32(v35, vmul_n_f32(v35, v166.f32[0]))))));
  v160 = v37;
  v161 = v38;
  *v37.i8 = vsub_f32(*&_D8, vadd_f32(*&v38.f64[0], vadd_f32(*v37.i8, *v29.i8)));
  v167 = v37;
  *v37.i32 = *v31.i32 + v32.f32[0];
  *v38.f64 = *v36.i32 + *v20.i32;
  *&v37.i32[1] = *v36.i32 + *v20.i32;
  *v39.i64 = CI::BitmapSampler::read(*(v18 + 8), *v37.i64, v38, *v20.i64, *&v32, v31, v22, v28, v36);
  HIDWORD(v40) = v168.i32[1];
  *&v41.f64[0] = vadd_f32(*v168.i8, 0xBF80000000000000);
  *&v40 = vmuls_lane_f32(*(v18 + 20), *&v41.f64[0], 1) + (*v41.f64 * *(v18 + 16));
  LODWORD(v42) = *(v18 + 24);
  v43.i32[0] = *(v18 + 36);
  *v44.i32 = vmuls_lane_f32(*(v18 + 32), *&v41.f64[0], 1);
  v148 = vaddq_f32(vmulq_lane_f32(vmulq_n_f32(v39, *v163.i32), *v163.i8, 1), 0);
  v39.f32[0] = *&v42 + *&v40;
  *v41.f64 = *v43.i32 + (*v44.i32 + (*v41.f64 * *(v18 + 28)));
  v39.i32[1] = LODWORD(v41.f64[0]);
  *v46.i64 = CI::BitmapSampler::read(*(v18 + 8), *v39.i64, v41, v40, v42, 0, v44, v43, v45);
  HIDWORD(v47) = v168.i32[1];
  *&v48.f64[0] = vadd_f32(*v168.i8, COERCE_FLOAT32X2_T(-_D8));
  *&v47 = vmuls_lane_f32(*(v18 + 20), *&v48.f64[0], 1) + (*v48.f64 * *(v18 + 16));
  LODWORD(v49) = *(v18 + 24);
  v50.i32[0] = *(v18 + 36);
  *v51.i32 = vmuls_lane_f32(*(v18 + 32), *&v48.f64[0], 1);
  v52 = v148;
  v149 = vaddq_f32(v148, vmulq_lane_f32(vmulq_n_f32(v46, *v160.i32), *v163.i8, 1));
  v46.f32[0] = *&v49 + *&v47;
  *v48.f64 = *v50.i32 + (*v51.i32 + (*v48.f64 * *(v18 + 28)));
  v46.i32[1] = LODWORD(v48.f64[0]);
  *v54.i64 = CI::BitmapSampler::read(*(v18 + 8), *v46.i64, v48, v47, v49, v52, v51, v50, v53);
  HIDWORD(v55) = v168.i32[1];
  *&v56.f64[0] = vadd_f32(*v168.i8, 0xBF80000040000000);
  *&v55 = vmuls_lane_f32(*(v18 + 20), *&v56.f64[0], 1) + (*v56.f64 * *(v18 + 16));
  LODWORD(v57) = *(v18 + 24);
  v58.i32[0] = *(v18 + 36);
  v59 = v149;
  v150 = vaddq_f32(v149, vmulq_lane_f32(vmulq_n_f32(v54, *v161.i32), *v163.i8, 1));
  v54.f32[0] = *&v57 + *&v55;
  *v56.f64 = *v58.i32 + (vmuls_lane_f32(*(v18 + 32), *&v56.f64[0], 1) + (*v56.f64 * *(v18 + 28)));
  v54.i32[1] = LODWORD(v56.f64[0]);
  *v61.i64 = CI::BitmapSampler::read(*(v18 + 8), *v54.i64, v56, v55, v57, v59, v161, v58, v60);
  HIDWORD(v62) = v168.i32[1];
  *&v63.f64[0] = vadd_f32(*v168.i8, 3212836864);
  *&v62 = vmuls_lane_f32(*(v18 + 20), *&v63.f64[0], 1) + (*v63.f64 * *(v18 + 16));
  LODWORD(v64) = *(v18 + 24);
  v65.i32[0] = *(v18 + 36);
  v66 = v150;
  v151 = vaddq_f32(v150, vmulq_lane_f32(vmulq_n_f32(v61, *v167.i32), *v163.i8, 1));
  v61.f32[0] = *&v64 + *&v62;
  *v63.f64 = *v65.i32 + (vmuls_lane_f32(*(v18 + 32), *&v63.f64[0], 1) + (*v63.f64 * *(v18 + 28)));
  v61.i32[1] = LODWORD(v63.f64[0]);
  *v68.i64 = CI::BitmapSampler::read(*(v18 + 8), *v61.i64, v63, v62, v64, v66, v167, v65, v67);
  v69 = v151;
  HIDWORD(v70) = v160.i32[1];
  v152 = vaddq_f32(v151, vmulq_lane_f32(vmulq_n_f32(v68, *v163.i32), *v160.i8, 1));
  LODWORD(v70) = *(v18 + 28);
  v68.f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *v168.i8, 1) + (*v168.i32 * *(v18 + 16)));
  LODWORD(v71) = *(v18 + 36);
  *v69.f64 = *&v71 + (vmuls_lane_f32(*(v18 + 32), *v168.i8, 1) + (*v168.i32 * *&v70));
  v68.i32[1] = LODWORD(v69.f64[0]);
  *v75.i64 = CI::BitmapSampler::read(*(v18 + 8), *v68.i64, v69, v70, v71, v168, v72, v73, v74);
  HIDWORD(v76) = v168.i32[1];
  *&v77.f64[0] = vadd_f32(*v168.i8, 1065353216);
  *&v76 = vmuls_lane_f32(*(v18 + 20), *&v77.f64[0], 1) + (*v77.f64 * *(v18 + 16));
  LODWORD(v78) = *(v18 + 24);
  v79.i32[0] = *(v18 + 36);
  v80 = v152;
  v153 = vaddq_f32(v152, vmulq_lane_f32(vmulq_n_f32(v75, *v160.i32), *v160.i8, 1));
  v75.f32[0] = *&v78 + *&v76;
  *v77.f64 = *v79.i32 + (vmuls_lane_f32(*(v18 + 32), *&v77.f64[0], 1) + (*v77.f64 * *(v18 + 28)));
  v75.i32[1] = LODWORD(v77.f64[0]);
  *v82.i64 = CI::BitmapSampler::read(*(v18 + 8), *v75.i64, v77, v76, v78, v80, v160, v79, v81);
  HIDWORD(v83) = v168.i32[1];
  *&v84.f64[0] = vadd_f32(*v168.i8, 0x40000000);
  *&v83 = vmuls_lane_f32(*(v18 + 20), *&v84.f64[0], 1) + (*v84.f64 * *(v18 + 16));
  LODWORD(v85) = *(v18 + 24);
  v86.i32[0] = *(v18 + 36);
  v87 = v153;
  v154 = vaddq_f32(v153, vmulq_lane_f32(vmulq_n_f32(v82, *v161.i32), *v160.i8, 1));
  v82.f32[0] = *&v85 + *&v83;
  *v84.f64 = *v86.i32 + (vmuls_lane_f32(*(v18 + 32), *&v84.f64[0], 1) + (*v84.f64 * *(v18 + 28)));
  v82.i32[1] = LODWORD(v84.f64[0]);
  *v89.i64 = CI::BitmapSampler::read(*(v18 + 8), *v82.i64, v84, v83, v85, v87, v161, v86, v88);
  HIDWORD(v90) = v168.i32[1];
  *&v91.f64[0] = vadd_f32(*v168.i8, COERCE_FLOAT32X2_T(-_D9));
  *&v90 = vmuls_lane_f32(*(v18 + 20), *&v91.f64[0], 1) + (*v91.f64 * *(v18 + 16));
  LODWORD(v92) = *(v18 + 24);
  v93.i32[0] = *(v18 + 36);
  v94 = v154;
  v155 = vaddq_f32(v154, vmulq_lane_f32(vmulq_n_f32(v89, *v167.i32), *v160.i8, 1));
  v89.f32[0] = *&v92 + *&v90;
  *v91.f64 = *v93.i32 + (vmuls_lane_f32(*(v18 + 32), *&v91.f64[0], 1) + (*v91.f64 * *(v18 + 28)));
  v89.i32[1] = LODWORD(v91.f64[0]);
  *v96.i64 = CI::BitmapSampler::read(*(v18 + 8), *v89.i64, v91, v90, v92, v94, v160, v93, v95);
  HIDWORD(v97) = v168.i32[1];
  *&v98.f64[0] = vadd_f32(*v168.i8, 0x3F80000000000000);
  *&v97 = vmuls_lane_f32(*(v18 + 20), *&v98.f64[0], 1) + (*v98.f64 * *(v18 + 16));
  LODWORD(v99) = *(v18 + 24);
  v100.i32[0] = *(v18 + 36);
  v101 = v155;
  v156 = vaddq_f32(v155, vmulq_lane_f32(vmulq_n_f32(v96, *v163.i32), *v161.i8, 1));
  v96.f32[0] = *&v99 + *&v97;
  *v98.f64 = *v100.i32 + (vmuls_lane_f32(*(v18 + 32), *&v98.f64[0], 1) + (*v98.f64 * *(v18 + 28)));
  v96.i32[1] = LODWORD(v98.f64[0]);
  *v103.i64 = CI::BitmapSampler::read(*(v18 + 8), *v96.i64, v98, v97, v99, v101, v163, v100, v102);
  *&v104.f64[1] = v168.i64[1];
  *&v104.f64[0] = vadd_f32(*v168.i8, *&_D8);
  *&v105 = vmuls_lane_f32(*(v18 + 20), *&v104.f64[0], 1) + (*v104.f64 * *(v18 + 16));
  LODWORD(v106) = *(v18 + 24);
  v107.i32[0] = *(v18 + 36);
  v108 = v156;
  v157 = vaddq_f32(v156, vmulq_lane_f32(vmulq_n_f32(v103, *v160.i32), *v161.i8, 1));
  v103.f32[0] = *&v106 + *&v105;
  *v104.f64 = *v107.i32 + (vmuls_lane_f32(*(v18 + 32), *&v104.f64[0], 1) + (*v104.f64 * *(v18 + 28)));
  v103.i32[1] = LODWORD(v104.f64[0]);
  *v110.i64 = CI::BitmapSampler::read(*(v18 + 8), *v103.i64, v104, v105, v106, v108, v160, v107, v109);
  HIDWORD(v111) = v168.i32[1];
  *&v112.f64[0] = vadd_f32(*v168.i8, 0x3F80000040000000);
  *&v111 = vmuls_lane_f32(*(v18 + 20), *&v112.f64[0], 1) + (*v112.f64 * *(v18 + 16));
  LODWORD(v113) = *(v18 + 24);
  v114.i32[0] = *(v18 + 36);
  *v115.i32 = vmuls_lane_f32(*(v18 + 32), *&v112.f64[0], 1);
  v116 = v157;
  v158 = vaddq_f32(v157, vmulq_lane_f32(vmulq_n_f32(v110, *v161.i32), *v161.i8, 1));
  v110.f32[0] = *&v113 + *&v111;
  *v112.f64 = *v114.i32 + (*v115.i32 + (*v112.f64 * *(v18 + 28)));
  v110.i32[1] = LODWORD(v112.f64[0]);
  *v118.i64 = CI::BitmapSampler::read(*(v18 + 8), *v110.i64, v112, v111, v113, v116, v115, v114, v117);
  HIDWORD(v119) = v168.i32[1];
  *&v120.f64[0] = vadd_f32(*v168.i8, 0x40000000BF800000);
  *&v119 = vmuls_lane_f32(*(v18 + 20), *&v120.f64[0], 1) + (*v120.f64 * *(v18 + 16));
  LODWORD(v121) = *(v18 + 24);
  v122.i32[0] = *(v18 + 36);
  *v123.i32 = vmuls_lane_f32(*(v18 + 32), *&v120.f64[0], 1);
  v124 = v158;
  v159 = vaddq_f32(v158, vmulq_lane_f32(vmulq_n_f32(v118, *v167.i32), *v161.i8, 1));
  v118.f32[0] = *&v121 + *&v119;
  *v120.f64 = *v122.i32 + (*v123.i32 + (*v120.f64 * *(v18 + 28)));
  v118.i32[1] = LODWORD(v120.f64[0]);
  *v126.i64 = CI::BitmapSampler::read(*(v18 + 8), *v118.i64, v120, v119, v121, v124, v123, v122, v125);
  HIDWORD(v127) = v168.i32[1];
  *&v128.f64[0] = vadd_f32(*v168.i8, 0x4000000000000000);
  *&v127 = vmuls_lane_f32(*(v18 + 20), *&v128.f64[0], 1) + (*v128.f64 * *(v18 + 16));
  LODWORD(v129) = *(v18 + 24);
  v130.i32[0] = *(v18 + 36);
  v131 = v163;
  v164 = vaddq_f32(v159, vmulq_lane_f32(vmulq_n_f32(v126, *v163.i32), *v167.i8, 1));
  v126.f32[0] = *&v129 + *&v127;
  *v128.f64 = *v130.i32 + (vmuls_lane_f32(*(v18 + 32), *&v128.f64[0], 1) + (*v128.f64 * *(v18 + 28)));
  v126.i32[1] = LODWORD(v128.f64[0]);
  *v133.i64 = CI::BitmapSampler::read(*(v18 + 8), *v126.i64, v128, v127, v129, v159, v131, v130, v132);
  HIDWORD(v134) = v168.i32[1];
  *&v135.f64[0] = vadd_f32(*v168.i8, 0x400000003F800000);
  *&v134 = vmuls_lane_f32(*(v18 + 20), *&v135.f64[0], 1) + (*v135.f64 * *(v18 + 16));
  LODWORD(v136) = *(v18 + 24);
  v137.i32[0] = *(v18 + 36);
  v138 = v164;
  v165 = vaddq_f32(v164, vmulq_lane_f32(vmulq_n_f32(v133, *v160.i32), *v167.i8, 1));
  v133.f32[0] = *&v136 + *&v134;
  *v135.f64 = *v137.i32 + (vmuls_lane_f32(*(v18 + 32), *&v135.f64[0], 1) + (*v135.f64 * *(v18 + 28)));
  v133.i32[1] = LODWORD(v135.f64[0]);
  *v140.i64 = CI::BitmapSampler::read(*(v18 + 8), *v133.i64, v135, v134, v136, v138, v167, v137, v139);
  HIDWORD(v141) = v168.i32[1];
  *&v142.f64[0] = vadd_f32(*v168.i8, 0x4000000040000000);
  *&v141 = vmuls_lane_f32(*(v18 + 20), *&v142.f64[0], 1) + (*v142.f64 * *(v18 + 16));
  LODWORD(v143) = *(v18 + 24);
  v144.i32[0] = *(v18 + 36);
  v169 = vaddq_f32(v165, vmulq_lane_f32(vmulq_n_f32(v140, *v161.i32), *v167.i8, 1));
  v140.f32[0] = *&v143 + *&v141;
  *v142.f64 = *v144.i32 + (vmuls_lane_f32(*(v18 + 32), *&v142.f64[0], 1) + (*v142.f64 * *(v18 + 28)));
  v140.i32[1] = LODWORD(v142.f64[0]);
  *v146.i64 = CI::BitmapSampler::read(*(v18 + 8), *v140.i64, v142, v141, v143, v165, v167, v144, v145);
  *&result = vaddq_f32(v169, vmulq_lane_f32(vmulq_n_f32(v146, *v167.i32), *v167.i8, 1)).u64[0];
  return result;
}

double CI::sw_cubicUpsample10v(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7.f64[0] = *CI::getDC(a1);
  v8 = v7;
  v9 = vmuls_lane_f32(v6, *&v7.f64[0], 1) + -0.5;
  *v7.f64 = floorf(v9);
  v10 = (*v7.f64 - v9) + 1.0;
  v11 = v9 - *v7.f64;
  v12 = v10;
  v13.i64[0] = 0.5;
  v14 = v12 * 0.5 * v12;
  v15.i64[0] = 0x3FC5555555555555;
  *v16.f64 = v14 + v12 * -0.333333333 * v12 * v12 + v12 * 0.5 + 0.166666667;
  *v17.i64 = *v16.f64;
  v33 = v16;
  v35 = 1.0 - *v16.f64;
  *v18.i64 = v14 + v12 * -0.5 * v12 * v12;
  v7.f64[0] = *v7.f64;
  v19 = (*v18.i64 + v12 * 0.5 + 0.166666667) / *v16.f64 + v7.f64[0] + -0.5;
  *&v19 = v19;
  v20 = (1.0 - *v16.f64);
  v21 = (v11 * (v11 * v11)) / 6.0 / v20 + v7.f64[0];
  v7.f64[0] = 1.5;
  v22 = v21 + 1.5;
  v32 = v8;
  LODWORD(v20) = *(v5 + 28);
  *&v21 = *(v5 + 24) + ((*(v5 + 20) * *&v19) + (*v8.f64 * *(v5 + 16)));
  v17.i32[0] = *(v5 + 36);
  *v7.f64 = *v17.i32 + ((*(v5 + 32) * *&v19) + (*v8.f64 * *&v20));
  *(&v21 + 1) = *v7.f64;
  *v23.i64 = CI::BitmapSampler::read(*(v5 + 8), v21, v7, v19, v20, v17, v13, v18, v15);
  v24 = v33;
  v34 = vmulq_n_f32(v23, *v33.f64);
  LODWORD(v25) = *(v5 + 28);
  v23.f32[0] = *(v5 + 24) + ((*(v5 + 20) * v22) + (*v32.i32 * *(v5 + 16)));
  LODWORD(v26) = *(v5 + 36);
  *v24.f64 = *&v26 + ((*(v5 + 32) * v22) + (*v32.i32 * *&v25));
  v23.f32[1] = *v24.f64;
  *v30.i64 = CI::BitmapSampler::read(*(v5 + 8), *v23.i64, v24, v25, v26, v32, v27, v28, v29);
  *&result = vaddq_f32(v34, vmulq_n_f32(v30, v35)).u64[0];
  return result;
}

double CI::sw_cubicUpsample10h(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  *v8.i8 = *DC;
  v9 = (v6 * COERCE_FLOAT(*DC)) + -0.5;
  v10 = floorf(v9);
  v11 = (v10 - v9) + 1.0;
  v12 = v9 - v10;
  v13 = v11;
  v14.i64[0] = 0.5;
  v15 = v13 * 0.5 * v13;
  v16.i64[0] = 0x3FC5555555555555;
  *v17.f64 = v15 + v13 * -0.333333333 * v13 * v13 + v13 * 0.5 + 0.166666667;
  *v18.i64 = *v17.f64;
  v36 = v17;
  v38 = 1.0 - *v17.f64;
  *v19.i64 = v15 + v13 * -0.5 * v13 * v13;
  v20 = v10;
  v21 = (*v19.i64 + v13 * 0.5 + 0.166666667) / *v17.f64 + v20 + -0.5;
  *&v21 = v21;
  v22 = (1.0 - *v17.f64);
  v23 = (v12 * (v12 * v12)) / 6.0 / v22 + v20;
  v24.f64[0] = 1.5;
  v25 = v23 + 1.5;
  v35 = v8;
  LODWORD(v22) = *(v5 + 28);
  *&v23 = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *DC, 1) + (*&v21 * *(v5 + 16)));
  v18.i32[0] = *(v5 + 36);
  *v24.f64 = *v18.i32 + (vmuls_lane_f32(*(v5 + 32), *DC, 1) + (*&v21 * *&v22));
  HIDWORD(v23) = LODWORD(v24.f64[0]);
  *v26.i64 = CI::BitmapSampler::read(*(v5 + 8), v23, v24, v21, v22, v18, v14, v19, v16);
  v27 = v36;
  v37 = vmulq_n_f32(v26, *v36.f64);
  LODWORD(v28) = *(v5 + 28);
  v26.f32[0] = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *v35.i8, 1) + (v25 * *(v5 + 16)));
  LODWORD(v29) = *(v5 + 36);
  *v27.f64 = *&v29 + (vmuls_lane_f32(*(v5 + 32), *v35.i8, 1) + (v25 * *&v28));
  v26.i32[1] = LODWORD(v27.f64[0]);
  *v33.i64 = CI::BitmapSampler::read(*(v5 + 8), *v26.i64, v27, v28, v29, v35, v30, v31, v32);
  *&result = vaddq_f32(v37, vmulq_n_f32(v33, v38)).u64[0];
  return result;
}

double CI::sw_spotLight(CI *a1, uint64_t a2, uint64_t a3)
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
  v10 = *(v3 + 80);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v3 + 88) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v3 + 112);
  v15 = *(v3 + 104);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v33 = *v7;
  v28 = *(a2 + (v8 << 6));
  v30 = *(a2 + (v9 << 6));
  v32 = *v13;
  LODWORD(v31) = *v17;
  v18.i64[0] = *CI::getDC(a1);
  v18.i32[2] = 0;
  v19 = vsubq_f32(v28, v18);
  v19.i32[3] = 0;
  v20 = vmulq_f32(v19, v19);
  *v20.i8 = vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
  v20.i32[0] = vadd_f32(*v20.i8, vdup_lane_s32(*v20.i8, 1)).u32[0];
  v21 = vrsqrte_f32(v20.u32[0]);
  v29 = vmulq_n_f32(v19, vmul_f32(v21, vrsqrts_f32(v20.u32[0], vmul_f32(v21, v21))).f32[0]);
  v22 = vmulq_f32(v30, v29);
  v23 = v22.f32[2] + vaddv_f32(*v22.f32);
  v24 = 1.0;
  if (v23 <= 1.0)
  {
    v24 = v23;
  }

  v25 = v23 < 0.0;
  v26 = 0.0;
  if (!v25)
  {
    v26 = v24;
  }

  *&result = vmulq_f32(v33, vmulq_laneq_f32(vmulq_n_f32(v32, powf(v26, v31)), v29, 2)).u64[0];
  return result;
}

double CI::sw_starshine(CI *a1, uint64_t a2, uint64_t a3)
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

  v29 = *v11;
  v30 = *v15;
  v31 = *(a2 + (*(v3 + 80) << 6));
  v32 = *(a2 + (*(v3 + 104) << 6));
  v16 = vsub_f32(*CI::getDC(a1), *v7);
  v17 = vmul_f32(*v29.i8, v16);
  v18 = vmul_f32(*&vextq_s8(v29, v29, 8uLL), v16);
  v19 = vadd_f32(vzip1_s32(v17, v18), vzip2_s32(v17, v18));
  v16.f32[0] = sqrtf(vaddv_f32(vmul_f32(v16, v16)));
  v20 = v30.f32[0] / v16.f32[0];
  v21 = vdiv_f32(vdup_lane_s32(*v30.f32, 0), vmaxnm_f32(vadd_f32(vdup_laneq_s32(v30, 3), vmul_n_f32(vabs_f32(v19), v31)), vdup_n_s32(0x33D6BF95u)));
  v22 = vmul_f32(vabs_f32(v21), vmul_f32(v21, v21));
  v23 = vmuls_lane_f32(vmul_lane_f32(v22, v22, 1).f32[0], v30, 2);
  v24 = 1.0 - vmuls_lane_f32(v16.f32[0], *v30.f32, 1);
  if (v24 <= 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
  }

  v26 = v24 < 0.0;
  v27 = 0;
  if (!v26)
  {
    *v27.i32 = v25;
  }

  *v27.i32 = v23 * (*v27.i32 * *v27.i32);
  *&result = vaddq_f32(vmulq_n_f32(v32, v20 * v20), vdupq_lane_s32(v27, 0)).u64[0];
  return result;
}

float32x2_t CI::sw_stretch(CI *a1, uint64_t a2, uint64_t a3)
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

  v21 = *v7;
  v22 = *(a2 + (*(v3 + 32) << 6));
  DC = CI::getDC(a1);
  __asm { FMOV            V1.2S, #1.0 }

  v14 = vsub_f32(_D1, vminnm_f32(vmaxnm_f32(vmul_n_f32(vabd_f32(*DC, v21), v22.f32[0]), 0), _D1));
  __asm { FMOV            V2.2S, #3.0 }

  v16 = vmul_f32(v14, vmul_f32(v14, vsub_f32(_D2, vadd_f32(v14, v14))));
  *v17.f32 = vmul_laneq_f32(vsub_f32(*CI::getDC(DC), vdup_lane_s32(v21, 1)), v22, 2);
  v18 = vmul_f32(vmul_lane_f32(*&_simd_sin_f4(v17), *v22.f32, 1), v16);
  return vsub_f32(*CI::getDC(v19), v18);
}

void minMax(double a1, double a2, double a3, double a4, double a5, int a6, double *a7, double *a8)
{
  v14 = a2;
  if (a1 >= a3)
  {
    v16 = a4 + a5;
    if (a4 + a5 >= a1)
    {
      if (v16 >= v14)
      {
        *a7 = minForMiddleRange(a1, v14, a3, a4, a5, a6);
        v18 = a1;
        goto LABEL_13;
      }

      v17 = minForMiddleRange(a1, v16, a3, a4, a5, a6);
    }

    else
    {
      v17 = a1 - a5;
    }

    *a7 = v17;
LABEL_11:
    v14 = v14 - a5;
    goto LABEL_14;
  }

  if (a2 >= a3)
  {
    *a7 = a1;
    if (a4 + a5 >= a2)
    {
      v18 = a3;
LABEL_13:
      v14 = maxForMiddleRange(v18, v14, a3, a4, a5, a6);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  *a7 = a1;
LABEL_14:
  *a8 = v14;
}

float32x2_t CI::sw_stretchcrop(CI *a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v19 = *v15;
  v17 = vdiv_f32(vsub_f32(*CI::getDC(a1), *v11), *v7);
  return vmul_f32(v16, vadd_f32(vdiv_f32(v17, vadd_f32(*v19.i8, vmul_f32(*&vextq_s8(v19, v19, 8uLL), vabs_f32(v17)))), 0x3F0000003F000000));
}

float32x2_t CI::sw_ninePartStretched(CI *a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v17 = *v11;
  v18 = *v15;
  DC = CI::getDC(a1);
  return vmaxnm_f32(vminnm_f32(*DC, vadd_f32(v16, vmul_f32(v18, vsub_f32(*DC, v16)))), vsub_f32(*DC, v17));
}

int8x8_t CI::sw_ninePartTiledAlt(CI *a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v23 = *v7;
  v16 = *v11;
  v17 = *v15;
  DC = CI::getDC(a1);
  v19 = vextq_s8(v23, v23, 8uLL).u64[0];
  v20 = vsub_f32(*DC, v17);
  v21 = vsub_f32(v19, *v23.i8);
  return vbsl_s8(vcgt_f32(vadd_f32(v16, v19), *DC), vbsl_s8(vcgt_f32(*v23.i8, *DC), *DC, vadd_f32(*v23.i8, vsub_f32(v20, vmul_f32(v21, vrndm_f32(vdiv_f32(v20, v21)))))), vsub_f32(*DC, v16));
}

double maxForMiddleRange(double a1, double a2, double a3, double a4, double a5, int a6)
{
  v6 = a4 + a5;
  if (!a6)
  {
    v6 = a3;
  }

  v7 = a1 - v6;
  v8 = a4 - a3;
  v9 = a2 - v6;
  if (vcvtmd_s64_f64(v7 / (a4 - a3)) == vcvtmd_s64_f64((a2 - v6) / (a4 - a3)))
  {
    if (a6)
    {
      v10 = a4;
    }

    else
    {
      v10 = a3;
    }

    v11 = fmod(v7, a4 - a3) + v10;
    v12 = fmod(v9, v8) + v10;
    if (v11 <= v12)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  return a4;
}

double minForMiddleRange(double a1, double a2, double a3, double a4, double a5, int a6)
{
  v6 = a4 + a5;
  if (!a6)
  {
    v6 = a3;
  }

  v7 = a1 - v6;
  v8 = a4 - a3;
  v9 = a2 - v6;
  if (vcvtmd_s64_f64(v7 / (a4 - a3)) == vcvtmd_s64_f64((a2 - v6) / (a4 - a3)))
  {
    if (a6)
    {
      v10 = a4;
    }

    else
    {
      v10 = a3;
    }

    v11 = fmod(v7, a4 - a3) + v10;
    v12 = fmod(v9, v8) + v10;
    if (v11 >= v12)
    {
      return v12;
    }

    else
    {
      return v11;
    }
  }

  return a3;
}

unint64_t CI::sw_stripes(CI *a1, uint64_t a2, uint64_t a3)
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

  v22 = COERCE_FLOAT(*v7);
  v24 = *(a2 + (*(v3 + 32) << 6));
  v23 = *(a2 + (*(v3 + 56) << 6));
  v21 = *(a2 + (*(v3 + 80) << 6));
  DC = CI::getDC(a1);
  _V3.S[1] = DWORD1(v21);
  v10 = ((COERCE_FLOAT(*DC) - v22) * *&v21) + -0.25;
  v11 = v10 - floorf(v10);
  _S0 = fminf(1.0 - v11, v11);
  __asm { FMLA            S2, S0, V3.S[1] }

  if (_S2 <= 1.0)
  {
    v18 = _S2;
  }

  else
  {
    v18 = 1.0;
  }

  if (_S2 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = (v18 * -2.0 + 3.0) * v18 * v18;
  return vmlaq_n_f32(vmulq_n_f32(v23, 1.0 - v19), v24, v19).u64[0];
}

double CI::sw_sunbeams(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v13 = a4 + 80 * *(v4 + 8);
  v34 = *v8->f32;
  v35 = *v12;
  v36 = *(a2 + (*(v4 + 80) << 6));
  v14 = COERCE_FLOAT(*(v12 + 1));
  LODWORD(v15) = HIDWORD(*v12);
  v16 = vsub_f32(*CI::getDC(a1), *v8);
  v17 = vmul_f32(v16, v16);
  v18 = vadd_f32(v17, vdup_lane_s32(v17, 1)).u32[0];
  v19 = vaddv_f32(v17);
  v20 = vextq_s8(v34, v34, 8uLL);
  v21 = vrsqrte_f32(v18);
  *v22.i8 = vmul_f32(v21, v21);
  v23 = COERCE_DOUBLE(vmul_f32(v21, vrsqrts_f32(v18, *v22.i8)));
  v24 = vdup_n_s32(0x42480000u);
  *&v20.f64[0] = vadd_f32(*&v20.f64[0], vmul_f32(vmul_n_f32(v16, *&v23), v24));
  v24.i32[0] = *(v13 + 28);
  v16.f32[0] = *(v13 + 24) + (vmuls_lane_f32(*(v13 + 20), *&v20.f64[0], 1) + (*v20.f64 * *(v13 + 16)));
  v22.i32[0] = *(v13 + 36);
  *&v23 = vmuls_lane_f32(*(v13 + 32), *&v20.f64[0], 1);
  *v20.f64 = *v22.i32 + (*&v23 + (*v20.f64 * v24.f32[0]));
  v16.i32[1] = LODWORD(v20.f64[0]);
  v28 = CI::BitmapSampler::read(*(v13 + 8), *&v16, v20, v23, *&v24, v22, v25, v26, v27);
  *&v28 = v15 + (*&v28 * v14);
  v29 = *&v35 / (v19 + 0.0001);
  v30 = vaddq_f32(vmulq_n_f32(v36, v29), vdupq_lane_s32(*&v28, 0));
  v31 = 1.0 - vmuls_lane_f32(sqrtf(v19), *&v35, 1);
  if (v31 <= 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 1.0;
  }

  if (v31 < 0.0)
  {
    v32 = 0.0;
  }

  *&result = vmulq_n_f32(v30, v32).u64[0];
  return result;
}

double CI::sw_swipeTransition(CI *a1, uint64_t a2, uint64_t a3)
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
  v13 = *(v3 + 88);
  v14 = *(v3 + 80);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (v13 == 5)
  {
    v16 = v15;
  }

  v27 = *v11;
  v28 = *v7;
  v29 = *(a2 + (v12 << 6));
  v26 = *v16;
  v17.i64[0] = *CI::getDC(a1);
  v17.i64[1] = 1065353216;
  v18 = vmulq_f32(v26, v17);
  v19 = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)));
  if (v19 <= 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = v19 < 0.0;
  v22 = 0.0;
  if (!v21)
  {
    v22 = v20;
  }

  v23 = fminf(1.0 - v22, v22);
  v24 = (v23 + v23) * v26.f32[3];
  *&result = vmlaq_n_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v27, 1.0 - v22), v28, v22), 1.0 - v24), v29, v24).u64[0];
  return result;
}

double get_input_xy(CIVector *a1, double *a2, double *a3)
{
  [(CIVector *)a1 X];
  v7 = v6;
  [(CIVector *)a1 Y];
  v9 = v8;
  result = 1.0;
  if (v7 < 1.0 && (v7 > 0.0 ? (v11 = v9 < 1.0) : (v11 = 0), v11 && v9 > 0.0))
  {
    *a2 = v7;
    *a3 = v9;
  }

  else
  {
    if (v7 < 2000.0 || v7 > 500000.0)
    {
      v12 = 6500.0;
      v9 = 0.0;
    }

    else
    {
      v12 = v7;
    }

    return tempTint_to_xy(v12, v9, a2, a3);
  }

  return result;
}

double tempTint_to_xy(double a1, double a2, double *a3, double *a4)
{
  v4 = &qword_19CF2A198;
  v5 = 29;
  v6 = 1000000.0 / a1;
  do
  {
    v7 = *v4;
    v4 += 4;
    v8 = v7;
    if (!v5)
    {
      break;
    }

    --v5;
  }

  while (v6 >= v8);
  v9 = a2 * -0.000333333333;
  v10 = (v8 - v6) / (v8 - *(v4 - 8));
  v11 = *(v4 - 3) * (1.0 - v10) + *(v4 - 7) * v10;
  v12 = *(v4 - 5);
  v13 = (1.0 - v10) * *(v4 - 2) + *(v4 - 6) * v10;
  v14 = *(v4 - 1);
  v15 = sqrt(v12 * v12 + 1.0);
  v16 = sqrt(v14 * v14 + 1.0);
  v17 = (1.0 - v10) * (1.0 / v16) + 1.0 / v15 * v10;
  v18 = (1.0 - v10) * (v14 / v16) + v12 / v15 * v10;
  v19 = sqrt(v18 * v18 + v17 * v17);
  v20 = v11 + v17 / v19 * v9;
  v21 = v13 + v18 / v19 * v9;
  v22 = v20 * 1.5;
  v23 = v20 + v21 * -4.0 + 2.0;
  *a3 = v22 / v23;
  result = v21 / v23;
  *a4 = result;
  return result;
}

double CI::sw_whitepointadjust(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_f32(*v7, *(a2 + (*(v3 + 32) << 6))).u64[0];
  return result;
}

double CI::sw_falseColor(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vmulq_f32(*v7, xmmword_19CF23D50);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  *&result = vmulq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (*(v3 + 32) << 6)), 1.0 - v8.f32[0]), *(a2 + (*(v3 + 56) << 6)), v8.f32[0]), *v7, 3).u64[0];
  return result;
}

void sub_19CDE64EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double makeBoundingBox(void *a1, float a2)
{
  [a1 boundingBox];
  v5 = v4 * a2;
  [a1 boundingBox];
  [a1 boundingBox];
  [a1 boundingBox];
  [a1 boundingBox];
  return v5;
}

CGFloat makeCorners(void *a1, CGPoint *a2, CGPoint *a3, CGPoint *a4, CGPoint *a5, float a6, float a7)
{
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(a1 "corners")], a2);
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(a1 "corners")], a3);
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(a1 "corners")], a5);
  CGPointMakeWithDictionaryRepresentation([objc_msgSend(a1 "corners")], a4);
  v14 = a7;
  v15 = v14 - a2->y * v14;
  a2->x = a2->x * a6;
  a2->y = v15;
  v16 = v14 - a3->y * v14;
  a3->x = a3->x * a6;
  a3->y = v16;
  v17 = v14 - a4->y * v14;
  a4->x = a4->x * a6;
  a4->y = v17;
  result = a5->x * a6;
  v19 = v14 - a5->y * v14;
  a5->x = result;
  a5->y = v19;
  return result;
}

uint64_t FutharkLibraryCore()
{
  if (!FutharkLibraryCore_frameworkLibrary)
  {
    FutharkLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return FutharkLibraryCore_frameworkLibrary;
}

uint64_t __FutharkLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  FutharkLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getFKTextDetectorClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!FutharkLibraryCore())
  {
    __getFKTextDetectorClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("FKTextDetector");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getFKTextDetectorClass_block_invoke_cold_1();
  }

  getFKTextDetectorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

unint64_t CI::sw_toneCurve(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9, float32x4_t a10)
{
  v12 = *(a1 + 40);
  v13 = *(v12 + 8);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v12 + 16) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v12 + 56);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (*(v12 + 64) == 5)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v12 + 104);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (*(v12 + 112) == 5)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v12 + 152);
  v26 = (a3 + 16 * v25);
  v27 = (a2 + (v25 << 6));
  if (*(v12 + 160) == 5)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = *(v12 + 200);
  v30 = (a3 + 16 * v29);
  v31 = (a2 + (v29 << 6));
  if (*(v12 + 208) == 5)
  {
    v32 = v30;
  }

  else
  {
    v32 = v31;
  }

  v33 = *(v12 + 248);
  v34 = (a3 + 16 * v33);
  v35 = (a2 + (v33 << 6));
  if (*(v12 + 256) != 5)
  {
    v34 = v35;
  }

  v36 = *(v12 + 224) << 6;
  v37 = *(v12 + 176) << 6;
  v38 = *(v12 + 128) << 6;
  v39 = *(v12 + 80) << 6;
  v40 = *(v12 + 32) << 6;
  v41 = *v16;
  v42 = *(a2 + v40);
  v43 = *v20;
  a10.i32[0] = *(a2 + v39);
  v44 = *v24;
  v10.i32[0] = *(a2 + v38);
  v45 = *v28;
  v11.i32[0] = *(a2 + v37);
  v46 = *v32;
  a9.i32[0] = *(a2 + v36);
  _Q4 = *v34;
  v48 = *(a2 + (*(v12 + 272) << 6));
  v49 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a9, *v16), 0), *v32, *v34);
  if (COERCE_FLOAT(*v16) >= a9.f32[0])
  {
    v50 = *(a2 + v36);
  }

  else
  {
    v50 = *(a2 + v37);
  }

  v51 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v11, v41), 0), v45, v49);
  if (v41.f32[0] < v11.f32[0])
  {
    v50 = *(a2 + v38);
  }

  v52 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v10, v41), 0), v44, v51);
  if (v41.f32[0] < v10.f32[0])
  {
    v50 = *(a2 + v39);
  }

  _Q20 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a10, v41), 0), v43, v52);
  if (v41.f32[0] < a10.f32[0])
  {
    v50 = *(a2 + v40);
  }

  _S21 = v41.f32[0] - v50;
  __asm { FMLA            S22, S21, V20.S[1] }

  v60 = (_S22 + (vmuls_lane_f32(_S21, _Q20, 2) * _S21)) + ((_S21 * vmuls_lane_f32(_S21, _Q20, 3)) * _S21);
  if (v41.f32[0] >= v42)
  {
    v61 = v60;
  }

  else
  {
    LODWORD(v61) = *v20;
  }

  __asm { FMLA            S23, S21, V4.S[1] }

  if (v41.f32[0] <= a9.f32[0])
  {
    _S23 = v61;
  }

  v63 = fmaxf(_S23, 0.0);
  if (v41.f32[0] > a9.f32[0])
  {
    LODWORD(v61) = *v34;
  }

  if (v61 <= 1.0)
  {
    v64 = v61;
  }

  else
  {
    v64 = 1.0;
  }

  if (v61 >= 0.0)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0.0;
  }

  if (v48 >= 0.5)
  {
    v65 = v63;
  }

  v66 = vdupq_lane_s32(*v41.f32, 1);
  v67 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a9, v66), 0), v46, _Q4);
  if (v41.f32[1] >= a9.f32[0])
  {
    v68 = *(a2 + v36);
  }

  else
  {
    v68 = *(a2 + v37);
  }

  v69 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v11, v66), 0), v45, v67);
  if (v41.f32[1] < v11.f32[0])
  {
    v68 = *(a2 + v38);
  }

  v70 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v10, v66), 0), v44, v69);
  if (v41.f32[1] < v10.f32[0])
  {
    v68 = *(a2 + v39);
  }

  _Q24 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a10, v66), 0), v43, v70);
  if (v41.f32[1] >= a10.f32[0])
  {
    v72 = v68;
  }

  else
  {
    v72 = *(a2 + v40);
  }

  _S26 = v41.f32[1] - v72;
  __asm { FMLA            S27, S26, V24.S[1] }

  v75 = (_S27 + (vmuls_lane_f32(_S26, _Q24, 2) * _S26)) + ((_S26 * vmuls_lane_f32(_S26, _Q24, 3)) * _S26);
  if (v41.f32[1] < v42)
  {
    LODWORD(v75) = *v20;
  }

  __asm { FMLA            S27, S26, V4.S[1] }

  if (v41.f32[1] <= a9.f32[0])
  {
    v77 = v75;
  }

  else
  {
    v77 = _S27;
  }

  v78 = fmaxf(v77, 0.0);
  if (v41.f32[1] > a9.f32[0])
  {
    LODWORD(v75) = *v34;
  }

  if (v75 <= 1.0)
  {
    v79 = v75;
  }

  else
  {
    v79 = 1.0;
  }

  if (v75 >= 0.0)
  {
    v80 = v79;
  }

  else
  {
    v80 = 0.0;
  }

  if (v48 >= 0.5)
  {
    v80 = v78;
  }

  v81 = vdupq_laneq_s32(v41, 2);
  v82 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a9, v81), 0), v46, _Q4);
  if (v41.f32[2] >= a9.f32[0])
  {
    v83 = *(a2 + v36);
  }

  else
  {
    v83 = *(a2 + v37);
  }

  v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v11, v81), 0), v45, v82);
  if (v41.f32[2] >= v11.f32[0])
  {
    v85 = v83;
  }

  else
  {
    v85 = *(a2 + v38);
  }

  v86 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v10, v81), 0), v44, v84);
  if (v41.f32[2] >= v10.f32[0])
  {
    v87 = v85;
  }

  else
  {
    v87 = *(a2 + v39);
  }

  _Q7 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(a10, v81), 0), v43, v86);
  if (v41.f32[2] >= a10.f32[0])
  {
    v89 = v87;
  }

  else
  {
    v89 = *(a2 + v40);
  }

  _S6 = v41.f32[2] - v89;
  __asm
  {
    FMLA            S16, S6, V7.S[1]
    FMLA            S3, S6, V4.S[1]
  }

  return __PAIR64__(LODWORD(v80), LODWORD(v65));
}

double CI::sw_triangleKaleidoscopeColor(CI *a1, uint64_t a2, uint64_t a3)
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

  v25 = *v15;
  v26 = *v7;
  v16 = *(a2 + (*(v3 + 80) << 6));
  v17 = vsub_f32(*CI::getDC(a1), *v11);
  v18 = vaddv_f32(vmul_f32(*v25.i8, v17));
  v19 = vaddv_f32(vmul_f32(*&vextq_s8(v25, v25, 8uLL), v17));
  *&v20 = v18 + 1.0 - v19;
  *&v21 = 2.0 - v18 + v19 * -2.0;
  *&v19 = v18 * -2.0 + 2.0 - v19;
  v22.i64[0] = __PAIR64__(v21, v20);
  v22.i64[1] = LODWORD(v19);
  v23 = vabsq_f32(vrndmq_f32(v22));
  *&result = vmulq_n_f32(v26, powf(v16, v23.f32[2] + vaddv_f32(*v23.f32))).u64[0];
  return result;
}

float32x2_t CI::sw_triangleKaleidoscopeGeom(CI *a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v34 = *v11;
  v35 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v34.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v34, v34, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  v23 = vdup_lane_s32(vcgt_f32(v21, vdup_lane_s32(v21, 1)), 0);
  v22 = vbsl_s8(v23, vrev64_s32(v21), v21);
  v23.i32[0] = v22.i32[1];
  v24 = *v22.i32;
  v25 = 2.0 - *v22.i32 - *&v22.i32[1];
  if (v25 < *&v22.i32[1])
  {
    v26 = v25;
    v23.f32[0] = v26;
  }

  v27 = 1.0 - v24 - v23.f32[0];
  if (v27 > v24)
  {
    v28 = v27;
    *v22.i32 = v28;
  }

  v29 = vcgt_f32(v22, v23);
  v22.i32[1] = v23.i32[0];
  v30 = vbsl_s8(vdup_lane_s32(v29, 0), vrev64_s32(v22), v22);
  v31 = vmul_f32(*v35.i8, v30);
  v32 = vmul_f32(*&vextq_s8(v35, v35, 8uLL), v30);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v31, v32), vzip2_s32(v31, v32)));
}

double CI::sw_triangleTile(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
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
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v19 = *v9;
  v38 = *v13;
  v39 = *v17;
  v20 = vsub_f32(*CI::getDC(a1), *v9);
  *&v27.f64[0] = vmul_f32(*v38.i8, v20);
  v23 = vmul_f32(*&vextq_s8(v38, v38, 8uLL), v20);
  v24 = vadd_f32(vzip1_s32(*&v27.f64[0], v23), vzip2_s32(*&v27.f64[0], v23));
  v25 = vminnm_f32(vsub_f32(v24, vrndm_f32(v24)), vdup_n_s32(0x3F7FFFFFu));
  *&v27.f64[0] = vdup_lane_s32(vcgt_f32(v25, vdup_lane_s32(v25, 1)), 0);
  v26 = vbsl_s8(*&v27.f64[0], vrev64_s32(v25), v25);
  LODWORD(v27.f64[0]) = v26.i32[1];
  v28 = *v26.i32;
  *v29.i64 = 2.0 - *v26.i32 - *&v26.i32[1];
  *v30.i32 = *v29.i64;
  if (*v29.i64 < *&v26.i32[1])
  {
    *v27.f64 = *v29.i64;
  }

  *v29.i64 = *v27.f64;
  v31 = 1.0 - v28 - *v27.f64;
  if (v31 > v28)
  {
    v32 = v31;
    *v26.i32 = v32;
  }

  v33 = vcgt_f32(v26, *&v27.f64[0]);
  v26.i32[1] = LODWORD(v27.f64[0]);
  v34 = vbsl_s8(vdup_lane_s32(v33, 0), vrev64_s32(v26), v26);
  *&v27.f64[0] = vmul_f32(*v39.i8, v34);
  v35 = vmul_f32(*&vextq_s8(v39, v39, 8uLL), v34);
  v36 = vzip1_s32(*&v27.f64[0], v35);
  *&v27.f64[0] = vadd_f32(v19, vadd_f32(v36, vzip2_s32(*&v27.f64[0], v35)));
  LODWORD(v28) = *(v18 + 28);
  *v35.i32 = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *&v27.f64[0], 1) + (*v27.f64 * *(v18 + 16)));
  v29.i32[0] = *(v18 + 36);
  v36.f32[0] = vmuls_lane_f32(*(v18 + 32), *&v27.f64[0], 1);
  *v27.f64 = *v29.i32 + (v36.f32[0] + (*v27.f64 * *&v28));
  v35.i32[1] = LODWORD(v27.f64[0]);
  return CI::BitmapSampler::read(*(v18 + 8), *&v35, v27, *&v36, v28, v29, v30, v21, v22);
}

float32x2_t CI::sw_twirl(CI *a1, uint64_t a2, uint64_t a3)
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

  v17 = *v7;
  DC = CI::getDC(a1);
  v9 = vsub_f32(*DC, *v17.f32);
  v10 = fminf(vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v9, v9))), v17, 2), 1.0);
  if (v10 >= 1.0)
  {
    return *CI::getDC(DC);
  }

  else
  {
    v11 = ((1.0 - v10) * -2.0 + 3.0) * (1.0 - v10) * (1.0 - v10);
    v12 = __sincosf_stret(vmuls_lane_f32(v11, v17, 3));
    v13.f32[0] = -v12.__sinval;
    v13.i32[1] = LODWORD(v12.__cosval);
    v14 = vmul_f32(v9, __PAIR64__(LODWORD(v12.__sinval), LODWORD(v12.__cosval)));
    v15 = vmul_f32(v9, v13);
    return vadd_f32(*v17.f32, vadd_f32(vzip1_s32(v14, v15), vzip2_s32(v14, v15)));
  }
}

void twirlTracePoint(double a1, double a2, CGPoint a3, float a4, float a5, CGRect *a6)
{
  v7 = a2;
  v8 = a1;
  v9 = a1 - a3.x;
  v10 = a2 - a3.y;
  v11 = v10 * v10 + v9 * v9;
  v12 = fminf(sqrtf(v11) * a4, 1.0);
  if (v12 < 1.0)
  {
    y = a3.y;
    x = a3.x;
    v15 = ((1.0 - v12) * -2.0 + 3.0) * (1.0 - v12) * (1.0 - v12);
    v16 = __sincosf_stret(v15 * a5);
    v17 = v10 * v16.__sinval + v9 * v16.__cosval;
    v18 = v10 * v16.__cosval - v9 * v16.__sinval;
    v8 = x + v17;
    v7 = y + v18;
  }

  v19.x = v8;
  v19.y = v7;
  if (!CGRectContainsPoint(*a6, v19))
  {
    v20.size.width = 0.0;
    v20.size.height = 0.0;
    v20.origin.x = v8;
    v20.origin.y = v7;
    *a6 = CGRectUnion(*a6, v20);
  }
}

unint64_t CI::sw_unsharpmask(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return vaddq_f32(*v7, vmulq_n_f32(vsubq_f32(*v7, vmulq_n_f32(*v11, COERCE_FLOAT(HIDWORD(*v7)) / fmaxf(COERCE_FLOAT(HIDWORD(*v11)), 0.0001))), *(a2 + (*(v3 + 56) << 6)))).u64[0];
}

void sub_19CDEBD68(_Unwind_Exception *a1)
{
  (STACK[0x218])(&STACK[0x208]);
  _Block_object_dispose(&STACK[0x238], 8);
  _Unwind_Resume(a1);
}

Class __getVNFaceObservationClass_block_invoke(uint64_t a1)
{
  VisionLibrary_0();
  result = objc_getClass("VNFaceObservation");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNFaceObservationClass_block_invoke_cold_1();
  }

  getVNFaceObservationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t VisionLibrary_0()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_0)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __VisionLibraryCore_block_invoke_0;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E75C3D58;
    v4 = 0;
    VisionLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_0;
  if (!VisionLibraryCore_frameworkLibrary_0)
  {
    VisionLibrary_cold_1_0(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __VisionLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getVNFaceAttributeSmilingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_0();
  result = dlsym(v2, "VNFaceAttributeSmiling");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeSmilingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getVNFaceAttributeEyesClosedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_0();
  result = dlsym(v2, "VNFaceAttributeEyesClosed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNFaceAttributeEyesClosedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

double CI::sw_variableBoxBlur(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v8 = *(v4 + 88);
  v9 = *(v4 + 80);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = a4 + 80 * v6;
  v13 = a4 + 80 * v5;
  v14 = *(a2 + (v7 << 6));
  v190 = *v11;
  DC = CI::getDC(a1);
  LODWORD(v16) = *(v12 + 24);
  v17.i32[0] = *(v12 + 36);
  *v18.i32 = vmuls_lane_f32(*(v12 + 32), *DC, 1);
  *&v19 = *v18.i32 + (COERCE_FLOAT(*DC) * *(v12 + 28));
  *&v20 = *&v16 + (vmuls_lane_f32(*(v12 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v12 + 16)));
  *v21.f64 = *v17.i32 + *&v19;
  *(&v20 + 1) = *v17.i32 + *&v19;
  *v24.i64 = CI::BitmapSampler::read(*(v12 + 8), v20, v21, v16, v19, v18, v17, v22, v23);
  v25 = vmulq_f32(vmulq_n_f32(v24, 1.0 / fmaxf(v24.f32[3], 0.00001)), xmmword_19CF283E0);
  v25.f32[0] = fmaxf(v14 * (v25.f32[2] + vaddv_f32(*v25.f32)), 0.5);
  v186 = v25;
  v27 = CI::getDC(v26);
  v28.f32[0] = -1.0 - v186.f32[0];
  v29 = v186;
  v28.f32[1] = -v186.f32[0];
  v30 = vadd_f32(*v27, v28);
  v31 = v190;
  v32 = vextq_s8(v31, v31, 8uLL);
  *v32.i8 = vadd_f32(*v32.i8, *v190.i8);
  v33.i64[1] = v190.i64[1];
  *v31.i8 = vminnm_f32(vmaxnm_f32(v30, *v190.i8), *v32.i8);
  *&v29.i32[1] = v186.f32[0] + 1.0;
  *&v34.f64[0] = vminnm_f32(vmaxnm_f32(vadd_f32(*v27, *v29.i8), *v190.i8), *v32.i8);
  v187 = v34;
  v188 = v31;
  v35 = v31;
  v35.i32[1] = HIDWORD(v34.f64[0]);
  *v35.i8 = vadd_f32(*v35.i8, 0xBF000000BF000000);
  *v32.i8 = vrndm_f32(*v35.i8);
  *&v34.f64[0] = vadd_f32(*v32.i8, 0x3F0000003F000000);
  v36 = v32;
  v182 = v32;
  *v32.i32 = vmuls_lane_f32(*(v13 + 20), *&v34.f64[0], 1) + (*v34.f64 * *(v13 + 16));
  v31.i32[0] = *(v13 + 24);
  v37.i32[0] = *(v13 + 36);
  *v29.i32 = vmuls_lane_f32(*(v13 + 32), *&v34.f64[0], 1);
  __asm { FMOV            V10.2S, #1.0 }

  *v33.i8 = vadd_f32(*v36.i8, _D10);
  v191 = v33;
  *v35.i8 = vsub_f32(*v33.i8, *v35.i8);
  v180 = v35;
  *v35.i32 = *v31.i32 + *v32.i32;
  *v34.f64 = *v37.i32 + (*v29.i32 + (*v34.f64 * *(v13 + 28)));
  v35.i32[1] = LODWORD(v34.f64[0]);
  *v43.i64 = CI::BitmapSampler::read(*(v13 + 8), *v35.i64, v34, *v32.i64, *v31.i64, v33, v29, v37, v36);
  v177 = v43;
  *v43.f32 = vadd_f32(*v191.i8, 0x3F0000003F000000);
  LODWORD(v44) = *(v13 + 24);
  v45.i32[0] = *(v13 + 36);
  *v46.i32 = vmuls_lane_f32(*(v13 + 32), *v43.f32, 1);
  *&v47 = *v46.i32 + (v43.f32[0] * *(v13 + 28));
  v43.f32[0] = *&v44 + (vmuls_lane_f32(*(v13 + 20), *v43.f32, 1) + (v43.f32[0] * *(v13 + 16)));
  *v48.f64 = *v45.i32 + *&v47;
  v43.f32[1] = *v45.i32 + *&v47;
  *v51.i64 = CI::BitmapSampler::read(*(v13 + 8), *v43.i64, v48, v44, v47, v46, v45, v49, v50);
  v173 = v51;
  v52 = v182;
  *v51.f32 = vadd_f32(__PAIR64__(v182.u32[1], v191.u32[0]), 0x3F0000003F000000);
  LODWORD(v53) = *(v13 + 24);
  v54.i32[0] = *(v13 + 36);
  *v55.i32 = vmuls_lane_f32(*(v13 + 32), *v51.f32, 1);
  *&v56 = *v55.i32 + (v51.f32[0] * *(v13 + 28));
  v51.f32[0] = *&v53 + (vmuls_lane_f32(*(v13 + 20), *v51.f32, 1) + (v51.f32[0] * *(v13 + 16)));
  *v52.f64 = *v54.i32 + *&v56;
  v51.f32[1] = *v54.i32 + *&v56;
  *v59.i64 = CI::BitmapSampler::read(*(v13 + 8), *v51.i64, v52, v53, v56, v55, v54, v57, v58);
  v169 = v59;
  v60 = v191;
  *v59.f32 = vadd_f32(__PAIR64__(v191.u32[1], v182.u32[0]), 0x3F0000003F000000);
  LODWORD(v61) = *(v13 + 24);
  v62.i32[0] = *(v13 + 36);
  *v63.i32 = vmuls_lane_f32(*(v13 + 32), *v59.f32, 1);
  *&v64 = *v63.i32 + (v59.f32[0] * *(v13 + 28));
  v59.f32[0] = *&v61 + (vmuls_lane_f32(*(v13 + 20), *v59.f32, 1) + (v59.f32[0] * *(v13 + 16)));
  *v60.f64 = *v62.i32 + *&v64;
  v59.f32[1] = *v62.i32 + *&v64;
  *v67.i64 = CI::BitmapSampler::read(*(v13 + 8), *v59.i64, v60, v61, v64, v63, v62, v65, v66);
  v68.i64[1] = v180.i64[1];
  v69 = vmlaq_n_f32(vmulq_n_f32(v169, 1.0 - *v180.i32), v177, *v180.i32);
  v70 = v173;
  v71 = vmlaq_n_f32(vmulq_n_f32(v173, 1.0 - *v180.i32), v67, *v180.i32);
  v181 = vmlaq_lane_f32(vmulq_n_f32(v71, 1.0 - *&v180.i32[1]), v69, *v180.i8, 1);
  v67.i64[1] = *&v187.f64[1];
  *v67.f32 = vadd_f32(*&v187.f64[0], 0xBF000000BF000000);
  *v69.f32 = vrndm_f32(*v67.f32);
  *v71.f32 = vadd_f32(*v69.f32, 0x3F0000003F000000);
  v72 = v69;
  v183 = v69;
  v69.f32[0] = vmuls_lane_f32(*(v13 + 20), *v71.f32, 1) + (v71.f32[0] * *(v13 + 16));
  LODWORD(v73) = *(v13 + 24);
  v74.i32[0] = *(v13 + 36);
  *v70.i32 = vmuls_lane_f32(*(v13 + 32), *v71.f32, 1);
  *v68.i8 = vadd_f32(*v72.i8, _D10);
  v192 = v68;
  *v67.f32 = vsub_f32(*v68.i8, *v67.f32);
  v178 = v67;
  v67.f32[0] = *&v73 + v69.f32[0];
  v71.f32[0] = *v74.i32 + (*v70.i32 + (v71.f32[0] * *(v13 + 28)));
  v67.i32[1] = v71.i32[0];
  *v75.i64 = CI::BitmapSampler::read(*(v13 + 8), *v67.i64, v71, *v69.i64, v73, v68, v70, v74, v72);
  v174 = v75;
  *v75.f32 = vadd_f32(*v192.i8, 0x3F0000003F000000);
  LODWORD(v76) = *(v13 + 24);
  v77.i32[0] = *(v13 + 36);
  *v78.i32 = vmuls_lane_f32(*(v13 + 32), *v75.f32, 1);
  *&v79 = *v78.i32 + (v75.f32[0] * *(v13 + 28));
  v75.f32[0] = *&v76 + (vmuls_lane_f32(*(v13 + 20), *v75.f32, 1) + (v75.f32[0] * *(v13 + 16)));
  *v80.f64 = *v77.i32 + *&v79;
  v75.f32[1] = *v77.i32 + *&v79;
  *v83.i64 = CI::BitmapSampler::read(*(v13 + 8), *v75.i64, v80, v76, v79, v78, v77, v81, v82);
  v170 = v83;
  v84 = v183;
  *v83.f32 = vadd_f32(__PAIR64__(v183.u32[1], v192.u32[0]), 0x3F0000003F000000);
  LODWORD(v85) = *(v13 + 24);
  v86.i32[0] = *(v13 + 36);
  *v87.i32 = vmuls_lane_f32(*(v13 + 32), *v83.f32, 1);
  *&v88 = *v87.i32 + (v83.f32[0] * *(v13 + 28));
  v83.f32[0] = *&v85 + (vmuls_lane_f32(*(v13 + 20), *v83.f32, 1) + (v83.f32[0] * *(v13 + 16)));
  *v84.f64 = *v86.i32 + *&v88;
  v83.f32[1] = *v86.i32 + *&v88;
  *v91.i64 = CI::BitmapSampler::read(*(v13 + 8), *v83.i64, v84, v85, v88, v87, v86, v89, v90);
  v166 = v91;
  v92 = v192;
  *v91.f32 = vadd_f32(__PAIR64__(v192.u32[1], v183.u32[0]), 0x3F0000003F000000);
  LODWORD(v93) = *(v13 + 24);
  v94.i32[0] = *(v13 + 36);
  *v95.i32 = vmuls_lane_f32(*(v13 + 32), *v91.f32, 1);
  *&v96 = *v95.i32 + (v91.f32[0] * *(v13 + 28));
  v91.f32[0] = *&v93 + (vmuls_lane_f32(*(v13 + 20), *v91.f32, 1) + (v91.f32[0] * *(v13 + 16)));
  *v92.f64 = *v94.i32 + *&v96;
  v91.f32[1] = *v94.i32 + *&v96;
  *v99.i64 = CI::BitmapSampler::read(*(v13 + 8), *v91.i64, v92, v93, v96, v95, v94, v97, v98);
  v100.i64[1] = v178.i64[1];
  v101 = vmlaq_n_f32(vmulq_n_f32(v166, 1.0 - v178.f32[0]), v174, v178.f32[0]);
  v102 = v170;
  v103 = vmlaq_n_f32(vmulq_n_f32(v170, 1.0 - v178.f32[0]), v99, v178.f32[0]);
  v179 = vmlaq_lane_f32(vmulq_n_f32(v103, 1.0 - v178.f32[1]), v101, *v178.f32, 1);
  v99.i64[1] = v188.i64[1];
  *v99.f32 = vadd_f32(*v188.i8, 0xBF000000BF000000);
  *v101.f32 = vrndm_f32(*v99.f32);
  *v103.f32 = vadd_f32(*v101.f32, 0x3F0000003F000000);
  v104 = v101;
  v184 = v101;
  v101.f32[0] = vmuls_lane_f32(*(v13 + 20), *v103.f32, 1) + (v103.f32[0] * *(v13 + 16));
  LODWORD(v105) = *(v13 + 24);
  v106.i32[0] = *(v13 + 36);
  *v102.i32 = vmuls_lane_f32(*(v13 + 32), *v103.f32, 1);
  *v100.i8 = vadd_f32(*v104.i8, _D10);
  v193 = v100;
  *v99.f32 = vsub_f32(*v100.i8, *v99.f32);
  v175 = v99;
  v99.f32[0] = *&v105 + v101.f32[0];
  v103.f32[0] = *v106.i32 + (*v102.i32 + (v103.f32[0] * *(v13 + 28)));
  v99.i32[1] = v103.i32[0];
  *v107.i64 = CI::BitmapSampler::read(*(v13 + 8), *v99.i64, v103, *v101.i64, v105, v100, v102, v106, v104);
  v171 = v107;
  *v107.f32 = vadd_f32(*v193.i8, 0x3F0000003F000000);
  LODWORD(v108) = *(v13 + 24);
  v109.i32[0] = *(v13 + 36);
  *v110.i32 = vmuls_lane_f32(*(v13 + 32), *v107.f32, 1);
  *&v111 = *v110.i32 + (v107.f32[0] * *(v13 + 28));
  v107.f32[0] = *&v108 + (vmuls_lane_f32(*(v13 + 20), *v107.f32, 1) + (v107.f32[0] * *(v13 + 16)));
  *v112.f64 = *v109.i32 + *&v111;
  v107.f32[1] = *v109.i32 + *&v111;
  *v115.i64 = CI::BitmapSampler::read(*(v13 + 8), *v107.i64, v112, v108, v111, v110, v109, v113, v114);
  v167 = v115;
  v116 = v184;
  *v115.f32 = vadd_f32(__PAIR64__(v184.u32[1], v193.u32[0]), 0x3F0000003F000000);
  LODWORD(v117) = *(v13 + 24);
  v118.i32[0] = *(v13 + 36);
  *v119.i32 = vmuls_lane_f32(*(v13 + 32), *v115.f32, 1);
  *&v120 = *v119.i32 + (v115.f32[0] * *(v13 + 28));
  v115.f32[0] = *&v117 + (vmuls_lane_f32(*(v13 + 20), *v115.f32, 1) + (v115.f32[0] * *(v13 + 16)));
  *v116.f64 = *v118.i32 + *&v120;
  v115.f32[1] = *v118.i32 + *&v120;
  *v123.i64 = CI::BitmapSampler::read(*(v13 + 8), *v115.i64, v116, v117, v120, v119, v118, v121, v122);
  v165 = v123;
  v124 = v193;
  *v123.f32 = vadd_f32(__PAIR64__(v193.u32[1], v184.u32[0]), 0x3F0000003F000000);
  LODWORD(v125) = *(v13 + 24);
  v126.i32[0] = *(v13 + 36);
  *v127.i32 = vmuls_lane_f32(*(v13 + 32), *v123.f32, 1);
  *&v128 = *v127.i32 + (v123.f32[0] * *(v13 + 28));
  v123.f32[0] = *&v125 + (vmuls_lane_f32(*(v13 + 20), *v123.f32, 1) + (v123.f32[0] * *(v13 + 16)));
  *v124.f64 = *v126.i32 + *&v128;
  v123.f32[1] = *v126.i32 + *&v128;
  *v131.i64 = CI::BitmapSampler::read(*(v13 + 8), *v123.i64, v124, v125, v128, v127, v126, v129, v130);
  v132 = v175;
  v133 = vmlaq_n_f32(vmulq_n_f32(v165, 1.0 - v175.f32[0]), v171, v175.f32[0]);
  v185 = vmlaq_lane_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v167, 1.0 - v175.f32[0]), v131, v175.f32[0]), 1.0 - v175.f32[1]), v133, *v175.f32, 1);
  *&v134.f64[1] = v188.i64[1];
  *v131.f32 = vadd_f32(__PAIR64__(v188.u32[1], LODWORD(v187.f64[0])), 0xBF000000BF000000);
  *v133.f32 = vrndm_f32(*v131.f32);
  v189 = v133;
  *v193.i8 = vadd_f32(*v133.f32, _D10);
  *&v187.f64[0] = vsub_f32(*v193.i8, *v131.f32);
  *&v134.f64[0] = vadd_f32(*v133.f32, 0x3F0000003F000000);
  LODWORD(v135) = *(v13 + 28);
  v131.f32[0] = *(v13 + 24) + (vmuls_lane_f32(*(v13 + 20), *&v134.f64[0], 1) + (*v134.f64 * *(v13 + 16)));
  v132.i32[0] = *(v13 + 36);
  v133.f32[0] = vmuls_lane_f32(*(v13 + 32), *&v134.f64[0], 1);
  *v134.f64 = *v132.i32 + (v133.f32[0] + (*v134.f64 * *&v135));
  v131.i32[1] = LODWORD(v134.f64[0]);
  *v138.i64 = CI::BitmapSampler::read(*(v13 + 8), *v131.i64, v134, *v133.i64, v135, v132, v167, v136, v137);
  v176 = v138;
  *v138.f32 = vadd_f32(*v193.i8, 0x3F0000003F000000);
  LODWORD(v139) = *(v13 + 24);
  v140.i32[0] = *(v13 + 36);
  *v141.i32 = vmuls_lane_f32(*(v13 + 32), *v138.f32, 1);
  *&v142 = *v141.i32 + (v138.f32[0] * *(v13 + 28));
  v138.f32[0] = *&v139 + (vmuls_lane_f32(*(v13 + 20), *v138.f32, 1) + (v138.f32[0] * *(v13 + 16)));
  *v143.f64 = *v140.i32 + *&v142;
  v138.f32[1] = *v140.i32 + *&v142;
  *v146.i64 = CI::BitmapSampler::read(*(v13 + 8), *v138.i64, v143, v139, v142, v141, v140, v144, v145);
  v172 = v146;
  v147 = v189;
  *v146.f32 = vadd_f32(__PAIR64__(v189.u32[1], v193.u32[0]), 0x3F0000003F000000);
  LODWORD(v148) = *(v13 + 24);
  v149.i32[0] = *(v13 + 36);
  *v150.i32 = vmuls_lane_f32(*(v13 + 32), *v146.f32, 1);
  *&v151 = *v150.i32 + (v146.f32[0] * *(v13 + 28));
  v146.f32[0] = *&v148 + (vmuls_lane_f32(*(v13 + 20), *v146.f32, 1) + (v146.f32[0] * *(v13 + 16)));
  *v147.f64 = *v149.i32 + *&v151;
  v146.f32[1] = *v149.i32 + *&v151;
  *v154.i64 = CI::BitmapSampler::read(*(v13 + 8), *v146.i64, v147, v148, v151, v150, v149, v152, v153);
  v168 = v154;
  v155 = v189;
  HIDWORD(v155.f64[0]) = v193.i32[1];
  *v154.f32 = vadd_f32(*&v155.f64[0], 0x3F0000003F000000);
  LODWORD(v156) = *(v13 + 24);
  v157.i32[0] = *(v13 + 36);
  *v158.i32 = vmuls_lane_f32(*(v13 + 32), *v154.f32, 1);
  *&v159 = *v158.i32 + (v154.f32[0] * *(v13 + 28));
  v154.f32[0] = *&v156 + (vmuls_lane_f32(*(v13 + 20), *v154.f32, 1) + (v154.f32[0] * *(v13 + 16)));
  *v155.f64 = *v157.i32 + *&v159;
  v154.f32[1] = *v157.i32 + *&v159;
  *v162.i64 = CI::BitmapSampler::read(*(v13 + 8), *v154.i64, v155, v156, v159, v158, v157, v160, v161);
  v163 = vsubq_f32(vsubq_f32(vaddq_f32(v181, vmlaq_lane_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_n_f32(v172, 1.0 - *v187.f64), v162, *v187.f64), 1.0 - *(v187.f64 + 1)), vmlaq_n_f32(vmulq_n_f32(v168, 1.0 - *v187.f64), v176, *v187.f64), *&v187.f64[0], 1)), v179), v185);
  *&result = vdivq_f32(v163, vdupq_laneq_s32(v163, 3)).u64[0];
  return result;
}

unint64_t CI::sw_vibrance_neg(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = vminnmq_f32(vmaxnmq_f32(*v7, vdupq_n_s32(0x38D1B717u)), vdupq_n_s32(0x3F7FF972u));
  v9 = vsubq_f32(*v7, v8);
  v10 = (v8.f32[2] + vaddv_f32(*v8.f32)) * 0.33333;
  *&v10 = v10;
  v11 = 1.0 / *&v10;
  v12 = 1.0 / (1.0 - *&v10);
  v13 = vdupq_lane_s32(*&v10, 0);
  v14 = vsubq_f32(v8, v13);
  v15 = vmulq_n_f32(v14, v12);
  v16 = vmulq_n_f32(vsubq_f32(v13, v8), v11);
  v15.i32[3] = 0;
  v16.i32[3] = 0;
  v17 = vmaxnmq_f32(v15, v16);
  v18 = fmaxf(fmaxf(v17.f32[0], v17.f32[1]), v17.f32[2]);
  v19 = -(v8.f32[2] - v8.f32[1] * 2.0);
  v20 = (1.0 - v17.f32[0]) * (fminf(v8.f32[0] - v8.f32[1], v19) * 4.0) * v11;
  if (v20 <= 1.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1.0;
  }

  _NF = v20 < 0.0;
  v23 = 0.0;
  if (!_NF)
  {
    v23 = v21;
  }

  v24 = v23 * 0.7 + 0.15;
  v25 = (v18 * (v18 + -1.0) + 1.0) * *(a2 + (*(v3 + 32) << 6)) * (1.0 - v24);
  v26 = vmaxnmq_f32(vaddq_f32(v8, vmulq_n_f32(v14, v25)), 0);
  __asm { FMOV            V3.4S, #1.0 }

  return vaddq_f32(v9, vminnmq_f32(v26, _Q3)).u64[0];
}

unint64_t CI::sw_vibrance_pos(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = vminnmq_f32(vmaxnmq_f32(*v7, vdupq_n_s32(0x38D1B717u)), vdupq_n_s32(0x3F7FF972u));
  v13 = vsubq_f32(*v7, v12);
  v14.i32[1] = 1070945607;
  *v14.i32 = (v12.f32[2] + vaddv_f32(*v12.f32)) * 0.33333;
  v15 = 1.0 / *v14.i32;
  v16 = 1.0 / (1.0 - *v14.i32);
  v17 = vdupq_lane_s32(v14, 0);
  v18 = vsubq_f32(v12, v17);
  v19 = vmulq_n_f32(v18, v16);
  v20 = vmulq_n_f32(vsubq_f32(v17, v12), v15);
  v19.i32[3] = 0;
  v20.i32[3] = 0;
  v21 = vmaxnmq_f32(v19, v20);
  v22 = fmaxf(fmaxf(v21.f32[0], v21.f32[1]), v21.f32[2]);
  v23 = -(v12.f32[2] - v12.f32[1] * 2.0);
  v24 = (1.0 - v21.f32[0]) * (fminf(v12.f32[0] - v12.f32[1], v23) * 4.0) * v15;
  if (v24 <= 1.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1.0;
  }

  _NF = v24 < 0.0;
  v27 = 0.0;
  if (!_NF)
  {
    v27 = v25;
  }

  __asm { FMOV            V17.4S, #1.0 }

  v32.i64[0] = __PAIR64__(LODWORD(v22), _Q17.u32[0]);
  v32.f32[2] = v22 * v22;
  v32.f32[3] = v22 * (v22 * v22);
  v33 = v27 * 0.7 + 0.15;
  v34 = vmulq_f32(*v11, v32);
  *v34.i32 = (1.0 - v33) * vaddv_f32(vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)));
  return vaddq_f32(v13, vminnmq_f32(vmaxnmq_f32(vaddq_f32(v12, vmulq_n_f32(v18, *v34.i32)), 0), _Q17)).u64[0];
}

double CI::sw_vignette(CI *a1, uint64_t a2, uint64_t a3)
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

  v14 = *v11->f32;
  v15 = *v7;
  v12 = vsub_f32(*CI::getDC(a1), *v11);
  *&result = vmulq_n_f32(v15, powf(fmaxf(1.0 - vmuls_lane_f32(vaddv_f32(vmul_f32(v12, v12)), v14, 3), 0.0), v14.f32[2])).u64[0];
  return result;
}

double CI::sw_vignetteeffect(CI *a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v25 = *v15;
  v26 = *v7;
  v16 = vmul_n_f32(vsub_f32(*CI::getDC(a1), *v11), COERCE_FLOAT(*v15));
  v17 = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v16, v16))) - v25.f32[1], v25, 2);
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = v17 < 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v20 = v18;
  }

  v21 = ((v20 * 6.0 + -15.0) * v20 + 10.0) * (v20 * (v20 * v20));
  v22 = vmuls_lane_f32(v21, v25, 3);
  v23 = ((((1.0 - v22) * -0.120638501 + 0.543878646) * (1.0 - v22) + 0.538772615) * (1.0 - v22) + 0.0376009997) * (1.0 - v22);
  *&result = vmulq_n_f32(v26, v23).u64[0];
  return result;
}

double CI::sw_vignetteeffectneg(CI *a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v24 = *v15;
  v25 = *v7;
  v16 = vmul_n_f32(vsub_f32(*CI::getDC(a1), *v11), COERCE_FLOAT(*v15));
  v17 = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v16, v16))) - v24.f32[1], v24, 2);
  v18 = 1.0;
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  v19 = v17 < 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v20 = v18;
  }

  v21 = ((v20 * 6.0 + -15.0) * v20 + 10.0) * (v20 * (v20 * v20));
  v22 = v21 * 16.0 * v24.f32[3] + 1.0;
  *&result = vmulq_n_f32(v25, v22).u64[0];
  return result;
}

uint64_t CIVNDetectFaces(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (a3)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v9 = getVNImageOptionCIContextSymbolLoc_ptr;
    v39 = getVNImageOptionCIContextSymbolLoc_ptr;
    if (!getVNImageOptionCIContextSymbolLoc_ptr)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __getVNImageOptionCIContextSymbolLoc_block_invoke;
      v44 = &unk_1E75C1E10;
      v45 = &v36;
      v10 = VisionLibrary_1();
      v11 = dlsym(v10, "VNImageOptionCIContext");
      *(*(v45 + 1) + 24) = v11;
      getVNImageOptionCIContextSymbolLoc_ptr = *(*(v45 + 1) + 24);
      v9 = *(v37 + 24);
    }

    _Block_object_dispose(&v36, 8);
    if (!v9)
    {
      CIVNDetectFaces_cold_1();
    }

    [v8 setObject:a3 forKey:*v9];
  }

  if (a4)
  {
    if ([a4 objectForKey:@"kCIVNDetectOptionRequestLandmarks"])
    {
      v12 = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestLandmarks", "BOOLValue"}];
    }

    else
    {
      v12 = 0;
    }

    if ([a4 objectForKey:@"kCIVNDetectOptionRequestAttributes"])
    {
      v14 = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestAttributes", "BOOLValue"}];
    }

    else
    {
      v14 = 0;
    }

    if ([a4 objectForKey:@"kCIVNDetectOptionRequestPose"])
    {
      v15 = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestPose", "BOOLValue"}];
    }

    else
    {
      v15 = 0;
    }

    if ([a4 objectForKey:@"kCIVNDetectOptionRequestFast"])
    {
      v13 = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestFast", "BOOLValue"}];
    }

    else
    {
      v13 = 0;
    }

    if ([a4 objectForKey:@"kCIVNDetectOptionRequestSegments"])
    {
      LODWORD(a4) = [objc_msgSend(a4 objectForKey:{@"kCIVNDetectOptionRequestSegments", "BOOLValue"}];
    }

    else
    {
      LODWORD(a4) = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = 0;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3052000000;
  v44 = __Block_byref_object_copy__18;
  v16 = getVNImageRequestHandlerClass_softClass;
  v45 = __Block_byref_object_dispose__18;
  v46 = getVNImageRequestHandlerClass_softClass;
  if (!getVNImageRequestHandlerClass_softClass)
  {
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __getVNImageRequestHandlerClass_block_invoke;
    v39 = &unk_1E75C1E10;
    v40 = &v41;
    __getVNImageRequestHandlerClass_block_invoke(&v36);
    v16 = *(v42 + 40);
  }

  _Block_object_dispose(&v41, 8);
  v17 = [[v16 alloc] initWithCIImage:a1 orientation:a2 options:v8];
  v35 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3052000000;
  v44 = __Block_byref_object_copy__18;
  v18 = getVNDetectFaceRectanglesRequestClass_softClass;
  v45 = __Block_byref_object_dispose__18;
  v46 = getVNDetectFaceRectanglesRequestClass_softClass;
  if (!getVNDetectFaceRectanglesRequestClass_softClass)
  {
    v36 = MEMORY[0x1E69E9820];
    v37 = 3221225472;
    v38 = __getVNDetectFaceRectanglesRequestClass_block_invoke;
    v39 = &unk_1E75C1E10;
    v40 = &v41;
    __getVNDetectFaceRectanglesRequestClass_block_invoke(&v36);
    v18 = *(v42 + 40);
  }

  _Block_object_dispose(&v41, 8);
  v19 = objc_alloc_init(v18);
  [v19 setRevision:3];
  if (v13)
  {
    [v19 setDetectionLevel:2];
  }

  v51[0] = v19;
  [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", v51, 1, v35, v36), &v35}];
  if (v35)
  {
    v20 = ci_logger_api();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      CIVNDetectFaces_cold_2(&v35);
    }

    v21 = 0;
  }

  else
  {
    v21 = [v19 results];
  }

  if (v14)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__18;
    v22 = getVNClassifyFaceAttributesRequestClass_softClass;
    v45 = __Block_byref_object_dispose__18;
    v46 = getVNClassifyFaceAttributesRequestClass_softClass;
    if (!getVNClassifyFaceAttributesRequestClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getVNClassifyFaceAttributesRequestClass_block_invoke;
      v39 = &unk_1E75C1E10;
      v40 = &v41;
      __getVNClassifyFaceAttributesRequestClass_block_invoke(&v36);
      v22 = *(v42 + 40);
    }

    _Block_object_dispose(&v41, 8);
    v23 = objc_alloc_init(v22);
    [v23 setRevision:3737841666 error:0];
    [v23 setInputFaceObservations:v21];
    v50 = v23;
    [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v50, 1), &v35}];
    if (v35)
    {
      v24 = ci_logger_api();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        CIVNDetectFaces_cold_3(&v35);
      }
    }

    else
    {
      v21 = [v23 results];
    }
  }

  if (v12)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__18;
    v25 = getVNDetectFaceLandmarksRequestClass_softClass;
    v45 = __Block_byref_object_dispose__18;
    v46 = getVNDetectFaceLandmarksRequestClass_softClass;
    if (!getVNDetectFaceLandmarksRequestClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getVNDetectFaceLandmarksRequestClass_block_invoke;
      v39 = &unk_1E75C1E10;
      v40 = &v41;
      __getVNDetectFaceLandmarksRequestClass_block_invoke(&v36);
      v25 = *(v42 + 40);
    }

    _Block_object_dispose(&v41, 8);
    v26 = objc_alloc_init(v25);
    [v26 setRevision:2];
    [v26 setInputFaceObservations:v21];
    v49 = v26;
    [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v49, 1), &v35}];
    if (v35)
    {
      v27 = ci_logger_api();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        CIVNDetectFaces_cold_4(&v35);
      }
    }

    else
    {
      v21 = [v26 results];
    }
  }

  if (v15)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__18;
    v28 = getVNDetectFacePoseRequestClass_softClass;
    v45 = __Block_byref_object_dispose__18;
    v46 = getVNDetectFacePoseRequestClass_softClass;
    if (!getVNDetectFacePoseRequestClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getVNDetectFacePoseRequestClass_block_invoke;
      v39 = &unk_1E75C1E10;
      v40 = &v41;
      __getVNDetectFacePoseRequestClass_block_invoke(&v36);
      v28 = *(v42 + 40);
    }

    _Block_object_dispose(&v41, 8);
    v29 = objc_alloc_init(v28);
    [v29 setRevision:1];
    [v29 setInputFaceObservations:v21];
    v48 = v29;
    [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v48, 1), &v35}];
    if (v35)
    {
      v30 = ci_logger_api();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        CIVNDetectFaces_cold_5(&v35);
      }
    }

    else
    {
      v21 = [v29 results];
    }
  }

  if (a4)
  {
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__18;
    v31 = getVNGenerateFaceSegmentsRequestClass_softClass;
    v45 = __Block_byref_object_dispose__18;
    v46 = getVNGenerateFaceSegmentsRequestClass_softClass;
    if (!getVNGenerateFaceSegmentsRequestClass_softClass)
    {
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __getVNGenerateFaceSegmentsRequestClass_block_invoke;
      v39 = &unk_1E75C1E10;
      v40 = &v41;
      __getVNGenerateFaceSegmentsRequestClass_block_invoke(&v36);
      v31 = *(v42 + 40);
    }

    _Block_object_dispose(&v41, 8);
    v32 = objc_alloc_init(v31);
    [v32 setInputFaceObservations:v21];
    v47 = v32;
    [v17 performRequests:objc_msgSend(MEMORY[0x1E695DEC8] error:{"arrayWithObjects:count:", &v47, 1), &v35}];
    if (v35)
    {
      v33 = ci_logger_api();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        CIVNDetectFaces_cold_6(&v35);
      }
    }

    else
    {
      v21 = [v32 results];
    }
  }

  return v21;
}

void sub_19CDEFBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CIVNAverage(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = 0.0;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(a1);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 X];
        v6 = v6 + v9;
        [v8 Y];
        v5 = v5 + v10;
      }

      v3 = [a1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  else
  {
    v6 = 0.0;
  }

  v11 = [a1 count];
  [a1 count];
  return v6 / v11;
}

double CIVNBoundingRect(void *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = [a1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v2)
  {
    return 1.79769313e308;
  }

  v3 = v2;
  v4 = *v21;
  v5 = -1.79769313e308;
  v6 = 1.79769313e308;
  v7 = 1.79769313e308;
  v8 = -1.79769313e308;
  do
  {
    for (i = 0; i != v3; ++i)
    {
      if (*v21 != v4)
      {
        objc_enumerationMutation(a1);
      }

      v10 = *(*(&v20 + 1) + 8 * i);
      [v10 X];
      if (v6 >= v11)
      {
        [v10 X];
        v6 = v12;
      }

      [v10 Y];
      if (v7 >= v13)
      {
        [v10 Y];
        v7 = v14;
      }

      [v10 X];
      if (v5 <= v15)
      {
        [v10 X];
        v5 = v16;
      }

      [v10 Y];
      if (v8 <= v17)
      {
        [v10 Y];
        v8 = v18;
      }
    }

    v3 = [a1 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v3);
  return v6;
}

id CIVNLandmarkInOrientedImage(void *a1, void *a2)
{
  v4 = [objc_msgSend(a2 "properties")];
  if (!v4)
  {
    v4 = &unk_1F1082388;
  }

  v5 = [v4 intValue];

  return denormalizedOrientatedLandmarkPoints(a1, a2, v5);
}

id denormalizedOrientatedLandmarkPoints(void *a1, void *a2, uint64_t a3)
{
  v6 = [a1 pointCount];
  [a2 extent];
  if ((a3 - 5) >= 4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if ((a3 - 5) >= 4)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = [a1 pointsInImageOfSize:{v9, v10}];
  v12 = 0uLL;
  memset(&v18, 0, sizeof(v18));
  if (a2)
  {
    [a2 imageTransformForOrientation:a3];
    v12 = 0uLL;
  }

  *&v17.c = v12;
  *&v17.tx = v12;
  *&v17.a = v12;
  v16 = v18;
  CGAffineTransformInvert(&v17, &v16);
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  if (v6)
  {
    v14 = (v11 + 8);
    do
    {
      [v13 addObject:{+[CIVector vectorWithCGPoint:](CIVector, "vectorWithCGPoint:", vaddq_f64(*&v17.tx, vmlaq_n_f64(vmulq_n_f64(*&v17.c, *v14), *&v17.a, *(v14 - 1))))}];
      v14 += 2;
      --v6;
    }

    while (v6);
  }

  return v13;
}

void CIVNRectInOrientedImage(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [a1 extent];
  v11 = v10;
  v13 = v12;
  v14 = [objc_msgSend(a1 "properties")];
  if (!v14)
  {
    v14 = &unk_1F1082388;
  }

  v15 = [v14 intValue] - 5;
  if (v15 >= 4)
  {
    v16 = v11;
  }

  else
  {
    v16 = v13;
  }

  if (v15 >= 4)
  {
    v17 = v13;
  }

  else
  {
    v17 = v11;
  }

  memset(&v25, 0, sizeof(v25));
  CGAffineTransformMakeScale(&v25, v16, v17);
  v27 = v25;
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v29 = CGRectApplyAffineTransform(v28, &v27);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v22 = [objc_msgSend(a1 "properties")];
  if (!v22)
  {
    v22 = &unk_1F1082388;
  }

  v23 = [v22 intValue];
  memset(&v27, 0, sizeof(v27));
  if (a1)
  {
    [a1 imageTransformForOrientation:v23];
  }

  memset(&v24, 0, sizeof(v24));
  v26 = v27;
  CGAffineTransformInvert(&v24, &v26);
  v27 = v24;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectApplyAffineTransform(v30, &v27);
}

uint64_t CIVNDenormalizedLandmarks(void *a1, uint64_t a2, void *a3)
{
  v8[13] = *MEMORY[0x1E69E9840];
  v5 = [a3 landmarks];
  v7[0] = @"allPoints";
  v8[0] = denormalizedOrientatedLandmarkPoints([v5 allPoints], a1, a2);
  v7[1] = @"faceContour";
  v8[1] = denormalizedOrientatedLandmarkPoints([v5 faceContour], a1, a2);
  v7[2] = @"innerLips";
  v8[2] = denormalizedOrientatedLandmarkPoints([v5 innerLips], a1, a2);
  v7[3] = @"leftEye";
  v8[3] = denormalizedOrientatedLandmarkPoints([v5 leftEye], a1, a2);
  v7[4] = @"leftEyebrow";
  v8[4] = denormalizedOrientatedLandmarkPoints([v5 leftEyebrow], a1, a2);
  v7[5] = @"leftPupil";
  v8[5] = denormalizedOrientatedLandmarkPoints([v5 leftPupil], a1, a2);
  v7[6] = @"medianLine";
  v8[6] = denormalizedOrientatedLandmarkPoints([v5 medianLine], a1, a2);
  v7[7] = @"nose";
  v8[7] = denormalizedOrientatedLandmarkPoints([v5 nose], a1, a2);
  v7[8] = @"noseCrest";
  v8[8] = denormalizedOrientatedLandmarkPoints([v5 noseCrest], a1, a2);
  v7[9] = @"outerLips";
  v8[9] = denormalizedOrientatedLandmarkPoints([v5 outerLips], a1, a2);
  v7[10] = @"rightEye";
  v8[10] = denormalizedOrientatedLandmarkPoints([v5 rightEye], a1, a2);
  v7[11] = @"rightEyebrow";
  v8[11] = denormalizedOrientatedLandmarkPoints([v5 rightEyebrow], a1, a2);
  v7[12] = @"rightPupil";
  v8[12] = denormalizedOrientatedLandmarkPoints([v5 rightPupil], a1, a2);
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:13];
}

void *__getVNImageOptionCIContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionLibrary_1();
  result = dlsym(v2, "VNImageOptionCIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNImageOptionCIContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t VisionLibrary_1()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!VisionLibraryCore_frameworkLibrary_1)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __VisionLibraryCore_block_invoke_1;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E75C3DB8;
    v4 = 0;
    VisionLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = VisionLibraryCore_frameworkLibrary_1;
  if (!VisionLibraryCore_frameworkLibrary_1)
  {
    VisionLibrary_cold_1_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __VisionLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  VisionLibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getVNImageRequestHandlerClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNImageRequestHandlerClass_block_invoke_cold_1();
  }

  getVNImageRequestHandlerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNDetectFaceRectanglesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNDetectFaceRectanglesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFaceRectanglesRequestClass_block_invoke_cold_1();
  }

  getVNDetectFaceRectanglesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNClassifyFaceAttributesRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNClassifyFaceAttributesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNClassifyFaceAttributesRequestClass_block_invoke_cold_1();
  }

  getVNClassifyFaceAttributesRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNDetectFaceLandmarksRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNDetectFaceLandmarksRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFaceLandmarksRequestClass_block_invoke_cold_1();
  }

  getVNDetectFaceLandmarksRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNDetectFacePoseRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNDetectFacePoseRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNDetectFacePoseRequestClass_block_invoke_cold_1();
  }

  getVNDetectFacePoseRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class __getVNGenerateFaceSegmentsRequestClass_block_invoke(uint64_t a1)
{
  VisionLibrary_1();
  result = objc_getClass("VNGenerateFaceSegmentsRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getVNGenerateFaceSegmentsRequestClass_block_invoke_cold_1();
  }

  getVNGenerateFaceSegmentsRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

float32x2_t CI::sw_vortexDistortion(CI *a1, uint64_t a2, uint64_t a3)
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

  v12 = *v7;
  v22 = *v11;
  DC = CI::getDC(a1);
  v14 = vsub_f32(*DC, v12);
  v15 = sqrtf(vaddv_f32(vmul_f32(v14, v14)));
  v16 = (v15 * v22.f32[0]) + -1.0;
  if (v16 >= 0.0)
  {
    return *CI::getDC(DC);
  }

  else
  {
    v17 = __sincosf_stret(vmuls_lane_f32(v16 * v16, v22, 1) / v15);
    v18.f32[0] = -v17.__sinval;
    v18.i32[1] = LODWORD(v17.__cosval);
    v19 = vmul_f32(v14, __PAIR64__(LODWORD(v17.__sinval), LODWORD(v17.__cosval)));
    v20 = vmul_f32(v14, v18);
    return vadd_f32(v12, vadd_f32(vzip1_s32(v19, v20), vzip2_s32(v19, v20)));
  }
}

void vortexTracePoint(CGRect *a1, double a2, float32x2_t a3, float a4, float a5)
{
  v7 = vsub_f32(*&a2, a3);
  v8 = sqrtf(vaddv_f32(vmul_f32(v7, v7)));
  v9 = a4 * v8;
  if (v9 < 1.0)
  {
    v10 = a5 / v8 * ((1.0 - v9) * (1.0 - v9));
    v13 = v7;
    v11 = __sincosf_stret(v10);
    v12 = vmul_f32(v13, __PAIR64__(LODWORD(v11.__sinval), LODWORD(v11.__cosval)));
    v12.i32[0] = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
    *&v12.i32[1] = vmuls_lane_f32(v11.__cosval, v13, 1) - (v11.__sinval * v13.f32[0]);
    a2 = COERCE_DOUBLE(vadd_f32(a3, v12));
  }

  v14.origin.x = *&a2;
  v14.origin.y = *(&a2 + 1);
  v14.size.width = 0.0;
  v14.size.height = 0.0;
  *a1 = CGRectUnion(*a1, v14);
}

float32x2_t CI::sw_wrapMirror(CI *a1, uint64_t a2, uint64_t a3)
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

  v11 = *v7;
  DC = CI::getDC(a1);
  v9 = vextq_s8(v11, v11, 8uLL).u64[0];
  return vminnm_f32(vsub_f32(vadd_f32(v9, v9), vsub_f32(*DC, *v11.i8)), vabd_f32(*DC, *v11.i8));
}

uint64_t ci_logger_general()
{
  if (ci_logger_general_onceToken != -1)
  {
    ci_logger_general_cold_1();
  }

  return ci_logger_general_logger;
}

os_log_t __ci_logger_general_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "general");
  ci_logger_general_logger = result;
  return result;
}

uint64_t ci_logger_api()
{
  if (ci_logger_api_onceToken != -1)
  {
    ci_logger_api_cold_1();
  }

  return ci_logger_api_logger;
}

os_log_t __ci_logger_api_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "api");
  ci_logger_api_logger = result;
  return result;
}

uint64_t ci_logger_render()
{
  if (ci_logger_render_onceToken != -1)
  {
    ci_logger_render_cold_1();
  }

  return ci_logger_render_logger;
}

os_log_t __ci_logger_render_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "render");
  ci_logger_render_logger = result;
  return result;
}

uint64_t ci_logger_performance()
{
  if (ci_logger_performance_onceToken != -1)
  {
    ci_logger_performance_cold_1();
  }

  return ci_logger_performance_logger;
}

os_log_t __ci_logger_performance_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "performance");
  ci_logger_performance_logger = result;
  return result;
}

uint64_t ci_logger_compile()
{
  if (ci_logger_compile_onceToken != -1)
  {
    ci_logger_compile_cold_1();
  }

  return ci_logger_compile_logger;
}

os_log_t __ci_logger_compile_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "compile");
  ci_logger_compile_logger = result;
  return result;
}

uint64_t ci_logger_cache()
{
  if (ci_logger_cache_onceToken != -1)
  {
    ci_logger_cache_cold_1();
  }

  return ci_logger_cache_logger;
}

os_log_t __ci_logger_cache_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "cache");
  ci_logger_cache_logger = result;
  return result;
}

uint64_t ci_logger_filter()
{
  if (ci_logger_filter_onceToken != -1)
  {
    ci_logger_filter_cold_1();
  }

  return ci_logger_filter_logger;
}

os_log_t __ci_logger_filter_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "filter");
  ci_logger_filter_logger = result;
  return result;
}

uint64_t ci_signpost_log_render()
{
  if (ci_signpost_log_render_onceToken != -1)
  {
    ci_signpost_log_render_cold_1();
  }

  return ci_signpost_log_render_log;
}

os_log_t __ci_signpost_log_render_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_render");
  ci_signpost_log_render_log = result;
  return result;
}

uint64_t ci_signpost_log_compile()
{
  if (ci_signpost_log_compile_onceToken != -1)
  {
    ci_signpost_log_compile_cold_1();
  }

  return ci_signpost_log_compile_log;
}

os_log_t __ci_signpost_log_compile_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_compile");
  ci_signpost_log_compile_log = result;
  return result;
}

uint64_t ci_signpost_log_cache()
{
  if (ci_signpost_log_cache_onceToken != -1)
  {
    ci_signpost_log_cache_cold_1();
  }

  return ci_signpost_log_cache_log;
}

os_log_t __ci_signpost_log_cache_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_cache");
  ci_signpost_log_cache_log = result;
  return result;
}

uint64_t ci_signpost_log_detector()
{
  if (ci_signpost_log_detector_onceToken != -1)
  {
    ci_signpost_log_detector_cold_1();
  }

  return ci_signpost_log_detector_log;
}

os_log_t __ci_signpost_log_detector_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_detector");
  ci_signpost_log_detector_log = result;
  return result;
}

uint64_t ci_signpost_log_filter()
{
  if (ci_signpost_log_filter_onceToken != -1)
  {
    ci_signpost_log_filter_cold_1();
  }

  return ci_signpost_log_filter_log;
}

os_log_t __ci_signpost_log_filter_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_filter");
  ci_signpost_log_filter_log = result;
  return result;
}

uint64_t ci_signpost_log_kernel()
{
  if (ci_signpost_log_kernel_onceToken != -1)
  {
    ci_signpost_log_kernel_cold_1();
  }

  return ci_signpost_log_kernel_log;
}

os_log_t __ci_signpost_log_kernel_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_kernel");
  ci_signpost_log_kernel_log = result;
  return result;
}

uint64_t ci_signpost_log_dualredeye()
{
  if (ci_signpost_log_dualredeye_onceToken != -1)
  {
    ci_signpost_log_dualredeye_cold_1();
  }

  return ci_signpost_log_dualredeye_log;
}

os_log_t __ci_signpost_log_dualredeye_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_dualredeye");
  ci_signpost_log_dualredeye_log = result;
  return result;
}

CFTypeRef linearP3ColorSpace()
{
  if (linearP3ColorSpace::onceToken != -1)
  {
    linearP3ColorSpace_cold_1();
  }

  CGColorSpaceRetain(linearP3ColorSpace::cachedCS);
  v0 = linearP3ColorSpace::cachedCS;

  return CFAutorelease(v0);
}

CGColorSpaceRef __linearP3ColorSpace_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F0]);
  linearP3ColorSpace::cachedCS = result;
  return result;
}

uint64_t SDOFV2MetalLibURL()
{
  if (SDOFV2MetalLibURL::onceToken != -1)
  {
    SDOFV2MetalLibURL_cold_1();
  }

  return SDOFV2MetalLibURL::url;
}

void *__SDOFV2MetalLibURL_block_invoke()
{
  result = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreImage"];
  if (result)
  {
    result = [result URLForResource:@"CIPortraitBlurStitchableV2" withExtension:@"metallib"];
    SDOFV2MetalLibURL::url = result;
  }

  return result;
}

uint64_t __SDOFV3MetalLibURL_block_invoke()
{
  result = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreImage"];
  if (result)
  {
    v1 = result;
    if (CI_ENABLE_FUNCTION_STITCHING())
    {
      v2 = @"CIPortraitBlurStitchableV3";
    }

    else
    {
      v2 = @"CIPortraitBlurV3";
    }

    result = [v1 URLForResource:v2 withExtension:@"metallib"];
    SDOFV3MetalLibURL::url = result;
  }

  return result;
}

double shiftmapSize(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a2 * 0.5;
  if (a2 * 0.5 <= a4 * (a6 * 0.5 / a4))
  {
    v6 = a4 * (a6 * 0.5 / a4);
  }

  if (v6 >= a2)
  {
    v6 = a2;
  }

  if (v6 <= a4)
  {
    v6 = a4;
  }

  return v6 / (a2 / a1);
}

uint64_t useMetalImage(void *a1)
{
  if (useMetalImage::onceToken != -1)
  {
    useMetalImage_cold_1();
  }

  if (useMetalImage::useNativeImageAlways != 1)
  {
    return 0;
  }

  v2 = [a1 objectForKey:@"kContextInfoIsMetal"];

  return [v2 BOOLValue];
}

const char *__useMetalImage_block_invoke()
{
  result = getenv("CI_METAL_SDOF");
  if (result)
  {
    result = atoi(result);
    if (result)
    {
      useMetalImage::useNativeImageAlways = 1;
    }
  }

  return result;
}

void *SDOFBlurmapSmoothingParameterValue(NSString *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"BlurMapSmoothing"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Blurmapsmoothi.isa, a1);
  }
}

void *SDOFParameterValue(NSString *a1, NSString *a2)
{
  if (SDOFParameterValue(NSString *,NSString *)::onceToken != -1)
  {
    SDOFParameterValue();
  }

  if (SDOFParameterValue(NSString *,NSString *)::onceToken2 != -1)
  {
    SDOFParameterValue();
  }

  result = [SDOFParameterValue(NSString * NSString *):"objectForKeyedSubscript:" :a1sdofParameters];
  if (result)
  {
    v5 = [result objectForKey:a2];
    if (!v5)
    {
      if (-[NSString isEqualToString:](a1, "isEqualToString:", @"RenderingV3") && (v6 = [SDOFParameterValue(NSString * NSString *):"objectForKeyedSubscript:" :@"Rendering"sdofParameters]) != 0)
      {
        v5 = [v6 objectForKey:a2];
      }

      else
      {
        v5 = 0;
      }
    }

    if (SDOFParameterValue(NSString *,NSString *)::sdofParametersOnDevice)
    {
      v7 = [SDOFParameterValue(NSString * NSString *):"objectForKey:" :a1sdofParametersOnDevice];
      if (!v7 || (v8 = [v7 objectForKey:a2]) == 0 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v9 = v5;
        if (!v5)
        {
          if (-[NSString isEqualToString:](a1, "isEqualToString:", @"RenderingV3") && (v10 = [SDOFParameterValue(NSString * NSString *):"objectForKey:" :@"Rendering"sdofParametersOnDevice]) != 0 && (v11 = objc_msgSend(v10, "objectForKey:", a2)) != 0)
          {
            v12 = v11;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = v12;
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }
      }
    }

    else
    {
      v9 = v5;
    }

    return [v9 floatValue];
  }

  return result;
}

void *SDOFDisparitySmoothingParameterValue(NSString *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"DisparitySmoothing"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Disparitysmoot.isa, a1);
  }
}

void *SDOFDisparityRefinementParameterValue(NSString *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"DisparityRefinement"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Disparityrefin.isa, a1);
  }
}

void *SDOFRenderingValue(NSString *a1, void *a2)
{
  if (a2 && (v4 = [a2 objectForKey:@"Rendering"]) != 0 && (v5 = objc_msgSend(v4, "objectForKey:", a1)) != 0)
  {

    return [v5 floatValue];
  }

  else
  {
    if ([objc_msgSend(a2 objectForKeyedSubscript:{@"Version", "intValue"}] == 2)
    {
      v7 = @"RenderingV3";
    }

    else
    {
      v7 = @"Rendering";
    }

    return SDOFParameterValue(&v7->isa, a1);
  }
}

uint64_t SDOFSimpleLensModelValue(void *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"SLM"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {
    result = [a1 isEqualToString:@"defaultSimulatedAperture"];
    if ((result & 1) == 0)
    {
      result = [a1 isEqualToString:@"disparityScalingFactor"];
      if ((result & 1) == 0)
      {

        return SDOFParameterValue(&cfstr_Slm.isa, a1);
      }
    }
  }

  return result;
}

void *SDOFFaceMaskValue(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"faces.%@", a1];
  if (a2 && [a2 objectForKey:@"Rendering"] && (v4 = objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", @"Rendering"), "objectForKey:", v3)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Rendering.isa, v3);
  }
}

void *SDOFHighlightRecoveryValue(NSString *a1, void *a2)
{
  if (a2 && (v3 = [a2 objectForKey:@"HighlightRecovery"]) != 0 && (v4 = objc_msgSend(v3, "objectForKey:", a1)) != 0)
  {

    return [v4 floatValue];
  }

  else
  {

    return SDOFParameterValue(&cfstr_Xhlrb.isa, a1);
  }
}

uint64_t SDOFFusionValue(NSString *a1, NSDictionary *a2)
{
  if (!a2 || (v3 = -[NSDictionary objectForKey:](a2, "objectForKey:", @"Fusion")) == 0 || (v4 = [v3 objectForKey:a1]) == 0)
  {
    v4 = [&unk_1F1082730 objectForKeyedSubscript:a1];
  }

  return [v4 floatValue];
}

CIVector *transformNormalizedMetalToCI(void *a1, unsigned int a2, double a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([a1 count] >= 8)
  {
    v13 = xmmword_19CF2A7F0;
    v14 = unk_19CF2A800;
    v7 = 4;
  }

  else
  {
    v6 = [a1 count];
    v13 = xmmword_19CF2A7F0;
    v14 = unk_19CF2A800;
    if (v6 < 2)
    {
      return [CIVector vectorWithValues:&v13 count:4];
    }

    v7 = v6 >> 1;
  }

  v8 = 0;
  v9 = 1;
  do
  {
    [a1 valueAtIndex:{a2, v13, v14}];
    *(&v13 + v8) = v10 * a3;
    v8 = v9;
    a2 += 2;
  }

  while (v7 > v9++);
  return [CIVector vectorWithValues:&v13 count:4];
}

uint64_t SDOFBlurMapRefinementValue(NSString *a1, NSDictionary *a2)
{
  if (!a2 || (v3 = -[NSDictionary objectForKey:](a2, "objectForKey:", @"BlurMapRefinement")) == 0 || (v4 = [v3 objectForKey:a1]) == 0)
  {
    v4 = [&unk_1F1082758 objectForKeyedSubscript:a1];
  }

  return [v4 floatValue];
}

void sub_19CDF8BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRenderingParametersFromCGImageMetadata(const CGImageMetadata *a1)
{
  TypeID = CGImageMetadataGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 0;
  }

  v3 = CGImageMetadataCopyTagWithPath(a1, 0, @"depthBlurEffect:RenderingParameters");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CGImageMetadataTagGetType(v3) == kCGImageMetadataTypeString)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:CGImageMetadataTagCopyValue(v4) options:0];
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v4);

  return v6;
}

CFTypeRef metadataFromValue(CFTypeRef cf)
{
  v1 = cf;
  if (!cf)
  {
    return v1;
  }

  v2 = CFGetTypeID(cf);
  if (CGImageMetadataGetTypeID() == v2)
  {
    return v1;
  }

  if (CFStringGetTypeID() != v2)
  {
    if (CFDataGetTypeID() == v2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if ([v1 length] <= 1)
  {
    return 0;
  }

  v1 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v1 length:{"UTF8String"), objc_msgSend(v1, "length")}];
  if (!v1)
  {
    return v1;
  }

LABEL_8:
  v3 = CGImageMetadataCreateFromXMPData(v1);
  if (!v3)
  {
    return 0;
  }

  return CFAutorelease(v3);
}

const CGImageMetadata *tuningParametersFromMetaData(const CGImageMetadata *a1)
{
  v547 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    return a1;
  }

  v3 = CGImageMetadataCopyTagWithPath(a1, 0, @"depthBlurEffect:RenderingParameters");
  if (!v3)
  {
    return &unk_1F1082780;
  }

  v4 = v3;
  if (CGImageMetadataTagGetType(v3) != kCGImageMetadataTypeString || (v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:CGImageMetadataTagCopyValue(v4) options:0], objc_msgSend(v5, "length") <= 0xB))
  {
    CFRelease(v4);
    return &unk_1F1082780;
  }

  [v5 getBytes:&v355 length:12];
  v7 = HIDWORD(v355);
  v206 = 1;
  v8 = +[CIFilter maxSDOFRenderingVersionSupported];
  if (v8 < 4)
  {
    goto LABEL_15;
  }

  if (v7 > v8)
  {
    v9 = ci_logger_api();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      tuningParametersFromMetaData(v7, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = 1;
    goto LABEL_22;
  }

  if (v7 <= 3)
  {
LABEL_15:
    switch(v7)
    {
      case 3:
        v17 = FigDepthBlurEffectRenderingParametersV3FromCFData(v5, &v207);
        break;
      case 2:
        v17 = FigDepthBlurEffectRenderingParametersV2FromCFData(v5, &v207, &v206);
        break;
      case 1:
        v17 = FigDepthBlurEffectRenderingParametersV1FromCFData(v5, &v207);
        break;
      default:
        v32 = ci_logger_api();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          tuningParametersFromMetaData(v7, v32, v33, v34, v35, v36, v37, v38);
        }

        CFRelease(v4);
        if (v7 < 1)
        {
          return &unk_1F1082780;
        }

        v18 = 1;
        goto LABEL_23;
    }

    v16 = v17;
  }

  else
  {
    v16 = 0;
  }

LABEL_22:
  CFRelease(v4);
  v18 = v16 != 0;
LABEL_23:
  v19 = +[CIFilter maxSDOFRenderingVersionSupported];
  a1 = &unk_1F1082780;
  if (!v18 && v7 <= v19)
  {
    switch(v7)
    {
      case 3:
        v104 = v206;
        v531 = @"BlurMapSmoothing";
        v529[0] = @"nIterations";
        v530[0] = [MEMORY[0x1E696AD98] numberWithInt:v243];
        v529[1] = @"originalBlurValueT0";
        LODWORD(v105) = v267;
        v530[1] = [MEMORY[0x1E696AD98] numberWithFloat:v105];
        v529[2] = @"originalBlurValueT1";
        LODWORD(v106) = v268;
        v530[2] = [MEMORY[0x1E696AD98] numberWithFloat:v106];
        v529[3] = @"localMinimumBlurValueT0";
        LODWORD(v107) = v269;
        v530[3] = [MEMORY[0x1E696AD98] numberWithFloat:v107];
        v529[4] = @"localMinimumBlurValueT1";
        LODWORD(v108) = v270;
        v530[4] = [MEMORY[0x1E696AD98] numberWithFloat:v108];
        v539 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v530 forKeys:v529 count:5];
        v532 = @"DisparityRefinement";
        v495 = @"radius";
        v512 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v207)];
        v496 = @"weightScaling";
        v109 = v232;
        if (!v104)
        {
          v109 = 0.2;
        }

        v513 = [MEMORY[0x1E696AD98] numberWithDouble:v109];
        v497 = @"maxReconstructionWeight";
        v110 = v233;
        if (!v104)
        {
          v110 = 0.1;
        }

        v514 = [MEMORY[0x1E696AD98] numberWithDouble:v110];
        v498 = @"innerSamplingRadius";
        v111 = v234;
        if (!v104)
        {
          v111 = 0.5;
        }

        v515 = [MEMORY[0x1E696AD98] numberWithDouble:v111];
        v499 = @"outerSamplingRadius";
        v112 = v235;
        if (!v104)
        {
          v112 = 2.5;
        }

        v516 = [MEMORY[0x1E696AD98] numberWithDouble:v112];
        v500 = @"nSamples";
        if (v104)
        {
          v113 = v236;
        }

        else
        {
          v113 = 20;
        }

        v517 = [MEMORY[0x1E696AD98] numberWithInt:v113];
        v501 = @"lumaSigma";
        v114 = v237;
        if (!v104)
        {
          v114 = 0.05;
        }

        v518 = [MEMORY[0x1E696AD98] numberWithDouble:v114];
        v502 = @"chromaSigma";
        v115 = v238;
        if (!v104)
        {
          v115 = 0.02;
        }

        v519 = [MEMORY[0x1E696AD98] numberWithDouble:v115];
        v503 = @"disparitySigma";
        v116 = v208;
        if (!v104)
        {
          v116 = 0.03;
        }

        v520 = [MEMORY[0x1E696AD98] numberWithDouble:v116];
        v504 = @"accumulatedWeightT0";
        v117 = v239;
        if (!v104)
        {
          v117 = 0.01;
        }

        v521 = [MEMORY[0x1E696AD98] numberWithDouble:v117];
        v505 = @"accumulatedWeightT1";
        v118 = v240;
        if (!v104)
        {
          v118 = 0.1;
        }

        v522 = [MEMORY[0x1E696AD98] numberWithDouble:v118];
        v506 = @"aaLumaSigma";
        LODWORD(v119) = v209;
        v523 = [MEMORY[0x1E696AD98] numberWithFloat:v119];
        v507 = @"aaChromaSigma";
        LODWORD(v120) = v210;
        v524 = [MEMORY[0x1E696AD98] numberWithFloat:v120];
        v508 = @"aaSpatialSigma";
        LODWORD(v121) = v211;
        v525 = [MEMORY[0x1E696AD98] numberWithFloat:v121];
        v509 = @"segmentationSigma";
        LODWORD(v122) = v272;
        if (!v104)
        {
          *&v122 = 1000.0;
        }

        v526 = [MEMORY[0x1E696AD98] numberWithFloat:v122];
        v510 = @"aaSegmentationSigma";
        v123 = v273;
        if (!v104)
        {
          v123 = 1.4;
        }

        v527 = [MEMORY[0x1E696AD98] numberWithDouble:v123];
        v511 = @"Version";
        if (v104)
        {
          v124 = v274;
        }

        else
        {
          v124 = 0;
        }

        v528 = [MEMORY[0x1E696AD98] numberWithInt:v124];
        v540 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v512 forKeys:&v495 count:17];
        v533 = @"SLM";
        v483 = @"shiftDeadZone";
        LODWORD(v125) = v212;
        v489 = [MEMORY[0x1E696AD98] numberWithFloat:v125];
        v484 = @"zeroShiftPercentile";
        v126 = v241;
        if (!v104)
        {
          v126 = 0.75;
        }

        v490 = [MEMORY[0x1E696AD98] numberWithDouble:v126];
        v485 = @"maxFGBlur";
        v127 = v242;
        if (!v104)
        {
          v127 = 0.0002;
        }

        v491 = [MEMORY[0x1E696AD98] numberWithDouble:v127];
        v486 = @"maximumSimulatedAperture";
        v128 = v271;
        if (!v104)
        {
          v128 = 0.0;
        }

        v492 = [MEMORY[0x1E696AD98] numberWithDouble:v128];
        v487 = @"defaultSimulatedAperture";
        v129 = v275;
        if (!v104)
        {
          v129 = 0.0;
        }

        v493 = [MEMORY[0x1E696AD98] numberWithDouble:v129];
        v488 = @"disparityScalingFactor";
        v130 = v276;
        if (!v104)
        {
          v130 = 0.0;
        }

        v494 = [MEMORY[0x1E696AD98] numberWithDouble:v130];
        v541 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v489 forKeys:&v483 count:6];
        v534 = @"HighlightRecovery";
        v461 = @"iterations";
        v472 = [MEMORY[0x1E696AD98] numberWithInt:v217];
        v462 = @"preFilterGain";
        LODWORD(v131) = v218;
        v473 = [MEMORY[0x1E696AD98] numberWithFloat:v131];
        v463 = @"weightGain";
        LODWORD(v132) = v219;
        v474 = [MEMORY[0x1E696AD98] numberWithFloat:v132];
        v464 = @"intensityGain";
        LODWORD(v133) = v220;
        v475 = [MEMORY[0x1E696AD98] numberWithFloat:v133];
        v465 = @"mode";
        v476 = &unk_1F10823A0;
        v466 = @"blurRadiusT0";
        v134 = v251;
        if (!v104)
        {
          v134 = 0.0025;
        }

        v477 = [MEMORY[0x1E696AD98] numberWithDouble:v134];
        v467 = @"blurRadiusT1";
        v135 = v252;
        if (!v104)
        {
          v135 = 0.0075;
        }

        v478 = [MEMORY[0x1E696AD98] numberWithDouble:v135];
        v468 = @"maxIntensityT0";
        v136 = v253;
        if (!v104)
        {
          v136 = 0.9;
        }

        v479 = [MEMORY[0x1E696AD98] numberWithDouble:v136];
        v469 = @"maxIntensityT1";
        v137 = v254;
        if (!v104)
        {
          v137 = 1.0;
        }

        v480 = [MEMORY[0x1E696AD98] numberWithDouble:v137];
        v470 = @"minIntensityT0";
        v138 = v255;
        if (!v104)
        {
          v138 = 0.0;
        }

        v481 = [MEMORY[0x1E696AD98] numberWithDouble:v138];
        v471 = @"minIntensityT1";
        v139 = v256;
        if (!v104)
        {
          v139 = 0.2;
        }

        v482 = [MEMORY[0x1E696AD98] numberWithDouble:v139];
        v542 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v472 forKeys:&v461 count:11];
        v535 = @"Rendering";
        v405 = @"faces.linearBlurGrowthC";
        LODWORD(v140) = v214;
        v433 = [MEMORY[0x1E696AD98] numberWithFloat:v140];
        v406 = @"faces.linearBlurGrowthM";
        LODWORD(v141) = v213;
        v434 = [MEMORY[0x1E696AD98] numberWithFloat:v141];
        v407 = @"faces.distToBlurScaling";
        LODWORD(v142) = v215;
        v435 = [MEMORY[0x1E696AD98] numberWithFloat:v142];
        v408 = @"faces.eyeToEyebrowRatio";
        LODWORD(v143) = v216;
        v436 = [MEMORY[0x1E696AD98] numberWithFloat:v143];
        v409 = @"faces.maxBlurOnEyes";
        LODWORD(v144) = v257;
        v437 = [MEMORY[0x1E696AD98] numberWithFloat:v144];
        v410 = @"faces.maxBlurDistFromFocus";
        LODWORD(v145) = v258;
        v438 = [MEMORY[0x1E696AD98] numberWithFloat:v145];
        v411 = @"faces.capMultip";
        LODWORD(v146) = v259;
        v439 = [MEMORY[0x1E696AD98] numberWithFloat:v146];
        v412 = @"faces.gainMultip";
        LODWORD(v147) = v260;
        v440 = [MEMORY[0x1E696AD98] numberWithFloat:v147];
        v413 = @"lumaNoiseModelCoeff";
        LODWORD(v148) = v247;
        v441 = [MEMORY[0x1E696AD98] numberWithFloat:v148];
        v414 = @"relativeWeightThreshold";
        LODWORD(v149) = v222;
        v442 = [MEMORY[0x1E696AD98] numberWithFloat:v149];
        v415 = @"highlightBoostGain";
        LODWORD(v150) = v223;
        v443 = [MEMORY[0x1E696AD98] numberWithFloat:v150];
        v416 = @"shapeObstructionCoeff";
        LODWORD(v151) = v224;
        v444 = [MEMORY[0x1E696AD98] numberWithFloat:v151];
        v417 = @"ringAmplitude";
        LODWORD(v152) = v225;
        v445 = [MEMORY[0x1E696AD98] numberWithFloat:v152];
        v418 = @"ringSharpness";
        LODWORD(v153) = v226;
        v446 = [MEMORY[0x1E696AD98] numberWithFloat:v153];
        v419 = @"antiAliasBlurStrength";
        LODWORD(v154) = v228;
        v447 = [MEMORY[0x1E696AD98] numberWithFloat:v154];
        v420 = @"minimumSimulatedAperture";
        LODWORD(v155) = v229;
        v448 = [MEMORY[0x1E696AD98] numberWithFloat:v155];
        v421 = @"antiAliasRadius";
        v449 = [MEMORY[0x1E696AD98] numberWithInt:v248];
        v422 = @"alphaEpsilon";
        LODWORD(v156) = v249;
        v450 = [MEMORY[0x1E696AD98] numberWithFloat:v156];
        v423 = @"alphaGain";
        LODWORD(v157) = v250;
        v451 = [MEMORY[0x1E696AD98] numberWithFloat:v157];
        v424 = @"maxBlur";
        v452 = &unk_1F1085198;
        v425 = @"nRings";
        v453 = [MEMORY[0x1E696AD98] numberWithInt:v221];
        v426 = @"preFilterBlurStrength";
        LODWORD(v158) = v227;
        v454 = [MEMORY[0x1E696AD98] numberWithFloat:v158];
        v427 = @"preFilterRadius";
        v455 = [MEMORY[0x1E696AD98] numberWithInt:v244];
        v428 = @"sharpRadius";
        LODWORD(v159) = v245;
        v456 = [MEMORY[0x1E696AD98] numberWithFloat:v159];
        v429 = @"softRadius";
        v160 = v246;
        if (!v104)
        {
          v160 = 1.0;
        }

        v457 = [MEMORY[0x1E696AD98] numberWithDouble:v160];
        v430 = @"basePixelWeight";
        v458 = &unk_1F10851A8;
        v431 = @"blendingQuarterResAlphaGain";
        v161 = v230;
        if (!v104)
        {
          v161 = 1.0;
        }

        v459 = [MEMORY[0x1E696AD98] numberWithDouble:v161];
        v432 = @"blendingFullResAlphaGain";
        v162 = v231;
        if (!v104)
        {
          v162 = 1.0;
        }

        v460 = [MEMORY[0x1E696AD98] numberWithDouble:v162];
        v543 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v433 forKeys:&v405 count:28];
        v536 = @"Fusion";
        v393 = @"subtractiveLowerAlpha";
        LODWORD(v163) = v261;
        if (!v104)
        {
          *&v163 = 0.8;
        }

        v399 = [MEMORY[0x1E696AD98] numberWithFloat:v163];
        v394 = @"subtractiveUpperAlpha";
        LODWORD(v164) = v262;
        if (!v104)
        {
          *&v164 = 1.0;
        }

        v400 = [MEMORY[0x1E696AD98] numberWithFloat:v164];
        v395 = @"subtractiveMaxBlur";
        v165 = v263;
        if (!v104)
        {
          v165 = 0.0;
        }

        v401 = [MEMORY[0x1E696AD98] numberWithDouble:v165];
        v396 = @"additiveLowerAlpha";
        LODWORD(v166) = v264;
        if (!v104)
        {
          *&v166 = 0.0;
        }

        v402 = [MEMORY[0x1E696AD98] numberWithFloat:v166];
        v397 = @"additiveUpperAlpha";
        LODWORD(v167) = v265;
        if (!v104)
        {
          *&v167 = 0.2;
        }

        v403 = [MEMORY[0x1E696AD98] numberWithFloat:v167];
        v398 = @"additiveMaxBlur";
        v168 = v266;
        if (!v104)
        {
          v168 = 0.0;
        }

        v404 = [MEMORY[0x1E696AD98] numberWithDouble:v168];
        v544 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v393 count:6];
        v537 = @"BlurMapRefinement";
        v317 = @"minimumFocusDistance";
        LODWORD(v169) = v277;
        v355 = [MEMORY[0x1E696AD98] numberWithFloat:v169];
        v318 = @"maximumFocusDistance";
        LODWORD(v170) = v278;
        v356 = [MEMORY[0x1E696AD98] numberWithFloat:v170];
        v319 = @"subjectDistanceScalingFactor";
        LODWORD(v171) = v279;
        v357 = [MEMORY[0x1E696AD98] numberWithFloat:v171];
        v320 = @"subjectDistanceOffset";
        LODWORD(v172) = v280;
        v358 = [MEMORY[0x1E696AD98] numberWithFloat:v172];
        v321 = @"relativeApertureScalingStrength";
        LODWORD(v173) = v300;
        v359 = [MEMORY[0x1E696AD98] numberWithFloat:v173];
        v322 = @"protectBodyStrength";
        LODWORD(v174) = v281;
        v360 = [MEMORY[0x1E696AD98] numberWithFloat:v174];
        v323 = @"distanceAdd";
        LODWORD(v175) = v285;
        v361 = [MEMORY[0x1E696AD98] numberWithFloat:v175];
        v324 = @"hairAdditiveLowerAlpha";
        LODWORD(v176) = v296;
        v362 = [MEMORY[0x1E696AD98] numberWithFloat:v176];
        v325 = @"hairAdditiveUpperAlpha";
        LODWORD(v177) = v297;
        v363 = [MEMORY[0x1E696AD98] numberWithFloat:v177];
        v326 = @"hairAdditiveMaxBlur";
        LODWORD(v178) = v298;
        v364 = [MEMORY[0x1E696AD98] numberWithFloat:v178];
        v327 = @"hairSubtractiveLowerAlpha";
        LODWORD(v179) = v294;
        v365 = [MEMORY[0x1E696AD98] numberWithFloat:v179];
        v328 = @"hairSubtractiveUpperAlpha";
        LODWORD(v180) = v295;
        v366 = [MEMORY[0x1E696AD98] numberWithFloat:v180];
        v329 = @"hairSubtractiveMaxBlur";
        LODWORD(v181) = v299;
        v367 = [MEMORY[0x1E696AD98] numberWithFloat:v181];
        v330 = @"faceMaskAdditiveMaxBlur";
        LODWORD(v182) = v286;
        v368 = [MEMORY[0x1E696AD98] numberWithFloat:v182];
        v331 = @"faceMaskSubtractiveMaxBlur";
        LODWORD(v183) = v287;
        v369 = [MEMORY[0x1E696AD98] numberWithFloat:v183];
        v332 = @"smoothstepMin";
        LODWORD(v184) = v283;
        v370 = [MEMORY[0x1E696AD98] numberWithFloat:v184];
        v333 = @"smoothstepMax";
        LODWORD(v185) = v284;
        v371 = [MEMORY[0x1E696AD98] numberWithFloat:v185];
        v334 = @"maxBlur";
        LODWORD(v186) = v282;
        v372 = [MEMORY[0x1E696AD98] numberWithFloat:v186];
        v335 = @"personDistance";
        LODWORD(v187) = v288;
        v373 = [MEMORY[0x1E696AD98] numberWithFloat:v187];
        v336 = @"personThreshold";
        LODWORD(v188) = v289;
        v374 = [MEMORY[0x1E696AD98] numberWithFloat:v188];
        v337 = @"personMaxBlur";
        LODWORD(v189) = v290;
        v375 = [MEMORY[0x1E696AD98] numberWithFloat:v189];
        v338 = @"hairDistance";
        LODWORD(v190) = v291;
        v376 = [MEMORY[0x1E696AD98] numberWithFloat:v190];
        v339 = @"hairThreshold";
        LODWORD(v191) = v292;
        v377 = [MEMORY[0x1E696AD98] numberWithFloat:v191];
        v340 = @"hairMaxBlur";
        LODWORD(v192) = v293;
        v378 = [MEMORY[0x1E696AD98] numberWithFloat:v192];
        v341 = @"eyeProtectionMaxFaces";
        v379 = [MEMORY[0x1E696AD98] numberWithInt:v301];
        v342 = @"eyeProtectionFaceWeightsSmoothStepMin";
        LODWORD(v193) = v302;
        v380 = [MEMORY[0x1E696AD98] numberWithFloat:v193];
        v343 = @"eyeProtectionFaceWeightsSmoothStepMax";
        LODWORD(v194) = v303;
        v381 = [MEMORY[0x1E696AD98] numberWithFloat:v194];
        v344 = @"eyeProtectionOvalDimsDistanceScale";
        LODWORD(v195) = v304;
        v382 = [MEMORY[0x1E696AD98] numberWithFloat:v195];
        v345 = @"eyeProtectionOvalDimsDistanceOffset";
        LODWORD(v196) = v305;
        v383 = [MEMORY[0x1E696AD98] numberWithFloat:v196];
        v346 = @"eyeProtectionOvalDimsRadiusHorizontal";
        LODWORD(v197) = v306;
        v384 = [MEMORY[0x1E696AD98] numberWithFloat:v197];
        v347 = @"eyeProtectionOvalDimsRadiusVertical";
        LODWORD(v198) = v307;
        v385 = [MEMORY[0x1E696AD98] numberWithFloat:v198];
        v348 = @"eyeProtectionOvalFallOffSmoothStepMin";
        LODWORD(v199) = v308;
        v386 = [MEMORY[0x1E696AD98] numberWithFloat:v199];
        v349 = @"eyeProtectionOvalFallOffSmoothStepMax";
        LODWORD(v200) = v309;
        v387 = [MEMORY[0x1E696AD98] numberWithFloat:v200];
        v350 = @"eyeProtectionPersonMaskSmoothStepMin";
        LODWORD(v201) = v310;
        v388 = [MEMORY[0x1E696AD98] numberWithFloat:v201];
        v351 = @"eyeProtectionPersonMaskSmoothStepMax";
        LODWORD(v202) = v311;
        v389 = [MEMORY[0x1E696AD98] numberWithFloat:v202];
        v352 = @"eyeProtectionPreventStrength";
        LODWORD(v203) = v312;
        v390 = [MEMORY[0x1E696AD98] numberWithFloat:v203];
        v353 = @"eyeProtectionSubtractiveMaxBlur";
        LODWORD(v204) = v313;
        v391 = [MEMORY[0x1E696AD98] numberWithFloat:v204];
        v354 = @"eyeProtectionSubtractiveApertureScaling";
        LODWORD(v205) = v314;
        v392 = [MEMORY[0x1E696AD98] numberWithFloat:v205];
        v545 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v355 forKeys:&v317 count:38];
        v538 = @"Version";
        v546 = &unk_1F1082430;
        v28 = MEMORY[0x1E695DF20];
        v29 = &v539;
        v30 = &v531;
        v31 = 8;
        break;
      case 2:
        v39 = v206;
        v461 = @"BlurMapSmoothing";
        v393 = @"nIterations";
        v399 = [MEMORY[0x1E696AD98] numberWithInt:v243];
        v394 = @"originalBlurValueT0";
        LODWORD(v40) = v267;
        v400 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
        v395 = @"originalBlurValueT1";
        LODWORD(v41) = v268;
        v401 = [MEMORY[0x1E696AD98] numberWithFloat:v41];
        v396 = @"localMinimumBlurValueT0";
        LODWORD(v42) = v269;
        v402 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
        v397 = @"localMinimumBlurValueT1";
        LODWORD(v43) = v270;
        v403 = [MEMORY[0x1E696AD98] numberWithFloat:v43];
        v472 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v399 forKeys:&v393 count:5];
        v462 = @"DisparityRefinement";
        v405 = @"radius";
        v433 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(v207)];
        v406 = @"weightScaling";
        v44 = v232;
        if (!v39)
        {
          v44 = 0.2;
        }

        v434 = [MEMORY[0x1E696AD98] numberWithDouble:v44];
        v407 = @"maxReconstructionWeight";
        v45 = v233;
        if (!v39)
        {
          v45 = 0.1;
        }

        v435 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
        v408 = @"innerSamplingRadius";
        v46 = v234;
        if (!v39)
        {
          v46 = 0.5;
        }

        v436 = [MEMORY[0x1E696AD98] numberWithDouble:v46];
        v409 = @"outerSamplingRadius";
        v47 = v235;
        if (!v39)
        {
          v47 = 2.5;
        }

        v437 = [MEMORY[0x1E696AD98] numberWithDouble:v47];
        v410 = @"nSamples";
        if (v39)
        {
          v48 = v236;
        }

        else
        {
          v48 = 20;
        }

        v438 = [MEMORY[0x1E696AD98] numberWithInt:v48];
        v411 = @"lumaSigma";
        v49 = v237;
        if (!v39)
        {
          v49 = 0.05;
        }

        v439 = [MEMORY[0x1E696AD98] numberWithDouble:v49];
        v412 = @"chromaSigma";
        v50 = v238;
        if (!v39)
        {
          v50 = 0.02;
        }

        v440 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
        v413 = @"disparitySigma";
        v51 = v208;
        if (!v39)
        {
          v51 = 0.03;
        }

        v441 = [MEMORY[0x1E696AD98] numberWithDouble:v51];
        v414 = @"accumulatedWeightT0";
        v52 = v239;
        if (!v39)
        {
          v52 = 0.01;
        }

        v442 = [MEMORY[0x1E696AD98] numberWithDouble:v52];
        v415 = @"accumulatedWeightT1";
        v53 = v240;
        if (!v39)
        {
          v53 = 0.1;
        }

        v443 = [MEMORY[0x1E696AD98] numberWithDouble:v53];
        v416 = @"aaLumaSigma";
        LODWORD(v54) = v209;
        v444 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
        v417 = @"aaChromaSigma";
        LODWORD(v55) = v210;
        v445 = [MEMORY[0x1E696AD98] numberWithFloat:v55];
        v418 = @"aaSpatialSigma";
        LODWORD(v56) = v211;
        v446 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
        v419 = @"segmentationSigma";
        LODWORD(v57) = v272;
        if (!v39)
        {
          *&v57 = 1000.0;
        }

        v447 = [MEMORY[0x1E696AD98] numberWithFloat:v57];
        v420 = @"aaSegmentationSigma";
        v58 = v273;
        if (!v39)
        {
          v58 = 1.4;
        }

        v448 = [MEMORY[0x1E696AD98] numberWithDouble:v58];
        v421 = @"Version";
        if (v39)
        {
          v59 = v274;
        }

        else
        {
          v59 = 0;
        }

        v449 = [MEMORY[0x1E696AD98] numberWithInt:v59];
        v473 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v433 forKeys:&v405 count:17];
        v463 = @"SLM";
        v531 = @"shiftDeadZone";
        LODWORD(v60) = v212;
        v539 = [MEMORY[0x1E696AD98] numberWithFloat:v60];
        v532 = @"zeroShiftPercentile";
        v61 = v241;
        if (!v39)
        {
          v61 = 0.75;
        }

        v540 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
        v533 = @"maxFGBlur";
        v62 = v242;
        if (!v39)
        {
          v62 = 0.0002;
        }

        v541 = [MEMORY[0x1E696AD98] numberWithDouble:v62];
        v534 = @"maximumSimulatedAperture";
        v63 = v271;
        if (!v39)
        {
          v63 = 0.0;
        }

        v542 = [MEMORY[0x1E696AD98] numberWithDouble:v63];
        v535 = @"defaultSimulatedAperture";
        v64 = v275;
        if (!v39)
        {
          v64 = 0.0;
        }

        v543 = [MEMORY[0x1E696AD98] numberWithDouble:v64];
        v536 = @"disparityScalingFactor";
        v65 = v276;
        if (!v39)
        {
          v65 = 0.0;
        }

        v544 = [MEMORY[0x1E696AD98] numberWithDouble:v65];
        v474 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v539 forKeys:&v531 count:6];
        v464 = @"HighlightRecovery";
        v495 = @"iterations";
        v512 = [MEMORY[0x1E696AD98] numberWithInt:v217];
        v496 = @"preFilterGain";
        LODWORD(v66) = v218;
        v513 = [MEMORY[0x1E696AD98] numberWithFloat:v66];
        v497 = @"weightGain";
        LODWORD(v67) = v219;
        v514 = [MEMORY[0x1E696AD98] numberWithFloat:v67];
        v498 = @"intensityGain";
        LODWORD(v68) = v220;
        v515 = [MEMORY[0x1E696AD98] numberWithFloat:v68];
        v499 = @"mode";
        v516 = &unk_1F10823A0;
        v500 = @"blurRadiusT0";
        v69 = v251;
        if (!v39)
        {
          v69 = 0.0025;
        }

        v517 = [MEMORY[0x1E696AD98] numberWithDouble:v69];
        v501 = @"blurRadiusT1";
        v70 = v252;
        if (!v39)
        {
          v70 = 0.0075;
        }

        v518 = [MEMORY[0x1E696AD98] numberWithDouble:v70];
        v502 = @"maxIntensityT0";
        v71 = v253;
        if (!v39)
        {
          v71 = 0.9;
        }

        v519 = [MEMORY[0x1E696AD98] numberWithDouble:v71];
        v503 = @"maxIntensityT1";
        v72 = v254;
        if (!v39)
        {
          v72 = 1.0;
        }

        v520 = [MEMORY[0x1E696AD98] numberWithDouble:v72];
        v504 = @"minIntensityT0";
        v73 = v255;
        if (!v39)
        {
          v73 = 0.0;
        }

        v521 = [MEMORY[0x1E696AD98] numberWithDouble:v73];
        v505 = @"minIntensityT1";
        v74 = v256;
        if (!v39)
        {
          v74 = 0.2;
        }

        v522 = [MEMORY[0x1E696AD98] numberWithDouble:v74];
        v475 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v512 forKeys:&v495 count:11];
        v465 = @"Rendering";
        v317 = @"faces.linearBlurGrowthC";
        LODWORD(v75) = v214;
        v355 = [MEMORY[0x1E696AD98] numberWithFloat:v75];
        v318 = @"faces.linearBlurGrowthM";
        LODWORD(v76) = v213;
        v356 = [MEMORY[0x1E696AD98] numberWithFloat:v76];
        v319 = @"faces.distToBlurScaling";
        LODWORD(v77) = v215;
        v357 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
        v320 = @"faces.eyeToEyebrowRatio";
        LODWORD(v78) = v216;
        v358 = [MEMORY[0x1E696AD98] numberWithFloat:v78];
        v321 = @"faces.maxBlurOnEyes";
        LODWORD(v79) = v257;
        v359 = [MEMORY[0x1E696AD98] numberWithFloat:v79];
        v322 = @"faces.maxBlurDistFromFocus";
        LODWORD(v80) = v258;
        v360 = [MEMORY[0x1E696AD98] numberWithFloat:v80];
        v323 = @"faces.capMultip";
        LODWORD(v81) = v259;
        v361 = [MEMORY[0x1E696AD98] numberWithFloat:v81];
        v324 = @"faces.gainMultip";
        LODWORD(v82) = v260;
        v362 = [MEMORY[0x1E696AD98] numberWithFloat:v82];
        v325 = @"lumaNoiseModelCoeff";
        LODWORD(v83) = v247;
        v363 = [MEMORY[0x1E696AD98] numberWithFloat:v83];
        v326 = @"relativeWeightThreshold";
        LODWORD(v84) = v222;
        v364 = [MEMORY[0x1E696AD98] numberWithFloat:v84];
        v327 = @"highlightBoostGain";
        LODWORD(v85) = v223;
        v365 = [MEMORY[0x1E696AD98] numberWithFloat:v85];
        v328 = @"shapeObstructionCoeff";
        LODWORD(v86) = v224;
        v366 = [MEMORY[0x1E696AD98] numberWithFloat:v86];
        v329 = @"ringAmplitude";
        LODWORD(v87) = v225;
        v367 = [MEMORY[0x1E696AD98] numberWithFloat:v87];
        v330 = @"ringSharpness";
        LODWORD(v88) = v226;
        v368 = [MEMORY[0x1E696AD98] numberWithFloat:v88];
        v331 = @"antiAliasBlurStrength";
        LODWORD(v89) = v228;
        v369 = [MEMORY[0x1E696AD98] numberWithFloat:v89];
        v332 = @"minimumSimulatedAperture";
        LODWORD(v90) = v229;
        v370 = [MEMORY[0x1E696AD98] numberWithFloat:v90];
        v333 = @"antiAliasRadius";
        v371 = [MEMORY[0x1E696AD98] numberWithInt:v248];
        v334 = @"alphaEpsilon";
        LODWORD(v91) = v249;
        v372 = [MEMORY[0x1E696AD98] numberWithFloat:v91];
        v335 = @"alphaGain";
        LODWORD(v92) = v250;
        v373 = [MEMORY[0x1E696AD98] numberWithFloat:v92];
        v336 = @"maxBlur";
        v374 = &unk_1F1085198;
        v337 = @"nRings";
        v375 = [MEMORY[0x1E696AD98] numberWithInt:v221];
        v338 = @"preFilterBlurStrength";
        LODWORD(v93) = v227;
        v376 = [MEMORY[0x1E696AD98] numberWithFloat:v93];
        v339 = @"preFilterRadius";
        v377 = [MEMORY[0x1E696AD98] numberWithInt:v244];
        v340 = @"sharpRadius";
        LODWORD(v94) = v245;
        v378 = [MEMORY[0x1E696AD98] numberWithFloat:v94];
        v341 = @"softRadius";
        v95 = v246;
        if (!v39)
        {
          v95 = 1.0;
        }

        v379 = [MEMORY[0x1E696AD98] numberWithDouble:v95];
        v342 = @"basePixelWeight";
        v380 = &unk_1F10851A8;
        v343 = @"blendingQuarterResAlphaGain";
        v96 = v230;
        if (!v39)
        {
          v96 = 1.0;
        }

        v381 = [MEMORY[0x1E696AD98] numberWithDouble:v96];
        v344 = @"blendingFullResAlphaGain";
        v97 = v231;
        if (!v39)
        {
          v97 = 1.0;
        }

        v382 = [MEMORY[0x1E696AD98] numberWithDouble:v97];
        v476 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v355 forKeys:&v317 count:28];
        v466 = @"Fusion";
        v483 = @"subtractiveLowerAlpha";
        LODWORD(v98) = v261;
        if (!v39)
        {
          *&v98 = 0.8;
        }

        v489 = [MEMORY[0x1E696AD98] numberWithFloat:v98];
        v484 = @"subtractiveUpperAlpha";
        LODWORD(v99) = v262;
        if (!v39)
        {
          *&v99 = 1.0;
        }

        v490 = [MEMORY[0x1E696AD98] numberWithFloat:v99];
        v485 = @"subtractiveMaxBlur";
        v100 = v263;
        if (!v39)
        {
          v100 = 0.0;
        }

        v491 = [MEMORY[0x1E696AD98] numberWithDouble:v100];
        v486 = @"additiveLowerAlpha";
        LODWORD(v101) = v264;
        if (!v39)
        {
          *&v101 = 0.0;
        }

        v492 = [MEMORY[0x1E696AD98] numberWithFloat:v101];
        v487 = @"additiveUpperAlpha";
        LODWORD(v102) = v265;
        if (!v39)
        {
          *&v102 = 0.2;
        }

        v493 = [MEMORY[0x1E696AD98] numberWithFloat:v102];
        v488 = @"additiveMaxBlur";
        v103 = v266;
        if (!v39)
        {
          v103 = 0.0;
        }

        v494 = [MEMORY[0x1E696AD98] numberWithDouble:v103];
        v477 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v489 forKeys:&v483 count:6];
        v467 = @"Version";
        v478 = &unk_1F10823B8;
        v28 = MEMORY[0x1E695DF20];
        v29 = &v472;
        v30 = &v461;
        v31 = 7;
        break;
      case 1:
        v405 = @"DisparitySmoothing";
        v461 = @"nIterations";
        v472 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v207)];
        v433 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v472 forKeys:&v461 count:1];
        v406 = @"SLM";
        v495 = @"shiftDeadZone";
        *&v20 = v208;
        v512 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
        v496 = @"maximumSimulatedAperture";
        v513 = &unk_1F1085138;
        v497 = @"defaultSimulatedAperture";
        v514 = &unk_1F1085138;
        v434 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v512 forKeys:&v495 count:3];
        v407 = @"Rendering";
        v317 = @"faces.linearBlurGrowthC";
        LODWORD(v21) = v210;
        v355 = [MEMORY[0x1E696AD98] numberWithFloat:v21];
        v318 = @"faces.linearBlurGrowthM";
        LODWORD(v22) = v209;
        v356 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
        v319 = @"faces.distToBlurScaling";
        LODWORD(v23) = v211;
        v357 = [MEMORY[0x1E696AD98] numberWithFloat:v23];
        v320 = @"faces.eyeToEyebrowRatio";
        LODWORD(v24) = v212;
        v358 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
        v321 = @"relativeWeightThreshold";
        LODWORD(v25) = v213;
        v359 = [MEMORY[0x1E696AD98] numberWithFloat:v25];
        v322 = @"highlightBoostGain";
        LODWORD(v26) = v214;
        v360 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
        v323 = @"antiAliasBlurStrength";
        LODWORD(v27) = v215;
        v361 = [MEMORY[0x1E696AD98] numberWithFloat:v27];
        v435 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v355 forKeys:&v317 count:7];
        v408 = @"Version";
        v436 = &unk_1F10823E8;
        v28 = MEMORY[0x1E695DF20];
        v29 = &v433;
        v30 = &v405;
        v31 = 4;
        break;
      default:
        v315 = @"Version";
        v316 = [MEMORY[0x1E696AD98] numberWithInt:v7];
        v28 = MEMORY[0x1E695DF20];
        v29 = &v316;
        v30 = &v315;
        v31 = 1;
        break;
    }

    return [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
  }

  return a1;
}

const CGImageMetadata *tuningParametersFromImage(CIImage *a1)
{
  if (!a1)
  {
    return MEMORY[0x1E695E0F8];
  }

  if (![(CIImage *)a1 properties])
  {
    return MEMORY[0x1E695E0F8];
  }

  v2 = [(CIImage *)a1 properties];
  v3 = [(NSDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
  if (!v3)
  {
    return MEMORY[0x1E695E0F8];
  }

  return tuningParametersFromMetaData(v3);
}

void getSimulatedAperture(CIImage *a1, const CGImageMetadata *a2, NSNumber *a3, NSDictionary *a4)
{
  [(NSNumber *)a3 floatValue];
  if (*&v7 != 0.0)
  {
    goto LABEL_10;
  }

  if (a2)
  {
    getSimulatedApertureFromAuxMetadata(a2);
    v8 = *&v7;
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0.0;
    if (!a1)
    {
      goto LABEL_11;
    }
  }

  if (v8 == 0.0)
  {
    if ([(CIImage *)a1 properties])
    {
      v9 = [(CIImage *)a1 properties];
      v10 = [(NSDictionary *)v9 objectForKeyedSubscript:*MEMORY[0x1E696D228]];
      a2 = v10;
      if (v10)
      {
        getSimulatedApertureFromAuxMetadata(v10);
LABEL_10:
        v8 = *&v7;
      }
    }
  }

LABEL_11:
  if (v8 == 0.0)
  {
    SDOFSimpleLensModelValue(@"simulatedAperture", 0);
    v8 = *&v7;
  }

  LODWORD(v7) = 4.5;
  if (v8 != 0.0)
  {
    if (a4)
    {
      v11 = [-[NSDictionary objectForKeyedSubscript:](a4 objectForKeyedSubscript:{@"Version", v7), "intValue"}];
      if (v11 >= 2)
      {
        v16 = 1083179008;
        v17 = 1083179008;
        if (v11 > 3)
        {
          if (a2)
          {
            v12 = CGImageMetadataCopyTagWithPath(a2, 0, @"depthBlurEffect:RenderingParameters");
            if (v12)
            {
              v13 = v12;
              if (CGImageMetadataTagGetType(v12) == kCGImageMetadataTypeString)
              {
                v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:CGImageMetadataTagCopyValue(v13) options:0];
                CFRelease(v13);
                if (v14)
                {
                  v15 = 0;
                  [CIFilter getMinMaxSimulatedApertureFrom:v14 minValue:&v17 maxValue:&v16 version:&v15];
                }
              }

              else
              {
                CFRelease(v13);
              }
            }
          }
        }

        else
        {
          SDOFRenderingValue(&cfstr_Minimumsimulat.isa, a4);
          SDOFSimpleLensModelValue(@"maximumSimulatedAperture", a4);
        }
      }
    }
  }
}

uint64_t envCCSDOFMetadataClass(void)
{
  if (CCPBundleEnvar(void)::onceToken != -1)
  {
    envCCSDOFMetadataClass();
  }

  v0 = [CCPBundleEnvar(void)::b classNamed:@"CCSDOFMetadata"];
  if (!v0)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3052000000;
    v6 = __Block_byref_object_copy__19;
    v0 = getCCSDOFMetadataClass(void)::softClass;
    v7 = __Block_byref_object_dispose__19;
    v8 = getCCSDOFMetadataClass(void)::softClass;
    if (!getCCSDOFMetadataClass(void)::softClass)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___ZL22getCCSDOFMetadataClassv_block_invoke;
      v2[3] = &unk_1E75C1E10;
      v2[4] = &v3;
      ___ZL22getCCSDOFMetadataClassv_block_invoke(v2);
      v0 = v4[5];
    }

    _Block_object_dispose(&v3, 8);
  }

  return v0;
}

void sub_19CDFCCD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FigDepthBlurEffectRenderingParametersV1FromCFData(void *a1, _OWORD *a2)
{
  if ([a1 length] > 0x2F)
  {
    [a1 getBytes:v10 length:48];
    if (LODWORD(v10[0]) == 1145980242)
    {
      if (DWORD1(v10[0]) == 1)
      {
        if (DWORD2(v10[0]) == 48)
        {
          result = 0;
          v6 = v10[1];
          *a2 = v10[0];
          a2[1] = v6;
          a2[2] = v10[2];
        }

        else
        {
          v9 = ci_logger_api();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            FigDepthBlurEffectRenderingParametersV1FromCFData();
          }

          return 4;
        }
      }

      else
      {
        v8 = ci_logger_api();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          FigDepthBlurEffectRenderingParametersV1FromCFData();
        }

        return 3;
      }
    }

    else
    {
      v7 = ci_logger_api();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        FigDepthBlurEffectRenderingParametersV1FromCFData();
      }

      return 2;
    }
  }

  else
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      FigDepthBlurEffectRenderingParametersV1FromCFData();
    }

    return 1;
  }

  return result;
}

uint64_t FigDepthBlurEffectRenderingParametersV2FromCFData(void *a1, char *a2, BOOL *a3)
{
  if ([a1 length] == 112 || objc_msgSend(a1, "length") > 0x13F)
  {
    [a1 getBytes:v12 length:{objc_msgSend(a1, "length")}];
    if (v12[0] == 1145980242)
    {
      if (v12[1] == 2)
      {
        v8 = __n;
        if (__n == 112 || __n == 320)
        {
          *a3 = __n == 320;
          memcpy(a2, v12, v8);
          if (v8 != 320)
          {
            bzero(&a2[v8], 320 - v8);
          }

          return 0;
        }

        else
        {
          v11 = ci_logger_api();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            FigDepthBlurEffectRenderingParametersV1FromCFData();
          }

          return 4;
        }
      }

      else
      {
        v10 = ci_logger_api();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          FigDepthBlurEffectRenderingParametersV1FromCFData();
        }

        return 3;
      }
    }

    else
    {
      v9 = ci_logger_api();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        FigDepthBlurEffectRenderingParametersV1FromCFData();
      }

      return 2;
    }
  }

  else
  {
    v6 = ci_logger_api();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      FigDepthBlurEffectRenderingParametersV1FromCFData();
    }

    return 1;
  }
}

uint64_t FigDepthBlurEffectRenderingParametersV3FromCFData(void *a1, void *a2)
{
  if ([a1 length] > 0x1D7)
  {
    [a1 getBytes:__src length:472];
    if (__src[0] == 1145980242)
    {
      if (__src[1] == 3)
      {
        if (__src[2] == 472)
        {
          memcpy(a2, __src, 0x1D8uLL);
          return 0;
        }

        else
        {
          v8 = ci_logger_api();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            FigDepthBlurEffectRenderingParametersV1FromCFData();
          }

          return 4;
        }
      }

      else
      {
        v7 = ci_logger_api();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          FigDepthBlurEffectRenderingParametersV1FromCFData();
        }

        return 3;
      }
    }

    else
    {
      v6 = ci_logger_api();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        FigDepthBlurEffectRenderingParametersV1FromCFData();
      }

      return 2;
    }
  }

  else
  {
    v4 = ci_logger_api();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      FigDepthBlurEffectRenderingParametersV1FromCFData();
    }

    return 1;
  }
}

void classLoadUniKernels(objc_class *a1)
{
  v2 = NSSelectorFromString(&cfstr_Initwithmetalq.isa);
  v3 = NSSelectorFromString(&cfstr_Loadshaders.isa);
  v5 = [a1 alloc];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v5 performSelector:v2 withObject:0];
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  if (objc_opt_respondsToSelector())
  {
    [v6 performSelector:v3];
  }
}

uint64_t envCCMakeBlurMapClass(void)
{
  if (CCPBundleEnvar(void)::onceToken != -1)
  {
    envCCSDOFMetadataClass();
  }

  v0 = [CCPBundleEnvar(void)::b classNamed:@"CCMakeBlurMap"];
  if (!v0)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3052000000;
    v6 = __Block_byref_object_copy__19;
    v0 = getCCMakeBlurMapClass(void)::softClass;
    v7 = __Block_byref_object_dispose__19;
    v8 = getCCMakeBlurMapClass(void)::softClass;
    if (!getCCMakeBlurMapClass(void)::softClass)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___ZL21getCCMakeBlurMapClassv_block_invoke;
      v2[3] = &unk_1E75C1E10;
      v2[4] = &v3;
      ___ZL21getCCMakeBlurMapClassv_block_invoke(v2);
      v0 = v4[5];
    }

    _Block_object_dispose(&v3, 8);
  }

  return v0;
}

void sub_19CDFDAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t envCCApplyBlurMapClass(void)
{
  if (CCPBundleEnvar(void)::onceToken != -1)
  {
    envCCSDOFMetadataClass();
  }

  v0 = [CCPBundleEnvar(void)::b classNamed:@"CCApplyBlurMap"];
  if (!v0)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3052000000;
    v6 = __Block_byref_object_copy__19;
    v0 = getCCApplyBlurMapClass(void)::softClass;
    v7 = __Block_byref_object_dispose__19;
    v8 = getCCApplyBlurMapClass(void)::softClass;
    if (!getCCApplyBlurMapClass(void)::softClass)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___ZL22getCCApplyBlurMapClassv_block_invoke;
      v2[3] = &unk_1E75C1E10;
      v2[4] = &v3;
      ___ZL22getCCApplyBlurMapClassv_block_invoke(v2);
      v0 = v4[5];
    }

    _Block_object_dispose(&v3, 8);
  }

  return v0;
}

void sub_19CDFDBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id ___ZL18SDOFParameterValueP8NSStringS0__block_invoke()
{
  v2 = 0;
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:aXmlVersion10En length:6332];
  SDOFParameterValue(NSString *,NSString *)::sdofParameters = [MEMORY[0x1E696AE40] propertyListWithData:v0 options:0 format:0 error:&v2];
  return SDOFParameterValue(NSString *,NSString *)::sdofParameters;
}

id ___ZL18SDOFParameterValueP8NSStringS0__block_invoke_2()
{
  result = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  if (result)
  {
    v4 = 0;
    result = [MEMORY[0x1E696AE40] propertyListWithData:result options:0 format:0 error:&v4];
    if (result)
    {
      v1 = v4 == 0;
    }

    else
    {
      v1 = 0;
    }

    if (v1)
    {
      result = [result valueForKey:@"TuningParameters"];
      if (result)
      {
        v2 = result;
        result = [result valueForKey:@"DefaultSensorIDs"];
        if (result)
        {
          result = [result valueForKey:@"PortTypeBackTelephoto"];
          if (result)
          {
            v3 = result;
            result = [v2 valueForKey:@"PortTypeBackTelephoto"];
            if (result)
            {
              result = [result objectForKey:v3];
              if (result)
              {
                result = [result valueForKey:@"SDOFRenderingParameters"];
                if (result)
                {
                  SDOFParameterValue(NSString *,NSString *)::sdofParametersOnDevice = result;
                  return result;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double CI::sw_convertDepthOrDisparity(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *&v8 = 1.0 / fmaxf(COERCE_FLOAT(*v7), 0.000001);
  return *&v8;
}

double CI::sw_segmentationFusion(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v11 = *(a2 + (*(v3 + 56) << 6));
  v12 = *(a2 + (*(v3 + 80) << 6));
  if (*(v3 + 40) == 5)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(&v11 + 1) + (*&v11 * *v13);
  LODWORD(v11) = DWORD2(v11);
  if (v14 <= *(&v11 + 2))
  {
    *&v11 = v14;
  }

  if (v14 < 0.0)
  {
    *&v11 = 0.0;
  }

  v15 = *(&v12 + 1) + (*&v12 * *v13);
  LODWORD(v12) = DWORD2(v12);
  if (v15 <= *(&v12 + 2))
  {
    *&v12 = v15;
  }

  if (v15 < 0.0)
  {
    *&v12 = 0.0;
  }

  v16 = (*&v11 + (*v7 * *v7)) - *&v12;
  if (v16 <= 1.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 1.0;
  }

  if (v16 >= 0.0)
  {
    *&v11 = v17;
  }

  else
  {
    *&v11 = 0.0;
  }

  *&v11 = sqrtf(*&v11);
  *&v11 = vdupq_lane_s32(*&v11, 0).u64[0];
  return *&v11;
}

char *___ZL14CCPBundleEnvarv_block_invoke()
{
  result = getenv("CI_CCPORTRAIT_PATH");
  if (result)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithPath:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", result)}];
    CCPBundleEnvar(void)::b = v1;

    return [v1 load];
  }

  return result;
}

Class ___ZL20getCCFacePointsClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCFacePoints");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL20getCCFacePointsClassv_block_invoke_cold_1();
  }

  getCCFacePointsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void CCPortraitLibrary(void)
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!CCPortraitLibraryCore(char **)::frameworkLibrary)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = ___ZL21CCPortraitLibraryCorePPc_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_1E75C3FF0;
    v2 = 0;
    CCPortraitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  if (!CCPortraitLibraryCore(char **)::frameworkLibrary)
  {
    CCPortraitLibrary(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t ___ZL21CCPortraitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  CCPortraitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL25getCCMakeBlurMapArgsClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCMakeBlurMapArgs");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL25getCCMakeBlurMapArgsClassv_block_invoke_cold_1();
  }

  getCCMakeBlurMapArgsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

void getSimulatedApertureFromAuxMetadata(const CGImageMetadata *a1)
{
  v1 = CGImageMetadataCopyTagWithPath(a1, 0, @"depthBlurEffect:SimulatedAperture");
  if (v1)
  {
    v2 = v1;
    [CGImageMetadataTagCopyValue(v1) floatValue];
    CFRelease(v2);
  }
}

uint64_t CI::sw_onlyRG_(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t envCCApplyBlurMapArgsClass(void)
{
  if (CCPBundleEnvar(void)::onceToken != -1)
  {
    envCCSDOFMetadataClass();
  }

  v0 = [CCPBundleEnvar(void)::b classNamed:@"CCApplyBlurMapArgs"];
  if (!v0)
  {
    v3 = 0;
    v4 = &v3;
    v5 = 0x3052000000;
    v6 = __Block_byref_object_copy__19;
    v0 = getCCApplyBlurMapArgsClass(void)::softClass;
    v7 = __Block_byref_object_dispose__19;
    v8 = getCCApplyBlurMapArgsClass(void)::softClass;
    if (!getCCApplyBlurMapArgsClass(void)::softClass)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 3221225472;
      v2[2] = ___ZL26getCCApplyBlurMapArgsClassv_block_invoke;
      v2[3] = &unk_1E75C1E10;
      v2[4] = &v3;
      ___ZL26getCCApplyBlurMapArgsClassv_block_invoke(v2);
      v0 = v4[5];
    }

    _Block_object_dispose(&v3, 8);
  }

  return v0;
}

void sub_19CE01004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ___ZL26getCCApplyBlurMapArgsClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCApplyBlurMapArgs");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL26getCCApplyBlurMapArgsClassv_block_invoke_cold_1();
  }

  getCCApplyBlurMapArgsClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class ___ZL22getCCSDOFMetadataClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCSDOFMetadata");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL22getCCSDOFMetadataClassv_block_invoke_cold_1();
  }

  getCCSDOFMetadataClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class ___ZL21getCCMakeBlurMapClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCMakeBlurMap");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL21getCCMakeBlurMapClassv_block_invoke_cold_1();
  }

  getCCMakeBlurMapClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

Class ___ZL22getCCApplyBlurMapClassv_block_invoke(uint64_t a1)
{
  CCPortraitLibrary();
  result = objc_getClass("CCApplyBlurMap");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL22getCCApplyBlurMapClassv_block_invoke_cold_1();
  }

  getCCApplyBlurMapClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t ___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) count];
  if (result)
  {
    v21 = *(a1 + 40);
    if (!v21)
    {
      v36[0] = @"working_format";
      v37[0] = [MEMORY[0x1E696AD98] numberWithInt:2056];
      v37[1] = &unk_1F1082448;
      v36[1] = @"kCIContextIntermediateMemoryTarget";
      v36[2] = @"kCIContextCacheIntermediates";
      v36[3] = @"kCIContextUseMetalRenderer";
      v37[2] = MEMORY[0x1E695E110];
      v37[3] = MEMORY[0x1E695E118];
      v21 = +[CIContext contextWithOptions:](CIContext, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4]);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = *(a1 + 32);
    result = [v3 countByEnumeratingWithState:&v24 objects:v35 count:16];
    v5 = result;
    if (result)
    {
      v6 = *v25;
      *&v4 = 138543362;
      v20 = v4;
      do
      {
        v7 = 0;
        do
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [CIFilter prewarmedFilterFromString:*(*(&v24 + 1) + 8 * v7), v20];
          if (v8)
          {
            v9 = objc_autoreleasePoolPush();
            v10 = [v8 outputImage];
            if (v10)
            {
              v32[0] = 0;
              v32[1] = v32;
              v32[2] = 0x3052000000;
              v32[3] = __Block_byref_object_copy__19;
              v32[4] = __Block_byref_object_dispose__19;
              v32[5] = 0;
              v11 = [CIRenderDestination alloc];
              [v10 extent];
              v13 = v12;
              [v10 extent];
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = ___ZL20renderPrewarmedImageP9CIContextP8CIFilter_block_invoke;
              v31[3] = &unk_1E75C4010;
              v31[4] = v32;
              v15 = [(CIRenderDestination *)v11 initWithWidth:v13 height:v14 pixelFormat:70 commandBuffer:0 mtlTextureProvider:v31];
              if (v15)
              {
                v28 = 0;
                [v10 extent];
                [CIContext prepareRender:v21 fromRect:"prepareRender:fromRect:toDestination:atPoint:error:" toDestination:v10 atPoint:v15 error:&v28];
                if (v28)
                {
                  v16 = ci_logger_api();
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v20;
                    v39 = v28;
                    _os_log_error_impl(&dword_19CC36000, v16, OS_LOG_TYPE_ERROR, "Error asking CI to prepare render = %{public}@", buf, 0xCu);
                  }
                }
              }

              else
              {
                v19 = ci_logger_api();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  ___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke_cold_1(&v29, v30);
                }
              }

              _Block_object_dispose(v32, 8);
            }

            else
            {
              v18 = ci_logger_api();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                ___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke_cold_2(&v33, v34);
              }
            }

            objc_autoreleasePoolPop(v9);
          }

          else
          {
            v17 = ci_logger_api();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              ___ZL23prewarmSDOFFilterGraphsP9CIContext_block_invoke_cold_3(&v22, v23);
            }
          }

          ++v7;
        }

        while (v5 != v7);
        result = [v3 countByEnumeratingWithState:&v24 objects:v35 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

_BYTE *OUTLINED_FUNCTION_2_9(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_4_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

CIImage *_CUIMappedBlurImageWithSize(CIImage *a1, unsigned int a2, unsigned int a3)
{
  v3 = a2;
  v4 = a1;
  v17 = *MEMORY[0x1E69E9840];
  v5 = vcvtad_u64_f64(a3 * 0.01 * a2);
  if (v5)
  {
    v3 -= v5;
    v4 = -[CIImage filteredImage:keysAndValues:](a1, "filteredImage:keysAndValues:", @"CUIScaleClampFilter", @"inputImage", _CUIMappedBlurImageWithSize(a1, v5, 0), @"inputScale", [MEMORY[0x1E696AD98] numberWithDouble:(v5 * 5.0)], 0);
  }

  v15[2] = xmmword_19CF2A9C0;
  v15[3] = unk_19CF2A9D0;
  v16 = 0x3FB0000000000000;
  v15[0] = xmmword_19CF2A9A0;
  v15[1] = unk_19CF2A9B0;
  v12 = xmmword_19CF2AA08;
  v13 = unk_19CF2AA18;
  v14 = 0x3FBC71C71C71C71CLL;
  HIDWORD(v6) = unk_19CF2A9FC;
  v10 = xmmword_19CF2A9E8;
  v11 = unk_19CF2A9F8;
  if (!v3)
  {
    return v4;
  }

  if (v3 == 1)
  {
    v7 = v15;
LABEL_8:
    v8 = [CIVector vectorWithValues:v7 count:9];
    return [(CIImage *)v4 filteredImage:@"CIConvolution3X3" keysAndValues:@"inputWeights", v8, @"inputBias", &unk_1F10851B8, 0, v10, v11, v12, v13, v14];
  }

  if (v3 <= 2)
  {
    v7 = &v10;
    goto LABEL_8;
  }

  *&v6 = v3 / 2.853;
  return -[CIImage filteredImage:keysAndValues:](v4, "filteredImage:keysAndValues:", @"CIGaussianBlur", @"inputRadius", [MEMORY[0x1E696AD98] numberWithFloat:v6], 0);
}

__n128 convolve(double *a1, const double *a2)
{
  v2 = 0;
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = -1;
  do
  {
    v4 = 0;
    v5 = v3;
    do
    {
      if (v5 <= 8)
      {
        *(&v8 + v5) = *(&v8 + v5) + a1[v2] * a2[v4];
      }

      ++v5;
      ++v4;
    }

    while (v4 != 3);
    ++v2;
    ++v3;
  }

  while (v2 != 9);
  v6 = v11;
  *(a1 + 2) = v10;
  *(a1 + 3) = v6;
  *(a1 + 8) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 1) = result;
  return result;
}

double CI::sw_scaleClamp(uint64_t a1, uint64_t a2, uint64_t a3)
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

  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(*v7, *(a2 + (*(v3 + 32) << 6))), 0), _Q1).u64[0];
  return result;
}

double CI::sw_innerGorS(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = (1.0 - *(v7 + 12)) / *(a2 + (*(v3 + 56) << 6));
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v9 = (1.0 - *(v7 + 12)) / *(a2 + (*(v3 + 56) << 6));
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  *&result = vmulq_n_f32(*(a2 + (*(v3 + 32) << 6)), v11).u64[0];
  return result;
}

double CI::sw_outerGorS(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *(v7 + 12) / *(a2 + (*(v3 + 56) << 6));
  v9 = 1.0;
  if (v8 <= 1.0)
  {
    v9 = *(v7 + 12) / *(a2 + (*(v3 + 56) << 6));
  }

  v10 = v8 < 0.0;
  v11 = 0.0;
  if (!v10)
  {
    v11 = v9;
  }

  *&result = vmulq_n_f32(*(a2 + (*(v3 + 32) << 6)), v11).u64[0];
  return result;
}

double CI::sw_shapeEffectBlur_1(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = a3 + 16 * v7;
  v9 = a2 + (v7 << 6);
  if (*(v3 + 40) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v3 + 56);
  v12 = a3 + 16 * v11;
  v13 = a2 + (v11 << 6);
  if (*(v3 + 64) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v3 + 80);
  v16 = a3 + 16 * v15;
  v17 = a2 + (v15 << 6);
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
  v24 = *(v3 + 152);
  v25 = *(v3 + 176);
  v26 = *(v3 + 200);
  v27 = *(v3 + 232);
  v28 = *(v3 + 224);
  v29 = (a3 + 16 * v28);
  v30 = (a2 + (v28 << 6));
  if (v27 == 5)
  {
    v30 = v29;
  }

  v31 = v24 << 6;
  v32 = *v30;
  v33 = *(v14 + 12);
  v34 = 1.0 - v33 + 1.0 - v33;
  if (v34 <= 1.0)
  {
    v35 = 1.0 - v33 + 1.0 - v33;
  }

  else
  {
    v35 = 1.0;
  }

  if (v34 < 0.0)
  {
    v35 = 0.0;
  }

  v36 = vmulq_n_f32(*(a2 + (v23 << 6)), v35);
  v37 = v33 + v33;
  if (v37 <= 1.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 1.0;
  }

  if (v37 >= 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = vmulq_n_f32(*(a2 + v31), v39);
  v41 = *(v10 + 12);
  v42 = *(v18 + 12);
  v43 = vmulq_n_f32(*(a2 + (v25 << 6)), ((1.0 - v42) * v32.f32[0]) + ((1.0 - v41) * (1.0 - v32.f32[0])));
  v44 = vmulq_laneq_f32(vaddq_f32(v43, vmulq_n_f32(vaddq_f32(v36, vmulq_n_f32(*v22, 1.0 - v36.f32[3])), 1.0 - v43.f32[3])), *v6, 3);
  *&result = vaddq_f32(v44, vmulq_n_f32(vmulq_n_f32(vaddq_f32(v40, vmulq_n_f32(vmulq_n_f32(*(a2 + (v26 << 6)), vmuls_lane_f32(v42, v32, 1) + (v41 * (1.0 - v32.f32[1]))), 1.0 - v40.f32[3])), 1.0 - COERCE_FLOAT(HIDWORD(*v6))), 1.0 - v44.f32[3])).u64[0];
  return result;
}

double CI::sw_outerBevelEmboss(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v53 = *v9;
  v11 = *CI::getDC(a1);
  v12 = vadd_f32(vdup_lane_s32(v53, 1), v11);
  LODWORD(v13) = *(v10 + 24);
  v14.i32[0] = *(v10 + 36);
  *v15.i32 = vmuls_lane_f32(*(v10 + 32), v12, 1);
  *&v16 = *v15.i32 + (v12.f32[0] * *(v10 + 28));
  v12.f32[0] = *&v13 + (vmuls_lane_f32(*(v10 + 20), v12, 1) + (v12.f32[0] * *(v10 + 16)));
  *v17.f64 = *v14.i32 + *&v16;
  v12.f32[1] = *v14.i32 + *&v16;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), *&v12, v17, v13, v16, v15, v14, v18, v19);
  v52 = v20;
  *v20.f32 = vadd_f32(v53, v11);
  LODWORD(v21) = *(v10 + 24);
  v22.i32[0] = *(v10 + 36);
  *v23.i32 = vmuls_lane_f32(*(v10 + 32), *v20.f32, 1);
  *&v24 = *v23.i32 + (v20.f32[0] * *(v10 + 28));
  v20.f32[0] = *&v21 + (vmuls_lane_f32(*(v10 + 20), *v20.f32, 1) + (v20.f32[0] * *(v10 + 16)));
  *v25.f64 = *v22.i32 + *&v24;
  v20.f32[1] = *v22.i32 + *&v24;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v25, v21, v24, v23, v22, v26, v27);
  v51 = v28;
  *v28.f32 = vadd_f32(vrev64_s32(v53), v11);
  LODWORD(v29) = *(v10 + 24);
  v30.i32[0] = *(v10 + 36);
  *v31.i32 = vmuls_lane_f32(*(v10 + 32), *v28.f32, 1);
  *&v32 = *v31.i32 + (v28.f32[0] * *(v10 + 28));
  v28.f32[0] = *&v29 + (vmuls_lane_f32(*(v10 + 20), *v28.f32, 1) + (v28.f32[0] * *(v10 + 16)));
  *v33.f64 = *v30.i32 + *&v32;
  v28.f32[1] = *v30.i32 + *&v32;
  *v36.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v33, v29, v32, v31, v30, v34, v35);
  v50 = v36;
  *v36.f32 = vadd_f32(vdup_lane_s32(v53, 0), v11);
  LODWORD(v37) = *(v10 + 24);
  v38.i32[0] = *(v10 + 36);
  *v39.i32 = vmuls_lane_f32(*(v10 + 32), *v36.f32, 1);
  *&v40 = *v39.i32 + (v36.f32[0] * *(v10 + 28));
  v36.f32[0] = *&v37 + (vmuls_lane_f32(*(v10 + 20), *v36.f32, 1) + (v36.f32[0] * *(v10 + 16)));
  *v41.f64 = *v38.i32 + *&v40;
  v36.f32[1] = *v38.i32 + *&v40;
  *v44.i64 = CI::BitmapSampler::read(*(v10 + 8), *v36.i64, v41, v37, v40, v39, v38, v42, v43);
  v44.f32[0] = COERCE_FLOAT(vaddq_f32(v52, v51).i32[3]) + COERCE_FLOAT(vaddq_f32(v50, v44).i32[3]) * -1.3;
  v45 = v44.f32[0] * 0.5 + 0.5;
  v46 = 1.0;
  if (v45 <= 1.0)
  {
    v46 = v45;
  }

  v47 = v45 < 0.0;
  v48 = 0;
  if (!v47)
  {
    *v48.i32 = v46;
  }

  *&result = vdupq_lane_s32(v48, 0).u64[0];
  return result;
}

double CI::sw_outerBevelEmbossC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *(v3 + 32) << 6;
  v9 = *(v3 + 56) << 6;
  v10 = *(v7 + 12) * 2.0 + -1.0;
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v12 = *(v7 + 12) * 2.0 + -1.0;
  }

  else
  {
    v12 = 1.0;
  }

  if (v10 >= -1.0)
  {
    v11 = -v10;
  }

  v13 = v10 < 0.0;
  v14 = v10 <= 0.0;
  v15 = 0.0;
  if (v13)
  {
    v12 = 0.0;
  }

  v16 = vmulq_n_f32(*(a2 + v8), v12);
  if (v14)
  {
    v15 = v11;
  }

  *&result = vaddq_f32(vmulq_n_f32(*(a2 + v9), v15), v16).u64[0];
  return result;
}

double CI::sw_multiplyByMask(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_laneq_f32(*v7, *v11, 3).u64[0];
  return result;
}

double CI::sw_cui_hueSaturation(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v5 + 16) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *v9;
  v11 = *(a2 + (*(v5 + 56) << 6));
  if (v11 > 0.0)
  {
    v12 = v11;
    *&a5 = fminf(*v10.i32, fminf(*&v10.i32[1], *&v10.i32[2]));
    v13 = fmaxf(*v10.i32, fmaxf(*&v10.i32[1], *&v10.i32[2]));
    v14 = v13 - *&a5;
    v15 = (v13 - *&a5) / v13;
    v16 = 0.0;
    if (v13 == 0.0)
    {
      v15 = 0.0;
    }

    if (v15 != 0.0)
    {
      v17 = ((*v10.i32 - *&v10.i32[1]) / v14) + 4.0;
      if (*&v10.i32[1] == v13)
      {
        v17 = ((*&v10.i32[2] - *v10.i32) / v14) + 2.0;
      }

      v18 = (*&v10.i32[1] - *&v10.i32[2]) / v14;
      if (*v10.i32 != v13)
      {
        v18 = v17;
      }

      v16 = v18 / 6.0;
      if ((v18 / 6.0) < 0.0)
      {
        v16 = v16 + 1.0;
      }
    }

    v19 = ((v16 * 360.0) - *(a2 + (*(v5 + 32) << 6))) / 6.0;
    v20 = v19 + 360.0;
    if (v19 >= 0.0)
    {
      v20 = ((v16 * 360.0) - *(a2 + (*(v5 + 32) << 6))) / 6.0;
    }

    v21 = v20;
    v22 = v12 * 0.5;
    if (v22 > v20)
    {
      LODWORD(v22) = *(a2 + (*(v5 + 104) << 6));
      LODWORD(v21) = *(a2 + (*(v5 + 128) << 6));
      if (v15 == 0.0)
      {
        v23.i64[0] = 0;
        v23.i32[2] = 0;
LABEL_37:
        v37 = vsub_f32(*v23.i8, vdup_lane_s32(*&a5, 0));
        v38 = vmls_lane_f32(*v23.i8, v37, *&v21, 0);
        v37.f32[0] = ((*&v23.i32[2] - ((*&v23.i32[2] - *&a5) * *&v21)) + vaddv_f32(v38)) / 3.0;
        *v10.i8 = vmls_lane_f32(v38, vsub_f32(v38, vdup_lane_s32(v37, 0)), *&v22, 0);
        return *v10.i64;
      }

      v24 = v13;
      v25.f64[0] = v15;
      v26 = *(a2 + (*(v5 + 80) << 6)) + v20;
      if (v26 < 0.0)
      {
        v26 = v26 + 360.0;
      }

      if (v26 > 360.0)
      {
        v26 = v26 + -360.0;
      }

      v27 = v26 / 60.0;
      v28 = v27;
      v29 = v27 - floorf(v27);
      v25.f64[1] = (v15 * v29);
      __asm { FMOV            V5.2D, #1.0 }

      v35 = vmulq_n_f64(vsubq_f64(_Q5, v25), v24);
      *&v35.f64[0] = vcvt_f32_f64(v35);
      v36 = (1.0 - v25.f64[0] * (1.0 - v29)) * v24;
      if (v28 > 1)
      {
        switch(v28)
        {
          case 2:
            HIDWORD(v35.f64[1]) = vextq_s8(*&v10, *&v10, 8uLL).i32[1];
            *(v35.f64 + 1) = v13;
            *&v35.f64[1] = v36;
            break;
          case 3:
            HIDWORD(v35.f64[1]) = vextq_s8(*&v10, *&v10, 8uLL).i32[1];
            *&v35.f64[1] = v13;
            break;
          case 4:
            v10.i64[0] = __PAIR64__(LODWORD(v35.f64[0]), LODWORD(v36));
            *&v10.i32[2] = v13;
LABEL_36:
            v23 = v10;
            goto LABEL_37;
          default:
            goto LABEL_35;
        }

        v23 = v35;
        goto LABEL_37;
      }

      if (!v28)
      {
        v10.i64[0] = __PAIR64__(LODWORD(v36), LODWORD(v13));
        v10.i32[2] = LODWORD(v35.f64[0]);
        goto LABEL_36;
      }

      if (v28 == 1)
      {
        v23.i32[0] = vtrn2q_s32(v35, v10).u32[0];
        *&v23.i32[1] = v13;
        v23.i32[2] = LODWORD(v35.f64[0]);
        goto LABEL_37;
      }

LABEL_35:
      v10.i64[0] = __PAIR64__(LODWORD(v35.f64[0]), LODWORD(v13));
      v10.i32[2] = HIDWORD(v35.f64[0]);
      goto LABEL_36;
    }
  }

  return *v10.i64;
}

void CI::snprintf_cs(CI *this, char *a2, CGColorSpace *a3, CGColorSpace *a4)
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  Type = CGColorSpaceGetType();
  if (!a3)
  {
    v9 = "nil";
    goto LABEL_60;
  }

  if (Type <= 4)
  {
    if (Type <= 1)
    {
      if (!Type)
      {
        v9 = "devicegray";
        goto LABEL_60;
      }

      if (Type != 1)
      {
LABEL_38:
        snprintf(this, a2, "%p");
        return;
      }
    }

    else if (Type != 2)
    {
      if (Type == 3)
      {
        *&v32 = 0;
        v30 = 0u;
        v31 = 0u;
        *buffer = 0u;
        CGColorSpaceGetCalibratedGrayData();
        snprintf(this, a2, "calGray(");
        v13 = 0.96420002 == 0.0 && *&buffer[8] == 1.0;
        if (v13 && *&v30 == 0.824899971)
        {
          v14 = "wp=d50 ";
        }

        else
        {
          *&v25 = v30;
          v23 = *buffer;
          v14 = "wp=%.3f,%.3f,%.3f ";
        }

        CI::snprintfcat(this, a2, v14, v12, 0.0, 0.0, 0.0, v23, v25);
        if (*(&v30 + 1) != 0.0 || *&v31 != 0.0 || *(&v31 + 1) != 0.0)
        {
          CI::snprintfcat(this, a2, "bp=%.3f,%.3f,%.3f ", v17, *(&v30 + 1), v31);
        }

        v18 = *&v32;
        if (*&v32 != 1.0)
        {
          CI::snprintfcat(this, a2, "gamma=%.3f)", v17, *&v32, v32, *(&v24 + 1), v25);
          return;
        }

        v19 = "gamma=1)";
        goto LABEL_66;
      }

      v32 = 0u;
      memset(v33, 0, sizeof(v33));
      v30 = 0u;
      v31 = 0u;
      *buffer = 0u;
      CGColorSpaceGetCalibratedRGBData();
      snprintf(this, a2, "calRGB(");
      if (0.96420002 == 0.0 && *&buffer[8] == 1.0 && *&v30 == 0.824899971)
      {
        snprintf(this, a2, "wp=d50 ", 0.0, 0.0, 0.0);
      }

      else
      {
        CI::snprintfcat(this, a2, "wp=%.3f,%.3f,%.3f ", v10, *buffer, *&buffer[8], v30);
      }

      if (*(&v30 + 1) != 0.0 || *&v31 != 0.0 || *(&v31 + 1) != 0.0)
      {
        CI::snprintfcat(this, a2, "bp=%.3f,%.3f,%.3f ", v11, *(&v30 + 1), v31);
      }

      if (*&v32 == 1.0 && *(&v32 + 1) == 1.0 && *v33 == 1.0)
      {
        v20 = "gamma=1 ";
      }

      else
      {
        if (*&v32 == *(&v32 + 1) && *(&v32 + 1) == *v33)
        {
          CI::snprintfcat(this, a2, "gamma=%.3f ", v11, *(&v32 + 1), *&v32, *v33, *(&v32 + 1), *(&v23 + 1), v25);
LABEL_65:
          v18 = *(v33 + 1);
          v28 = *(&v33[4] + 1);
          v26 = *(&v33[2] + 8);
          v27 = *(&v33[3] + 8);
          v24 = *(v33 + 8);
          v25 = *(&v33[1] + 8);
          v19 = "mtx=%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f,%.3f)";
LABEL_66:
          CI::snprintfcat(this, a2, v19, v17, v18, v24, v25, v26, v27, v28);
          return;
        }

        *&v25 = *&v33[0];
        v23 = v32;
        v20 = "gamma=%.3f,%.3f,%.3f ";
      }

      CI::snprintfcat(this, a2, v20, v11, *(&v32 + 1), *&v32, *v33, v23, v25);
      goto LABEL_65;
    }

    v9 = "devicergb";
    goto LABEL_60;
  }

  if (Type > 7)
  {
    switch(Type)
    {
      case 8:
        snprintf(this, a2, "DeviceN Colorspace %p");
        return;
      case 9:
        snprintf(this, a2, "Pattern Colorspace %p");
        return;
      case 10:
        snprintf(this, a2, "PlatformSets Colorspace %p");
        return;
    }

    goto LABEL_38;
  }

  if (Type == 5)
  {
    snprintf(this, a2, "Lab Colorspace %p");
    return;
  }

  if (Type != 6)
  {
    snprintf(this, a2, "Indexed Colorspace %p");
    return;
  }

  if ((atomic_load_explicit(&qword_1ED7C4528, memory_order_acquire) & 1) == 0)
  {
    CI::snprintf_cs();
  }

  if (_MergedGlobals_4 != a3)
  {
    memset(v33, 0, 64);
    v31 = 0u;
    v32 = 0u;
    *buffer = 0u;
    v30 = 0u;
    Name = CGColorSpaceGetName(a3);
    if (Name)
    {
      v16 = Name;
      CFRetain(Name);
    }

    else
    {
      v16 = CGColorSpaceCopyICCProfileDescription();
      if (!v16)
      {
        v21 = 1;
        goto LABEL_70;
      }
    }

    CFStringGetCString(v16, buffer, 128, 0x8000100u);
    v21 = 0;
LABEL_70:
    v22 = *buffer == 0x726F6C6F4347436BLL && *&buffer[5] == 0x6563617053726F6CLL;
    if (v22 || !v4)
    {
      snprintf(this, a2, "%s");
    }

    else
    {
      snprintf(this, a2, "%s");
    }

    if ((v21 & 1) == 0)
    {
      CFRelease(v16);
    }

    return;
  }

  v9 = "sRGB";
LABEL_60:

  snprintf(this, a2, v9);
}

size_t CI::snprintfcat(CI *this, char *a2, const char *a3, const char *a4, ...)
{
  va_start(va, a4);
  result = strlen(this);
  if (a2 > result)
  {
    return vsnprintf(this + result, &a2[-result], a3, va);
  }

  return result;
}

uint64_t CI::fprintf_cs(FILE *this, __sFILE *a2, CGColorSpace *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  CI::snprintf_cs(v5, 0x100, a2, a3);
  return fputs(v5, this);
}

CGColorSpace *CI::ColorSpace_is_RGB(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CGColorSpaceGetTypeID())
    {
      return (CGColorSpaceGetModel(v2) == kCGColorSpaceModelRGB);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

CGColorSpace *CI::ColorSpace_is_RGB_or_Gray(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CGColorSpaceGetTypeID())
    {
      return (CGColorSpaceGetModel(v2) < kCGColorSpaceModelCMYK);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

BOOL CI::ColorSpace_is_RGB_and_supports_output(_BOOL8 this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CGColorSpaceGetTypeID())
    {
      this = CGColorSpaceSupportsOutput(v2);
      if (this)
      {
        return CGColorSpaceGetModel(v2) == kCGColorSpaceModelRGB;
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

BOOL CI::ColorSpace_is_RGB_or_Gray_and_supports_output(_BOOL8 this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    v3 = CFGetTypeID(this);
    if (v3 == CGColorSpaceGetTypeID())
    {
      this = CGColorSpaceSupportsOutput(v2);
      if (this)
      {
        return CGColorSpaceGetModel(v2) < kCGColorSpaceModelCMYK;
      }
    }

    else
    {
      return 0;
    }
  }

  return this;
}

CGColorSpace *CI::ColorSpace_is_HDR(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    return CGColorSpaceUsesITUR_2100TF(this);
  }

  return this;
}

CGColorSpace *CI::ColorSpaceCreateSDRCopy(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    if (CGColorSpaceUsesITUR_2100TF(this))
    {
      v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0C8]);
      v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0D0]);
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0C0]);
      v6 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F190]);
      v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F188]);
      v8 = CGColorSpaceEqualToColorSpace();
      v9 = CGColorSpaceEqualToColorSpace();
      v10 = CGColorSpaceEqualToColorSpace();
      v11 = CGColorSpaceEqualToColorSpace();
      v12 = CGColorSpaceEqualToColorSpace();
      CGColorSpaceRelease(v3);
      CGColorSpaceRelease(v4);
      CGColorSpaceRelease(v5);
      CGColorSpaceRelease(v6);
      CGColorSpaceRelease(v7);
      if ((v8 & 1) != 0 || (v9 & 1) != 0 || v10 || ((v11 | v12) & 1) == 0)
      {
        v13 = MEMORY[0x1E695F0B8];
      }

      else
      {
        v13 = MEMORY[0x1E695F1C0];
      }

      v14 = *v13;

      return CGColorSpaceCreateWithName(v14);
    }

    else
    {

      return CGColorSpaceRetain(v2);
    }
  }

  return this;
}

CGColorSpace *CI::ColorSpaceCreatePQBasedCopy(CGColorSpace *this, CGColorSpace *a2)
{
  if (this)
  {
    v2 = this;
    if (CGColorSpaceIsPQBased(this))
    {

      return CGColorSpaceRetain(v2);
    }

    else
    {
      v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v5 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F180]);
      v6 = CGColorSpaceEqualToColorSpace();
      v7 = CGColorSpaceEqualToColorSpace();
      v8 = CGColorSpaceEqualToColorSpace();
      CGColorSpaceRelease(v3);
      CGColorSpaceRelease(v4);
      CGColorSpaceRelease(v5);
      if (v6)
      {
        v9 = MEMORY[0x1E695F0C8];
      }

      else if ((v7 | v8))
      {
        v9 = MEMORY[0x1E695F190];
      }

      else
      {
        v9 = MEMORY[0x1E695F178];
      }

      v10 = *v9;

      return CGColorSpaceCreateWithName(v10);
    }
  }

  return this;
}

unsigned __int8 **ConvertYCbCrtoREDEYEFORMAT(unsigned __int8 **result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = *(result + 2);
  v6 = *(a2 + 8);
  if (v5 != 2 * v6)
  {
    v7 = "ConvertYCbCrtoREDEYEFORMAT: widths do not match";

    return puts(v7);
  }

  if (*(result + 3) != 2 * *(a2 + 12))
  {
    v7 = "ConvertYCbCrtoREDEYEFORMAT: heights do not match";

    return puts(v7);
  }

  if (*(result + 4) < *(result + 7) * v5)
  {
    v7 = "ConvertYCbCrtoREDEYEFORMAT: rowSamples is too small for Y bitmap";

    return puts(v7);
  }

  v8 = *(a2 + 16);
  if (v8 < *(a2 + 28) * v6)
  {
    v7 = "ConvertYCbCrtoREDEYEFORMAT: rowSamples is too small for CbCr bitmap";

    return puts(v7);
  }

  if (*(a3 + 12) >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = *a3;
    v12 = *result;
    while (1)
    {
      if (v9)
      {
        v13 = *(result + 3) - 1;
      }

      else
      {
        v13 = 0;
        v8 = -v8;
      }

      if (v9 == v13)
      {
        v8 = 0;
      }

      v14 = &v10[v8];
      v15 = *v10;
      v16 = v10[1];
      v17 = *v14;
      v18 = v14[1];
      v87 = v11;
      v88 = v10;
      v86 = v12;
      if (*(result + 2) >= 3)
      {
        break;
      }

      v24 = *v10;
      v23 = v10[1];
      v22 = *v14;
      v21 = v14[1];
      v20 = v11;
LABEL_70:
      v55 = *v12;
      v56 = ((9 * v15 + v22 + 3 * (v17 + v24) + 8) >> 4) - 128;
      v57 = ((9 * v16 + v21 + 3 * (v18 + v23) + 8) >> 4) - 128;
      v58 = v55 + ((22970 * v57 + 0x2000) >> 14);
      v59 = v55 + ((-11700 * v57 - 5638 * v56 + 0x2000) >> 14);
      v60 = v55 + ((29032 * v56 + 0x2000) >> 14);
      if (v58 >= 255)
      {
        v61 = 255;
      }

      else
      {
        v61 = v58;
      }

      v62 = v61 & ~(v61 >> 31);
      if (v59 >= 255)
      {
        v59 = 255;
      }

      v63 = v59 & ~(v59 >> 31);
      if (v60 >= 255)
      {
        v60 = 255;
      }

      v64 = v60 & ~(v60 >> 31);
      if (a4)
      {
        v65 = v62;
      }

      else
      {
        v65 = -1;
      }

      if (a4)
      {
        v66 = v63;
      }

      else
      {
        v66 = v62;
      }

      if (a4)
      {
        v67 = v64;
      }

      else
      {
        v67 = v63;
      }

      if (a4)
      {
        v68 = -1;
      }

      else
      {
        v68 = v64;
      }

      if (a4 == 2)
      {
        v65 = v64;
        v66 = v63;
        v67 = v62;
        v68 = -1;
      }

      if (a4 == 3)
      {
        v65 = -1;
      }

      else
      {
        LOBYTE(v64) = v66;
        LOBYTE(v63) = v67;
        LOBYTE(v62) = v68;
      }

      *v20 = v65;
      v20[1] = v64;
      v20[2] = v63;
      v20[3] = v62;
      if (*(a3 + 8) == *(result + 2))
      {
        v69 = v12[1];
        v70 = &v20[*(a3 + 28)];
        v71 = ((9 * *v10 + *v14 + 3 * (*v14 + *v10) + 8) >> 4) - 128;
        v72 = ((9 * v10[1] + v14[1] + 3 * (v14[1] + v10[1]) + 8) >> 4) - 128;
        v73 = v69 + ((22970 * v72 + 0x2000) >> 14);
        v74 = v69 + ((-5638 * v71 - 11700 * v72 + 0x2000) >> 14);
        v75 = v69 + ((29032 * v71 + 0x2000) >> 14);
        if (v73 >= 255)
        {
          v76 = 255;
        }

        else
        {
          v76 = v73;
        }

        v77 = v76 & ~(v76 >> 31);
        if (v74 >= 255)
        {
          v74 = 255;
        }

        v78 = v74 & ~(v74 >> 31);
        if (v75 >= 255)
        {
          v75 = 255;
        }

        v79 = v75 & ~(v75 >> 31);
        if (a4)
        {
          v80 = v77;
        }

        else
        {
          v80 = -1;
        }

        if (a4)
        {
          v81 = v78;
        }

        else
        {
          v81 = v77;
        }

        if (a4)
        {
          v82 = v79;
        }

        else
        {
          v82 = v78;
        }

        if (a4)
        {
          v83 = -1;
        }

        else
        {
          v83 = v79;
        }

        if (a4 == 2)
        {
          v80 = v79;
          v81 = v78;
          v82 = v77;
          v83 = -1;
        }

        if (a4 == 3)
        {
          v80 = -1;
        }

        else
        {
          LOBYTE(v79) = v81;
          LOBYTE(v78) = v82;
        }

        *v70 = v80;
        v70[1] = v79;
        if (a4 == 3)
        {
          v84 = v77;
        }

        else
        {
          v84 = v83;
        }

        v70[2] = v78;
        v70[3] = v84;
      }

      v8 = *(a2 + 16);
      v10 = &v88[v8 * (v9++ & 1)];
      v12 = &v86[*(result + 4)];
      v11 = &v87[*(a3 + 16)];
      if (v9 >= *(a3 + 12))
      {
        return result;
      }
    }

    v85 = v9;
    v19 = 0;
    v20 = v11;
    v21 = v14[1];
    v22 = *v14;
    v23 = v10[1];
    v24 = *v10;
    while (1)
    {
      v25 = *v12;
      v26 = (9 * v16 + v21 + 3 * (v18 + v23) + 8) >> 4;
      v27 = ((9 * v15 + v22 + 3 * (v17 + v24) + 8) >> 4) - 128;
      v28 = v26 - 128;
      v29 = v25 + ((-11700 * v28 - 5638 * v27 + 0x2000) >> 14);
      v30 = v25 + ((29032 * v27 + 0x2000) >> 14);
      v31 = -1;
      if (v25 + ((22970 * v28 + 0x2000) >> 14) >= 255)
      {
        v32 = 255;
      }

      else
      {
        v32 = v25 + ((22970 * v28 + 0x2000) >> 14);
      }

      v33 = v32 & ~(v32 >> 31);
      if (v29 >= 255)
      {
        v34 = 255;
      }

      else
      {
        v34 = v29;
      }

      v35 = v34 & ~(v34 >> 31);
      if (v30 >= 255)
      {
        v36 = 255;
      }

      else
      {
        v36 = v30;
      }

      v37 = v36 & ~(v36 >> 31);
      if (a4 == 3)
      {
        v38 = v35;
        v31 = v33;
        LOBYTE(v33) = -1;
        LOBYTE(v35) = v37;
      }

      else
      {
        if (a4 != 2)
        {
          if (!a4)
          {
            v31 = v37;
            LOBYTE(v37) = v35;
            LOBYTE(v35) = v33;
            LOBYTE(v33) = -1;
          }

          goto LABEL_42;
        }

        v38 = v33;
        LOBYTE(v33) = v37;
      }

      LOBYTE(v37) = v38;
LABEL_42:
      *v20 = v33;
      v20[1] = v35;
      v20[2] = v37;
      v20[3] = v31;
      v39 = v12[1];
      v24 = *v10;
      v23 = v10[1];
      v15 = v10[2];
      v16 = v10[3];
      v22 = *v14;
      v21 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      v40 = &v20[*(a3 + 28)];
      v41 = ((9 * v24 + v17 + 3 * (v22 + v15) + 8) >> 4) - 128;
      v42 = ((9 * v23 + v18 + 3 * (v21 + v16) + 8) >> 4) - 128;
      v43 = v39 + ((22970 * v42 + 0x2000) >> 14);
      v44 = v39 + ((-11700 * v42 - 5638 * v41 + 0x2000) >> 14);
      v45 = v39 + ((29032 * v41 + 0x2000) >> 14);
      if (v43 >= 255)
      {
        v43 = 255;
      }

      v46 = v43 & ~(v43 >> 31);
      if (v44 >= 255)
      {
        v44 = 255;
      }

      v47 = v44 & ~(v44 >> 31);
      if (v45 >= 255)
      {
        v45 = 255;
      }

      v48 = v45 & ~(v45 >> 31);
      if (a4)
      {
        v49 = v46;
      }

      else
      {
        v49 = -1;
      }

      if (a4)
      {
        v50 = v47;
      }

      else
      {
        v50 = v46;
      }

      if (a4)
      {
        v51 = v48;
      }

      else
      {
        v51 = v47;
      }

      if (a4)
      {
        v52 = -1;
      }

      else
      {
        v52 = v48;
      }

      if (a4 == 2)
      {
        v49 = v48;
        v50 = v47;
        v51 = v46;
        v52 = -1;
      }

      if (a4 == 3)
      {
        v49 = -1;
        v50 = v48;
        v53 = v47;
      }

      else
      {
        v53 = v51;
      }

      if (a4 != 3)
      {
        LOBYTE(v46) = v52;
      }

      *v40 = v49;
      v40[1] = v50;
      v40[2] = v53;
      v40[3] = v46;
      v54 = *(a2 + 28);
      v10 += v54;
      v14 += v54;
      v19 += 2;
      v12 += 2;
      v20 += 2 * *(a3 + 28);
      if (v19 >= *(result + 2) - 2)
      {
        v9 = v85;
        goto LABEL_70;
      }
    }
  }

  return result;
}

_DWORD *ConvertREDEYEFORMATtoYCbCr(_DWORD *result, uint64_t *a2, uint64_t *a3, int a4)
{
  v75 = result;
  v4 = result[3];
  if (v4 < 1)
  {
    return result;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = *a3;
  v19 = *a2;
  v74 = *(a3 + 7);
  v57 = *(a3 + 4);
  v20 = result[7];
  v65 = v20 + 3;
  v21 = result[4];
  v72 = v20 + 2;
  v22 = *(a2 + 7);
  v63 = v20 + v21 + 3;
  v23 = *(a2 + 4);
  v71 = v20 + v21 + 2;
  v70 = v20 + v21 + 1;
  v62 = v20 + v21;
  v56 = 2 * v23;
  v24 = (v18 + 1);
  v25 = *v75;
  v26 = v19 + v22;
  v27 = v19 + v23;
  v28 = v19 + v22 + v23;
  v69 = v20 + 1;
  v61 = v21 + 3;
  v68 = v21 + 2;
  v66 = v75[7];
  v67 = v21 + 1;
  v73 = 2 * v20;
  v29 = v24;
  v64 = v75[4];
  v55 = 2 * v21;
  v30 = v75[2];
  do
  {
    if (v30 < 1)
    {
      goto LABEL_21;
    }

    v60 = v17;
    v31 = v29;
    v32 = 0;
    v33 = 0;
    v58 = v31;
    v59 = v25;
    v34 = v25;
    do
    {
      if (a4 > 1)
      {
        if (a4 == 2)
        {
          v46 = v34 + 2;
          v35 = v34 + 1;
          v36 = v34;
          v44 = v71;
          v37 = v72;
          v43 = v68;
          v39 = v69;
          v41 = v66;
          v38 = v67;
          v40 = v64;
          v45 = v70;
          v42 = v62;
        }

        else
        {
          if (a4 != 3)
          {
            goto LABEL_15;
          }

          v46 = v34 + 3;
          v35 = v34 + 2;
          v36 = v34 + 1;
          v37 = v65;
          v45 = v71;
          v39 = v72;
          v38 = v68;
          v41 = v69;
          v43 = v61;
          v40 = v67;
          v44 = v63;
          v42 = v70;
        }
      }

      else if (a4)
      {
        if (a4 != 1)
        {
          goto LABEL_15;
        }

        v35 = v34 + 1;
        v36 = v34 + 2;
        v37 = v66;
        v38 = v67;
        v40 = v68;
        v39 = v69;
        v42 = v71;
        v41 = v72;
        v43 = v64;
        v44 = v62;
        v45 = v70;
        v46 = v34;
      }

      else
      {
        v46 = v34 + 1;
        v35 = v34 + 2;
        v36 = v34 + 3;
        v38 = v68;
        v37 = v69;
        v45 = v71;
        v39 = v72;
        v41 = v65;
        v43 = v67;
        v40 = v61;
        v44 = v70;
        v42 = v63;
      }

      v15 = *v35;
      v16 = *v46;
      v14 = *v36;
      v13 = v34[v37];
      v12 = v34[v39];
      v11 = v34[v41];
      v10 = v34[v43];
      v9 = v34[v38];
      v8 = v34[v40];
      v7 = v34[v44];
      v6 = v34[v45];
      v5 = v34[v42];
LABEL_15:
      v47 = (v16 + v13 + v10 + v7 + 2) >> 2;
      v48 = (v15 + v12 + v9 + v6 + 2) >> 2;
      v49 = -5427 * v48 - 2765 * v47;
      v50 = -6860 * v48 + (v47 << 13);
      v51 = (v14 + v11 + v8 + v5 + 2) >> 2;
      v52 = v50 - 1332 * v51;
      *(v19 + v32) = (9617 * v15 + 4899 * v16 + 1868 * v14 + 0x2000) >> 14;
      *(v26 + v32) = (9617 * v12 + 4899 * v13 + 1868 * v11 + 0x2000) >> 14;
      *(v27 + v32) = (9617 * v9 + 4899 * v10 + 1868 * v8 + 0x2000) >> 14;
      *(v28 + v32) = (9617 * v6 + 4899 * v7 + 1868 * v5 + 0x2000) >> 14;
      v53 = (v49 + (v51 << 13) + 0x2000) >> 14;
      if (v53 >= 127)
      {
        LOBYTE(v53) = 127;
      }

      *(v31 - 1) = v53 ^ 0x80;
      v54 = (v52 + 0x2000) >> 14;
      if (v54 >= 127)
      {
        LOBYTE(v54) = 127;
      }

      *v31 = v54 ^ 0x80;
      v33 += 2;
      v34 += v73;
      v30 = v75[2];
      v31 += v74;
      v32 += 2 * v22;
    }

    while (v33 < v30);
    v4 = v75[3];
    v17 = v60;
    v29 = v58;
    v25 = v59;
LABEL_21:
    v17 += 2;
    v25 += v55;
    v19 += v56;
    result = v57;
    v29 = v57 + v29;
    v26 += v56;
    v27 += v56;
    v28 += v56;
  }

  while (v17 < v4);
  return result;
}

unsigned __int8 **ConvertRedChannel2toY(unsigned __int8 **result, unsigned __int8 **a2, uint64_t a3)
{
  v4 = *(result + 2);
  v5 = *(a2 + 2);
  if (v4 != 2 * v5)
  {
    v7 = "ConvertRedChannel2toY: widths do not match";

    return puts(v7);
  }

  v6 = *(result + 3);
  if (v6 != 2 * *(a2 + 3))
  {
    v7 = "ConvertRedChannel2toY: heights do not match";

    return puts(v7);
  }

  if (*(result + 4) < *(result + 7) * v4)
  {
    v7 = "ConvertRedChannel2toY: rowSamples is too small for Y bitmap";

    return puts(v7);
  }

  v8 = *(a2 + 4);
  if (v8 < *(a2 + 7) * v5)
  {
    v7 = "ConvertRedChannel2toY: rowSamples is too small for CbCr bitmap";

    return puts(v7);
  }

  if (*(a3 + 16) < *(a3 + 28) * *(a3 + 8))
  {
    v7 = "ConvertRedChannel2toY: rowSamples is too small for ARGB bitmap";

    return puts(v7);
  }

  if (v6 >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = *a3;
    v12 = *result;
    do
    {
      v13 = v9 & 1;
      if ((v9 & 1) == 0)
      {
        v8 = -v8;
      }

      if (v9 == ((v9 << 31 >> 31) & (v6 - 1)))
      {
        v8 = 0;
      }

      v14 = &v10[v8];
      v15 = *v10;
      v16 = v10[1];
      v17 = *v14;
      v18 = v14[1];
      if (*(result + 2) < 3)
      {
        v26 = *v10;
        v25 = v10[1];
        v24 = *v14;
        v23 = v14[1];
        v22 = v12;
        v21 = v11;
        v20 = v10;
      }

      else
      {
        v19 = 0;
        v20 = v10;
        v66 = v11;
        v21 = v11;
        v22 = v12;
        v23 = v14[1];
        v24 = *v14;
        v25 = v10[1];
        v26 = *v10;
        do
        {
          v27 = *v22;
          v28 = (9 * v16 + v23 + 3 * (v18 + v25) + 8) >> 4;
          v29 = ((9 * v15 + v24 + 3 * (v17 + v26) + 8) >> 4) - 128;
          v28 -= 128;
          v30 = v27 + ((22970 * v28 + 0x2000) >> 14);
          v31 = v27 + ((-11700 * v28 - 5638 * v29 + 0x2000) >> 14);
          v32 = v27 + ((29032 * v29 + 0x2000) >> 14);
          if (v30 >= 255)
          {
            v30 = 255;
          }

          v33 = v30 & ~(v30 >> 31);
          if (v31 >= 255)
          {
            v31 = 255;
          }

          v34 = v31 & ~(v31 >> 31);
          if (v32 >= 255)
          {
            v32 = 255;
          }

          v35 = v33 - (((v32 & ~(v32 >> 31)) + v34 + 1) >> 1);
          *v21 = v35 & ~(v35 >> 31);
          v36 = v22[1];
          v26 = *v20;
          v25 = v20[1];
          v15 = v20[2];
          v16 = v20[3];
          v24 = *v14;
          v23 = v14[1];
          v17 = v14[2];
          v18 = v14[3];
          v37 = ((9 * v26 + v17 + 3 * (v24 + v15) + 8) >> 4) - 128;
          v38 = ((9 * v25 + v18 + 3 * (v23 + v16) + 8) >> 4) - 128;
          v39 = v36 + ((22970 * v38 + 0x2000) >> 14);
          v40 = v36 + ((-11700 * v38 - 5638 * v37 + 0x2000) >> 14);
          v41 = v36 + ((29032 * v37 + 0x2000) >> 14);
          if (v39 >= 255)
          {
            v42 = 255;
          }

          else
          {
            v42 = v39;
          }

          v43 = v42 & ~(v42 >> 31);
          if (v40 >= 255)
          {
            v40 = 255;
          }

          v44 = v40 & ~(v40 >> 31);
          if (v41 >= 255)
          {
            v41 = 255;
          }

          v21[1] = (v43 - (((v41 & ~(v41 >> 31)) + v44 + 1) >> 1)) & ~((v43 - (((v41 & ~(v41 >> 31)) + v44 + 1) >> 1)) >> 31);
          v45 = *(a2 + 7);
          v20 += v45;
          v14 += v45;
          v19 += 2;
          v22 += 2;
          v21 += 2 * *(a3 + 28);
        }

        while (v19 < *(result + 2) - 2);
        v11 = v66;
        v13 = v9 & 1;
      }

      v46 = *v22;
      v47 = ((9 * v15 + v24 + 3 * (v17 + v26) + 8) >> 4) - 128;
      v48 = ((9 * v16 + v23 + 3 * (v18 + v25) + 8) >> 4) - 128;
      v49 = v46 + ((22970 * v48 + 0x2000) >> 14);
      v50 = v46 + ((-11700 * v48 - 5638 * v47 + 0x2000) >> 14);
      v51 = v46 + ((29032 * v47 + 0x2000) >> 14);
      if (v49 >= 255)
      {
        v52 = 255;
      }

      else
      {
        v52 = v49;
      }

      v53 = v52 & ~(v52 >> 31);
      if (v50 >= 255)
      {
        v50 = 255;
      }

      v54 = v50 & ~(v50 >> 31);
      if (v51 >= 255)
      {
        v51 = 255;
      }

      v55 = v53 - (((v51 & ~(v51 >> 31)) + v54 + 1) >> 1);
      *v21 = v55 & ~(v55 >> 31);
      v56 = v22[1];
      v57 = ((9 * *v20 + *v14 + 3 * (*v14 + *v20) + 8) >> 4) - 128;
      v58 = ((9 * v20[1] + v14[1] + 3 * (v14[1] + v20[1]) + 8) >> 4) - 128;
      v59 = v56 + ((22970 * v58 + 0x2000) >> 14);
      v60 = v56 + ((-11700 * v58 - 5638 * v57 + 0x2000) >> 14);
      v61 = v56 + ((29032 * v57 + 0x2000) >> 14);
      if (v59 >= 255)
      {
        v62 = 255;
      }

      else
      {
        v62 = v59;
      }

      v63 = v62 & ~(v62 >> 31);
      if (v60 >= 255)
      {
        v60 = 255;
      }

      v64 = v60 & ~(v60 >> 31);
      if (v61 >= 255)
      {
        v61 = 255;
      }

      v65 = v63 - (((v61 & ~(v61 >> 31)) + v64 + 1) >> 1);
      v21[1] = v65 & ~(v65 >> 31);
      v8 = *(a2 + 4);
      v10 += v8 * v13;
      ++v9;
      v6 = *(result + 3);
      v12 += *(result + 4);
      v11 += *(a3 + 16);
    }

    while (v9 < v6);
  }

  return result;
}

unsigned __int8 **ConvertRedChannel5toY(unsigned __int8 **result, unsigned __int8 **a2, uint64_t a3)
{
  v4 = *(result + 2);
  v5 = *(a2 + 2);
  if (v4 != 2 * v5)
  {
    v7 = "ConvertRedChannel5toY: widths do not match";

    return puts(v7);
  }

  v6 = *(result + 3);
  if (v6 != 2 * *(a2 + 3))
  {
    v7 = "ConvertRedChannel5toY: heights do not match";

    return puts(v7);
  }

  if (*(result + 4) < *(result + 7) * v4)
  {
    v7 = "ConvertRedChannel5toY: rowSamples is too small for Y bitmap";

    return puts(v7);
  }

  v8 = *(a2 + 4);
  if (v8 < *(a2 + 7) * v5)
  {
    v7 = "ConvertRedChannel5toY: rowSamples is too small for CbCr bitmap";

    return puts(v7);
  }

  if (*(a3 + 16) < *(a3 + 28) * *(a3 + 8))
  {
    v7 = "ConvertRedChannel5toY: rowSamples is too small for ARGB bitmap";

    return puts(v7);
  }

  if (v6 >= 1)
  {
    v9 = 0;
    v10 = *a2;
    v11 = *a3;
    v12 = *result;
    do
    {
      if ((v9 & 1) == 0)
      {
        v8 = -v8;
      }

      if (v9 == ((v9 << 31 >> 31) & (v6 - 1)))
      {
        v8 = 0;
      }

      v13 = &v10[v8];
      v14 = *v10;
      v15 = v10[1];
      v16 = *v13;
      v17 = v13[1];
      if (*(result + 2) < 3)
      {
        v24 = *v10;
        v23 = v10[1];
        v22 = *v13;
        v21 = v13[1];
        v37 = v12;
        v20 = v11;
        v19 = v10;
      }

      else
      {
        v18 = 0;
        v19 = v10;
        v53 = v12;
        v54 = v11;
        v20 = v11;
        v21 = v13[1];
        v22 = *v13;
        v23 = v10[1];
        v24 = *v10;
        do
        {
          v25 = *v12;
          v26 = ((9 * v15 + v21 + 3 * (v17 + v23) + 8) >> 4) - 128;
          v27 = v25 + ((22970 * v26 + 0x2000) >> 14);
          v28 = v25 + ((-5638 * ((9 * v14 + v22 + 3 * (v16 + v24) + 8) >> 4) + 729856 - 11700 * v26) >> 14);
          if (v27 >= 255)
          {
            v27 = 255;
          }

          v29 = v27 & ~(v27 >> 31);
          if (v28 >= 255)
          {
            v28 = 255;
          }

          v30 = v29 - ((v28 & ~(v28 >> 31)) + ((v29 * (v28 & ~(v28 >> 31)) + 128) >> 8));
          *v20 = v30 & ~(v30 >> 31);
          v31 = v12[1];
          v24 = *v19;
          v23 = v19[1];
          v14 = v19[2];
          v15 = v19[3];
          v22 = *v13;
          v21 = v13[1];
          v16 = v13[2];
          v17 = v13[3];
          v32 = ((9 * v23 + v17 + 3 * (v21 + v15) + 8) >> 4) - 128;
          v33 = v31 + ((-5638 * ((9 * v24 + v16 + 3 * (v22 + v14) + 8) >> 4) + 729856 - 11700 * v32) >> 14);
          if (v31 + ((22970 * v32 + 0x2000) >> 14) >= 255)
          {
            v34 = 255;
          }

          else
          {
            v34 = v31 + ((22970 * v32 + 0x2000) >> 14);
          }

          v35 = v34 & ~(v34 >> 31);
          if (v33 >= 255)
          {
            v33 = 255;
          }

          v20[1] = (v35 - ((v33 & ~(v33 >> 31)) + ((v35 * (v33 & ~(v33 >> 31)) + 128) >> 8))) & ~((v35 - ((v33 & ~(v33 >> 31)) + ((v35 * (v33 & ~(v33 >> 31)) + 128) >> 8))) >> 31);
          v36 = *(a2 + 7);
          v19 += v36;
          v13 += v36;
          v18 += 2;
          v12 += 2;
          v20 += 2 * *(a3 + 28);
        }

        while (v18 < *(result + 2) - 2);
        v37 = v53;
        v11 = v54;
      }

      v38 = *v12;
      v39 = ((9 * v15 + v21 + 3 * (v17 + v23) + 8) >> 4) - 128;
      v40 = v38 + ((22970 * v39 + 0x2000) >> 14);
      v41 = v38 + ((-5638 * ((9 * v14 + v22 + 3 * (v16 + v24) + 8) >> 4) + 729856 - 11700 * v39) >> 14);
      if (v40 >= 255)
      {
        v42 = 255;
      }

      else
      {
        v42 = v40;
      }

      v43 = v42 & ~(v42 >> 31);
      if (v41 >= 255)
      {
        v41 = 255;
      }

      v44 = v43 - ((v41 & ~(v41 >> 31)) + ((v43 * (v41 & ~(v41 >> 31)) + 128) >> 8));
      *v20 = v44 & ~(v44 >> 31);
      v45 = v12[1];
      v46 = (9 * *v19 + *v13 + 3 * (*v13 + *v19) + 8) >> 4;
      v47 = ((9 * v19[1] + v13[1] + 3 * (v13[1] + v19[1]) + 8) >> 4) - 128;
      v48 = v45 + ((22970 * v47 + 0x2000) >> 14);
      v49 = v45 + ((-5638 * v46 + 729856 - 11700 * v47) >> 14);
      if (v48 >= 255)
      {
        v50 = 255;
      }

      else
      {
        v50 = v48;
      }

      v51 = v50 & ~(v50 >> 31);
      if (v49 >= 255)
      {
        v49 = 255;
      }

      v52 = v51 - ((v49 & ~(v49 >> 31)) + ((v51 * (v49 & ~(v49 >> 31)) + 128) >> 8));
      v20[1] = v52 & ~(v52 >> 31);
      v8 = *(a2 + 4);
      v10 += v8 * (v9++ & 1);
      v6 = *(result + 3);
      v12 = &v37[*(result + 4)];
      v11 += *(a3 + 16);
    }

    while (v9 < v6);
  }

  return result;
}

void CI::Perspective::EDLinesCPU::EDLinesCPU(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v6 = &CI::Perspective::EDLinesParamsDefault;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  if (a6)
  {
    v6 = a6;
  }

  *a1 = &unk_1F1033038;
  *(a1 + 8) = v6;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = a4;
  *(a1 + 40) = a5;
  CI::Perspective::EDLinesCPU::createGradMap(a1);
}

void sub_19CE06A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v2[17];
  if (v6)
  {
    v2[18] = v6;
    operator delete(v6);
  }

  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](va);
  v7 = *v4;
  if (*v4)
  {
    v2[12] = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    v2[8] = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void CI::Perspective::EDLinesCPU::sparseAnchors(CI::Perspective::EDLinesCPU *this)
{
  v2 = *(this + 1);
  v3 = *v2;
  v4 = v2[1];
  std::vector<CI::KernelArgumentType>::reserve(this + 7, (*(*(this + 6) + 8) / v3 * (**(this + 6) / v3)) >> 1);
  v5 = *(this + 6);
  if ((v5[1] - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    v6 = 0;
    v7 = *v5;
    v8 = 1;
    v9 = 2;
    while (1)
    {
      v10 = v9;
      v11 = v6;
      v12 = v8;
      if ((v7 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        break;
      }

LABEL_23:
      v8 = v12 + v3;
      v9 = v10 + v3;
      v6 = v11 + v3;
      if (v5[1] - 1 <= (v12 + v3))
      {
        goto LABEL_26;
      }
    }

    v13 = 8;
    v14 = 1;
    while (1)
    {
      v16 = v5[2];
      v15 = v5[3];
      v17 = v15 + v12 * v16;
      v18 = *(v17 + 4 * v14);
      v19 = -v18;
      if (v18 >= 0.0)
      {
        v19 = *(v17 + 4 * v14);
      }

      if (v19 < 0.001)
      {
        goto LABEL_8;
      }

      if (v18 <= 0.0)
      {
        v22 = *(v17 + v13 - 8);
        if (v22 < 0.0)
        {
          v22 = -v22;
        }

        if ((v19 - v22) < v4)
        {
          goto LABEL_8;
        }

        v21 = *(v17 + v13);
      }

      else
      {
        v20 = *(v15 + v11 * v16 + 4 * v14);
        if (v20 < 0.0)
        {
          v20 = -v20;
        }

        if ((v19 - v20) < v4)
        {
          goto LABEL_8;
        }

        v21 = *(v15 + v10 * v16 + 4 * v14);
      }

      if (v21 < 0.0)
      {
        v21 = -v21;
      }

      if ((v19 - v21) >= v4)
      {
        v38 = v14 | (v12 << 16);
        std::vector<EDAnchor>::push_back[abi:nn200100](this + 56, &v38);
        v5 = *(this + 6);
        v7 = *v5;
      }

LABEL_8:
      ++v14;
      v13 += 4;
      if (v7 - 1 <= v14)
      {
        goto LABEL_23;
      }
    }
  }

  v7 = *v5;
LABEL_26:
  if ((v7 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_49;
  }

  v23 = 1;
  v24 = 1;
  do
  {
    if ((v5[1] - 3) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_48;
    }

    v25 = 0;
    v26 = v24 | 0x10000;
    do
    {
      v28 = v5[2];
      v27 = v5[3];
      v29 = (v27 + v28 + v28 * v25 + 4 * v23);
      v30 = -*v29;
      if (*v29 >= 0.0)
      {
        v30 = *v29;
      }

      if (v30 >= 0.001)
      {
        if (*v29 <= 0.0)
        {
          v34 = *(v29 - 1);
          if (v34 < 0.0)
          {
            v34 = -v34;
          }

          if ((v30 - v34) >= v4)
          {
            v33 = v29[1];
            goto LABEL_44;
          }
        }

        else
        {
          v32 = *(v27 + v28 * v25 + 4 * v23);
          if (v32 < 0.0)
          {
            v32 = -v32;
          }

          if ((v30 - v32) >= v4)
          {
            v33 = *(v27 + v28 * (v25 + 2) + 4 * v23);
LABEL_44:
            if (v33 < 0.0)
            {
              v33 = -v33;
            }

            if ((v30 - v33) >= v4)
            {
              v37 = v26;
              std::vector<EDAnchor>::push_back[abi:nn200100](this + 56, &v37);
              v5 = *(this + 6);
            }
          }
        }
      }

      v31 = v25 + 2;
      ++v25;
      v26 += 0x10000;
    }

    while (v5[1] - 1 > v31);
    v7 = *v5;
LABEL_48:
    v24 += v3;
    v23 = v24;
  }

  while (v7 - 1 > v24);
LABEL_49:
  if (EDLines_Debug(void)::token != -1)
  {
    CI::Perspective::EDLinesCPU::sparseAnchors();
  }

  if (EDLines_Debug(void)::v)
  {
    v35 = (*(*this + 24))(this);
    CI::Perspective::CIImageToFile(v35, @"/tmp/ED_anchors.png", v36, *MEMORY[0x1E695F050]);
  }
}

void sub_19CE07470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void CI::Perspective::EDLinesCPU::extractLines(CI::Perspective::EDLinesCPU *this)
{
  v2 = *(this + 1);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v65 = (this + 112);
  std::vector<std::vector<CI::Perspective::LSR<EDAnchor>>>::reserve(this + 14, (*(this + 12) - *(this + 11)) >> 4);
  v6 = *(this + 11);
  for (i = *(this + 12); v6 != i; v6 += 16)
  {
    v7 = *(this + 15);
    v8 = *(this + 16);
    if (v7 >= v8)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v65) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v65) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      *&v70 = v65;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<IRect>>>(v65, v13);
      }

      v14 = 24 * v10;
      v9 = 24 * v10 + 24;
      *v14 = 0;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      v15 = *(this + 14);
      v16 = *(this + 15) - v15;
      v17 = v14 - v16;
      memcpy((v14 - v16), v15, v16);
      v18 = *(this + 14);
      *(this + 14) = v17;
      *(this + 15) = v9;
      v19 = *(this + 16);
      *(this + 16) = 0;
      *&v69 = v18;
      *(&v69 + 1) = v19;
      __p[0] = v18;
      __p[1] = v18;
      std::__split_buffer<std::vector<CI::Perspective::LSR<EDAnchor>>>::~__split_buffer(__p);
    }

    else
    {
      v9 = (v7 + 3);
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    *(this + 15) = v9;
    if (v3 < *(v6 + 8))
    {
      v20 = 0;
      v21 = (v9 - 24);
      do
      {
        CI::Perspective::LSRInit<EDAnchor>((*v6 + 4 * v20), v3, __p, v5);
        v20 += v3;
        v24 = *(v6 + 8);
        v25 = *(&v73 + 1);
        if (v20 < v24 && *(&v73 + 1) <= v4)
        {
          v27 = __p[1];
          v28 = *(&v69 + 1);
          LODWORD(v29) = v69;
          v30 = *(&v69 + 3);
          v31 = *(&v69 + 2);
          v32 = *(&v70 + 1);
          LODWORD(v33) = v70;
          v34 = *(&v70 + 3);
          v35 = *(&v70 + 2);
          v36 = *&v71;
          v37 = __p[0] + 4 * __p[1] + 2;
          do
          {
            LOWORD(v22) = *(v37 - 1);
            v38 = LODWORD(v22);
            LOWORD(v23) = *v37;
            v23 = LODWORD(v23);
            v29 = v29 + v38;
            v28 = v28 + v23;
            v31 = v31 + (v38 * v38);
            v30 = v30 + (v23 * v23);
            v33 = v33 + (v38 * v23);
            if (v32 >= v38)
            {
              v32 = v38;
            }

            if (v35 <= v38)
            {
              v35 = v38;
            }

            if (v34 >= v23)
            {
              v34 = v23;
            }

            if (v36 <= v23)
            {
              v36 = v23;
            }

            v39 = v25 * v27;
            v40 = v39 + ((((*&v73 + (*(&v72 + 3) * v23)) / *(&v72 + 2)) + v38) * (((*&v73 + (*(&v72 + 3) * v23)) / *(&v72 + 2)) + v38));
            v41 = v39 + ((((*&v73 + (*(&v72 + 2) * v38)) / *(&v72 + 3)) + v23) * (((*&v73 + (*(&v72 + 2) * v38)) / *(&v72 + 3)) + v23));
            if ((v35 - v32) <= (v36 - v34))
            {
              v41 = v40;
            }

            v22 = ++v27;
            v25 = v41 / v27;
            if (++v20 >= v24)
            {
              break;
            }

            v37 += 2;
          }

          while (v25 <= v4);
          __p[1] = v27;
          *&v69 = __PAIR64__(LODWORD(v28), LODWORD(v29));
          *(&v69 + 1) = __PAIR64__(LODWORD(v30), LODWORD(v31));
          *&v70 = __PAIR64__(LODWORD(v32), LODWORD(v33));
          *(&v70 + 1) = __PAIR64__(LODWORD(v34), LODWORD(v35));
          *&v71 = v36;
        }

        *(&v73 + 1) = v25;
        CI::Perspective::LSRUpdateFit<EDAnchor>(__p);
        v42 = *(v9 - 16);
        v43 = *(v9 - 8);
        if (v42 >= v43)
        {
          v45 = 0x2E8BA2E8BA2E8BA3 * ((v42 - *v21) >> 3);
          v46 = v45 + 1;
          if ((v45 + 1) > 0x2E8BA2E8BA2E8BALL)
          {
            std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
          }

          v47 = 0x2E8BA2E8BA2E8BA3 * ((v43 - *v21) >> 3);
          if (2 * v47 > v46)
          {
            v46 = 2 * v47;
          }

          if (v47 >= 0x1745D1745D1745DLL)
          {
            v48 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v48 = v46;
          }

          if (v48)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::LSR<EDAnchor>>>(v9 - 24, v48);
          }

          v49 = 88 * v45;
          *(v49 + 32) = v70;
          *(v49 + 48) = v71;
          *(v49 + 64) = v72;
          *(v49 + 80) = v73;
          *v49 = *__p;
          *(v49 + 16) = v69;
          v44 = 88 * v45 + 88;
          v50 = *(v9 - 24);
          v51 = *(v9 - 16) - v50;
          v52 = 88 * v45 - v51;
          memcpy((v49 - v51), v50, v51);
          v53 = *(v9 - 24);
          *(v9 - 24) = v52;
          *(v9 - 16) = v44;
          *(v9 - 8) = 0;
          if (v53)
          {
            operator delete(v53);
          }
        }

        else
        {
          *(v42 + 32) = v70;
          *(v42 + 48) = v71;
          *(v42 + 64) = v72;
          *(v42 + 80) = v73;
          *v42 = *__p;
          *(v42 + 16) = v69;
          v44 = v42 + 88;
        }

        *(v9 - 16) = v44;
      }

      while (*(v6 + 8) - v20 > v3);
    }
  }

  if (EDLines_Debug(void)::token != -1)
  {
    CI::Perspective::EDLinesCPU::sparseAnchors();
  }

  if (EDLines_Debug(void)::v)
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v69 = 0;
    v54 = *(this + 14);
    v55 = *(this + 15);
    while (v54 != v55)
    {
      v56 = *v54;
      v57 = v54[1];
      while (v56 != v57)
      {
        v58 = *(*(this + 6) + 8);
        v59 = *(v56 + 56);
        v60 = *(v56 + 64);
        *(&v59 + 1) = v58 - *(&v59 + 1);
        *(&v60 + 1) = v58 - *(&v60 + 1);
        *&v67 = v59;
        *(&v67 + 1) = v60;
        std::vector<CI::Perspective::Line>::push_back[abi:nn200100](__p, &v67);
        v56 += 88;
      }

      v54 += 3;
    }

    v61 = (*(*this + 32))(this);
    v62 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
    v63 = CI::Perspective::plotLines<CI::Perspective::Line>(v61, v62, __p);
    CI::Perspective::CIImageToFile(v63, @"/tmp/ED_linesExtracted.png", v64, *MEMORY[0x1E695F050]);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_19CE079D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CI::Perspective::EDLinesCPU::mergeLines(CI::Perspective::EDLinesCPU *this, double a2, double a3, double a4, double a5, double a6, int32x4_t a7)
{
  v8 = *(this + 6);
  v10 = *v8;
  v9 = v8[1];
  if (v10 > v9)
  {
    v9 = v10;
  }

  v11 = *(this + 14);
  v12 = *(this + 15);
  if (v11 != v12)
  {
    v13 = *(this + 1);
    v14 = v13[7];
    v15 = v13[8];
    v16 = v13[9] * v9;
    while (1)
    {
      v17 = *v11;
      v18 = v11[1];
      v19 = 0x2E8BA2E8BA2E8BA3 * (v18 - *v11);
      if (v19 < 2)
      {
        v21 = v17[7];
        v22 = v17[8];
        v20 = v17 + 7;
        v23 = vsub_f32(v21, v22);
        if (sqrtf(vaddv_f32(vmul_f32(v23, v23))) > v16)
        {
          std::vector<CI::Perspective::Line>::push_back[abi:nn200100](this + 136, v20);
        }

        goto LABEL_26;
      }

      if (v18 != v17)
      {
        break;
      }

LABEL_26:
      v11 += 3;
      if (v11 == v12)
      {
        goto LABEL_27;
      }
    }

    v24 = 0;
    while (1)
    {
      v25 = &v17[11 * v24];
      v26 = v24 + 1;
      if (v24 + 1 >= v19)
      {
        break;
      }

      v27 = &v17[11 * v24 + 19];
      v28 = v25[1];
      while (1)
      {
        v29 = v27[-11];
        v30 = v27[-1];
        v31 = vsub_f32(v29, v30);
        if (sqrtf(vaddv_f32(vmul_f32(v31, v31))) > v15)
        {
          break;
        }

        v32 = vsub_f32(v29, v27[-12]);
        v33 = vmul_f32(v32, v32);
        v33.i32[0] = vadd_f32(v33, vdup_lane_s32(v33, 1)).u32[0];
        v34 = vrsqrte_f32(v33.u32[0]);
        v35 = vmul_f32(v34, vrsqrts_f32(v33.u32[0], vmul_f32(v34, v34)));
        v33.i32[0] = vmul_f32(v35, vrsqrts_f32(v33.u32[0], vmul_f32(v35, v35))).u32[0];
        v36 = vsub_f32(*v27, v30);
        v37 = vmul_f32(v36, v36);
        v37.i32[0] = vadd_f32(v37, vdup_lane_s32(v37, 1)).u32[0];
        v38 = vmul_n_f32(v32, *v33.i32);
        v39 = vrsqrte_f32(v37.u32[0]);
        v40 = vmul_f32(v39, vrsqrts_f32(v37.u32[0], vmul_f32(v39, v39)));
        v41 = vmul_n_f32(v36, vmul_f32(v40, vrsqrts_f32(v37.u32[0], vmul_f32(v40, v40))).f32[0]);
        v42 = (-v38.f32[1] * v41.f32[0]) + (v38.f32[0] * v41.f32[1]);
        v43 = -v42;
        if (v42 >= 0.0)
        {
          v43 = v42;
        }

        if (v43 > v14)
        {
          break;
        }

        v28 += *&v27[-7];
        ++v26;
        v27 += 11;
        if (v19 == v26)
        {
          v24 = v19;
          goto LABEL_20;
        }
      }

      v24 = v26;
LABEL_20:
      if (v28 <= *&v25[1])
      {
        goto LABEL_22;
      }

      CI::Perspective::LSRInit<EDAnchor>(*v25, v28, &__p, a7);
      v44 = v58;
LABEL_23:
      v59 = v44;
      v45 = vsub_f32(*&v44, *(&v44 + 8));
      if (sqrtf(vaddv_f32(vmul_f32(v45, v45))) > v16)
      {
        std::vector<CI::Perspective::Line>::push_back[abi:nn200100](this + 136, &v59);
      }

      v17 = *v11;
      v19 = 0x2E8BA2E8BA2E8BA3 * (v11[1] - *v11);
      if (v24 >= v19)
      {
        goto LABEL_26;
      }
    }

    ++v24;
LABEL_22:
    v44 = *v25[7].f32;
    goto LABEL_23;
  }

LABEL_27:
  if (EDLines_Debug(void)::token != -1)
  {
    CI::Perspective::EDLinesCPU::sparseAnchors();
  }

  if (EDLines_Debug(void)::v)
  {
    __p = 0;
    v56 = 0;
    v57 = 0;
    v46 = *(this + 17);
    v47 = *(this + 18);
    while (v46 != v47)
    {
      v48 = *(*(this + 6) + 8);
      v49 = *v46;
      v50 = v46[1];
      *(&v49 + 1) = v48 - COERCE_FLOAT(HIDWORD(*v46));
      *(&v50 + 1) = v48 - *(&v50 + 1);
      *&v59 = v49;
      *(&v59 + 1) = v50;
      std::vector<CI::Perspective::Line>::push_back[abi:nn200100](&__p, &v59);
      v46 += 2;
    }

    v51 = (*(*this + 32))(this);
    v52 = CGColorCreateSRGB(0.0, 1.0, 0.0, 1.0);
    v53 = CI::Perspective::plotLines<CI::Perspective::Line>(v51, v52, &__p);
    CI::Perspective::CIImageToFile(v53, @"/tmp/ED_linesMerged.png", v54, *MEMORY[0x1E695F050]);
    if (__p)
    {
      v56 = __p;
      operator delete(__p);
    }
  }
}

void sub_19CE07D44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CI::Perspective::EDLinesCPU::~EDLinesCPU(CI::Perspective::EDLinesCPU *this)
{
  *this = &unk_1F1033038;
  v2 = *(this + 11);
  v3 = *(this + 12);
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    free(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    free(*(v5 + 24));
    MEMORY[0x19EAF5590](v5, 0x1080C4019856BD9);
  }

  v6 = *(this + 10);
  if (v6)
  {
    free(*(v6 + 24));
    MEMORY[0x19EAF5590](v6, 0x1010C40313BCFEBLL);
  }

  v7 = *(this + 17);
  if (v7)
  {
    *(this + 18) = v7;
    operator delete(v7);
  }

  v10 = (this + 112);
  std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v10);
  v8 = *(this + 11);
  if (v8)
  {
    *(this + 12) = v8;
    operator delete(v8);
  }

  v9 = *(this + 7);
  if (v9)
  {
    *(this + 8) = v9;
    operator delete(v9);
  }
}

{
  CI::Perspective::EDLinesCPU::~EDLinesCPU(this);

  JUMPOUT(0x19EAF5590);
}

CIImage *CI::Perspective::EDLinesCPU::getAnchorsImage(CI::Perspective::EDLinesCPU *this)
{
  v2 = *(this + 6);
  v4 = *v2;
  v3 = v2[1];
  v13[0] = v4;
  v13[1] = v3;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 >> 3) + 1;
  }

  else
  {
    v5 = v4 >> 3;
  }

  v13[2] = v5;
  v6 = v5 * v3;
  v7 = malloc_type_malloc(v5 * v3, 0x100004077774924uLL);
  v14 = v7;
  bzero(v7, v6);
  v8 = *(this + 7);
  for (i = *(this + 8); v8 != i; v8 += 2)
  {
    v10 = &v7[v5 * v8[1]];
    v10[*v8 >> 3] |= 1 << (~*v8 & 7);
  }

  v11 = CI::Perspective::Bitmask::imageRepresentation(v13);
  free(v14);
  return v11;
}

CIImage *CI::Perspective::Bitmask::imageRepresentation(CI::Perspective::Bitmask *this)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v2 = (*this + 15) ^ 0xFFFFFFFFFFFFFFEFLL;
  v3 = [MEMORY[0x1E695DF88] dataWithLength:*(this + 1) * v2];
  v4 = [v3 mutableBytes];
  v5 = *(this + 1);
  if (v5)
  {
    v6 = 0;
    v7 = *this;
    do
    {
      if (v7)
      {
        v8 = 0;
        do
        {
          if ((*(*(this + 3) + *(this + 2) * v6 + (v8 >> 3)) >> (~v8 & 7)))
          {
            v9 = -1;
          }

          else
          {
            v9 = 0;
          }

          *(v4 + v8++) = v9;
          v7 = *this;
        }

        while (v8 < *this);
        v5 = *(this + 1);
      }

      ++v6;
      v4 += v2;
    }

    while (v6 < v5);
  }

  v10 = off_1EB009000;
  {
    v10 = off_1EB009000;
    if (v13)
    {
      CI::Perspective::Bitmask::imageRepresentation(void)const::linearGray = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1A0]);
      v10 = off_1EB009000;
    }
  }

  v11 = v10[344];
  v14[0] = @"CIImageColorSpace";
  v14[1] = @"CIImageFlipped";
  v15[0] = v11;
  v15[1] = MEMORY[0x1E695E118];
  return +[CIImage imageWithBitmapData:bytesPerRow:size:format:options:](CIImage, "imageWithBitmapData:bytesPerRow:size:format:options:", v3, v2, 259, [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2], *this, *(this + 1));
}

CIImage *CI::Perspective::EDLinesCPU::getEdgeDrawingImage(CI::Perspective::EDLinesCPU *this)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = *(this + 4);
  v4 = (4 * v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = malloc_type_malloc(v4 * v3, 0x100004052888210uLL);
  v6 = v5;
  if (v3)
  {
    if (v2 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v2;
    }

    v8 = 4 * v7;
    v9 = v3;
    v10 = v5;
    v11 = v2;
    do
    {
      if (v11)
      {
        memset_pattern16(v10, &unk_19CF2AB40, v8);
        v11 = v2;
      }

      v10 += v4;
      --v9;
    }

    while (v9);
  }

  v13 = *(this + 11);
  for (i = *(this + 12); v13 != i; v13 += 16)
  {
    v14 = arc4random();
    if ((v14 & 0xF80000) <= 0x770000)
    {
      v15 = -8978432;
    }

    else
    {
      v15 = v14 & 0xFF0000 | 0xFF000000;
    }

    if ((v14 & 0xF800) <= 0x7700)
    {
      v16 = 30464;
    }

    else
    {
      v16 = v14 & 0xFF00;
    }

    if ((v14 & 0xF8) <= 0x77)
    {
      v17 = 119;
    }

    else
    {
      v17 = v14;
    }

    if (*(v13 + 8))
    {
      v18 = 0;
      v19 = 0;
      v20 = v15 | v16 | v17;
      do
      {
        *&v6[4 * *(*v13 + v18) + v4 * *(*v13 + v18 + 2)] = v20;
        ++v19;
        v18 += 4;
      }

      while (v19 < *(v13 + 8));
    }
  }

  {
    CI::Perspective::EDLinesCPU::getEdgeDrawingImage(void)const::sRGB = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  }

  v21 = CI::Perspective::EDLinesCPU::getEdgeDrawingImage(void)const::sRGB;
  v22 = [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:v4 * v3];
  v25[0] = @"CIImageColorSpace";
  v25[1] = @"CIImageFlipped";
  v26[0] = v21;
  v26[1] = MEMORY[0x1E695E118];
  v23 = +[CIImage imageWithBitmapData:bytesPerRow:size:format:options:](CIImage, "imageWithBitmapData:bytesPerRow:size:format:options:", v22, v4, 264, [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2], v2, v3);
  free(v6);
  return v23;
}

void sub_19CE083C0(_Unwind_Exception *a1)
{
  free(v1);
  _Unwind_Resume(a1);
}

CIImage *CI::Perspective::Bitmap<float>::imageRepresentation(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DEF0] dataWithBytes:a1[3] length:a1[2] * a1[1]];
  v8[0] = @"CIImageColorSpace";
  v8[1] = @"CIImageFlipped";
  v9[0] = a3;
  v9[1] = MEMORY[0x1E695E118];
  return +[CIImage imageWithBitmapData:bytesPerRow:size:format:options:](CIImage, "imageWithBitmapData:bytesPerRow:size:format:options:", v6, a1[2], a2, [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2], *a1, a1[1]);
}

void std::vector<EDAnchor>::push_back[abi:nn200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 2;
    if ((v7 + 1) >> 62)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::NodeIndex>>(a1, v10);
    }

    v11 = (4 * v7);
    *v11 = *a2;
    v6 = 4 * v7 + 4;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::vector<EDChain>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<EDChain>>(result, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t CI::Perspective::EDLinesCPU::traceForeward(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = *(a1 + 48);
  v5 = *v4 - 2 < *a2 || v3 == 0;
  if (v5 || v4[1] - 2 < a2[1])
  {
    return 0;
  }

  v8 = v4 + 2;
  v7 = v4[2];
  v6 = v8[1];
  v9 = v6 + v7 * v3;
  v10 = *(v9 + 4 * v2);
  v11 = -v10;
  if (v10 >= 0.0)
  {
    v11 = *(v9 + 4 * v2);
  }

  if (v11 < *(*(a1 + 8) + 8))
  {
    return 0;
  }

  if (v10 <= 0.0)
  {
    v17 = v3 + 1;
    v21 = v6 + v7 * v17;
    v22 = *(v21 + 4 * v2);
    if (v22 >= 0.0)
    {
      v23 = *(v21 + 4 * v2);
    }

    else
    {
      v23 = -v22;
    }

    v24 = v2 - 1;
    v25 = *(v21 + 4 * (v2 - 1));
    if (v25 < 0.0)
    {
      v25 = -v25;
    }

    v12 = v2 + 1;
    v18 = *(v21 + 4 * v12);
    if (v18 < 0.0)
    {
      v18 = -v18;
    }

    if (v25 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v25;
    }

    if (v23 > v19)
    {
      v19 = v23;
    }

    if (v19 == v23)
    {
      goto LABEL_45;
    }

    if (v19 == v25)
    {
      *a2 = v24;
      goto LABEL_45;
    }

LABEL_43:
    if (v19 != v18)
    {
      return 1;
    }

    *a2 = v12;
LABEL_45:
    a2[1] = v17;
    return 1;
  }

  v12 = v2 + 1;
  v13 = *(v9 + 4 * v12);
  if (v13 >= 0.0)
  {
    v14 = *(v9 + 4 * v12);
  }

  else
  {
    v14 = -v13;
  }

  v15 = v3 - 1;
  v16 = *(v6 + v7 * (v3 - 1) + 4 * v12);
  if (v16 < 0.0)
  {
    v16 = -v16;
  }

  v17 = v3 + 1;
  v18 = *(v6 + v7 * v17 + 4 * v12);
  if (v18 < 0.0)
  {
    v18 = -v18;
  }

  if (v16 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  if (v14 > v19)
  {
    v19 = v14;
  }

  if (v19 != v14)
  {
    if (v19 == v16)
    {
      *a2 = v12;
      a2[1] = v15;
      return 1;
    }

    goto LABEL_43;
  }

  *a2 = v12;
  return 1;
}

uint64_t CI::Perspective::EDLinesCPU::traceBackward(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v3 = a2[1];
  v4 = *(a1 + 48);
  v5 = *v4 - 2 < *a2 || v3 == 0;
  if (v5 || v4[1] - 2 < a2[1])
  {
    return 0;
  }

  v8 = v4 + 2;
  v7 = v4[2];
  v6 = v8[1];
  v9 = v6 + v7 * v3;
  v10 = *(v9 + 4 * v2);
  v11 = -v10;
  if (v10 >= 0.0)
  {
    v11 = *(v9 + 4 * v2);
  }

  if (v11 < *(*(a1 + 8) + 8))
  {
    return 0;
  }

  if (v10 <= 0.0)
  {
    v17 = v3 - 1;
    v21 = v6 + v7 * v17;
    v22 = *(v21 + 4 * v2);
    if (v22 >= 0.0)
    {
      v23 = *(v21 + 4 * v2);
    }

    else
    {
      v23 = -v22;
    }

    v24 = v2 - 1;
    v25 = *(v21 + 4 * (v2 - 1));
    if (v25 < 0.0)
    {
      v25 = -v25;
    }

    v12 = v2 + 1;
    v18 = *(v21 + 4 * v12);
    if (v18 < 0.0)
    {
      v18 = -v18;
    }

    if (v25 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v25;
    }

    if (v23 > v19)
    {
      v19 = v23;
    }

    if (v19 == v23)
    {
      goto LABEL_45;
    }

    if (v19 == v25)
    {
      *a2 = v24;
      goto LABEL_45;
    }

LABEL_43:
    if (v19 != v18)
    {
      return 1;
    }

    *a2 = v12;
LABEL_45:
    a2[1] = v17;
    return 1;
  }

  v12 = v2 - 1;
  v13 = *(v9 + 4 * v12);
  if (v13 >= 0.0)
  {
    v14 = *(v9 + 4 * v12);
  }

  else
  {
    v14 = -v13;
  }

  v15 = v3 - 1;
  v16 = *(v6 + v7 * (v3 - 1) + 4 * v12);
  if (v16 < 0.0)
  {
    v16 = -v16;
  }

  v17 = v3 + 1;
  v18 = *(v6 + v7 * v17 + 4 * v12);
  if (v18 < 0.0)
  {
    v18 = -v18;
  }

  if (v16 <= v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = v16;
  }

  if (v14 > v19)
  {
    v19 = v14;
  }

  if (v19 != v14)
  {
    if (v19 == v16)
    {
      *a2 = v12;
      a2[1] = v15;
      return 1;
    }

    goto LABEL_43;
  }

  *a2 = v12;
  return 1;
}

void *std::vector<std::vector<CI::Perspective::LSR<EDAnchor>>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<IRect>>>(result, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

float CI::Perspective::LSRInit<EDAnchor>@<S0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, int32x4_t a4@<Q5>)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *a3 = a1;
  *(a3 + 8) = a2;
  v5 = xmmword_19CF2AB30;
  if (a2)
  {
    v6 = 0;
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      a4.i32[0] = *a1;
      a4.i32[1] = a1[1];
      *a4.i8 = vcvt_f32_u32(*a4.i8);
      v10 = vzip1q_s32(a4, a4);
      v9 = v9 + *a4.i32;
      v8 = v8 + *&a4.i32[1];
      v6 = vmla_f32(v6, *a4.i8, *a4.i8);
      v7 = v7 + (*a4.i32 * *&a4.i32[1]);
      a4 = vmovl_s16(vtrn2_s16(vrev32_s16(vmovn_s32(vcgtq_f32(v10, v5))), vmovn_s32(vcgtq_f32(v5, v10))));
      v5 = vbslq_s8(a4, v5, v10);
      a1 += 2;
      --a2;
    }

    while (a2);
    *(a3 + 20) = v8;
    *(a3 + 24) = v6;
    *(a3 + 32) = v7;
  }

  else
  {
    v9 = 0.0;
  }

  *(a3 + 16) = v9;
  *(a3 + 36) = v5;
  CI::Perspective::LSRUpdateFit<EDAnchor>(a3);
  v12 = *(a3 + 8);
  if (v12)
  {
    v13 = *(a3 + 72);
    v14 = *(a3 + 76);
    v15 = *(a3 + 80);
    v16 = *(a3 + 44);
    v17 = *(a3 + 48) - v16;
    v18 = (*a3 + 2);
    if ((*(a3 + 40) - *(a3 + 36)) <= v17)
    {
      v19 = 0.0;
      v21 = *(a3 + 8);
      do
      {
        LOWORD(v17) = *(v18 - 1);
        LOWORD(v16) = *v18;
        v16 = (v15 + (v14 * LODWORD(v16))) / v13;
        v17 = v16 + LODWORD(v17);
        v19 = v19 + (v17 * v17);
        v18 += 2;
        --v21;
      }

      while (v21);
    }

    else
    {
      v19 = 0.0;
      v20 = *(a3 + 8);
      do
      {
        LOWORD(v17) = *(v18 - 1);
        LOWORD(v16) = *v18;
        v16 = LODWORD(v16);
        v17 = ((v15 + (v13 * LODWORD(v17))) / v14) + v16;
        v19 = v19 + (v17 * v17);
        v18 += 2;
        --v20;
      }

      while (v20);
    }

    result = v19 / v12;
    *(a3 + 84) = result;
  }

  return result;
}