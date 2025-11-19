uint64_t CI::sw_maxDisk(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  v8 = *DC;
  v9 = CI::getDC(DC);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), *v9, 1);
  *&v13 = *v12.i32 + (COERCE_FLOAT(*v9) * *(v5 + 28));
  *&v14 = *&v10 + (vmuls_lane_f32(*(v5 + 20), *v9, 1) + (COERCE_FLOAT(*v9) * *(v5 + 16)));
  *v15.f64 = *v11.i32 + *&v13;
  *(&v14 + 1) = *v11.i32 + *&v13;
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v14, v15, v10, v13, v12, v11, v16, v17);
  v25 = v18;
  v26 = ceilf(v6);
  if (v26 >= 0.0)
  {
    v27 = v6 * v6;
    *&v20 = -v26;
    do
    {
      *v21.i32 = -v26;
      v31 = v20;
      do
      {
        *&v19.f64[0] = vmul_f32(__PAIR64__(v21.u32[0], v20), __PAIR64__(v21.u32[0], v20));
        if (vaddv_f32(*&v19.f64[0]) <= v27)
        {
          v28 = vadd_f32(v8, __PAIR64__(v21.u32[0], v20));
          v32 = v21;
          v33 = v25;
          v25.i32[0] = *(v5 + 24);
          v22.i32[0] = *(v5 + 36);
          *v21.i32 = vmuls_lane_f32(*(v5 + 32), v28, 1);
          *&v20 = *v21.i32 + (v28.f32[0] * *(v5 + 28));
          v28.f32[0] = v25.f32[0] + (vmuls_lane_f32(*(v5 + 20), v28, 1) + (v28.f32[0] * *(v5 + 16)));
          *v19.f64 = *v22.i32 + *&v20;
          v28.f32[1] = *v22.i32 + *&v20;
          *v29.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v28, v19, *v25.i64, *&v20, v21, v22, v23, v24);
          v20 = v31;
          v21 = v32;
          v25 = vmaxnmq_f32(v33, v29);
        }

        *v21.i32 = *v21.i32 + 1.0;
      }

      while (*v21.i32 <= v26);
      *&v20 = *&v20 + 1.0;
    }

    while (*&v20 <= v26);
  }

  return v25.i64[0];
}

uint64_t CI::sw_minDisk(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  v8 = *DC;
  v9 = CI::getDC(DC);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), *v9, 1);
  *&v13 = *v12.i32 + (COERCE_FLOAT(*v9) * *(v5 + 28));
  *&v14 = *&v10 + (vmuls_lane_f32(*(v5 + 20), *v9, 1) + (COERCE_FLOAT(*v9) * *(v5 + 16)));
  *v15.f64 = *v11.i32 + *&v13;
  *(&v14 + 1) = *v11.i32 + *&v13;
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v14, v15, v10, v13, v12, v11, v16, v17);
  v25 = v18;
  v26 = ceilf(v6);
  if (v26 >= 0.0)
  {
    v27 = v6 * v6;
    *&v20 = -v26;
    do
    {
      *v21.i32 = -v26;
      v31 = v20;
      do
      {
        *&v19.f64[0] = vmul_f32(__PAIR64__(v21.u32[0], v20), __PAIR64__(v21.u32[0], v20));
        if (vaddv_f32(*&v19.f64[0]) <= v27)
        {
          v28 = vadd_f32(v8, __PAIR64__(v21.u32[0], v20));
          v32 = v21;
          v33 = v25;
          v25.i32[0] = *(v5 + 24);
          v22.i32[0] = *(v5 + 36);
          *v21.i32 = vmuls_lane_f32(*(v5 + 32), v28, 1);
          *&v20 = *v21.i32 + (v28.f32[0] * *(v5 + 28));
          v28.f32[0] = v25.f32[0] + (vmuls_lane_f32(*(v5 + 20), v28, 1) + (v28.f32[0] * *(v5 + 16)));
          *v19.f64 = *v22.i32 + *&v20;
          v28.f32[1] = *v22.i32 + *&v20;
          *v29.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v28, v19, *v25.i64, *&v20, v21, v22, v23, v24);
          v20 = v31;
          v21 = v32;
          v25 = vminnmq_f32(v33, v29);
        }

        *v21.i32 = *v21.i32 + 1.0;
      }

      while (*v21.i32 <= v26);
      *&v20 = *&v20 + 1.0;
    }

    while (*&v20 <= v26);
  }

  return v25.i64[0];
}

double CI::sw_max3x3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v89 = *v9;
  v11.i64[0] = *CI::getDC(a1);
  v93 = v11;
  v12 = v89;
  v13 = vdup_lane_s32(*&v89.f64[0], 1);
  *v11.i8 = vsub_f32(*v11.i8, v13);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), *v11.i8, 1);
  *&v17 = *v16.i32 + (*v11.i32 * *(v10 + 28));
  *v11.i32 = *&v14 + (vmuls_lane_f32(*(v10 + 20), *v11.i8, 1) + (*v11.i32 * *(v10 + 16)));
  *v12.f64 = *v15.i32 + *&v17;
  *&v11.i32[1] = *v15.i32 + *&v17;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), *v11.i64, v12, v14, v17, v16, v15, v18, v19);
  v84 = v20;
  v21 = v89;
  v22 = vextq_s8(v21, v21, 8uLL);
  v86 = *&v22.f64[0];
  v23 = vext_s8(*&v22.f64[0], *&v89.f64[0], 4uLL);
  *v20.f32 = vsub_f32(*v93.i8, v23);
  v21.i32[0] = *(v10 + 24);
  v24.i32[0] = *(v10 + 36);
  *v25.i32 = vmuls_lane_f32(*(v10 + 32), *v20.f32, 1);
  *&v26 = *v25.i32 + (v20.f32[0] * *(v10 + 28));
  v20.f32[0] = *v21.i32 + (vmuls_lane_f32(*(v10 + 20), *v20.f32, 1) + (v20.f32[0] * *(v10 + 16)));
  *v22.f64 = *v24.i32 + *&v26;
  v20.f32[1] = *v24.i32 + *&v26;
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v22, *v21.i64, v26, v25, v24, v27, v28);
  HIDWORD(v30) = HIDWORD(v89.f64[0]);
  v31 = vext_s8(*&v89.f64[0], v86, 4uLL);
  *&v32.f64[1] = v93.i64[1];
  *&v32.f64[0] = vadd_f32(v31, *v93.i8);
  *&v30 = vmuls_lane_f32(*(v10 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v10 + 16));
  LODWORD(v33) = *(v10 + 24);
  v34.i32[0] = *(v10 + 36);
  *v35.i32 = vmuls_lane_f32(*(v10 + 32), *&v32.f64[0], 1);
  v36 = v84;
  v85 = vmaxnmq_f32(v84, v29);
  v29.f32[0] = *&v33 + *&v30;
  *v32.f64 = *v34.i32 + (*v35.i32 + (*v32.f64 * *(v10 + 28)));
  v29.i32[1] = LODWORD(v32.f64[0]);
  *v38.i64 = CI::BitmapSampler::read(*(v10 + 8), *v29.i64, v32, v30, v33, v36, v35, v34, v37);
  *&v89.f64[0] = __PAIR64__(v86.u32[1], LODWORD(v89.f64[0]));
  v39 = v89.f64[0];
  *&v40.f64[1] = v93.i64[1];
  *&v40.f64[0] = vsub_f32(*v93.i8, *&v89.f64[0]);
  *&v39 = vmuls_lane_f32(*(v10 + 20), *&v40.f64[0], 1) + (*v40.f64 * *(v10 + 16));
  LODWORD(v41) = *(v10 + 24);
  v42.i32[0] = *(v10 + 36);
  *v43.i32 = vmuls_lane_f32(*(v10 + 32), *&v40.f64[0], 1);
  v87 = vmaxnmq_f32(v85, v38);
  v38.f32[0] = *&v41 + *&v39;
  *v40.f64 = *v42.i32 + (*v43.i32 + (*v40.f64 * *(v10 + 28)));
  v38.i32[1] = LODWORD(v40.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), *v38.i64, v40, v39, v41, v85, v43, v42, v44);
  v46 = v87;
  v88 = vmaxnmq_f32(v87, v45);
  LODWORD(v47) = *(v10 + 28);
  v45.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v93.i8, 1) + (*v93.i32 * *(v10 + 16)));
  LODWORD(v48) = *(v10 + 36);
  *v46.f64 = *&v48 + (vmuls_lane_f32(*(v10 + 32), *v93.i8, 1) + (*v93.i32 * *&v47));
  v45.i32[1] = LODWORD(v46.f64[0]);
  *v52.i64 = CI::BitmapSampler::read(*(v10 + 8), *v45.i64, v46, v47, v48, v93, v49, v50, v51);
  HIDWORD(v54) = HIDWORD(v89.f64[0]);
  *&v53.f64[1] = v93.i64[1];
  *&v53.f64[0] = vadd_f32(*&v89.f64[0], *v93.i8);
  *&v54 = vmuls_lane_f32(*(v10 + 20), *&v53.f64[0], 1) + (*v53.f64 * *(v10 + 16));
  LODWORD(v55) = *(v10 + 24);
  v56.i32[0] = *(v10 + 36);
  *v57.i32 = vmuls_lane_f32(*(v10 + 32), *&v53.f64[0], 1);
  v90 = vmaxnmq_f32(v88, v52);
  v52.f32[0] = *&v55 + *&v54;
  *v53.f64 = *v56.i32 + (*v57.i32 + (*v53.f64 * *(v10 + 28)));
  v52.i32[1] = LODWORD(v53.f64[0]);
  *v59.i64 = CI::BitmapSampler::read(*(v10 + 8), *v52.i64, v53, v54, v55, v88, v57, v56, v58);
  *&v60.f64[1] = v93.i64[1];
  *&v60.f64[0] = vsub_f32(*v93.i8, v31);
  *&v61 = vmuls_lane_f32(*(v10 + 20), *&v60.f64[0], 1) + (*v60.f64 * *(v10 + 16));
  LODWORD(v62) = *(v10 + 24);
  v63.i32[0] = *(v10 + 36);
  *v64.i32 = vmuls_lane_f32(*(v10 + 32), *&v60.f64[0], 1);
  v65 = v90;
  v91 = vmaxnmq_f32(v90, v59);
  v59.f32[0] = *&v62 + *&v61;
  *v60.f64 = *v63.i32 + (*v64.i32 + (*v60.f64 * *(v10 + 28)));
  v59.i32[1] = LODWORD(v60.f64[0]);
  *v67.i64 = CI::BitmapSampler::read(*(v10 + 8), *v59.i64, v60, v61, v62, v65, v64, v63, v66);
  *&v68.f64[1] = v93.i64[1];
  *&v68.f64[0] = vadd_f32(v23, *v93.i8);
  *&v69 = vmuls_lane_f32(*(v10 + 20), *&v68.f64[0], 1) + (*v68.f64 * *(v10 + 16));
  LODWORD(v70) = *(v10 + 24);
  v71.i32[0] = *(v10 + 36);
  *v72.i32 = vmuls_lane_f32(*(v10 + 32), *&v68.f64[0], 1);
  v73 = v91;
  v92 = vmaxnmq_f32(v91, v67);
  v67.f32[0] = *&v70 + *&v69;
  *v68.f64 = *v71.i32 + (*v72.i32 + (*v68.f64 * *(v10 + 28)));
  v67.i32[1] = LODWORD(v68.f64[0]);
  *v75.i64 = CI::BitmapSampler::read(*(v10 + 8), *v67.i64, v68, v69, v70, v73, v72, v71, v74);
  *&v76.f64[1] = v93.i64[1];
  *&v76.f64[0] = vadd_f32(v13, *v93.i8);
  *&v77 = vmuls_lane_f32(*(v10 + 20), *&v76.f64[0], 1) + (*v76.f64 * *(v10 + 16));
  LODWORD(v78) = *(v10 + 24);
  v79.i32[0] = *(v10 + 36);
  *v80.i32 = vmuls_lane_f32(*(v10 + 32), *&v76.f64[0], 1);
  v94 = vmaxnmq_f32(v92, v75);
  v75.f32[0] = *&v78 + *&v77;
  *v76.f64 = *v79.i32 + (*v80.i32 + (*v76.f64 * *(v10 + 28)));
  v75.i32[1] = LODWORD(v76.f64[0]);
  *v82.i64 = CI::BitmapSampler::read(*(v10 + 8), *v75.i64, v76, v77, v78, v92, v80, v79, v81);
  *&result = vmaxnmq_f32(v94, v82).u64[0];
  return result;
}

double CI::sw_min3x3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v89 = *v9;
  v11.i64[0] = *CI::getDC(a1);
  v93 = v11;
  v12 = v89;
  v13 = vdup_lane_s32(*&v89.f64[0], 1);
  *v11.i8 = vsub_f32(*v11.i8, v13);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), *v11.i8, 1);
  *&v17 = *v16.i32 + (*v11.i32 * *(v10 + 28));
  *v11.i32 = *&v14 + (vmuls_lane_f32(*(v10 + 20), *v11.i8, 1) + (*v11.i32 * *(v10 + 16)));
  *v12.f64 = *v15.i32 + *&v17;
  *&v11.i32[1] = *v15.i32 + *&v17;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), *v11.i64, v12, v14, v17, v16, v15, v18, v19);
  v84 = v20;
  v21 = v89;
  v22 = vextq_s8(v21, v21, 8uLL);
  v86 = *&v22.f64[0];
  v23 = vext_s8(*&v22.f64[0], *&v89.f64[0], 4uLL);
  *v20.f32 = vsub_f32(*v93.i8, v23);
  v21.i32[0] = *(v10 + 24);
  v24.i32[0] = *(v10 + 36);
  *v25.i32 = vmuls_lane_f32(*(v10 + 32), *v20.f32, 1);
  *&v26 = *v25.i32 + (v20.f32[0] * *(v10 + 28));
  v20.f32[0] = *v21.i32 + (vmuls_lane_f32(*(v10 + 20), *v20.f32, 1) + (v20.f32[0] * *(v10 + 16)));
  *v22.f64 = *v24.i32 + *&v26;
  v20.f32[1] = *v24.i32 + *&v26;
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v22, *v21.i64, v26, v25, v24, v27, v28);
  HIDWORD(v30) = HIDWORD(v89.f64[0]);
  v31 = vext_s8(*&v89.f64[0], v86, 4uLL);
  *&v32.f64[1] = v93.i64[1];
  *&v32.f64[0] = vadd_f32(v31, *v93.i8);
  *&v30 = vmuls_lane_f32(*(v10 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v10 + 16));
  LODWORD(v33) = *(v10 + 24);
  v34.i32[0] = *(v10 + 36);
  *v35.i32 = vmuls_lane_f32(*(v10 + 32), *&v32.f64[0], 1);
  v36 = v84;
  v85 = vminnmq_f32(v84, v29);
  v29.f32[0] = *&v33 + *&v30;
  *v32.f64 = *v34.i32 + (*v35.i32 + (*v32.f64 * *(v10 + 28)));
  v29.i32[1] = LODWORD(v32.f64[0]);
  *v38.i64 = CI::BitmapSampler::read(*(v10 + 8), *v29.i64, v32, v30, v33, v36, v35, v34, v37);
  *&v89.f64[0] = __PAIR64__(v86.u32[1], LODWORD(v89.f64[0]));
  v39 = v89.f64[0];
  *&v40.f64[1] = v93.i64[1];
  *&v40.f64[0] = vsub_f32(*v93.i8, *&v89.f64[0]);
  *&v39 = vmuls_lane_f32(*(v10 + 20), *&v40.f64[0], 1) + (*v40.f64 * *(v10 + 16));
  LODWORD(v41) = *(v10 + 24);
  v42.i32[0] = *(v10 + 36);
  *v43.i32 = vmuls_lane_f32(*(v10 + 32), *&v40.f64[0], 1);
  v87 = vminnmq_f32(v85, v38);
  v38.f32[0] = *&v41 + *&v39;
  *v40.f64 = *v42.i32 + (*v43.i32 + (*v40.f64 * *(v10 + 28)));
  v38.i32[1] = LODWORD(v40.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v10 + 8), *v38.i64, v40, v39, v41, v85, v43, v42, v44);
  v46 = v87;
  v88 = vminnmq_f32(v87, v45);
  LODWORD(v47) = *(v10 + 28);
  v45.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v93.i8, 1) + (*v93.i32 * *(v10 + 16)));
  LODWORD(v48) = *(v10 + 36);
  *v46.f64 = *&v48 + (vmuls_lane_f32(*(v10 + 32), *v93.i8, 1) + (*v93.i32 * *&v47));
  v45.i32[1] = LODWORD(v46.f64[0]);
  *v52.i64 = CI::BitmapSampler::read(*(v10 + 8), *v45.i64, v46, v47, v48, v93, v49, v50, v51);
  HIDWORD(v54) = HIDWORD(v89.f64[0]);
  *&v53.f64[1] = v93.i64[1];
  *&v53.f64[0] = vadd_f32(*&v89.f64[0], *v93.i8);
  *&v54 = vmuls_lane_f32(*(v10 + 20), *&v53.f64[0], 1) + (*v53.f64 * *(v10 + 16));
  LODWORD(v55) = *(v10 + 24);
  v56.i32[0] = *(v10 + 36);
  *v57.i32 = vmuls_lane_f32(*(v10 + 32), *&v53.f64[0], 1);
  v90 = vminnmq_f32(v88, v52);
  v52.f32[0] = *&v55 + *&v54;
  *v53.f64 = *v56.i32 + (*v57.i32 + (*v53.f64 * *(v10 + 28)));
  v52.i32[1] = LODWORD(v53.f64[0]);
  *v59.i64 = CI::BitmapSampler::read(*(v10 + 8), *v52.i64, v53, v54, v55, v88, v57, v56, v58);
  *&v60.f64[1] = v93.i64[1];
  *&v60.f64[0] = vsub_f32(*v93.i8, v31);
  *&v61 = vmuls_lane_f32(*(v10 + 20), *&v60.f64[0], 1) + (*v60.f64 * *(v10 + 16));
  LODWORD(v62) = *(v10 + 24);
  v63.i32[0] = *(v10 + 36);
  *v64.i32 = vmuls_lane_f32(*(v10 + 32), *&v60.f64[0], 1);
  v65 = v90;
  v91 = vminnmq_f32(v90, v59);
  v59.f32[0] = *&v62 + *&v61;
  *v60.f64 = *v63.i32 + (*v64.i32 + (*v60.f64 * *(v10 + 28)));
  v59.i32[1] = LODWORD(v60.f64[0]);
  *v67.i64 = CI::BitmapSampler::read(*(v10 + 8), *v59.i64, v60, v61, v62, v65, v64, v63, v66);
  *&v68.f64[1] = v93.i64[1];
  *&v68.f64[0] = vadd_f32(v23, *v93.i8);
  *&v69 = vmuls_lane_f32(*(v10 + 20), *&v68.f64[0], 1) + (*v68.f64 * *(v10 + 16));
  LODWORD(v70) = *(v10 + 24);
  v71.i32[0] = *(v10 + 36);
  *v72.i32 = vmuls_lane_f32(*(v10 + 32), *&v68.f64[0], 1);
  v73 = v91;
  v92 = vminnmq_f32(v91, v67);
  v67.f32[0] = *&v70 + *&v69;
  *v68.f64 = *v71.i32 + (*v72.i32 + (*v68.f64 * *(v10 + 28)));
  v67.i32[1] = LODWORD(v68.f64[0]);
  *v75.i64 = CI::BitmapSampler::read(*(v10 + 8), *v67.i64, v68, v69, v70, v73, v72, v71, v74);
  *&v76.f64[1] = v93.i64[1];
  *&v76.f64[0] = vadd_f32(v13, *v93.i8);
  *&v77 = vmuls_lane_f32(*(v10 + 20), *&v76.f64[0], 1) + (*v76.f64 * *(v10 + 16));
  LODWORD(v78) = *(v10 + 24);
  v79.i32[0] = *(v10 + 36);
  *v80.i32 = vmuls_lane_f32(*(v10 + 32), *&v76.f64[0], 1);
  v94 = vminnmq_f32(v92, v75);
  v75.f32[0] = *&v78 + *&v77;
  *v76.f64 = *v79.i32 + (*v80.i32 + (*v76.f64 * *(v10 + 28)));
  v75.i32[1] = LODWORD(v76.f64[0]);
  *v82.i64 = CI::BitmapSampler::read(*(v10 + 8), *v75.i64, v76, v77, v78, v92, v80, v79, v81);
  *&result = vminnmq_f32(v94, v82).u64[0];
  return result;
}

unint64_t CI::sw_gradient(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12.i64[0] = 0x3F0000003F000000;
  v12.i64[1] = 0x3F0000003F000000;
  return vmulq_f32(vsubq_f32(*v7, *v11), v12).u64[0];
}

unint64_t CI::sw_laplacian(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16.i64[0] = 0x3F0000003F000000;
  v16.i64[1] = 0x3F0000003F000000;
  return vmulq_f32(vsubq_f32(vaddq_f32(*v11, *v15), vaddq_f32(*v7, *v7)), v16).u64[0];
}

double CI::sw_average(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(a2 + (*(v3 + 56) << 6));
  *&result = vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v12), *v11, v12).u64[0];
  return result;
}

double CI::sw_morphmin(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v5;
  v12 = *(a2 + (v6 << 6));
  v13 = *v10;
  DC = CI::getDC(a1);
  *v15.i8 = *DC;
  LODWORD(v16) = *(v11 + 28);
  *&v17 = *(v11 + 24) + (vmuls_lane_f32(*(v11 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v11 + 16)));
  LODWORD(v18) = *(v11 + 36);
  v36 = v15;
  *v19.f64 = *&v18 + (vmuls_lane_f32(*(v11 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v16));
  HIDWORD(v17) = LODWORD(v19.f64[0]);
  *v23.i64 = CI::BitmapSampler::read(*(v11 + 8), v17, v19, v16, v18, v15, v20, v21, v22);
  if (v12 >= 0.0)
  {
    *&v24 = -v12;
    do
    {
      v37 = v24;
      v38 = v23;
      v31 = vmul_n_f32(v13, *&v24);
      v32 = v36;
      v33 = vadd_f32(*&v36.f64[0], v31);
      LODWORD(v25) = *(v11 + 24);
      v28.i32[0] = *(v11 + 36);
      *v27.i32 = vmuls_lane_f32(*(v11 + 32), v33, 1);
      *&v26 = *v27.i32 + (v33.f32[0] * *(v11 + 28));
      v33.f32[0] = *&v25 + (vmuls_lane_f32(*(v11 + 20), v33, 1) + (v33.f32[0] * *(v11 + 16)));
      *v32.f64 = *v28.i32 + *&v26;
      v33.f32[1] = *v28.i32 + *&v26;
      *v34.i64 = CI::BitmapSampler::read(*(v11 + 8), *&v33, v32, v25, v26, v27, v28, v29, v30);
      v24 = v37;
      v23 = vminnmq_f32(v38, v34);
      *&v24 = *&v37 + 1.0;
    }

    while ((*&v37 + 1.0) <= v12);
  }

  return *v23.i64;
}

double CI::sw_morphmax(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v5;
  v12 = *(a2 + (v6 << 6));
  v13 = *v10;
  DC = CI::getDC(a1);
  *v15.i8 = *DC;
  LODWORD(v16) = *(v11 + 28);
  *&v17 = *(v11 + 24) + (vmuls_lane_f32(*(v11 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v11 + 16)));
  LODWORD(v18) = *(v11 + 36);
  v36 = v15;
  *v19.f64 = *&v18 + (vmuls_lane_f32(*(v11 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v16));
  HIDWORD(v17) = LODWORD(v19.f64[0]);
  *v23.i64 = CI::BitmapSampler::read(*(v11 + 8), v17, v19, v16, v18, v15, v20, v21, v22);
  if (v12 >= 0.0)
  {
    *&v24 = -v12;
    do
    {
      v37 = v24;
      v38 = v23;
      v31 = vmul_n_f32(v13, *&v24);
      v32 = v36;
      v33 = vadd_f32(*&v36.f64[0], v31);
      LODWORD(v25) = *(v11 + 24);
      v28.i32[0] = *(v11 + 36);
      *v27.i32 = vmuls_lane_f32(*(v11 + 32), v33, 1);
      *&v26 = *v27.i32 + (v33.f32[0] * *(v11 + 28));
      v33.f32[0] = *&v25 + (vmuls_lane_f32(*(v11 + 20), v33, 1) + (v33.f32[0] * *(v11 + 16)));
      *v32.f64 = *v28.i32 + *&v26;
      v33.f32[1] = *v28.i32 + *&v26;
      *v34.i64 = CI::BitmapSampler::read(*(v11 + 8), *&v33, v32, v25, v26, v27, v28, v29, v30);
      v24 = v37;
      v23 = vmaxnmq_f32(v38, v34);
      *&v24 = *&v37 + 1.0;
    }

    while ((*&v37 + 1.0) <= v12);
  }

  return *v23.i64;
}

int64x2_t Rectangle::Union@<Q0>(Rectangle *this@<X0>, const Rectangle *a2@<X1>, uint64_t a3@<X8>, int64x2_t result@<Q0>)
{
  var0 = this->var0;
  if (fabs(this->var0) == INFINITY || (var1 = this->var1, fabs(var1) == INFINITY))
  {
    result = *&a2->var0;
    v6 = *&a2->var2;
LABEL_4:
    *a3 = result;
    *(a3 + 16) = v6;
    return result;
  }

  v7 = a2->var0;
  if (fabs(a2->var0) == INFINITY || (v8 = a2->var1, fabs(v8) == INFINITY))
  {
    result = *&this->var0;
    v6 = *&this->var2;
    goto LABEL_4;
  }

  v9 = var0 == -8.98846567e307 && var1 == -8.98846567e307;
  if (v9 && this->var2 == 1.79769313e308 && this->var3 == 1.79769313e308)
  {
    result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v6 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    goto LABEL_4;
  }

  v10 = *&a2->var2;
  v11 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&a2->var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v10, v11))))))
  {
    v12 = var0 + this->var2;
    v13 = fmin(fmin(var0, v12), fmin(v7, v7 + v10.f64[0]));
    v14 = var1 + this->var3;
    v15 = fmin(fmin(var1, v14), fmin(v8, v8 + v10.f64[1]));
    *result.i64 = fmax(fmax(var0, v12), fmax(v7, v7 + v10.f64[0])) - v13;
    *a3 = v13;
    *(a3 + 8) = v15;
    *(a3 + 16) = result.i64[0];
    *(a3 + 24) = fmax(fmax(var1, v14), fmax(v8, v8 + v10.f64[1])) - v15;
  }

  else
  {
    result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *a3 = result;
    *(a3 + 16) = v11;
  }

  return result;
}

double CI::sw_motionBlur(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v58 = *v9;
  v11.f64[0] = *CI::getDC(a1);
  v57 = v11;
  v12 = vadd_f32(*v58.f32, *v58.f32);
  v13 = vsub_f32(*&v11.f64[0], v12);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), v13, 1);
  *&v17 = *v16.i32 + (v13.f32[0] * *(v10 + 28));
  v13.f32[0] = *&v14 + (vmuls_lane_f32(*(v10 + 20), v13, 1) + (v13.f32[0] * *(v10 + 16)));
  *v11.f64 = *v15.i32 + *&v17;
  v13.f32[1] = *v15.i32 + *&v17;
  *v20.i64 = CI::BitmapSampler::read(*(v10 + 8), *&v13, v11, v14, v17, v16, v15, v18, v19);
  v56 = v20;
  v21 = v57;
  *v20.f32 = vsub_f32(*v57.i8, *v58.f32);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), *v20.f32, 1);
  *&v25 = *v24.i32 + (v20.f32[0] * *(v10 + 28));
  v20.f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), *v20.f32, 1) + (v20.f32[0] * *(v10 + 16)));
  *v21.f64 = *v23.i32 + *&v25;
  v20.f32[1] = *v23.i32 + *&v25;
  *v28.i64 = CI::BitmapSampler::read(*(v10 + 8), *v20.i64, v21, v22, v25, v24, v23, v26, v27);
  v55 = v28;
  LODWORD(v29) = *(v10 + 28);
  v28.f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v57.i8, 1) + (*v57.i32 * *(v10 + 16)));
  LODWORD(v30) = *(v10 + 36);
  *v31.f64 = *&v30 + (vmuls_lane_f32(*(v10 + 32), *v57.i8, 1) + (*v57.i32 * *&v29));
  v28.i32[1] = LODWORD(v31.f64[0]);
  *v35.i64 = CI::BitmapSampler::read(*(v10 + 8), *v28.i64, v31, v29, v30, v57, v32, v33, v34);
  v54 = v35;
  v36 = v57;
  *v35.f32 = vadd_f32(*v58.f32, *v57.i8);
  LODWORD(v37) = *(v10 + 24);
  v38.i32[0] = *(v10 + 36);
  *v39.i32 = vmuls_lane_f32(*(v10 + 32), *v35.f32, 1);
  *&v40 = *v39.i32 + (v35.f32[0] * *(v10 + 28));
  v35.f32[0] = *&v37 + (vmuls_lane_f32(*(v10 + 20), *v35.f32, 1) + (v35.f32[0] * *(v10 + 16)));
  *v36.f64 = *v38.i32 + *&v40;
  v35.f32[1] = *v38.i32 + *&v40;
  *v43.i64 = CI::BitmapSampler::read(*(v10 + 8), *v35.i64, v36, v37, v40, v39, v38, v41, v42);
  v53 = v43;
  *v43.f32 = vadd_f32(v12, *v57.i8);
  LODWORD(v44) = *(v10 + 24);
  v45.i32[0] = *(v10 + 36);
  *v46.i32 = vmuls_lane_f32(*(v10 + 32), *v43.f32, 1);
  *&v47 = *v46.i32 + (v43.f32[0] * *(v10 + 28));
  v43.f32[0] = *&v44 + (vmuls_lane_f32(*(v10 + 20), *v43.f32, 1) + (v43.f32[0] * *(v10 + 16)));
  *v48.f64 = *v45.i32 + *&v47;
  v43.f32[1] = *v45.i32 + *&v47;
  *v51.i64 = CI::BitmapSampler::read(*(v10 + 8), *v43.i64, v48, v44, v47, v46, v45, v49, v50);
  *&result = vaddq_f32(vmulq_laneq_f32(v54, v58, 2), vmulq_laneq_f32(vaddq_f32(vaddq_f32(v55, v53), vmulq_laneq_f32(vaddq_f32(v56, v51), v58, 3)), v58, 3)).u64[0];
  return result;
}

double CI::sw_zoomBlur(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v13 = *(v4 + 80);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v4 + 88) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = a4 + 80 * *(v4 + 8);
  v18 = *v8;
  v70 = *v12;
  v68 = *v16;
  v69 = *(a2 + (*(v4 + 104) << 6));
  DC = CI::getDC(a1);
  v20 = vsub_f32(*DC, v18);
  v21 = CI::getDC(DC);
  LODWORD(v22) = *(v17 + 24);
  v23.i32[0] = *(v17 + 36);
  *v24.i32 = vmuls_lane_f32(*(v17 + 32), *v21, 1);
  *&v25 = *v24.i32 + (COERCE_FLOAT(*v21) * *(v17 + 28));
  *&v26 = *&v22 + (vmuls_lane_f32(*(v17 + 20), *v21, 1) + (COERCE_FLOAT(*v21) * *(v17 + 16)));
  *v27.f64 = *v23.i32 + *&v25;
  *(&v26 + 1) = *v23.i32 + *&v25;
  *v30.i64 = CI::BitmapSampler::read(*(v17 + 8), v26, v27, v22, v25, v24, v23, v28, v29);
  v67 = v30;
  *v30.f32 = vadd_f32(v18, vmul_n_f32(v20, v70.f32[0]));
  LODWORD(v31) = *(v17 + 24);
  v32.i32[0] = *(v17 + 36);
  *v33.i32 = vmuls_lane_f32(*(v17 + 32), *v30.f32, 1);
  *&v34 = *v33.i32 + (v30.f32[0] * *(v17 + 28));
  v30.f32[0] = *&v31 + (vmuls_lane_f32(*(v17 + 20), *v30.f32, 1) + (v30.f32[0] * *(v17 + 16)));
  *v35.f64 = *v32.i32 + *&v34;
  v30.f32[1] = *v32.i32 + *&v34;
  *v38.i64 = CI::BitmapSampler::read(*(v17 + 8), *v30.i64, v35, v31, v34, v33, v32, v36, v37);
  v66 = v38;
  *v38.f32 = vadd_f32(v18, vmul_lane_f32(v20, *v70.f32, 1));
  LODWORD(v39) = *(v17 + 24);
  v40.i32[0] = *(v17 + 36);
  *v41.i32 = vmuls_lane_f32(*(v17 + 32), *v38.f32, 1);
  *&v42 = *v41.i32 + (v38.f32[0] * *(v17 + 28));
  v38.f32[0] = *&v39 + (vmuls_lane_f32(*(v17 + 20), *v38.f32, 1) + (v38.f32[0] * *(v17 + 16)));
  *v43.f64 = *v40.i32 + *&v42;
  v38.f32[1] = *v40.i32 + *&v42;
  *v46.i64 = CI::BitmapSampler::read(*(v17 + 8), *v38.i64, v43, v39, v42, v41, v40, v44, v45);
  v65 = v46;
  *v46.f32 = vadd_f32(v18, vmul_laneq_f32(v20, v70, 2));
  LODWORD(v47) = *(v17 + 24);
  v48.i32[0] = *(v17 + 36);
  *v49.i32 = vmuls_lane_f32(*(v17 + 32), *v46.f32, 1);
  *&v50 = *v49.i32 + (v46.f32[0] * *(v17 + 28));
  v46.f32[0] = *&v47 + (vmuls_lane_f32(*(v17 + 20), *v46.f32, 1) + (v46.f32[0] * *(v17 + 16)));
  *v51.f64 = *v48.i32 + *&v50;
  v46.f32[1] = *v48.i32 + *&v50;
  *v54.i64 = CI::BitmapSampler::read(*(v17 + 8), *v46.i64, v51, v47, v50, v49, v48, v52, v53);
  v64 = v54;
  *v54.f32 = vadd_f32(v18, vmul_laneq_f32(v20, v70, 3));
  LODWORD(v55) = *(v17 + 24);
  v56.i32[0] = *(v17 + 36);
  *v57.i32 = vmuls_lane_f32(*(v17 + 32), *v54.f32, 1);
  *&v58 = *v57.i32 + (v54.f32[0] * *(v17 + 28));
  v54.f32[0] = *&v55 + (vmuls_lane_f32(*(v17 + 20), *v54.f32, 1) + (v54.f32[0] * *(v17 + 16)));
  *v59.f64 = *v56.i32 + *&v58;
  v54.f32[1] = *v56.i32 + *&v58;
  *v62.i64 = CI::BitmapSampler::read(*(v17 + 8), *v54.i64, v59, v55, v58, v57, v56, v60, v61);
  *&result = vaddq_f32(vmulq_n_f32(v67, v69), vaddq_f32(vmulq_laneq_f32(v66, v68, 3), vaddq_f32(vmulq_laneq_f32(v65, v68, 2), vaddq_f32(vmulq_lane_f32(v64, *v68.f32, 1), vmulq_n_f32(v62, v68.f32[0]))))).u64[0];
  return result;
}

uint64_t CI::sw_zoom(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v18 = vsub_f32(*CI::getDC(a1), *v8);
  v19 = 0uLL;
  v20 = 0.0;
  v21 = 100;
  v22 = vdupq_n_s32(0x3C23D70Au);
  v28 = v22;
  do
  {
    v29 = v19;
    v23 = v20 / 99.0;
    v22.f64[0] = 0.5;
    v24 = ((v23 + -0.5) + (((v23 + -0.5) * (v23 + -0.5)) * (v23 + -0.5))) * 0.8 + 0.5;
    v25 = vadd_f32(v10, vmul_n_f32(v18, v24 + (v11 * (1.0 - v24))));
    LODWORD(v12) = *(v9 + 24);
    v15.i32[0] = *(v9 + 36);
    *v14.i32 = vmuls_lane_f32(*(v9 + 32), v25, 1);
    *&v13 = *v14.i32 + (v25.f32[0] * *(v9 + 28));
    v25.f32[0] = *&v12 + (vmuls_lane_f32(*(v9 + 20), v25, 1) + (v25.f32[0] * *(v9 + 16)));
    *v22.f64 = *v15.i32 + *&v13;
    v25.f32[1] = *v15.i32 + *&v13;
    *v26.i64 = CI::BitmapSampler::read(*(v9 + 8), *&v25, v22, v12, v13, v14, v15, v16, v17);
    HIDWORD(v12) = v28.i32[1];
    v22 = vaddq_f32(v29, vmulq_f32(v26, v28));
    v19 = v22;
    v20 = v20 + 1.0;
    --v21;
  }

  while (v21);
  return *&v22.f64[0];
}

double CI::sw_opTile(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v32 = *v13;
  v33 = *v17;
  v20 = vsub_f32(*CI::getDC(a1), *v9);
  v21 = vmul_lane_f32(vrndm_f32(vmul_n_f32(v20, v32.f32[0])), v32, 1);
  v22 = vsub_f32(v20, v21);
  v23 = vmul_f32(*v33.i8, v21);
  v24 = vmul_f32(*&vextq_s8(v33, v33, 8uLL), v21);
  v25 = vzip1_s32(v23, v24);
  *&v26.f64[0] = vadd_f32(v19, vadd_f32(v22, vadd_f32(v25, vzip2_s32(v23, v24))));
  v25.i32[0] = *(v18 + 28);
  v22.f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *&v26.f64[0], 1) + (*v26.f64 * *(v18 + 16)));
  v27.i32[0] = *(v18 + 36);
  *v23.i32 = vmuls_lane_f32(*(v18 + 32), *&v26.f64[0], 1);
  *v26.f64 = *v27.i32 + (*v23.i32 + (*v26.f64 * v25.f32[0]));
  v22.i32[1] = LODWORD(v26.f64[0]);
  return CI::BitmapSampler::read(*(v18 + 8), *&v22, v26, *&v23, *&v25, v27, v28, v29, v30);
}

__n128 pageCurlMapInverse(CGPoint a1, CGAffineTransform *a2, CGAffineTransform *a3)
{
  v3 = a2->tx + a1.y * a2->c + a2->a * a1.x;
  if (v3 <= 0.0)
  {
    y = a1.y;
  }

  else
  {
    v5 = a2->ty + a1.y * a2->d + a2->b * a1.x;
    if (v3 >= 3.14159265)
    {
      v6 = 3.14159265 - v3;
    }

    else
    {
      v9 = a2->ty + a1.y * a2->d + a2->b * a1.x;
      v6 = sin(v3);
      v5 = v9;
    }

    a1 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v5), *&a3->a, v6));
  }

  result.n128_f64[0] = a1.x;
  return result;
}

uint64_t CriticalPointsDOD(CGRect a1, CGAffineTransform *a2, CGPoint *a3)
{
  v22 = CGRectStandardize(a1);
  tx = a2->tx + -1.57079633;
  a2->tx = tx;
  a = a2->a;
  c = a2->c;
  v8 = -(tx + v22.origin.x * a2->a) / c;
  v9 = v22.origin.y + v22.size.height;
  if (v8 < v22.origin.y || v8 > v9)
  {
    result = 0;
  }

  else
  {
    a3->x = v22.origin.x;
    a3->y = v8;
    a = a2->a;
    tx = a2->tx;
    result = 1;
    c = a2->c;
  }

  v12 = v22.origin.x + v22.size.width;
  v13 = -(tx + v12 * a) / c;
  if (v13 >= v22.origin.y && v13 <= v9)
  {
    v15 = &a3[result];
    result = (result + 1);
    v15->x = v12;
    v15->y = v13;
    c = a2->c;
    tx = a2->tx;
    a = a2->a;
  }

  v16 = -(tx + v22.origin.y * c) / a;
  if (v16 >= v22.origin.x && v16 <= v12)
  {
    v18 = &a3[result];
    result = (result + 1);
    v18->x = v16;
    v18->y = v22.origin.y;
    c = a2->c;
    tx = a2->tx;
    a = a2->a;
  }

  v19 = -(tx + v9 * c) / a;
  if (v19 >= v22.origin.x && v19 <= v12)
  {
    v21 = &a3[result];
    result = (result + 1);
    v21->x = v19;
    v21->y = v9;
  }

  return result;
}

void pageCurlROI(int a1, float64x2_t *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v90[16] = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    return;
  }

  *v69 = a9;
  *&v69[8] = a10;
  *&v69[16] = a11;
  *&v69[24] = a12;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v20 = a2->f64[0];
  v21 = a2[1].f64[0];
  v22 = a2[2].f64[0];
  v91 = CGRectStandardize(*&a5);
  v23 = v22 + -0.999;
  v24 = -(v22 + -0.999 + v91.origin.x * v20) / v21;
  v25 = v91.origin.y + v91.size.height;
  if (v24 < v91.origin.y || v24 > v25)
  {
    v27 = 0;
  }

  else
  {
    v90[0] = *&v91.origin.x;
    *&v90[1] = -(v22 + -0.999 + v91.origin.x * v20) / v21;
    v27 = 1;
  }

  v28 = v91.origin.x + v91.size.width;
  v29 = -(v23 + v28 * v20) / v21;
  if (v29 >= v91.origin.y && v29 <= v25)
  {
    v31 = &v90[2 * v27++];
    *v31 = v28;
    v31[1] = v29;
  }

  v32 = -(v23 + v91.origin.y * v21) / v20;
  if (v32 >= v91.origin.x && v32 <= v28)
  {
    v34 = &v90[2 * v27++];
    *v34 = v32;
    v34[1] = v91.origin.y;
  }

  v35 = -(v23 + v25 * v21) / v20;
  if (v35 >= v91.origin.x && v35 <= v28)
  {
    v37 = &v90[2 * v27++];
    *v37 = v35;
    v37[1] = v25;
  }

  if (v23 + v21 * v91.origin.y + v91.origin.x * v20 <= 0.0)
  {
    v38 = &v90[2 * v27++];
    *v38 = v91.origin.x;
    v38[1] = v91.origin.y;
  }

  if (v23 + v21 * v25 + v91.origin.x * v20 <= 0.0)
  {
    v39 = &v90[2 * v27++];
    *v39 = v91.origin.x;
    v39[1] = v25;
  }

  if (v23 + v21 * v25 + v28 * v20 <= 0.0)
  {
    v40 = &v90[2 * v27++];
    *v40 = v28;
    v40[1] = v25;
  }

  if (v23 + v21 * v91.origin.y + v28 * v20 <= 0.0)
  {
    v45 = &v90[2 * v27++];
    *v45 = v28;
    v45[1] = v91.origin.y;
LABEL_33:
    v46 = v90;
    v44 = height;
    v43 = width;
    v42 = y;
    v41 = x;
    v47 = v27;
    do
    {
      r1 = v44;
      v79 = height;
      v80 = width;
      v81 = x;
      v82 = y;
      v83 = v43;
      v84 = v42;
      v85 = v41;
      v48 = *a3;
      v49 = a3[1];
      v50 = a3[2];
      v51 = a3[3];
      v52 = a3[4];
      v53 = a3[5];
      v76 = *a4;
      v77 = a4[1];
      v54 = a4[2];
      v73 = a4[4];
      v74 = a4[3];
      v75 = a4[5];
      v55 = *v46++;
      v72 = v55.f64[1];
      v70 = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_laneq_f64(a2[1], v55, 1), *a2, v55.f64[0]));
      v71 = v55;
      v86 = v70;
      v87 = v70;
      v89 = v55;
      v56 = asin(v70.f64[0]);
      v87.f64[0] = v52 + v50 * v87.f64[1] + v48 * v56;
      v87.f64[1] = v53 + v51 * v87.f64[1] + v49 * v56;
      v86.f64[0] = v52 + vmuld_lane_f64(v50, v70, 1) + v48 * (3.14159265 - v56);
      v86.f64[1] = v53 + vmuld_lane_f64(v51, v70, 1) + v49 * (3.14159265 - v56);
      if (v70.f64[0] > 0.0)
      {
        v57 = &v87;
      }

      else
      {
        v57 = &v89;
      }

      v58 = *v57;
      v59 = v75 + vmuld_lane_f64(v74, v71, 1) + v77 * v71.f64[0];
      v88[0] = v73 + vmuld_lane_f64(v54, v71, 1) + v76 * v71.f64[0];
      v88[1] = v59;
      if (v70.f64[0] > 0.0)
      {
        v60 = &v86;
      }

      else
      {
        v60 = v88;
      }

      v86 = *v60;
      v87 = v58;
      if (v70.f64[0] > 0.0)
      {
        v62 = v87.f64[1];
      }

      else
      {
        v62 = v72;
      }

      v63 = *v60;
      if (v70.f64[0] > 0.0)
      {
        v64 = v86.f64[1];
      }

      else
      {
        v64 = v59;
      }

      v65 = 0;
      v66 = 0;
      v92.origin.x = v81;
      v92.origin.y = v82;
      v92.size.height = v79;
      v92.size.width = v80;
      v61 = v57->f64[0];
      v93 = CGRectUnion(v92, *(&v62 - 1));
      x = v93.origin.x;
      y = v93.origin.y;
      width = v93.size.width;
      height = v93.size.height;
      v95.size.width = 0.0;
      v95.size.height = 0.0;
      v93.origin.y = v84;
      v93.origin.x = v85;
      v93.size.width = v83;
      v93.size.height = r1;
      v95.origin.x = v63;
      v95.origin.y = v64;
      *&v41 = CGRectUnion(v93, v95);
      --v47;
    }

    while (v47);
    goto LABEL_47;
  }

  if (v27)
  {
    goto LABEL_33;
  }

  v41 = x;
  v42 = y;
  v43 = width;
  v44 = height;
LABEL_47:
  if (a1)
  {
    v67 = v44;
  }

  else
  {
    v67 = height;
  }

  if (a1)
  {
    v68 = v43;
  }

  else
  {
    v68 = width;
  }

  if (a1)
  {
    y = v42;
    x = v41;
  }

  v96 = CGRectInset(*v69, -1.0, -1.0);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = v68;
  v94.size.height = v67;
  CGRectIntersection(v94, v96);
}

double CI::sw_pageCurlTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v8 = *(v4 + 80);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v4 + 88) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v4 + 104);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v4 + 112) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v4 + 128);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v4 + 136) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v4 + 152);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v4 + 160) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v4 + 176);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v4 + 184) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v4 + 200);
  v29 = (a3 + 16 * v28);
  v30 = (a2 + (v28 << 6));
  if (*(v4 + 208) == 5)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = *(v4 + 224);
  v33 = *(v4 + 256);
  v34 = *(v4 + 248);
  v35 = (a3 + 16 * v34);
  v36 = (a2 + (v34 << 6));
  if (v33 == 5)
  {
    v36 = v35;
  }

  v37 = (v32 << 6);
  v38 = a4 + 80 * v7;
  v39 = a4 + 80 * v6;
  v40 = a4 + 80 * v5;
  v103 = *v11;
  v41 = *v15;
  v42 = *v23;
  v96 = *v19;
  v99 = *v27;
  v43 = *v31;
  v44 = *(v37 + a2);
  v101 = *v36;
  v45 = *CI::getDC(v37);
  v46 = vmul_f32(*v103.i8, v45);
  v47 = vmul_f32(*&vextq_s8(v103, v103, 8uLL), v45);
  *&v48.f64[0] = vadd_f32(v41, vadd_f32(vzip1_s32(v46, v47), vzip2_s32(v46, v47)));
  v102 = v48;
  v49 = *v48.f64;
  v50 = 1.0 - pow(*v48.f64, 1.5);
  v51 = sqrtf(fmaxf(v50, 0.0));
  v52 = v49 + ((v51 + -1.0) * (v51 + -1.0)) * 0.5625;
  v53 = v102;
  *v53.f64 = v52;
  *&v54 = 3.14159265 - v52;
  v55.i64[1] = *&v102.f64[1];
  v56 = __PAIR64__(HIDWORD(v102.f64[0]), v54);
  v57 = vmul_f32(*v96.i8, *&v53.f64[0]);
  v58 = vextq_s8(v96, v96, 8uLL).u64[0];
  v59 = v96;
  *&v53.f64[0] = vmul_f32(v58, *&v53.f64[0]);
  v60 = vadd_f32(v42, vadd_f32(vzip1_s32(v57, *&v53.f64[0]), vzip2_s32(v57, *&v53.f64[0])));
  *&v53.f64[0] = vmul_f32(*v96.i8, v56);
  v61 = vmul_f32(v58, v56);
  *&v53.f64[0] = vadd_f32(v42, vadd_f32(vzip1_s32(*&v53.f64[0], v61), vzip2_s32(*&v53.f64[0], v61)));
  v62 = vdup_lane_s32(vcge_f32(0, *&v102.f64[0]), 0);
  v63 = vmul_f32(*v99.i8, v45);
  v64 = vextq_s8(v99, v99, 8uLL);
  *v64.i8 = vmul_f32(*v64.i8, v45);
  *v55.i8 = vzip1_s32(v63, *v64.i8);
  v65 = vadd_f32(v43, vadd_f32(*v55.i8, vzip2_s32(v63, *v64.i8)));
  *&v53.f64[0] = vbsl_s8(v62, v65, *&v53.f64[0]);
  v97 = v53;
  *&v53.f64[0] = vbsl_s8(v62, v45, v60);
  v65.i32[0] = *(v40 + 28);
  *v60.i32 = *(v40 + 24) + (vmuls_lane_f32(*(v40 + 20), *&v53.f64[0], 1) + (*v53.f64 * *(v40 + 16)));
  v64.i32[0] = *(v40 + 36);
  *v62.i32 = vmuls_lane_f32(*(v40 + 32), *&v53.f64[0], 1);
  *v53.f64 = *v64.i32 + (*v62.i32 + (*v53.f64 * *v65.i32));
  v60.i32[1] = LODWORD(v53.f64[0]);
  *v67.i64 = CI::BitmapSampler::read(*(v40 + 8), *&v60, v53, *&v62, *&v65, v64, v55, v59, v66);
  v100 = v67;
  HIDWORD(v68) = v97.i32[1];
  v69.i32[0] = *(v39 + 36);
  *&v70 = vmuls_lane_f32(*(v39 + 32), *v97.i8, 1);
  *&v68 = *&v70 + (*v97.i32 * *(v39 + 28));
  v67.f32[0] = *(v39 + 24) + (vmuls_lane_f32(*(v39 + 20), *v97.i8, 1) + (*v97.i32 * *(v39 + 16)));
  *v71.f64 = *v69.i32 + *&v68;
  v67.f32[1] = *v69.i32 + *&v68;
  *v74.i64 = CI::BitmapSampler::read(*(v39 + 8), *v67.i64, v71, v68, v70, v69, v97, v72, v73);
  v98 = v74;
  __asm { FMOV            V1.2S, #-1.0 }

  *v74.f32 = vmaxnm_f32(vmul_n_f32(*v103.i8, v44 * *v102.f64), _D1);
  __asm { FMOV            V1.2S, #1.0 }

  *v74.f32 = vbsl_s8(vdup_lane_s32(vcgt_f32(0, *&v102.f64[0]), 0), 0x3F0000003F000000, vadd_f32(vmul_f32(vminnm_f32(*v74.f32, _D1), 0x3F0000003F000000), 0x3F0000003F000000));
  v81 = v101;
  v82 = vextq_s8(v81, v81, 8uLL);
  *v74.f32 = vadd_f32(*v101.i8, vmul_f32(*&v82.f64[0], *v74.f32));
  v81.i32[0] = *(v38 + 24);
  v83.i32[0] = *(v38 + 36);
  *v84.i32 = vmuls_lane_f32(*(v38 + 32), *v74.f32, 1);
  *&v85 = *v84.i32 + (v74.f32[0] * *(v38 + 28));
  v74.f32[0] = *v81.i32 + (vmuls_lane_f32(*(v38 + 20), *v74.f32, 1) + (v74.f32[0] * *(v38 + 16)));
  *v82.f64 = *v83.i32 + *&v85;
  v74.f32[1] = *v83.i32 + *&v85;
  *v88.i64 = CI::BitmapSampler::read(*(v38 + 8), *v74.i64, v82, *v81.i64, v85, v84, v83, v86, v87);
  v89 = vmulq_laneq_f32(v88, v98, 3);
  v90 = 1.0;
  v91 = vaddq_f32(v89, vmulq_n_f32(v98, 1.0 - v89.f32[3]));
  v92 = vaddq_f32(v91, vmulq_n_f32(v100, 1.0 - v91.f32[3]));
  v93 = (1.0 - v49) * v44;
  if (v93 <= 1.0)
  {
    v90 = (1.0 - v49) * v44;
  }

  if (v93 >= 0.0)
  {
    v94 = v90;
  }

  else
  {
    v94 = 0.0;
  }

  *&result = vmulq_n_f32(v92, v94).u64[0];
  return result;
}

double CI::sw_pageCurlTransNoEmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 56);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 64) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v4 + 88) == 5)
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

  v21 = *(v4 + 152);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (*(v4 + 160) == 5)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v4 + 176);
  v26 = (a3 + 16 * v25);
  v27 = (a2 + (v25 << 6));
  if (*(v4 + 184) == 5)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = a4 + 80 * *(v4 + 32);
  v30 = a4 + 80 * *(v4 + 8);
  v31 = *v12;
  v69 = *v8;
  v71 = *v16;
  v32 = *v20;
  v73 = *v24;
  v33 = *v28;
  v34 = *(a2 + (*(v4 + 200) << 6));
  v35 = *CI::getDC(v26);
  v36 = vmul_f32(*v69.i8, v35);
  v37 = vmul_f32(*&vextq_s8(v69, v69, 8uLL), v35);
  *v38.i8 = vadd_f32(v31, vadd_f32(vzip1_s32(v36, v37), vzip2_s32(v36, v37)));
  v70 = v38;
  v39 = *v38.i32;
  v40 = 1.0 - pow(*v38.i32, 1.5);
  v41 = sqrtf(fmaxf(v40, 0.0));
  v42 = v39 + ((v41 + -1.0) * (v41 + -1.0)) * 0.5625;
  v43 = v70;
  *v43.f64 = v42;
  *&v44 = 3.14159265 - v42;
  v45 = __PAIR64__(v70.u32[1], v44);
  v46 = vmul_f32(*v71.i8, *&v43.f64[0]);
  v47 = vextq_s8(v71, v71, 8uLL).u64[0];
  v48.i64[1] = v71.i64[1];
  *&v43.f64[0] = vmul_f32(v47, *&v43.f64[0]);
  v49 = vadd_f32(v32, vadd_f32(vzip1_s32(v46, *&v43.f64[0]), vzip2_s32(v46, *&v43.f64[0])));
  *&v43.f64[0] = vmul_f32(*v71.i8, v45);
  v50 = vmul_f32(v47, v45);
  *&v43.f64[0] = vadd_f32(v32, vadd_f32(vzip1_s32(*&v43.f64[0], v50), vzip2_s32(*&v43.f64[0], v50)));
  v51 = vdup_lane_s32(vcge_f32(0, *v70.i8), 0);
  v52 = vmul_f32(*v73.i8, v35);
  v53 = vextq_s8(v73, v73, 8uLL);
  *v53.i8 = vmul_f32(*v53.i8, v35);
  *v48.i8 = vzip1_s32(v52, *v53.i8);
  v54 = vadd_f32(v33, vadd_f32(*v48.i8, vzip2_s32(v52, *v53.i8)));
  *&v43.f64[0] = vbsl_s8(v51, v54, *&v43.f64[0]);
  v74 = v43;
  *&v43.f64[0] = vbsl_s8(v51, v35, v49);
  v54.i32[0] = *(v30 + 28);
  *v49.i32 = *(v30 + 24) + (vmuls_lane_f32(*(v30 + 20), *&v43.f64[0], 1) + (*v43.f64 * *(v30 + 16)));
  v53.i32[0] = *(v30 + 36);
  *v51.i32 = vmuls_lane_f32(*(v30 + 32), *&v43.f64[0], 1);
  *v43.f64 = *v53.i32 + (*v51.i32 + (*v43.f64 * *v54.i32));
  v49.i32[1] = LODWORD(v43.f64[0]);
  *v56.i64 = CI::BitmapSampler::read(*(v30 + 8), *&v49, v43, *&v51, *&v54, v53, v48, v70, v55);
  v72 = v56;
  HIDWORD(v57) = v74.i32[1];
  v58.i32[0] = *(v29 + 36);
  *&v59 = vmuls_lane_f32(*(v29 + 32), *v74.i8, 1);
  *&v57 = *&v59 + (*v74.i32 * *(v29 + 28));
  v56.f32[0] = *(v29 + 24) + (vmuls_lane_f32(*(v29 + 20), *v74.i8, 1) + (*v74.i32 * *(v29 + 16)));
  *v60.f64 = *v58.i32 + *&v57;
  v56.f32[1] = *v58.i32 + *&v57;
  *v63.i64 = CI::BitmapSampler::read(*(v29 + 8), *v56.i64, v60, v57, v59, v58, v74, v61, v62);
  v64 = 1.0;
  v65 = vaddq_f32(v63, vmulq_n_f32(v72, 1.0 - v63.f32[3]));
  v66 = (1.0 - v39) * v34;
  if (v66 <= 1.0)
  {
    v64 = (1.0 - v39) * v34;
  }

  if (v66 >= 0.0)
  {
    v67 = v64;
  }

  else
  {
    v67 = 0.0;
  }

  *&result = vmulq_n_f32(v65, v67).u64[0];
  return result;
}

double CI::sw_pageCurlWithShadowTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 56);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  v8 = *(v4 + 8);
  v9 = *(v4 + 32);
  v10 = *(v4 + 80);
  v11 = (a3 + 16 * v10);
  if (*(v4 + 64) != 5)
  {
    v6 = v7;
  }

  v12 = (a2 + (v10 << 6));
  if (*(v4 + 88) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 104);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (*(v4 + 112) == 5)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v4 + 128);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (*(v4 + 136) == 5)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v4 + 152);
  v23 = (a3 + 16 * v22);
  v24 = (a2 + (v22 << 6));
  if (*(v4 + 160) == 5)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v4 + 176);
  v27 = (a3 + 16 * v26);
  v28 = (a2 + (v26 << 6));
  if (*(v4 + 184) == 5)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v30 = *(v4 + 200);
  v31 = *(v4 + 224);
  v32 = (a3 + 16 * v31);
  v33 = (a2 + (v31 << 6));
  if (*(v4 + 232) == 5)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = *(v4 + 248);
  v36 = *(v4 + 272);
  v37 = *(v4 + 296);
  v38 = (a3 + 16 * v37);
  v39 = (a2 + (v37 << 6));
  if (*(v4 + 304) == 5)
  {
    v40 = v38;
  }

  else
  {
    v40 = v39;
  }

  v41 = *(v4 + 328);
  v42 = *(v4 + 320);
  v43 = (a3 + 16 * v42);
  v44 = (a2 + (v42 << 6));
  if (v41 == 5)
  {
    v44 = v43;
  }

  v45 = *v13;
  v46 = a4 + 80 * v9;
  v47 = a4 + 80 * v8;
  v153 = *v6;
  v155 = *v17;
  v48 = *v21;
  v144 = *v25;
  v49 = *v29;
  v147 = *(a2 + (v30 << 6));
  v151 = *v34;
  v50 = *(a2 + (v35 << 6));
  v152 = *(a2 + (v36 << 6));
  v149 = *v40;
  v150 = *v44;
  v52 = *CI::getDC(v34);
  v53 = vmul_f32(*v153.i8, v52);
  v57 = vextq_s8(v153, v153, 8uLL);
  *&v57.f64[0] = vmul_f32(*&v57.f64[0], v52);
  *v54.i8 = vadd_f32(v45, vadd_f32(vzip1_s32(v53, *&v57.f64[0]), vzip2_s32(v53, *&v57.f64[0])));
  v55 = *v54.i32;
  v56 = *v54.i8;
  LODWORD(v57.f64[0]) = v54.i32[0];
  v58 = 0.0;
  v59 = *v54.i32;
  v154 = v54;
  if (*v54.i32 > 0.0)
  {
    v60 = pow(*v54.i32, 1.5);
    v54 = v154;
    *&v60 = sqrt(1.0 - v60) + -1.0;
    v61 = v55 + (*&v60 * *&v60) * 0.5625;
    v62 = v55 * 9999.0;
    v63 = 1.0;
    if (*v154.i32 < 1.0)
    {
      v62 = v61;
    }

    *v57.f64 = v62;
    v56 = __PAIR64__(v154.u32[1], LODWORD(v57.f64[0]));
    v64 = (*v154.i32 + -0.607) / 0.693;
    if (v64 <= 1.0)
    {
      v63 = (*v154.i32 + -0.607) / 0.693;
    }

    if (v64 < 0.0)
    {
      v63 = 0.0;
    }

    if (v55 >= 0.9)
    {
      v61 = v55 + ((v63 * v63) * ((v63 * -2.0) + 3.0)) * 0.570796327;
    }

    v59 = v61;
    v58 = *v154.i32;
  }

  v148 = v59;
  v65.i32[1] = v54.i32[1];
  v65.f32[0] = 3.1416 - *v57.f64;
  *&v57.f64[0] = vmul_f32(*v155.i8, v56);
  v66 = vextq_s8(v155, v155, 8uLL);
  v67 = vmul_f32(*v66.i8, v56);
  v68 = vadd_f32(v48, vadd_f32(vzip1_s32(*&v57.f64[0], v67), vzip2_s32(*&v57.f64[0], v67)));
  *&v57.f64[0] = vmul_f32(*v155.i8, v65);
  v146 = *v66.i8;
  v69 = vmul_f32(*v66.i8, v65);
  *&v57.f64[0] = vadd_f32(v48, vadd_f32(vzip1_s32(*&v57.f64[0], v69), vzip2_s32(*&v57.f64[0], v69)));
  v70 = vdup_lane_s32(vcgt_f32(0, *v54.i8), 0);
  v71 = vmul_f32(*v144.i8, v52);
  v72 = vextq_s8(v144, v144, 8uLL);
  *v72.i8 = vmul_f32(*v72.i8, v52);
  *v66.i8 = vzip1_s32(v71, *v72.i8);
  v73 = vadd_f32(*v66.i8, vzip2_s32(v71, *v72.i8));
  v74 = vadd_f32(v49, v73);
  *&v57.f64[0] = vbsl_s8(v70, v74, *&v57.f64[0]);
  v143 = v57;
  *&v57.f64[0] = vbsl_s8(v70, v52, v68);
  v73.i32[0] = *(v47 + 28);
  *v68.i32 = *(v47 + 24) + (vmuls_lane_f32(*(v47 + 20), *&v57.f64[0], 1) + (*v57.f64 * *(v47 + 16)));
  v72.i32[0] = *(v47 + 36);
  *v70.i32 = vmuls_lane_f32(*(v47 + 32), *&v57.f64[0], 1);
  *v57.f64 = *v72.i32 + (*v70.i32 + (*v57.f64 * v73.f32[0]));
  v68.i32[1] = LODWORD(v57.f64[0]);
  *v75.i64 = CI::BitmapSampler::read(*(v47 + 8), *&v68, v57, *&v70, *&v73, v72, v66, v54, v51);
  v145 = v75;
  HIDWORD(v76) = v143.i32[1];
  v77.i32[0] = *(v46 + 36);
  *&v78 = vmuls_lane_f32(*(v46 + 32), *v143.i8, 1);
  *&v76 = *&v78 + (*v143.i32 * *(v46 + 28));
  v75.f32[0] = *(v46 + 24) + (vmuls_lane_f32(*(v46 + 20), *v143.i8, 1) + (*v143.i32 * *(v46 + 16)));
  *v79.f64 = *v77.i32 + *&v76;
  v75.f32[1] = *v77.i32 + *&v76;
  *v82.i64 = CI::BitmapSampler::read(*(v46 + 8), *v75.i64, v79, v76, v78, v77, v143, v80, v81);
  v83 = (v58 + -0.6) * 2.5;
  v84 = 1.0;
  if (v83 <= 1.0)
  {
    v84 = (v58 + -0.6) * 2.5;
  }

  if (v83 < 0.0)
  {
    v84 = 0.0;
  }

  v85 = v84;
  if (v84 <= 0.75)
  {
    v86 = v85 * 0.375 * v85 + v85 * 0.35;
  }

  else
  {
    v86 = (v85 + -0.82) * 15.0 * (v85 + -0.82) + 0.4;
  }

  v87 = 1.0 - v55;
  v88 = (1.0 - v55) * v147;
  if (v88 <= 1.0)
  {
    v89 = (1.0 - v55) * v147;
  }

  else
  {
    v89 = 1.0;
  }

  _NF = v88 < 0.0;
  v91 = 0.0;
  if (_NF)
  {
    v89 = 0.0;
  }

  v92 = vmulq_n_f32(v82, v89);
  v93 = vmulq_n_f32(v145, v89);
  v94.i32[1] = v154.i32[1];
  v94.f32[0] = 3.1416 - v148;
  v95 = vmul_f32(*v155.i8, v94);
  v96 = vmul_f32(v146, v94);
  *v102.i32 = 1.0 - (v50 + v50);
  *v97.f32 = vmla_n_f32(vmul_n_f32(vadd_f32(v48, vadd_f32(vzip1_s32(v95, v96), vzip2_s32(v95, v96))), *v102.i32), v74, v50 + v50);
  v98 = vmul_f32(*v155.i8, __PAIR64__(v154.u32[1], LODWORD(v148)));
  v99 = vmul_f32(v146, __PAIR64__(v154.u32[1], LODWORD(v148)));
  *v100.f32 = vmla_n_f32(vmul_n_f32(vadd_f32(v48, vadd_f32(vzip1_s32(v98, v99), vzip2_s32(v98, v99))), *v102.i32), v52, v50 + v50);
  v101 = v86;
  v102.i32[1] = v150.i32[1];
  v103 = vmulq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(v149, 1.0 - v101), v150, v101), v92, 3);
  v104 = vaddq_f32(v103, vmulq_n_f32(v92, 1.0 - v103.f32[3]));
  v105 = (*v154.i32 + -0.5) + (*v154.i32 + -0.5);
  if (v105 <= 1.0)
  {
    v106 = (*v154.i32 + -0.5) + (*v154.i32 + -0.5);
  }

  else
  {
    v106 = 1.0;
  }

  if (v105 >= 0.0)
  {
    v107 = v106;
  }

  else
  {
    v107 = 0.0;
  }

  v108 = v50 * (vmuls_lane_f32((((v107 * v107) * ((v107 * -2.0) + 3.0)) * 1.25) + ((1.0 - ((v107 * v107) * ((v107 * -2.0) + 3.0))) * 2.0), v93, 3) + ((1.0 - v93.f32[3]) * 2.3));
  *v102.i32 = v147 * v108;
  v109 = v151;
  v110 = vextq_s8(v109, v109, 8uLL).u64[0];
  v111.i64[0] = v151.i64[0];
  v111.i64[1] = v97.i64[0];
  v97.i64[1] = v110;
  v112 = vsubq_f32(v97, v111);
  v113 = vdupq_n_s32(0x3F23D70Au);
  v114 = vdivq_f32(v112, vdupq_lane_s32(v102, 0));
  v115.i64[0] = 0x3F0000003F000000;
  v115.i64[1] = 0x3F0000003F000000;
  v116 = vdupq_n_s32(0x3E0F5C29u);
  __asm
  {
    FMOV            V18.4S, #1.0
    FMOV            V21.4S, #-1.0
  }

  v122 = vbslq_s8(vcltzq_f32(vaddq_f32(v114, _Q21)), vbicq_s8(vsubq_f32(vaddq_f32(vmulq_f32(v114, v113), v115), vmulq_f32(v114, vmulq_f32(v114, vmulq_f32(v114, v116)))), vcltzq_f32(vaddq_f32(v114, _Q18))), _Q18);
  v123 = v87 / v108;
  v124 = v123 * 0.64 + 0.5 + v123 * -0.14 * v123 * v123;
  if (v123 <= -1.0)
  {
    v124 = 0.0;
  }

  if (v123 < 1.0)
  {
    v125 = v124;
  }

  else
  {
    v125 = 1.0;
  }

  v126 = v125 * vmuls_lane_f32(vmuls_lane_f32(vmuls_lane_f32(v122.f32[0], *v122.f32, 1), v122, 2), v122, 3);
  if (v126 <= 1.0)
  {
    v127 = v126;
  }

  else
  {
    v127 = 1.0;
  }

  if (v126 >= 0.0)
  {
    v128 = v127;
  }

  else
  {
    v128 = 0.0;
  }

  v129 = vmul_f32(*v154.i8, *v154.i8).f32[0];
  if (v129 > 1.5)
  {
    v129 = 1.5;
  }

  v130 = v129 * 0.65;
  *&v130 = v130;
  v131 = v87 / (v50 * 2.5);
  v132 = v131 * 0.64 + 0.5 + v131 * -0.14 * v131 * v131;
  if (v131 <= -1.0)
  {
    v132 = 0.0;
  }

  if (v131 < 1.0)
  {
    v133 = v132;
  }

  else
  {
    v133 = 1.0;
  }

  if (*v154.i32 <= 1.0)
  {
    v134 = *v154.i32;
  }

  else
  {
    v134 = 1.0;
  }

  if (*v154.i32 < 0.0)
  {
    *&v130 = 0.0;
  }

  v109.i64[1] = v100.i64[0];
  *&v130 = v147 * ((v50 * *&v130) * 2.5);
  v100.i64[1] = v110;
  v135 = vdivq_f32(vsubq_f32(v100, v109), vdupq_lane_s32(*&v130, 0));
  v136 = vbslq_s8(vcltzq_f32(vaddq_f32(v135, _Q21)), vbicq_s8(vsubq_f32(vaddq_f32(vmulq_f32(v135, v113), v115), vmulq_f32(v135, vmulq_f32(v135, vmulq_f32(v135, v116)))), vcltzq_f32(vaddq_f32(v135, _Q18))), _Q18);
  v137 = (1.0 - v93.f32[3]) * (v133 * vmuls_lane_f32(vmuls_lane_f32(vmuls_lane_f32(v136.f32[0], *v136.f32, 1), v136, 2), v136, 3));
  if (*v154.i32 >= 0.0)
  {
    v138 = v134;
  }

  else
  {
    v138 = 0.0;
  }

  v139 = v138 * v137;
  if (v139 <= 1.0)
  {
    v140 = v139;
  }

  else
  {
    v140 = 1.0;
  }

  if (fminf(*v154.i32, v139) >= 0.0)
  {
    v91 = v140;
  }

  v141.i64[0] = 0;
  v141.i32[2] = 0;
  v141.f32[3] = v152 * fminf(fmaxf(v128, v91), 0.5);
  *&result = vaddq_f32(v104, vmulq_n_f32(vaddq_f32(v141, vmulq_n_f32(v93, 1.0 - v141.f32[3])), 1.0 - v104.f32[3])).u64[0];
  return result;
}

double CI::sw_pageCurlNoShadowTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = *(v5 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v5 + 64) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v5 + 80);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v5 + 88) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v5 + 104);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v5 + 112) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v5 + 128);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v5 + 136) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v5 + 152);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v5 + 160) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v5 + 176);
  v29 = (a3 + 16 * v28);
  v30 = (a2 + (v28 << 6));
  if (*(v5 + 184) == 5)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = *(v5 + 200);
  v33 = *(v5 + 224);
  v34 = (a3 + 16 * v33);
  v35 = (a2 + (v33 << 6));
  if (*(v5 + 232) == 5)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  v37 = *(v5 + 256);
  v38 = *(v5 + 248);
  v39 = (a3 + 16 * v38);
  v40 = (a2 + (v38 << 6));
  if (v37 == 5)
  {
    v40 = v39;
  }

  v41 = a4 + 80 * v7;
  v42 = a4 + 80 * v6;
  v43 = *v15;
  v90 = *v11;
  v92 = *v19;
  v44 = *v23;
  v45 = *v31;
  v46 = *(a2 + (v32 << 6));
  v94 = *v27;
  v96 = *v36;
  v97 = *v40;
  v47 = *CI::getDC(v36);
  v48 = vmul_f32(*v90.i8, v47);
  v49 = vmul_f32(*&vextq_s8(v90, v90, 8uLL), v47);
  *v50.i8 = vadd_f32(v43, vadd_f32(vzip1_s32(v48, v49), vzip2_s32(v48, v49)));
  v91 = v50;
  v4.i32[0] = v50.i32[0];
  v51 = *v50.i32;
  v52 = pow(*v50.i32, 1.5);
  v55 = v51;
  if (v4.f32[0] > 0.0)
  {
    if (v4.f32[0] >= 1.0)
    {
      v55 = v51 * 9999.0;
    }

    else
    {
      v56 = sqrt(1.0 - v52) + -1.0;
      v55 = v51 + (v56 * v56) * 0.5625;
    }
  }

  v57 = v55;
  v58 = v91;
  v59 = v91;
  *v59.f64 = v57;
  *v58.i32 = 3.1416 - v57;
  v60 = vmul_f32(*v92.i8, *&v59.f64[0]);
  v61 = vextq_s8(v92, v92, 8uLL).u64[0];
  *&v59.f64[0] = vmul_f32(v61, *&v59.f64[0]);
  v62 = vadd_f32(v44, vadd_f32(vzip1_s32(v60, *&v59.f64[0]), vzip2_s32(v60, *&v59.f64[0])));
  *&v59.f64[0] = vmul_f32(*v92.i8, *v58.i8);
  v63 = vmul_f32(v61, *v58.i8);
  *&v59.f64[0] = vadd_f32(v44, vadd_f32(vzip1_s32(*&v59.f64[0], v63), vzip2_s32(*&v59.f64[0], v63)));
  v64 = vdup_lane_s32(vcgt_f32(0, v4), 0);
  v65 = vmul_f32(*v94.i8, v47);
  v66 = vextq_s8(v94, v94, 8uLL);
  *v66.i8 = vmul_f32(*v66.i8, v47);
  *v58.i8 = vzip1_s32(v65, *v66.i8);
  v67 = vadd_f32(v45, vadd_f32(*v58.i8, vzip2_s32(v65, *v66.i8)));
  *&v59.f64[0] = vbsl_s8(v64, v67, *&v59.f64[0]);
  v93 = v59;
  *&v59.f64[0] = vbsl_s8(v64, v47, v62);
  v67.i32[0] = *(v42 + 28);
  *v62.i32 = *(v42 + 24) + (vmuls_lane_f32(*(v42 + 20), *&v59.f64[0], 1) + (*v59.f64 * *(v42 + 16)));
  v66.i32[0] = *(v42 + 36);
  *v64.i32 = vmuls_lane_f32(*(v42 + 32), *&v59.f64[0], 1);
  *v59.f64 = *v66.i32 + (*v64.i32 + (*v59.f64 * *v67.i32));
  v62.i32[1] = LODWORD(v59.f64[0]);
  *v68.i64 = CI::BitmapSampler::read(*(v42 + 8), *&v62, v59, *&v64, *&v67, v66, v58, v53, v54);
  v95 = v68;
  HIDWORD(v69) = v93.i32[1];
  v70.i32[0] = *(v41 + 36);
  *&v71 = vmuls_lane_f32(*(v41 + 32), *v93.i8, 1);
  *&v69 = *&v71 + (*v93.i32 * *(v41 + 28));
  v68.f32[0] = *(v41 + 24) + (vmuls_lane_f32(*(v41 + 20), *v93.i8, 1) + (*v93.i32 * *(v41 + 16)));
  *v72.f64 = *v70.i32 + *&v69;
  v68.f32[1] = *v70.i32 + *&v69;
  *v75.i64 = CI::BitmapSampler::read(*(v41 + 8), *v68.i64, v72, v69, v71, v70, v93, v73, v74);
  if (v4.f32[0] > 0.0)
  {
    v76 = v4.f32[0];
  }

  else
  {
    v76 = 0.0;
  }

  v77 = (v76 + -0.6) * 2.5;
  v78 = 1.0;
  if (v77 <= 1.0)
  {
    v78 = v77;
  }

  if (v77 < 0.0)
  {
    v78 = 0.0;
  }

  v79 = v78;
  if (v78 <= 0.75)
  {
    v80 = v79 * 0.375 * v79 + v79 * 0.35;
  }

  else
  {
    v80 = (v79 + -0.82) * 15.0 * (v79 + -0.82) + 0.4;
  }

  v81 = (1.0 - v51) * v46;
  if (v81 <= 1.0)
  {
    v82 = (1.0 - v51) * v46;
  }

  else
  {
    v82 = 1.0;
  }

  v83 = v81 < 0.0;
  v84 = 0.0;
  if (!v83)
  {
    v84 = v82;
  }

  v85 = vmulq_n_f32(v75, v84);
  v86 = v80;
  v87 = vmulq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(v96, 1.0 - v86), v97, v86), v85, 3);
  v88 = vaddq_f32(v87, vmulq_n_f32(v85, 1.0 - v87.f32[3]));
  *&result = vaddq_f32(v88, vmulq_n_f32(vmulq_n_f32(v95, v84), 1.0 - v88.f32[3])).u64[0];
  return result;
}

float32x2_t CI::sw_parallelogramTile(CI *a1, uint64_t a2, uint64_t a3)
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
  v32 = *v11;
  v33 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v32.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v32, v32, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v27 = vminnm_f32(v21, vsub_f32(_D1, v21));
  v28 = vadd_f32(v27, v27);
  v29 = vmul_f32(*v33.i8, v28);
  v30 = vmul_f32(*&vextq_s8(v33, v33, 8uLL), v28);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v29, v30), vzip2_s32(v29, v30)));
}

uint64_t ci_signpost_log_perspectiveAC(void)
{
  if (ci_signpost_log_perspectiveAC(void)::onceToken != -1)
  {
    ci_signpost_log_perspectiveAC();
  }

  return ci_signpost_log_perspectiveAC(void)::log;
}

os_log_t ___Z29ci_signpost_log_perspectiveACv_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_perspectiveAC");
  ci_signpost_log_perspectiveAC(void)::log = result;
  return result;
}

uint64_t CIPerspectiveAutoCalcDefaultImpl(void)
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    v1 = [v0 integerValue];
    v2 = 2;
    if (v1 < 2)
    {
      v2 = v1;
    }

    if (v2 != 1 && v2 != 2)
    {
      CIPerspectiveAutoCalcDefaultImpl();
    }
  }

  return objc_opt_class();
}

uint64_t CI::Perspective::plotLines<CI::Perspective::Line>(void *a1, CGColor *a2, uint64_t **a3)
{
  [a1 extent];
  v7 = v6;
  [a1 extent];
  v9 = v8;
  if (v7 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v10 < 0x1F4)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 / 0x1F4;
  }

  [a1 extent];
  v13 = v12;
  [a1 extent];
  v15 = v14;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v17 = CGBitmapContextCreate(0, v7, v9, 8uLL, 4 * v7, DeviceRGB, 1u);
  CGContextSetStrokeColorWithColor(v17, a2);
  CGContextSetLineWidth(v17, v11);
  v19 = *a3;
  v18 = a3[1];
  if (v19 != v18)
  {
    v20 = (2 * v11);
    v42 = v15;
    do
    {
      v21 = *v19;
      v22 = v19[1];
      v19 += 2;
      v23 = *&v22 - v13;
      v24 = *(&v22 + 1) - v15;
      v25 = (*&v21 - v13);
      v26 = (*(&v21 + 1) - v15);
      CGContextMoveToPoint(v17, v25, v26);
      v27 = v23;
      v28 = v24;
      CGContextAddLineToPoint(v17, v27, v28);
      v29 = v25 - v20;
      v30 = v20 + v26;
      CGContextMoveToPoint(v17, v25 - v20, v20 + v26);
      v31 = v20 + v25;
      v32 = v26 - v20;
      CGContextAddLineToPoint(v17, v31, v32);
      CGContextMoveToPoint(v17, v29, v32);
      CGContextAddLineToPoint(v17, v31, v30);
      v33 = v27 - v20;
      v34 = v20 + v28;
      CGContextMoveToPoint(v17, v27 - v20, v20 + v28);
      v35 = v20 + v27;
      v36 = v28 - v20;
      CGContextAddLineToPoint(v17, v35, v36);
      CGContextMoveToPoint(v17, v33, v36);
      v37 = v34;
      v15 = v42;
      CGContextAddLineToPoint(v17, v35, v37);
    }

    while (v19 != v18);
  }

  CGContextStrokePath(v17);
  Image = CGBitmapContextCreateImage(v17);
  v39 = [CIImage imageWithCGImage:Image];
  CGAffineTransformMakeTranslation(&v43, v13, v15);
  v40 = [[(CIImage *)v39 imageByApplyingTransform:&v43] imageByCompositingOverImage:a1];
  CGImageRelease(Image);
  CGContextRelease(v17);
  CGColorSpaceRelease(DeviceRGB);
  return v40;
}

void *std::vector<CI::Perspective::Line>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::Line>>(result, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_19CD83E40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CI::Perspective::Line>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::Line>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::Line>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

char *___ZN2CI11PerspectiveL24CI_AUTOPERSPECTIVE_DEBUGEv_block_invoke()
{
  result = getenv("CI_AUTOPERSPECTIVE_DEBUG");
  CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump = result != 0;
  return result;
}

double CI::sw_gradientNormalizeV1(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_n_f32(*v7, *(a2 + (*(v3 + 32) << 6))).u64[0];
  return result;
}

double CI::sw_gradientThresholdV1(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  v9 = sqrtf(vaddv_f32(*&vmulq_f32(v8, v8)));
  v10 = (v9 - *(a2 + (*(v3 + 32) << 6))) / (*(a2 + (*(v3 + 56) << 6)) - *(a2 + (*(v3 + 32) << 6)));
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v11 = (v9 - *(a2 + (*(v3 + 32) << 6))) / (*(a2 + (*(v3 + 56) << 6)) - *(a2 + (*(v3 + 32) << 6)));
  }

  v12 = v10 < 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  *&result = vmulq_n_f32(v8, (v13 * v13) * ((v13 * -2.0) + 3.0)).u64[0];
  return result;
}

unint64_t CI::sw_gradientRangeLimit(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  LODWORD(v9) = HIDWORD(v7->i64[0]);
  v10 = fabsf(v9);
  v11 = fabsf(COERCE_FLOAT(*v7));
  v12 = 0;
  if ((v10 + v11) >= 0.001)
  {
    if (v11 >= v10)
    {
      v13 = *(a2 + (*(v3 + 80) << 6));
      v14 = *(a2 + (*(v3 + 104) << 6));
      v15 = v9 / v8.f32[0];
    }

    else
    {
      v13 = *(a2 + (*(v3 + 32) << 6));
      v14 = *(a2 + (*(v3 + 56) << 6));
      v15 = v8.f32[0] / v9;
    }

    v16 = (v15 - v13) / (v14 - v13);
    if (v16 <= 1.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1.0;
    }

    v18 = v16 < 0.0;
    v19 = 0.0;
    if (!v18)
    {
      v19 = v17;
    }

    return vmulq_n_f32(v8, 1.0 - ((v19 * v19) * ((v19 * -2.0) + 3.0))).u64[0];
  }

  return v12;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::$_0::operator() const(std::vector<CI::Perspective::Line> const&,unsigned long)::{lambda(-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&)#1} &,std::__wrap_iter<-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis*>>(uint64_t result, uint64_t a2, float *a3)
{
  if (a2 >= 2)
  {
    v3 = (a2 - 2) >> 1;
    if (v3 >= (0xCCCCCCCCCCCCCCCDLL * ((a3 - result) >> 3)))
    {
      v4 = (0x999999999999999ALL * ((a3 - result) >> 3)) | 1;
      v5 = (result + 40 * v4);
      if ((0x999999999999999ALL * ((a3 - result) >> 3) + 2) < a2 && *(v5 + 8) > *(v5 + 18))
      {
        v5 = (v5 + 40);
        v4 = 0x999999999999999ALL * ((a3 - result) >> 3) + 2;
      }

      v6 = a3[8];
      if (*(v5 + 8) <= v6)
      {
        v13 = *a3;
        v14 = *(a3 + 1);
        v7 = *(a3 + 9);
        do
        {
          v8 = a3;
          a3 = v5;
          v9 = *v5;
          v10 = v5[1];
          *(v8 + 4) = *(v5 + 4);
          *v8 = v9;
          *(v8 + 1) = v10;
          if (v3 < v4)
          {
            break;
          }

          v11 = 2 * v4;
          v4 = (2 * v4) | 1;
          v5 = (result + 40 * v4);
          v12 = v11 + 2;
          if (v12 < a2 && *(v5 + 8) > *(v5 + 18))
          {
            v5 = (v5 + 40);
            v4 = v12;
          }
        }

        while (*(v5 + 8) <= v6);
        *a3 = v13;
        *(a3 + 1) = v14;
        a3[8] = v6;
        *(a3 + 9) = v7;
      }
    }
  }

  return result;
}

void std::vector<CI::Perspective::Line>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::Line>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
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

void *std::vector<CI::Perspective::Line>::__assign_with_size[abi:nn200100]<CI::Perspective::Line*,CI::Perspective::Line*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CI::Perspective::Line>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
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

void sub_19CD88AB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<LineCostProxy>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<IRect>>(result, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void std::vector<LineCostProxy>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<IRect>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

char *___ZN2CI11PerspectiveL24CI_AUTOPERSPECTIVE_DEBUGEv_block_invoke_0()
{
  result = getenv("CI_AUTOPERSPECTIVE_DEBUG");
  CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump = result != 0;
  return result;
}

double CI::sw_lumaRange(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *(v3 + 32) << 6;
  v9 = *(a2 + (*(v3 + 56) << 6));
  v11 = vmulq_f32(*v7, xmmword_19CF283E0);
  v10 = vaddv_f32(*v11.f32);
  v11.f32[0] = ((v11.f32[2] + v10) - *(a2 + v8)) / (v9 - *(a2 + v8));
  if (v11.f32[0] <= 1.0)
  {
    v12 = ((v11.f32[2] + v10) - *(a2 + v8)) / (v9 - *(a2 + v8));
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v11.f32[0] < 0.0;
  v14 = 0;
  if (!v13)
  {
    *v14.i32 = v12;
  }

  *v14.i32 = (*v14.i32 * *v14.i32) * ((*v14.i32 * -2.0) + 3.0);
  *&result = vdupq_lane_s32(v14, 0).u64[0];
  return result;
}

double CI::sw_gradientNormalizeV2(uint64_t a1, uint64_t a2, uint64_t a3)
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

  *&result = vmulq_n_f32(vsubq_f32(*v7, vdupq_lane_s32(*v11, 0)), 1.0 / (COERCE_FLOAT(HIDWORD(*v11)) - COERCE_FLOAT(*v11->i8))).u64[0];
  return result;
}

double CI::sw_gradientThresholdV2(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v8 = *v7;
  v9 = sqrtf(vaddv_f32(*&vmulq_f32(v8, v8)));
  v10 = (v9 - *(a2 + (*(v3 + 32) << 6))) / (*(a2 + (*(v3 + 56) << 6)) - *(a2 + (*(v3 + 32) << 6)));
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v11 = (v9 - *(a2 + (*(v3 + 32) << 6))) / (*(a2 + (*(v3 + 56) << 6)) - *(a2 + (*(v3 + 32) << 6)));
  }

  v12 = v10 < 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  *&result = vmulq_n_f32(v8, (v13 * v13) * ((v13 * -2.0) + 3.0)).u64[0];
  return result;
}

uint64_t _ZN2CI11Perspective9NMSimplexIDv3_fEC2ENS0_8NMParamsEU13block_pointerFfRKS2_EPS5_m(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unint64_t a5)
{
  v5 = a5;
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v11 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  _ZNSt3__16vectorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexENS_9allocatorIS6_EEE7reserveEm((a1 + 40), a5);
  for (; v5; --v5)
  {
    v54 = *a4;
    v12 = (*(a3 + 16))(a3, a4);
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    if (v14 >= v13)
    {
      v16 = (v14 - *v11) >> 5;
      v17 = v16 + 1;
      if ((v16 + 1) >> 59)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v18 = v13 - *v11;
      if (v18 >> 4 > v17)
      {
        v17 = v18 >> 4;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(v11, v19);
      }

      v20 = 32 * v16;
      *v20 = v54;
      *(v20 + 16) = v12;
      v15 = 32 * v16 + 32;
      v21 = *(a1 + 40);
      v22 = *(a1 + 48) - v21;
      v23 = 32 * v16 - v22;
      memcpy((v20 - v22), v21, v22);
      v24 = *(a1 + 40);
      *(a1 + 40) = v23;
      *(a1 + 48) = v15;
      *(a1 + 56) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v54;
      *(v14 + 16) = v12;
      v15 = v14 + 32;
    }

    *(a1 + 48) = v15;
    ++a4;
  }

  for (*(a1 + 64) = 1; !_ZNK2CI11Perspective9NMSimplexIDv3_fE15shouldTerminateEv(a1); ++*(a1 + 64))
  {
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = 126 - 2 * __clz((v28 - v27) >> 5);
    if (v28 == v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(v27, v28, &v61, v30, 1, v25);
    v33 = *(a1 + 40);
    v32 = *(a1 + 48);
    v34 = v32 - v33;
    v35 = 0uLL;
    if ((v32 - v33) >> 5 != 1)
    {
      v36 = *(a1 + 40);
      v37 = ((v32 - v33) >> 5) - 1;
      do
      {
        v38 = *v36;
        v36 += 2;
        v31.i32[1] = v38.i32[1];
        v35 = vaddq_f32(v35, v38);
        --v37;
      }

      while (v37);
    }

    *v31.i32 = (((v32 - v33) >> 5) - 1);
    v61.i32[2] = 0;
    v61.i64[0] = 0;
    v55 = vdivq_f32(v35, vdupq_lane_s32(v31, 0));
    v52 = vmlaq_n_f32(v55, vsubq_f32(v55, *(v32 - 32)), *a1);
    v61 = v52;
    v39.i32[0] = (*(a3 + 16))(a3, &v61);
    v40 = (v33 + v34);
    v41 = v33[1].f32[0];
    if (v41 <= v39.f32[0] && v39.f32[0] < *v40[-3].i32)
    {
      v40[-2] = v52;
      v40[-1].i32[0] = v39.i32[0];
    }

    else
    {
      if (v39.f32[0] < v41)
      {
        v51 = v39;
        v56 = vmlaq_n_f32(v55, vsubq_f32(v61, v55), *(a1 + 4));
        v60 = v56;
        *v43.i64 = (*(a3 + 16))(a3, &v60);
        v44 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v51, v43), 0), v56, v52);
        v40[-1].i32[3] = 0;
        *(v40[-1].i64 + 4) = 0;
        if (v43.f32[0] >= v51.f32[0])
        {
          v43.f32[0] = v51.f32[0];
        }

        v40[-2] = v44;
        v40[-1].i32[0] = v43.i32[0];
        continue;
      }

      v60.i32[2] = 0;
      v60.i64[0] = 0;
      v57 = vmlaq_n_f32(v55, vsubq_f32(*(*(a1 + 48) - 32), v55), *(a1 + 8));
      v60 = v57;
      v45 = (*(a3 + 16))(a3, &v60);
      if (v45 >= *v40[-1].i32)
      {
        v46 = *(a1 + 40);
        if ((*(a1 + 48) - v46) >= 0x21)
        {
          v47 = 0;
          v53 = *v33;
          v48 = 1;
          do
          {
            v59.i32[2] = 0;
            v59.i64[0] = 0;
            v58 = vmlaq_n_f32(v53, vsubq_f32(*(v46 + v47 + 32), v53), *(a2 + 12));
            v59 = v58;
            v49 = (*(a3 + 16))(a3, &v59);
            v50 = (*(a1 + 40) + v47);
            v50[2] = v58;
            v50[3].f32[0] = v49;
            ++v48;
            v46 = *(a1 + 40);
            v47 += 32;
          }

          while (v48 < (*(a1 + 48) - v46) >> 5);
        }

        continue;
      }

      v40[-2] = v57;
      *v40[-1].i32 = v45;
    }

    *(v40[-1].i64 + 4) = 0;
    v40[-1].i32[3] = 0;
  }

  return a1;
}

void sub_19CD8B250(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexENS_9allocatorIS6_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 5)
  {
    if (!(a2 >> 59))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(result, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

BOOL _ZNK2CI11Perspective9NMSimplexIDv3_fE15shouldTerminateEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && *(a1 + 64) >= v1)
  {
    return 1;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    v6 = ((v3 - v2) >> 5);
    v7 = 0.0;
  }

  else
  {
    v4 = 0.0;
    v5 = *(a1 + 40);
    do
    {
      v4 = v4 + *(v5 + 16);
      v5 += 32;
    }

    while (v5 != v3);
    v6 = ((v3 - v2) >> 5);
    v7 = 0.0;
    if (v3 != v2)
    {
      v8 = v4 / v6;
      do
      {
        v7 = v7 + ((*(v2 + 16) - v8) * (*(v2 + 16) - v8));
        v2 += 32;
      }

      while (v2 != v3);
    }
  }

  return sqrtf(v7 / v6) < *(a1 + 16);
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

__n128 _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(unint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  n128_u64 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = n128_u64;
    v14 = v13;
    v15 = (a2 - n128_u64) >> 5;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[0];
        if (result.n128_f32[0] < *(n128_u64 + 16))
        {
          v108 = *n128_u64;
          v136 = *(n128_u64 + 16);
          v65 = a2[-1];
          *n128_u64 = a2[-2];
          *(n128_u64 + 16) = v65;
          a2[-2] = v108;
          result = v136;
          a2[-1] = v136;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v66 = *(n128_u64 + 48);
      v67 = *(n128_u64 + 80);
      if (v66 >= *(n128_u64 + 16))
      {
        if (v67 < v66)
        {
          v71 = *(n128_u64 + 32);
          result = *(n128_u64 + 48);
          v72 = *(n128_u64 + 80);
          *(n128_u64 + 32) = *(n128_u64 + 64);
          *(n128_u64 + 48) = v72;
          *(n128_u64 + 64) = v71;
          *(n128_u64 + 80) = result;
          if (*(n128_u64 + 48) < *(n128_u64 + 16))
          {
            v110 = *n128_u64;
            v138 = *(n128_u64 + 16);
            v73 = *(n128_u64 + 48);
            *n128_u64 = *(n128_u64 + 32);
            *(n128_u64 + 16) = v73;
            result = v110;
            *(n128_u64 + 32) = v110;
            *(n128_u64 + 48) = v138;
          }
        }
      }

      else if (v67 >= v66)
      {
        v112 = *n128_u64;
        v140 = *(n128_u64 + 16);
        v77 = *(n128_u64 + 48);
        *n128_u64 = *(n128_u64 + 32);
        *(n128_u64 + 16) = v77;
        *(n128_u64 + 32) = v112;
        *(n128_u64 + 48) = v140;
        if (v67 < *(n128_u64 + 48))
        {
          v78 = *(n128_u64 + 32);
          result = *(n128_u64 + 48);
          v79 = *(n128_u64 + 80);
          *(n128_u64 + 32) = *(n128_u64 + 64);
          *(n128_u64 + 48) = v79;
          *(n128_u64 + 64) = v78;
          *(n128_u64 + 80) = result;
        }
      }

      else
      {
        v109 = *n128_u64;
        v137 = *(n128_u64 + 16);
        v68 = *(n128_u64 + 80);
        *n128_u64 = *(n128_u64 + 64);
        *(n128_u64 + 16) = v68;
        result = v109;
        *(n128_u64 + 64) = v109;
        *(n128_u64 + 80) = v137;
      }

      result.n128_u32[0] = a2[-1].n128_u32[0];
      if (result.n128_f32[0] < *(n128_u64 + 80))
      {
        v80 = *(n128_u64 + 64);
        result = *(n128_u64 + 80);
        v81 = a2[-1];
        *(n128_u64 + 64) = *v9;
        *(n128_u64 + 80) = v81;
        *v9 = v80;
        a2[-1] = result;
        result.n128_u32[0] = *(n128_u64 + 80);
        if (result.n128_f32[0] < *(n128_u64 + 48))
        {
          v82 = *(n128_u64 + 32);
          result = *(n128_u64 + 48);
          v83 = *(n128_u64 + 80);
          *(n128_u64 + 32) = *(n128_u64 + 64);
          *(n128_u64 + 48) = v83;
          *(n128_u64 + 64) = v82;
          *(n128_u64 + 80) = result;
LABEL_103:
          result.n128_u32[0] = *(n128_u64 + 48);
          if (result.n128_f32[0] < *(n128_u64 + 16))
          {
            v113 = *n128_u64;
            v141 = *(n128_u64 + 16);
            v84 = *(n128_u64 + 48);
            *n128_u64 = *(n128_u64 + 32);
            *(n128_u64 + 16) = v84;
            result = v113;
            *(n128_u64 + 32) = v113;
            *(n128_u64 + 48) = v141;
          }

          return result;
        }
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(n128_u64, (n128_u64 + 32), (n128_u64 + 64), (n128_u64 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        _ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(n128_u64, a2);
      }

      else
      {

        _ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(n128_u64, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (n128_u64 != a2)
      {

        _ZNSt3__119__partial_sort_implB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_SC_EET1_SD_SD_T2_OT0_(n128_u64, a2, a2, a3);
      }

      return result;
    }

    v16 = n128_u64 + 32 * (v15 >> 1);
    v17 = a2[-1].n128_f32[0];
    if (v15 >= 0x81)
    {
      v18 = *(v16 + 16);
      if (v18 >= *(n128_u64 + 16))
      {
        if (v17 < v18)
        {
          v88 = *v16;
          v116 = *(v16 + 16);
          v22 = a2[-1];
          *v16 = *v9;
          *(v16 + 16) = v22;
          *v9 = v88;
          a2[-1] = v116;
          if (*(v16 + 16) < *(n128_u64 + 16))
          {
            v89 = *n128_u64;
            v117 = *(n128_u64 + 16);
            v23 = *(v16 + 16);
            *n128_u64 = *v16;
            *(n128_u64 + 16) = v23;
            *v16 = v89;
            *(v16 + 16) = v117;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v86 = *n128_u64;
          v114 = *(n128_u64 + 16);
          v19 = a2[-1];
          *n128_u64 = *v9;
          *(n128_u64 + 16) = v19;
          goto LABEL_27;
        }

        v92 = *n128_u64;
        v120 = *(n128_u64 + 16);
        v26 = *(v16 + 16);
        *n128_u64 = *v16;
        *(n128_u64 + 16) = v26;
        *v16 = v92;
        *(v16 + 16) = v120;
        if (a2[-1].n128_f32[0] < *(v16 + 16))
        {
          v86 = *v16;
          v114 = *(v16 + 16);
          v27 = a2[-1];
          *v16 = *v9;
          *(v16 + 16) = v27;
LABEL_27:
          *v9 = v86;
          a2[-1] = v114;
        }
      }

      v28 = (v16 - 32);
      v29 = *(v16 - 16);
      v30 = a2[-3].n128_f32[0];
      if (v29 >= *(n128_u64 + 48))
      {
        if (v30 < v29)
        {
          v93 = *v28;
          v121 = *(v16 - 16);
          v34 = a2[-3];
          *v28 = *v10;
          *(v16 - 16) = v34;
          *v10 = v93;
          a2[-3] = v121;
          if (*(v16 - 16) < *(n128_u64 + 48))
          {
            v94 = *(n128_u64 + 32);
            v122 = *(n128_u64 + 48);
            v35 = *(v16 - 16);
            *(n128_u64 + 32) = *v28;
            *(n128_u64 + 48) = v35;
            *v28 = v94;
            *(v16 - 16) = v122;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v32 = *(n128_u64 + 32);
          v31 = *(n128_u64 + 48);
          v33 = a2[-3];
          *(n128_u64 + 32) = *v10;
          *(n128_u64 + 48) = v33;
          *v10 = v32;
          goto LABEL_39;
        }

        v96 = *(n128_u64 + 32);
        v124 = *(n128_u64 + 48);
        v38 = *(v16 - 16);
        *(n128_u64 + 32) = *v28;
        *(n128_u64 + 48) = v38;
        *v28 = v96;
        *(v16 - 16) = v124;
        if (a2[-3].n128_f32[0] < *(v16 - 16))
        {
          v97 = *v28;
          v125 = *(v16 - 16);
          v39 = a2[-3];
          *v28 = *v10;
          *(v16 - 16) = v39;
          *v10 = v97;
          v31 = v125;
LABEL_39:
          a2[-3] = v31;
        }
      }

      v40 = (v16 + 32);
      v41 = *(v16 + 48);
      v42 = a2[-5].n128_f32[0];
      if (v41 >= *(n128_u64 + 80))
      {
        if (v42 < v41)
        {
          v98 = *v40;
          v126 = *(v16 + 48);
          v46 = a2[-5];
          *v40 = *v11;
          *(v16 + 48) = v46;
          *v11 = v98;
          a2[-5] = v126;
          if (*(v16 + 48) < *(n128_u64 + 80))
          {
            v99 = *(n128_u64 + 64);
            v127 = *(n128_u64 + 80);
            v47 = *(v16 + 48);
            *(n128_u64 + 64) = *v40;
            *(n128_u64 + 80) = v47;
            *v40 = v99;
            *(v16 + 48) = v127;
          }
        }
      }

      else
      {
        if (v42 < v41)
        {
          v44 = *(n128_u64 + 64);
          v43 = *(n128_u64 + 80);
          v45 = a2[-5];
          *(n128_u64 + 64) = *v11;
          *(n128_u64 + 80) = v45;
          *v11 = v44;
          goto LABEL_48;
        }

        v100 = *(n128_u64 + 64);
        v128 = *(n128_u64 + 80);
        v48 = *(v16 + 48);
        *(n128_u64 + 64) = *v40;
        *(n128_u64 + 80) = v48;
        *v40 = v100;
        *(v16 + 48) = v128;
        if (a2[-5].n128_f32[0] < *(v16 + 48))
        {
          v101 = *v40;
          v129 = *(v16 + 48);
          v49 = a2[-5];
          *v40 = *v11;
          *(v16 + 48) = v49;
          *v11 = v101;
          v43 = v129;
LABEL_48:
          a2[-5] = v43;
        }
      }

      v50 = *(v16 + 16);
      v51 = *(v16 + 48);
      if (v50 >= *(v16 - 16))
      {
        if (v51 < v50)
        {
          v103 = *v16;
          v131 = *(v16 + 16);
          v53 = *(v16 + 48);
          *v16 = *v40;
          *(v16 + 16) = v53;
          *v40 = v103;
          *(v16 + 48) = v131;
          if (*(v16 + 16) < *(v16 - 16))
          {
            v104 = *v28;
            v132 = *(v16 - 16);
            v54 = *(v16 + 16);
            *v28 = *v16;
            *(v16 - 16) = v54;
            *v16 = v104;
            *(v16 + 16) = v132;
          }
        }
      }

      else
      {
        if (v51 < v50)
        {
          v102 = *v28;
          v130 = *(v16 - 16);
          v52 = *(v16 + 48);
          *v28 = *v40;
          *(v16 - 16) = v52;
          goto LABEL_57;
        }

        v105 = *v28;
        v133 = *(v16 - 16);
        v55 = *(v16 + 16);
        *v28 = *v16;
        *(v16 - 16) = v55;
        *v16 = v105;
        *(v16 + 16) = v133;
        if (*(v16 + 48) < *(v16 + 16))
        {
          v102 = *v16;
          v130 = *(v16 + 16);
          v56 = *(v16 + 48);
          *v16 = *v40;
          *(v16 + 16) = v56;
LABEL_57:
          *v40 = v102;
          *(v16 + 48) = v130;
        }
      }

      v106 = *n128_u64;
      v134 = *(n128_u64 + 16);
      v57 = *(v16 + 16);
      *n128_u64 = *v16;
      *(n128_u64 + 16) = v57;
      *v16 = v106;
      *(v16 + 16) = v134;
      goto LABEL_59;
    }

    v20 = *(n128_u64 + 16);
    if (v20 >= *(v16 + 16))
    {
      if (v17 < v20)
      {
        v90 = *n128_u64;
        v118 = *(n128_u64 + 16);
        v24 = a2[-1];
        *n128_u64 = *v9;
        *(n128_u64 + 16) = v24;
        *v9 = v90;
        a2[-1] = v118;
        if (*(n128_u64 + 16) < *(v16 + 16))
        {
          v91 = *v16;
          v119 = *(v16 + 16);
          v25 = *(n128_u64 + 16);
          *v16 = *n128_u64;
          *(v16 + 16) = v25;
          *n128_u64 = v91;
          *(n128_u64 + 16) = v119;
        }
      }
    }

    else
    {
      if (v17 < v20)
      {
        v87 = *v16;
        v115 = *(v16 + 16);
        v21 = a2[-1];
        *v16 = *v9;
        *(v16 + 16) = v21;
LABEL_36:
        *v9 = v87;
        a2[-1] = v115;
        goto LABEL_59;
      }

      v95 = *v16;
      v123 = *(v16 + 16);
      v36 = *(n128_u64 + 16);
      *v16 = *n128_u64;
      *(v16 + 16) = v36;
      *n128_u64 = v95;
      *(n128_u64 + 16) = v123;
      if (a2[-1].n128_f32[0] < *(n128_u64 + 16))
      {
        v87 = *n128_u64;
        v115 = *(n128_u64 + 16);
        v37 = a2[-1];
        *n128_u64 = *v9;
        *(n128_u64 + 16) = v37;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(n128_u64 - 16) >= *(n128_u64 + 16))
    {
      n128_u64 = _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv3_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EET0_SD_SD_T1_(n128_u64, a2);
      goto LABEL_66;
    }

    v58 = _ZNSt3__132__partition_with_equals_on_rightB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv3_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EENS_4pairIT0_bEESE_SE_T1_(n128_u64, a2);
    if ((v60 & 1) == 0)
    {
      goto LABEL_64;
    }

    v61 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(n128_u64, v58, v59);
    n128_u64 = v58[2].n128_u64;
    if (_ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(v58 + 2, a2, v62))
    {
      a4 = -v14;
      a2 = v58;
      if (v61)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v61)
    {
LABEL_64:
      _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(a1, v58, a3, -v14, a5 & 1);
      n128_u64 = v58[2].n128_u64;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = *(n128_u64 + 48);
  v63 = a2[-1].n128_f32[0];
  if (result.n128_f32[0] >= *(n128_u64 + 16))
  {
    if (v63 >= result.n128_f32[0])
    {
      return result;
    }

    v69 = *(n128_u64 + 32);
    result = *(n128_u64 + 48);
    v70 = a2[-1];
    *(n128_u64 + 32) = *v9;
    *(n128_u64 + 48) = v70;
    *v9 = v69;
    a2[-1] = result;
    goto LABEL_103;
  }

  if (v63 >= result.n128_f32[0])
  {
    v111 = *n128_u64;
    v139 = *(n128_u64 + 16);
    v74 = *(n128_u64 + 48);
    *n128_u64 = *(n128_u64 + 32);
    *(n128_u64 + 16) = v74;
    result = v111;
    *(n128_u64 + 32) = v111;
    *(n128_u64 + 48) = v139;
    result.n128_u32[0] = a2[-1].n128_u32[0];
    if (result.n128_f32[0] < *(n128_u64 + 48))
    {
      v75 = *(n128_u64 + 32);
      result = *(n128_u64 + 48);
      v76 = a2[-1];
      *(n128_u64 + 32) = *v9;
      *(n128_u64 + 48) = v76;
      *v9 = v75;
      a2[-1] = result;
    }
  }

  else
  {
    v107 = *n128_u64;
    v135 = *(n128_u64 + 16);
    v64 = a2[-1];
    *n128_u64 = *v9;
    *(n128_u64 + 16) = v64;
    *v9 = v107;
    result = v135;
    a2[-1] = v135;
  }

  return result;
}

__n128 _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_f32[0];
  v7 = a3[1].n128_f32[0];
  if (v6 >= a1[1].n128_f32[0])
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (a2[1].n128_f32[0] < a1[1].n128_f32[0])
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (a3[1].n128_f32[0] < a2[1].n128_f32[0])
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_f32[0] < a3[1].n128_f32[0])
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (a3[1].n128_f32[0] < a2[1].n128_f32[0])
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (a2[1].n128_f32[0] < a1[1].n128_f32[0])
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  result.n128_u32[0] = a5[1].n128_u32[0];
  if (result.n128_f32[0] < a4[1].n128_f32[0])
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    result.n128_u32[0] = a4[1].n128_u32[0];
    if (result.n128_f32[0] < a3[1].n128_f32[0])
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      result.n128_u32[0] = a3[1].n128_u32[0];
      if (result.n128_f32[0] < a2[1].n128_f32[0])
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        result.n128_u32[0] = a2[1].n128_u32[0];
        if (result.n128_f32[0] < a1[1].n128_f32[0])
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(uint64_t result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = (result + 32);
    if ((result + 32) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 12);
        if (v6 < *(v4 + 4))
        {
          v11 = *v2;
          v12 = *(v4 + 52);
          v13 = *(v4 + 15);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7 + 16);
            *(v8 + 32) = *(result + v7);
            *(v8 + 48) = v9;
            if (!v7)
            {
              break;
            }

            v7 -= 32;
            if (v6 >= *(v8 - 16))
            {
              v10 = result + v7 + 32;
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v11;
          *(v10 + 16) = v6;
          *(v10 + 20) = v12;
          *(v10 + 28) = v13;
        }

        v2 = v5 + 2;
        v3 += 32;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

__int128 *_ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 12);
      if (v4 < *(result + 4))
      {
        v7 = *v2;
        v8 = *(result + 52);
        v9 = *(result + 15);
        do
        {
          v5 = *(v2 - 1);
          *v2 = *(v2 - 2);
          v2[1] = v5;
          v6 = *(v2 - 12);
          v2 -= 2;
        }

        while (v4 < v6);
        *v2 = v7;
        *(v2 + 4) = v4;
        *(v2 + 20) = v8;
        *(v2 + 7) = v9;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

unint64_t _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv3_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EET0_SD_SD_T1_(__int128 *a1, float *a2)
{
  v16 = *a1;
  v2 = *(a1 + 4);
  v19 = *(a1 + 20);
  v20 = *(a1 + 7);
  if (v2 >= *(a2 - 4))
  {
    v6 = (a1 + 2);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 16);
      v6 += 32;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 8);
      v5 = v3[12];
      v3 += 8;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 8;
      v9 = *(a2 - 4);
      a2 -= 8;
    }

    while (v2 < v9);
  }

  while (v4 < v8)
  {
    v17 = *v4;
    v18 = *(v4 + 16);
    v10 = *(v8 + 1);
    *v4 = *v8;
    *(v4 + 16) = v10;
    *v8 = v17;
    *(v8 + 1) = v18;
    do
    {
      v11 = *(v4 + 48);
      v4 += 32;
    }

    while (v2 >= v11);
    do
    {
      v12 = *(v8 - 4);
      v8 -= 8;
    }

    while (v2 < v12);
  }

  v13 = (v4 - 32);
  if ((v4 - 32) != a1)
  {
    v14 = *(v4 - 16);
    *a1 = *v13;
    a1[1] = v14;
  }

  *v13 = v16;
  *(v4 - 16) = v2;
  *(v4 - 4) = v20;
  *(v4 - 12) = v19;
  return v4;
}

unint64_t _ZNSt3__132__partition_with_equals_on_rightB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv3_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EENS_4pairIT0_bEESE_SE_T1_(__int128 *a1, float *a2)
{
  v2 = 0;
  v18 = *a1;
  v3 = *(a1 + 4);
  v20 = *(a1 + 20);
  v21 = *(a1 + 7);
  do
  {
    v4 = *&a1[v2 + 3];
    v2 += 2;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 2)
  {
    while (v5 < a2)
    {
      v6 = a2 - 8;
      v8 = *(a2 - 4);
      a2 -= 8;
      if (v8 < v3)
      {
        goto LABEL_9;
      }
    }

    v6 = a2;
  }

  else
  {
    do
    {
      v6 = a2 - 8;
      v7 = *(a2 - 4);
      a2 -= 8;
    }

    while (v7 >= v3);
  }

LABEL_9:
  v9 = &a1[v2];
  if (v5 < v6)
  {
    v10 = v6;
    do
    {
      v11 = *v9;
      v19 = *(v9 + 16);
      v12 = *(v10 + 1);
      *v9 = *v10;
      *(v9 + 16) = v12;
      *v10 = v11;
      *(v10 + 1) = v19;
      do
      {
        v13 = *(v9 + 48);
        v9 += 32;
      }

      while (v13 < v3);
      do
      {
        v14 = *(v10 - 4);
        v10 -= 8;
      }

      while (v14 >= v3);
    }

    while (v9 < v10);
  }

  v15 = (v9 - 32);
  if ((v9 - 32) != a1)
  {
    v16 = *(v9 - 16);
    *a1 = *v15;
    a1[1] = v16;
  }

  *v15 = v18;
  *(v9 - 16) = v3;
  *(v9 - 4) = v21;
  *(v9 - 12) = v20;
  return v9 - 32;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = a2 - 2;
      v8 = a1[3].n128_f32[0];
      v9 = a2[-1].n128_f32[0];
      if (v8 < a1[1].n128_f32[0])
      {
        if (v9 >= v8)
        {
          v42 = *a1;
          v41 = a1[1];
          v43 = a1[3];
          *a1 = a1[2];
          a1[1] = v43;
          a1[2] = v42;
          a1[3] = v41;
          if (a2[-1].n128_f32[0] >= a1[3].n128_f32[0])
          {
            return 1;
          }

          v11 = a1[2];
          v10 = a1[3];
          v44 = a2[-1];
          a1[2] = *v7;
          a1[3] = v44;
        }

        else
        {
          v11 = *a1;
          v10 = a1[1];
          v12 = a2[-1];
          *a1 = *v7;
          a1[1] = v12;
        }

        *v7 = v11;
        a2[-1] = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v27 = a1[2];
      v26 = a1[3];
      v28 = a2[-1];
      a1[2] = *v7;
      a1[3] = v28;
      *v7 = v27;
      a2[-1] = v26;
LABEL_50:
      if (a1[3].n128_f32[0] < a1[1].n128_f32[0])
      {
        v69 = *a1;
        v68 = a1[1];
        v70 = a1[3];
        *a1 = a1[2];
        a1[1] = v70;
        a1[2] = v69;
        a1[3] = v68;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
    }

    v20 = a1[3].n128_f32[0];
    v21 = a1[1].n128_f32[0];
    v22 = a1[5].n128_f32[0];
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v36 = a1[2];
        v35 = a1[3];
        v37 = a1[5];
        a1[2] = a1[4];
        a1[3] = v37;
        a1[4] = v36;
        a1[5] = v35;
        if (a1[3].n128_f32[0] < v21)
        {
          v39 = *a1;
          v38 = a1[1];
          v40 = a1[3];
          *a1 = a1[2];
          a1[1] = v40;
          a1[2] = v39;
          a1[3] = v38;
        }
      }

      goto LABEL_47;
    }

    if (v22 >= v20)
    {
      v58 = *a1;
      v57 = a1[1];
      v59 = a1[3];
      *a1 = a1[2];
      a1[1] = v59;
      a1[2] = v58;
      a1[3] = v57;
      if (v22 >= a1[3].n128_f32[0])
      {
        goto LABEL_47;
      }

      v24 = a1[2];
      v23 = a1[3];
      v60 = a1[5];
      a1[2] = a1[4];
      a1[3] = v60;
    }

    else
    {
      v24 = *a1;
      v23 = a1[1];
      v25 = a1[5];
      *a1 = a1[4];
      a1[1] = v25;
    }

    a1[4] = v24;
    a1[5] = v23;
LABEL_47:
    if (a2[-1].n128_f32[0] >= a1[5].n128_f32[0])
    {
      return 1;
    }

    v61 = a2 - 2;
    v63 = a1[4];
    v62 = a1[5];
    v64 = a2[-1];
    a1[4] = a2[-2];
    a1[5] = v64;
    *v61 = v63;
    v61[1] = v62;
    if (a1[5].n128_f32[0] >= a1[3].n128_f32[0])
    {
      return 1;
    }

    v66 = a1[2];
    v65 = a1[3];
    v67 = a1[5];
    a1[2] = a1[4];
    a1[3] = v67;
    a1[4] = v66;
    a1[5] = v65;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[0] < a1[1].n128_f32[0])
    {
      v5 = *a1;
      v4 = a1[1];
      v6 = a2[-1];
      *a1 = a2[-2];
      a1[1] = v6;
      a2[-2] = v5;
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 4;
  v14 = a1[3].n128_f32[0];
  v15 = a1[1].n128_f32[0];
  v16 = a1[5].n128_f32[0];
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v30 = a1[2];
      v29 = a1[3];
      v31 = a1[5];
      a1[2] = *v13;
      a1[3] = v31;
      *v13 = v30;
      a1[5] = v29;
      if (a1[3].n128_f32[0] < v15)
      {
        v33 = *a1;
        v32 = a1[1];
        v34 = a1[3];
        *a1 = a1[2];
        a1[1] = v34;
        a1[2] = v33;
        a1[3] = v32;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v46 = *a1;
      v45 = a1[1];
      v47 = a1[3];
      *a1 = a1[2];
      a1[1] = v47;
      a1[2] = v46;
      a1[3] = v45;
      if (v16 >= a1[3].n128_f32[0])
      {
        goto LABEL_33;
      }

      v18 = a1[2];
      v17 = a1[3];
      v48 = a1[5];
      a1[2] = *v13;
      a1[3] = v48;
    }

    else
    {
      v18 = *a1;
      v17 = a1[1];
      v19 = a1[5];
      *a1 = *v13;
      a1[1] = v19;
    }

    *v13 = v18;
    a1[5] = v17;
  }

LABEL_33:
  v49 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v49[1].n128_f32[0];
    if (v52 < v13[1].n128_f32[0])
    {
      v72 = *v49;
      v73 = *(v49[1].n128_i64 + 4);
      v74 = v49[1].n128_i32[3];
      v53 = v50;
      while (1)
      {
        v54 = (a1 + v53);
        v55 = *(a1 + v53 + 80);
        v54[6] = *(a1 + v53 + 64);
        v54[7] = v55;
        if (v53 == -64)
        {
          break;
        }

        v53 -= 32;
        if (v52 >= v54[3].n128_f32[0])
        {
          v56 = &a1[6] + v53;
          goto LABEL_41;
        }
      }

      v56 = a1;
LABEL_41:
      *v56 = v72;
      *(v56 + 16) = v52;
      *(v56 + 20) = v73;
      *(v56 + 28) = v74;
      if (++v51 == 8)
      {
        return &v49[2] == a2;
      }
    }

    v13 = v49;
    v50 += 32;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

float *_ZNSt3__119__partial_sort_implB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_SC_EET1_SD_SD_T2_OT0_(uint64_t a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 32 * v9);
      do
      {
        _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[4] < *(a1 + 16))
        {
          v14 = *v12;
          v13 = *(v12 + 1);
          v15 = *(a1 + 16);
          *v12 = *a1;
          *(v12 + 1) = v15;
          *a1 = v14;
          *(a1 + 16) = v13;
          _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(a1, a4, v8, a1);
        }

        v12 += 8;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v16 = 0;
        v28 = *a1;
        v29 = *(a1 + 16);
        v17 = a1;
        do
        {
          v18 = &v17[2 * v16];
          v19 = v18 + 8;
          v20 = (2 * v16) | 1;
          v16 = 2 * v16 + 2;
          if (v16 >= v8)
          {
            v16 = v20;
          }

          else
          {
            v21 = v18[12];
            v22 = v18[20];
            v23 = v18 + 16;
            if (v21 >= v22)
            {
              v16 = v20;
            }

            else
            {
              v19 = v23;
            }
          }

          v24 = *(v19 + 1);
          *v17 = *v19;
          v17[1] = v24;
          v17 = v19;
        }

        while (v16 <= ((v8 - 2) >> 1));
        v6 -= 8;
        if (v19 == v6)
        {
          *v19 = v28;
          *(v19 + 1) = v29;
        }

        else
        {
          v25 = *(v6 + 1);
          *v19 = *v6;
          *(v19 + 1) = v25;
          *v6 = v28;
          *(v6 + 1) = v29;
          _ZNSt3__19__sift_upB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE(a1, (v19 + 8), a4, (v19 - a1 + 32) >> 5);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = (result + 32 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[4] < v8[12])
      {
        v8 += 8;
        v7 = v9;
      }

      v10 = a4[4];
      if (v8[4] >= v10)
      {
        v15 = *a4;
        v16 = *(a4 + 5);
        v17 = *(a4 + 7);
        do
        {
          v11 = a4;
          a4 = v8;
          v12 = *(v8 + 1);
          *v11 = *v8;
          *(v11 + 1) = v12;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 32 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && v8[4] < v8[12])
          {
            v8 += 8;
            v7 = v14;
          }
        }

        while (v8[4] >= v10);
        *a4 = v15;
        a4[4] = v10;
        *(a4 + 5) = v16;
        *(a4 + 7) = v17;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__19__sift_upB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 32 * v4);
    v6 = *(a2 - 16);
    if (v5[4] < v6)
    {
      v7 = (a2 - 32);
      v10 = *(a2 - 32);
      v11 = *(a2 - 12);
      v12 = *(a2 - 4);
      do
      {
        v8 = v7;
        v7 = v5;
        v9 = *(v5 + 1);
        *v8 = *v5;
        *(v8 + 1) = v9;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 32 * v4);
      }

      while (v5[4] < v6);
      *v7 = v10;
      v7[4] = v6;
      *(v7 + 5) = v11;
      *(v7 + 7) = v12;
    }
  }

  return result;
}

uint64_t _ZN2CI11Perspective9NMSimplexIDv2_fEC2ENS0_8NMParamsEU13block_pointerFfRKS2_EPS5_m(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v6 = a5;
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v12 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  _ZNSt3__16vectorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexENS_9allocatorIS6_EEE7reserveEm((a1 + 40), a5);
  for (; v6; --v6)
  {
    v13 = *a4;
    v14 = (*(a3 + 16))(a3, a4);
    v16 = *(a1 + 48);
    v15 = *(a1 + 56);
    if (v16 >= v15)
    {
      v18 = (v16 - *v12) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v20 = v15 - *v12;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(v12, v21);
      }

      v22 = 16 * v18;
      *v22 = v13;
      *(v22 + 8) = v14;
      v17 = 16 * v18 + 16;
      v23 = *(a1 + 40);
      v24 = *(a1 + 48) - v23;
      v25 = 16 * v18 - v24;
      memcpy((v22 - v24), v23, v24);
      v26 = *(a1 + 40);
      *(a1 + 40) = v25;
      *(a1 + 48) = v17;
      *(a1 + 56) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v16 = v13;
      *(v16 + 8) = v14;
      v17 = v16 + 16;
    }

    *(a1 + 48) = v17;
    ++a4;
  }

  for (*(a1 + 64) = 1; !_ZNK2CI11Perspective9NMSimplexIDv2_fE15shouldTerminateEv(a1); ++*(a1 + 64))
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v31 = 126 - 2 * __clz(v30 - v29);
    if (v30 == v29)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(v29, v30, &v57, v32, 1, v27);
    v35 = *(a1 + 40);
    v34 = *(a1 + 48);
    v36 = v34 - v35;
    v37 = 0;
    if ((v34 - v35) >> 4 != 1)
    {
      v38 = *(a1 + 40);
      v39 = ((v34 - v35) >> 4) - 1;
      do
      {
        v40 = *v38;
        v38 += 2;
        v33.i32[1] = v40.i32[1];
        v37 = vadd_f32(v37, v40);
        --v39;
      }

      while (v39);
    }

    *v33.i32 = (((v34 - v35) >> 4) - 1);
    v41 = vdiv_f32(v37, vdup_lane_s32(v33, 0));
    v57 = 0;
    v42 = vmla_n_f32(v41, vsub_f32(v41, *(v34 - 16)), *a1);
    v57 = v42;
    v5.i32[0] = (*(a3 + 16))(a3, &v57);
    v43 = (v35 + v36);
    v44 = v35[1].f32[0];
    if (v44 <= v5.f32[0] && v5.f32[0] < *v43[-3].i32)
    {
      v43[-2] = v42;
      v43[-1].i32[0] = v5.i32[0];
    }

    else
    {
      if (v5.f32[0] >= v44)
      {
        v56 = 0;
        v48 = vmla_n_f32(v41, vsub_f32(*(*(a1 + 48) - 16), v41), *(a1 + 8));
        v56 = v48;
        *&v47 = (*(a3 + 16))(a3, &v56);
        if (*&v47 >= *v43[-1].i32)
        {
          v49 = *(a1 + 40);
          if ((*(a1 + 48) - v49) >= 0x11)
          {
            v50 = 0;
            v5 = *v35;
            v51 = 1;
            do
            {
              v55 = 0;
              v52 = vmla_n_f32(v5, vsub_f32(*(v49 + v50 + 16), v5), *(a2 + 12));
              v55 = v52;
              v53 = (*(a3 + 16))(a3, &v55);
              v54 = (*(a1 + 40) + v50);
              v54[2] = v52;
              v54[3].f32[0] = v53;
              ++v51;
              v49 = *(a1 + 40);
              v50 += 16;
            }

            while (v51 < (*(a1 + 48) - v49) >> 4);
          }

          continue;
        }

        v43[-2] = v48;
      }

      else
      {
        v46 = vmla_n_f32(v41, vsub_f32(v57, v41), *(a1 + 4));
        v56 = v46;
        v47 = (*(a3 + 16))(a3, &v56);
        v43[-2] = vbsl_s8(vdup_lane_s32(vcgt_f32(v5, *&v47), 0), v46, v42);
        if (*&v47 >= v5.f32[0])
        {
          *&v47 = v5.f32[0];
        }
      }

      v43[-1].i32[0] = LODWORD(v47);
    }

    v43[-1].i32[1] = 0;
  }

  return a1;
}

void sub_19CD8CCF8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__16vectorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexENS_9allocatorIS6_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(result, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

BOOL _ZNK2CI11Perspective9NMSimplexIDv2_fE15shouldTerminateEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && *(a1 + 64) >= v1)
  {
    return 1;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    v6 = ((v3 - v2) >> 4);
    v7 = 0.0;
  }

  else
  {
    v4 = 0.0;
    v5 = *(a1 + 40);
    do
    {
      v4 = v4 + *(v5 + 8);
      v5 += 16;
    }

    while (v5 != v3);
    v6 = ((v3 - v2) >> 4);
    v7 = 0.0;
    if (v3 != v2)
    {
      v8 = v4 / v6;
      do
      {
        v7 = v7 + ((*(v2 + 8) - v8) * (*(v2 + 8) - v8));
        v2 += 16;
      }

      while (v2 != v3);
    }
  }

  return sqrtf(v7 / v6) < *(a1 + 16);
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

__n128 _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v39 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[2];
        if (result.n128_f32[0] < v12->n128_f32[2])
        {
          v62 = *v12;
          *v12 = a2[-1];
          result = v62;
          a2[-1] = v62;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v37 = v12[1].n128_f32[2];
      v38 = v12[2].n128_f32[2];
      if (v37 >= v12->n128_f32[2])
      {
        if (v38 < v37)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_f32[2] < v12->n128_f32[2])
          {
            v64 = *v12;
            *v12 = v12[1];
            result = v64;
            v12[1] = v64;
          }
        }
      }

      else
      {
        if (v38 < v37)
        {
          v63 = *v12;
          *v12 = v12[2];
          result = v63;
          goto LABEL_103;
        }

        v66 = *v12;
        *v12 = v12[1];
        v12[1] = v66;
        if (v38 < v12[1].n128_f32[2])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_103:
          v12[2] = result;
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[2];
      if (result.n128_f32[0] >= v12[2].n128_f32[2])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v10;
      *v10 = result;
      result.n128_u32[0] = v12[2].n128_u32[2];
      if (result.n128_f32[0] >= v12[1].n128_f32[2])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_107:
      result.n128_u32[0] = v12[1].n128_u32[2];
      if (result.n128_f32[0] < v12->n128_f32[2])
      {
        v67 = *v12;
        *v12 = v12[1];
        result = v67;
        v12[1] = v67;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        _ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(v12, a2);
      }

      else
      {

        _ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        _ZNSt3__119__partial_sort_implB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_SC_EET1_SD_SD_T2_OT0_(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f32[2];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f32[2];
      if (v18 >= v12->n128_f32[2])
      {
        if (v17 < v18)
        {
          v42 = *v16;
          *v16 = *v10;
          *v10 = v42;
          if (v16->n128_f32[2] < v12->n128_f32[2])
          {
            v43 = *v12;
            *v12 = *v16;
            *v16 = v43;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v40 = *v12;
          *v12 = *v10;
          goto LABEL_28;
        }

        v46 = *v12;
        *v12 = *v16;
        *v16 = v46;
        if (a2[-1].n128_f32[2] < v16->n128_f32[2])
        {
          v40 = *v16;
          *v16 = *v10;
LABEL_28:
          *v10 = v40;
        }
      }

      v20 = v16 - 1;
      v21 = v16[-1].n128_f32[2];
      v22 = a2[-2].n128_f32[2];
      if (v21 >= v12[1].n128_f32[2])
      {
        if (v22 < v21)
        {
          v47 = *v20;
          *v20 = *v39;
          *v39 = v47;
          if (v16[-1].n128_f32[2] < v12[1].n128_f32[2])
          {
            v48 = v12[1];
            v12[1] = *v20;
            *v20 = v48;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = v12[1];
          v24 = a2 - 2;
          v12[1] = *v39;
          goto LABEL_42;
        }

        v50 = v12[1];
        v12[1] = *v20;
        *v20 = v50;
        if (a2[-2].n128_f32[2] < v16[-1].n128_f32[2])
        {
          v51 = *v20;
          v24 = a2 - 2;
          *v20 = *v39;
          v23 = v51;
LABEL_42:
          *v24 = v23;
        }
      }

      v25 = v16 + 1;
      v26 = v16[1].n128_f32[2];
      v27 = a2[-3].n128_f32[2];
      if (v26 >= v12[2].n128_f32[2])
      {
        if (v27 < v26)
        {
          v52 = *v25;
          *v25 = *v11;
          *v11 = v52;
          if (v16[1].n128_f32[2] < v12[2].n128_f32[2])
          {
            v53 = v12[2];
            v12[2] = *v25;
            *v25 = v53;
          }
        }
      }

      else
      {
        if (v27 < v26)
        {
          v28 = v12[2];
          v12[2] = *v11;
          goto LABEL_51;
        }

        v54 = v12[2];
        v12[2] = *v25;
        *v25 = v54;
        if (a2[-3].n128_f32[2] < v16[1].n128_f32[2])
        {
          v55 = *v25;
          *v25 = *v11;
          v28 = v55;
LABEL_51:
          *v11 = v28;
        }
      }

      v29 = v16->n128_f32[2];
      v30 = v16[1].n128_f32[2];
      if (v29 >= v16[-1].n128_f32[2])
      {
        if (v30 < v29)
        {
          v57 = *v16;
          *v16 = *v25;
          *v25 = v57;
          if (v16->n128_f32[2] < v16[-1].n128_f32[2])
          {
            v58 = *v20;
            *v20 = *v16;
            *v16 = v58;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v56 = *v20;
          *v20 = *v25;
          goto LABEL_60;
        }

        v59 = *v20;
        *v20 = *v16;
        *v16 = v59;
        if (v16[1].n128_f32[2] < v16->n128_f32[2])
        {
          v56 = *v16;
          *v16 = *v25;
LABEL_60:
          *v25 = v56;
        }
      }

      v60 = *v12;
      *v12 = *v16;
      *v16 = v60;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = v12->n128_f32[2];
    if (v19 < v16->n128_f32[2])
    {
      if (v17 < v19)
      {
        v41 = *v16;
        *v16 = *v10;
        goto LABEL_37;
      }

      v49 = *v16;
      *v16 = *v12;
      *v12 = v49;
      if (a2[-1].n128_f32[2] < v12->n128_f32[2])
      {
        v41 = *v12;
        *v12 = *v10;
LABEL_37:
        *v10 = v41;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v17 >= v19)
    {
      goto LABEL_38;
    }

    v44 = *v12;
    *v12 = *v10;
    *v10 = v44;
    if (v12->n128_f32[2] >= v16->n128_f32[2])
    {
      goto LABEL_38;
    }

    v45 = *v16;
    *v16 = *v12;
    *v12 = v45;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v12[-1].n128_f32[2] >= v12->n128_f32[2])
    {
      v12 = _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv2_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EET0_SD_SD_T1_(v12, a2);
      goto LABEL_68;
    }

LABEL_63:
    v31 = _ZNSt3__132__partition_with_equals_on_rightB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv2_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EENS_4pairIT0_bEESE_SE_T1_(v12, a2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_66;
    }

    v34 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(v12, v31, v32);
    v12 = v31 + 1;
    if (_ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(v31 + 1, a2, v35))
    {
      a4 = -v14;
      a2 = v31;
      if (v34)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v34)
    {
LABEL_66:
      _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(a1, v31, a3, -v14, a5 & 1);
      v12 = v31 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = v12[1].n128_u32[2];
  v36 = a2[-1].n128_f32[2];
  if (result.n128_f32[0] >= v12->n128_f32[2])
  {
    if (v36 >= result.n128_f32[0])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_107;
  }

  if (v36 >= result.n128_f32[0])
  {
    v65 = *v12;
    *v12 = v12[1];
    result = v65;
    v12[1] = v65;
    result.n128_u32[0] = a2[-1].n128_u32[2];
    if (result.n128_f32[0] >= v12[1].n128_f32[2])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
  }

  else
  {
    v61 = *v12;
    *v12 = *v10;
    result = v61;
  }

  *v10 = result;
  return result;
}

__n128 _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[2];
  v7 = a3->n128_f32[2];
  if (v6 >= a1->n128_f32[2])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[2] < a1->n128_f32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f32[2] < a2->n128_f32[2])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[2] < a3->n128_f32[2])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f32[2] < a2->n128_f32[2])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[2] < a1->n128_f32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[2];
  if (result.n128_f32[0] < a4->n128_f32[2])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = a4->n128_u32[2];
    if (result.n128_f32[0] < a3->n128_f32[2])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u32[0] = a3->n128_u32[2];
      if (result.n128_f32[0] < a2->n128_f32[2])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[2];
        if (result.n128_f32[0] < a1->n128_f32[2])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(uint64_t result, void *a2)
{
  if (result != a2)
  {
    v2 = (result + 16);
    if ((result + 16) != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[6];
        if (v6 < v4[2])
        {
          v7 = *v2;
          v8 = *(v4 + 7);
          v9 = v3;
          while (1)
          {
            *(result + v9 + 16) = *(result + v9);
            if (!v9)
            {
              break;
            }

            v10 = *(result + v9 - 8);
            v9 -= 16;
            if (v6 >= v10)
            {
              v11 = result + v9 + 16;
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
          *(v11 + 8) = v6;
          *(v11 + 12) = v8;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

void *_ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 6);
      if (v4 < *(result + 2))
      {
        v5 = *v2;
        v6 = *(result + 7);
        v7 = v3;
        do
        {
          *v7 = *(v7 - 1);
          v8 = *(v7 - 6);
          v7 -= 2;
        }

        while (v4 < v8);
        *v7 = v5;
        *(v7 + 2) = v4;
        *(v7 + 3) = v6;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

unint64_t _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv2_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EET0_SD_SD_T1_(float *a1, float *a2)
{
  v2 = a1[2];
  if (v2 >= *(a2 - 2))
  {
    v6 = (a1 + 4);
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 8);
      v6 += 16;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 4);
      v5 = v3[6];
      v3 += 4;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 4;
      v9 = *(a2 - 2);
      a2 -= 4;
    }

    while (v2 < v9);
  }

  v10 = *a1;
  v11 = *(a1 + 3);
  while (v4 < v8)
  {
    v15 = *v4;
    *v4 = *v8;
    *v8 = v15;
    do
    {
      v12 = *(v4 + 24);
      v4 += 16;
    }

    while (v2 >= v12);
    do
    {
      v13 = *(v8 - 2);
      v8 -= 4;
    }

    while (v2 < v13);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
  }

  *(v4 - 16) = v10;
  *(v4 - 8) = v2;
  *(v4 - 4) = v11;
  return v4;
}

unint64_t _ZNSt3__132__partition_with_equals_on_rightB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv2_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EENS_4pairIT0_bEESE_SE_T1_(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[2];
  v5 = *(a1 + 3);
  do
  {
    v6 = a1[v2 + 6];
    v2 += 4;
  }

  while (v6 < v4);
  v7 = &a1[v2];
  if (v2 == 4)
  {
    while (v7 < a2)
    {
      v8 = a2 - 4;
      v10 = *(a2 - 2);
      a2 -= 4;
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 4;
      v9 = *(a2 - 2);
      a2 -= 4;
    }

    while (v9 >= v4);
  }

LABEL_9:
  v11 = &a1[v2];
  if (v7 < v8)
  {
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = *(v11 + 24);
        v11 += 16;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12 - 2);
        v12 -= 4;
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
  }

  if ((v11 - 16) != a1)
  {
    *a1 = *(v11 - 16);
  }

  *(v11 - 16) = v3;
  *(v11 - 8) = v4;
  *(v11 - 4) = v5;
  return v11 - 16;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_f32[2];
      v7 = a2[-1].n128_f32[2];
      if (v6 < a1->n128_f32[2])
      {
        if (v7 >= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_f32[2] >= a1[1].n128_f32[2])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_f32[2] < a1->n128_f32[2])
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_f32[2];
    v15 = a1->n128_f32[2];
    v16 = a1[2].n128_f32[2];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_f32[2] < v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 >= v14)
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v16 >= a1[1].n128_f32[2])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_f32[2] >= a1[2].n128_f32[2])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_f32[2] >= a1[1].n128_f32[2])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[2] < a1->n128_f32[2])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_f32[2];
  v11 = a1->n128_f32[2];
  v12 = a1[2].n128_f32[2];
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_f32[2] < v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 >= a1[1].n128_f32[2])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_f32[2];
    if (v28 < v9->n128_f32[2])
    {
      v29 = v25->n128_u64[0];
      v30 = v25->n128_u32[3];
      v31 = v26;
      while (1)
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v32 = *(&a1[1].n128_f32[2] + v31);
        v31 -= 16;
        if (v28 >= v32)
        {
          v33 = &a1[3] + v31;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v29;
      *(v33 + 8) = v28;
      *(v33 + 12) = v30;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

float *_ZNSt3__119__partial_sort_implB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_SC_EET1_SD_SD_T2_OT0_(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[2] < a1[2])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v24 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[4 * v14];
          v17 = v16 + 4;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v19 = v16[6];
            v20 = v16[10];
            v21 = v16 + 8;
            if (v19 >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v21;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 4;
        if (v17 == v6)
        {
          *v17 = v24;
        }

        else
        {
          *v17 = *v6;
          *v6 = v24;
          _ZNSt3__19__sift_upB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE(a1, (v17 + 4), a4, ((v17 + 4) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[2] < v8[6])
      {
        v8 += 4;
        v7 = v9;
      }

      v10 = a4[2];
      if (v8[2] >= v10)
      {
        v11 = *a4;
        v12 = *(a4 + 3);
        do
        {
          v13 = a4;
          a4 = v8;
          *v13 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 16 * v7);
          v15 = v14 + 2;
          if (v15 < a3 && v8[2] < v8[6])
          {
            v8 += 4;
            v7 = v15;
          }
        }

        while (v8[2] >= v10);
        *a4 = v11;
        a4[2] = v10;
        *(a4 + 3) = v12;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__19__sift_upB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) < v6)
    {
      v8 = *(a2 - 16);
      v7 = a2 - 16;
      v9 = v8;
      v10 = *(v7 + 12);
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) < v6);
      *v7 = v9;
      *(v7 + 8) = v6;
      *(v7 + 12) = v10;
    }
  }

  return result;
}

CIImage *perspectiveTransformImage(CIImage *a1, simd::float3x3 a2)
{
  v35[3] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    v31 = a2;
    perspectiveTransformImage();
    a2 = v31;
  }

  v3 = vdupq_n_s32(0x358637BDu);
  v4 = vandq_s8(vandq_s8(vcgeq_f32(v3, vabdq_f32(a2.columns[1], unk_1ED7C4500)), vcgeq_f32(v3, vabdq_f32(a2.columns[0], xmmword_1ED7C44F0))), vcgeq_f32(v3, vabdq_f32(a2.columns[2], xmmword_1ED7C4510)));
  v4.i32[3] = v4.i32[2];
  if ((vminvq_u32(v4) & 0x80000000) == 0)
  {
    v30 = a2;
    v5 = [(CIKernel *)CIWarpKernel kernelWithInternalRepresentation:&CI::_perspectiveWarp];
    [(CIImage *)a1 extent];
    *&v6 = v6;
    *&v7 = v7;
    v9.f64[1] = v8;
    v10 = vmulq_n_f32(v30.columns[0], *&v6);
    HIDWORD(v6) = LODWORD(v7);
    v11 = vadd_f32(*&v6, vcvt_f32_f64(v9));
    v12 = vaddq_f32(v30.columns[2], vmlaq_n_f32(v10, v30.columns[1], *&v7));
    v13.i64[0] = vdupq_laneq_s32(v12, 2).u64[0];
    v14 = vmulq_n_f32(v30.columns[0], v11.f32[0]);
    v15 = vaddq_f32(v30.columns[2], vmlaq_n_f32(v14, v30.columns[1], *&v7));
    v16 = vaddq_f32(v30.columns[2], vmlaq_lane_f32(v14, v30.columns[1], v11, 1));
    v17.i64[0] = vdupq_laneq_s32(v16, 2).u64[0];
    v18 = vaddq_f32(v30.columns[2], vmlaq_lane_f32(v10, v30.columns[1], v11, 1));
    v12.i64[1] = v15.i64[0];
    v13.i64[1] = vdupq_laneq_s32(v15, 2).u64[0];
    v16.i64[1] = v18.i64[0];
    v17.i64[1] = vdupq_laneq_s32(v18, 2).u64[0];
    v34[0] = vdivq_f32(v12, v13);
    v34[1] = vdivq_f32(v16, v17);
    v19 = CI::Perspective::bbox(v34);
    v20 = v19.f32[0];
    v21 = v19.f32[1];
    v23 = v22;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZL25perspectiveTransformImageP7CIImageN4simd8float3x3E_block_invoke;
    v32[3] = &__block_descriptor_80_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v25 = v24;
    v33 = v30;
    v36 = __invert_f3(v30.simd_float3x3);
    v30.columns[0].i32[2] = v36.columns[0].i32[2];
    v30.columns[1] = v36.columns[1];
    v30.columns[2] = v36.columns[2];
    v26 = [CIVector vectorWithX:v36.columns[0].f32[0] Y:v36.columns[1].f32[0] Z:v36.columns[2].f32[0], v36.columns[0].i64[0]];
    v27 = [CIVector vectorWithX:v30.columns[0].f32[1] Y:v30.columns[1].f32[1] Z:v30.columns[2].f32[1]];
    v28 = [CIVector vectorWithX:v30.columns[0].f32[2] Y:v30.columns[1].f32[2] Z:v30.columns[2].f32[2]];
    v35[0] = v26;
    v35[1] = v27;
    v35[2] = v28;
    return -[CIWarpKernel applyWithExtent:roiCallback:inputImage:arguments:](v5, "applyWithExtent:roiCallback:inputImage:arguments:", v32, a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3], v20, v21, v23, v25);
  }

  return a1;
}

double ___ZL25perspectiveTransformImageP7CIImageN4simd8float3x3E_block_invoke(uint64_t a1, double a2, double a3, float64x2_t a4, float64_t a5)
{
  *&v5 = a2;
  *&v6 = a3;
  v13 = *&v5;
  v14 = *&v6;
  a4.f64[1] = a5;
  v15 = vadd_f32(__PAIR64__(v6, v5), vcvt_f32_f64(a4));
  v17 = __invert_f3(*(a1 + 32));
  v7 = vmulq_n_f32(v17.columns[0], v13);
  v8 = vaddq_f32(v17.columns[2], vmlaq_n_f32(v7, v17.columns[1], v14));
  v9.i64[0] = vdupq_laneq_s32(v8, 2).u64[0];
  v17.columns[0] = vmulq_n_f32(v17.columns[0], v15.f32[0]);
  v10 = vaddq_f32(v17.columns[2], vmlaq_n_f32(v17.columns[0], v17.columns[1], v14));
  v17.columns[0] = vaddq_f32(v17.columns[2], vmlaq_lane_f32(v17.columns[0], v17.columns[1], v15, 1));
  v11.i64[0] = vdupq_laneq_s32(v17.columns[0], 2).u64[0];
  v17.columns[1] = vaddq_f32(v17.columns[2], vmlaq_lane_f32(v7, v17.columns[1], v15, 1));
  v8.i64[1] = v10.i64[0];
  v9.i64[1] = vdupq_laneq_s32(v10, 2).u64[0];
  v17.columns[0].i64[1] = v17.columns[1].i64[0];
  v11.i64[1] = vdupq_laneq_s32(v17.columns[1], 2).u64[0];
  v16[0] = vdivq_f32(v8, v9);
  v16[1] = vdivq_f32(v17.columns[0], v11);
  return CI::Perspective::bbox(v16).f32[0];
}

double CI::sw_perspectiveWarp(CI *a1, uint64_t a2)
{
  v2 = *(a1 + 5);
  v15 = *(a2 + (v2[4] << 6));
  v16 = *(a2 + (v2[1] << 6));
  v17 = *(a2 + (v2[7] << 6));
  DC = CI::getDC(a1);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = *DC;
  v9 = vmulq_f32(v16, _Q1);
  v10 = vmulq_f32(v15, _Q1);
  v11 = vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8));
  v12 = vextq_s8(v9, v9, 8uLL);
  *v12.f32 = vadd_f32(vzip1_s32(*v12.f32, *&vextq_s8(v10, v10, 8uLL)), v11);
  v13 = vmulq_f32(v17, _Q1);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  *&result = vdivq_f32(v12, vdupq_lane_s32(*v13.f32, 0)).u64[0];
  return result;
}

float64x2_t computeHomogeneousPerspectiveTransformAndInverse(uint64_t a1, uint64_t a2, double a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v6 = vsub_f32(vadd_f32(vsub_f32(*&a3, a4), a5), a6);
  if (v6.f32[0] == 0.0 && v6.f32[1] == 0.0)
  {
    v7 = vcvtq_f64_f32(vsub_f32(a4, *&a3));
    v8 = vcvtq_f64_f32(vsub_f32(a5, a4));
    _Q2 = 0uLL;
  }

  else
  {
    v10 = vsub_f32(a6, a5);
    v11 = vsub_f32(a4, a5);
    v12 = vsub_f32(__PAIR64__(a6.u32[1], a4.u32[0]), a5);
    v13 = vrev64_s32(v6);
    v14 = vneg_f32(__PAIR64__(v11.u32[1], v13.u32[0]));
    v13.i32[0] = v10.i32[0];
    _Q2 = vdivq_f64(vcvtq_f64_f32(vmla_f32(vmul_f32(v13, v14), v6, vrev64_s32(v12))), vdupq_lane_s64(COERCE__INT64((vmul_lane_f32(v10, v14, 1).f32[0] + (*v12.i32 * *&v12.i32[1]))), 0));
    v7 = vmlaq_n_f64(vcvtq_f64_f32(vsub_f32(a4, *&a3)), vcvtq_f64_f32(a4), _Q2.f64[0]);
    v8 = vmlaq_laneq_f64(vcvtq_f64_f32(vsub_f32(a6, *&a3)), vcvtq_f64_f32(a6), _Q2, 1);
  }

  _D3 = *(&a3 + 1);
  _D0 = *&a3;
  *a2 = v7;
  *(a2 + 16) = _Q2.f64[0];
  *(a2 + 24) = v8;
  v17 = vmulq_f64(vzip2q_s64(v8, _Q2), v7);
  v18 = vmuld_lane_f64(-_Q2.f64[0], v8, 1);
  __asm { FMLS            D5, D3, V2.D[1] }

  v24 = vnegq_f64(v7);
  v25 = vdupq_lane_s64(*&v8.f64[0], 0);
  v25.f64[0] = _D3;
  v26 = vmulq_f64(v25, v24);
  v27 = vmuld_lane_f64(v24.f64[0], _Q2, 1);
  v17.f64[0] = v26.f64[1] + v17.f64[0] + vmuld_lane_f64(_D0, v17, 1) + vmulq_f64(_Q2, v8).f64[0] * _D3 + v18 * _D0 + v27 * _D3;
  *(a2 + 40) = _Q2.f64[1];
  *(a2 + 48) = _D0;
  *(a2 + 56) = _D3;
  *(a2 + 64) = 0x3FF0000000000000;
  v28.f64[1] = v7.f64[1];
  v28.f64[0] = _D3;
  __asm { FMLA            D22, D0, V2.D[1] }

  *a1 = _D5 / v17.f64[0];
  *&v30.f64[0] = vdupq_laneq_s64(v24, 1).u64[0];
  v30.f64[1] = v18;
  v31 = vdupq_lane_s64(*&v17.f64[0], 0);
  *(a1 + 8) = vdivq_f64(vmlaq_f64(v30, v28, _Q2), v31);
  *(a1 + 24) = _D22 / v17.f64[0];
  *(a1 + 32) = (v7.f64[0] - _D0 * _Q2.f64[0]) / v17.f64[0];
  *(a1 + 40) = (v27 + _Q2.f64[0] * v8.f64[0]) / v17.f64[0];
  *(a1 + 48) = (v8.f64[0] * _D3 - v8.f64[1] * _D0) / v17.f64[0];
  v8.f64[0] = _D0;
  result = vdivq_f64(vmlaq_f64(v26, v8, vextq_s8(v7, v7, 8uLL)), v31);
  *(a1 + 56) = result;
  return result;
}

float32x2_t CI::sw_perspectiveTransform(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 56);
  v7 = *(v3 + 88);
  v8 = *(v3 + 80);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v22 = *(a2 + (v5 << 6));
  v23 = *(a2 + (v4 << 6));
  v24 = *(a2 + (v6 << 6));
  v11 = *v10;
  DC = CI::getDC(a1);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = *DC;
  v18 = vmulq_f32(v23, _Q1);
  v19 = vmulq_f32(v22, _Q1);
  v20 = vmulq_f32(v24, _Q1);
  return vadd_f32(v11, vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v19.i8), vzip2_s32(*v18.i8, *v19.i8))), 1.0 / fmaxf(v20.f32[2] + vaddv_f32(*v20.f32), 0.000001)));
}

double CI::sw_perspectiveMask(CI *a1, uint64_t a2, uint64_t a3)
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

  v18 = *(a2 + (*(v3 + 32) << 6));
  v19 = *v7;
  DC = CI::getDC(a1);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = *DC;
  v14 = vmulq_f32(v18, _Q1);
  _NF = (v14.f32[2] + vaddv_f32(*v14.f32)) < 0.000001;
  v15 = 1.0;
  if (_NF)
  {
    v15 = 0.0;
  }

  v16 = v15;
  *&result = vmulq_n_f32(v19, v16).u64[0];
  return result;
}

float32x2_t CI::sw_perspectiveCorrection(CI *a1, uint64_t a2)
{
  v2 = *(a1 + 5);
  v13 = *(a2 + (v2[4] << 6));
  v14 = *(a2 + (v2[1] << 6));
  v15 = *(a2 + (v2[7] << 6));
  DC = CI::getDC(a1);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = *DC;
  v9 = vmulq_f32(v14, _Q1);
  v10 = vmulq_f32(v13, _Q1);
  v11 = vmulq_f32(v15, _Q1);
  v11.f32[0] = fmaxf(v11.f32[2] + vaddv_f32(*v11.f32), 0.000001);
  return vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8))), vdup_lane_s32(*v11.f32, 0));
}

unint64_t CI::sw_photoEffectDepthBlend(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v16 = *(a2 + (*(v3 + 80) << 6));
  v17 = fminf(*v15 + *v15, 1.0);
  v18 = v16 + 0.15;
  v19 = (v17 - v16) / (v18 - v16);
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

  return vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - ((v22 * v22) * ((v22 * -2.0) + 3.0))), vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v17), *v11, v17), (v22 * v22) * ((v22 * -2.0) + 3.0)).u64[0];
}

double CI::sw_blendGrains(uint64_t a1, uint64_t a2, uint64_t a3)
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

  _Q0 = *v7->f32;
  v9 = *(a2 + (*(v3 + 32) << 6));
  v10 = v9 * 1.43067656 + -1.43067656;
  v11 = vmuls_lane_f32(v10, *v7, 1) + (COERCE_FLOAT(*v7->f32) * (1.0 - v10));
  v12 = v9 * 1.10730936 + -1.8812854;
  _S6 = 1.0 - v12;
  __asm { FMLA            S4, S6, V0.S[1] }

  v19 = v9 * 1.10730936 + -2.8812854;
  _S6 = 1.0 - v19;
  __asm { FMLA            S5, S6, V0.S[2] }

  v22 = v9 + -1.69897;
  *&v22 = v9 + -1.69897;
  *&v9 = v9 + -2.60205999;
  if (*&v9 >= 0.0)
  {
    v23 = _S5;
  }

  else
  {
    v23 = _S4;
  }

  if (*&v22 >= 0.0)
  {
    *&v22 = v23;
  }

  else
  {
    *&v22 = v11;
  }

  *&result = vdupq_lane_s32(*&v22, 0).u64[0];
  return result;
}

unint64_t CI::sw_grainBlendAndMix(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, int32x2_t a7)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 8);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v7 + 16) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 32);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v7 + 40) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *v11;
  v17 = *(a2 + (*(v7 + 56) << 6));
  v45 = *v11;
  v46 = *(a2 + (*(v7 + 80) << 6));
  v19 = vmulq_f32(*v11, vdupq_n_s32(0x3EAAAA9Fu));
  v18 = vaddv_f32(*v19.f32);
  v19.f32[0] = v19.f32[2] + v18;
  if ((v19.f32[2] + v18) <= 1.0)
  {
    v20 = v19.f32[2] + v18;
  }

  else
  {
    v20 = 1.0;
  }

  if (v19.f32[0] >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  *a7.i32 = v21 * -2.0 + 4.01;
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  __asm { FMOV            V4.4S, #1.0 }

  v42 = _Q4;
  v44 = a7;
  v28 = vorrq_s8(vandq_s8(v16, v22), _Q4);
  v41 = vandq_s8(v28, vorrq_s8(vcltzq_f32(v16), vcgtzq_f32(v16)));
  v29 = vabsq_f32(v16);
  v29.i32[3] = 0;
  *v28.i32 = 1.0 / *a7.i32;
  v30 = vdupq_lane_s32(*v28.i8, 0);
  v30.i32[3] = 0;
  v31 = *v15;
  v32 = _simd_pow_f4(v29, v30);
  v33 = (1.0 - v21) * ((v17 * (v31 + -0.5)) * fmaxf(v21, 0.5));
  *&v33 = v33;
  v34 = vaddq_f32(vmulq_f32(v32, v41), vdupq_lane_s32(*&v33, 0));
  v35.i64[0] = 0x8000000080000000;
  v35.i64[1] = 0x8000000080000000;
  v43 = vbslq_s8(vorrq_s8(vcltzq_f32(v34), vcgtzq_f32(v34)), vorrq_s8(vandq_s8(v34, v35), v42), 0);
  v36 = vabsq_f32(v34);
  v36.i32[3] = 0;
  v37 = vdupq_lane_s32(v44, 0);
  v37.i32[3] = 0;
  v38 = vmulq_f32(_simd_pow_f4(v36, v37), v43);
  v38.i32[3] = 0;
  v39 = vminnmq_f32(v38, xmmword_19CF23BD0);
  v39.i32[3] = v45.i32[3];
  return vmlaq_n_f32(vmulq_n_f32(v45, 1.0 - v46), v39, v46).u64[0];
}

float32x2_t CI::sw_paddedTile2(CI *a1, uint64_t a2, uint64_t a3)
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

  v15 = *v7;
  v8 = vmul_f32(*&vextq_s8(v15, v15, 8uLL), *CI::getDC(a1));
  __asm { FMOV            V1.2S, #1.0 }

  return vadd_f32(vmul_f32(*v15.i8, vminnm_f32(vsub_f32(v8, vrndm_f32(v8)), vdup_n_s32(0x3F7FFFFFu))), _D1);
}

double map_point_inv(float32x2_t a1, float32x2_t a2, double a3, float a4, double a5, double a6, double a7, double a8)
{
  v9 = a1;
  v10 = vsub_f32(a1, a2);
  *&a8 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  v11 = *&a8;
  if (*&a8 >= 0.001)
  {
    if (fabsf(a4 + -1.0) >= 0.001)
    {
      v14 = a4;
      if (a4 >= 1.0 && *&a8 >= *&a3)
      {
        v21 = *&a3;
        v15 = pow(v11, v14 / (2.0 - v14));
        v16 = pow(v21, v14 / (v14 + -2.0));
        v17 = v15;
        *&v16 = v16;
        v18 = vmul_n_f32(vmul_n_f32(v10, v17), *&v16);
LABEL_9:
        v9 = vadd_f32(a2, v18);
        return *&v9;
      }

      v19 = (((*&a3 * a4) * a4) + v14 * -2.0 * v11 + v11 * 2.0 - sqrt(((*&a3 * a4) * a4) + v14 * -4.0 * v11 + v11 * 4.0) * (sqrtf(*&a3) * a4)) / ((a4 * a4) + v14 * -2.0 + 1.0 + (a4 * a4) + v14 * -2.0 + 1.0);
      v12 = vmul_n_f32(v10, v19);
      v13 = vdup_lane_s32(*&a8, 0);
    }

    else
    {
      v12 = vmul_n_f32(v10, *&a8);
      v13 = vdup_lane_s32(*&a3, 0);
    }

    v18 = vdiv_f32(v12, v13);
    goto LABEL_9;
  }

  return *&v9;
}

double regionOf(CGRect a1, float32x2_t a2, float32_t a3, float a4, float a5)
{
  v72 = a2.f32[0];
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  v71 = a1.origin.y;
  x = a1.origin.x;
  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 8);
  a2.f32[1] = a3;
  v82 = a2;
  v11 = *(MEMORY[0x1E695F050] + 16);
  v12 = *(MEMORY[0x1E695F050] + 24);
  v13.f32[0] = a1.origin.x;
  v77 = v13.i32[0];
  v14 = a1.origin.y;
  v75 = LODWORD(v14);
  v13.f32[1] = v14;
  map_point(v13, a2, a5, a4);
  v16 = unionPointWithRect(v15, v9, v10, v11, v12);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v70 = x;
  *&v17 = y + height;
  v74 = LODWORD(v17);
  map_point(__PAIR64__(LODWORD(v17), v77), v82, a5, a4);
  v24 = unionPointWithRect(v23, v16, v18, v20, v22);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31.f32[0] = x + width;
  v76 = v31.i32[0];
  v31.i32[1] = v75;
  map_point(v31, v82, a5, a4);
  v33 = unionPointWithRect(v32, v24, v26, v28, v30);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v69 = a4;
  v40 = width;
  map_point(__PAIR64__(v74, v76), v82, a5, a4);
  v42 = unionPointWithRect(v41, v33, v35, v37, v39);
  v44 = v43;
  v46 = v45;
  v79 = v47;
  v83.origin.x = v70;
  v83.origin.y = v71;
  v83.size.width = width;
  v83.size.height = height;
  if (CGRectGetMinX(v83) < v72)
  {
    v84.origin.x = v70;
    v84.origin.y = v71;
    v84.size.width = width;
    v84.size.height = height;
    if (CGRectGetMaxX(v84) > v72)
    {
      map_point(__PAIR64__(v75, v82.u32[0]), v82, a5, a4);
      v80 = unionPointWithRect(v48, v42, v44, v46, v79);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v40 = width;
      map_point(__PAIR64__(v74, v82.u32[0]), v82, a5, a4);
      v42 = unionPointWithRect(v55, v80, v50, v52, v54);
      v44 = v56;
      v46 = v57;
      v79 = v58;
    }
  }

  v85.origin.x = v70;
  v85.origin.y = v71;
  v85.size.width = v40;
  v85.size.height = height;
  if (CGRectGetMinY(v85) < a3)
  {
    v86.origin.x = v70;
    v86.origin.y = v71;
    v86.size.width = v40;
    v86.size.height = height;
    if (CGRectGetMaxY(v86) > a3)
    {
      map_point(__PAIR64__(v82.u32[1], v77), v82, a5, a4);
      v60 = unionPointWithRect(v59, v42, v44, v46, v79);
      v62 = v61;
      v64 = v63;
      v66 = v65;
      map_point(__PAIR64__(v82.u32[1], v76), v82, a5, v69);
      return unionPointWithRect(v67, v60, v62, v64, v66);
    }
  }

  return v42;
}

float32x2_t CI::sw_pinchDistortionScaleLT1(CI *a1, uint64_t a2, uint64_t a3)
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
  v19 = *v11;
  DC = CI::getDC(a1);
  v14 = vsub_f32(*DC, v12);
  *&v15 = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v14, v14))), *v19.f32, 1) + 0.000001;
  v16 = *&v15;
  v17 = vrsqrte_f32(v15);
  return vmla_laneq_f32(vmul_n_f32(*CI::getDC(DC), 1.0 - v19.f32[2]), vadd_f32(v12, vmul_n_f32(v14, vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17))).f32[0])), v19, 2);
}

int8x8_t CI::sw_pinchDistortionScaleGE1(CI *a1, uint64_t a2, uint64_t a3)
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
  v13 = vsub_f32(*CI::getDC(a1), *v7);
  *&v14 = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v13, v13))), *v22.f32, 1) + 0.000001;
  v14.f32[0] = *&v14;
  v23 = v14;
  v15 = vadd_f32(v12, vmul_n_f32(v13, powf(v14.f32[0], v22.f32[3])));
  v16 = vrsqrte_f32(v23.u32[0]);
  v17 = vadd_f32(v12, vmul_n_f32(v13, vmul_f32(v16, vrsqrts_f32(v23.u32[0], vmul_f32(v16, v16))).f32[0]));
  DC = CI::getDC(v18);
  v20.i32[0] = 1.0;
  return vbsl_s8(vdup_lane_s32(vcge_f32(v20, v23), 0), vmla_laneq_f32(vmul_n_f32(*DC, 1.0 - v22.f32[2]), v17, v22, 2), v15);
}

void map_point(float32x2_t a1, float32x2_t a2, float a3, float a4)
{
  if (a4 >= 1.0)
  {
    v4 = vsub_f32(a1, a2);
    v5 = ((1.0 / a3) * sqrtf(vaddv_f32(vmul_f32(v4, v4)))) + 0.000001;
    powf(v5, a4 * -0.5);
  }
}

float32x2_t CI::sw_pixellate(CI *a1, uint64_t a2, uint64_t a3)
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

  return vadd_f32(*v7, vmul_lane_f32(vadd_f32(vrndm_f32(vmul_n_f32(vsub_f32(*CI::getDC(a1), *v7), COERCE_FLOAT(*v11))), 0x3F0000003F000000), *v11, 1));
}

unint64_t CI::sw_hexagonalPixellate(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v13 = *(v4 + 80);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v4 + 88) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = a4 + 80 * *(v4 + 8);
  v18 = *v8;
  v19 = *v12;
  v20 = *v16;
  _S11 = *(a2 + (*(v4 + 104) << 6));
  _D1 = vsub_f32(*CI::getDC(a1), *v8);
  __asm { FMLS            S0, S11, V1.S[1] }

  v28 = vmul_f32(v19, __PAIR64__(_D1.u32[1], _S0));
  v29 = vrndm_f32(v28);
  _D3 = vsub_f32(v28, v29);
  *_Q0.i8 = vmul_f32(v20, v29);
  _D4 = vadd_f32(v20, *_Q0.i8);
  *_Q2.i8 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((vaddv_f32(_D3) + -1.0) < 0.0), 0x1FuLL)), *_Q0.i8, _D4);
  __asm { FMLA            S3, S11, V2.S[1] }

  _Q2.i32[0] = _D3.i32[0];
  __asm { FMLA            S5, S11, V4.S[1] }

  v35.i64[0] = __PAIR64__(_D4.u32[1], _S5);
  __asm { FMLA            S4, S11, V0.S[1] }

  _Q0.i32[0] = _D4.i32[0];
  v36 = vsub_f32(_D1, *_Q2.i8);
  v37 = vmul_f32(v36, v36);
  v38 = vadd_f32(v37, vdup_lane_s32(v37, 1));
  v40.i64[1] = v39;
  v41 = vrsqrte_f32(v38.u32[0]);
  _Q2.u64[1] = vmul_f32(vmul_f32(v41, vrsqrts_f32(v38.u32[0], vmul_f32(v41, v41))), v38);
  v42 = vsub_f32(_D1, *v35.i8);
  v43 = vmul_f32(v42, v42);
  v44 = vadd_f32(v43, vdup_lane_s32(v43, 1));
  v45 = vrsqrte_f32(v44.u32[0]);
  *v40.i8 = vmul_f32(vmul_f32(v45, vrsqrts_f32(v44.u32[0], vmul_f32(v45, v45))), v44);
  v35.i64[1] = v40.i64[0];
  v46 = vsub_f32(_D1, *_Q0.i8);
  v47 = vmul_f32(v46, v46);
  v48 = vadd_f32(v47, vdup_lane_s32(v47, 1));
  v50.i64[1] = v49;
  *v51.i8 = vrsqrte_f32(v48.u32[0]);
  *v50.i8 = vmul_f32(*v51.i8, vrsqrts_f32(v48.u32[0], vmul_f32(*v51.i8, *v51.i8)));
  _Q0.u64[1] = vmul_f32(*v50.i8, v48);
  v52 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(*v40.i8, _Q2.u64[1]), 0)), 0x1FuLL));
  v53 = vbslq_s8(v52, _Q2, v35);
  v54 = vbslq_s8(v52, v35, _Q2);
  v55 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v54, v53)), 2)), 0x1FuLL));
  v56 = vbslq_s8(v55, v53, _Q0);
  v57 = vbslq_s8(v55, _Q0, v53);
  v58 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v57, v54)), 2)), 0x1FuLL));
  v73 = v56;
  v74 = vbslq_s8(v58, v54, v57);
  *v54.f32 = vadd_f32(v18, *v56.i8);
  v56.i32[0] = *(v17 + 28);
  v57.f32[0] = *(v17 + 24) + (vmuls_lane_f32(*(v17 + 20), *v54.f32, 1) + (v54.f32[0] * *(v17 + 16)));
  v53.i32[0] = *(v17 + 36);
  *v58.i32 = vmuls_lane_f32(*(v17 + 32), *v54.f32, 1);
  v54.f32[0] = v53.f32[0] + (*v58.i32 + (v54.f32[0] * *v56.i32));
  v57.i32[1] = v54.i32[0];
  *v59.i64 = CI::BitmapSampler::read(*(v17 + 8), *v57.i64, v54, *v58.i64, *v56.i64, v53, v40, v50, v51);
  v72 = v59;
  *v59.f32 = vadd_f32(v18, *v74.f32);
  LODWORD(v60) = *(v17 + 24);
  v61.i32[0] = *(v17 + 36);
  *v62.i32 = vmuls_lane_f32(*(v17 + 32), *v59.f32, 1);
  *&v63 = *v62.i32 + (v59.f32[0] * *(v17 + 28));
  v59.f32[0] = *&v60 + (vmuls_lane_f32(*(v17 + 20), *v59.f32, 1) + (v59.f32[0] * *(v17 + 16)));
  *v64.f64 = *v61.i32 + *&v63;
  v59.f32[1] = *v61.i32 + *&v63;
  *v67.i64 = CI::BitmapSampler::read(*(v17 + 8), *v59.i64, v64, v60, v63, v62, v61, v65, v66);
  v68 = COERCE_FLOAT(vsubq_f32(v73, v74).i32[2]) * 0.5 + 0.5;
  if (v68 <= 1.0)
  {
    v69 = v68;
  }

  else
  {
    v69 = 1.0;
  }

  _NF = v68 < 0.0;
  v70 = 0.0;
  if (!_NF)
  {
    v70 = v69;
  }

  return vmlaq_n_f32(vmulq_n_f32(v72, 1.0 - v70), v67, v70).u64[0];
}

uint64_t CI::sw_interleavedToPlanar3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7.f64[0] = *CI::getDC(a1);
  v12 = *(v7.f64 + 1);
  v13 = *(v7.f64 + 1);
  v14 = v6;
  v15 = v14 + v14;
  v16 = *(v7.f64 + 1) + v6 * -2.0;
  if (v14 + v14 > *(v7.f64 + 1))
  {
    v16 = *(v7.f64 + 1) - v6;
  }

  HIDWORD(v17) = 0x80000000;
  v18 = v13 + v14 * -0.0;
  if (*(v7.f64 + 1) >= v6)
  {
    v18 = v16;
  }

  *&v16 = v18;
  v8.i32[0] = *(v5 + 28);
  *&v19 = *(v5 + 24) + ((*(v5 + 20) * *&v16) + (*v7.f64 * *(v5 + 16)));
  LODWORD(v17) = *(v5 + 32);
  v9.i32[0] = *(v5 + 36);
  *&v16 = *&v17 * *&v16;
  *v7.f64 = *v9.i32 + (*&v16 + (*v7.f64 * *v8.i32));
  HIDWORD(v19) = LODWORD(v7.f64[0]);
  v20 = CI::BitmapSampler::read(*(v5 + 8), v19, v7, v16, v17, v8, v9, v10, v11);
  HIDWORD(v22) = 0;
  if (v12 >= v6)
  {
    if (v15 <= v13)
    {
      LODWORD(v22) = LODWORD(v20);
    }

    else
    {
      LODWORD(v22) = HIDWORD(v20);
    }
  }

  else
  {
    LODWORD(v22) = v21;
  }

  return v22;
}

unint64_t CI::sw_planarToInterleaved3(CI *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 5);
  v7 = *(v6 + 8);
  LODWORD(a3) = *(a2 + (*(v6 + 32) << 6));
  v42 = a3;
  DC = CI::getDC(a1);
  HIDWORD(v14) = HIDWORD(v42);
  v15.f64[0] = *DC;
  if (COERCE_FLOAT(*DC) < 0.0 || *v15.f64 > *&v42)
  {
    return 0;
  }

  if (*(v15.f64 + 1) < 0.0 || *(v15.f64 + 1) > *&v42)
  {
    return 0;
  }

  v19 = a5 + 80 * v7;
  v20.i32[0] = 0;
  v20.i32[1] = LODWORD(v42);
  v40 = v15;
  v41 = v20;
  v21 = vadd_f32(vadd_f32(v20, v20), *&v15.f64[0]);
  LODWORD(v14) = *(v19 + 24);
  v11.i32[0] = *(v19 + 36);
  *v10.i32 = vmuls_lane_f32(*(v19 + 32), v21, 1);
  *&v9 = *v10.i32 + (v21.f32[0] * *(v19 + 28));
  v21.f32[0] = *&v14 + (vmuls_lane_f32(*(v19 + 20), v21, 1) + (v21.f32[0] * *(v19 + 16)));
  *v15.f64 = *v11.i32 + *&v9;
  v21.f32[1] = *v11.i32 + *&v9;
  v22 = CI::BitmapSampler::read(*(v19 + 8), *&v21, v15, v14, v9, v10, v11, v12, v13);
  v43 = LODWORD(v22);
  v23 = v40;
  v24 = vadd_f32(v41, *&v40.f64[0]);
  LODWORD(v25) = *(v19 + 24);
  v26.i32[0] = *(v19 + 36);
  *v27.i32 = vmuls_lane_f32(*(v19 + 32), v24, 1);
  *&v28 = *v27.i32 + (v24.f32[0] * *(v19 + 28));
  v24.f32[0] = *&v25 + (vmuls_lane_f32(*(v19 + 20), v24, 1) + (v24.f32[0] * *(v19 + 16)));
  *v23.f64 = *v26.i32 + *&v28;
  v24.f32[1] = *v26.i32 + *&v28;
  v31 = CI::BitmapSampler::read(*(v19 + 8), *&v24, v23, v25, v28, v27, v26, v29, v30);
  v44 = __PAIR64__(LODWORD(v31), v43);
  v32 = v40;
  v33 = vadd_f32(vmul_f32(v41, 0), *&v40.f64[0]);
  LODWORD(v34) = *(v19 + 24);
  v35.i32[0] = *(v19 + 36);
  *v36.i32 = vmuls_lane_f32(*(v19 + 32), v33, 1);
  *&v37 = *v36.i32 + (v33.f32[0] * *(v19 + 28));
  v33.f32[0] = *&v34 + (vmuls_lane_f32(*(v19 + 20), v33, 1) + (v33.f32[0] * *(v19 + 16)));
  *v32.f64 = *v35.i32 + *&v37;
  v33.f32[1] = *v35.i32 + *&v37;
  CI::BitmapSampler::read(*(v19 + 8), *&v33, v32, v34, v37, v36, v35, v38, v39);
  return v44;
}

uint64_t CI::sw_interleavedToPlanar4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7.f64[0] = *CI::getDC(a1);
  v13 = *(v7.f64 + 1);
  v14 = *(v7.f64 + 1);
  v15 = v6;
  v16 = v15 + v15;
  v17 = *(v7.f64 + 1) + v6 * -3.0;
  if (v6 * 3.0 > *(v7.f64 + 1))
  {
    v17 = *(v7.f64 + 1) + v6 * -2.0;
  }

  if (v16 > v14)
  {
    v17 = v14 - v15;
  }

  v18 = v14 + v15 * -0.0;
  if (*(v7.f64 + 1) < v6)
  {
    v17 = v14 + v15 * -0.0;
  }

  *&v18 = v17;
  v9.i32[0] = *(v5 + 28);
  *&v19 = *(v5 + 24) + ((*(v5 + 20) * *&v18) + (*v7.f64 * *(v5 + 16)));
  LODWORD(v8) = *(v5 + 32);
  v10.i32[0] = *(v5 + 36);
  *&v18 = *&v8 * *&v18;
  *v7.f64 = *v10.i32 + (*&v18 + (*v7.f64 * *v9.i32));
  HIDWORD(v19) = LODWORD(v7.f64[0]);
  v20 = CI::BitmapSampler::read(*(v5 + 8), v19, v7, v18, v8, v9, v10, v11, v12);
  if (v13 < v6)
  {
    return v22;
  }

  if (v16 > v14)
  {
    return v21;
  }

  HIDWORD(v23) = 0;
  if (v15 * 3.0 <= v14)
  {
    LODWORD(v23) = LODWORD(v20);
  }

  else
  {
    LODWORD(v23) = HIDWORD(v20);
  }

  return v23;
}

uint64_t CI::sw_planarToInterleaved4(CI *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 5);
  v7 = *(v6 + 8);
  LODWORD(a3) = *(a2 + (*(v6 + 32) << 6));
  v52 = a3;
  DC = CI::getDC(a1);
  HIDWORD(v14) = HIDWORD(v52);
  v15.f64[0] = *DC;
  if (COERCE_FLOAT(*DC) < 0.0 || *v15.f64 > *&v52)
  {
    return 0;
  }

  if (*(v15.f64 + 1) < 0.0 || *(v15.f64 + 1) > *&v52)
  {
    return 0;
  }

  v19 = a5 + 80 * v7;
  LODWORD(v9) = 0;
  DWORD1(v9) = LODWORD(v52);
  v51 = v15;
  v53 = v9;
  __asm { FMOV            V0.2S, #3.0 }

  v25 = vadd_f32(vmul_f32(*&v9, _D0), *&v15.f64[0]);
  LODWORD(v9) = *(v19 + 24);
  v11.i32[0] = *(v19 + 36);
  *v10.i32 = vmuls_lane_f32(*(v19 + 32), v25, 1);
  *&v14 = *v10.i32 + (v25.f32[0] * *(v19 + 28));
  v25.f32[0] = *&v9 + (vmuls_lane_f32(*(v19 + 20), v25, 1) + (v25.f32[0] * *(v19 + 16)));
  *v15.f64 = *v11.i32 + *&v14;
  v25.f32[1] = *v11.i32 + *&v14;
  *v26.i64 = CI::BitmapSampler::read(*(v19 + 8), *&v25, v15, *&v9, v14, v10, v11, v12, v13);
  v50 = v26;
  v27 = v51;
  *v26.i8 = vadd_f32(vadd_f32(*&v53, *&v53), *&v51.f64[0]);
  LODWORD(v28) = *(v19 + 24);
  v29.i32[0] = *(v19 + 36);
  *v30.i32 = vmuls_lane_f32(*(v19 + 32), *v26.i8, 1);
  *&v31 = *v30.i32 + (*v26.i32 * *(v19 + 28));
  *v26.i32 = *&v28 + (vmuls_lane_f32(*(v19 + 20), *v26.i8, 1) + (*v26.i32 * *(v19 + 16)));
  *v27.f64 = *v29.i32 + *&v31;
  *&v26.i32[1] = *v29.i32 + *&v31;
  *v34.i64 = CI::BitmapSampler::read(*(v19 + 8), *v26.i64, v27, v28, v31, v30, v29, v32, v33);
  HIDWORD(v36) = HIDWORD(v51.f64[0]);
  v35.f64[1] = *(&v53 + 1);
  *&v35.f64[0] = vadd_f32(*&v53, *&v51.f64[0]);
  *&v36 = vmuls_lane_f32(*(v19 + 20), *&v35.f64[0], 1) + (*v35.f64 * *(v19 + 16));
  LODWORD(v37) = *(v19 + 24);
  v38.i32[0] = *(v19 + 36);
  *v39.i32 = vmuls_lane_f32(*(v19 + 32), *&v35.f64[0], 1);
  v40 = v50;
  v50.i64[0] = vzip1q_s32(v50, v34).u64[0];
  *v34.i32 = *&v37 + *&v36;
  *v35.f64 = *v38.i32 + (*v39.i32 + (*v35.f64 * *(v19 + 28)));
  v34.i32[1] = LODWORD(v35.f64[0]);
  CI::BitmapSampler::read(*(v19 + 8), *v34.i64, v35, v36, v37, v40, v39, v38, v41);
  v42 = v51;
  v43 = vadd_f32(vmul_f32(*&v53, 0), *&v51.f64[0]);
  LODWORD(v44) = *(v19 + 24);
  v45.i32[0] = *(v19 + 36);
  *v46.i32 = vmuls_lane_f32(*(v19 + 32), v43, 1);
  *&v47 = *v46.i32 + (v43.f32[0] * *(v19 + 28));
  v43.f32[0] = *&v44 + (vmuls_lane_f32(*(v19 + 20), v43, 1) + (v43.f32[0] * *(v19 + 16)));
  *v42.f64 = *v45.i32 + *&v47;
  v43.f32[1] = *v45.i32 + *&v47;
  CI::BitmapSampler::read(*(v19 + 8), *&v43, v42, v44, v47, v46, v45, v48, v49);
  return v50.i64[0];
}

double CI::sw_pointillize(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v6;
  v12 = a4 + 80 * v5;
  v166 = *v10;
  DC = CI::getDC(a1);
  LODWORD(v14) = *(v12 + 24);
  v15.i32[0] = *(v12 + 36);
  *v16.i32 = vmuls_lane_f32(*(v12 + 32), *DC, 1);
  *&v17 = *v16.i32 + (COERCE_FLOAT(*DC) * *(v12 + 28));
  *&v18 = *&v14 + (vmuls_lane_f32(*(v12 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v12 + 16)));
  *v19.f64 = *v15.i32 + *&v17;
  *(&v18 + 1) = *v15.i32 + *&v17;
  *v22.i64 = CI::BitmapSampler::read(*(v12 + 8), v18, v19, v14, v17, v16, v15, v20, v21);
  v162 = v22;
  v23.i32[0] = vdup_laneq_s32(v166, 2).u32[0];
  v163 = v23.i32[0];
  v23.i32[1] = v166.i32[2];
  v160 = v23;
  v25 = *CI::getDC(v24);
  v26 = vmul_laneq_f32(v25, v166, 3);
  v27 = vadd_f32(vadd_f32(*v166.f32, 0x3F0000003F000000), vrndm_f32(vadd_f32(v26, 0x3F0000003F000000)));
  v28 = vdup_n_s32(0x3B800000u);
  *&v29.f64[0] = vrndm_f32(vmul_f32(v27, v28));
  v30 = vdup_n_s32(0xC3800000);
  v153 = v30;
  v31 = vmla_f32(v27, v30, *&v29.f64[0]);
  v30.i32[0] = *(v11 + 24);
  v32.i32[0] = *(v11 + 36);
  *v33.i32 = vmuls_lane_f32(*(v11 + 32), v31, 1);
  *&v34 = *v33.i32 + (v31.f32[0] * *(v11 + 28));
  v31.f32[0] = v30.f32[0] + (vmuls_lane_f32(*(v11 + 20), v31, 1) + (v31.f32[0] * *(v11 + 16)));
  *v29.f64 = *v32.i32 + *&v34;
  v31.f32[1] = *v32.i32 + *&v34;
  *&v37 = CI::BitmapSampler::read(*(v11 + 8), *&v31, v29, *&v30, v34, v33, v32, v35, v36);
  v156 = v37;
  *v38.i8 = vadd_f32(vmul_laneq_f32(vadd_f32(vrndm_f32(vadd_f32(v26, 0xBF000000BF000000)), 0x3F0000003F000000), v166, 2), 0x3F0000003F000000);
  v39 = vadd_f32(v160, *v38.i8);
  v40 = vdup_n_s32(0x3F266666u);
  v152 = v40;
  *&v41.f64[0] = vmul_f32(vmul_laneq_f32(vadd_f32(*&v37, 0xBF000000BF000000), v166, 2), v40);
  *&v37 = vadd_f32(v39, *&v41.f64[0]);
  *v41.f64 = vmuls_lane_f32(*(v12 + 20), *&v37, 1) + (*&v37 * *(v12 + 16));
  v40.i32[0] = *(v12 + 24);
  v42.i32[0] = *(v12 + 36);
  *v38.i32 = vmuls_lane_f32(*(v12 + 32), *&v37, 1);
  v39.f32[0] = *v38.i32 + (*&v37 * *(v12 + 28));
  *&v37 = vsub_f32(*&v37, v25);
  *&v37 = vmul_f32(*&v37, *&v37);
  v159 = v37;
  *&v37 = v40.f32[0] + *v41.f64;
  *v41.f64 = *v42.i32 + v39.f32[0];
  *(&v37 + 1) = *v42.i32 + v39.f32[0];
  *v45.i64 = CI::BitmapSampler::read(*(v12 + 8), *&v37, v41, *&v40, *&v39, v38, v42, v43, v44);
  v46.i32[1] = DWORD1(v156);
  *v46.i32 = (*(&v156 + 2) + -0.5) * 0.1;
  v47 = vaddq_f32(v45, vmulq_laneq_f32(vdupq_lane_s32(v46, 0), v45, 3));
  v47.i32[3] = v45.i32[3];
  v161 = v47;
  v47.i64[1] = v166.i64[1];
  v47.i32[0] = 0;
  v47.i32[1] = vextq_s8(v166, v166, 8uLL).u32[0];
  v157 = v47;
  v49 = *CI::getDC(v48);
  v50 = vmul_laneq_f32(v49, v166, 3);
  v51 = vadd_f32(vadd_f32(*v166.f32, COERCE_FLOAT32X2_T(--0.0000305175998)), vrndm_f32(vadd_f32(v50, 0x3F0000003F000000)));
  *&v52.f64[0] = vrndm_f32(vmul_f32(v51, v28));
  v53 = vmla_f32(v51, v153, *&v52.f64[0]);
  LODWORD(v54) = *(v11 + 24);
  v55.i32[0] = *(v11 + 36);
  *v56.i32 = vmuls_lane_f32(*(v11 + 32), v53, 1);
  *&v57 = *v56.i32 + (v53.f32[0] * *(v11 + 28));
  v53.f32[0] = *&v54 + (vmuls_lane_f32(*(v11 + 20), v53, 1) + (v53.f32[0] * *(v11 + 16)));
  *v52.f64 = *v55.i32 + *&v57;
  v53.f32[1] = *v55.i32 + *&v57;
  *&v60 = CI::BitmapSampler::read(*(v11 + 8), *&v53, v52, v54, v57, v56, v55, v58, v59);
  v150 = v60;
  HIDWORD(v61) = v166.i32[1];
  *&v62.f64[1] = v157.i64[1];
  v63 = vadd_f32(*v157.f32, vadd_f32(vmul_laneq_f32(vadd_f32(vrndm_f32(vadd_f32(v50, 0xBF000000BF000000)), 0x3F0000003F000000), v166, 2), 0x3F0000003F000000));
  *&v62.f64[0] = vmul_f32(vmul_laneq_f32(vadd_f32(*&v60, 0xBF000000BF000000), v166, 2), v152);
  *&v60 = vadd_f32(v63, *&v62.f64[0]);
  *v62.f64 = vmuls_lane_f32(*(v12 + 20), *&v60, 1) + (*&v60 * *(v12 + 16));
  LODWORD(v61) = *(v12 + 24);
  v64.i32[0] = *(v12 + 36);
  *v65.i32 = vmuls_lane_f32(*(v12 + 32), *&v60, 1);
  v63.f32[0] = *v65.i32 + (*&v60 * *(v12 + 28));
  *&v60 = vsub_f32(*&v60, v49);
  v155 = vmul_f32(*&v60, *&v60);
  *&v60 = *&v61 + *v62.f64;
  *v62.f64 = *v64.i32 + v63.f32[0];
  *(&v60 + 1) = *v64.i32 + v63.f32[0];
  *v68.i64 = CI::BitmapSampler::read(*(v12 + 8), *&v60, v62, v61, *&v63, v65, v64, v66, v67);
  v69.i32[1] = DWORD1(v150);
  *v69.i32 = (*(&v150 + 2) + -0.5) * 0.1;
  v70 = vaddq_f32(v68, vmulq_laneq_f32(vdupq_lane_s32(v69, 0), v68, 3));
  v70.i32[3] = v68.i32[3];
  v158 = v70;
  v72 = *CI::getDC(v71);
  v73 = vmul_laneq_f32(v72, v166, 3);
  v74 = vadd_f32(vadd_f32(*v166.f32, COERCE_FLOAT32X2_T(-0.0000305175853)), vrndm_f32(vadd_f32(v73, 0x3F0000003F000000)));
  *&v75.f64[0] = vrndm_f32(vmul_f32(v74, v28));
  v76 = vmla_f32(v74, v153, *&v75.f64[0]);
  LODWORD(v77) = *(v11 + 24);
  v78.i32[0] = *(v11 + 36);
  *v79.i32 = vmuls_lane_f32(*(v11 + 32), v76, 1);
  *&v80 = *v79.i32 + (v76.f32[0] * *(v11 + 28));
  v76.f32[0] = *&v77 + (vmuls_lane_f32(*(v11 + 20), v76, 1) + (v76.f32[0] * *(v11 + 16)));
  *v75.f64 = *v78.i32 + *&v80;
  v76.f32[1] = *v78.i32 + *&v80;
  *&v83 = CI::BitmapSampler::read(*(v11 + 8), *&v76, v75, v77, v80, v79, v78, v81, v82);
  v151 = v83;
  HIDWORD(v84) = v166.i32[1];
  *v85.i8 = vadd_f32(vmul_laneq_f32(vadd_f32(vrndm_f32(vadd_f32(v73, 0xBF000000BF000000)), 0x3F0000003F000000), v166, 2), 0x3F0000003F000000);
  v86 = vadd_f32(v163, *v85.i8);
  *&v87.f64[0] = vmul_f32(vmul_laneq_f32(vadd_f32(*&v83, 0xBF000000BF000000), v166, 2), v152);
  *&v83 = vadd_f32(v86, *&v87.f64[0]);
  *v87.f64 = vmuls_lane_f32(*(v12 + 20), *&v83, 1) + (*&v83 * *(v12 + 16));
  LODWORD(v84) = *(v12 + 24);
  v88.i32[0] = *(v12 + 36);
  *v85.i32 = vmuls_lane_f32(*(v12 + 32), *&v83, 1);
  v86.f32[0] = *v85.i32 + (*&v83 * *(v12 + 28));
  *&v83 = vsub_f32(*&v83, v72);
  v89 = vmul_f32(*&v83, *&v83);
  *&v83 = *&v84 + *v87.f64;
  *v87.f64 = *v88.i32 + v86.f32[0];
  *(&v83 + 1) = *v88.i32 + v86.f32[0];
  *v92.i64 = CI::BitmapSampler::read(*(v12 + 8), *&v83, v87, v84, *&v86, v85, v88, v90, v91);
  v93.i32[1] = DWORD1(v151);
  *v93.i32 = (*(&v151 + 2) + -0.5) * 0.1;
  v94 = vaddq_f32(v92, vmulq_laneq_f32(vdupq_lane_s32(v93, 0), v92, 3));
  v94.i32[3] = v92.i32[3];
  v164 = v94;
  v96 = *CI::getDC(v95);
  v97 = vmul_laneq_f32(v96, v166, 3);
  v98 = vadd_f32(vadd_f32(*v166.f32, 0xBF000000BF000000), vrndm_f32(vadd_f32(v97, 0x3F0000003F000000)));
  *&v99.f64[0] = vrndm_f32(vmul_f32(v98, v28));
  v100 = vmla_f32(v98, v153, *&v99.f64[0]);
  LODWORD(v101) = *(v11 + 24);
  v102.i32[0] = *(v11 + 36);
  *v103.i32 = vmuls_lane_f32(*(v11 + 32), v100, 1);
  *&v104 = *v103.i32 + (v100.f32[0] * *(v11 + 28));
  v100.f32[0] = *&v101 + (vmuls_lane_f32(*(v11 + 20), v100, 1) + (v100.f32[0] * *(v11 + 16)));
  *v99.f64 = *v102.i32 + *&v104;
  v100.f32[1] = *v102.i32 + *&v104;
  *v107.i64 = CI::BitmapSampler::read(*(v11 + 8), *&v100, v99, v101, v104, v103, v102, v105, v106);
  v154 = v107;
  *&v110.f64[0] = vadd_f32(vadd_f32(vmul_laneq_f32(vadd_f32(vrndm_f32(vadd_f32(v97, 0xBF000000BF000000)), 0x3F0000003F000000), v166, 2), 0x3F0000003F000000), vmul_f32(vmul_laneq_f32(vadd_f32(*v107.f32, 0xBF000000BF000000), v166, 2), v152));
  *v107.f32 = vsub_f32(*&v110.f64[0], v96);
  *v107.f32 = vmul_f32(*v107.f32, *v107.f32);
  *v111.f32 = vzip1_s32(*v107.f32, v89);
  v111.i64[1] = __PAIR64__(v159, v155.u32[0]);
  v112.i64[1] = *(&v159 + 1);
  *v107.f32 = vzip2_s32(*v107.f32, v89);
  v107.i64[1] = __PAIR64__(DWORD1(v159), vdup_lane_s32(v155, 1).u32[0]);
  v113 = vdivq_f32(vmulq_laneq_f32(vsqrtq_f32(vaddq_f32(v111, v107)), v166, 3), vdupq_n_s32(0xBF35C28F));
  v114 = vcvt_hight_f64_f32(v113);
  __asm { FMOV            V3.2D, #1.0 }

  v120 = vaddq_f64(vcvtq_f64_f32(*v113.f32), _Q3);
  v121 = vaddq_f64(v114, _Q3);
  __asm { FMOV            V3.2D, #3.0 }

  v123 = vmulq_f64(v121, _Q3);
  v124 = vcvt_f32_f64(vmulq_f64(v120, _Q3));
  v125 = vcvt_hight_f32_f64(v124, v123);
  v126 = vcvt_f32_f64(v123);
  v127 = v126.f32[1];
  if (v126.f32[1] > 1.0)
  {
    v127 = 1.0;
  }

  v128 = COERCE_DOUBLE(vmovn_s32(vcltzq_f32(v125)));
  v129 = v127;
  v112.i64[0] = 0;
  if (BYTE6(v128))
  {
    v129 = 0.0;
  }

  v108.i64[0] = 3.0;
  v109.i64[0] = -2.0;
  v130 = (v129 * -2.0 + 3.0) * v129;
  v131 = v130 * v129;
  *&v130 = 1.0 - v131;
  v132 = vmlaq_n_f32(vmulq_laneq_f32(vdupq_lane_s32(*&v130, 0), v162, 3), v161, v131);
  if (v126.f32[0] > 1.0)
  {
    v126.f32[0] = 1.0;
  }

  v133 = v126.f32[0];
  if (BYTE4(v128))
  {
    v133 = 0.0;
  }

  v134 = (v133 * -2.0 + 3.0) * v133 * v133;
  v135 = vmlaq_n_f32(vmulq_n_f32(v132, 1.0 - v134), v158, v134);
  v136 = *&v124.i32[1];
  if (*&v124.i32[1] > 1.0)
  {
    v136 = 1.0;
  }

  v137 = v136;
  if (BYTE2(v128))
  {
    v137 = 0.0;
  }

  v138 = (v137 * -2.0 + 3.0) * v137 * v137;
  v139 = vmulq_n_f32(v135, 1.0 - v138);
  v140 = v164;
  v141 = vmlaq_n_f32(v139, v164, v138);
  if (*v124.i32 > 1.0)
  {
    *v124.i32 = 1.0;
  }

  v142 = *v124.i32;
  if (LOBYTE(v128))
  {
    v142 = 0.0;
  }

  v143 = (v142 * -2.0 + 3.0) * v142;
  v144 = v143 * v142;
  v165 = v144;
  v167 = v141;
  LODWORD(v128) = *(v12 + 28);
  *&v145 = *(v12 + 24) + (vmuls_lane_f32(*(v12 + 20), *&v110.f64[0], 1) + (*v110.f64 * *(v12 + 16)));
  v140.i32[0] = *(v12 + 36);
  *&v143 = vmuls_lane_f32(*(v12 + 32), *&v110.f64[0], 1);
  *v110.f64 = *v140.i32 + (*&v143 + (*v110.f64 * *&v128));
  HIDWORD(v145) = LODWORD(v110.f64[0]);
  *v146.i64 = CI::BitmapSampler::read(*(v12 + 8), v145, v110, v143, v128, v140, v112, v108, v109);
  v147.i32[1] = v154.i32[1];
  *v147.i32 = (v154.f32[2] + -0.5) * 0.1;
  v148 = vaddq_f32(v146, vmulq_laneq_f32(vdupq_lane_s32(v147, 0), v146, 3));
  v148.i32[3] = v146.i32[3];
  *&result = vmlaq_n_f32(vmulq_n_f32(v167, 1.0 - v165), v148, v165).u64[0];
  return result;
}

void sub_19CD97EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n64 CI::sw_xSmooth(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v11 = *CI::getDC(a1);
  v12 = -4;
  v13 = 0.0;
  LODWORD(v14.f64[0]) = 1120403456;
  do
  {
    v18 = v14;
    HIDWORD(v14.f64[0]) = 0;
    v15 = vadd_f32(v11, COERCE_UNSIGNED_INT(v12));
    LODWORD(v5) = *(v4 + 24);
    v8.i32[0] = *(v4 + 36);
    *v7.i32 = vmuls_lane_f32(*(v4 + 32), v15, 1);
    *&v6 = *v7.i32 + (v15.f32[0] * *(v4 + 28));
    v15.f32[0] = *&v5 + (vmuls_lane_f32(*(v4 + 20), v15, 1) + (v15.f32[0] * *(v4 + 16)));
    *v14.f64 = *v8.i32 + *&v6;
    v15.f32[1] = *v8.i32 + *&v6;
    *v16.i64 = CI::BitmapSampler::read(*(v4 + 8), *&v15, v14, v5, v6, v7, v8, v9, v10);
    v5 = v13;
    v13 = v13 + vmulq_f32(v16, v16).f32[0] * 0.111111111;
    v14 = v18;
    *v14.f64 = fminf(*v18.f64, v16.f32[0]);
    ++v12;
  }

  while (v12 != 5);
  result.n64_f32[0] = sqrtf(v13);
  result.n64_u32[1] = LODWORD(v14.f64[0]);
  return result;
}

float CI::sw_ySmooth(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = *(v5 + 64);
  v9 = *(v5 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = a4 + 80 * v6;
  v50 = *v11;
  v20 = *CI::getDC(a1);
  v21 = -4;
  v22 = 0.0;
  LODWORD(v23.f64[0]) = 1120403456;
  v51 = v23;
  do
  {
    LODWORD(v13.f64[0]) = 0;
    *(v13.f64 + 1) = v21;
    v24 = vadd_f32(v20, *&v13.f64[0]);
    LODWORD(v14) = *(v12 + 24);
    v17.i32[0] = *(v12 + 36);
    *v16.i32 = vmuls_lane_f32(*(v12 + 32), v24, 1);
    *&v15 = *v16.i32 + (v24.f32[0] * *(v12 + 28));
    v24.f32[0] = *&v14 + (vmuls_lane_f32(*(v12 + 20), v24, 1) + (v24.f32[0] * *(v12 + 16)));
    *v13.f64 = *v17.i32 + *&v15;
    v24.f32[1] = *v17.i32 + *&v15;
    *v26.i64 = CI::BitmapSampler::read(*(v12 + 8), *&v24, v13, v14, v15, v16, v17, v18, v19);
    v14 = v22;
    v22 = v22 + vmulq_f32(v26, v26).f32[0] * 0.111111111;
    v13 = v51;
    *v13.f64 = fminf(*v51.f64, v26.f32[1]);
    v51 = v13;
    ++v21;
  }

  while (v21 != 5);
  v27 = a4 + 80 * v7;
  DC = CI::getDC(v25);
  LODWORD(v29) = *(v27 + 24);
  v30.i32[0] = *(v27 + 36);
  *v31.i32 = vmuls_lane_f32(*(v27 + 32), *DC, 1);
  *&v32 = *v31.i32 + (COERCE_FLOAT(*DC) * *(v27 + 28));
  *&v33 = *&v29 + (vmuls_lane_f32(*(v27 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v27 + 16)));
  *v34.f64 = *v30.i32 + *&v32;
  *(&v33 + 1) = *v30.i32 + *&v32;
  v37 = CI::BitmapSampler::read(*(v27 + 8), v33, v34, v29, v32, v31, v30, v35, v36);
  v38 = vdup_lane_s32(*&v37, 0);
  _Q4 = v50;
  v38.i32[0] = LODWORD(v51.f64[0]);
  v40 = vextq_s8(_Q4, _Q4, 8uLL).u64[0];
  _Q4.i32[0] = HIDWORD(v40);
  v41 = vdiv_f32(vsub_f32(v38, __PAIR64__(v50.u32[0], v40)), vsub_f32(*_Q4.i8, __PAIR64__(v50.u32[0], v40)));
  __asm { FMOV            V3.2S, #1.0 }

  v47 = vbic_s8(vbsl_s8(vcgt_f32(v41, _D3), _D3, v41), vcltz_f32(v41));
  __asm { FMOV            V4.2S, #3.0 }

  v48 = vmul_f32(vmul_f32(v47, v47), vmla_f32(*_Q4.i8, 0xC0000000C0000000, v47));
  v48.f32[0] = vmul_lane_f32(v48, v48, 1).f32[0];
  return (sqrtf(v22) * v48.f32[0]) + (*&v37 * (1.0 - v48.f32[0]));
}

double CI::sw_CIPortraitBlurDir(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v90 = *(a2 + (*(v4 + 32) << 6));
  v6 = vext_s8(*v90.i8, *&vextq_s8(v90, v90, 8uLL), 4uLL);
  v7.f64[0] = *CI::getDC(a1);
  v97 = v7;
  __asm { FMOV            V0.2S, #3.0 }

  v13 = vmul_f32(v6, _D0);
  v14 = vsub_f32(*&v7.f64[0], v13);
  LODWORD(v15) = *(v5 + 24);
  v16.i32[0] = *(v5 + 36);
  *v17.i32 = vmuls_lane_f32(*(v5 + 32), v14, 1);
  *&v18 = *v17.i32 + (v14.f32[0] * *(v5 + 28));
  v14.f32[0] = *&v15 + (vmuls_lane_f32(*(v5 + 20), v14, 1) + (v14.f32[0] * *(v5 + 16)));
  *v7.f64 = *v16.i32 + *&v18;
  v14.f32[1] = *v16.i32 + *&v18;
  *v21.i64 = CI::BitmapSampler::read(*(v5 + 8), *&v14, v7, v15, v18, v17, v16, v19, v20);
  v96 = v21;
  v22 = vadd_f32(v6, v6);
  *v21.f32 = vsub_f32(*v97.i8, v22);
  LODWORD(v23) = *(v5 + 24);
  v24.i32[0] = *(v5 + 36);
  *v25.i32 = vmuls_lane_f32(*(v5 + 32), *v21.f32, 1);
  *&v26 = *v25.i32 + (v21.f32[0] * *(v5 + 28));
  v21.f32[0] = *&v23 + (vmuls_lane_f32(*(v5 + 20), *v21.f32, 1) + (v21.f32[0] * *(v5 + 16)));
  *v27.f64 = *v24.i32 + *&v26;
  v21.f32[1] = *v24.i32 + *&v26;
  *v30.i64 = CI::BitmapSampler::read(*(v5 + 8), *v21.i64, v27, v23, v26, v25, v24, v28, v29);
  v95 = v30;
  *v30.f32 = vsub_f32(*v97.i8, v6);
  LODWORD(v31) = *(v5 + 24);
  v32.i32[0] = *(v5 + 36);
  *v33.i32 = vmuls_lane_f32(*(v5 + 32), *v30.f32, 1);
  *&v34 = *v33.i32 + (v30.f32[0] * *(v5 + 28));
  v30.f32[0] = *&v31 + (vmuls_lane_f32(*(v5 + 20), *v30.f32, 1) + (v30.f32[0] * *(v5 + 16)));
  *v35.f64 = *v32.i32 + *&v34;
  v30.f32[1] = *v32.i32 + *&v34;
  *v38.i64 = CI::BitmapSampler::read(*(v5 + 8), *v30.i64, v35, v31, v34, v33, v32, v36, v37);
  v94 = v38;
  LODWORD(v39) = *(v5 + 28);
  v38.f32[0] = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *v97.i8, 1) + (*v97.i32 * *(v5 + 16)));
  LODWORD(v40) = *(v5 + 36);
  *v41.f64 = *&v40 + (vmuls_lane_f32(*(v5 + 32), *v97.i8, 1) + (*v97.i32 * *&v39));
  v38.i32[1] = LODWORD(v41.f64[0]);
  *v45.i64 = CI::BitmapSampler::read(*(v5 + 8), *v38.i64, v41, v39, v40, v97, v42, v43, v44);
  v93 = v45;
  *v45.f32 = vadd_f32(v6, *v97.i8);
  LODWORD(v46) = *(v5 + 24);
  v47.i32[0] = *(v5 + 36);
  *v48.i32 = vmuls_lane_f32(*(v5 + 32), *v45.f32, 1);
  *&v49 = *v48.i32 + (v45.f32[0] * *(v5 + 28));
  v45.f32[0] = *&v46 + (vmuls_lane_f32(*(v5 + 20), *v45.f32, 1) + (v45.f32[0] * *(v5 + 16)));
  *v50.f64 = *v47.i32 + *&v49;
  v45.f32[1] = *v47.i32 + *&v49;
  *v53.i64 = CI::BitmapSampler::read(*(v5 + 8), *v45.i64, v50, v46, v49, v48, v47, v51, v52);
  v92 = v53;
  *v53.f32 = vadd_f32(v22, *v97.i8);
  LODWORD(v54) = *(v5 + 24);
  v55.i32[0] = *(v5 + 36);
  *v56.i32 = vmuls_lane_f32(*(v5 + 32), *v53.f32, 1);
  *&v57 = *v56.i32 + (v53.f32[0] * *(v5 + 28));
  v53.f32[0] = *&v54 + (vmuls_lane_f32(*(v5 + 20), *v53.f32, 1) + (v53.f32[0] * *(v5 + 16)));
  *v58.f64 = *v55.i32 + *&v57;
  v53.f32[1] = *v55.i32 + *&v57;
  *v61.i64 = CI::BitmapSampler::read(*(v5 + 8), *v53.i64, v58, v54, v57, v56, v55, v59, v60);
  v91 = v61;
  *v61.f32 = vadd_f32(v13, *v97.i8);
  LODWORD(v62) = *(v5 + 24);
  v63.i32[0] = *(v5 + 36);
  *v64.i32 = vmuls_lane_f32(*(v5 + 32), *v61.f32, 1);
  *&v65 = *v64.i32 + (v61.f32[0] * *(v5 + 28));
  v61.f32[0] = *&v62 + (vmuls_lane_f32(*(v5 + 20), *v61.f32, 1) + (v61.f32[0] * *(v5 + 16)));
  *v66.f64 = *v63.i32 + *&v65;
  v61.f32[1] = *v63.i32 + *&v65;
  *v69.i64 = CI::BitmapSampler::read(*(v5 + 8), *v61.i64, v66, v62, v65, v64, v63, v67, v68);
  v98 = v69;
  v87 = vmulq_f32(v96, v96);
  v86 = vmulq_f32(v94, v94);
  v85 = vmulq_f32(v92, v92);
  v88 = vmulq_f32(v69, v69);
  v89 = vmulq_f32(v93, v93);
  v69.f32[0] = fmaxf(vmuls_lane_f32(*v90.i32, v89, 3), 0.01);
  v69.f32[0] = -1.0 / ((v69.f32[0] + v69.f32[0]) * v69.f32[0]);
  _S0 = exp(v69.f32[0]);
  _S1 = ((_S0 * _S0) * _S0) * _S0;
  _S2 = (_S1 * _S1) * _S0;
  _V16.S[3] = v85.i32[3];
  _V7.S[3] = v86.i32[3];
  _V5.S[3] = v87.i32[3];
  __asm
  {
    FMLA            S3, S2, V5.S[3]
    FMLA            S3, S0, V7.S[3]
    FMLA            S3, S0, V16.S[3]
  }

  _Q17 = vmulq_f32(v91, v91);
  _V18.S[3] = v88.i32[3];
  __asm
  {
    FMLA            S3, S1, V17.S[3]
    FMLA            S3, S2, V18.S[3]
  }

  v83 = 1.0 / _S3;
  *&result = vaddq_f32(vmulq_n_f32(v98, vmuls_lane_f32(_S2 * v83, v88, 3)), vaddq_f32(vmulq_n_f32(v91, vmuls_lane_f32(_S1 * v83, _Q17, 3)), vaddq_f32(vmulq_n_f32(v92, vmuls_lane_f32(v83 * _S0, v85, 3)), vaddq_f32(vmulq_n_f32(v93, vmuls_lane_f32(v83, v89, 3)), vaddq_f32(vmulq_n_f32(v94, vmuls_lane_f32(v83 * _S0, v86, 3)), vaddq_f32(vmulq_n_f32(v95, vmuls_lane_f32(_S1 * v83, vmulq_f32(v95, v95), 3)), vmulq_n_f32(v96, vmuls_lane_f32(_S2 * v83, v87, 3)))))))).u64[0];
  return result;
}

unint64_t CI::sw_CIPortraitBlurBlendWithMaskFromAlpha(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v11;
  v17 = (vmuls_lane_f32(vmuls_lane_f32(vmuls_lane_f32(COERCE_FLOAT(*v15), *v15, 3), *v11, 3), *v11, 3) - COERCE_FLOAT(HIDWORD(v15->i64[0]))) / COERCE_FLOAT(v15->i64[1]);
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

  v16.f32[3] = v20;
  return vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v20), v16, v20).u64[0];
}

uint64_t CI::sw_CIBlurPreProcess(uint64_t a1, uint64_t a2, uint64_t a3)
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

void sub_19CD9C510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nRingsFromTuningParameters(NSDictionary *a1, float a2, uint64_t a3, NSNumber *a4)
{
  SDOFRenderingValue(&cfstr_Nrings.isa, a1);
  v9 = v8;
  SDOFRenderingValue(&cfstr_Minimumsimulat.isa, a1);
  v11 = v10;
  SDOFSimpleLensModelValue(@"maximumSimulatedAperture", a1);
  v13 = v12;
  SDOFSimpleLensModelValue(@"defaultSimulatedAperture", a1);
  v15 = v14;
  [(NSNumber *)a4 floatValue];
  v17 = v16;
  if (a2 <= 1.0)
  {
    v18 = a2;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = v18;
  if (v18 >= 1.0 || v11 <= 0.0 || v13 <= 0.0 || v15 <= 0.0)
  {
    if (v19 < 0.5)
    {
      v19 = 0.5;
    }

    v23 = v19 * v9;
    v24 = ceilf(v23);
  }

  else
  {
    if (v17 >= v15)
    {
      v25 = 0.699999988 / (v13 - v15) * (v17 - v15) + 1.0;
      v21 = pow(v19, 0.2);
      v22 = v9 * v25;
    }

    else
    {
      v20 = (((v17 - v11) / (v15 - v11)) * -0.5) + 1.0;
      v21 = pow(v19, 0.0833333333);
      v22 = v20 * v9;
    }

    v24 = v22 * v21;
  }

  v26 = v24;
  if (v24 <= 4)
  {
    v26 = 4;
  }

  if (a3 != 2)
  {
    if (v9 == 4)
    {
      v27 = 2;
    }

    else
    {
      v27 = 4;
    }

    if (a3 == 1)
    {
      return v27;
    }

    else
    {
      return v26;
    }
  }

  return v9;
}

double CI::sw_sparserendering_add_noise(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v15;
  v17 = *v11 * 10.0 + -5.0;
  v18 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v16.i32 = vmuls_lane_f32((1.0 - COERCE_FLOAT(*v15)) + ((v18.f32[2] + vaddv_f32(*v18.f32)) * COERCE_FLOAT(*v15)), *v15, 1) * v17;
  v19 = vaddq_f32(*v7, vdupq_lane_s32(v16, 0));
  v19.i32[3] = 0;
  v20 = vmaxnmq_f32(v19, 0);
  v20.i32[3] = 0;
  v21 = vminnmq_f32(v20, xmmword_19CF23BD0);
  v21.i32[3] = HIDWORD(*v7);
  v22 = vmaxnmq_f32(v21, 0);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(v22, _Q1).u64[0];
  return result;
}

unint64_t CI::sw_CIPortraitBlurBlendWithMaskMatteFromAlpha(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v20 = *v11;
  v21 = vmuls_lane_f32(vmuls_lane_f32(COERCE_FLOAT(*v19), *v11, 3), *v11, 3);
  v22 = (v21 - COERCE_FLOAT(HIDWORD(v19->i64[0]))) / COERCE_FLOAT(v19->i64[1]);
  if (v22 <= 1.0)
  {
    v23 = (v21 - COERCE_FLOAT(HIDWORD(v19->i64[0]))) / COERCE_FLOAT(v19->i64[1]);
  }

  else
  {
    v23 = 1.0;
  }

  v24 = v22 < 0.0;
  v25 = 0.0;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = vmuls_lane_f32(*v15, *v19, 3);
  if (v26 <= 1.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = 1.0 - v27;
  if (v26 >= 0.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1.0;
  }

  v20.i32[3] = fminf(v25, v29);
  return vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v20.f32[3]), v20, v20.f32[3]).u64[0];
}

unint64_t CI::sw_CIPortraitBlurBlendWithMaskMatteFromAlphaYCC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v20 = *v19;
  v21 = vmuls_lane_f32(vmuls_lane_f32(COERCE_FLOAT(*v19), *v11, 3), *v11, 3);
  v22 = (v21 - COERCE_FLOAT(HIDWORD(v19->i64[0]))) / COERCE_FLOAT(v19->i64[1]);
  if (v22 <= 1.0)
  {
    v23 = (v21 - COERCE_FLOAT(HIDWORD(v19->i64[0]))) / COERCE_FLOAT(v19->i64[1]);
  }

  else
  {
    v23 = 1.0;
  }

  if (v22 < 0.0)
  {
    v23 = 0.0;
  }

  v24 = *v15 * *(a2 + (*(v3 + 104) << 6));
  if (v24 <= 1.0)
  {
    v25 = *v15 * *(a2 + (*(v3 + 104) << 6));
  }

  else
  {
    v25 = 1.0;
  }

  v26 = 1.0 - v25;
  if (v24 >= 0.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = fminf(v23, v27);
  v29 = vmlaq_laneq_f32(vmulq_n_f32(*v7, 1.0 - COERCE_FLOAT(HIDWORD(*v11))), *v11, *v11, 3);
  v30 = v29.i64[0];
  if (v28 < 1.0)
  {
    v31 = vmuls_lane_f32(*v15, v20, 3);
    if (v31 <= 1.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 1.0 - v32;
    if (v31 >= 0.0)
    {
      v20.f32[0] = v33;
    }

    else
    {
      v20.f32[0] = 1.0;
    }

    v20.f32[0] = fminf(v23, v20.f32[0]);
    v20.f32[1] = v28;
    v20.f32[2] = v28;
    return vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - v28), v29, v28).u64[0];
  }

  return v30;
}

uint64_t dictionaryDeepCopy(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v3)
    {
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:{objc_msgSend(a1, "allKeys")}];
    }

    v4 = v3;
    v5 = *v15;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [a1 valueForKey:*(*(&v14 + 1) + 8 * v6)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = dictionaryDeepCopy(v7);
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = arrayDeepCopy(v7);
LABEL_11:
          v9 = v8;
          v10 = v2;
LABEL_12:
          [v10 addObject:v9];
          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v10 = v2;
          v9 = v7;
          goto LABEL_12;
        }

        v11 = [v7 copy];
        [v2 addObject:v11];

LABEL_13:
        ++v6;
      }

      while (v4 != v6);
      v12 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v12;
      if (!v12)
      {
        return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:{objc_msgSend(a1, "allKeys")}];
      }
    }
  }

  return MEMORY[0x1E695E0F8];
}

uint64_t scaleImageWithQuality(void *a1, _OWORD *a2)
{
  if (isMetalFamily3_onceToken != -1)
  {
    scaleImageWithQuality_cold_1();
  }

  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  if (isMetalFamily3_supports)
  {
    return [a1 imageByApplyingTransform:v6 highQualityDownsample:1];
  }

  else
  {
    return [a1 imageByApplyingTransform:v6];
  }
}

uint64_t arrayDeepCopy(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v3)
    {
      return [MEMORY[0x1E695DEC8] arrayWithArray:v2];
    }

    v4 = v3;
    v5 = *v15;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = dictionaryDeepCopy(v7);
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = arrayDeepCopy(v7);
LABEL_11:
          v9 = v8;
          v10 = v2;
LABEL_12:
          [v10 addObject:v9];
          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v10 = v2;
          v9 = v7;
          goto LABEL_12;
        }

        v11 = [v7 copy];
        [v2 addObject:v11];

LABEL_13:
        ++v6;
      }

      while (v4 != v6);
      v12 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v12;
      if (!v12)
      {
        return [MEMORY[0x1E695DEC8] arrayWithArray:v2];
      }
    }
  }

  return MEMORY[0x1E695E0F0];
}

void __isMetalFamily3_block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();
  isMetalFamily3_supports = [v0 supportsFamily:1003];
}

double GetAdaptationMatrix(const double *a1, const double *a2, double *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = a1[2];
  v6 = v4 * 0.2664 + *a1 * 0.8951 + v5 * -0.1614;
  v7 = v4 * 1.7135 + *a1 * -0.7502 + v5 * 0.0367;
  v8 = v4 * -0.0685 + *a1 * 0.0389 + v5 * 1.0296;
  v9 = a2[1];
  v10 = a2[2];
  v11 = v9 * 0.2664 + *a2 * 0.8951 + v10 * -0.1614;
  v12 = v9 * 1.7135 + *a2 * -0.7502 + v10 * 0.0367;
  v13 = v9 * -0.0685 + *a2 * 0.0389 + v10 * 1.0296;
  v17 = 0;
  v20 = 0;
  v19 = 0u;
  v16 = 0u;
  v15 = v11 / v6;
  v18 = v12 / v7;
  v21 = v13 / v8;
  MatrixMatrix(GetAdaptationMatrix(double const*,double const*,double *)::Bradford_mtx, &v15, a3);

  return MatrixMatrix(a3, GetAdaptationMatrix(double const*,double const*,double *)::invBradford_mtx, a3);
}

double MatrixMatrix(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = v7 * v13 + v4 * *a2 + v10 * v14;
  *a3 = v6 * v13 + *a1 * *a2 + v9 * v14;
  a3[1] = v21;
  a3[2] = v8 * v13 + v5 * v12 + v11 * v14;
  a3[3] = v6 * v16 + v3 * v15 + v9 * v17;
  a3[4] = v7 * v16 + v4 * v15 + v10 * v17;
  a3[5] = v8 * v16 + v5 * v15 + v11 * v17;
  a3[6] = v6 * v19 + v3 * v18 + v9 * v20;
  a3[7] = v7 * v19 + v4 * v18 + v10 * v20;
  result = v8 * v19 + v5 * v18 + v11 * v20;
  a3[8] = result;
  return result;
}

void ___ZL17GetLinearAdobeRGBv_block_invoke()
{
  v0 = CGDataProviderCreateWithData(0, &GetLinearAdobeRGB(void)::data, 0x210uLL, 0);
  GetLinearAdobeRGB(void)::space = CGColorSpaceCreateICCBased(3uLL, 0, v0, 0);

  CFRelease(v0);
}

unint64_t CI::sw_convertUsingColorMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return vaddq_f32(vmulq_laneq_f32(*v19, *v7, 2), vaddq_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v7)), vmulq_lane_f32(*v15, *v7->f32, 1))).u64[0];
}

unint64_t CI::sw_localBoost(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v28 = vmulq_f32(*v7, *v7);
  v29 = vextq_s8(v28, vtrn1q_s32(v28, *v7), 0xCuLL);
  v30 = vmulq_f32(*v7, v28);
  v29.i32[0] = v30.i32[0];
  v29.i32[3] = 1.0;
  v31 = vmulq_f32(*v15, v29);
  *v31.f32 = vadd_f32(*v31.f32, *&vextq_s8(v31, v31, 8uLL));
  v32 = vmulq_f32(*v19, v29);
  *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  v33 = vmulq_f32(*v23, v29);
  *v33.f32 = vadd_f32(*v33.f32, *&vextq_s8(v33, v33, 8uLL));
  v34 = vmulq_f32(v29, *v27);
  v35 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
  v36 = vdupq_lane_s32(*v7->f32, 1);
  v36.i64[0] = __PAIR64__(v28.u32[1], v30.u32[1]);
  v37 = *(a2 + (*(v3 + 152) << 6));
  v36.i32[3] = 1.0;
  v38 = vmulq_f32(*v15, v36);
  *v38.i8 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
  *v39.f32 = vzip1_s32(*v31.f32, *v38.i8);
  *v40.f32 = vzip2_s32(*v31.f32, *v38.i8);
  v41 = vmulq_f32(*v19, v36);
  *v41.i8 = vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
  *v42.f32 = vzip1_s32(*v32.i8, *v41.i8);
  *v43.f32 = vzip2_s32(*v32.i8, *v41.i8);
  v44 = vmulq_f32(v36, *v23);
  *v31.f32 = vadd_f32(*v44.f32, *&vextq_s8(v44, v44, 8uLL));
  *v44.f32 = vzip1_s32(*v33.f32, *v31.f32);
  *v31.f32 = vzip2_s32(*v33.f32, *v31.f32);
  v45 = vmulq_f32(v36, *v27);
  *v33.f32 = vadd_f32(*v45.f32, *&vextq_s8(v45, v45, 8uLL));
  *v45.f32 = vzip1_s32(v35, *v33.f32);
  *v33.f32 = vzip2_s32(v35, *v33.f32);
  __asm { FMOV            V27.2D, #-1.0 }

  v51 = vaddq_f64(vcvtq_f64_f32(*v7->f32), _Q27);
  __asm { FMOV            V27.2D, #1.0 }

  v53 = vmlaq_n_f64(_Q27, v51, v37);
  v54 = vdupq_laneq_s32(v28, 2);
  v54.i32[0] = v30.i32[2];
  v54.i32[2] = v7->i64[1];
  *v28.f32 = vcvt_f32_f64(v53);
  v54.i32[3] = 1.0;
  v55 = vmulq_f32(*v15, v54);
  *&v39.u32[2] = vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
  *&v40.u32[2] = vdup_lane_s32(*&v39.u32[2], 1);
  v56 = vmulq_f32(*v19, v54);
  *&v42.u32[2] = vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
  *&v43.u32[2] = vdup_lane_s32(*&v42.u32[2], 1);
  v57 = vmulq_f32(*v23, v54);
  *&v44.u32[2] = vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
  *&v31.u32[2] = vdup_lane_s32(*&v44.u32[2], 1);
  v58 = vmulq_f32(v54, *v27);
  *&v45.u32[2] = vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
  *&v33.u32[2] = vdup_lane_s32(*&v45.u32[2], 1);
  *&v37 = (v54.f32[2] + -1.0) * v37 + 1.0;
  v28.i32[2] = LODWORD(v37);
  return vbicq_s8(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v11, 0), *v7), vaddq_f32(v39, v40), vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v11, 1), *v7), vaddq_f32(v42, v43), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v11->i8, 2), *v7), vaddq_f32(v44, v31), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v11->i8, 3), *v7), vaddq_f32(v45, v33), v28)))), vcltzq_f32(*v7)).u64[0];
}

unint64_t CI::sw_boostRGB(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v28 = vmulq_f32(*v7, *v7);
  v29 = vextq_s8(v28, vtrn1q_s32(v28, *v7), 0xCuLL);
  v30 = vmulq_f32(*v7, v28);
  v29.i32[0] = v30.i32[0];
  v29.i32[3] = 1.0;
  v31 = vmulq_f32(*v15, v29);
  v32 = vadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
  v33 = vmulq_f32(*v19, v29);
  v34 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
  v35 = vmulq_f32(*v23, v29);
  v36 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
  v37 = vmulq_f32(v29, *v27);
  *v35.i8 = vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
  v38 = vdupq_lane_s32(*v7->f32, 1);
  v38.i64[0] = __PAIR64__(v28.u32[1], v30.u32[1]);
  v38.i32[3] = 1.0;
  v39 = vmulq_f32(*v15, v38);
  *v39.i8 = vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
  *v39.i8 = vadd_f32(vzip1_s32(v32, *v39.i8), vzip2_s32(v32, *v39.i8));
  v40 = vdupq_laneq_s32(v28, 2);
  v40.i32[0] = v30.i32[2];
  v40.i32[2] = v7->i64[1];
  v40.i32[3] = 1.0;
  v41 = vmulq_f32(*v15, v40);
  *v41.i8 = vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
  v39.i64[1] = vadd_f32(*v41.i8, vdup_lane_s32(*v41.i8, 1)).u32[0];
  v42 = vmulq_f32(*v19, v38);
  *v42.i8 = vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
  v43 = vmulq_f32(*v19, v40);
  v44 = vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
  *v43.i8 = vadd_f32(vzip1_s32(v34, *v42.i8), vzip2_s32(v34, *v42.i8));
  v43.i64[1] = vadd_f32(v44, vdup_lane_s32(v44, 1)).u32[0];
  v45 = vmulq_f32(v38, *v23);
  *v45.i8 = vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
  *v46.i8 = vadd_f32(vzip1_s32(v36, *v45.i8), vzip2_s32(v36, *v45.i8));
  v47 = vmulq_f32(*v23, v40);
  *v47.i8 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
  v46.i64[1] = vadd_f32(*v47.i8, vdup_lane_s32(*v47.i8, 1)).u32[0];
  v48 = vmulq_f32(v38, *v27);
  *v48.i8 = vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
  *v48.i8 = vadd_f32(vzip1_s32(*v35.i8, *v48.i8), vzip2_s32(*v35.i8, *v48.i8));
  v49 = vmulq_f32(v40, *v27);
  *v49.i8 = vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL));
  v48.i64[1] = vadd_f32(*v49.i8, vdup_lane_s32(*v49.i8, 1)).u32[0];
  v50 = *(a2 + (*(v3 + 152) << 6));
  __asm { FMOV            V6.2D, #-1.0 }

  v56 = vaddq_f64(vcvtq_f64_f32(*v7->f32), _Q6);
  __asm { FMOV            V6.2D, #1.0 }

  *&v56.f64[0] = vcvt_f32_f64(vmlaq_n_f64(_Q6, v56, v50));
  *&v50 = (v40.f32[2] + -1.0) * v50 + 1.0;
  *&v56.f64[1] = LODWORD(v50);
  v58 = vbicq_s8(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v11, 0), *v7), v39, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v11, 1), *v7), v43, vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v11->i8, 2), *v7), v46, vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v11->i8, 3), *v7), v48, v56)))), vcltzq_f32(*v7));
  return vbicq_s8(v58, vcltzq_f32(v58)).u64[0];
}

double CI::sw_boostRGBLNoGamma(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v6 + 16) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v6 + 32);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v6 + 40) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 56);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v6 + 64) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v6 + 80);
  v20 = (a3 + 16 * v19);
  v21 = (a2 + (v19 << 6));
  if (*(v6 + 88) == 5)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v6 + 104);
  v24 = (a3 + 16 * v23);
  v25 = (a2 + (v23 << 6));
  if (*(v6 + 112) == 5)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v6 + 128);
  v28 = (a3 + 16 * v27);
  v29 = (a2 + (v27 << 6));
  if (*(v6 + 136) == 5)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = *v10;
  LODWORD(a6) = *(a2 + (*(v6 + 152) << 6));
  v32 = vmulq_f32(v31, v31);
  v33 = vextq_s8(v32, vtrn1q_s32(v32, *v10), 0xCuLL);
  v34 = vmulq_f32(*v10, v32);
  v33.i32[0] = v34.i32[0];
  v33.i32[3] = 1.0;
  v35 = vmulq_f32(*v18, v33);
  v36 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
  v37 = vmulq_f32(*v22, v33);
  v38 = vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
  v39 = vmulq_f32(*v26, v33);
  *v39.f32 = vadd_f32(*v39.f32, *&vextq_s8(v39, v39, 8uLL));
  v40 = vmulq_f32(v33, *v30);
  *v40.f32 = vadd_f32(*v40.f32, *&vextq_s8(v40, v40, 8uLL));
  v41 = vdupq_lane_s32(*v10->i8, 1);
  v41.i64[0] = __PAIR64__(v32.u32[1], v34.u32[1]);
  v41.i32[3] = 1.0;
  v42 = vmulq_f32(*v18, v41);
  v43 = vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
  v44 = vmulq_f32(*v22, v41);
  v45 = vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
  v46 = vmulq_f32(v41, *v26);
  *v46.i8 = vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
  v47 = vmulq_f32(v41, *v30);
  *v47.i8 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
  v48 = vdupq_laneq_s32(v32, 2);
  v48.i32[0] = v34.i32[2];
  v48.i32[2] = v10->i64[1];
  v48.i32[3] = 1.0;
  v49 = vmulq_f32(*v18, v48);
  v50 = vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL));
  v51 = vmulq_f32(*v22, v48);
  v52 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
  v53 = vmulq_f32(*v26, v48);
  *v34.f32 = vadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
  v54 = vmulq_f32(*v10, xmmword_19CF23D60);
  v54.f32[0] = v54.f32[2] + vaddv_f32(*v54.f32);
  v55 = vmul_f32(*v54.f32, *v54.f32);
  *v56.f32 = vdup_lane_s32(v55, 0);
  v57 = vmulq_f32(v48, *v30);
  v56.i64[1] = __PAIR64__(1.0, v54.u32[0]);
  v56.f32[0] = v54.f32[0] * *v55.i32;
  v58 = vmulq_f32(*v18, v56);
  *v58.i8 = vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
  *v59.f32 = vzip1_s32(v36, v43);
  *v60.f32 = vzip2_s32(v36, v43);
  v59.i64[1] = __PAIR64__(v58.u32[0], v50.u32[0]);
  v60.i32[2] = vdup_lane_s32(v50, 1).u32[0];
  v60.i32[3] = v58.i32[1];
  *v58.i8 = vadd_f32(*v57.f32, *&vextq_s8(v57, v57, 8uLL));
  v61 = vmulq_f32(*v22, v56);
  *v57.f32 = vzip1_s32(v38, v45);
  v57.i32[2] = v52.i32[0];
  *v61.f32 = vadd_f32(*v61.f32, *&vextq_s8(v61, v61, 8uLL));
  v57.i32[3] = v61.i32[0];
  *v62.f32 = vzip2_s32(v38, v45);
  v62.i32[2] = vdup_lane_s32(v52, 1).u32[0];
  v62.i32[3] = v61.i32[1];
  v63 = vmulq_f32(*v26, v56);
  *v63.f32 = vadd_f32(*v63.f32, *&vextq_s8(v63, v63, 8uLL));
  *v61.f32 = vzip1_s32(*v39.f32, *v46.i8);
  v61.i64[1] = __PAIR64__(v63.u32[0], v34.u32[0]);
  *v39.f32 = vzip2_s32(*v39.f32, *v46.i8);
  v39.i32[2] = vdup_lane_s32(*v34.f32, 1).u32[0];
  v39.i32[3] = v63.i32[1];
  v64 = vmulq_f32(*v30, v56);
  *v64.i8 = vadd_f32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
  *v63.f32 = vzip1_s32(*v40.f32, *v47.i8);
  v63.i64[1] = __PAIR64__(v64.u32[0], v58.u32[0]);
  *v40.f32 = vzip2_s32(*v40.f32, *v47.i8);
  v40.i32[2] = vdup_lane_s32(*v58.i8, 1).u32[0];
  v40.i32[3] = v64.i32[1];
  v65 = vaddq_f32(v63, v40);
  v31.i32[3] = v54.i32[0];
  v66 = vmulq_n_f32(v31, *&a6);
  *&a6 = 1.0 - *&a6;
  *&result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v14, 0), v31), vaddq_f32(v59, v60), vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v14, 1), v31), vaddq_f32(v57, v62), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v14->i8, 2), v31), vaddq_f32(v61, v39), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v14->i8, 3), v31), v65, vaddq_f32(vdupq_lane_s32(*&a6, 0), v66))))).u64[0];
  return result;
}

unint64_t CI::sw_boostHybrid(uint64_t a1, uint64_t a2, uint64_t a3)
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

  v13 = vmulq_f32(*v7, xmmword_19CF23D60);
  v14 = v13.f32[2] + vaddv_f32(*v13.f32);
  v15 = *v7;
  v15.f32[3] = v14;
  v16 = vmaxnmq_f32(vbicq_s8(*v11, vcltzq_f32(v15)), 0);
  v17 = vmulq_n_f32(*v7, v16.f32[3] / fmaxf(v14, 0.000001));
  v17.i32[3] = 0;
  v18 = vmaxnmq_f32(v17, 0);
  v19 = (v14 - (*(a2 + (*(v3 + 56) << 6)) + *(a2 + (*(v3 + 80) << 6)) * -0.5)) / *(a2 + (*(v3 + 80) << 6));
  if (v19 <= 1.0)
  {
    v20 = (v14 - (*(a2 + (*(v3 + 56) << 6)) + *(a2 + (*(v3 + 80) << 6)) * -0.5)) / *(a2 + (*(v3 + 80) << 6));
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

  v23 = -((v22 * -2.0 + 3.0) * v22) * v22 + 1.0;
  v12 = *(a2 + (*(v3 + 104) << 6));
  return vmlaq_n_f32(vmulq_n_f32(v16, 1.0 - (v12 * v23)), v18, v12 * v23).u64[0];
}

float32x2_t CI::sw_paddedTile(CI *a1, uint64_t a2, uint64_t a3)
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

  v15 = *v7;
  v8 = vmul_f32(*&vextq_s8(v15, v15, 8uLL), *CI::getDC(a1));
  __asm { FMOV            V1.2S, #1.0 }

  return vadd_f32(vmul_f32(*v15.i8, vminnm_f32(vsub_f32(v8, vrndm_f32(v8)), vdup_n_s32(0x3F7FFFFFu))), _D1);
}

Class ___ZL33getVNDetectRectanglesRequestClassv_block_invoke(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNDetectRectanglesRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL33getVNDetectRectanglesRequestClassv_block_invoke_cold_1();
  }

  getVNDetectRectanglesRequestClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t ___ZL17VisionLibraryCorePPc_block_invoke_0()
{
  result = _sl_dlopen();
  VisionLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL34getVNImageOptionCIContextSymbolLocv_block_invoke_0(uint64_t a1)
{
  v2 = VisionLibrary();
  result = dlsym(v2, "VNImageOptionCIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVNImageOptionCIContextSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class ___ZL29getVNImageRequestHandlerClassv_block_invoke_0(uint64_t a1)
{
  VisionLibrary();
  result = objc_getClass("VNImageRequestHandler");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    ___ZL29getVNImageRequestHandlerClassv_block_invoke_cold_1_0();
  }

  getVNImageRequestHandlerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

double CI::sw_rectangle(CI *a1, uint64_t a2, uint64_t a3)
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

  v25 = *v11;
  v26 = *v7;
  v27 = *(a2 + (*(v3 + 56) << 6));
  v28 = *CI::getDC(a1);
  v12.i64[0] = v28;
  *v13.i64 = vec2::get_xxy(&v28, v12);
  v14 = vaddq_f32(v25, vmulq_f32(v26, v13));
  __asm { FMOV            V2.4S, #1.0 }

  v20 = vminnmq_f32(vmaxnmq_f32(vminnmq_f32(vmaxnmq_f32(vmaxnmq_f32(v14, vrev64q_s32(v14)), 0), _Q2), 0), _Q2);
  v21.i64[0] = 0xC0000000C0000000;
  v21.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V4.4S, #3.0 }

  v23 = vsubq_f32(_Q2, vmulq_f32(vmulq_f32(v20, v20), vmlaq_f32(_Q4, v21, v20)));
  *&result = vmulq_n_f32(v27, vmuls_lane_f32(v23.f32[0], v23, 2)).u64[0];
  return result;
}

double CI::sw_roundedrect(CI *a1, uint64_t a2, uint64_t a3, int32x2_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 16) == 5)
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

  a4.i32[0] = *(a2 + (*(v4 + 32) << 6));
  v33 = *v8;
  v34 = a4;
  v13 = *v12;
  v35 = *(a2 + (*(v4 + 80) << 6));
  DC = CI::getDC(a1);
  v15 = vdup_lane_s32(v34, 0);
  v16 = vadd_f32(*v33.i8, v15);
  v17 = vmul_n_f32(v13, *v34.i32);
  v18 = vadd_f32(v17, v16);
  v19 = vsub_f32(*&vextq_s8(v33, v33, 8uLL), v15);
  v20 = vsub_f32(v19, v17);
  v21 = vmaxnm_f32(vmul_n_f32(v13, *v34.i32 * 4.0), vdup_n_s32(0x358637BDu));
  v22 = vmul_f32(v21, 0x3F0000003F000000);
  v23 = vsub_f32(v18, v22);
  v24 = vadd_f32(v20, v22);
  v25 = vsub_f32(*DC, v18);
  v26 = vsub_f32(*DC, v20);
  v27 = vbsl_s8(vcgt_f32(v23, *DC), vsub_f32(*DC, v16), vbsl_s8(vcltz_f32(v25), vdiv_f32(vmul_f32(v25, vneg_f32(v25)), v21), vbic_s8(vbsl_s8(vcgt_f32(v24, *DC), vdiv_f32(vmul_f32(v26, v26), v21), vsub_f32(*DC, v19)), vcltz_f32(v26))));
  v28 = (*v34.i32 - sqrtf(vaddv_f32(vmul_f32(v27, v27)))) + 0.5;
  v29 = 1.0;
  if (v28 <= 1.0)
  {
    v29 = v28;
  }

  v30 = v28 < 0.0;
  v31 = 0.0;
  if (!v30)
  {
    v31 = v29;
  }

  *&result = vmulq_n_f32(v35, v31).u64[0];
  return result;
}

double CI::sw_blurredrect(CI *a1, uint64_t a2, uint64_t a3)
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

  v8 = *(a2 + (*(v3 + 32) << 6));
  v26 = *v7;
  v27 = *(a2 + (*(v3 + 56) << 6));
  DC = CI::getDC(a1);
  v10 = v8 * 2.4;
  *&v10 = v10;
  v11 = vdup_lane_s32(*&v10, 0);
  *&v10 = *&v10 + *&v10;
  v12 = vdup_lane_s32(*&v10, 0);
  __asm { FMOV            V6.2S, #1.0 }

  v18 = vminnm_f32(vmaxnm_f32(vdiv_f32(vsub_f32(*DC, vsub_f32(*v26.i8, v11)), v12), 0), _D6);
  __asm
  {
    FMOV            V16.2S, #6.0
    FMOV            V18.2S, #-15.0
    FMOV            V17.2S, #10.0
  }

  v22 = vmul_f32(vmul_f32(v18, vmul_f32(v18, v18)), vadd_f32(vmul_f32(v18, vadd_f32(vmul_f32(v18, _D16), _D18)), _D17));
  v23 = vminnm_f32(vmaxnm_f32(vdiv_f32(vsub_f32(vadd_f32(*&vextq_s8(v26, v26, 8uLL), v11), *DC), v12), 0), _D6);
  v24 = vmul_f32(vmul_f32(v23, vmul_f32(v23, v23)), vadd_f32(vmul_f32(v23, vadd_f32(vmul_f32(v23, _D16), _D18)), _D17));
  *&result = vmulq_n_f32(v27, vmul_lane_f32(vmul_f32(vmul_lane_f32(v22, v22, 1), v24), v24, 1).f32[0]).u64[0];
  return result;
}

double CI::sw_roundedstroke(CI *a1, uint64_t a2, uint64_t a3, int32x2_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 16) == 5)
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

  a4.i32[0] = *(a2 + (*(v4 + 32) << 6));
  v57 = a4;
  v56 = *v8;
  v58 = *v12;
  v13 = *v12;
  v13.i32[0] = *(a2 + (*(v4 + 80) << 6));
  v59 = *v13.i8;
  v60 = *(a2 + (*(v4 + 104) << 6));
  v14 = *CI::getDC(a1);
  v15 = vextq_s8(v56, v56, 8uLL).u64[0];
  v16 = vdup_lane_s32(v57, 0);
  v17 = vadd_f32(*v56.i8, v16);
  v18 = vmul_n_f32(*v58.i8, *v57.i32);
  v19 = vadd_f32(v17, v18);
  v20 = vsub_f32(v15, v16);
  v21 = vsub_f32(v20, v18);
  v22 = vmaxnm_f32(vmul_n_f32(*v58.i8, *v57.i32 * 4.0), vdup_n_s32(0x358637BDu));
  v23 = vmul_f32(v22, 0x3F0000003F000000);
  v24 = vsub_f32(v19, v23);
  v25 = vadd_f32(v21, v23);
  v26 = vsub_f32(v14, v19);
  v27 = vsub_f32(v14, v21);
  v28 = vbsl_s8(vcgt_f32(v24, v14), vsub_f32(v14, v17), vbsl_s8(vcltz_f32(v26), vdiv_f32(vmul_f32(v26, vneg_f32(v26)), v22), vbic_s8(vbsl_s8(vcgt_f32(v25, v14), vdiv_f32(vmul_f32(v27, v27), v22), vsub_f32(v14, v20)), vcltz_f32(v27))));
  v29 = (*v57.i32 - sqrtf(vaddv_f32(vmul_f32(v28, v28)))) + 0.5;
  if (v29 <= 1.0)
  {
    v30 = v29;
  }

  else
  {
    v30 = 1.0;
  }

  v31 = v29 < 0.0;
  v32 = 0.0;
  if (!v31)
  {
    v32 = v30;
  }

  v33 = vdup_lane_s32(v59, 0);
  v34 = vadd_f32(*v56.i8, v33);
  v35 = vsub_f32(v15, v33);
  *v33.i32 = fmaxf(*v57.i32 - *v59.i32, 0.5);
  v36 = vextq_s8(v58, v58, 8uLL).u64[0];
  v37 = vdup_lane_s32(v33, 0);
  v38 = vadd_f32(v34, v37);
  v39 = vmul_n_f32(v36, *v33.i32);
  v40 = vadd_f32(v39, v38);
  v41 = vsub_f32(v35, v37);
  v42 = vsub_f32(v41, v39);
  v43 = vmul_n_f32(v36, *v33.i32 * 4.0);
  v44 = vmul_f32(v43, 0x3F0000003F000000);
  v45 = vsub_f32(v40, v44);
  v46 = vadd_f32(v42, v44);
  v47 = vsub_f32(v14, v40);
  v48 = vsub_f32(v14, v42);
  v49 = vbsl_s8(vcgt_f32(v45, v14), vsub_f32(v14, v38), vbsl_s8(vcltz_f32(v47), vdiv_f32(vmul_f32(v47, vneg_f32(v47)), v43), vbic_s8(vbsl_s8(vcgt_f32(v46, v14), vdiv_f32(vmul_f32(v48, v48), v43), vsub_f32(v14, v41)), vcltz_f32(v48))));
  v50 = (*v33.i32 - sqrtf(vaddv_f32(vmul_f32(v49, v49)))) + 0.5;
  if (v50 <= 1.0)
  {
    v51 = v50;
  }

  else
  {
    v51 = 1.0;
  }

  v52 = 1.0 - v51;
  v53 = vmulq_n_f32(v60, v32);
  if (v50 >= 0.0)
  {
    v54 = v52;
  }

  else
  {
    v54 = 1.0;
  }

  *&result = vmulq_n_f32(v53, v54).u64[0];
  return result;
}

double CI::sw_rectstroke(CI *a1, uint64_t a2, uint64_t a3)
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

  v8 = (a2 + (*(v3 + 32) << 6));
  v23 = *v7;
  v24 = *(a2 + (*(v3 + 56) << 6));
  v9 = vld1_dup_f32(v8);
  DC = CI::getDC(a1);
  v11 = vadd_f32(*v23.i8, 0xBF000000BF000000);
  v12 = vadd_f32(*&vextq_s8(v23, v23, 8uLL), 0x3F0000003F000000);
  v13 = vminnm_f32(vsub_f32(*DC, v11), vsub_f32(v12, *DC));
  __asm { FMOV            V5.2S, #1.0 }

  v19 = vbic_s8(vbsl_s8(vcgt_f32(v13, _D5), _D5, v13), vcltz_f32(v13));
  v20 = vminnm_f32(vsub_f32(*DC, vadd_f32(v11, v9)), vsub_f32(vsub_f32(v12, v9), *DC));
  v21 = vbic_s8(vbsl_s8(vcgt_f32(v20, _D5), _D5, v20), vcltz_f32(v20));
  *&result = vmulq_n_f32(vmulq_n_f32(v24, vmul_lane_f32(v19, v19, 1).f32[0]), 1.0 - vmul_lane_f32(v21, v21, 1).f32[0]).u64[0];
  return result;
}

double CI::sw_blurredroundedrect(CI *a1, uint64_t a2, uint64_t a3, int32x2_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 16) == 5)
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

  v39 = *v8;
  v13 = *v12;
  v41 = *(a2 + (*(v4 + 104) << 6));
  v40 = vextq_s8(*v8, *v8, 8uLL).u64[0];
  v14 = *(a2 + (*(v4 + 80) << 6)) * 2.4;
  *a4.i32 = fmaxf(*(a2 + (*(v4 + 32) << 6)), v14 * 0.5);
  v38 = a4;
  DC = CI::getDC(a1);
  v16 = vdup_lane_s32(v38, 0);
  v17 = vadd_f32(*v39.i8, v16);
  v18 = vmul_n_f32(v13, *v38.i32);
  v19 = vadd_f32(v18, v17);
  v20 = vsub_f32(v40, v16);
  v21 = vsub_f32(v20, v18);
  v22 = vmaxnm_f32(vmul_n_f32(v13, *v38.i32 * 4.0), vdup_n_s32(0x358637BDu));
  v23 = vmul_f32(v22, 0x3F0000003F000000);
  v24 = vsub_f32(v19, v23);
  v25 = vadd_f32(v23, v21);
  v26 = vsub_f32(*DC, v19);
  v27 = vsub_f32(*DC, v21);
  v28 = vsub_f32(*DC, v20);
  v29 = vbsl_s8(vcgt_f32(v24, *DC), vsub_f32(*DC, v17), vbsl_s8(vcltz_f32(v26), vdiv_f32(vmul_f32(v26, vneg_f32(v26)), v22), vbic_s8(vbsl_s8(vcgt_f32(v25, *DC), vdiv_f32(vmul_f32(v27, v27), v22), v28), vcltz_f32(v27))));
  v30 = sqrtf(vaddv_f32(vmul_f32(v29, v29))) - *v38.i32;
  if (*v38.i32 * -0.99 > v30)
  {
    v31 = vsub_f32(v17, *DC);
    v30 = fmaxf(fmaxf(v31.f32[0], v31.f32[1]), fmaxf(*v28.i32, *&v28.i32[1])) - *v38.i32;
  }

  v32 = (v30 + v14) / (v14 + v14);
  if (v32 <= 1.0)
  {
    v33 = (v30 + v14) / (v14 + v14);
  }

  else
  {
    v33 = 1.0;
  }

  v34 = v32 < 0.0;
  v35 = 0.0;
  if (!v34)
  {
    v35 = v33;
  }

  v36 = ((v35 * 6.0 + -15.0) * v35 + 10.0) * (v35 * (v35 * v35));
  *&result = vmulq_n_f32(v41, 1.0 - v36).u64[0];
  return result;
}

void _ZZZ33__CIRedEyeCorrection_outputImage_EUb_EN13SignpostTimerD1Ev(TimerBase *a1)
{
  v2 = ci_signpost_log_render();
  v3 = *(a1 + 1);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v2;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, v3, "CIRedEyeCorrection_processor", &unk_19CFBCBAE, v5, 2u);
    }
  }

  TimerBase::~TimerBase(a1);
}

void clearOutput(void *a1)
{
  v2 = CI::format_bytes_per_pixel([a1 format]);
  [a1 region];
  v4 = [a1 bytesPerRow] * (v3 - 1);
  [a1 region];
  v6 = v4 + v5 * v2;
  v7 = [a1 baseAddress];

  bzero(v7, v6);
}

uint64_t CIRedEyeUtilsSizeFromScale(float a1)
{
  v1 = 90;
  if (a1 < 90.0)
  {
    v1 = 35;
  }

  if (a1 >= 35.0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

float stretch(float a1, float a2, float a3, float a4, float a5)
{
  result = a4 + (((a1 - a2) / (a3 - a2)) * (a5 - a4));
  if (result >= a5)
  {
    result = a5;
  }

  if (result <= a4)
  {
    return a4;
  }

  return result;
}

float interpolate(float result, float a2, float a3)
{
  v3 = result + (a3 * (a2 - result));
  if (a2 >= result)
  {
    v4 = a2;
  }

  else
  {
    v4 = result;
  }

  if (a2 < result)
  {
    result = a2;
  }

  if (v3 > result)
  {
    result = v3;
  }

  if (result >= v4)
  {
    return v4;
  }

  return result;
}

__CFString *tagForEye(uint64_t a1)
{
  v1 = @"L";
  if (a1 == 35)
  {
    v1 = @"M";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"S";
  }
}

CIImage *refilter(CIImage *a1, CIImage *a2, float a3, float a4)
{
  v10[3] = *MEMORY[0x1E69E9840];
  if (a3 > 0.0 && a4 > 0.0)
  {
    v10[0] = a2;
    v9[0] = @"inputSource";
    v9[1] = @"inputSigmaSpace";
    v10[1] = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v9[2] = @"inputSigmaRange";
    *&v6 = a4;
    v10[2] = [MEMORY[0x1E696AD98] numberWithFloat:v6];
    v7 = -[CIImage imageByApplyingFilter:withInputParameters:](a1, "imageByApplyingFilter:withInputParameters:", @"CICheapBilateral", [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3]);
    [(CIImage *)a1 extent];
    return [(CIImage *)v7 imageByCroppingToRect:?];
  }

  return a1;
}

unint64_t radialFillRGBA8(void *a1, void *a2, int a3, unsigned int a4, unint64_t a5, double a6, double a7)
{
  [a1 region];
  v14 = v13;
  [a2 region];
  if (v14 >= v15)
  {
    v16 = a2;
  }

  else
  {
    v16 = a1;
  }

  [v16 region];
  v71 = v17;
  [a1 region];
  v19 = v18;
  [a2 region];
  if (v19 >= v20)
  {
    v21 = a2;
  }

  else
  {
    v21 = a1;
  }

  [v21 region];
  v70 = v22;
  v23 = [a1 bytesPerRow];
  v24 = [a2 bytesPerRow];
  v25 = [a1 baseAddress];
  v26 = [a2 baseAddress];
  v27 = a6;
  v28 = a7;
  v29 = sqrtf(a5);
  v30 = (v29 + v29);
  if (a6 >= a7)
  {
    v31 = a7;
  }

  else
  {
    v31 = a6;
  }

  if (v31 < v30)
  {
    v30 = v31;
  }

  v32 = v71 + ~v27;
  if (v32 >= v70 + ~v28)
  {
    v32 = v70 + ~v28;
  }

  if (v32 < v30)
  {
    v30 = v32;
  }

  v72 = v30;
  [a1 region];
  v34 = v33;
  [a2 region];
  v36 = v35;
  [a1 region];
  v38 = v37;
  [a2 region];
  if (v72 < 1)
  {
    return 0;
  }

  result = 0;
  v41 = 0;
  v42 = a3 + (v28 + (v38 - v39)) * v24 + 4 * (v27 + (v34 - v36));
  v43 = a3 + v28 * v23 + 4 * v27;
  v44 = 1;
  v45 = v43;
  v46 = v42;
  v47 = v43;
  v48 = v42;
  do
  {
    v49 = v44;
    v50 = v47;
    v51 = v48;
    do
    {
      v52 = result;
      v53 = *(v25 + v50) > a4;
      if (*(v25 + v50) > a4)
      {
        ++result;
      }

      if (v52 >= a5)
      {
        v53 = 0;
      }

      *(v26 + v51) = v53 << 31 >> 31;
      v51 += v24;
      v50 += v23;
      --v49;
    }

    while (v49);
    v54 = v44;
    v55 = v45;
    v56 = v46;
    if (result > a5)
    {
      break;
    }

    do
    {
      v57 = result;
      v58 = *(v25 + v55) > a4;
      if (*(v25 + v55) > a4)
      {
        ++result;
      }

      if (v57 >= a5)
      {
        v58 = 0;
      }

      *(v26 + v56) = v58 << 31 >> 31;
      v56 += v24;
      v55 += v23;
      --v54;
    }

    while (v54);
    if (result > a5)
    {
      break;
    }

    v59 = 0;
    v60 = v44;
    do
    {
      v61 = result;
      v62 = *(v25 + v47 + v59) > a4;
      if (*(v25 + v47 + v59) > a4)
      {
        ++result;
      }

      if (v61 >= a5)
      {
        v62 = 0;
      }

      *(v26 + v48 + v59) = v62 << 31 >> 31;
      v59 += 4;
      --v60;
    }

    while (v60);
    v63 = v44;
    v64 = v42;
    v65 = v43;
    if (result > a5)
    {
      break;
    }

    do
    {
      v66 = result;
      v67 = *(v25 + v65) > a4;
      if (*(v25 + v65) > a4)
      {
        ++result;
      }

      if (v66 >= a5)
      {
        v67 = 0;
      }

      *(v26 + v64) = v67 << 31 >> 31;
      v65 += 4;
      v64 += 4;
      --v63;
    }

    while (v63);
    ++v41;
    v48 += -4 - v24;
    v47 += -4 - v23;
    v44 += 2;
    v46 += 4 - v24;
    v45 += 4 - v23;
    v43 += v23 - 4;
    v42 += v24 - 4;
  }

  while (result <= a5 && v41 != v72);
  return result;
}