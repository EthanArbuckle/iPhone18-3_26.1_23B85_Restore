uint64_t sub_23677AFB8(uint64_t result, int a2, _DWORD *a3, uint64_t a4, float *a5, uint64_t a6, float32x4_t a7, double a8)
{
  *a5 = *a3;
  *a3 = 1065353216;
  a5[1] = *(a3 + 1);
  a3[1] = 0;
  a5[2] = NAN;
  v8 = &a3[a4];
  a5[3] = v8[1];
  v8[1] = 1.0;
  v9 = a5[3];
  v10 = a5[1];
  v11 = 1.0 / ((*a5 * v9) - (v10 * v10));
  a7.f32[0] = v9 * v11;
  *&a8 = -(v10 * v11);
  v12 = *a5 * v11;
  v13 = 4 * a4;
  if (a2 < 10)
  {
    v25 = 2;
  }

  else
  {
    v14 = vdupq_lane_s32(*a7.f32, 0);
    v15 = vdupq_lane_s32(*&a8, 0);
    v16 = (a6 + 8);
    v17 = (a3 + 2);
    for (i = 9; i < a2; i += 8)
    {
      v19 = *v17;
      v20 = v17[1];
      v21 = (v17 + v13);
      v22 = *(v17 + 4 * a4);
      v23 = *(v17 + v13 + 16);
      *v16 = *v17;
      v16[1] = v20;
      v24 = (v16 + 4 * a2);
      *v24 = v22;
      v24[1] = v23;
      *v17 = vmlaq_f32(vmulq_n_f32(v22, *&a8), v19, v14);
      v17[1] = vmlaq_f32(vmulq_n_f32(v23, *&a8), v20, v14);
      v17 += 2;
      *v21 = vmlaq_f32(vmulq_n_f32(v22, v12), v19, v15);
      v21[1] = vmlaq_f32(vmulq_n_f32(v23, v12), v20, v15);
      v16 += 2;
    }

    v25 = i - 7;
  }

  if (v25 < a2)
  {
    v26 = (a6 + 4 * v25);
    v27 = &a3[v25];
    v28 = a2 - v25;
    do
    {
      *v26 = *v27;
      v29 = v27[a4];
      v26[a2] = v29;
      *v27 = (*&a8 * v29) + (a7.f32[0] * *v26);
      v27[a4] = (v12 * v26[a2]) + (*&a8 * *v26);
      ++v26;
      ++v27;
      --v28;
    }

    while (v28);
    v25 = a2;
  }

  if ((v25 + 7) >= result)
  {
    v38 = v25;
  }

  else
  {
    v30 = vdupq_lane_s32(*a7.f32, 0);
    v31 = vdupq_lane_s32(*&a8, 0);
    v32 = &a3[v25];
    do
    {
      v33 = *v32;
      v34 = v32[1];
      v35 = (v32 + v13);
      v37 = *(v32 + 4 * a4);
      v36 = *(v32 + v13 + 16);
      *v32 = vmlaq_f32(vmulq_n_f32(v37, *&a8), *v32, v30);
      v32[1] = vmlaq_f32(vmulq_n_f32(v36, *&a8), v34, v30);
      v32 += 2;
      *v35 = vmlaq_f32(vmulq_n_f32(v37, v12), v33, v31);
      v35[1] = vmlaq_f32(vmulq_n_f32(v36, v12), v34, v31);
      v38 = v25 + 8;
      v39 = v25 + 15;
      v25 += 8;
    }

    while (v39 < result);
  }

  if (v38 < result)
  {
    v40 = &a3[v38];
    do
    {
      v41 = *v40;
      *v40 = (*&a8 * v40[a4]) + (a7.f32[0] * *v40);
      v40[a4] = (v12 * v40[a4]) + (*&a8 * v41);
      ++v40;
      ++v38;
    }

    while (v38 < result);
  }

  v42 = a2;
  if (a2 < 6)
  {
    v71 = 2;
  }

  else
  {
    v119 = a6 + 4 * a2;
    v43 = v13 + 24;
    v44 = 8 * a4 + 24;
    v45 = 16 * a4;
    v46 = 16 * a4 + 16;
    v47 = 12 * a4 + 24;
    v48 = 16 * a4 + 24;
    v49 = 20 * a4 + 24;
    v50 = &a3[2 * a4];
    v51 = &a3[3 * a4];
    v52 = 13;
    v53 = &a3[4 * a4];
    v54 = 5;
    v55 = 2;
    v56 = 24;
    v57 = &a3[5 * a4];
    v120 = v42;
    v121 = a6;
    do
    {
      a7 = *(a6 + 4 * v55);
      v58 = *(v119 + 4 * v55);
      v59 = &a3[v55];
      _Q4 = *v59;
      _Q3 = *(v59 + 4 * a4);
      *(v59 + 4 * v55 * a4) = vsubq_f32(*(v59 + 4 * v55 * a4), vmlaq_n_f32(vmulq_n_f32(_Q3, v58.f32[0]), *v59, a7.f32[0]));
      _S2 = a7.u32[1];
      __asm { FMLA            S6, S2, V4.S[1] }

      v68 = &v59->f32[(v55 | 1) * a4];
      v68->f32[1] = v68->f32[1] - _S6;
      v69 = vextq_s8(_Q4, _Q4, 8uLL).u64[0];
      _Q3.i64[0] = vextq_s8(_Q3, _Q3, 8uLL).u64[0];
      v68[1] = vsub_f32(v68[1], vmla_lane_f32(vmul_lane_f32(*_Q3.f32, *v58.f32, 1), v69, *a7.f32, 1));
      *&v59->u32[(v55 + 2) * a4 + 2] = vsub_f32(*&v59->u32[(v55 + 2) * a4 + 2], vmla_laneq_f32(vmul_laneq_f32(*_Q3.f32, v58, 2), v69, a7, 2));
      _Q3.i32[0] = a7.i32[3];
      __asm { FMLA            S5, S3, V4.S[3] }

      v59->f32[v54 * a4 + 3] = v59->f32[v54 * a4 + 3] - _S5;
      v71 = v55 + 4;
      v72 = v55 + 4;
      if (v55 + 11 < result)
      {
        v73 = vdupq_lane_s32(*a7.f32, 0);
        v74 = vdupq_lane_s32(*a7.f32, 1);
        v75 = v49;
        v76 = v48;
        v77 = vdupq_laneq_s32(a7, 2);
        v78 = v47;
        v79 = vdupq_laneq_s32(a7, 3);
        v80 = v44;
        v81 = v56;
        v82 = v43;
        v83 = v52;
        do
        {
          v85 = *(a3 + v81);
          v84 = *(a3 + v81 + 16);
          v86 = *(a3 + v82);
          v87 = *(a3 + v82 + 16);
          v88 = (a3 + v80);
          v89 = vsubq_f32(*(a3 + v80 + 16), vmlaq_f32(vmulq_n_f32(v87, v58.f32[0]), v73, v84));
          v90 = (a3 + v78);
          *v88 = vsubq_f32(*(a3 + v80), vmlaq_f32(vmulq_n_f32(v86, v58.f32[0]), v73, v85));
          v88[1] = v89;
          v91 = vsubq_f32(*(a3 + v78 + 16), vmlaq_f32(vmulq_lane_f32(v87, *v58.f32, 1), v74, v84));
          *v90 = vsubq_f32(*(a3 + v78), vmlaq_f32(vmulq_lane_f32(v86, *v58.f32, 1), v74, v85));
          v90[1] = v91;
          v92 = (a3 + v76);
          v93 = vsubq_f32(*(a3 + v76 + 16), vmlaq_f32(vmulq_laneq_f32(v87, v58, 2), v77, v84));
          *v92 = vsubq_f32(*(a3 + v76), vmlaq_f32(vmulq_laneq_f32(v86, v58, 2), v77, v85));
          v92[1] = v93;
          v94 = vmlaq_f32(vmulq_laneq_f32(v86, v58, 3), v79, v85);
          v95 = (a3 + v75);
          v96 = vsubq_f32(*(a3 + v75 + 16), vmlaq_f32(vmulq_laneq_f32(v87, v58, 3), v79, v84));
          v83 += 8;
          v82 += 32;
          v81 += 32;
          v80 += 32;
          *v95 = vsubq_f32(*(a3 + v75), v94);
          v95[1] = v96;
          v78 += 32;
          v76 += 32;
          v75 += 32;
        }

        while (v83 < result);
        v72 = v83 - 7;
      }

      if (v72 < result)
      {
        v97 = 0;
        v98 = v72;
        v99 = &a3[a4 + v72];
        v100 = &a3[v72];
        v101 = &v50[v72];
        v102 = &v51[v72];
        v103 = &v53[v72];
        v104 = &v57[v72];
        do
        {
          *&v101[v97] = *&v101[v97] - ((v58.f32[0] * *(v99 + 4 * v97)) + (*&v100[v97] * a7.f32[0]));
          *&v102[v97] = *&v102[v97] - ((v58.f32[1] * *(v99 + 4 * v97)) + (*&v100[v97] * a7.f32[1]));
          *&v103[v97] = *&v103[v97] - ((v58.f32[2] * *(v99 + 4 * v97)) + (*&v100[v97] * a7.f32[2]));
          *&v104[v97] = *&v104[v97] - ((v58.f32[3] * *(v99 + 4 * v97)) + (*&v100[v97] * a7.f32[3]));
          ++v97;
        }

        while ((v98 + v97) < result);
      }

      v105 = v55 + 7;
      v54 += 4;
      v52 += 4;
      v43 += 16;
      v56 += 16;
      v44 += v46;
      v47 += v46;
      v48 += v46;
      v49 += v46;
      v50 = (v50 + v45);
      v51 = (v51 + v45);
      v53 = (v53 + v45);
      v57 = (v57 + v45);
      v55 += 4;
      v42 = v120;
      a6 = v121;
    }

    while (v105 < v120);
  }

  if (v71 < a2)
  {
    v106 = v71;
    v107 = &a3[v71];
    v108 = (a3 + (v13 + 4) * v71);
    v109 = 4 * a4 * v71;
    do
    {
      a7.i32[0] = *(a6 + 4 * v106);
      v110 = *(a6 + 4 * a2 + 4 * v106);
      v111 = v106;
      if (v106 < result - 7)
      {
        v112 = 0;
        v113 = vdupq_lane_s32(*a7.f32, 0);
        v114 = v108;
        v115 = v107;
        do
        {
          v116 = vsubq_f32(v114[1], vmlaq_f32(vmulq_n_f32(*(v115 + v13 + 16), v110), v113, v115[1]));
          *v114 = vsubq_f32(*v114, vmlaq_f32(vmulq_n_f32(*(v115 + 4 * a4), v110), v113, *v115));
          v114[1] = v116;
          v114 += 2;
          v112 += 8;
          v115 += 2;
        }

        while (v106 + v112 + 7 < result);
        v111 = v106 + v112;
      }

      if (v111 < result)
      {
        v117 = &a3[v111];
        do
        {
          *(v117 + v109) = *(v117 + v109) - ((v110 * v117[a4]) + (*v117 * a7.f32[0]));
          ++v117;
          ++v111;
        }

        while (v111 < result);
      }

      ++v106;
      v107 = (v107 + 4);
      v108 = (v108 + v13 + 4);
      v109 += v13;
    }

    while (v106 != v42);
  }

  return result;
}

uint64_t sub_23677B610(uint64_t result, int a2, float64x2_t *a3, uint64_t a4, double *a5, float64x2_t *a6)
{
  *a5 = a3->f64[0];
  a3->f64[0] = 1.0;
  a5[1] = a3->f64[1];
  a3->f64[1] = 0.0;
  a5[2] = NAN;
  v6 = &a3->f64[a4];
  a5[3] = v6[1];
  v6[1] = 1.0;
  v7 = a5[3];
  v8 = a5[1];
  v9 = 1.0 / (*a5 * v7 - v8 * v8);
  v10 = v7 * v9;
  v11 = -(v8 * v9);
  v12 = *a5 * v9;
  v13 = 8 * a4;
  if (a2 < 10)
  {
    v29 = 2;
  }

  else
  {
    v14 = vdupq_lane_s64(*&v10, 0);
    v15 = vdupq_lane_s64(*&v11, 0);
    v16 = a6 + 1;
    v17 = a3 + 1;
    for (i = 9; i < a2; i += 8)
    {
      v20 = *v17;
      v19 = v17[1];
      v21 = v17[2];
      v22 = v17[3];
      v23 = (v17 + v13);
      v25 = *(v17 + 8 * a4);
      v24 = *(v17 + v13 + 16);
      v26 = *(v17 + v13 + 32);
      v27 = *(v17 + v13 + 48);
      *v16 = *v17;
      v16[1] = v19;
      v16[2] = v21;
      v16[3] = v22;
      v28 = (v16 + 8 * a2);
      *v28 = v25;
      v28[1] = v24;
      v28[2] = v26;
      v28[3] = v27;
      *v17 = vmlaq_f64(vmulq_n_f64(v25, v11), v20, v14);
      v17[1] = vmlaq_f64(vmulq_n_f64(v24, v11), v19, v14);
      v17[2] = vmlaq_f64(vmulq_n_f64(v26, v11), v21, v14);
      v17[3] = vmlaq_f64(vmulq_n_f64(v27, v11), v22, v14);
      v23[2] = vmlaq_f64(vmulq_n_f64(v26, v12), v21, v15);
      v23[3] = vmlaq_f64(vmulq_n_f64(v27, v12), v22, v15);
      *v23 = vmlaq_f64(vmulq_n_f64(v25, v12), v20, v15);
      v23[1] = vmlaq_f64(vmulq_n_f64(v24, v12), v19, v15);
      v16 += 4;
      v17 += 4;
    }

    v29 = i - 7;
  }

  if (v29 < a2)
  {
    v30 = &a6->f64[v29];
    v31 = &a3->f64[v29];
    v32 = a2 - v29;
    do
    {
      *v30 = *v31;
      v33 = v31[a4];
      v30[a2] = v33;
      *v31 = v11 * v33 + v10 * *v30;
      v31[a4] = v12 * v30[a2] + v11 * *v30;
      ++v30;
      ++v31;
      --v32;
    }

    while (v32);
    v29 = a2;
  }

  if ((v29 + 7) >= result)
  {
    v46 = v29;
  }

  else
  {
    v34 = vdupq_lane_s64(*&v10, 0);
    v35 = vdupq_lane_s64(*&v11, 0);
    v36 = (a3 + 8 * v29);
    do
    {
      v37 = *v36;
      v38 = v36[1];
      v39 = v36[2];
      v40 = v36[3];
      v41 = (v36 + v13);
      v43 = *(v36 + 8 * a4);
      v42 = *(v36 + v13 + 16);
      v45 = *(v36 + v13 + 32);
      v44 = *(v36 + v13 + 48);
      *v36 = vmlaq_f64(vmulq_n_f64(v43, v11), *v36, v34);
      v36[1] = vmlaq_f64(vmulq_n_f64(v42, v11), v38, v34);
      v36[2] = vmlaq_f64(vmulq_n_f64(v45, v11), v39, v34);
      v36[3] = vmlaq_f64(vmulq_n_f64(v44, v11), v40, v34);
      v41[2] = vmlaq_f64(vmulq_n_f64(v45, v12), v39, v35);
      v41[3] = vmlaq_f64(vmulq_n_f64(v44, v12), v40, v35);
      *v41 = vmlaq_f64(vmulq_n_f64(v43, v12), v37, v35);
      v41[1] = vmlaq_f64(vmulq_n_f64(v42, v12), v38, v35);
      v46 = v29 + 8;
      v47 = v29 + 15;
      v36 += 4;
      v29 += 8;
    }

    while (v47 < result);
  }

  if (v46 < result)
  {
    v48 = &a3->f64[v46];
    do
    {
      v49 = *v48;
      *v48 = v11 * v48[a4] + v10 * *v48;
      v48[a4] = v12 * v48[a4] + v11 * v49;
      ++v48;
      ++v46;
    }

    while (v46 < result);
  }

  v50 = a2;
  if (a2 < 6)
  {
    v86 = 2;
  }

  else
  {
    v150 = (a6 + 8 * a2);
    v51 = v13 + 48;
    v52 = 16 * a4 + 48;
    v53 = 32 * a4;
    v54 = 32 * a4 + 32;
    v55 = 24 * a4 + 48;
    v56 = 32 * a4 + 48;
    v57 = 40 * a4 + 48;
    f64 = a3[a4].f64;
    v59 = &a3->f64[3 * a4];
    v60 = 13;
    v61 = a3[2 * a4].f64;
    v62 = 5;
    v63 = 2;
    v64 = 48;
    v65 = &a3->f64[5 * a4];
    v151 = v50;
    v152 = a6;
    do
    {
      v66 = a6[v63 / 2].f64;
      v68 = *v66;
      v67 = *(v66 + 1);
      v69 = &v150[v63 / 2];
      v71 = *v69;
      v70 = v69[1];
      v72 = &a3[v63 / 2];
      _Q6 = *v72;
      _Q16 = v72[1];
      v75 = (v72 + 8 * a4);
      _Q17 = v75[1];
      v77 = vmlaq_n_f64(vmulq_n_f64(*v75, v71.f64[0]), *v72, v68.f64[0]);
      v78 = (v72 + 8 * v63 * a4);
      _Q4 = vsubq_f64(v78[1], vmlaq_n_f64(vmulq_n_f64(_Q17, v71.f64[0]), _Q16, v68.f64[0]));
      *v78 = vsubq_f64(*v78, v77);
      v78[1] = _Q4;
      _Q4.f64[0] = v68.f64[1];
      __asm { FMLA            D7, D4, V6.D[1] }

      v85 = (v72 + 8 * (v63 | 1) * a4);
      v85->f64[1] = v85->f64[1] - _D7;
      v85[1] = vsubq_f64(v85[1], vmlaq_laneq_f64(vmulq_laneq_f64(_Q17, v71, 1), _Q16, v68, 1));
      *(v72 + 8 * (v63 + 2) * a4 + 16) = vsubq_f64(*(v72 + 8 * (v63 + 2) * a4 + 16), vmlaq_n_f64(vmulq_n_f64(_Q17, v70.f64[0]), _Q16, *v67.i64));
      *&_Q6.f64[0] = v67.i64[1];
      __asm { FMLA            D17, D6, V16.D[1] }

      v72[1].f64[v62 * a4 + 1] = v72[1].f64[v62 * a4 + 1] - _Q17.f64[0];
      v86 = v63 + 4;
      v87 = v63 + 4;
      if (v63 + 11 < result)
      {
        v88 = vdupq_lane_s64(*&v68.f64[0], 0);
        v89 = vdupq_laneq_s64(v68, 1);
        v90 = v57;
        v91 = v56;
        v92 = vdupq_lane_s64(v67.i64[0], 0);
        v93 = v55;
        v94 = vdupq_laneq_s64(v67, 1);
        v95 = v52;
        v96 = v64;
        v97 = v51;
        v98 = v60;
        do
        {
          v100 = *(a3 + v96);
          v99 = *(a3 + v96 + 16);
          v101 = *(a3 + v96 + 32);
          v102 = *(a3 + v96 + 48);
          v103 = *(a3 + v97);
          v104 = *(a3 + v97 + 16);
          v106 = *(a3 + v97 + 32);
          v105 = *(a3 + v97 + 48);
          v107 = (a3 + v95);
          v108 = vsubq_f64(*(a3 + v95 + 48), vmlaq_f64(vmulq_n_f64(v105, v71.f64[0]), v88, v102));
          v109 = vsubq_f64(*(a3 + v95 + 16), vmlaq_f64(vmulq_n_f64(v104, v71.f64[0]), v88, v99));
          v110 = vsubq_f64(*(a3 + v95 + 32), vmlaq_f64(vmulq_n_f64(v106, v71.f64[0]), v88, v101));
          *v107 = vsubq_f64(*(a3 + v95), vmlaq_f64(vmulq_n_f64(v103, v71.f64[0]), v88, v100));
          v107[1] = v109;
          v107[2] = v110;
          v107[3] = v108;
          v111 = (a3 + v93);
          v112 = vsubq_f64(*(a3 + v93 + 32), vmlaq_f64(vmulq_laneq_f64(v106, v71, 1), v89, v101));
          v113 = vsubq_f64(*(a3 + v93 + 16), vmlaq_f64(vmulq_laneq_f64(v104, v71, 1), v89, v99));
          v114 = vsubq_f64(*(a3 + v93 + 48), vmlaq_f64(vmulq_laneq_f64(v105, v71, 1), v89, v102));
          *v111 = vsubq_f64(*(a3 + v93), vmlaq_f64(vmulq_laneq_f64(v103, v71, 1), v89, v100));
          v111[1] = v113;
          v111[2] = v112;
          v111[3] = v114;
          v115 = (a3 + v91);
          v116 = *(a3 + v91 + 32);
          v117 = vsubq_f64(*(a3 + v91 + 16), vmlaq_f64(vmulq_n_f64(v104, v70.f64[0]), v92, v99));
          v118 = vsubq_f64(*(a3 + v91 + 48), vmlaq_f64(vmulq_n_f64(v105, v70.f64[0]), v92, v102));
          *v115 = vsubq_f64(*(a3 + v91), vmlaq_f64(vmulq_n_f64(v103, v70.f64[0]), v92, v100));
          v115[1] = v117;
          v119 = vmlaq_f64(vmulq_laneq_f64(v105, v70, 1), v94, v102);
          v115[2] = vsubq_f64(v116, vmlaq_f64(vmulq_n_f64(v106, v70.f64[0]), v92, v101));
          v115[3] = v118;
          v120 = vmlaq_f64(vmulq_laneq_f64(v103, v70, 1), v94, v100);
          v121 = (a3 + v90);
          v122 = vsubq_f64(*(a3 + v90 + 32), vmlaq_f64(vmulq_laneq_f64(v106, v70, 1), v94, v101));
          v123 = vsubq_f64(*(a3 + v90 + 16), vmlaq_f64(vmulq_laneq_f64(v104, v70, 1), v94, v99));
          v124 = vsubq_f64(*(a3 + v90 + 48), v119);
          v98 += 8;
          v97 += 64;
          v96 += 64;
          v95 += 64;
          *v121 = vsubq_f64(*(a3 + v90), v120);
          v121[1] = v123;
          v121[2] = v122;
          v121[3] = v124;
          v93 += 64;
          v91 += 64;
          v90 += 64;
        }

        while (v98 < result);
        v87 = v98 - 7;
      }

      if (v87 < result)
      {
        v125 = 0;
        v126 = v87;
        v127 = &a3->f64[a4 + v87];
        v128 = &a3->f64[v87];
        v129 = &f64[v87];
        v130 = &v59[v87];
        v131 = &v61[v87];
        v132 = &v65[v87];
        do
        {
          *&v129[v125] = *&v129[v125] - (v71.f64[0] * *(v127 + 8 * v125) + *&v128[v125] * v68.f64[0]);
          *&v130[v125] = *&v130[v125] - (v71.f64[1] * *(v127 + 8 * v125) + *&v128[v125] * v68.f64[1]);
          *&v131[v125] = *&v131[v125] - (v70.f64[0] * *(v127 + 8 * v125) + *&v128[v125] * *v67.i64);
          *&v132[v125] = *&v132[v125] - (v70.f64[1] * *(v127 + 8 * v125) + *&v128[v125] * *&v67.i64[1]);
          ++v125;
        }

        while ((v126 + v125) < result);
      }

      v133 = v63 + 7;
      v62 += 4;
      v60 += 4;
      v51 += 32;
      v64 += 32;
      v52 += v54;
      v55 += v54;
      v56 += v54;
      v57 += v54;
      f64 = (f64 + v53);
      v59 = (v59 + v53);
      v61 = (v61 + v53);
      v65 = (v65 + v53);
      v63 += 4;
      v50 = v151;
      a6 = v152;
    }

    while (v133 < v151);
  }

  if (v86 < a2)
  {
    v134 = v86;
    v135 = (a3 + 8 * v86);
    v136 = (a3 + (v13 + 8) * v86);
    v137 = 8 * a4 * v86;
    do
    {
      v138 = *&a6->f64[v134];
      v139 = a6->f64[a2 + v134];
      v140 = v134;
      if (v134 < result - 7)
      {
        v141 = 0;
        v142 = vdupq_lane_s64(v138, 0);
        v143 = v136;
        v144 = v135;
        do
        {
          v145 = vsubq_f64(v143[3], vmlaq_f64(vmulq_n_f64(*(v144 + v13 + 48), v139), v142, v144[3]));
          v146 = vsubq_f64(v143[1], vmlaq_f64(vmulq_n_f64(*(v144 + v13 + 16), v139), v142, v144[1]));
          v147 = vsubq_f64(v143[2], vmlaq_f64(vmulq_n_f64(*(v144 + v13 + 32), v139), v142, v144[2]));
          *v143 = vsubq_f64(*v143, vmlaq_f64(vmulq_n_f64(*(v144 + 8 * a4), v139), v142, *v144));
          v143[1] = v146;
          v143[2] = v147;
          v143[3] = v145;
          v141 += 8;
          v144 += 4;
          v143 += 4;
        }

        while (v134 + v141 + 7 < result);
        v140 = v134 + v141;
      }

      if (v140 < result)
      {
        v148 = &a3->f64[v140];
        do
        {
          *(v148 + v137) = *(v148 + v137) - (v139 * v148[a4] + *v148 * *&v138);
          ++v148;
          ++v140;
        }

        while (v140 < result);
      }

      ++v134;
      v135 = (v135 + 8);
      v136 = (v136 + v13 + 8);
      v137 += v13;
    }

    while (v134 != v50);
  }

  return result;
}

void sub_23677BD98(int a1, int a2, void *a3, uint64_t a4, float32x2_t *a5, float32x4_t *a6)
{
  *a5 = *a3;
  *a3 = 1065353216;
  a5[1] = a3[1];
  v12 = a5 + 1;
  a3[1] = 0;
  a5[2] = 2143289344;
  v13 = &a3[a4];
  a5[3] = v13[1];
  v14 = &a5[3];
  v204 = v13;
  v13[1] = 1065353216;
  v15 = sub_236784E2C(a5, &a5[3]);
  v17 = v16;
  v18 = sub_236784E2C(v12, v12);
  v216[0] = sub_23681E680(1.0, 0.0, v15 - v18, v17 - v19);
  v216[1] = v20;
  *v21.i32 = sub_236784E2C(v14, v216);
  v212 = v21;
  v209 = v22;
  v215 = vneg_f32(*v12);
  *v23.i32 = sub_236784E2C(&v215, v216);
  v211 = v23;
  v207 = v24;
  *v25.i32 = sub_236784E2C(a5, v216);
  __asm { FMOV            V2.4S, #-1.0 }

  v31 = vnegq_f64(_Q2);
  v32 = vmulq_n_f32(v31, v209);
  v33 = vmulq_n_f32(v31, v207);
  v35 = vmulq_n_f32(v31, v34);
  v36 = 8 * a4;
  if (a2 < 6)
  {
    v55 = 2;
    v38 = v211;
    v37 = v212;
  }

  else
  {
    v38 = v211;
    v37 = v212;
    v39 = vdupq_lane_s32(v212, 0);
    v40 = vdupq_lane_s32(v211, 0);
    v41 = vdupq_lane_s32(v25, 0);
    v42 = a6 + 1;
    v43 = (a3 + 2);
    v44 = 5;
    do
    {
      v45 = *v43;
      v46 = v43[1];
      v47 = (v43 + v36);
      v48 = *(v43 + 8 * a4);
      v49 = *(v43 + v36 + 16);
      v50 = vrev64q_s32(v46);
      v51 = vrev64q_s32(*v43);
      v52 = vrev64q_s32(v49);
      v53 = vrev64q_s32(v48);
      *v42 = *v43;
      v42[1] = v46;
      v54 = (v42 + 8 * a2);
      *v54 = v48;
      v54[1] = v49;
      *v43 = vaddq_f32(vmlaq_f32(vmulq_f32(v32, v51), v39, v45), vmlaq_f32(vmulq_f32(v33, v53), v40, v48));
      v43[1] = vaddq_f32(vmlaq_f32(vmulq_f32(v32, v50), v39, v46), vmlaq_f32(vmulq_f32(v33, v52), v40, v49));
      v43 += 2;
      *v47 = vaddq_f32(vmlaq_f32(vmulq_f32(v33, v51), v40, v45), vmlaq_f32(vmulq_f32(v35, v53), v41, v48));
      v47[1] = vaddq_f32(vmlaq_f32(vmulq_f32(v33, v50), v40, v46), vmlaq_f32(vmulq_f32(v35, v52), v41, v49));
      v42 += 2;
      v44 += 4;
    }

    while (v44 < a2);
    v55 = v44 - 3;
  }

  if (v55 < a2)
  {
    v56 = vdup_lane_s32(v37, 0);
    v57 = vdup_lane_s32(v38, 0);
    v58 = vdup_lane_s32(v25, 0);
    v59 = a6 + v55;
    v60 = &a3[v55];
    v61 = a2 - v55;
    do
    {
      v62 = *v60;
      v63 = v60[a4];
      v64 = vrev64_s32(*v60);
      v65 = vrev64_s32(v63);
      *v59 = *v60;
      v59[a2] = v63;
      *v60 = vadd_f32(vmla_f32(vmul_f32(*v32.f32, v64), v56, v62), vmla_f32(vmul_f32(*v33.f32, v65), v57, v63));
      v60[a4] = vadd_f32(vmla_f32(vmul_f32(*v33.f32, v64), v57, v62), vmla_f32(vmul_f32(*v35.f32, v65), v58, v63));
      ++v59;
      ++v60;
      --v61;
    }

    while (v61);
    v55 = a2;
  }

  if ((v55 + 3) >= a1)
  {
    v79 = v55;
  }

  else
  {
    v66 = vdupq_lane_s32(v37, 0);
    v67 = vdupq_lane_s32(v38, 0);
    v68 = &a3[v55];
    v69 = vdupq_lane_s32(v25, 0);
    do
    {
      v71 = *v68;
      v70 = v68[1];
      v72 = (v68 + v36);
      v74 = *(v68 + 8 * a4);
      v73 = *(v68 + v36 + 16);
      v75 = vrev64q_s32(*v68);
      v76 = vrev64q_s32(v70);
      v77 = vrev64q_s32(v74);
      v78 = vrev64q_s32(v73);
      *v68 = vaddq_f32(vmlaq_f32(vmulq_f32(v32, v75), v66, *v68), vmlaq_f32(vmulq_f32(v33, v77), v67, v74));
      v68[1] = vaddq_f32(vmlaq_f32(vmulq_f32(v32, v76), v66, v70), vmlaq_f32(vmulq_f32(v33, v78), v67, v73));
      v68 += 2;
      *v72 = vaddq_f32(vmlaq_f32(vmulq_f32(v33, v75), v67, v71), vmlaq_f32(vmulq_f32(v35, v77), v69, v74));
      v72[1] = vaddq_f32(vmlaq_f32(vmulq_f32(v33, v76), v67, v70), vmlaq_f32(vmulq_f32(v35, v78), v69, v73));
      v79 = v55 + 4;
      v80 = v55 + 7;
      v55 += 4;
    }

    while (v80 < a1);
  }

  if (v79 < a1)
  {
    v81 = vdup_lane_s32(v37, 0);
    v82 = vdup_lane_s32(v38, 0);
    v83 = &a3[v79];
    v84 = vdup_lane_s32(v25, 0);
    do
    {
      v85 = *v83;
      v86 = v83[a4];
      v87 = vrev64_s32(*v83);
      v88 = vrev64_s32(v86);
      *v83 = vadd_f32(vmla_f32(vmul_f32(*v32.f32, v87), v81, *v83), vmla_f32(vmul_f32(*v33.f32, v88), v82, v86));
      v83[a4] = vadd_f32(vmla_f32(vmul_f32(*v33.f32, v87), v82, v85), vmla_f32(vmul_f32(*v35.f32, v88), v84, v86));
      ++v83;
      ++v79;
    }

    while (v79 < a1);
  }

  v89 = a2;
  v202 = a2;
  if (a2 < 6)
  {
    LODWORD(v102) = 2;
  }

  else
  {
    v210 = a6 + 8 * a2;
    v90 = v36 + 48;
    v91 = 16 * a4 + 48;
    v92 = 32 * a4;
    v93 = 32 * a4 + 32;
    v94 = 24 * a4 + 48;
    v95 = 32 * a4 + 48;
    v96 = 40 * a4 + 48;
    v97 = &a3[2 * a4];
    v98 = &a3[3 * a4];
    v99 = 9;
    v100 = &a3[4 * a4];
    v101 = 5;
    v102 = 2;
    v103 = 48;
    v104 = &a3[5 * a4];
    v214 = a6;
    v203 = v31;
    v213 = v89;
    do
    {
      v105 = &a6[v102 / 2];
      v107 = *v105;
      v106 = v105[1];
      v108 = (v210 + 8 * v102);
      v110 = *v108;
      v109 = v108[1];
      v111 = vmulq_lane_f32(v31, *v107.f32, 1);
      v112 = vmulq_laneq_f32(v31, v107, 3);
      v113 = vmulq_lane_f32(v31, *v106.f32, 1);
      v114 = vmulq_laneq_f32(v31, v106, 3);
      v115 = vmulq_lane_f32(v31, *v108->f32, 1);
      v116 = vmulq_laneq_f32(v31, *v108, 3);
      v117 = vmulq_lane_f32(v31, *v109.f32, 1);
      v118 = vmulq_laneq_f32(v31, v109, 3);
      v119 = &a3[v102];
      v120 = *v119;
      v121 = v119[1];
      v122 = (v119 + 8 * a4);
      v123 = *v122;
      v124 = v122[1];
      v125 = vrev64q_s32(v121);
      v126 = vrev64q_s32(*v119);
      v127 = vrev64q_s32(v124);
      v128 = vrev64q_s32(*v122);
      v129 = vaddq_f32(vmlaq_n_f32(vmulq_f32(v111, v126), *v119, v107.f32[0]), vmlaq_n_f32(vmulq_f32(v115, v128), *v122, v110.f32[0]));
      v130 = (v119 + 8 * v102 * a4);
      v131 = vsubq_f32(v130[1], vaddq_f32(vmlaq_n_f32(vmulq_f32(v111, v125), v121, v107.f32[0]), vmlaq_n_f32(vmulq_f32(v115, v127), v124, v110.f32[0])));
      *v130 = vsubq_f32(*v130, v129);
      v130[1] = v131;
      v129.i64[0] = vextq_s8(v120, v120, 8uLL).u64[0];
      v132 = vdupq_laneq_s32(v107, 2);
      *v126.f32 = vmla_f32(vmul_f32(*&vextq_s8(v112, v112, 8uLL), *&vextq_s8(v126, v126, 8uLL)), *v132.f32, *v129.f32);
      v129.i64[0] = vextq_s8(v123, v123, 8uLL).u64[0];
      v133 = vdupq_laneq_s32(v110, 2);
      v134 = (v119 + 8 * (v102 | 1) * a4);
      *&v134->u32[2] = vsub_f32(*&v134->u32[2], vadd_f32(*v126.f32, vmla_f32(vmul_f32(*&vextq_s8(v116, v116, 8uLL), *&vextq_s8(v128, v128, 8uLL)), *v133.f32, *v129.f32)));
      v134[1] = vsubq_f32(v134[1], vaddq_f32(vmlaq_laneq_f32(vmulq_f32(v112, v125), v121, v107, 2), vmlaq_laneq_f32(vmulq_f32(v116, v127), v124, v110, 2)));
      *(v119 + 8 * (v102 + 2) * a4 + 16) = vsubq_f32(*(v119 + 8 * (v102 + 2) * a4 + 16), vaddq_f32(vmlaq_n_f32(vmulq_f32(v113, v125), v121, v106.f32[0]), vmlaq_n_f32(vmulq_f32(v117, v127), v124, v109.f32[0])));
      *&v119[1].u32[2 * v101 * a4 + 2] = vsub_f32(*&v119[1].u32[2 * v101 * a4 + 2], vadd_f32(vmla_laneq_f32(vmul_f32(*&vextq_s8(v114, v114, 8uLL), *&vextq_s8(v125, v125, 8uLL)), *&vextq_s8(v121, v121, 8uLL), v106, 2), vmla_laneq_f32(vmul_f32(*&vextq_s8(v118, v118, 8uLL), *&vextq_s8(v127, v127, 8uLL)), *&vextq_s8(v124, v124, 8uLL), v109, 2)));
      v135 = v102 + 7;
      v102 += 4;
      v136 = v102;
      if (v135 < a1)
      {
        v205 = v107.i64[0];
        v206 = v109;
        v137 = vdupq_lane_s32(*v107.f32, 0);
        v138 = vdupq_lane_s32(*v110.f32, 0);
        v139 = vdupq_lane_s32(*v106.f32, 0);
        v140 = v96;
        v141 = v95;
        v142 = v94;
        v143 = vdupq_lane_s32(*v109.f32, 0);
        v208 = v106;
        v144 = vdupq_laneq_s32(v106, 2);
        v145 = v91;
        v146 = v103;
        v147 = vdupq_laneq_s32(v109, 2);
        v148 = v90;
        v149 = v99;
        do
        {
          v151 = *(a3 + v146);
          v150 = *(a3 + v146 + 16);
          v152 = *(a3 + v148);
          v153 = *(a3 + v148 + 16);
          v154 = vrev64q_s32(v150);
          v155 = vrev64q_s32(v151);
          v156 = vrev64q_s32(v153);
          v157 = vrev64q_s32(v152);
          v158 = (a3 + v145);
          v159 = vsubq_f32(*(a3 + v145 + 16), vaddq_f32(vmlaq_f32(vmulq_f32(v111, v154), v137, v150), vmlaq_f32(vmulq_f32(v115, v156), v138, v153)));
          v160 = (a3 + v142);
          *v158 = vsubq_f32(*(a3 + v145), vaddq_f32(vmlaq_f32(vmulq_f32(v111, v155), v137, v151), vmlaq_f32(vmulq_f32(v115, v157), v138, v152)));
          v158[1] = v159;
          v161 = vsubq_f32(*(a3 + v142 + 16), vaddq_f32(vmlaq_f32(vmulq_f32(v112, v154), v132, v150), vmlaq_f32(vmulq_f32(v116, v156), v133, v153)));
          *v160 = vsubq_f32(*(a3 + v142), vaddq_f32(vmlaq_f32(vmulq_f32(v112, v155), v132, v151), vmlaq_f32(vmulq_f32(v116, v157), v133, v152)));
          v160[1] = v161;
          v162 = (a3 + v141);
          v163 = vsubq_f32(*(a3 + v141 + 16), vaddq_f32(vmlaq_f32(vmulq_f32(v113, v154), v139, v150), vmlaq_f32(vmulq_f32(v117, v156), v143, v153)));
          *v162 = vsubq_f32(*(a3 + v141), vaddq_f32(vmlaq_f32(vmulq_f32(v113, v155), v139, v151), vmlaq_f32(vmulq_f32(v117, v157), v143, v152)));
          v162[1] = v163;
          v164 = (a3 + v140);
          v165 = vsubq_f32(*(a3 + v140 + 16), vaddq_f32(vmlaq_f32(vmulq_f32(v114, v154), v144, v150), vmlaq_f32(vmulq_f32(v118, v156), v147, v153)));
          v149 += 4;
          v148 += 32;
          v146 += 32;
          v145 += 32;
          *v164 = vsubq_f32(*(a3 + v140), vaddq_f32(vmlaq_f32(vmulq_f32(v114, v155), v144, v151), vmlaq_f32(vmulq_f32(v118, v157), v147, v152)));
          v164[1] = v165;
          v142 += 32;
          v141 += 32;
          v140 += 32;
        }

        while (v149 < a1);
        v136 = v149 - 3;
        v31 = v203;
        v109 = v206;
        v106 = v208;
        v107.i64[0] = v205;
      }

      if (v136 < a1)
      {
        v166 = 0;
        v167 = vdup_laneq_s32(v106, 2);
        v168 = vdup_laneq_s32(v109, 2);
        v169 = v136;
        v170 = vdup_lane_s32(*v107.f32, 0);
        v171 = vdup_lane_s32(*v110.f32, 0);
        v172 = vdup_lane_s32(*v106.f32, 0);
        v173 = vdup_lane_s32(*v109.f32, 0);
        v174 = &v204[v136];
        v175 = &a3[v136];
        v176 = &v97[v136];
        v177 = &v98[v136];
        v178 = &v100[v136];
        v179 = &v104[v136];
        do
        {
          v180 = v175[v166];
          v181 = v174[v166];
          v182 = vrev64_s32(v180);
          v183 = vrev64_s32(v181);
          v176[v166] = vsub_f32(v176[v166], vadd_f32(vmla_f32(vmul_f32(*v111.f32, v182), v170, v180), vmla_f32(vmul_f32(*v115.f32, v183), v171, v181)));
          v177[v166] = vsub_f32(v177[v166], vadd_f32(vmla_f32(vmul_f32(*v112.f32, v182), *v132.f32, v180), vmla_f32(vmul_f32(*v116.f32, v183), *v133.f32, v181)));
          v178[v166] = vsub_f32(v178[v166], vadd_f32(vmla_f32(vmul_f32(*v113.f32, v182), v172, v180), vmla_f32(vmul_f32(*v117.f32, v183), v173, v181)));
          v179[v166] = vsub_f32(v179[v166], vadd_f32(vmla_f32(vmul_f32(*v114.f32, v182), v167, v180), vmla_f32(vmul_f32(*v118.f32, v183), v168, v181)));
          ++v166;
        }

        while ((v169 + v166) < a1);
      }

      v101 += 4;
      v99 += 4;
      v90 += 32;
      v103 += 32;
      v91 += v93;
      v94 += v93;
      v95 += v93;
      v96 += v93;
      v97 = (v97 + v92);
      v98 = (v98 + v92);
      v100 = (v100 + v92);
      v104 = (v104 + v92);
      v89 = v213;
      a6 = v214;
    }

    while (v135 < v213);
  }

  if (v102 < v202)
  {
    v184 = v102;
    v185 = &a3[v102];
    v186 = (a3 + (v36 + 8) * v102);
    v187 = 8 * a4 * v102;
    do
    {
      v188 = *&a6->f32[2 * v184];
      v189 = *&a6->f32[2 * v202 + 2 * v184];
      v190 = vmulq_lane_f32(v31, v188, 1);
      v191 = vmulq_lane_f32(v31, v189, 1);
      v192 = v184;
      if (v184 < a1 - 3)
      {
        v193 = 0;
        v194 = vdupq_lane_s32(v188, 0);
        v195 = vdupq_lane_s32(v189, 0);
        v196 = v186;
        v197 = v185;
        do
        {
          v198 = vsubq_f32(v196[1], vaddq_f32(vmlaq_f32(vmulq_f32(v190, vrev64q_s32(v197[1])), v194, v197[1]), vmlaq_f32(vmulq_f32(v191, vrev64q_s32(*(&v197[1] + v36))), v195, *(&v197[1] + v36))));
          *v196 = vsubq_f32(*v196, vaddq_f32(vmlaq_f32(vmulq_f32(v190, vrev64q_s32(*v197)), v194, *v197), vmlaq_f32(vmulq_f32(v191, vrev64q_s32(*(v197 + 8 * a4))), v195, *(v197 + 8 * a4))));
          v196[1] = v198;
          v196 += 2;
          v193 += 4;
          v197 += 2;
        }

        while (v184 + v193 + 3 < a1);
        v192 = v184 + v193;
      }

      if (v192 < a1)
      {
        v199 = vdup_lane_s32(v188, 0);
        v200 = vdup_lane_s32(v189, 0);
        v201 = &a3[v192];
        do
        {
          *(v201 + v187) = vsub_f32(*(v201 + v187), vadd_f32(vmla_f32(vmul_f32(*v190.f32, vrev64_s32(*v201)), v199, *v201), vmla_f32(vmul_f32(*v191.f32, vrev64_s32(v201[a4])), v200, v201[a4])));
          ++v201;
          ++v192;
        }

        while (v192 < a1);
      }

      ++v184;
      v185 = (v185 + 8);
      v186 = (v186 + v36 + 8);
      v187 += v36;
    }

    while (v184 != v89);
  }
}

void sub_23677C744(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, float64x2_t *a6)
{
  *a5 = *a3;
  *a3 = xmmword_23681FBD0;
  *(a5 + 16) = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a5 + 32) = xmmword_23681FE80;
  v12 = a3 + 16 * a4;
  *(a5 + 48) = *(v12 + 16);
  v242 = v12;
  *(v12 + 16) = xmmword_23681FBD0;
  v13 = sub_236784E88(a5, (a5 + 48));
  v15 = v14;
  v16 = sub_236784E88((a5 + 16), (a5 + 16));
  v257[0] = sub_23681E17C(1.0, 0.0, v13 - v16, v15 - v17);
  v257[1] = v18;
  v254 = sub_236784E88((a5 + 48), v257);
  v251 = v19;
  v256 = vnegq_f64(*(a5 + 16));
  v253 = sub_236784E88(v256.f64, v257);
  v250 = v20;
  *&v21 = sub_236784E88(a5, v257);
  v22 = xmmword_23681FB50;
  v23 = vmulq_n_f64(xmmword_23681FB50, v251);
  v24 = vmulq_n_f64(xmmword_23681FB50, v250);
  v26 = vmulq_n_f64(xmmword_23681FB50, v25);
  v27 = a4;
  if (a2 < 6)
  {
    v52 = 2;
  }

  else
  {
    v28 = vdupq_lane_s64(v254, 0);
    v29 = vdupq_lane_s64(v253, 0);
    v30 = vdupq_lane_s64(v21, 0);
    v31 = a6 + 2;
    v32 = (a3 + 32);
    v33 = 5;
    do
    {
      v35 = *v32;
      v34 = v32[1];
      v37 = v32[2];
      v36 = v32[3];
      v38 = &v32[v27];
      v40 = v32[a4];
      v39 = v32[v27 + 1];
      v42 = v32[v27 + 2];
      v41 = v32[v27 + 3];
      v43 = vextq_s8(v36, v36, 8uLL);
      v44 = vextq_s8(v35, v35, 8uLL);
      v45 = vextq_s8(v34, v34, 8uLL);
      v46 = vextq_s8(v37, v37, 8uLL);
      v47 = vextq_s8(v41, v41, 8uLL);
      v48 = vextq_s8(v40, v40, 8uLL);
      v49 = vextq_s8(v39, v39, 8uLL);
      v50 = vextq_s8(v42, v42, 8uLL);
      *v31 = *v32;
      v31[1] = v34;
      v31[2] = v37;
      v31[3] = v36;
      v51 = &v31[a2];
      v51[2] = v42;
      v51[3] = v41;
      *v51 = v40;
      v51[1] = v39;
      *v32 = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v44), v28, v35), vmlaq_f64(vmulq_f64(v24, v48), v29, v40));
      v32[1] = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v45), v28, v34), vmlaq_f64(vmulq_f64(v24, v49), v29, v39));
      v32[2] = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v46), v28, v37), vmlaq_f64(vmulq_f64(v24, v50), v29, v42));
      v32[3] = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v43), v28, v36), vmlaq_f64(vmulq_f64(v24, v47), v29, v41));
      v38[2] = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v46), v29, v37), vmlaq_f64(vmulq_f64(v26, v50), v30, v42));
      v38[3] = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v43), v29, v36), vmlaq_f64(vmulq_f64(v26, v47), v30, v41));
      *v38 = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v44), v29, v35), vmlaq_f64(vmulq_f64(v26, v48), v30, v40));
      v38[1] = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v45), v29, v34), vmlaq_f64(vmulq_f64(v26, v49), v30, v39));
      v31 += 4;
      v33 += 4;
      v32 += 4;
    }

    while (v33 < a2);
    v52 = v33 - 3;
  }

  if (v52 < a2)
  {
    v53 = vdupq_lane_s64(v254, 0);
    v54 = vdupq_lane_s64(v253, 0);
    v55 = vdupq_lane_s64(v21, 0);
    v56 = &a6[v52];
    v57 = (a3 + 16 * v52);
    v58 = a2 - v52;
    do
    {
      v59 = *v57;
      v60 = v57[a4];
      v61 = vextq_s8(v59, v59, 8uLL);
      v62 = vextq_s8(v60, v60, 8uLL);
      *v56 = *v57;
      v56[a2] = v60;
      *v57 = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v61), v53, v59), vmlaq_f64(vmulq_f64(v24, v62), v54, v60));
      v57[a4] = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v61), v54, v59), vmlaq_f64(vmulq_f64(v26, v62), v55, v60));
      ++v56;
      ++v57;
      --v58;
    }

    while (v58);
    v52 = a2;
  }

  if ((v52 + 3) >= a1)
  {
    v85 = v52;
  }

  else
  {
    v63 = vdupq_lane_s64(v254, 0);
    v64 = vdupq_lane_s64(v253, 0);
    v65 = (a3 + 16 * v52);
    v66 = vdupq_lane_s64(v21, 0);
    do
    {
      v68 = *v65;
      v67 = v65[1];
      v70 = v65[2];
      v69 = v65[3];
      v71 = &v65[v27];
      v73 = v65[a4];
      v72 = v65[v27 + 1];
      v75 = v65[v27 + 2];
      v74 = v65[v27 + 3];
      v76 = vextq_s8(v70, v70, 8uLL);
      v77 = vextq_s8(v69, v69, 8uLL);
      v78 = vextq_s8(v68, v68, 8uLL);
      v79 = vextq_s8(v67, v67, 8uLL);
      v80 = vextq_s8(v75, v75, 8uLL);
      v81 = vextq_s8(v74, v74, 8uLL);
      v82 = vextq_s8(v73, v73, 8uLL);
      v83 = vextq_s8(v72, v72, 8uLL);
      v84 = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v78), v63, *v65), vmlaq_f64(vmulq_f64(v24, v82), v64, v73));
      v65[2] = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v76), v63, v70), vmlaq_f64(vmulq_f64(v24, v80), v64, v75));
      v65[3] = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v77), v63, v69), vmlaq_f64(vmulq_f64(v24, v81), v64, v74));
      *v65 = v84;
      v65[1] = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v79), v63, v67), vmlaq_f64(vmulq_f64(v24, v83), v64, v72));
      v65 += 4;
      v71[2] = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v76), v64, v70), vmlaq_f64(vmulq_f64(v26, v80), v66, v75));
      v71[3] = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v77), v64, v69), vmlaq_f64(vmulq_f64(v26, v81), v66, v74));
      *v71 = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v78), v64, v68), vmlaq_f64(vmulq_f64(v26, v82), v66, v73));
      v71[1] = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v79), v64, v67), vmlaq_f64(vmulq_f64(v26, v83), v66, v72));
      v85 = v52 + 4;
      v86 = v52 + 7;
      v52 += 4;
    }

    while (v86 < a1);
  }

  if (v85 < a1)
  {
    v87 = vdupq_lane_s64(v254, 0);
    v88 = vdupq_lane_s64(v253, 0);
    v89 = (a3 + 16 * v85);
    v90 = vdupq_lane_s64(v21, 0);
    do
    {
      v91 = *v89;
      v92 = v89[a4];
      v93 = vextq_s8(v91, v91, 8uLL);
      v94 = vextq_s8(v92, v92, 8uLL);
      *v89 = vaddq_f64(vmlaq_f64(vmulq_f64(v23, v93), v87, *v89), vmlaq_f64(vmulq_f64(v24, v94), v88, v92));
      v89[a4] = vaddq_f64(vmlaq_f64(vmulq_f64(v24, v93), v88, v91), vmlaq_f64(vmulq_f64(v26, v94), v90, v92));
      ++v89;
      ++v85;
    }

    while (v85 < a1);
  }

  v95 = a2;
  v241 = a2;
  if (a2 < 6)
  {
    LODWORD(v108) = 2;
  }

  else
  {
    v243 = &a6[a2];
    v96 = v27 * 16 + 96;
    v97 = 32 * a4 + 96;
    v98 = a4 << 6;
    v99 = (a4 << 6) + 64;
    v100 = 48 * a4 + 96;
    v101 = (a4 << 6) + 96;
    v102 = 80 * a4 + 96;
    v103 = a3 + 32 * a4;
    v104 = a3 + 48 * a4;
    v105 = 9;
    v106 = a3 + (a4 << 6);
    v107 = 5;
    v108 = 2;
    v109 = 96;
    v110 = a3 + 80 * a4;
    v244 = v95;
    v245 = a6;
    do
    {
      v111 = &a6[v108];
      v113 = v111[2];
      v112 = v111[3];
      v114 = *v111;
      v115 = v111[1];
      v116 = &v243[v108];
      v117 = *v116;
      v118 = v116[1];
      v119 = vmulq_laneq_f64(v22, *v111, 1);
      v120 = vmulq_laneq_f64(v22, *v116, 1);
      v121 = a3 + 16 * v108;
      v123 = *(v121 + 32);
      v122 = *(v121 + 48);
      v124 = *(v121 + 16);
      v125 = v121 + 16 * a4;
      v126 = *(v125 + 32);
      v127 = *(v125 + 48);
      v128 = *(v125 + 16);
      v129 = vextq_s8(v124, v124, 8uLL);
      v130 = vextq_s8(v123, v123, 8uLL);
      v131 = vextq_s8(v122, v122, 8uLL);
      v132 = vextq_s8(v128, v128, 8uLL);
      v133 = vextq_s8(v126, v126, 8uLL);
      v134 = vextq_s8(v127, v127, 8uLL);
      v135 = vaddq_f64(vmlaq_n_f64(vmulq_f64(v119, vextq_s8(*v121, *v121, 8uLL)), *v121, v114.f64[0]), vmlaq_n_f64(vmulq_f64(v120, vextq_s8(*v125, *v125, 8uLL)), *v125, v116->f64[0]));
      v136 = (v121 + 16 * v108 * a4);
      v137 = vsubq_f64(*v136, v135);
      v138 = vsubq_f64(v136[1], vaddq_f64(vmlaq_n_f64(vmulq_f64(v119, v129), v124, v114.f64[0]), vmlaq_n_f64(vmulq_f64(v120, v132), v128, v116->f64[0])));
      v139 = vsubq_f64(v136[3], vaddq_f64(vmlaq_n_f64(vmulq_f64(v119, v131), v122, v114.f64[0]), vmlaq_n_f64(vmulq_f64(v120, v134), v127, v116->f64[0])));
      v140 = v116[2];
      v141 = v116[3];
      v136[2] = vsubq_f64(v136[2], vaddq_f64(vmlaq_n_f64(vmulq_f64(v119, v130), v123, v114.f64[0]), vmlaq_n_f64(vmulq_f64(v120, v133), v126, v116->f64[0])));
      v136[3] = v139;
      v142 = vmulq_laneq_f64(v22, v115, 1);
      *v136 = v137;
      v136[1] = v138;
      v143 = vmulq_laneq_f64(v22, v118, 1);
      v144 = (v121 + 16 * (v108 | 1) * a4);
      v145 = vsubq_f64(v144[1], vaddq_f64(vmlaq_n_f64(vmulq_f64(v142, v129), v124, v115.f64[0]), vmlaq_n_f64(vmulq_f64(v143, v132), v128, v118.f64[0])));
      v146 = vsubq_f64(v144[3], vaddq_f64(vmlaq_n_f64(vmulq_f64(v142, v131), v122, v115.f64[0]), vmlaq_n_f64(vmulq_f64(v143, v134), v127, v118.f64[0])));
      v147 = vsubq_f64(v144[2], vaddq_f64(vmlaq_n_f64(vmulq_f64(v142, v130), v123, v115.f64[0]), vmlaq_n_f64(vmulq_f64(v143, v133), v126, v118.f64[0])));
      v144[1] = v145;
      v144[2] = v147;
      v148 = vmulq_laneq_f64(v22, v113, 1);
      v144[3] = v146;
      v149 = vmulq_laneq_f64(v22, v140, 1);
      v150 = vmlaq_n_f64(vmulq_f64(v149, v133), v126, v140.f64[0]);
      v151 = (v121 + 16 * (v108 + 2) * a4);
      v152 = vsubq_f64(v151[3], vaddq_f64(vmlaq_n_f64(vmulq_f64(v148, v131), v122, v113.f64[0]), vmlaq_n_f64(vmulq_f64(v149, v134), v127, v140.f64[0])));
      v151[2] = vsubq_f64(v151[2], vaddq_f64(vmlaq_n_f64(vmulq_f64(v148, v130), v123, v113.f64[0]), v150));
      v151[3] = v152;
      v153 = vmulq_laneq_f64(v22, v112, 1);
      v154 = vmulq_laneq_f64(v22, v141, 1);
      *(v121 + 16 * v107 * a4 + 48) = vsubq_f64(*(v121 + 16 * v107 * a4 + 48), vaddq_f64(vmlaq_n_f64(vmulq_f64(v153, v131), v122, v112.f64[0]), vmlaq_n_f64(vmulq_f64(v154, v134), v127, v141.f64[0])));
      v155 = vdupq_lane_s64(*&v114.f64[0], 0);
      v156 = vdupq_lane_s64(*&v117.f64[0], 0);
      v157 = vdupq_lane_s64(*&v115.f64[0], 0);
      v158 = vdupq_lane_s64(*&v118.f64[0], 0);
      v159 = vdupq_lane_s64(*&v112.f64[0], 0);
      v160 = vdupq_lane_s64(*&v141.f64[0], 0);
      v161 = v108 + 7;
      v108 += 4;
      v162 = vdupq_lane_s64(*&v113.f64[0], 0);
      v163 = vdupq_lane_s64(*&v140.f64[0], 0);
      v164 = v108;
      if (v161 < a1)
      {
        v165 = v102;
        v166 = v101;
        v167 = v100;
        v168 = v97;
        v169 = v109;
        v170 = v96;
        v171 = v105;
        v172 = v119;
        v252 = v157;
        v173 = v120;
        v248 = v159;
        v249 = v158;
        v174 = v142;
        v175 = v143;
        v255 = v163;
        v176 = v148;
        v246 = v160;
        v247 = v154;
        do
        {
          v177 = *(a3 + v169 + 32);
          v178 = *(a3 + v169 + 48);
          v179 = *(a3 + v169);
          v180 = *(a3 + v169 + 16);
          v182 = *(a3 + v170 + 32);
          v181 = *(a3 + v170 + 48);
          v183 = *(a3 + v170);
          v184 = *(a3 + v170 + 16);
          v185 = vextq_s8(v180, v180, 8uLL);
          v186 = vextq_s8(v179, v179, 8uLL);
          v187 = vextq_s8(v178, v178, 8uLL);
          v188 = vextq_s8(v177, v177, 8uLL);
          v189 = vextq_s8(v184, v184, 8uLL);
          v190 = vextq_s8(v183, v183, 8uLL);
          v191 = vextq_s8(v181, v181, 8uLL);
          v192 = vextq_s8(v182, v182, 8uLL);
          v193 = (a3 + v168);
          v194 = vsubq_f64(*(a3 + v168 + 16), vaddq_f64(vmlaq_f64(vmulq_f64(v172, v185), v155, v180), vmlaq_f64(vmulq_f64(v173, v189), v156, v184)));
          v195 = vsubq_f64(*(a3 + v168), vaddq_f64(vmlaq_f64(vmulq_f64(v172, v186), v155, v179), vmlaq_f64(vmulq_f64(v173, v190), v156, v183)));
          v196 = vsubq_f64(*(a3 + v168 + 48), vaddq_f64(vmlaq_f64(vmulq_f64(v172, v187), v155, v178), vmlaq_f64(vmulq_f64(v173, v191), v156, v181)));
          v193[2] = vsubq_f64(*(a3 + v168 + 32), vaddq_f64(vmlaq_f64(vmulq_f64(v172, v188), v155, v177), vmlaq_f64(vmulq_f64(v173, v192), v156, v182)));
          v193[3] = v196;
          *v193 = v195;
          v193[1] = v194;
          v197 = (a3 + v167);
          v198 = vsubq_f64(*(a3 + v167 + 32), vaddq_f64(vmlaq_f64(vmulq_f64(v174, v188), v252, v177), vmlaq_f64(vmulq_f64(v175, v192), v249, v182)));
          v199 = vsubq_f64(*(a3 + v167 + 16), vaddq_f64(vmlaq_f64(vmulq_f64(v174, v185), v252, v180), vmlaq_f64(vmulq_f64(v175, v189), v249, v184)));
          v200 = vsubq_f64(*(a3 + v167 + 48), vaddq_f64(vmlaq_f64(vmulq_f64(v174, v187), v252, v178), vmlaq_f64(vmulq_f64(v175, v191), v249, v181)));
          *v197 = vsubq_f64(*(a3 + v167), vaddq_f64(vmlaq_f64(vmulq_f64(v174, v186), v252, v179), vmlaq_f64(vmulq_f64(v175, v190), v249, v183)));
          v197[1] = v199;
          v197[2] = v198;
          v197[3] = v200;
          v201 = (a3 + v166);
          v202 = vsubq_f64(*(a3 + v166 + 32), vaddq_f64(vmlaq_f64(vmulq_f64(v176, v188), v162, v177), vmlaq_f64(vmulq_f64(v149, v192), v255, v182)));
          v203 = vsubq_f64(*(a3 + v166 + 16), vaddq_f64(vmlaq_f64(vmulq_f64(v176, v185), v162, v180), vmlaq_f64(vmulq_f64(v149, v189), v255, v184)));
          v204 = vsubq_f64(*(a3 + v166 + 48), vaddq_f64(vmlaq_f64(vmulq_f64(v176, v187), v162, v178), vmlaq_f64(vmulq_f64(v149, v191), v255, v181)));
          *v201 = vsubq_f64(*(a3 + v166), vaddq_f64(vmlaq_f64(vmulq_f64(v176, v186), v162, v179), vmlaq_f64(vmulq_f64(v149, v190), v255, v183)));
          v201[1] = v203;
          v205 = vmlaq_f64(vmulq_f64(v153, v186), v248, v179);
          v206 = vmlaq_f64(vmulq_f64(v153, v187), v248, v178);
          v160 = v246;
          v154 = v247;
          v201[2] = v202;
          v201[3] = v204;
          v207 = (a3 + v165);
          v208 = vsubq_f64(*(a3 + v165 + 32), vaddq_f64(vmlaq_f64(vmulq_f64(v153, v188), v248, v177), vmlaq_f64(vmulq_f64(v247, v192), v246, v182)));
          v209 = vsubq_f64(*(a3 + v165 + 16), vaddq_f64(vmlaq_f64(vmulq_f64(v153, v185), v248, v180), vmlaq_f64(vmulq_f64(v247, v189), v246, v184)));
          v210 = vsubq_f64(*(a3 + v165 + 48), vaddq_f64(v206, vmlaq_f64(vmulq_f64(v247, v191), v246, v181)));
          *v207 = vsubq_f64(*(a3 + v165), vaddq_f64(v205, vmlaq_f64(vmulq_f64(v247, v190), v246, v183)));
          v207[1] = v209;
          v207[2] = v208;
          v207[3] = v210;
          v171 += 4;
          v170 += 64;
          v169 += 64;
          v168 += 64;
          v167 += 64;
          v166 += 64;
          v165 += 64;
        }

        while (v171 < a1);
        v164 = v171 - 3;
        v22 = xmmword_23681FB50;
        v119 = v172;
        v120 = v173;
        v142 = v174;
        v143 = v175;
        v148 = v176;
        v157 = v252;
        v159 = v248;
        v158 = v249;
        v163 = v255;
      }

      if (v164 < a1)
      {
        v211 = 0;
        v212 = v164;
        v213 = v242 + 16 * v164;
        v214 = a3 + 16 * v164;
        v215 = v103 + 16 * v164;
        v216 = v104 + 16 * v164;
        v217 = v106 + 16 * v164;
        v218 = v110 + 16 * v164;
        do
        {
          v219 = *(v214 + 16 * v211);
          v220 = *(v213 + 16 * v211);
          v221 = vextq_s8(v219, v219, 8uLL);
          v222 = vextq_s8(v220, v220, 8uLL);
          *(v215 + 16 * v211) = vsubq_f64(*(v215 + 16 * v211), vaddq_f64(vmlaq_f64(vmulq_f64(v119, v221), v155, v219), vmlaq_f64(vmulq_f64(v120, v222), v156, v220)));
          *(v216 + 16 * v211) = vsubq_f64(*(v216 + 16 * v211), vaddq_f64(vmlaq_f64(vmulq_f64(v142, v221), v157, v219), vmlaq_f64(vmulq_f64(v143, v222), v158, v220)));
          *(v217 + 16 * v211) = vsubq_f64(*(v217 + 16 * v211), vaddq_f64(vmlaq_f64(vmulq_f64(v148, v221), v162, v219), vmlaq_f64(vmulq_f64(v149, v222), v163, v220)));
          *(v218 + 16 * v211) = vsubq_f64(*(v218 + 16 * v211), vaddq_f64(vmlaq_f64(vmulq_f64(v153, v221), v159, v219), vmlaq_f64(vmulq_f64(v154, v222), v160, v220)));
          ++v211;
        }

        while ((v212 + v211) < a1);
      }

      v107 += 4;
      v105 += 4;
      v96 += 64;
      v109 += 64;
      v97 += v99;
      v100 += v99;
      v101 += v99;
      v102 += v99;
      v103 += v98;
      v104 += v98;
      v106 += v98;
      v110 += v98;
      v95 = v244;
      a6 = v245;
    }

    while (v161 < v244);
  }

  if (v108 < v241)
  {
    v223 = v108;
    v224 = (a3 + 16 * v108);
    v225 = (a3 + (v27 * 16 + 16) * v108);
    v226 = 16 * a4 * v108;
    do
    {
      v227 = a6[v223];
      v228 = a6[v241 + v223];
      v229 = vmulq_laneq_f64(v22, v227, 1);
      v230 = vmulq_laneq_f64(v22, v228, 1);
      v231 = vdupq_lane_s64(*&v227.f64[0], 0);
      v232 = vdupq_lane_s64(*&v228.f64[0], 0);
      v233 = v223;
      if (v223 < a1 - 3)
      {
        v234 = 0;
        v235 = v225;
        v236 = v224;
        do
        {
          v237 = vsubq_f64(v235[1], vaddq_f64(vmlaq_f64(vmulq_f64(v229, vextq_s8(v236[1], v236[1], 8uLL)), v231, v236[1]), vmlaq_f64(vmulq_f64(v230, vextq_s8(v236[v27 + 1], v236[v27 + 1], 8uLL)), v232, v236[v27 + 1])));
          v238 = vsubq_f64(*v235, vaddq_f64(vmlaq_f64(vmulq_f64(v229, vextq_s8(*v236, *v236, 8uLL)), v231, *v236), vmlaq_f64(vmulq_f64(v230, vextq_s8(v236[a4], v236[a4], 8uLL)), v232, v236[a4])));
          v239 = vsubq_f64(v235[3], vaddq_f64(vmlaq_f64(vmulq_f64(v229, vextq_s8(v236[3], v236[3], 8uLL)), v231, v236[3]), vmlaq_f64(vmulq_f64(v230, vextq_s8(v236[v27 + 3], v236[v27 + 3], 8uLL)), v232, v236[v27 + 3])));
          v235[2] = vsubq_f64(v235[2], vaddq_f64(vmlaq_f64(vmulq_f64(v229, vextq_s8(v236[2], v236[2], 8uLL)), v231, v236[2]), vmlaq_f64(vmulq_f64(v230, vextq_s8(v236[v27 + 2], v236[v27 + 2], 8uLL)), v232, v236[v27 + 2])));
          v235[3] = v239;
          *v235 = v238;
          v235[1] = v237;
          v235 += 4;
          v234 += 4;
          v236 += 4;
        }

        while (v223 + v234 + 3 < a1);
        v233 = v223 + v234;
      }

      if (v233 < a1)
      {
        v240 = (a3 + 16 * v233);
        do
        {
          *(v240 + v226) = vsubq_f64(*(v240 + v226), vaddq_f64(vmlaq_f64(vmulq_f64(v229, vextq_s8(*v240, *v240, 8uLL)), v231, *v240), vmlaq_f64(vmulq_f64(v230, vextq_s8(v240[a4], v240[a4], 8uLL)), v232, v240[a4])));
          ++v240;
          ++v233;
        }

        while (v233 < a1);
      }

      ++v223;
      ++v224;
      v225 = (v225 + v27 * 16 + 16);
      v226 += v27 * 16;
    }

    while (v223 != v95);
  }
}

void sub_23677D3B0(int a1, int a2, float *a3, uint64_t a4, float32x2_t *a5, float32x4_t *a6)
{
  v12 = *a3;
  v13 = &a3[2 * a4];
  v14 = v13[2];
  v15 = (a3[3] * a3[3]) + (a3[2] * a3[2]);
  a5->f32[0] = *a3;
  a5->i32[1] = 0;
  *a3 = 1065353216;
  a5[1] = *(a3 + 2);
  *(a3 + 1) = 0;
  a5[2] = 2143289344;
  a5[3].f32[0] = v14;
  a5[3].i32[1] = 0;
  v202 = v13;
  *(v13 + 1) = 1065353216;
  v214[0] = 1.0 / -(v15 - (v12 * v14));
  v214[1] = 0.0;
  *v16.i32 = sub_236784E2C(&a5[3], v214);
  v210 = v16;
  v207 = v17;
  v213 = vneg_f32(a5[1]);
  *v18.i32 = sub_236784E2C(&v213, v214);
  v209 = v18;
  v205 = v19;
  *v20.i32 = sub_236784E2C(a5, v214);
  __asm { FMOV            V2.4S, #-1.0 }

  v26 = vnegq_f64(_Q2);
  v27 = vmulq_n_f32(v26, v207);
  v28 = vmulq_n_f32(v26, v205);
  __asm { FMOV            V2.4S, #1.0 }

  v30 = vnegq_f64(_Q2);
  v31 = vmulq_n_f32(v30, v205);
  v33 = vmulq_n_f32(v26, v32);
  v34 = 8 * a4;
  if (a2 < 6)
  {
    v53 = 2;
    v36 = v209;
    v35 = v210;
  }

  else
  {
    v36 = v209;
    v35 = v210;
    v37 = vdupq_lane_s32(v210, 0);
    v38 = vdupq_lane_s32(v209, 0);
    v39 = vdupq_lane_s32(v20, 0);
    v40 = a6 + 1;
    v41 = (a3 + 4);
    v42 = 5;
    do
    {
      v43 = *v41;
      v44 = v41[1];
      v45 = (v41 + v34);
      v46 = *(v41 + 8 * a4);
      v47 = *(v41 + v34 + 16);
      v48 = vrev64q_s32(v44);
      v49 = vrev64q_s32(*v41);
      v50 = vrev64q_s32(v47);
      v51 = vrev64q_s32(v46);
      *v40 = *v41;
      v40[1] = v44;
      v52 = (v40 + 8 * a2);
      *v52 = v46;
      v52[1] = v47;
      *v41 = vaddq_f32(vmlaq_f32(vmulq_f32(v27, v49), v37, v43), vmlaq_f32(vmulq_f32(v28, v51), v38, v46));
      v41[1] = vaddq_f32(vmlaq_f32(vmulq_f32(v27, v48), v37, v44), vmlaq_f32(vmulq_f32(v28, v50), v38, v47));
      v41 += 2;
      *v45 = vaddq_f32(vmlaq_f32(vmulq_f32(v31, v49), v38, v43), vmlaq_f32(vmulq_f32(v33, v51), v39, v46));
      v45[1] = vaddq_f32(vmlaq_f32(vmulq_f32(v31, v48), v38, v44), vmlaq_f32(vmulq_f32(v33, v50), v39, v47));
      v40 += 2;
      v42 += 4;
    }

    while (v42 < a2);
    v53 = v42 - 3;
  }

  if (v53 < a2)
  {
    v54 = vdup_lane_s32(v35, 0);
    v55 = vdup_lane_s32(v36, 0);
    v56 = vdup_lane_s32(v20, 0);
    v57 = a6 + v53;
    v58 = &a3[2 * v53];
    v59 = a2 - v53;
    do
    {
      v60 = *v58;
      v61 = v58[a4];
      v62 = vrev64_s32(*v58);
      v63 = vrev64_s32(v61);
      *v57 = *v58;
      v57[a2] = v61;
      *v58 = vadd_f32(vmla_f32(vmul_f32(*v27.f32, v62), v54, v60), vmla_f32(vmul_f32(*v28.f32, v63), v55, v61));
      v58[a4] = vadd_f32(vmla_f32(vmul_f32(*v31.f32, v62), v55, v60), vmla_f32(vmul_f32(*v33.f32, v63), v56, v61));
      ++v57;
      ++v58;
      --v59;
    }

    while (v59);
    v53 = a2;
  }

  if ((v53 + 3) >= a1)
  {
    v77 = v53;
  }

  else
  {
    v64 = vdupq_lane_s32(v35, 0);
    v65 = vdupq_lane_s32(v36, 0);
    v66 = &a3[2 * v53];
    v67 = vdupq_lane_s32(v20, 0);
    do
    {
      v69 = *v66;
      v68 = v66[1];
      v70 = (v66 + v34);
      v72 = *(v66 + 8 * a4);
      v71 = *(v66 + v34 + 16);
      v73 = vrev64q_s32(*v66);
      v74 = vrev64q_s32(v68);
      v75 = vrev64q_s32(v72);
      v76 = vrev64q_s32(v71);
      *v66 = vaddq_f32(vmlaq_f32(vmulq_f32(v27, v73), v64, *v66), vmlaq_f32(vmulq_f32(v28, v75), v65, v72));
      v66[1] = vaddq_f32(vmlaq_f32(vmulq_f32(v27, v74), v64, v68), vmlaq_f32(vmulq_f32(v28, v76), v65, v71));
      v66 += 2;
      *v70 = vaddq_f32(vmlaq_f32(vmulq_f32(v31, v73), v65, v69), vmlaq_f32(vmulq_f32(v33, v75), v67, v72));
      v70[1] = vaddq_f32(vmlaq_f32(vmulq_f32(v31, v74), v65, v68), vmlaq_f32(vmulq_f32(v33, v76), v67, v71));
      v77 = v53 + 4;
      v78 = v53 + 7;
      v53 += 4;
    }

    while (v78 < a1);
  }

  if (v77 < a1)
  {
    v79 = vdup_lane_s32(v35, 0);
    v80 = vdup_lane_s32(v36, 0);
    v81 = &a3[2 * v77];
    v82 = vdup_lane_s32(v20, 0);
    do
    {
      v83 = *v81;
      v84 = v81[a4];
      v85 = vrev64_s32(*v81);
      v86 = vrev64_s32(v84);
      *v81 = vadd_f32(vmla_f32(vmul_f32(*v27.f32, v85), v79, *v81), vmla_f32(vmul_f32(*v28.f32, v86), v80, v84));
      v81[a4] = vadd_f32(vmla_f32(vmul_f32(*v31.f32, v85), v80, v83), vmla_f32(vmul_f32(*v33.f32, v86), v82, v84));
      ++v81;
      ++v77;
    }

    while (v77 < a1);
  }

  v87 = a2;
  v200 = a2;
  if (a2 < 6)
  {
    LODWORD(v100) = 2;
  }

  else
  {
    v208 = a6 + 8 * a2;
    v88 = v34 + 48;
    v89 = 16 * a4 + 48;
    v90 = 32 * a4;
    v91 = 32 * a4 + 32;
    v92 = 24 * a4 + 48;
    v93 = 32 * a4 + 48;
    v94 = 40 * a4 + 48;
    v95 = &a3[4 * a4];
    v96 = &a3[6 * a4];
    v97 = 9;
    v98 = &a3[8 * a4];
    v99 = 5;
    v100 = 2;
    v101 = 48;
    v102 = &a3[10 * a4];
    v212 = a6;
    v201 = v30;
    v211 = v87;
    do
    {
      v103 = &a6[v100 / 2];
      v105 = *v103;
      v104 = v103[1];
      v106 = (v208 + 8 * v100);
      v108 = *v106;
      v107 = v106[1];
      v109 = vmulq_lane_f32(v30, *v105.f32, 1);
      v110 = vmulq_laneq_f32(v30, v105, 3);
      v111 = vmulq_lane_f32(v30, *v104.f32, 1);
      v112 = vmulq_laneq_f32(v30, v104, 3);
      v113 = vmulq_lane_f32(v30, *v106->f32, 1);
      v114 = vmulq_laneq_f32(v30, *v106, 3);
      v115 = vmulq_lane_f32(v30, *v107.f32, 1);
      v116 = vmulq_laneq_f32(v30, v107, 3);
      v117 = &a3[2 * v100];
      v118 = *v117;
      v119 = *(v117 + 4);
      v120 = &v117[2 * a4];
      v121 = *v120;
      v122 = *(v120 + 4);
      v123 = vrev64q_s32(v119);
      v124 = vrev64q_s32(*v117);
      v125 = vrev64q_s32(v122);
      v126 = vrev64q_s32(*v120);
      v127 = vaddq_f32(vmlaq_n_f32(vmulq_f32(v109, v124), *v117, v105.f32[0]), vmlaq_n_f32(vmulq_f32(v113, v126), *v120, v108.f32[0]));
      v128 = &v117[2 * v100 * a4];
      v129 = vsubq_f32(v128[1], vaddq_f32(vmlaq_n_f32(vmulq_f32(v109, v123), v119, v105.f32[0]), vmlaq_n_f32(vmulq_f32(v113, v125), v122, v108.f32[0])));
      *v128 = vsubq_f32(*v128, v127);
      v128[1] = v129;
      v127.i64[0] = vextq_s8(v118, v118, 8uLL).u64[0];
      v130 = vdupq_laneq_s32(v105, 2);
      *v124.f32 = vmla_f32(vmul_f32(*&vextq_s8(v110, v110, 8uLL), *&vextq_s8(v124, v124, 8uLL)), *v130.f32, *v127.f32);
      v127.i64[0] = vextq_s8(v121, v121, 8uLL).u64[0];
      v131 = vdupq_laneq_s32(v108, 2);
      v132 = &v117[2 * (v100 | 1) * a4];
      *(v132 + 1) = vsub_f32(*(v132 + 2), vadd_f32(*v124.f32, vmla_f32(vmul_f32(*&vextq_s8(v114, v114, 8uLL), *&vextq_s8(v126, v126, 8uLL)), *v131.f32, *v127.f32)));
      *(v132 + 1) = vsubq_f32(*(v132 + 4), vaddq_f32(vmlaq_laneq_f32(vmulq_f32(v110, v123), v119, v105, 2), vmlaq_laneq_f32(vmulq_f32(v114, v125), v122, v108, 2)));
      *&v117[2 * (v100 + 2) * a4 + 4] = vsubq_f32(*&v117[2 * (v100 + 2) * a4 + 4], vaddq_f32(vmlaq_n_f32(vmulq_f32(v111, v123), v119, v104.f32[0]), vmlaq_n_f32(vmulq_f32(v115, v125), v122, v107.f32[0])));
      *&v117[2 * v99 * a4 + 6] = vsub_f32(*&v117[2 * v99 * a4 + 6], vadd_f32(vmla_laneq_f32(vmul_f32(*&vextq_s8(v112, v112, 8uLL), *&vextq_s8(v123, v123, 8uLL)), *&vextq_s8(v119, v119, 8uLL), v104, 2), vmla_laneq_f32(vmul_f32(*&vextq_s8(v116, v116, 8uLL), *&vextq_s8(v125, v125, 8uLL)), *&vextq_s8(v122, v122, 8uLL), v107, 2)));
      v133 = v100 + 7;
      v100 += 4;
      v134 = v100;
      if (v133 < a1)
      {
        v203 = v105.i64[0];
        v204 = v107;
        v135 = vdupq_lane_s32(*v105.f32, 0);
        v136 = vdupq_lane_s32(*v108.f32, 0);
        v137 = vdupq_lane_s32(*v104.f32, 0);
        v138 = v94;
        v139 = v93;
        v140 = v92;
        v141 = vdupq_lane_s32(*v107.f32, 0);
        v206 = v104;
        v142 = vdupq_laneq_s32(v104, 2);
        v143 = v89;
        v144 = v101;
        v145 = vdupq_laneq_s32(v107, 2);
        v146 = v88;
        v147 = v97;
        do
        {
          v149 = *(a3 + v144);
          v148 = *(a3 + v144 + 16);
          v150 = *(a3 + v146);
          v151 = *(a3 + v146 + 16);
          v152 = vrev64q_s32(v148);
          v153 = vrev64q_s32(v149);
          v154 = vrev64q_s32(v151);
          v155 = vrev64q_s32(v150);
          v156 = (a3 + v143);
          v157 = vsubq_f32(*(a3 + v143 + 16), vaddq_f32(vmlaq_f32(vmulq_f32(v109, v152), v135, v148), vmlaq_f32(vmulq_f32(v113, v154), v136, v151)));
          v158 = (a3 + v140);
          *v156 = vsubq_f32(*(a3 + v143), vaddq_f32(vmlaq_f32(vmulq_f32(v109, v153), v135, v149), vmlaq_f32(vmulq_f32(v113, v155), v136, v150)));
          v156[1] = v157;
          v159 = vsubq_f32(*(a3 + v140 + 16), vaddq_f32(vmlaq_f32(vmulq_f32(v110, v152), v130, v148), vmlaq_f32(vmulq_f32(v114, v154), v131, v151)));
          *v158 = vsubq_f32(*(a3 + v140), vaddq_f32(vmlaq_f32(vmulq_f32(v110, v153), v130, v149), vmlaq_f32(vmulq_f32(v114, v155), v131, v150)));
          v158[1] = v159;
          v160 = (a3 + v139);
          v161 = vsubq_f32(*(a3 + v139 + 16), vaddq_f32(vmlaq_f32(vmulq_f32(v111, v152), v137, v148), vmlaq_f32(vmulq_f32(v115, v154), v141, v151)));
          *v160 = vsubq_f32(*(a3 + v139), vaddq_f32(vmlaq_f32(vmulq_f32(v111, v153), v137, v149), vmlaq_f32(vmulq_f32(v115, v155), v141, v150)));
          v160[1] = v161;
          v162 = (a3 + v138);
          v163 = vsubq_f32(*(a3 + v138 + 16), vaddq_f32(vmlaq_f32(vmulq_f32(v112, v152), v142, v148), vmlaq_f32(vmulq_f32(v116, v154), v145, v151)));
          v147 += 4;
          v146 += 32;
          v144 += 32;
          v143 += 32;
          *v162 = vsubq_f32(*(a3 + v138), vaddq_f32(vmlaq_f32(vmulq_f32(v112, v153), v142, v149), vmlaq_f32(vmulq_f32(v116, v155), v145, v150)));
          v162[1] = v163;
          v140 += 32;
          v139 += 32;
          v138 += 32;
        }

        while (v147 < a1);
        v134 = v147 - 3;
        v30 = v201;
        v107 = v204;
        v104 = v206;
        v105.i64[0] = v203;
      }

      if (v134 < a1)
      {
        v164 = 0;
        v165 = vdup_laneq_s32(v104, 2);
        v166 = vdup_laneq_s32(v107, 2);
        v167 = v134;
        v168 = vdup_lane_s32(*v105.f32, 0);
        v169 = vdup_lane_s32(*v108.f32, 0);
        v170 = vdup_lane_s32(*v104.f32, 0);
        v171 = vdup_lane_s32(*v107.f32, 0);
        v172 = &v202[2 * v134];
        v173 = &a3[2 * v134];
        v174 = &v95[2 * v134];
        v175 = &v96[2 * v134];
        v176 = &v98[2 * v134];
        v177 = &v102[2 * v134];
        do
        {
          v178 = *&v173[2 * v164];
          v179 = *&v172[2 * v164];
          v180 = vrev64_s32(v178);
          v181 = vrev64_s32(v179);
          *&v174[2 * v164] = vsub_f32(*&v174[2 * v164], vadd_f32(vmla_f32(vmul_f32(*v109.f32, v180), v168, v178), vmla_f32(vmul_f32(*v113.f32, v181), v169, v179)));
          *&v175[2 * v164] = vsub_f32(*&v175[2 * v164], vadd_f32(vmla_f32(vmul_f32(*v110.f32, v180), *v130.f32, v178), vmla_f32(vmul_f32(*v114.f32, v181), *v131.f32, v179)));
          *&v176[2 * v164] = vsub_f32(*&v176[2 * v164], vadd_f32(vmla_f32(vmul_f32(*v111.f32, v180), v170, v178), vmla_f32(vmul_f32(*v115.f32, v181), v171, v179)));
          *&v177[2 * v164] = vsub_f32(*&v177[2 * v164], vadd_f32(vmla_f32(vmul_f32(*v112.f32, v180), v165, v178), vmla_f32(vmul_f32(*v116.f32, v181), v166, v179)));
          ++v164;
        }

        while ((v167 + v164) < a1);
      }

      v99 += 4;
      v97 += 4;
      v88 += 32;
      v101 += 32;
      v89 += v91;
      v92 += v91;
      v93 += v91;
      v94 += v91;
      v95 = (v95 + v90);
      v96 = (v96 + v90);
      v98 = (v98 + v90);
      v102 = (v102 + v90);
      v87 = v211;
      a6 = v212;
    }

    while (v133 < v211);
  }

  if (v100 < v200)
  {
    v182 = v100;
    v183 = &a3[2 * v100];
    v184 = (a3 + (v34 + 8) * v100);
    v185 = 8 * a4 * v100;
    do
    {
      v186 = *&a6->f32[2 * v182];
      v187 = *&a6->f32[2 * v200 + 2 * v182];
      v188 = vmulq_lane_f32(v30, v186, 1);
      v189 = vmulq_lane_f32(v30, v187, 1);
      v190 = v182;
      if (v182 < a1 - 3)
      {
        v191 = 0;
        v192 = vdupq_lane_s32(v186, 0);
        v193 = vdupq_lane_s32(v187, 0);
        v194 = v184;
        v195 = v183;
        do
        {
          v196 = vsubq_f32(v194[1], vaddq_f32(vmlaq_f32(vmulq_f32(v188, vrev64q_s32(v195[1])), v192, v195[1]), vmlaq_f32(vmulq_f32(v189, vrev64q_s32(*(&v195[1] + v34))), v193, *(&v195[1] + v34))));
          *v194 = vsubq_f32(*v194, vaddq_f32(vmlaq_f32(vmulq_f32(v188, vrev64q_s32(*v195)), v192, *v195), vmlaq_f32(vmulq_f32(v189, vrev64q_s32(*(v195 + 8 * a4))), v193, *(v195 + 8 * a4))));
          v194[1] = v196;
          v194 += 2;
          v191 += 4;
          v195 += 2;
        }

        while (v182 + v191 + 3 < a1);
        v190 = v182 + v191;
      }

      if (v190 < a1)
      {
        v197 = vdup_lane_s32(v186, 0);
        v198 = vdup_lane_s32(v187, 0);
        v199 = &a3[2 * v190];
        do
        {
          *(v199 + v185) = vsub_f32(*(v199 + v185), vadd_f32(vmla_f32(vmul_f32(*v188.f32, vrev64_s32(*v199)), v197, *v199), vmla_f32(vmul_f32(*v189.f32, vrev64_s32(v199[a4])), v198, v199[a4])));
          ++v199;
          ++v190;
        }

        while (v190 < a1);
      }

      ++v182;
      v183 = (v183 + 8);
      v184 = (v184 + v34 + 8);
      v185 += v34;
    }

    while (v182 != v87);
  }
}

void sub_23677DD50(int a1, int a2, double *a3, uint64_t a4, uint64_t a5, float64x2_t *a6)
{
  v12 = *a3;
  v13 = &a3[2 * a4];
  v14 = v13[2];
  v15 = a3[3] * a3[3] + a3[2] * a3[2];
  *a5 = *a3;
  *(a5 + 8) = 0;
  *a3 = xmmword_23681FBD0;
  *(a5 + 16) = *(a3 + 1);
  a3[2] = 0.0;
  a3[3] = 0.0;
  *(a5 + 32) = xmmword_23681FE80;
  *(a5 + 48) = v14;
  *(a5 + 56) = 0;
  v240 = v13;
  *(v13 + 1) = xmmword_23681FBD0;
  v255[0] = 1.0 / -(v15 - v12 * v14);
  v255[1] = 0.0;
  v252 = sub_236784E88((a5 + 48), v255);
  v249 = v16;
  v254 = vnegq_f64(*(a5 + 16));
  v251 = sub_236784E88(v254.f64, v255);
  v248 = v17;
  *&v18 = sub_236784E88(a5, v255);
  v19 = vmulq_n_f64(xmmword_23681FB50, v249);
  v20 = vmulq_n_f64(xmmword_23681FB50, v248);
  v21 = vmulq_n_f64(xmmword_23681FD30, v248);
  v23 = vmulq_n_f64(xmmword_23681FB50, v22);
  v24 = a4;
  if (a2 < 6)
  {
    v49 = 2;
  }

  else
  {
    v25 = vdupq_lane_s64(v252, 0);
    v26 = vdupq_lane_s64(v251, 0);
    v27 = vdupq_lane_s64(v18, 0);
    v28 = a6 + 2;
    v29 = (a3 + 4);
    v30 = 5;
    do
    {
      v32 = *v29;
      v31 = v29[1];
      v34 = v29[2];
      v33 = v29[3];
      v35 = &v29[v24];
      v37 = v29[a4];
      v36 = v29[v24 + 1];
      v39 = v29[v24 + 2];
      v38 = v29[v24 + 3];
      v40 = vextq_s8(v33, v33, 8uLL);
      v41 = vextq_s8(v32, v32, 8uLL);
      v42 = vextq_s8(v31, v31, 8uLL);
      v43 = vextq_s8(v34, v34, 8uLL);
      v44 = vextq_s8(v38, v38, 8uLL);
      v45 = vextq_s8(v37, v37, 8uLL);
      v46 = vextq_s8(v36, v36, 8uLL);
      v47 = vextq_s8(v39, v39, 8uLL);
      *v28 = *v29;
      v28[1] = v31;
      v28[2] = v34;
      v28[3] = v33;
      v48 = &v28[a2];
      v48[2] = v39;
      v48[3] = v38;
      *v48 = v37;
      v48[1] = v36;
      *v29 = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v41), v25, v32), vmlaq_f64(vmulq_f64(v20, v45), v26, v37));
      v29[1] = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v42), v25, v31), vmlaq_f64(vmulq_f64(v20, v46), v26, v36));
      v29[2] = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v43), v25, v34), vmlaq_f64(vmulq_f64(v20, v47), v26, v39));
      v29[3] = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v40), v25, v33), vmlaq_f64(vmulq_f64(v20, v44), v26, v38));
      v35[2] = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v43), v26, v34), vmlaq_f64(vmulq_f64(v23, v47), v27, v39));
      v35[3] = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v40), v26, v33), vmlaq_f64(vmulq_f64(v23, v44), v27, v38));
      *v35 = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v41), v26, v32), vmlaq_f64(vmulq_f64(v23, v45), v27, v37));
      v35[1] = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v42), v26, v31), vmlaq_f64(vmulq_f64(v23, v46), v27, v36));
      v28 += 4;
      v30 += 4;
      v29 += 4;
    }

    while (v30 < a2);
    v49 = v30 - 3;
  }

  if (v49 < a2)
  {
    v50 = vdupq_lane_s64(v252, 0);
    v51 = vdupq_lane_s64(v251, 0);
    v52 = vdupq_lane_s64(v18, 0);
    v53 = &a6[v49];
    v54 = &a3[2 * v49];
    v55 = a2 - v49;
    do
    {
      v56 = *v54;
      v57 = v54[a4];
      v58 = vextq_s8(v56, v56, 8uLL);
      v59 = vextq_s8(v57, v57, 8uLL);
      *v53 = *v54;
      v53[a2] = v57;
      *v54 = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v58), v50, v56), vmlaq_f64(vmulq_f64(v20, v59), v51, v57));
      v54[a4] = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v58), v51, v56), vmlaq_f64(vmulq_f64(v23, v59), v52, v57));
      ++v53;
      ++v54;
      --v55;
    }

    while (v55);
    v49 = a2;
  }

  if ((v49 + 3) >= a1)
  {
    v82 = v49;
  }

  else
  {
    v60 = vdupq_lane_s64(v252, 0);
    v61 = vdupq_lane_s64(v251, 0);
    v62 = &a3[2 * v49];
    v63 = vdupq_lane_s64(v18, 0);
    do
    {
      v65 = *v62;
      v64 = v62[1];
      v67 = v62[2];
      v66 = v62[3];
      v68 = &v62[v24];
      v70 = v62[a4];
      v69 = v62[v24 + 1];
      v72 = v62[v24 + 2];
      v71 = v62[v24 + 3];
      v73 = vextq_s8(v67, v67, 8uLL);
      v74 = vextq_s8(v66, v66, 8uLL);
      v75 = vextq_s8(v65, v65, 8uLL);
      v76 = vextq_s8(v64, v64, 8uLL);
      v77 = vextq_s8(v72, v72, 8uLL);
      v78 = vextq_s8(v71, v71, 8uLL);
      v79 = vextq_s8(v70, v70, 8uLL);
      v80 = vextq_s8(v69, v69, 8uLL);
      v81 = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v75), v60, *v62), vmlaq_f64(vmulq_f64(v20, v79), v61, v70));
      v62[2] = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v73), v60, v67), vmlaq_f64(vmulq_f64(v20, v77), v61, v72));
      v62[3] = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v74), v60, v66), vmlaq_f64(vmulq_f64(v20, v78), v61, v71));
      *v62 = v81;
      v62[1] = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v76), v60, v64), vmlaq_f64(vmulq_f64(v20, v80), v61, v69));
      v62 += 4;
      v68[2] = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v73), v61, v67), vmlaq_f64(vmulq_f64(v23, v77), v63, v72));
      v68[3] = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v74), v61, v66), vmlaq_f64(vmulq_f64(v23, v78), v63, v71));
      *v68 = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v75), v61, v65), vmlaq_f64(vmulq_f64(v23, v79), v63, v70));
      v68[1] = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v76), v61, v64), vmlaq_f64(vmulq_f64(v23, v80), v63, v69));
      v82 = v49 + 4;
      v83 = v49 + 7;
      v49 += 4;
    }

    while (v83 < a1);
  }

  if (v82 < a1)
  {
    v84 = vdupq_lane_s64(v252, 0);
    v85 = vdupq_lane_s64(v251, 0);
    v86 = &a3[2 * v82];
    v87 = vdupq_lane_s64(v18, 0);
    do
    {
      v88 = *v86;
      v89 = v86[a4];
      v90 = vextq_s8(v88, v88, 8uLL);
      v91 = vextq_s8(v89, v89, 8uLL);
      *v86 = vaddq_f64(vmlaq_f64(vmulq_f64(v19, v90), v84, *v86), vmlaq_f64(vmulq_f64(v20, v91), v85, v89));
      v86[a4] = vaddq_f64(vmlaq_f64(vmulq_f64(v21, v90), v85, v88), vmlaq_f64(vmulq_f64(v23, v91), v87, v89));
      ++v86;
      ++v82;
    }

    while (v82 < a1);
  }

  v92 = a2;
  v93 = xmmword_23681FD30;
  v239 = a2;
  if (a2 < 6)
  {
    LODWORD(v106) = 2;
  }

  else
  {
    v241 = &a6[a2];
    v94 = v24 * 16 + 96;
    v95 = 32 * a4 + 96;
    v96 = a4 << 6;
    v97 = (a4 << 6) + 64;
    v98 = 48 * a4 + 96;
    v99 = (a4 << 6) + 96;
    v100 = 80 * a4 + 96;
    v101 = &a3[4 * a4];
    v102 = &a3[6 * a4];
    v103 = 9;
    v104 = &a3[8 * a4];
    v105 = 5;
    v106 = 2;
    v107 = 96;
    v108 = &a3[10 * a4];
    v242 = v92;
    v243 = a6;
    do
    {
      v109 = &a6[v106];
      v111 = v109[2];
      v110 = v109[3];
      v112 = *v109;
      v113 = v109[1];
      v114 = &v241[v106];
      v115 = *v114;
      v116 = v114[1];
      v117 = vmulq_laneq_f64(v93, *v109, 1);
      v118 = vmulq_laneq_f64(v93, *v114, 1);
      v119 = &a3[2 * v106];
      v121 = *(v119 + 4);
      v120 = *(v119 + 6);
      v122 = *(v119 + 2);
      v123 = &v119[2 * a4];
      v124 = *(v123 + 4);
      v125 = *(v123 + 6);
      v126 = *(v123 + 2);
      v127 = vextq_s8(v122, v122, 8uLL);
      v128 = vextq_s8(v121, v121, 8uLL);
      v129 = vextq_s8(v120, v120, 8uLL);
      v130 = vextq_s8(v126, v126, 8uLL);
      v131 = vextq_s8(v124, v124, 8uLL);
      v132 = vextq_s8(v125, v125, 8uLL);
      v133 = vaddq_f64(vmlaq_n_f64(vmulq_f64(v117, vextq_s8(*v119, *v119, 8uLL)), *v119, v112.f64[0]), vmlaq_n_f64(vmulq_f64(v118, vextq_s8(*v123, *v123, 8uLL)), *v123, v114->f64[0]));
      v134 = &v119[2 * v106 * a4];
      v135 = vsubq_f64(*v134, v133);
      v136 = vsubq_f64(v134[1], vaddq_f64(vmlaq_n_f64(vmulq_f64(v117, v127), v122, v112.f64[0]), vmlaq_n_f64(vmulq_f64(v118, v130), v126, v114->f64[0])));
      v137 = vsubq_f64(v134[3], vaddq_f64(vmlaq_n_f64(vmulq_f64(v117, v129), v120, v112.f64[0]), vmlaq_n_f64(vmulq_f64(v118, v132), v125, v114->f64[0])));
      v138 = v114[2];
      v139 = v114[3];
      v134[2] = vsubq_f64(v134[2], vaddq_f64(vmlaq_n_f64(vmulq_f64(v117, v128), v121, v112.f64[0]), vmlaq_n_f64(vmulq_f64(v118, v131), v124, v114->f64[0])));
      v134[3] = v137;
      v140 = vmulq_laneq_f64(v93, v113, 1);
      *v134 = v135;
      v134[1] = v136;
      v141 = vmulq_laneq_f64(v93, v116, 1);
      v142 = &v119[2 * (v106 | 1) * a4];
      v143 = vsubq_f64(v142[1], vaddq_f64(vmlaq_n_f64(vmulq_f64(v140, v127), v122, v113.f64[0]), vmlaq_n_f64(vmulq_f64(v141, v130), v126, v116.f64[0])));
      v144 = vsubq_f64(v142[3], vaddq_f64(vmlaq_n_f64(vmulq_f64(v140, v129), v120, v113.f64[0]), vmlaq_n_f64(vmulq_f64(v141, v132), v125, v116.f64[0])));
      v145 = vsubq_f64(v142[2], vaddq_f64(vmlaq_n_f64(vmulq_f64(v140, v128), v121, v113.f64[0]), vmlaq_n_f64(vmulq_f64(v141, v131), v124, v116.f64[0])));
      v142[1] = v143;
      v142[2] = v145;
      v146 = vmulq_laneq_f64(v93, v111, 1);
      v142[3] = v144;
      v147 = vmulq_laneq_f64(v93, v138, 1);
      v148 = vmlaq_n_f64(vmulq_f64(v147, v131), v124, v138.f64[0]);
      v149 = &v119[2 * (v106 + 2) * a4];
      v150 = vsubq_f64(v149[3], vaddq_f64(vmlaq_n_f64(vmulq_f64(v146, v129), v120, v111.f64[0]), vmlaq_n_f64(vmulq_f64(v147, v132), v125, v138.f64[0])));
      v149[2] = vsubq_f64(v149[2], vaddq_f64(vmlaq_n_f64(vmulq_f64(v146, v128), v121, v111.f64[0]), v148));
      v149[3] = v150;
      v151 = vmulq_laneq_f64(v93, v110, 1);
      v152 = vmulq_laneq_f64(v93, v139, 1);
      *&v119[2 * v105 * a4 + 6] = vsubq_f64(*&v119[2 * v105 * a4 + 6], vaddq_f64(vmlaq_n_f64(vmulq_f64(v151, v129), v120, v110.f64[0]), vmlaq_n_f64(vmulq_f64(v152, v132), v125, v139.f64[0])));
      v153 = vdupq_lane_s64(*&v112.f64[0], 0);
      v154 = vdupq_lane_s64(*&v115.f64[0], 0);
      v155 = vdupq_lane_s64(*&v113.f64[0], 0);
      v156 = vdupq_lane_s64(*&v116.f64[0], 0);
      v157 = vdupq_lane_s64(*&v110.f64[0], 0);
      v158 = vdupq_lane_s64(*&v139.f64[0], 0);
      v159 = v106 + 7;
      v106 += 4;
      v160 = vdupq_lane_s64(*&v111.f64[0], 0);
      v161 = vdupq_lane_s64(*&v138.f64[0], 0);
      v162 = v106;
      if (v159 < a1)
      {
        v163 = v100;
        v164 = v99;
        v165 = v98;
        v166 = v95;
        v167 = v107;
        v168 = v94;
        v169 = v103;
        v170 = v117;
        v250 = v155;
        v171 = v118;
        v246 = v157;
        v247 = v156;
        v172 = v140;
        v173 = v141;
        v253 = v161;
        v174 = v146;
        v244 = v158;
        v245 = v152;
        do
        {
          v175 = *(a3 + v167 + 32);
          v176 = *(a3 + v167 + 48);
          v177 = *(a3 + v167);
          v178 = *(a3 + v167 + 16);
          v180 = *(a3 + v168 + 32);
          v179 = *(a3 + v168 + 48);
          v181 = *(a3 + v168);
          v182 = *(a3 + v168 + 16);
          v183 = vextq_s8(v178, v178, 8uLL);
          v184 = vextq_s8(v177, v177, 8uLL);
          v185 = vextq_s8(v176, v176, 8uLL);
          v186 = vextq_s8(v175, v175, 8uLL);
          v187 = vextq_s8(v182, v182, 8uLL);
          v188 = vextq_s8(v181, v181, 8uLL);
          v189 = vextq_s8(v179, v179, 8uLL);
          v190 = vextq_s8(v180, v180, 8uLL);
          v191 = (a3 + v166);
          v192 = vsubq_f64(*(a3 + v166 + 16), vaddq_f64(vmlaq_f64(vmulq_f64(v170, v183), v153, v178), vmlaq_f64(vmulq_f64(v171, v187), v154, v182)));
          v193 = vsubq_f64(*(a3 + v166), vaddq_f64(vmlaq_f64(vmulq_f64(v170, v184), v153, v177), vmlaq_f64(vmulq_f64(v171, v188), v154, v181)));
          v194 = vsubq_f64(*(a3 + v166 + 48), vaddq_f64(vmlaq_f64(vmulq_f64(v170, v185), v153, v176), vmlaq_f64(vmulq_f64(v171, v189), v154, v179)));
          v191[2] = vsubq_f64(*(a3 + v166 + 32), vaddq_f64(vmlaq_f64(vmulq_f64(v170, v186), v153, v175), vmlaq_f64(vmulq_f64(v171, v190), v154, v180)));
          v191[3] = v194;
          *v191 = v193;
          v191[1] = v192;
          v195 = (a3 + v165);
          v196 = vsubq_f64(*(a3 + v165 + 32), vaddq_f64(vmlaq_f64(vmulq_f64(v172, v186), v250, v175), vmlaq_f64(vmulq_f64(v173, v190), v247, v180)));
          v197 = vsubq_f64(*(a3 + v165 + 16), vaddq_f64(vmlaq_f64(vmulq_f64(v172, v183), v250, v178), vmlaq_f64(vmulq_f64(v173, v187), v247, v182)));
          v198 = vsubq_f64(*(a3 + v165 + 48), vaddq_f64(vmlaq_f64(vmulq_f64(v172, v185), v250, v176), vmlaq_f64(vmulq_f64(v173, v189), v247, v179)));
          *v195 = vsubq_f64(*(a3 + v165), vaddq_f64(vmlaq_f64(vmulq_f64(v172, v184), v250, v177), vmlaq_f64(vmulq_f64(v173, v188), v247, v181)));
          v195[1] = v197;
          v195[2] = v196;
          v195[3] = v198;
          v199 = (a3 + v164);
          v200 = vsubq_f64(*(a3 + v164 + 32), vaddq_f64(vmlaq_f64(vmulq_f64(v174, v186), v160, v175), vmlaq_f64(vmulq_f64(v147, v190), v253, v180)));
          v201 = vsubq_f64(*(a3 + v164 + 16), vaddq_f64(vmlaq_f64(vmulq_f64(v174, v183), v160, v178), vmlaq_f64(vmulq_f64(v147, v187), v253, v182)));
          v202 = vsubq_f64(*(a3 + v164 + 48), vaddq_f64(vmlaq_f64(vmulq_f64(v174, v185), v160, v176), vmlaq_f64(vmulq_f64(v147, v189), v253, v179)));
          *v199 = vsubq_f64(*(a3 + v164), vaddq_f64(vmlaq_f64(vmulq_f64(v174, v184), v160, v177), vmlaq_f64(vmulq_f64(v147, v188), v253, v181)));
          v199[1] = v201;
          v203 = vmlaq_f64(vmulq_f64(v151, v184), v246, v177);
          v204 = vmlaq_f64(vmulq_f64(v151, v185), v246, v176);
          v158 = v244;
          v152 = v245;
          v199[2] = v200;
          v199[3] = v202;
          v205 = (a3 + v163);
          v206 = vsubq_f64(*(a3 + v163 + 32), vaddq_f64(vmlaq_f64(vmulq_f64(v151, v186), v246, v175), vmlaq_f64(vmulq_f64(v245, v190), v244, v180)));
          v207 = vsubq_f64(*(a3 + v163 + 16), vaddq_f64(vmlaq_f64(vmulq_f64(v151, v183), v246, v178), vmlaq_f64(vmulq_f64(v245, v187), v244, v182)));
          v208 = vsubq_f64(*(a3 + v163 + 48), vaddq_f64(v204, vmlaq_f64(vmulq_f64(v245, v189), v244, v179)));
          *v205 = vsubq_f64(*(a3 + v163), vaddq_f64(v203, vmlaq_f64(vmulq_f64(v245, v188), v244, v181)));
          v205[1] = v207;
          v205[2] = v206;
          v205[3] = v208;
          v169 += 4;
          v168 += 64;
          v167 += 64;
          v166 += 64;
          v165 += 64;
          v164 += 64;
          v163 += 64;
        }

        while (v169 < a1);
        v162 = v169 - 3;
        v93 = xmmword_23681FD30;
        v117 = v170;
        v118 = v171;
        v140 = v172;
        v141 = v173;
        v146 = v174;
        v155 = v250;
        v157 = v246;
        v156 = v247;
        v161 = v253;
      }

      if (v162 < a1)
      {
        v209 = 0;
        v210 = v162;
        v211 = &v240[2 * v162];
        v212 = &a3[2 * v162];
        v213 = &v101[2 * v162];
        v214 = &v102[2 * v162];
        v215 = &v104[2 * v162];
        v216 = &v108[2 * v162];
        do
        {
          v217 = *&v212[2 * v209];
          v218 = *&v211[2 * v209];
          v219 = vextq_s8(v217, v217, 8uLL);
          v220 = vextq_s8(v218, v218, 8uLL);
          *&v213[2 * v209] = vsubq_f64(*&v213[2 * v209], vaddq_f64(vmlaq_f64(vmulq_f64(v117, v219), v153, v217), vmlaq_f64(vmulq_f64(v118, v220), v154, v218)));
          *&v214[2 * v209] = vsubq_f64(*&v214[2 * v209], vaddq_f64(vmlaq_f64(vmulq_f64(v140, v219), v155, v217), vmlaq_f64(vmulq_f64(v141, v220), v156, v218)));
          *&v215[2 * v209] = vsubq_f64(*&v215[2 * v209], vaddq_f64(vmlaq_f64(vmulq_f64(v146, v219), v160, v217), vmlaq_f64(vmulq_f64(v147, v220), v161, v218)));
          *&v216[2 * v209] = vsubq_f64(*&v216[2 * v209], vaddq_f64(vmlaq_f64(vmulq_f64(v151, v219), v157, v217), vmlaq_f64(vmulq_f64(v152, v220), v158, v218)));
          ++v209;
        }

        while ((v210 + v209) < a1);
      }

      v105 += 4;
      v103 += 4;
      v94 += 64;
      v107 += 64;
      v95 += v97;
      v98 += v97;
      v99 += v97;
      v100 += v97;
      v101 = (v101 + v96);
      v102 = (v102 + v96);
      v104 = (v104 + v96);
      v108 = (v108 + v96);
      v92 = v242;
      a6 = v243;
    }

    while (v159 < v242);
  }

  if (v106 < v239)
  {
    v221 = v106;
    v222 = &a3[2 * v106];
    v223 = (a3 + (v24 * 16 + 16) * v106);
    v224 = 16 * a4 * v106;
    do
    {
      v225 = a6[v221];
      v226 = a6[v239 + v221];
      v227 = vmulq_laneq_f64(v93, v225, 1);
      v228 = vmulq_laneq_f64(v93, v226, 1);
      v229 = vdupq_lane_s64(*&v225.f64[0], 0);
      v230 = vdupq_lane_s64(*&v226.f64[0], 0);
      v231 = v221;
      if (v221 < a1 - 3)
      {
        v232 = 0;
        v233 = v223;
        v234 = v222;
        do
        {
          v235 = vsubq_f64(v233[1], vaddq_f64(vmlaq_f64(vmulq_f64(v227, vextq_s8(v234[1], v234[1], 8uLL)), v229, v234[1]), vmlaq_f64(vmulq_f64(v228, vextq_s8(v234[v24 + 1], v234[v24 + 1], 8uLL)), v230, v234[v24 + 1])));
          v236 = vsubq_f64(*v233, vaddq_f64(vmlaq_f64(vmulq_f64(v227, vextq_s8(*v234, *v234, 8uLL)), v229, *v234), vmlaq_f64(vmulq_f64(v228, vextq_s8(v234[a4], v234[a4], 8uLL)), v230, v234[a4])));
          v237 = vsubq_f64(v233[3], vaddq_f64(vmlaq_f64(vmulq_f64(v227, vextq_s8(v234[3], v234[3], 8uLL)), v229, v234[3]), vmlaq_f64(vmulq_f64(v228, vextq_s8(v234[v24 + 3], v234[v24 + 3], 8uLL)), v230, v234[v24 + 3])));
          v233[2] = vsubq_f64(v233[2], vaddq_f64(vmlaq_f64(vmulq_f64(v227, vextq_s8(v234[2], v234[2], 8uLL)), v229, v234[2]), vmlaq_f64(vmulq_f64(v228, vextq_s8(v234[v24 + 2], v234[v24 + 2], 8uLL)), v230, v234[v24 + 2])));
          v233[3] = v237;
          *v233 = v236;
          v233[1] = v235;
          v233 += 4;
          v232 += 4;
          v234 += 4;
        }

        while (v221 + v232 + 3 < a1);
        v231 = v221 + v232;
      }

      if (v231 < a1)
      {
        v238 = &a3[2 * v231];
        do
        {
          *(v238 + v224) = vsubq_f64(*(v238 + v224), vaddq_f64(vmlaq_f64(vmulq_f64(v227, vextq_s8(*v238, *v238, 8uLL)), v229, *v238), vmlaq_f64(vmulq_f64(v228, vextq_s8(v238[a4], v238[a4], 8uLL)), v230, v238[a4])));
          ++v238;
          ++v231;
        }

        while (v231 < a1);
      }

      ++v221;
      ++v222;
      v223 = (v223 + v24 * 16 + 16);
      v224 += v24 * 16;
    }

    while (v221 != v92);
  }
}

void sub_23677E9C0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v154 = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    v8 = a3;
    v9 = a1;
    v10 = 0;
    v151 = a7 + 8;
    v11 = a1;
    v12 = 4 * a6;
    v146 = 4 * a4;
    v147 = a7;
    v13 = a2;
    v14 = a1;
    v139 = a2;
    v145 = a2;
    v143 = a6;
    do
    {
      v15 = v10;
      if (a2 - v10 >= 16)
      {
        v16 = 16;
      }

      else
      {
        v16 = (a2 - v10);
      }

      v17 = v10 + v16 - 1;
      if (v17 + 1 < v13)
      {
        v18 = *(v151 + 8 * v17);
        v16 = v16;
      }

      v152 = v10;
      if (v10 <= 0)
      {
        v10 = (v16 + v10);
      }

      else
      {
        v19 = 0;
        v142 = v10;
        v141 = v10 + 3;
        v20 = v16 + v10;
        v140 = &v153[-v10];
        v149 = v8 + 4 * v10;
        v150 = (v16 + v10);
        do
        {
          if (v15 - v19 >= 16)
          {
            v21 = 16;
          }

          else
          {
            v21 = v15 - v19;
          }

          v22 = v19 + v21 - 1;
          if (v22 + 1 < v13)
          {
            v23 = *(v151 + 8 * v22);
          }

          v24 = v16;
          sub_236784EE4(v19, v15, v21, v16, v149 + 4 * v19 * a4, a4, a7 + 8 * v19, v153, 17);
          v25 = v15;
          v16 = v24;
          v116 = v24 < 4;
          v10 = v150;
          a6 = v143;
          v9 = a1;
          if (!v116)
          {
            v26 = v21 + v19;
            v27 = v153;
            v28 = v142;
            LODWORD(v29) = v141;
            do
            {
              if (a1 < 8)
              {
                v55 = 0;
              }

              else
              {
                v30 = 0;
                v31 = (a5 + v12 * v19);
                do
                {
                  if (v21 < 1)
                  {
                    v41 = 0uLL;
                    v42 = 0uLL;
                    v39 = 0uLL;
                    v40 = 0uLL;
                    v37 = 0uLL;
                    v38 = 0uLL;
                    v32 = 0uLL;
                    v34 = 0uLL;
                  }

                  else
                  {
                    v32 = 0uLL;
                    v33 = v31;
                    v34 = 0uLL;
                    v35 = v27;
                    v36 = v19;
                    v37 = 0uLL;
                    v38 = 0uLL;
                    v39 = 0uLL;
                    v40 = 0uLL;
                    v41 = 0uLL;
                    v42 = 0uLL;
                    do
                    {
                      v43 = *v35;
                      v35 = (v35 + 68);
                      v44 = v33[1];
                      v34 = vmlaq_n_f32(v34, v44, v43.f32[0]);
                      v32 = vmlaq_n_f32(v32, *v33, v43.f32[0]);
                      v38 = vmlaq_lane_f32(v38, v44, *v43.f32, 1);
                      v37 = vmlaq_lane_f32(v37, *v33, *v43.f32, 1);
                      v40 = vmlaq_laneq_f32(v40, v44, v43, 2);
                      v39 = vmlaq_laneq_f32(v39, *v33, v43, 2);
                      v42 = vmlaq_laneq_f32(v42, v44, v43, 3);
                      v41 = vmlaq_laneq_f32(v41, *v33, v43, 3);
                      ++v36;
                      v33 = (v33 + v12);
                    }

                    while (v36 < v26);
                  }

                  v45 = (a5 + 4 * v28 * v143 + 4 * v30);
                  v46 = vsubq_f32(v45[1], v34);
                  *v45 = vsubq_f32(*v45, v32);
                  v45[1] = v46;
                  v47 = (a5 + 4 * (v143 + v28 * v143) + 4 * v30);
                  v48 = vsubq_f32(v47[1], v38);
                  *v47 = vsubq_f32(*v47, v37);
                  v47[1] = v48;
                  v49 = (a5 + 4 * (v28 + 2) * v143 + 4 * v30);
                  v50 = vsubq_f32(v49[1], v40);
                  *v49 = vsubq_f32(*v49, v39);
                  v49[1] = v50;
                  v51 = (a5 + 4 * v29 * v143 + 4 * v30);
                  v52 = vsubq_f32(v51[1], v42);
                  *v51 = vsubq_f32(*v51, v41);
                  v51[1] = v52;
                  v53 = v30 + 8;
                  v54 = v30 + 15;
                  v31 += 2;
                  v30 += 8;
                }

                while (v54 < v11);
                v55 = v53;
              }

              if (v55 < a1)
              {
                v56 = a5 + 4 * v29 * v143;
                v57 = a5 + v12 * v19 + 4 * v55;
                do
                {
                  v58 = 0uLL;
                  if (v21 >= 1)
                  {
                    v59 = v57;
                    v60 = v27;
                    v61 = v19;
                    do
                    {
                      v62 = *v60;
                      v60 = (v60 + 68);
                      v58 = vmlaq_n_f32(v58, v62, *v59);
                      ++v61;
                      v59 = (v59 + v12);
                    }

                    while (v61 < v26);
                  }

                  *(a5 + 4 * v28 * v143 + 4 * v55) = *(a5 + 4 * v28 * v143 + 4 * v55) - v58.f32[0];
                  *(a5 + 4 * (v143 + v28 * v143) + 4 * v55) = *(a5 + 4 * (v143 + v28 * v143) + 4 * v55) - v58.f32[1];
                  *(a5 + 4 * (v28 + 2) * v143 + 4 * v55) = *(a5 + 4 * (v28 + 2) * v143 + 4 * v55) - v58.f32[2];
                  *(v56 + 4 * v55) = *(v56 + 4 * v55) - v58.f32[3];
                  ++v55;
                  v57 += 4;
                }

                while (v55 != v14);
              }

              v25 = v28 + 4;
              v29 = v28 + 7;
              v27 += 4;
              v28 += 4;
            }

            while (v29 < v20);
          }

          v63 = v21 + v19;
          a7 = v147;
          v13 = v145;
          if (v25 < v150)
          {
            v64 = v25;
            v65 = &v140[v25];
            do
            {
              if (a1 < 8)
              {
                v78 = 0;
              }

              else
              {
                v66 = 0;
                v67 = (a5 + v12 * v19);
                do
                {
                  v68 = 0uLL;
                  if (v21 < 1)
                  {
                    v72 = 0uLL;
                  }

                  else
                  {
                    v69 = v67;
                    v70 = v65;
                    v71 = v19;
                    v72 = 0uLL;
                    do
                    {
                      v73 = *v70;
                      v70 += 17;
                      v72 = vmlaq_n_f32(v72, v69[1], v73);
                      v68 = vmlaq_n_f32(v68, *v69, v73);
                      ++v71;
                      v69 = (v69 + v12);
                    }

                    while (v71 < v63);
                  }

                  v74 = (a5 + 4 * v64 * v143 + 4 * v66);
                  v75 = vsubq_f32(v74[1], v72);
                  *v74 = vsubq_f32(*v74, v68);
                  v74[1] = v75;
                  v76 = v66 + 8;
                  v77 = v66 + 15;
                  v67 += 2;
                  v66 += 8;
                }

                while (v77 < v11);
                v78 = v76;
              }

              if (v78 < a1)
              {
                v79 = a5 + v12 * v19 + 4 * v78;
                do
                {
                  if (v21 < 1)
                  {
                    v81 = 0.0;
                  }

                  else
                  {
                    v80 = 0;
                    v81 = 0.0;
                    v82 = v79;
                    v83 = v19;
                    do
                    {
                      v81 = v81 + (*v82 * v65[v80]);
                      ++v83;
                      v80 += 17;
                      v82 = (v82 + v12);
                    }

                    while (v83 < v63);
                  }

                  *(a5 + 4 * v64 * v143 + 4 * v78) = *(a5 + 4 * v64 * v143 + 4 * v78) - v81;
                  ++v78;
                  v79 += 4;
                }

                while (v78 != v14);
              }

              ++v64;
              ++v65;
            }

            while (v64 != v20);
          }

          v19 = (v21 + v19);
          v15 = v152;
        }

        while (v63 < v152);
        v8 = a3;
      }

      if (v16 >= 1)
      {
        v84 = v10;
        v85 = v10 - 15;
        v86 = &v153[-v152];
        v87 = -18 * v152;
        v88 = v152;
        v89 = v10;
        do
        {
          v90 = v88;
          v91 = v88 + 1;
          v92 = 8 * v88;
          if (v91 < v13)
          {
            v93 = *(v151 + v92);
          }

          if (v9 < 8)
          {
            v106 = 0;
          }

          else
          {
            v94 = 0;
            v95 = (a5 + v12 * v152);
            do
            {
              v96 = 0uLL;
              v97 = 0uLL;
              if (v90 > v152)
              {
                v98 = v90 - v152;
                v99 = v95;
                v100 = &v86[v90];
                do
                {
                  v101 = *v100;
                  v100 += 17;
                  v97 = vmlaq_n_f32(v97, v99[1], v101);
                  v96 = vmlaq_n_f32(v96, *v99, v101);
                  v99 = (v99 + v12);
                  --v98;
                }

                while (v98);
              }

              v102 = (a5 + 4 * v90 * a6 + 4 * v94);
              v103 = vsubq_f32(v102[1], v97);
              *v102 = vsubq_f32(*v102, v96);
              v102[1] = v103;
              v104 = v94 + 8;
              v105 = v94 + 15;
              v95 += 2;
              v94 += 8;
            }

            while (v105 < v11);
            v106 = v104;
          }

          if (v106 < v9)
          {
            v107 = a5 + v12 * v152 + 4 * v106;
            do
            {
              v108 = 0.0;
              if (v90 > v152)
              {
                v109 = v90 - v152;
                v110 = v107;
                v111 = &v86[v90];
                do
                {
                  v112 = *v111;
                  v111 += 17;
                  v108 = v108 + (*v110 * v112);
                  v110 = (v110 + v12);
                  --v109;
                }

                while (v109);
              }

              *(a5 + 4 * v90 * a6 + 4 * v106) = *(a5 + 4 * v90 * a6 + 4 * v106) - v108;
              ++v106;
              v107 += 4;
            }

            while (v106 != v14);
          }

          if (v91 < v13)
          {
            v113 = *(v151 + v92);
          }

          v114 = *(a7 + v92);
          v115 = fabsf(v114);
          v116 = v115 >= COERCE_FLOAT(0x200000) && v115 <= 8.5071e37;
          v10 = v89;
          if (v116)
          {
            v119 = 1.0 / v114;
            if (v9 < 8)
            {
              v120 = 0;
            }

            else
            {
              v120 = 0;
              v121 = (a5 + 4 * v90 * a6);
              do
              {
                v122 = vmulq_n_f32(v121[1], v119);
                *v121 = vmulq_n_f32(*v121, v119);
                v121[1] = v122;
                v121 += 2;
                v123 = v120 + 15;
                v120 += 8;
              }

              while (v123 < v11);
              v120 = v120;
            }

            if (v120 < v9)
            {
              v124 = (a5 + v12 * v90 + 4 * v120);
              v125 = v14 - v120;
              do
              {
                *v124 = v119 * *v124;
                ++v124;
                --v125;
              }

              while (v125);
            }
          }

          else if (v9 >= 1)
          {
            v117 = (a5 + 4 * v90 * a6);
            v118 = v14;
            do
            {
              *v117 = *v117 / *(a7 + 8 * v90);
              ++v117;
              --v118;
            }

            while (v118);
          }

          v126 = *(a7 + 8 * v90);
          if (fabsf(v126) == INFINITY)
          {
            v126 = 0.0;
          }

          v88 = v90 + 1;
          v127 = v90 + 1;
          if (v90 + 8 < v89)
          {
            v128 = v88 - 8;
            v129 = (v8 + v146 * v90 + 4 * v88);
            v130 = &v153[17 * v90 + v87 + v88];
            v127 = v90 + 1;
            do
            {
              v132 = *v129;
              v131 = v129[1];
              v129 += 2;
              v128 += 8;
              *v130 = vmulq_n_f32(v132, v126);
              v130[1] = vmulq_n_f32(v131, v126);
              v130 += 2;
              v127 += 8;
            }

            while (v128 < v85);
          }

          if (v127 < v89)
          {
            v133 = (v8 + v146 * v90 + 4 * v127);
            v134 = &v153[17 * v90 + v87 + v127];
            v135 = v84 - v127;
            do
            {
              v136 = *v133++;
              *v134++ = v126 * v136;
              --v135;
            }

            while (v135);
          }
        }

        while (v88 < v89);
      }

      a2 = v139;
    }

    while (v10 < v139);
  }

  v137 = *MEMORY[0x277D85DE8];
}

void sub_23677F62C(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v190[289] = *MEMORY[0x277D85DE8];
  if (a2 >= 1)
  {
    v8 = a1;
    v9 = 0;
    v187 = a6;
    v188 = a7 + 16;
    v10 = a1;
    v11 = 8 * a6;
    v180 = 8 * a4;
    v181 = a7;
    v12 = a2;
    v13 = a1;
    v174 = a2;
    v179 = a2;
    do
    {
      v14 = v9;
      if (a2 - v9 >= 16)
      {
        v15 = 16;
      }

      else
      {
        v15 = a2 - v9;
      }

      v16 = v9 + v15 - 1;
      if (v16 + 1 < v12)
      {
        v17 = *(v188 + 16 * v16);
      }

      if (v9 <= 0)
      {
        v9 = (v15 + v9);
      }

      else
      {
        v18 = 0;
        v177 = v9;
        v186 = v15;
        v176 = v9 + 3;
        v19 = v15 + v9;
        v175 = &v190[-v9];
        v183 = a3 + 8 * v9;
        v184 = (v15 + v9);
        v189 = v9;
        do
        {
          if (v14 - v18 >= 16)
          {
            v20 = 16;
          }

          else
          {
            v20 = v14 - v18;
          }

          v21 = v18 + v20 - 1;
          if (v21 + 1 < v12)
          {
            v22 = *(v188 + 16 * v21);
          }

          sub_2367850FC(v18, v189, v20, v186, v183 + 8 * v18 * a4, a4, a7 + 16 * v18, v190, 17);
          v23 = v189;
          v9 = v184;
          v8 = a1;
          if (v186 >= 4)
          {
            v24 = v20 + v18;
            v25 = v190;
            v26 = v177;
            LODWORD(v27) = v176;
            do
            {
              if (a1 < 8)
              {
                v71 = 0;
              }

              else
              {
                v28 = 0;
                v29 = (a5 + v11 * v18);
                do
                {
                  if (v20 < 1)
                  {
                    v45 = 0uLL;
                    v46 = 0uLL;
                    v47 = 0uLL;
                    v48 = 0uLL;
                    v41 = 0uLL;
                    v42 = 0uLL;
                    v43 = 0uLL;
                    v44 = 0uLL;
                    v37 = 0uLL;
                    v38 = 0uLL;
                    v39 = 0uLL;
                    v40 = 0uLL;
                    v30 = 0uLL;
                    v32 = 0uLL;
                    v34 = 0uLL;
                    v36 = 0uLL;
                  }

                  else
                  {
                    v30 = 0uLL;
                    v31 = v29;
                    v32 = 0uLL;
                    v33 = v25;
                    v34 = 0uLL;
                    v35 = v18;
                    v36 = 0uLL;
                    v37 = 0uLL;
                    v38 = 0uLL;
                    v39 = 0uLL;
                    v40 = 0uLL;
                    v41 = 0uLL;
                    v42 = 0uLL;
                    v43 = 0uLL;
                    v44 = 0uLL;
                    v45 = 0uLL;
                    v46 = 0uLL;
                    v47 = 0uLL;
                    v48 = 0uLL;
                    do
                    {
                      v50 = v31[2];
                      v49 = v31[3];
                      v51 = v31[1];
                      v52 = v33[1];
                      v32 = vmlaq_n_f64(v32, v51, v33->f64[0]);
                      v30 = vmlaq_n_f64(v30, *v31, v33->f64[0]);
                      v34 = vmlaq_n_f64(v34, v50, v33->f64[0]);
                      v36 = vmlaq_n_f64(v36, v49, v33->f64[0]);
                      v38 = vmlaq_laneq_f64(v38, v51, *v33, 1);
                      v37 = vmlaq_laneq_f64(v37, *v31, *v33, 1);
                      v39 = vmlaq_laneq_f64(v39, v50, *v33, 1);
                      v40 = vmlaq_laneq_f64(v40, v49, *v33, 1);
                      v42 = vmlaq_n_f64(v42, v51, v52.f64[0]);
                      v41 = vmlaq_n_f64(v41, *v31, v52.f64[0]);
                      v43 = vmlaq_n_f64(v43, v50, v52.f64[0]);
                      v44 = vmlaq_n_f64(v44, v49, v52.f64[0]);
                      v46 = vmlaq_laneq_f64(v46, v51, v52, 1);
                      v45 = vmlaq_laneq_f64(v45, *v31, v52, 1);
                      ++v35;
                      v47 = vmlaq_laneq_f64(v47, v50, v52, 1);
                      v33 = (v33 + 136);
                      v31 = (v31 + v11);
                      v48 = vmlaq_laneq_f64(v48, v49, v52, 1);
                    }

                    while (v35 < v24);
                  }

                  v53 = (a5 + 8 * v26 * v187 + 8 * v28);
                  v54 = vsubq_f64(v53[3], v36);
                  v55 = vsubq_f64(v53[1], v32);
                  v56 = vsubq_f64(v53[2], v34);
                  *v53 = vsubq_f64(*v53, v30);
                  v53[1] = v55;
                  v53[2] = v56;
                  v53[3] = v54;
                  v57 = (a5 + 8 * (v187 + v26 * v187) + 8 * v28);
                  v58 = vsubq_f64(v57[2], v39);
                  v59 = vsubq_f64(v57[1], v38);
                  v60 = vsubq_f64(v57[3], v40);
                  *v57 = vsubq_f64(*v57, v37);
                  v57[1] = v59;
                  v57[2] = v58;
                  v57[3] = v60;
                  v61 = (a5 + 8 * (v26 + 2) * v187 + 8 * v28);
                  v62 = vsubq_f64(v61[2], v43);
                  v63 = vsubq_f64(v61[1], v42);
                  v64 = vsubq_f64(v61[3], v44);
                  *v61 = vsubq_f64(*v61, v41);
                  v61[1] = v63;
                  v61[2] = v62;
                  v61[3] = v64;
                  v65 = (a5 + 8 * v27 * v187 + 8 * v28);
                  v66 = vsubq_f64(v65[2], v47);
                  v67 = vsubq_f64(v65[1], v46);
                  v68 = vsubq_f64(v65[3], v48);
                  *v65 = vsubq_f64(*v65, v45);
                  v65[1] = v67;
                  v65[2] = v66;
                  v65[3] = v68;
                  v69 = v28 + 8;
                  v70 = v28 + 15;
                  v29 += 4;
                  v28 += 8;
                }

                while (v70 < v10);
                v71 = v69;
              }

              if (v71 < a1)
              {
                v72 = a5 + 8 * v27 * v187;
                v73 = a5 + v11 * v18 + 8 * v71;
                do
                {
                  if (v20 < 1)
                  {
                    _D0 = 0.0;
                    v78 = 0.0;
                    _D3 = 0.0;
                    v74 = 0.0;
                  }

                  else
                  {
                    v74 = 0.0;
                    v75 = v73;
                    v76 = v25;
                    v77 = v18;
                    v78 = 0.0;
                    do
                    {
                      _D4 = *v75;
                      _Q6 = *v76;
                      _Q5 = v76[1];
                      v74 = v74 + *v75 * v76->f64[0];
                      __asm { FMLA            D3, D4, V6.D[1] }

                      v78 = v78 + *v75 * _Q5.f64[0];
                      __asm { FMLA            D0, D4, V5.D[1] }

                      ++v77;
                      v76 = (v76 + 136);
                      v75 = (v75 + v11);
                    }

                    while (v77 < v24);
                  }

                  *(a5 + 8 * v26 * v187 + 8 * v71) = *(a5 + 8 * v26 * v187 + 8 * v71) - v74;
                  *(a5 + 8 * (v187 + v26 * v187) + 8 * v71) = *(a5 + 8 * (v187 + v26 * v187) + 8 * v71) - _D3;
                  *(a5 + 8 * (v26 + 2) * v187 + 8 * v71) = *(a5 + 8 * (v26 + 2) * v187 + 8 * v71) - v78;
                  *(v72 + 8 * v71) = *(v72 + 8 * v71) - _D0;
                  ++v71;
                  v73 += 8;
                }

                while (v71 != v13);
              }

              v23 = v26 + 4;
              v27 = v26 + 7;
              v25 += 2;
              v26 += 4;
            }

            while (v27 < v19);
          }

          v88 = v20 + v18;
          a7 = v181;
          v12 = v179;
          v14 = v189;
          a6 = v187;
          if (v23 < v184)
          {
            v89 = v23;
            v90 = &v175[v23];
            do
            {
              if (a1 < 8)
              {
                v107 = 0;
              }

              else
              {
                v91 = 0;
                v92 = (a5 + v11 * v18);
                do
                {
                  v93 = 0uLL;
                  if (v20 < 1)
                  {
                    v97 = 0uLL;
                    v98 = 0uLL;
                    v99 = 0uLL;
                  }

                  else
                  {
                    v94 = v92;
                    v95 = v90;
                    v96 = v18;
                    v97 = 0uLL;
                    v98 = 0uLL;
                    v99 = 0uLL;
                    do
                    {
                      v100 = *v95;
                      v95 += 17;
                      v98 = vmlaq_n_f64(v98, v94[2], v100);
                      v97 = vmlaq_n_f64(v97, v94[1], v100);
                      v93 = vmlaq_n_f64(v93, *v94, v100);
                      v99 = vmlaq_n_f64(v99, v94[3], v100);
                      ++v96;
                      v94 = (v94 + v11);
                    }

                    while (v96 < v88);
                  }

                  v101 = (a5 + 8 * v89 * v187 + 8 * v91);
                  v102 = vsubq_f64(v101[3], v99);
                  v103 = vsubq_f64(v101[1], v97);
                  v104 = vsubq_f64(v101[2], v98);
                  *v101 = vsubq_f64(*v101, v93);
                  v101[1] = v103;
                  v101[2] = v104;
                  v101[3] = v102;
                  v105 = v91 + 8;
                  v106 = v91 + 15;
                  v92 += 4;
                  v91 += 8;
                }

                while (v106 < v10);
                v107 = v105;
              }

              if (v107 < a1)
              {
                v108 = a5 + v11 * v18 + 8 * v107;
                do
                {
                  if (v20 < 1)
                  {
                    v110 = 0.0;
                  }

                  else
                  {
                    v109 = 0;
                    v110 = 0.0;
                    v111 = v108;
                    v112 = v18;
                    do
                    {
                      v110 = v110 + *v111 * v90[v109];
                      ++v112;
                      v109 += 17;
                      v111 = (v111 + v11);
                    }

                    while (v112 < v88);
                  }

                  *(a5 + 8 * v89 * v187 + 8 * v107) = *(a5 + 8 * v89 * v187 + 8 * v107) - v110;
                  ++v107;
                  v108 += 8;
                }

                while (v107 != v13);
              }

              ++v89;
              ++v90;
            }

            while (v89 != v19);
          }

          v18 = (v20 + v18);
        }

        while (v88 < v189);
        v15 = v186;
      }

      if (v15 >= 1)
      {
        v113 = v9;
        v114 = v9 - 15;
        v115 = &v190[-v14];
        v116 = -18 * v14;
        v117 = v14;
        v118 = v9;
        do
        {
          v119 = v117;
          v120 = v117 + 1;
          v121 = 16 * v117;
          if (v120 < v12)
          {
            v122 = *(v188 + v121);
          }

          if (v8 < 8)
          {
            v139 = 0;
          }

          else
          {
            v123 = 0;
            v124 = (a5 + v11 * v14);
            do
            {
              v125 = 0uLL;
              if (v119 <= v14)
              {
                v129 = 0uLL;
                v130 = 0uLL;
                v131 = 0uLL;
              }

              else
              {
                v126 = v119 - v14;
                v127 = v124;
                v128 = &v115[v119];
                v129 = 0uLL;
                v130 = 0uLL;
                v131 = 0uLL;
                do
                {
                  v132 = *v128;
                  v128 += 17;
                  v130 = vmlaq_n_f64(v130, v127[2], v132);
                  v129 = vmlaq_n_f64(v129, v127[1], v132);
                  v125 = vmlaq_n_f64(v125, *v127, v132);
                  v131 = vmlaq_n_f64(v131, v127[3], v132);
                  v127 = (v127 + v11);
                  --v126;
                }

                while (v126);
              }

              v133 = (a5 + 8 * v119 * a6 + 8 * v123);
              v134 = vsubq_f64(v133[3], v131);
              v135 = vsubq_f64(v133[1], v129);
              v136 = vsubq_f64(v133[2], v130);
              *v133 = vsubq_f64(*v133, v125);
              v133[1] = v135;
              v133[2] = v136;
              v133[3] = v134;
              v137 = v123 + 8;
              v138 = v123 + 15;
              v124 += 4;
              v123 += 8;
            }

            while (v138 < v10);
            v139 = v137;
          }

          if (v139 < v8)
          {
            v140 = a5 + v11 * v14 + 8 * v139;
            do
            {
              v141 = 0.0;
              if (v119 > v14)
              {
                v142 = v119 - v14;
                v143 = v140;
                v144 = &v115[v119];
                do
                {
                  v145 = *v144;
                  v144 += 17;
                  v141 = v141 + *v143 * v145;
                  v143 = (v143 + v11);
                  --v142;
                }

                while (v142);
              }

              *(a5 + 8 * v119 * a6 + 8 * v139) = *(a5 + 8 * v119 * a6 + 8 * v139) - v141;
              ++v139;
              v140 += 8;
            }

            while (v139 != v13);
          }

          if (v120 < v12)
          {
            v146 = *(v188 + v121);
          }

          v147 = *(a7 + v121);
          v148 = fabs(v147);
          v149 = v148 >= COERCE_DOUBLE(0x4000000000000) && v148 <= 4.49423284e307;
          v9 = v118;
          if (v149)
          {
            v152 = 1.0 / v147;
            if (v8 < 8)
            {
              v153 = 0;
            }

            else
            {
              v153 = 0;
              v154 = (a5 + 8 * v119 * a6);
              do
              {
                v155 = vmulq_n_f64(v154[3], v152);
                v156 = vmulq_n_f64(v154[2], v152);
                v157 = vmulq_n_f64(v154[1], v152);
                *v154 = vmulq_n_f64(*v154, v152);
                v154[1] = v157;
                v154[2] = v156;
                v154[3] = v155;
                v158 = v153 + 15;
                v153 += 8;
                v154 += 4;
              }

              while (v158 < v10);
              v153 = v153;
            }

            if (v153 < v8)
            {
              v159 = (a5 + v11 * v119 + 8 * v153);
              v160 = v13 - v153;
              do
              {
                *v159 = v152 * *v159;
                ++v159;
                --v160;
              }

              while (v160);
            }
          }

          else if (v8 >= 1)
          {
            v150 = (a5 + 8 * v119 * a6);
            v151 = v13;
            do
            {
              *v150 = *v150 / *(a7 + 16 * v119);
              ++v150;
              --v151;
            }

            while (v151);
          }

          v161 = *(a7 + 16 * v119);
          if (fabs(v161) == INFINITY)
          {
            v161 = 0.0;
          }

          v117 = v119 + 1;
          v162 = v119 + 1;
          if (v119 + 8 < v118)
          {
            v163 = v117 - 8;
            v164 = (a3 + v180 * v119 + 8 * v117);
            v165 = &v190[17 * v119 + v116 + v117];
            v162 = v119 + 1;
            do
            {
              v166 = vmulq_n_f64(v164[3], v161);
              v167 = vmulq_n_f64(v164[2], v161);
              v168 = vmulq_n_f64(v164[1], v161);
              *v165 = vmulq_n_f64(*v164, v161);
              v165[1] = v168;
              v163 += 8;
              v165[2] = v167;
              v165[3] = v166;
              v164 += 4;
              v165 += 4;
              v162 += 8;
            }

            while (v163 < v114);
          }

          if (v162 < v118)
          {
            v169 = (a3 + v180 * v119 + 8 * v162);
            v170 = &v190[17 * v119 + v116 + v162];
            v171 = v113 - v162;
            do
            {
              v172 = *v169++;
              *v170++ = v161 * v172;
              --v171;
            }

            while (v171);
          }
        }

        while (v117 < v118);
      }

      a2 = v174;
    }

    while (v9 < v174);
  }

  v173 = *MEMORY[0x277D85DE8];
}

void sub_2367804D0(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v184[289] = *MEMORY[0x277D85DE8];
  bzero(v184, 0x908uLL);
  if (a2 >= 1)
  {
    v14 = 0;
    v15 = a1;
    v16 = 8 * a6;
    v168 = a1;
    v169 = 8 * a4;
    __asm { FMOV            V0.4S, #-1.0 }

    v21 = vnegq_f64(_Q0);
    __asm { FMOV            V0.2S, #-1.0 }

    v23 = -*_Q0.i64;
    v183 = a2;
    v24 = a1;
    v181 = v21;
    v163 = a2;
    do
    {
      v25 = v14;
      if (a2 - v14 >= 16)
      {
        v26 = 16;
      }

      else
      {
        v26 = a2 - v14;
      }

      v27 = v14 + v26 - 1;
      if (v27 + 1 < v183)
      {
        v28 = a7 + 16 * v27;
        _Q0.i32[0] = *(v28 + 16);
        v11.i32[0] = *(v28 + 20);
      }

      v178 = v14;
      if (v14 <= 0)
      {
        v14 = (v26 + v14);
      }

      else
      {
        v29 = 0;
        v173 = v25;
        v175 = a3 + 8 * v25;
        v171 = v25 + 3;
        v179 = (v26 + v25);
        v166 = &v184[-v25];
        do
        {
          if (v25 - v29 >= 16)
          {
            v30 = 16;
          }

          else
          {
            v30 = v25 - v29;
          }

          v31 = v29 + v30 - 1;
          if (v31 + 1 < v183)
          {
            v32 = a7 + 16 * v31;
            _Q0.i32[0] = *(v32 + 16);
            v11.i32[0] = *(v32 + 20);
          }

          v33 = v29;
          v34 = v29;
          sub_236785364(*_Q0.i64, *v11.i64, *v12.i64, *v13.i64, v29, v25, v30, v26, v175 + 8 * v29 * a4, a4, a7 + 16 * v29, v184, 17);
          v35 = v34;
          v25 = v178;
          v36 = v178;
          v21 = v181;
          a1 = v168;
          if (v26 >= 4)
          {
            v37 = v30 + v35;
            v38 = v184;
            v39 = v173;
            LODWORD(v40) = v171;
            do
            {
              if (v168 < 4)
              {
                v71 = 0;
              }

              else
              {
                v41 = 0;
                v42 = a5 + v16 * v33;
                do
                {
                  if (v30 < 1)
                  {
                    v52 = 0uLL;
                    v53 = 0uLL;
                    v50 = 0uLL;
                    v51 = 0uLL;
                    v48 = 0uLL;
                    v49 = 0uLL;
                    v43 = 0uLL;
                    v45 = 0uLL;
                  }

                  else
                  {
                    v43 = 0uLL;
                    v44 = v42;
                    v45 = 0uLL;
                    v46 = v38;
                    v47 = v33;
                    v48 = 0uLL;
                    v49 = 0uLL;
                    v50 = 0uLL;
                    v51 = 0uLL;
                    v52 = 0uLL;
                    v53 = 0uLL;
                    do
                    {
                      v54 = *(v44 + 16);
                      v55 = vrev64q_s32(*v44);
                      v56 = vrev64q_s32(v54);
                      v57 = *(v46 + 1);
                      v58 = vmulq_lane_f32(v181, *v46, 1);
                      v45 = vaddq_f32(v45, vmlaq_n_f32(vmulq_f32(v56, v58), v54, COERCE_FLOAT(*v46)));
                      v43 = vaddq_f32(v43, vmlaq_n_f32(vmulq_f32(v55, v58), *v44, COERCE_FLOAT(*v46)));
                      v59 = vmulq_laneq_f32(v181, *v46, 3);
                      v49 = vaddq_f32(v49, vmlaq_laneq_f32(vmulq_f32(v56, v59), v54, *v46, 2));
                      v48 = vaddq_f32(v48, vmlaq_laneq_f32(vmulq_f32(v55, v59), *v44, *v46, 2));
                      v60 = vmulq_lane_f32(v181, *v57.f32, 1);
                      v51 = vaddq_f32(v51, vmlaq_n_f32(vmulq_f32(v56, v60), v54, v57.f32[0]));
                      v50 = vaddq_f32(v50, vmlaq_n_f32(vmulq_f32(v55, v60), *v44, v57.f32[0]));
                      v61 = vmulq_laneq_f32(v181, v57, 3);
                      v53 = vaddq_f32(v53, vmlaq_laneq_f32(vmulq_f32(v56, v61), v54, v57, 2));
                      v52 = vaddq_f32(v52, vmlaq_laneq_f32(vmulq_f32(v55, v61), *v44, v57, 2));
                      ++v47;
                      v46 = (v46 + 136);
                      v44 += v16;
                    }

                    while (v47 < v37);
                  }

                  v62 = (a5 + 8 * v39 * a6 + 8 * v41);
                  v63 = vsubq_f32(v62[1], v45);
                  *v62 = vsubq_f32(*v62, v43);
                  v62[1] = v63;
                  v64 = (a5 + 8 * (a6 + v39 * a6) + 8 * v41);
                  v65 = vsubq_f32(v64[1], v49);
                  *v64 = vsubq_f32(*v64, v48);
                  v64[1] = v65;
                  v66 = (a5 + 8 * (v39 + 2) * a6 + 8 * v41);
                  v67 = vsubq_f32(v66[1], v51);
                  *v66 = vsubq_f32(*v66, v50);
                  v66[1] = v67;
                  v68 = a5 + 8 * v40 * a6 + 8 * v41;
                  v12 = *v68;
                  v13 = *(v68 + 16);
                  v11 = vsubq_f32(v13, v53);
                  _Q0 = vsubq_f32(*v68, v52);
                  *v68 = _Q0;
                  *(v68 + 16) = v11;
                  v69 = v41 + 4;
                  v70 = v41 + 7;
                  v42 += 32;
                  v41 += 4;
                }

                while (v70 < v15);
                v71 = v69;
              }

              if (v71 < v168)
              {
                v72 = a5 + 8 * (v39 + 2) * a6;
                v73 = a5 + 8 * v40 * a6;
                v74 = a5 + v16 * v33 + 8 * v71;
                do
                {
                  if (v30 < 1)
                  {
                    v80 = 0;
                    v79 = 0;
                    v13.i64[0] = 0;
                    v75 = 0;
                  }

                  else
                  {
                    v75 = 0;
                    v76 = v74;
                    v77 = v38;
                    v78 = v33;
                    v13.i64[0] = 0;
                    v79 = 0;
                    v80 = 0;
                    do
                    {
                      v81 = vrev64_s32(*v76);
                      v82 = *(v77 + 1);
                      v75 = vadd_f32(v75, vmla_n_f32(vmul_f32(v81, vmul_lane_f32(*&v23, *v77, 1)), *v76, COERCE_FLOAT(*v77)));
                      *v13.f32 = vadd_f32(*v13.f32, vmla_laneq_f32(vmul_f32(v81, vmul_laneq_f32(*&v23, *v77, 3)), *v76, *v77, 2));
                      v79 = vadd_f32(v79, vmla_n_f32(vmul_f32(v81, vmul_lane_f32(*&v23, *v82.f32, 1)), *v76, v82.f32[0]));
                      v80 = vadd_f32(v80, vmla_laneq_f32(vmul_f32(v81, vmul_laneq_f32(*&v23, v82, 3)), *v76, v82, 2));
                      ++v78;
                      v77 = (v77 + 136);
                      v76 = (v76 + v16);
                    }

                    while (v78 < v37);
                  }

                  *(a5 + 8 * v39 * a6 + 8 * v71) = vsub_f32(*(a5 + 8 * v39 * a6 + 8 * v71), v75);
                  *(a5 + 8 * (a6 + v39 * a6) + 8 * v71) = vsub_f32(*(a5 + 8 * (a6 + v39 * a6) + 8 * v71), *v13.f32);
                  v12.i64[0] = *(v72 + 8 * v71);
                  *(v72 + 8 * v71) = vsub_f32(*v12.f32, v79);
                  v11.i64[0] = *(v73 + 8 * v71);
                  *_Q0.f32 = vsub_f32(*v11.f32, v80);
                  *(v73 + 8 * v71++) = _Q0.i64[0];
                  v74 += 8;
                }

                while (v71 != v24);
              }

              v36 = v39 + 4;
              v40 = v39 + 7;
              v38 += 4;
              v39 += 4;
            }

            while (v40 < v179);
          }

          v83 = v30 + v35;
          if (v36 < v179)
          {
            v84 = v36;
            v85 = &v166[v36];
            do
            {
              if (v168 < 4)
              {
                v98 = 0;
              }

              else
              {
                v86 = 0;
                v87 = (a5 + v16 * v33);
                do
                {
                  v88 = 0uLL;
                  if (v30 < 1)
                  {
                    v92 = 0uLL;
                  }

                  else
                  {
                    v89 = v87;
                    v90 = v85;
                    v91 = v33;
                    v92 = 0uLL;
                    do
                    {
                      v93 = *v90;
                      v90 += 17;
                      v94 = vmulq_lane_f32(v181, v93, 1);
                      v92 = vaddq_f32(v92, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v89[1]), v94), v89[1], v93.f32[0]));
                      v88 = vaddq_f32(v88, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v89), v94), *v89, v93.f32[0]));
                      ++v91;
                      v89 = (v89 + v16);
                    }

                    while (v91 < v83);
                  }

                  v95 = a5 + 8 * v84 * a6 + 8 * v86;
                  v12 = *v95;
                  v13 = *(v95 + 16);
                  v11 = vsubq_f32(v13, v92);
                  _Q0 = vsubq_f32(*v95, v88);
                  *v95 = _Q0;
                  *(v95 + 16) = v11;
                  v96 = v86 + 4;
                  v97 = v86 + 7;
                  v87 += 2;
                  v86 += 4;
                }

                while (v97 < v15);
                v98 = v96;
              }

              if (v98 < v168)
              {
                v99 = a5 + 8 * v84 * a6;
                v100 = a5 + v16 * v33 + 8 * v98;
                do
                {
                  if (v30 < 1)
                  {
                    v102 = 0;
                  }

                  else
                  {
                    v101 = 0;
                    v102 = 0;
                    v103 = v100;
                    v104 = v33;
                    do
                    {
                      *v13.f32 = v85[v101];
                      *v12.f32 = vmla_n_f32(vmul_f32(vrev64_s32(*v103), vmul_lane_f32(*&v23, *v13.f32, 1)), *v103, v13.f32[0]);
                      v102 = vadd_f32(v102, *v12.f32);
                      ++v104;
                      v101 += 17;
                      v103 = (v103 + v16);
                    }

                    while (v104 < v83);
                  }

                  v11.i64[0] = *(v99 + 8 * v98);
                  *_Q0.f32 = vsub_f32(*v11.f32, v102);
                  *(v99 + 8 * v98++) = _Q0.i64[0];
                  v100 += 8;
                }

                while (v98 != v24);
              }

              ++v84;
              ++v85;
            }

            while (v84 != v179);
          }

          v29 = (v30 + v35);
        }

        while (v83 < v178);
        v14 = v179;
      }

      if (v26 >= 1)
      {
        v164 = v14;
        v165 = &v184[-v25];
        v167 = v14 - 7;
        v174 = (a5 + v16 * v25);
        v176 = v25;
        v172 = -18 * v25;
        v105 = v25;
        v180 = v14;
        do
        {
          v106 = v105;
          v107 = v105 + 1;
          v108 = a7 + 16 * v106;
          if (v107 < v183)
          {
            v109 = *(v108 + 16);
            v110 = *(v108 + 20);
          }

          v111 = v106 * a6;
          if (a1 < 4)
          {
            v125 = 0;
          }

          else
          {
            v112 = 0;
            v113 = v174;
            do
            {
              v114 = 0uLL;
              v115 = 0uLL;
              if (v106 > v25)
              {
                v116 = v106 - v176;
                v117 = v113;
                v118 = &v165[v106];
                do
                {
                  v119 = *v118;
                  v118 += 17;
                  v120 = vmulq_lane_f32(v21, v119, 1);
                  v115 = vaddq_f32(v115, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v117[1]), v120), v117[1], v119.f32[0]));
                  v114 = vaddq_f32(v114, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v117), v120), *v117, v119.f32[0]));
                  v117 = (v117 + v16);
                  --v116;
                }

                while (v116);
              }

              v121 = (a5 + 8 * v111 + 8 * v112);
              v122 = vsubq_f32(v121[1], v115);
              *v121 = vsubq_f32(*v121, v114);
              v121[1] = v122;
              v123 = v112 + 4;
              v124 = v112 + 7;
              v113 += 2;
              v112 += 4;
            }

            while (v124 < v15);
            v125 = v123;
          }

          if (v125 < a1)
          {
            v126 = a5 + 8 * v111;
            v127 = v174 + v125;
            do
            {
              v128 = 0;
              if (v106 > v25)
              {
                v129 = v106 - v176;
                v130 = v127;
                v131 = &v165[v106];
                do
                {
                  v132 = *v131;
                  v131 += 17;
                  v128 = vadd_f32(v128, vmla_n_f32(vmul_f32(vrev64_s32(*v130), vmul_lane_f32(*&v23, v132, 1)), *v130, v132.f32[0]));
                  v130 = (v130 + v16);
                  --v129;
                }

                while (v129);
              }

              *(v126 + 8 * v125) = vsub_f32(*(v126 + 8 * v125), v128);
              ++v125;
              ++v127;
            }

            while (v125 != v24);
          }

          if (v107 < v183)
          {
            v133 = *(v108 + 16);
            v134 = *(v108 + 20);
          }

          v135 = *v108;
          v136 = *(v108 + 4);
          v137 = hypotf(*v108, v136);
          if (v137 >= COERCE_FLOAT(0x200000) && v137 <= 8.5071e37)
          {
            *v141.i32 = sub_23681E680(1.0, 0.0, v135, v136);
            v12.i32[1] = v181.i32[1];
            v11 = vmulq_n_f32(v181, v142);
            if (a1 < 4)
            {
              v143 = 0;
            }

            else
            {
              v143 = 0;
              v144 = (a5 + 8 * v106 * a6);
              v12 = vdupq_lane_s32(v141, 0);
              do
              {
                v13 = *v144;
                v145 = vmlaq_f32(vmulq_f32(v11, vrev64q_s32(v144[1])), v12, v144[1]);
                *v144 = vmlaq_f32(vmulq_f32(v11, vrev64q_s32(*v144)), v12, *v144);
                v144[1] = v145;
                v144 += 2;
                v146 = v143 + 7;
                v143 += 4;
              }

              while (v146 < v15);
              v143 = v143;
            }

            if (v143 < a1)
            {
              v147 = vdup_lane_s32(v141, 0);
              v148 = (a5 + v16 * v106 + 8 * v143);
              v149 = v24 - v143;
              do
              {
                *v12.f32 = *v148;
                *v13.f32 = vmla_f32(vmul_f32(*v11.f32, vrev64_s32(*v148)), v147, *v148);
                *v148++ = *v13.f32;
                --v149;
              }

              while (v149);
            }
          }

          else if (a1 >= 1)
          {
            v139 = (a5 + 4 + v16 * v106);
            v140 = v24;
            do
            {
              *(v139 - 1) = sub_23681E680(*(v139 - 1), *v139, *v108, *(v108 + 4));
              *v139 = v11.f32[0];
              v139 += 2;
              --v140;
            }

            while (v140);
          }

          v12.i32[0] = *(v108 + 4);
          v13.i32[0] = 2139095040;
          v150 = fabsf(*v108) == INFINITY;
          if (fabsf(v12.f32[0]) == INFINITY)
          {
            v150 = 1;
          }

          if (v150)
          {
            v11.f32[0] = 0.0;
          }

          else
          {
            v11.i32[0] = *v108;
          }

          if (v150)
          {
            v151 = 0.0;
          }

          else
          {
            v151 = *(v108 + 4);
          }

          v21 = v181;
          _Q0 = vmulq_n_f32(v181, v151);
          v105 = v106 + 1;
          v152 = 17 * v106;
          v153 = v106 + 1;
          v14 = v180;
          if (v106 + 4 < v180)
          {
            v12 = vdupq_lane_s32(*v11.f32, 0);
            v154 = v105 - 4;
            v155 = (a3 + v169 * v106 + 8 * v105);
            v156 = &v184[v172 + v152 + v105];
            v153 = v106 + 1;
            do
            {
              v157 = *v155;
              v13 = v155[1];
              v155 += 2;
              v154 += 4;
              *v156 = vmlaq_f32(vmulq_f32(_Q0, vrev64q_s32(v157)), v12, v157);
              v156[1] = vmlaq_f32(vmulq_f32(_Q0, vrev64q_s32(v13)), v12, v13);
              v156 += 2;
              v153 += 4;
            }

            while (v154 < v167);
          }

          LODWORD(v25) = v178;
          if (v153 < v180)
          {
            *v11.f32 = vdup_lane_s32(*v11.f32, 0);
            v158 = (a3 + v169 * v106 + 8 * v153);
            v159 = &v184[v172 + v152 + v153];
            v160 = v164 - v153;
            do
            {
              v161 = *v158++;
              *v12.f32 = v161;
              *v13.f32 = vmla_f32(vmul_f32(*_Q0.f32, vrev64_s32(v161)), *v11.f32, v161);
              *v159++ = v13.i64[0];
              --v160;
            }

            while (v160);
          }
        }

        while (v105 < v180);
      }

      a2 = v163;
    }

    while (v14 < v163);
  }

  v162 = *MEMORY[0x277D85DE8];
}

void sub_236781514(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v247 = v2;
  v4 = v3;
  v6 = v5;
  v241 = v7;
  v243 = v8;
  v10 = v9;
  v11 = v1;
  v262 = *MEMORY[0x277D85DE8];
  bzero(v261, 0x1210uLL);
  if (v10 >= 1)
  {
    v12 = 0;
    v13 = v11;
    v14 = 16 * v4;
    v240 = 16 * v241;
    v15 = xmmword_23681FB50;
    v248 = v10;
    v16 = v11;
    v235 = v10;
    v239 = v11;
    do
    {
      v17 = v12;
      if (v10 - v12 >= 16)
      {
        v18 = 16;
      }

      else
      {
        v18 = v10 - v12;
      }

      v19 = v12 + v18 - 1;
      if (v19 + 1 < v248)
      {
        v20 = v247 + 32 * v19;
        v21 = *(v20 + 32);
        v22 = *(v20 + 40);
      }

      v244 = v12;
      if (v12 <= 0)
      {
        v12 = (v18 + v12);
      }

      else
      {
        v23 = 0;
        v238 = v17;
        v242 = v243 + 16 * v17;
        v237 = v17 + 3;
        v245 = (v18 + v17);
        v236 = &v261[-v17];
        do
        {
          if (v17 - v23 >= 16)
          {
            v24 = 16;
          }

          else
          {
            v24 = v17 - v23;
          }

          v25 = v23 + v24 - 1;
          if (v25 + 1 < v248)
          {
            v26 = v247 + 32 * v25;
            v27 = *(v26 + 32);
            v28 = *(v26 + 40);
          }

          v29 = v23;
          v30 = v23;
          sub_236785604(v23, v17, v24, v18, v242 + 16 * v23 * v241, v241, v247 + 32 * v23, v261, 17);
          v31 = v30;
          v17 = v244;
          v32 = v244;
          v15 = xmmword_23681FB50;
          v11 = v239;
          if (v18 >= 4)
          {
            v33 = v24 + v31;
            v34 = v261;
            v35 = v238;
            LODWORD(v36) = v237;
            do
            {
              if (v239 < 4)
              {
                v124 = 0;
              }

              else
              {
                v37 = 0;
                v38 = v6 + v14 * v29;
                do
                {
                  if (v24 < 1)
                  {
                    v54 = 0uLL;
                    v55 = 0uLL;
                    v56 = 0uLL;
                    v57 = 0uLL;
                    v50 = 0uLL;
                    v51 = 0uLL;
                    v52 = 0uLL;
                    v53 = 0uLL;
                    v46 = 0uLL;
                    v47 = 0uLL;
                    v48 = 0uLL;
                    v49 = 0uLL;
                    v39 = 0uLL;
                    v41 = 0uLL;
                    v43 = 0uLL;
                    v45 = 0uLL;
                  }

                  else
                  {
                    v39 = 0uLL;
                    v40 = v38;
                    v41 = 0uLL;
                    v42 = v34;
                    v43 = 0uLL;
                    v44 = v29;
                    v45 = 0uLL;
                    v46 = 0uLL;
                    v47 = 0uLL;
                    v48 = 0uLL;
                    v49 = 0uLL;
                    v50 = 0uLL;
                    v51 = 0uLL;
                    v52 = 0uLL;
                    v53 = 0uLL;
                    v54 = 0uLL;
                    v55 = 0uLL;
                    v56 = 0uLL;
                    v57 = 0uLL;
                    do
                    {
                      v249 = v55;
                      v250 = v53;
                      v252 = v48;
                      v254 = v49;
                      v257 = v46;
                      v259 = v52;
                      v59 = *(v40 + 32);
                      v58 = *(v40 + 48);
                      v60 = *(v40 + 16);
                      v61 = vextq_s8(*v40, *v40, 8uLL);
                      v62 = vextq_s8(v60, v60, 8uLL);
                      v63 = vextq_s8(v59, v59, 8uLL);
                      v64 = vextq_s8(v58, v58, 8uLL);
                      v65 = v42[2];
                      v66 = v42[3];
                      v68 = *v42;
                      v67 = v42[1];
                      v42 += 17;
                      v69 = v39;
                      v70 = vmulq_laneq_f64(xmmword_23681FB50, v68, 1);
                      v71 = vmulq_f64(v64, v70);
                      v72 = vmulq_f64(v63, v70);
                      v73 = vmulq_f64(v62, v70);
                      v74 = vmlaq_n_f64(vmulq_f64(v61, v70), *v40, v68.f64[0]);
                      v75 = vmlaq_n_f64(v73, v60, v68.f64[0]);
                      v76 = vmlaq_n_f64(v72, v59, v68.f64[0]);
                      v77 = vmlaq_n_f64(v71, v58, v68.f64[0]);
                      v78 = vmulq_laneq_f64(xmmword_23681FB50, v67, 1);
                      v79 = v54;
                      v80 = vmulq_f64(v64, v78);
                      v81 = vmulq_f64(v63, v78);
                      v82 = v57;
                      v83 = vmulq_f64(v62, v78);
                      v84 = vmlaq_n_f64(vmulq_f64(v61, v78), *v40, v67.f64[0]);
                      v85 = vmlaq_n_f64(v83, v60, v67.f64[0]);
                      v86 = vmlaq_n_f64(v81, v59, v67.f64[0]);
                      v87 = vmlaq_n_f64(v80, v58, v67.f64[0]);
                      v88 = vmulq_laneq_f64(xmmword_23681FB50, v65, 1);
                      v89 = v56;
                      v90 = vmulq_f64(v64, v88);
                      v91 = v50;
                      v92 = vmulq_f64(v63, v88);
                      v93 = v51;
                      v94 = vmulq_f64(v62, v88);
                      v95 = vmlaq_n_f64(vmulq_f64(v61, v88), *v40, v65.f64[0]);
                      v96 = vmlaq_n_f64(v94, v60, v65.f64[0]);
                      v97 = vmlaq_n_f64(v92, v59, v65.f64[0]);
                      v98 = vmlaq_n_f64(v90, v58, v65.f64[0]);
                      v99 = vmulq_laneq_f64(xmmword_23681FB50, v66, 1);
                      v100 = vmlaq_n_f64(vmulq_f64(v61, v99), *v40, v66.f64[0]);
                      v101 = vmlaq_n_f64(vmulq_f64(v62, v99), v60, v66.f64[0]);
                      v102 = vmlaq_n_f64(vmulq_f64(v63, v99), v59, v66.f64[0]);
                      v103 = vmlaq_n_f64(vmulq_f64(v64, v99), v58, v66.f64[0]);
                      v45 = vaddq_f64(v45, v77);
                      v43 = vaddq_f64(v43, v76);
                      v41 = vaddq_f64(v41, v75);
                      v39 = vaddq_f64(v69, v74);
                      v49 = vaddq_f64(v254, v87);
                      v104 = v79;
                      v48 = vaddq_f64(v252, v86);
                      v47 = vaddq_f64(v47, v85);
                      v105 = v82;
                      v46 = vaddq_f64(v257, v84);
                      v53 = vaddq_f64(v250, v98);
                      v52 = vaddq_f64(v259, v97);
                      v51 = vaddq_f64(v93, v96);
                      v50 = vaddq_f64(v91, v95);
                      v57 = vaddq_f64(v105, v103);
                      v56 = vaddq_f64(v89, v102);
                      v55 = vaddq_f64(v249, v101);
                      v54 = vaddq_f64(v104, v100);
                      ++v44;
                      v40 += v14;
                    }

                    while (v44 < v33);
                  }

                  v106 = (v6 + 16 * v35 * v4 + 16 * v37);
                  v107 = vsubq_f64(v106[3], v45);
                  v108 = vsubq_f64(v106[1], v41);
                  v109 = vsubq_f64(v106[2], v43);
                  *v106 = vsubq_f64(*v106, v39);
                  v106[1] = v108;
                  v106[2] = v109;
                  v106[3] = v107;
                  v110 = (v6 + 16 * (v4 + v35 * v4) + 16 * v37);
                  v111 = vsubq_f64(v110[2], v48);
                  v112 = vsubq_f64(v110[1], v47);
                  v113 = vsubq_f64(v110[3], v49);
                  *v110 = vsubq_f64(*v110, v46);
                  v110[1] = v112;
                  v110[2] = v111;
                  v110[3] = v113;
                  v114 = (v6 + 16 * (v35 + 2) * v4 + 16 * v37);
                  v115 = vsubq_f64(v114[2], v52);
                  v116 = vsubq_f64(v114[1], v51);
                  v117 = vsubq_f64(v114[3], v53);
                  *v114 = vsubq_f64(*v114, v50);
                  v114[1] = v116;
                  v114[2] = v115;
                  v114[3] = v117;
                  v118 = (v6 + 16 * v36 * v4 + 16 * v37);
                  v119 = vsubq_f64(v118[2], v56);
                  v120 = vsubq_f64(v118[1], v55);
                  v121 = vsubq_f64(v118[3], v57);
                  *v118 = vsubq_f64(*v118, v54);
                  v118[1] = v120;
                  v118[2] = v119;
                  v118[3] = v121;
                  v122 = v37 + 4;
                  v123 = v37 + 7;
                  v38 += 64;
                  v37 += 4;
                }

                while (v123 < v13);
                v124 = v122;
                v15 = xmmword_23681FB50;
              }

              if (v124 < v239)
              {
                v125 = v6 + 16 * v36 * v4;
                v126 = v6 + v14 * v29 + 16 * v124;
                do
                {
                  if (v24 < 1)
                  {
                    v133 = 0uLL;
                    v132 = 0uLL;
                    v131 = 0uLL;
                    v127 = 0uLL;
                  }

                  else
                  {
                    v127 = 0uLL;
                    v128 = v126;
                    v129 = v34;
                    v130 = v29;
                    v131 = 0uLL;
                    v132 = 0uLL;
                    v133 = 0uLL;
                    do
                    {
                      v134 = vextq_s8(*v128, *v128, 8uLL);
                      v136 = v129[2];
                      v135 = v129[3];
                      v138 = *v129;
                      v137 = v129[1];
                      v129 += 17;
                      v127 = vaddq_f64(v127, vmlaq_n_f64(vmulq_f64(v134, vmulq_laneq_f64(v15, v138, 1)), *v128, v138.f64[0]));
                      v131 = vaddq_f64(v131, vmlaq_n_f64(vmulq_f64(v134, vmulq_laneq_f64(v15, v137, 1)), *v128, v137.f64[0]));
                      v132 = vaddq_f64(v132, vmlaq_n_f64(vmulq_f64(v134, vmulq_laneq_f64(v15, v136, 1)), *v128, v136.f64[0]));
                      v133 = vaddq_f64(v133, vmlaq_n_f64(vmulq_f64(v134, vmulq_laneq_f64(v15, v135, 1)), *v128, v135.f64[0]));
                      ++v130;
                      v128 = (v128 + v14);
                    }

                    while (v130 < v33);
                  }

                  *(v6 + 16 * v35 * v4 + 16 * v124) = vsubq_f64(*(v6 + 16 * v35 * v4 + 16 * v124), v127);
                  *(v6 + 16 * (v4 + v35 * v4) + 16 * v124) = vsubq_f64(*(v6 + 16 * (v4 + v35 * v4) + 16 * v124), v131);
                  *(v6 + 16 * (v35 + 2) * v4 + 16 * v124) = vsubq_f64(*(v6 + 16 * (v35 + 2) * v4 + 16 * v124), v132);
                  *(v125 + 16 * v124) = vsubq_f64(*(v125 + 16 * v124), v133);
                  ++v124;
                  v126 += 16;
                }

                while (v124 != v16);
              }

              v32 = v35 + 4;
              v36 = v35 + 7;
              v34 += 4;
              v35 += 4;
            }

            while (v36 < v245);
          }

          v139 = v24 + v31;
          if (v32 < v245)
          {
            v140 = v32;
            v141 = &v236[v32];
            do
            {
              if (v239 < 4)
              {
                v158 = 0;
              }

              else
              {
                v142 = 0;
                v143 = (v6 + v14 * v29);
                do
                {
                  v144 = 0uLL;
                  if (v24 < 1)
                  {
                    v148 = 0uLL;
                    v149 = 0uLL;
                    v150 = 0uLL;
                  }

                  else
                  {
                    v145 = v143;
                    v146 = v141;
                    v147 = v29;
                    v148 = 0uLL;
                    v149 = 0uLL;
                    v150 = 0uLL;
                    do
                    {
                      v151 = vmulq_laneq_f64(v15, *v146, 1);
                      v150 = vaddq_f64(v150, vmlaq_n_f64(vmulq_f64(vextq_s8(v145[3], v145[3], 8uLL), v151), v145[3], v146->f64[0]));
                      v149 = vaddq_f64(v149, vmlaq_n_f64(vmulq_f64(vextq_s8(v145[2], v145[2], 8uLL), v151), v145[2], v146->f64[0]));
                      v148 = vaddq_f64(v148, vmlaq_n_f64(vmulq_f64(vextq_s8(v145[1], v145[1], 8uLL), v151), v145[1], v146->f64[0]));
                      v144 = vaddq_f64(v144, vmlaq_n_f64(vmulq_f64(vextq_s8(*v145, *v145, 8uLL), v151), *v145, v146->f64[0]));
                      ++v147;
                      v146 += 17;
                      v145 = (v145 + v14);
                    }

                    while (v147 < v139);
                  }

                  v152 = (v6 + 16 * v140 * v4 + 16 * v142);
                  v153 = vsubq_f64(v152[3], v150);
                  v154 = vsubq_f64(v152[1], v148);
                  v155 = vsubq_f64(v152[2], v149);
                  *v152 = vsubq_f64(*v152, v144);
                  v152[1] = v154;
                  v152[2] = v155;
                  v152[3] = v153;
                  v156 = v142 + 4;
                  v157 = v142 + 7;
                  v143 += 4;
                  v142 += 4;
                }

                while (v157 < v13);
                v158 = v156;
              }

              if (v158 < v239)
              {
                v159 = v6 + v14 * v29 + 16 * v158;
                do
                {
                  if (v24 < 1)
                  {
                    v161 = 0uLL;
                  }

                  else
                  {
                    v160 = 0;
                    v161 = 0uLL;
                    v162 = v159;
                    v163 = v29;
                    do
                    {
                      v161 = vaddq_f64(v161, vmlaq_n_f64(vmulq_f64(vextq_s8(*v162, *v162, 8uLL), vmulq_laneq_f64(v15, v141[v160], 1)), *v162, v141[v160].f64[0]));
                      ++v163;
                      v160 += 17;
                      v162 = (v162 + v14);
                    }

                    while (v163 < v139);
                  }

                  *(v6 + 16 * v140 * v4 + 16 * v158) = vsubq_f64(*(v6 + 16 * v140 * v4 + 16 * v158), v161);
                  ++v158;
                  v159 += 16;
                }

                while (v158 != v16);
              }

              ++v140;
              ++v141;
            }

            while (v140 != v245);
          }

          v23 = (v24 + v31);
        }

        while (v139 < v244);
        v12 = v245;
      }

      if (v18 >= 1)
      {
        v251 = v12;
        v253 = &v261[-v17];
        v260 = v17;
        v258 = (v6 + v14 * v17);
        v256 = -18 * v17;
        v164 = v17;
        v255 = v12 - 7;
        v246 = v12;
        do
        {
          v165 = v164;
          v166 = v164 + 1;
          v167 = v247 + 32 * v165;
          if (v166 < v248)
          {
            v168 = *(v167 + 32);
            v169 = *(v167 + 40);
          }

          v170 = v165 * v4;
          if (v11 < 4)
          {
            v187 = 0;
          }

          else
          {
            v171 = 0;
            v172 = v258;
            do
            {
              v173 = 0uLL;
              if (v165 <= v17)
              {
                v177 = 0uLL;
                v178 = 0uLL;
                v179 = 0uLL;
              }

              else
              {
                v174 = v165 - v260;
                v175 = v172;
                v176 = &v253[v165];
                v177 = 0uLL;
                v178 = 0uLL;
                v179 = 0uLL;
                do
                {
                  v180 = vmulq_laneq_f64(v15, *v176, 1);
                  v179 = vaddq_f64(v179, vmlaq_n_f64(vmulq_f64(vextq_s8(v175[3], v175[3], 8uLL), v180), v175[3], v176->f64[0]));
                  v178 = vaddq_f64(v178, vmlaq_n_f64(vmulq_f64(vextq_s8(v175[2], v175[2], 8uLL), v180), v175[2], v176->f64[0]));
                  v177 = vaddq_f64(v177, vmlaq_n_f64(vmulq_f64(vextq_s8(v175[1], v175[1], 8uLL), v180), v175[1], v176->f64[0]));
                  v173 = vaddq_f64(v173, vmlaq_n_f64(vmulq_f64(vextq_s8(*v175, *v175, 8uLL), v180), *v175, v176->f64[0]));
                  v176 += 17;
                  v175 = (v175 + v14);
                  --v174;
                }

                while (v174);
              }

              v181 = (v6 + 16 * v170 + 16 * v171);
              v182 = vsubq_f64(v181[3], v179);
              v183 = vsubq_f64(v181[1], v177);
              v184 = vsubq_f64(v181[2], v178);
              *v181 = vsubq_f64(*v181, v173);
              v181[1] = v183;
              v181[2] = v184;
              v181[3] = v182;
              v185 = v171 + 4;
              v186 = v171 + 7;
              v172 += 4;
              v171 += 4;
            }

            while (v186 < v13);
            v187 = v185;
          }

          if (v187 < v11)
          {
            v188 = v6 + 16 * v170;
            v189 = &v258[v187];
            do
            {
              v190 = 0uLL;
              if (v165 > v17)
              {
                v191 = v165 - v260;
                v192 = v189;
                v193 = &v253[v165];
                do
                {
                  v190 = vaddq_f64(v190, vmlaq_n_f64(vmulq_f64(vextq_s8(*v192, *v192, 8uLL), vmulq_laneq_f64(v15, *v193, 1)), *v192, v193->f64[0]));
                  v193 += 17;
                  v192 = (v192 + v14);
                  --v191;
                }

                while (v191);
              }

              *(v188 + 16 * v187) = vsubq_f64(*(v188 + 16 * v187), v190);
              ++v187;
              ++v189;
            }

            while (v187 != v16);
          }

          if (v166 < v248)
          {
            v194 = *(v167 + 32);
            v195 = *(v167 + 40);
          }

          v196 = *v167;
          v197 = *(v167 + 8);
          v198 = hypot(*v167, v197);
          if (v198 >= COERCE_DOUBLE(0x4000000000000) && v198 <= 4.49423284e307)
          {
            *&v203 = sub_23681E17C(1.0, 0.0, v196, v197);
            v205 = vmulq_n_f64(xmmword_23681FB50, v204);
            if (v11 < 4)
            {
              v206 = 0;
            }

            else
            {
              v206 = 0;
              v207 = (v6 + 16 * v165 * v4);
              v208 = vdupq_lane_s64(v203, 0);
              do
              {
                v209 = vmlaq_f64(vmulq_f64(v205, vextq_s8(v207[3], v207[3], 8uLL)), v208, v207[3]);
                v210 = vmlaq_f64(vmulq_f64(v205, vextq_s8(v207[1], v207[1], 8uLL)), v208, v207[1]);
                v211 = vmlaq_f64(vmulq_f64(v205, vextq_s8(v207[2], v207[2], 8uLL)), v208, v207[2]);
                *v207 = vmlaq_f64(vmulq_f64(v205, vextq_s8(*v207, *v207, 8uLL)), v208, *v207);
                v207[1] = v210;
                v207[2] = v211;
                v207[3] = v209;
                v212 = v206 + 7;
                v206 += 4;
                v207 += 4;
              }

              while (v212 < v13);
              v206 = v206;
            }

            if (v206 < v11)
            {
              v213 = vdupq_lane_s64(v203, 0);
              v214 = (v6 + v14 * v165 + 16 * v206);
              v215 = v16 - v206;
              do
              {
                *v214 = vmlaq_f64(vmulq_f64(v205, vextq_s8(*v214, *v214, 8uLL)), v213, *v214);
                ++v214;
                --v215;
              }

              while (v215);
            }
          }

          else if (v11 >= 1)
          {
            v200 = (v6 + 8 + v14 * v165);
            v201 = v16;
            do
            {
              *(v200 - 1) = sub_23681E17C(*(v200 - 1), *v200, *v167, *(v167 + 8));
              *v200 = v202;
              v200 += 2;
              --v201;
            }

            while (v201);
          }

          v216 = fabs(*v167) == INFINITY;
          if (fabs(*(v167 + 8)) == INFINITY)
          {
            v216 = 1;
          }

          if (v216)
          {
            v217 = 0.0;
          }

          else
          {
            v217 = *v167;
          }

          if (v216)
          {
            v218 = 0.0;
          }

          else
          {
            v218 = *(v167 + 8);
          }

          v15 = xmmword_23681FB50;
          v219 = vmulq_n_f64(xmmword_23681FB50, v218);
          v164 = v165 + 1;
          v220 = 17 * v165;
          v221 = v165 + 1;
          v12 = v246;
          if (v165 + 4 < v246)
          {
            v222 = vdupq_lane_s64(*&v217, 0);
            v223 = v164 - 4;
            v224 = (v243 + v240 * v165 + 16 * v164);
            v225 = &v261[v256 + v220 + v164];
            v221 = v165 + 1;
            do
            {
              v226 = vmlaq_f64(vmulq_f64(v219, vextq_s8(v224[3], v224[3], 8uLL)), v222, v224[3]);
              v227 = vmlaq_f64(vmulq_f64(v219, vextq_s8(v224[1], v224[1], 8uLL)), v222, v224[1]);
              v228 = vmlaq_f64(vmulq_f64(v219, vextq_s8(v224[2], v224[2], 8uLL)), v222, v224[2]);
              *v225 = vmlaq_f64(vmulq_f64(v219, vextq_s8(*v224, *v224, 8uLL)), v222, *v224);
              v225[1] = v227;
              v223 += 4;
              v225[2] = v228;
              v225[3] = v226;
              v224 += 4;
              v225 += 4;
              v221 += 4;
            }

            while (v223 < v255);
          }

          LODWORD(v17) = v244;
          if (v221 < v246)
          {
            v229 = vdupq_lane_s64(*&v217, 0);
            v230 = (v243 + v240 * v165 + 16 * v221);
            v231 = &v261[v256 + v220 + v221];
            v232 = v251 - v221;
            do
            {
              v233 = *v230++;
              *v231++ = vmlaq_f64(vmulq_f64(v219, vextq_s8(v233, v233, 8uLL)), v229, v233);
              --v232;
            }

            while (v232);
          }
        }

        while (v164 < v246);
      }

      v10 = v235;
    }

    while (v12 < v235);
  }

  v234 = *MEMORY[0x277D85DE8];
}

void sub_236782948(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v181[289] = *MEMORY[0x277D85DE8];
  bzero(v181, 0x908uLL);
  if (a2 >= 1)
  {
    v16 = a1;
    v17 = 0;
    v18 = a1;
    v19 = 8 * a6;
    v167 = 8 * a4;
    __asm { FMOV            V0.4S, #1.0 }

    v24 = vnegq_f64(_Q0);
    __asm { FMOV            V0.2S, #1.0 }

    v26 = -_Q0.f64[0];
    v179 = v16;
    v180 = a2;
    v27 = v16;
    v177 = a7;
    v164 = a2;
    v176 = v24;
    do
    {
      v28 = v17;
      if (a2 - v17 >= 16)
      {
        v29 = 16;
      }

      else
      {
        v29 = (a2 - v17);
      }

      v30 = v17 + v29 - 1;
      if (v30 + 1 < v180)
      {
        v31 = a7 + 16 * v30;
        LODWORD(_Q0.f64[0]) = *(v31 + 16);
        v12.i32[0] = *(v31 + 20);
        v29 = v29;
      }

      v178 = v17;
      if (v17 <= 0)
      {
        v17 = (v29 + v17);
      }

      else
      {
        v32 = 0;
        v173 = (v29 + v17);
        do
        {
          if (v28 - v32 >= 16)
          {
            v33 = 16;
          }

          else
          {
            v33 = v28 - v32;
          }

          v34 = v32 + v33 - 1;
          if (v34 + 1 < v180)
          {
            v35 = a7 + 16 * v34;
            LODWORD(_Q0.f64[0]) = *(v35 + 16);
            v12.i32[0] = *(v35 + 20);
          }

          v36 = a7 + 16 * v32;
          v37 = v29;
          sub_236785974(_Q0.f64[0], *v12.i64, *v13.i64, *v14.i64, *_Q4.i64, v32, v28, v33, v29, a3 + 8 * v17 + 8 * v32 * a4, a4, v36, v181, 17);
          v29 = v37;
          v28 = v17;
          v16 = v179;
          v38 = v17;
          v24 = v176;
          if (v37 >= 4)
          {
            v39 = v33 + v32;
            v40 = v181;
            v41 = v17;
            LODWORD(v42) = v17 + 3;
            do
            {
              if (v179 < 4)
              {
                v73 = 0;
              }

              else
              {
                v43 = 0;
                v44 = a5 + v19 * v32;
                do
                {
                  if (v33 < 1)
                  {
                    v54 = 0uLL;
                    v55 = 0uLL;
                    v52 = 0uLL;
                    v53 = 0uLL;
                    v50 = 0uLL;
                    v51 = 0uLL;
                    v45 = 0uLL;
                    v47 = 0uLL;
                  }

                  else
                  {
                    v45 = 0uLL;
                    v46 = v44;
                    v47 = 0uLL;
                    v48 = v40;
                    v49 = v32;
                    v50 = 0uLL;
                    v51 = 0uLL;
                    v52 = 0uLL;
                    v53 = 0uLL;
                    v54 = 0uLL;
                    v55 = 0uLL;
                    do
                    {
                      v56 = *(v46 + 16);
                      v57 = vrev64q_s32(*v46);
                      v58 = vrev64q_s32(v56);
                      v59 = *(v48 + 1);
                      v60 = vmulq_lane_f32(v176, *v48, 1);
                      v47 = vaddq_f32(v47, vmlaq_n_f32(vmulq_f32(v58, v60), v56, COERCE_FLOAT(*v48)));
                      v45 = vaddq_f32(v45, vmlaq_n_f32(vmulq_f32(v57, v60), *v46, COERCE_FLOAT(*v48)));
                      v61 = vmulq_laneq_f32(v176, *v48, 3);
                      v51 = vaddq_f32(v51, vmlaq_laneq_f32(vmulq_f32(v58, v61), v56, *v48, 2));
                      v50 = vaddq_f32(v50, vmlaq_laneq_f32(vmulq_f32(v57, v61), *v46, *v48, 2));
                      v62 = vmulq_lane_f32(v176, *v59.f32, 1);
                      v53 = vaddq_f32(v53, vmlaq_n_f32(vmulq_f32(v58, v62), v56, v59.f32[0]));
                      v52 = vaddq_f32(v52, vmlaq_n_f32(vmulq_f32(v57, v62), *v46, v59.f32[0]));
                      v63 = vmulq_laneq_f32(v176, v59, 3);
                      v55 = vaddq_f32(v55, vmlaq_laneq_f32(vmulq_f32(v58, v63), v56, v59, 2));
                      v54 = vaddq_f32(v54, vmlaq_laneq_f32(vmulq_f32(v57, v63), *v46, v59, 2));
                      ++v49;
                      v48 = (v48 + 136);
                      v46 += v19;
                    }

                    while (v49 < v39);
                  }

                  v64 = (a5 + 8 * v41 * a6 + 8 * v43);
                  v65 = vsubq_f32(v64[1], v47);
                  *v64 = vsubq_f32(*v64, v45);
                  v64[1] = v65;
                  v66 = (a5 + 8 * (a6 + v41 * a6) + 8 * v43);
                  v67 = vsubq_f32(v66[1], v51);
                  *v66 = vsubq_f32(*v66, v50);
                  v66[1] = v67;
                  v68 = (a5 + 8 * (v41 + 2) * a6 + 8 * v43);
                  _Q4 = *v68;
                  v69 = vsubq_f32(v68[1], v53);
                  *v68 = vsubq_f32(*v68, v52);
                  v68[1] = v69;
                  v70 = a5 + 8 * v42 * a6 + 8 * v43;
                  v13 = *v70;
                  v14 = *(v70 + 16);
                  v12 = vsubq_f32(v14, v55);
                  _Q0 = vsubq_f32(*v70, v54);
                  *v70 = _Q0;
                  *(v70 + 16) = v12;
                  v71 = v43 + 4;
                  v72 = v43 + 7;
                  v44 += 32;
                  v43 += 4;
                }

                while (v72 < v18);
                v73 = v71;
              }

              if (v73 < v179)
              {
                v74 = a5 + 8 * v41 * a6;
                v75 = a5 + 8 * (v41 + 2) * a6;
                v76 = a5 + 8 * v42 * a6;
                v77 = a5 + v19 * v32 + 8 * v73;
                do
                {
                  if (v33 < 1)
                  {
                    v83 = 0;
                    v82 = 0;
                    v14.i64[0] = 0;
                    v78 = 0;
                  }

                  else
                  {
                    v78 = 0;
                    v79 = v77;
                    v80 = v40;
                    v81 = v32;
                    v14.i64[0] = 0;
                    v82 = 0;
                    v83 = 0;
                    do
                    {
                      v84 = vrev64_s32(*v79);
                      v85 = *(v80 + 1);
                      v78 = vadd_f32(v78, vmla_n_f32(vmul_f32(v84, vmul_lane_f32(*&v26, *v80, 1)), *v79, COERCE_FLOAT(*v80)));
                      *v14.f32 = vadd_f32(*v14.f32, vmla_laneq_f32(vmul_f32(v84, vmul_laneq_f32(*&v26, *v80, 3)), *v79, *v80, 2));
                      v82 = vadd_f32(v82, vmla_n_f32(vmul_f32(v84, vmul_lane_f32(*&v26, *v85.f32, 1)), *v79, v85.f32[0]));
                      v83 = vadd_f32(v83, vmla_laneq_f32(vmul_f32(v84, vmul_laneq_f32(*&v26, v85, 3)), *v79, v85, 2));
                      ++v81;
                      v80 = (v80 + 136);
                      v79 = (v79 + v19);
                    }

                    while (v81 < v39);
                  }

                  _Q4.i64[0] = *(v74 + 8 * v73);
                  *(v74 + 8 * v73) = vsub_f32(*_Q4.f32, v78);
                  *(a5 + 8 * (a6 + v41 * a6) + 8 * v73) = vsub_f32(*(a5 + 8 * (a6 + v41 * a6) + 8 * v73), *v14.f32);
                  v13.i64[0] = *(v75 + 8 * v73);
                  *(v75 + 8 * v73) = vsub_f32(*v13.f32, v82);
                  v12.i64[0] = *(v76 + 8 * v73);
                  *&_Q0.f64[0] = vsub_f32(*v12.f32, v83);
                  *(v76 + 8 * v73++) = _Q0.f64[0];
                  v77 += 8;
                }

                while (v73 != v27);
              }

              v38 = v41 + 4;
              v42 = v41 + 7;
              v40 += 4;
              v41 += 4;
            }

            while (v42 < v173);
          }

          v86 = v33 + v32;
          a7 = v177;
          if (v38 < v173)
          {
            v87 = v38;
            v88 = &v181[v38 - v17];
            do
            {
              if (v179 < 4)
              {
                v101 = 0;
              }

              else
              {
                v89 = 0;
                v90 = (a5 + v19 * v32);
                do
                {
                  v91 = 0uLL;
                  if (v33 < 1)
                  {
                    v95 = 0uLL;
                  }

                  else
                  {
                    v92 = v90;
                    v93 = v88;
                    v94 = v32;
                    v95 = 0uLL;
                    do
                    {
                      v96 = *v93;
                      v93 += 17;
                      v97 = vmulq_lane_f32(v176, v96, 1);
                      _Q4 = vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v92), v97), *v92, v96.f32[0]);
                      v95 = vaddq_f32(v95, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v92[1]), v97), v92[1], v96.f32[0]));
                      v91 = vaddq_f32(v91, _Q4);
                      ++v94;
                      v92 = (v92 + v19);
                    }

                    while (v94 < v86);
                  }

                  v98 = a5 + 8 * v87 * a6 + 8 * v89;
                  v13 = *v98;
                  v14 = *(v98 + 16);
                  v12 = vsubq_f32(v14, v95);
                  _Q0 = vsubq_f32(*v98, v91);
                  *v98 = _Q0;
                  *(v98 + 16) = v12;
                  v99 = v89 + 4;
                  v100 = v89 + 7;
                  v90 += 2;
                  v89 += 4;
                }

                while (v100 < v18);
                v101 = v99;
              }

              if (v101 < v179)
              {
                v102 = a5 + 8 * v87 * a6;
                v103 = a5 + v19 * v32 + 8 * v101;
                do
                {
                  if (v33 < 1)
                  {
                    v105 = 0;
                  }

                  else
                  {
                    v104 = 0;
                    v105 = 0;
                    v106 = v103;
                    v107 = v32;
                    do
                    {
                      *v14.f32 = v88[v104];
                      *_Q4.f32 = vmul_lane_f32(*&v26, *v14.f32, 1);
                      *v13.f32 = vmla_n_f32(vmul_f32(vrev64_s32(*v106), *_Q4.f32), *v106, v14.f32[0]);
                      v105 = vadd_f32(v105, *v13.f32);
                      ++v107;
                      v104 += 17;
                      v106 = (v106 + v19);
                    }

                    while (v107 < v86);
                  }

                  v12.i64[0] = *(v102 + 8 * v101);
                  *&_Q0.f64[0] = vsub_f32(*v12.f32, v105);
                  *(v102 + 8 * v101++) = _Q0.f64[0];
                  v103 += 8;
                }

                while (v101 != v27);
              }

              ++v87;
              ++v88;
            }

            while (v87 != v173);
          }

          v32 = (v33 + v32);
        }

        while (v86 < v17);
        v17 = v173;
      }

      if (v29 >= 1)
      {
        v165 = v17;
        v108 = v17 - 7;
        v166 = &v181[-v28];
        v170 = (a5 + v19 * v28);
        v171 = v28;
        v169 = -18 * v28;
        v109 = v28;
        v174 = v17;
        do
        {
          v110 = v109;
          v111 = v109 + 1;
          v112 = a7 + 16 * v110;
          if (v111 < v180)
          {
            v113 = *(v112 + 16);
            v114 = *(v112 + 20);
          }

          v115 = v110 * a6;
          if (v16 < 4)
          {
            v129 = 0;
          }

          else
          {
            v116 = 0;
            v117 = v170;
            do
            {
              v118 = 0uLL;
              v119 = 0uLL;
              if (v110 > v28)
              {
                v120 = v110 - v171;
                v121 = v117;
                v122 = &v166[v110];
                do
                {
                  v123 = *v122;
                  v122 += 17;
                  v124 = vmulq_lane_f32(v24, v123, 1);
                  v119 = vaddq_f32(v119, vmlaq_n_f32(vmulq_f32(vrev64q_s32(v121[1]), v124), v121[1], v123.f32[0]));
                  v118 = vaddq_f32(v118, vmlaq_n_f32(vmulq_f32(vrev64q_s32(*v121), v124), *v121, v123.f32[0]));
                  v121 = (v121 + v19);
                  --v120;
                }

                while (v120);
              }

              v125 = (a5 + 8 * v115 + 8 * v116);
              v126 = vsubq_f32(v125[1], v119);
              *v125 = vsubq_f32(*v125, v118);
              v125[1] = v126;
              v127 = v116 + 4;
              v128 = v116 + 7;
              v117 += 2;
              v116 += 4;
            }

            while (v128 < v18);
            v129 = v127;
          }

          if (v129 < v16)
          {
            v130 = a5 + 8 * v115;
            v131 = v170 + v129;
            do
            {
              v132 = 0;
              if (v110 > v28)
              {
                v133 = v110 - v171;
                v134 = v131;
                v135 = &v166[v110];
                do
                {
                  v136 = *v135;
                  v135 += 17;
                  v132 = vadd_f32(v132, vmla_n_f32(vmul_f32(vrev64_s32(*v134), vmul_lane_f32(*&v26, v136, 1)), *v134, v136.f32[0]));
                  v134 = (v134 + v19);
                  --v133;
                }

                while (v133);
              }

              *(v130 + 8 * v129) = vsub_f32(*(v130 + 8 * v129), v132);
              ++v129;
              ++v131;
            }

            while (v129 != v27);
          }

          if (v111 < v180)
          {
            v137 = *(v112 + 16);
            v138 = *(v112 + 20);
          }

          v139 = *v112;
          v140 = *(v112 + 4);
          hypotf(*v112, v140);
          __asm { FMOV            V4.4S, #-1.0 }

          v175 = _Q4;
          if (_NF ^ _VF | _ZF)
          {
            *v143.i32 = sub_23681E680(1.0, 0.0, v139, v140);
            v12 = vmulq_n_f32(vnegq_f64(v175), v144);
            if (v179 < 4)
            {
              v145 = 0;
            }

            else
            {
              v145 = 0;
              v146 = (a5 + 8 * v110 * a6);
              v147 = vdupq_lane_s32(v143, 0);
              do
              {
                v14 = *v146;
                _Q4 = v146[1];
                *v146 = vmlaq_f32(vmulq_f32(v12, vrev64q_s32(*v146)), v147, *v146);
                v146[1] = vmlaq_f32(vmulq_f32(v12, vrev64q_s32(_Q4)), v147, _Q4);
                v146 += 2;
                v148 = v145 + 7;
                v145 += 4;
              }

              while (v148 < v18);
              v145 = v145;
            }

            if (v145 < v179)
            {
              v149 = vdup_lane_s32(v143, 0);
              v150 = (a5 + v19 * v110 + 8 * v145);
              v151 = v27 - v145;
              do
              {
                *v14.f32 = vmla_f32(vmul_f32(*v12.f32, vrev64_s32(*v150)), v149, *v150);
                *v150++ = *v14.f32;
                --v151;
              }

              while (v151);
            }
          }

          else if (v179 >= 1)
          {
            v141 = (a5 + 4 + v19 * v110);
            v142 = v27;
            do
            {
              *(v141 - 1) = sub_23681E680(*(v141 - 1), *v141, *v112, *(v112 + 4));
              *v141 = v12.f32[0];
              v141 += 2;
              --v142;
            }

            while (v142);
          }

          v14.i32[0] = 2139095040;
          v152 = fabsf(*v112) == INFINITY;
          if (fabsf(*(v112 + 4)) == INFINITY)
          {
            v152 = 1;
          }

          if (v152)
          {
            v12.f32[0] = 0.0;
          }

          else
          {
            v12.i32[0] = *v112;
          }

          if (v152)
          {
            v153 = 0.0;
          }

          else
          {
            v153 = *(v112 + 4);
          }

          v13 = vnegq_f64(v175);
          _Q0 = vmulq_n_f32(v13, v153);
          v109 = v110 + 1;
          v154 = 17 * v110;
          v155 = v110 + 1;
          v17 = v174;
          if (v110 + 4 < v174)
          {
            v13 = vdupq_lane_s32(*v12.f32, 0);
            v156 = v109 - 4;
            v157 = (a3 + v167 * v110 + 8 * v109);
            v158 = &v181[v169 + v154 + v109];
            v155 = v110 + 1;
            do
            {
              _Q4 = *v157;
              v14 = v157[1];
              v157 += 2;
              v156 += 4;
              *v158 = vmlaq_f32(vmulq_f32(_Q0, vrev64q_s32(_Q4)), v13, _Q4);
              v158[1] = vmlaq_f32(vmulq_f32(_Q0, vrev64q_s32(v14)), v13, v14);
              v158 += 2;
              v155 += 4;
            }

            while (v156 < v108);
          }

          a7 = v177;
          LODWORD(v28) = v178;
          v24 = v176;
          if (v155 < v174)
          {
            *v12.f32 = vdup_lane_s32(*v12.f32, 0);
            v159 = (a3 + v167 * v110 + 8 * v155);
            v160 = &v181[v169 + v154 + v155];
            v161 = v165 - v155;
            do
            {
              v162 = *v159++;
              *v13.f32 = v162;
              *v14.f32 = vmla_f32(vmul_f32(*&_Q0.f64[0], vrev64_s32(v162)), *v12.f32, v162);
              *v160++ = v14.i64[0];
              --v161;
            }

            while (v161);
          }

          v16 = v179;
        }

        while (v109 < v174);
      }

      a2 = v164;
    }

    while (v17 < v164);
  }

  v163 = *MEMORY[0x277D85DE8];
}

void sub_2367839C4(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v239 = v8;
  v240 = v9;
  v11 = v10;
  v12 = v1;
  v259 = *MEMORY[0x277D85DE8];
  bzero(v258, 0x1210uLL);
  if (v11 >= 1)
  {
    v13 = v12;
    v14 = 0;
    v15 = v12;
    v16 = 16 * v5;
    v238 = 16 * v239;
    v17 = xmmword_23681FD30;
    v245 = v13;
    v246 = v11;
    v18 = v13;
    v243 = v3;
    v237 = v11;
    do
    {
      v19 = v14;
      if (v11 - v14 >= 16)
      {
        v20 = 16;
      }

      else
      {
        v20 = (v11 - v14);
      }

      v21 = v14 + v20 - 1;
      if (v21 + 1 < v246)
      {
        v22 = v3 + 32 * v21;
        v23 = *(v22 + 32);
        v24 = *(v22 + 40);
        v20 = v20;
      }

      v244 = v14;
      if (v14 <= 0)
      {
        v14 = (v20 + v14);
      }

      else
      {
        v25 = 0;
        v241 = (v20 + v14);
        do
        {
          if (v19 - v25 >= 16)
          {
            v26 = 16;
          }

          else
          {
            v26 = v19 - v25;
          }

          v27 = v25 + v26 - 1;
          if (v27 + 1 < v246)
          {
            v28 = v3 + 32 * v27;
            v29 = *(v28 + 32);
            v30 = *(v28 + 40);
          }

          v31 = v3 + 32 * v25;
          v32 = v20;
          sub_236785C28(v25, v19, v26, v20, v240 + 16 * v14 + 16 * v25 * v239, v239, v31, v258, 17);
          v20 = v32;
          v19 = v14;
          v13 = v245;
          v33 = v14;
          v17 = xmmword_23681FD30;
          if (v32 >= 4)
          {
            v34 = v26 + v25;
            v35 = v258;
            v36 = v14;
            LODWORD(v37) = v14 + 3;
            do
            {
              if (v245 < 4)
              {
                v125 = 0;
              }

              else
              {
                v38 = 0;
                v39 = v7 + v16 * v25;
                do
                {
                  if (v26 < 1)
                  {
                    v55 = 0uLL;
                    v56 = 0uLL;
                    v57 = 0uLL;
                    v58 = 0uLL;
                    v51 = 0uLL;
                    v52 = 0uLL;
                    v53 = 0uLL;
                    v54 = 0uLL;
                    v47 = 0uLL;
                    v48 = 0uLL;
                    v49 = 0uLL;
                    v50 = 0uLL;
                    v40 = 0uLL;
                    v42 = 0uLL;
                    v44 = 0uLL;
                    v46 = 0uLL;
                  }

                  else
                  {
                    v40 = 0uLL;
                    v41 = v39;
                    v42 = 0uLL;
                    v43 = v35;
                    v44 = 0uLL;
                    v45 = v25;
                    v46 = 0uLL;
                    v47 = 0uLL;
                    v48 = 0uLL;
                    v49 = 0uLL;
                    v50 = 0uLL;
                    v51 = 0uLL;
                    v52 = 0uLL;
                    v53 = 0uLL;
                    v54 = 0uLL;
                    v55 = 0uLL;
                    v56 = 0uLL;
                    v57 = 0uLL;
                    v58 = 0uLL;
                    do
                    {
                      v247 = v56;
                      v248 = v54;
                      v249 = v49;
                      v251 = v50;
                      v254 = v47;
                      v256 = v53;
                      v60 = *(v41 + 32);
                      v59 = *(v41 + 48);
                      v61 = *(v41 + 16);
                      v62 = vextq_s8(*v41, *v41, 8uLL);
                      v63 = vextq_s8(v61, v61, 8uLL);
                      v64 = vextq_s8(v60, v60, 8uLL);
                      v65 = vextq_s8(v59, v59, 8uLL);
                      v66 = v43[2];
                      v67 = v43[3];
                      v69 = *v43;
                      v68 = v43[1];
                      v43 += 17;
                      v70 = v40;
                      v71 = vmulq_laneq_f64(xmmword_23681FD30, v69, 1);
                      v72 = vmulq_f64(v65, v71);
                      v73 = vmulq_f64(v64, v71);
                      v74 = vmulq_f64(v63, v71);
                      v75 = vmlaq_n_f64(vmulq_f64(v62, v71), *v41, v69.f64[0]);
                      v76 = vmlaq_n_f64(v74, v61, v69.f64[0]);
                      v77 = vmlaq_n_f64(v73, v60, v69.f64[0]);
                      v78 = vmlaq_n_f64(v72, v59, v69.f64[0]);
                      v79 = vmulq_laneq_f64(xmmword_23681FD30, v68, 1);
                      v80 = v55;
                      v81 = vmulq_f64(v65, v79);
                      v82 = vmulq_f64(v64, v79);
                      v83 = v58;
                      v84 = vmulq_f64(v63, v79);
                      v85 = vmlaq_n_f64(vmulq_f64(v62, v79), *v41, v68.f64[0]);
                      v86 = vmlaq_n_f64(v84, v61, v68.f64[0]);
                      v87 = vmlaq_n_f64(v82, v60, v68.f64[0]);
                      v88 = vmlaq_n_f64(v81, v59, v68.f64[0]);
                      v89 = vmulq_laneq_f64(xmmword_23681FD30, v66, 1);
                      v90 = v57;
                      v91 = vmulq_f64(v65, v89);
                      v92 = v51;
                      v93 = vmulq_f64(v64, v89);
                      v94 = v52;
                      v95 = vmulq_f64(v63, v89);
                      v96 = vmlaq_n_f64(vmulq_f64(v62, v89), *v41, v66.f64[0]);
                      v97 = vmlaq_n_f64(v95, v61, v66.f64[0]);
                      v98 = vmlaq_n_f64(v93, v60, v66.f64[0]);
                      v99 = vmlaq_n_f64(v91, v59, v66.f64[0]);
                      v100 = vmulq_laneq_f64(xmmword_23681FD30, v67, 1);
                      v101 = vmlaq_n_f64(vmulq_f64(v62, v100), *v41, v67.f64[0]);
                      v102 = vmlaq_n_f64(vmulq_f64(v63, v100), v61, v67.f64[0]);
                      v103 = vmlaq_n_f64(vmulq_f64(v64, v100), v60, v67.f64[0]);
                      v104 = vmlaq_n_f64(vmulq_f64(v65, v100), v59, v67.f64[0]);
                      v46 = vaddq_f64(v46, v78);
                      v44 = vaddq_f64(v44, v77);
                      v42 = vaddq_f64(v42, v76);
                      v40 = vaddq_f64(v70, v75);
                      v50 = vaddq_f64(v251, v88);
                      v105 = v80;
                      v49 = vaddq_f64(v249, v87);
                      v48 = vaddq_f64(v48, v86);
                      v106 = v83;
                      v47 = vaddq_f64(v254, v85);
                      v54 = vaddq_f64(v248, v99);
                      v53 = vaddq_f64(v256, v98);
                      v52 = vaddq_f64(v94, v97);
                      v51 = vaddq_f64(v92, v96);
                      v58 = vaddq_f64(v106, v104);
                      v57 = vaddq_f64(v90, v103);
                      v56 = vaddq_f64(v247, v102);
                      v55 = vaddq_f64(v105, v101);
                      ++v45;
                      v41 += v16;
                    }

                    while (v45 < v34);
                  }

                  v107 = (v7 + 16 * v36 * v5 + 16 * v38);
                  v108 = vsubq_f64(v107[3], v46);
                  v109 = vsubq_f64(v107[1], v42);
                  v110 = vsubq_f64(v107[2], v44);
                  *v107 = vsubq_f64(*v107, v40);
                  v107[1] = v109;
                  v107[2] = v110;
                  v107[3] = v108;
                  v111 = (v7 + 16 * (v5 + v36 * v5) + 16 * v38);
                  v112 = vsubq_f64(v111[2], v49);
                  v113 = vsubq_f64(v111[1], v48);
                  v114 = vsubq_f64(v111[3], v50);
                  *v111 = vsubq_f64(*v111, v47);
                  v111[1] = v113;
                  v111[2] = v112;
                  v111[3] = v114;
                  v115 = (v7 + 16 * (v36 + 2) * v5 + 16 * v38);
                  v116 = vsubq_f64(v115[2], v53);
                  v117 = vsubq_f64(v115[1], v52);
                  v118 = vsubq_f64(v115[3], v54);
                  *v115 = vsubq_f64(*v115, v51);
                  v115[1] = v117;
                  v115[2] = v116;
                  v115[3] = v118;
                  v119 = (v7 + 16 * v37 * v5 + 16 * v38);
                  v120 = vsubq_f64(v119[2], v57);
                  v121 = vsubq_f64(v119[1], v56);
                  v122 = vsubq_f64(v119[3], v58);
                  *v119 = vsubq_f64(*v119, v55);
                  v119[1] = v121;
                  v119[2] = v120;
                  v119[3] = v122;
                  v123 = v38 + 4;
                  v124 = v38 + 7;
                  v39 += 64;
                  v38 += 4;
                }

                while (v124 < v15);
                v125 = v123;
                v17 = xmmword_23681FD30;
              }

              if (v125 < v245)
              {
                v126 = v7 + 16 * v37 * v5;
                v127 = v7 + v16 * v25 + 16 * v125;
                do
                {
                  if (v26 < 1)
                  {
                    v134 = 0uLL;
                    v133 = 0uLL;
                    v132 = 0uLL;
                    v128 = 0uLL;
                  }

                  else
                  {
                    v128 = 0uLL;
                    v129 = v127;
                    v130 = v35;
                    v131 = v25;
                    v132 = 0uLL;
                    v133 = 0uLL;
                    v134 = 0uLL;
                    do
                    {
                      v135 = vextq_s8(*v129, *v129, 8uLL);
                      v137 = v130[2];
                      v136 = v130[3];
                      v139 = *v130;
                      v138 = v130[1];
                      v130 += 17;
                      v128 = vaddq_f64(v128, vmlaq_n_f64(vmulq_f64(v135, vmulq_laneq_f64(v17, v139, 1)), *v129, v139.f64[0]));
                      v132 = vaddq_f64(v132, vmlaq_n_f64(vmulq_f64(v135, vmulq_laneq_f64(v17, v138, 1)), *v129, v138.f64[0]));
                      v133 = vaddq_f64(v133, vmlaq_n_f64(vmulq_f64(v135, vmulq_laneq_f64(v17, v137, 1)), *v129, v137.f64[0]));
                      v134 = vaddq_f64(v134, vmlaq_n_f64(vmulq_f64(v135, vmulq_laneq_f64(v17, v136, 1)), *v129, v136.f64[0]));
                      ++v131;
                      v129 = (v129 + v16);
                    }

                    while (v131 < v34);
                  }

                  *(v7 + 16 * v36 * v5 + 16 * v125) = vsubq_f64(*(v7 + 16 * v36 * v5 + 16 * v125), v128);
                  *(v7 + 16 * (v5 + v36 * v5) + 16 * v125) = vsubq_f64(*(v7 + 16 * (v5 + v36 * v5) + 16 * v125), v132);
                  *(v7 + 16 * (v36 + 2) * v5 + 16 * v125) = vsubq_f64(*(v7 + 16 * (v36 + 2) * v5 + 16 * v125), v133);
                  *(v126 + 16 * v125) = vsubq_f64(*(v126 + 16 * v125), v134);
                  ++v125;
                  v127 += 16;
                }

                while (v125 != v18);
              }

              v33 = v36 + 4;
              v37 = v36 + 7;
              v35 += 4;
              v36 += 4;
            }

            while (v37 < v241);
          }

          v140 = v26 + v25;
          v3 = v243;
          if (v33 < v241)
          {
            v141 = v33;
            v142 = &v258[v33 - v14];
            do
            {
              if (v245 < 4)
              {
                v159 = 0;
              }

              else
              {
                v143 = 0;
                v144 = (v7 + v16 * v25);
                do
                {
                  v145 = 0uLL;
                  if (v26 < 1)
                  {
                    v149 = 0uLL;
                    v150 = 0uLL;
                    v151 = 0uLL;
                  }

                  else
                  {
                    v146 = v144;
                    v147 = v142;
                    v148 = v25;
                    v149 = 0uLL;
                    v150 = 0uLL;
                    v151 = 0uLL;
                    do
                    {
                      v152 = vmulq_laneq_f64(v17, *v147, 1);
                      v151 = vaddq_f64(v151, vmlaq_n_f64(vmulq_f64(vextq_s8(v146[3], v146[3], 8uLL), v152), v146[3], v147->f64[0]));
                      v150 = vaddq_f64(v150, vmlaq_n_f64(vmulq_f64(vextq_s8(v146[2], v146[2], 8uLL), v152), v146[2], v147->f64[0]));
                      v149 = vaddq_f64(v149, vmlaq_n_f64(vmulq_f64(vextq_s8(v146[1], v146[1], 8uLL), v152), v146[1], v147->f64[0]));
                      v145 = vaddq_f64(v145, vmlaq_n_f64(vmulq_f64(vextq_s8(*v146, *v146, 8uLL), v152), *v146, v147->f64[0]));
                      ++v148;
                      v147 += 17;
                      v146 = (v146 + v16);
                    }

                    while (v148 < v140);
                  }

                  v153 = (v7 + 16 * v141 * v5 + 16 * v143);
                  v154 = vsubq_f64(v153[3], v151);
                  v155 = vsubq_f64(v153[1], v149);
                  v156 = vsubq_f64(v153[2], v150);
                  *v153 = vsubq_f64(*v153, v145);
                  v153[1] = v155;
                  v153[2] = v156;
                  v153[3] = v154;
                  v157 = v143 + 4;
                  v158 = v143 + 7;
                  v144 += 4;
                  v143 += 4;
                }

                while (v158 < v15);
                v159 = v157;
              }

              if (v159 < v245)
              {
                v160 = v7 + v16 * v25 + 16 * v159;
                do
                {
                  if (v26 < 1)
                  {
                    v162 = 0uLL;
                  }

                  else
                  {
                    v161 = 0;
                    v162 = 0uLL;
                    v163 = v160;
                    v164 = v25;
                    do
                    {
                      v162 = vaddq_f64(v162, vmlaq_n_f64(vmulq_f64(vextq_s8(*v163, *v163, 8uLL), vmulq_laneq_f64(v17, v142[v161], 1)), *v163, v142[v161].f64[0]));
                      ++v164;
                      v161 += 17;
                      v163 = (v163 + v16);
                    }

                    while (v164 < v140);
                  }

                  *(v7 + 16 * v141 * v5 + 16 * v159) = vsubq_f64(*(v7 + 16 * v141 * v5 + 16 * v159), v162);
                  ++v159;
                  v160 += 16;
                }

                while (v159 != v18);
              }

              ++v141;
              ++v142;
            }

            while (v141 != v241);
          }

          v25 = (v26 + v25);
        }

        while (v140 < v14);
        v14 = v241;
      }

      if (v20 >= 1)
      {
        v250 = v14;
        v165 = v14 - 7;
        v252 = &v258[-v19];
        v257 = v19;
        v255 = (v7 + v16 * v19);
        v253 = -18 * v19;
        v166 = v19;
        v242 = v14;
        do
        {
          v167 = v166;
          v168 = v166 + 1;
          v169 = v3 + 32 * v167;
          if (v168 < v246)
          {
            v170 = *(v169 + 32);
            v171 = *(v169 + 40);
          }

          v172 = v167 * v5;
          if (v13 < 4)
          {
            v189 = 0;
          }

          else
          {
            v173 = 0;
            v174 = v255;
            do
            {
              v175 = 0uLL;
              if (v167 <= v19)
              {
                v179 = 0uLL;
                v180 = 0uLL;
                v181 = 0uLL;
              }

              else
              {
                v176 = v167 - v257;
                v177 = v174;
                v178 = &v252[v167];
                v179 = 0uLL;
                v180 = 0uLL;
                v181 = 0uLL;
                do
                {
                  v182 = vmulq_laneq_f64(v17, *v178, 1);
                  v181 = vaddq_f64(v181, vmlaq_n_f64(vmulq_f64(vextq_s8(v177[3], v177[3], 8uLL), v182), v177[3], v178->f64[0]));
                  v180 = vaddq_f64(v180, vmlaq_n_f64(vmulq_f64(vextq_s8(v177[2], v177[2], 8uLL), v182), v177[2], v178->f64[0]));
                  v179 = vaddq_f64(v179, vmlaq_n_f64(vmulq_f64(vextq_s8(v177[1], v177[1], 8uLL), v182), v177[1], v178->f64[0]));
                  v175 = vaddq_f64(v175, vmlaq_n_f64(vmulq_f64(vextq_s8(*v177, *v177, 8uLL), v182), *v177, v178->f64[0]));
                  v178 += 17;
                  v177 = (v177 + v16);
                  --v176;
                }

                while (v176);
              }

              v183 = (v7 + 16 * v172 + 16 * v173);
              v184 = vsubq_f64(v183[3], v181);
              v185 = vsubq_f64(v183[1], v179);
              v186 = vsubq_f64(v183[2], v180);
              *v183 = vsubq_f64(*v183, v175);
              v183[1] = v185;
              v183[2] = v186;
              v183[3] = v184;
              v187 = v173 + 4;
              v188 = v173 + 7;
              v174 += 4;
              v173 += 4;
            }

            while (v188 < v15);
            v189 = v187;
          }

          if (v189 < v13)
          {
            v190 = v7 + 16 * v172;
            v191 = &v255[v189];
            do
            {
              v192 = 0uLL;
              if (v167 > v19)
              {
                v193 = v167 - v257;
                v194 = v191;
                v195 = &v252[v167];
                do
                {
                  v192 = vaddq_f64(v192, vmlaq_n_f64(vmulq_f64(vextq_s8(*v194, *v194, 8uLL), vmulq_laneq_f64(v17, *v195, 1)), *v194, v195->f64[0]));
                  v195 += 17;
                  v194 = (v194 + v16);
                  --v193;
                }

                while (v193);
              }

              *(v190 + 16 * v189) = vsubq_f64(*(v190 + 16 * v189), v192);
              ++v189;
              ++v191;
            }

            while (v189 != v18);
          }

          if (v168 < v246)
          {
            v196 = *(v169 + 32);
            v197 = *(v169 + 40);
          }

          v198 = *v169;
          v199 = *(v169 + 8);
          v200 = hypot(*v169, v199);
          if (v200 >= COERCE_DOUBLE(0x4000000000000) && v200 <= 4.49423284e307)
          {
            *&v205 = sub_23681E17C(1.0, 0.0, v198, v199);
            v207 = vmulq_n_f64(xmmword_23681FB50, v206);
            if (v245 < 4)
            {
              v208 = 0;
            }

            else
            {
              v208 = 0;
              v209 = (v7 + 16 * v167 * v5);
              v210 = vdupq_lane_s64(v205, 0);
              do
              {
                v211 = vmlaq_f64(vmulq_f64(v207, vextq_s8(v209[3], v209[3], 8uLL)), v210, v209[3]);
                v212 = vmlaq_f64(vmulq_f64(v207, vextq_s8(v209[1], v209[1], 8uLL)), v210, v209[1]);
                v213 = vmlaq_f64(vmulq_f64(v207, vextq_s8(v209[2], v209[2], 8uLL)), v210, v209[2]);
                *v209 = vmlaq_f64(vmulq_f64(v207, vextq_s8(*v209, *v209, 8uLL)), v210, *v209);
                v209[1] = v212;
                v209[2] = v213;
                v209[3] = v211;
                v214 = v208 + 7;
                v208 += 4;
                v209 += 4;
              }

              while (v214 < v15);
              v208 = v208;
            }

            if (v208 < v245)
            {
              v215 = vdupq_lane_s64(v205, 0);
              v216 = (v7 + v16 * v167 + 16 * v208);
              v217 = v18 - v208;
              do
              {
                *v216 = vmlaq_f64(vmulq_f64(v207, vextq_s8(*v216, *v216, 8uLL)), v215, *v216);
                ++v216;
                --v217;
              }

              while (v217);
            }
          }

          else if (v245 >= 1)
          {
            v202 = (v7 + 8 + v16 * v167);
            v203 = v18;
            do
            {
              *(v202 - 1) = sub_23681E17C(*(v202 - 1), *v202, *v169, *(v169 + 8));
              *v202 = v204;
              v202 += 2;
              --v203;
            }

            while (v203);
          }

          v218 = fabs(*v169) == INFINITY;
          if (fabs(*(v169 + 8)) == INFINITY)
          {
            v218 = 1;
          }

          if (v218)
          {
            v219 = 0.0;
          }

          else
          {
            v219 = *v169;
          }

          if (v218)
          {
            v220 = 0.0;
          }

          else
          {
            v220 = *(v169 + 8);
          }

          v221 = vmulq_n_f64(xmmword_23681FB50, v220);
          v166 = v167 + 1;
          v222 = 17 * v167;
          v223 = v167 + 1;
          v14 = v242;
          if (v167 + 4 < v242)
          {
            v224 = vdupq_lane_s64(*&v219, 0);
            v225 = v166 - 4;
            v226 = (v240 + v238 * v167 + 16 * v166);
            v227 = &v258[v253 + v222 + v166];
            v223 = v167 + 1;
            do
            {
              v228 = vmlaq_f64(vmulq_f64(v221, vextq_s8(v226[3], v226[3], 8uLL)), v224, v226[3]);
              v229 = vmlaq_f64(vmulq_f64(v221, vextq_s8(v226[1], v226[1], 8uLL)), v224, v226[1]);
              v230 = vmlaq_f64(vmulq_f64(v221, vextq_s8(v226[2], v226[2], 8uLL)), v224, v226[2]);
              *v227 = vmlaq_f64(vmulq_f64(v221, vextq_s8(*v226, *v226, 8uLL)), v224, *v226);
              v227[1] = v229;
              v225 += 4;
              v227[2] = v230;
              v227[3] = v228;
              v226 += 4;
              v227 += 4;
              v223 += 4;
            }

            while (v225 < v165);
          }

          v3 = v243;
          LODWORD(v19) = v244;
          v17 = xmmword_23681FD30;
          if (v223 < v242)
          {
            v231 = vdupq_lane_s64(*&v219, 0);
            v232 = (v240 + v238 * v167 + 16 * v223);
            v233 = &v258[v253 + v222 + v223];
            v234 = v250 - v223;
            do
            {
              v235 = *v232++;
              *v233++ = vmlaq_f64(vmulq_f64(v221, vextq_s8(v235, v235, 8uLL)), v231, v235);
              --v234;
            }

            while (v234);
          }

          v13 = v245;
        }

        while (v166 < v242);
      }

      v11 = v237;
    }

    while (v14 < v237);
  }

  v236 = *MEMORY[0x277D85DE8];
}

void sub_236784EE4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 + 1 < a3)
      {
        v10 = *(a7 + 8 + 8 * v9);
      }

      v11 = *(a7 + 8 * v9);
      if (fabsf(v11) == INFINITY)
      {
        v11 = 0.0;
      }

      if (a4 < 8)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v13 = (a5 + 4 * v9 * a6);
        v14 = (a8 + 4 * v9 * a9);
        do
        {
          v16 = *v13;
          v15 = v13[1];
          v13 += 2;
          v17 = v12 + 15;
          *v14 = vmulq_n_f32(v16, v11);
          v14[1] = vmulq_n_f32(v15, v11);
          v14 += 2;
          v12 += 8;
        }

        while (v17 < a4);
        v12 = v12;
      }

      if (v12 < a4)
      {
        v18 = (a5 + 4 * a6 * v9 + 4 * v12);
        v19 = (a8 + 4 * a9 * v9 + 4 * v12);
        v20 = a4 - v12;
        do
        {
          v21 = *v18++;
          *v19++ = v11 * v21;
          --v20;
        }

        while (v20);
      }

      ++v9;
    }

    while (v9 < a3);
  }
}

void sub_2367850FC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 + 1 < a3)
      {
        v10 = *(a7 + 16 + 16 * v9);
      }

      v11 = *(a7 + 16 * v9);
      if (fabs(v11) == INFINITY)
      {
        v11 = 0.0;
      }

      if (a4 < 8)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        v13 = (a5 + 8 * v9 * a6);
        v14 = (a8 + 8 * v9 * a9);
        do
        {
          v15 = vmulq_n_f64(v13[3], v11);
          v16 = vmulq_n_f64(v13[2], v11);
          v17 = vmulq_n_f64(v13[1], v11);
          *v14 = vmulq_n_f64(*v13, v11);
          v14[1] = v17;
          v18 = v12 + 15;
          v14[2] = v16;
          v14[3] = v15;
          v12 += 8;
          v13 += 4;
          v14 += 4;
        }

        while (v18 < a4);
        v12 = v12;
      }

      if (v12 < a4)
      {
        v19 = (a5 + 8 * a6 * v9 + 8 * v12);
        v20 = (a8 + 8 * a9 * v9 + 8 * v12);
        v21 = a4 - v12;
        do
        {
          v22 = *v19++;
          *v20++ = v11 * v22;
          --v21;
        }

        while (v21);
      }

      ++v9;
    }

    while (v9 < a3);
  }
}

void sub_236785364(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a7 >= 1)
  {
    v13 = 0;
    __asm { FMOV            V0.4S, #-1.0 }

    v19 = vnegq_f64(_Q0);
    do
    {
      v20 = a11 + 16 * v13;
      if (v13 + 1 < a7)
      {
        v21 = *(v20 + 16);
        v22 = *(v20 + 20);
      }

      v23 = *v20;
      v24 = *(v20 + 4);
      v25 = fabsf(*v20) == INFINITY;
      if (fabsf(v24) == INFINITY)
      {
        v25 = 1;
      }

      if (v25)
      {
        *&a4 = 0.0;
      }

      else
      {
        *&a4 = v23;
      }

      if (v25)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v24;
      }

      v27 = vmulq_n_f32(v19, v26);
      v28 = v13 * a10;
      if (a8 >= 4)
      {
        v29 = (a9 + 8 * v28);
        v30 = vdupq_lane_s32(*&a4, 0);
        v31 = (a12 + 8 * v13 * a13);
        for (i = 3; i < a8; i += 4)
        {
          v34 = *v29;
          v33 = v29[1];
          v29 += 2;
          *v31 = vmlaq_f32(vmulq_f32(v27, vrev64q_s32(v34)), v30, v34);
          v31[1] = vmlaq_f32(vmulq_f32(v27, vrev64q_s32(v33)), v30, v33);
          v31 += 2;
        }
      }

      if (a8 >= 1)
      {
        v35 = (a9 + 8 * v28);
        a4 = COERCE_DOUBLE(vdup_lane_s32(*&a4, 0));
        v36 = (a12 + 8 * v13 * a13);
        v37 = a8;
        do
        {
          v38 = *v35++;
          *v36++ = vmla_f32(vmul_f32(*v27.f32, vrev64_s32(v38)), *&a4, v38);
          --v37;
        }

        while (v37);
      }

      ++v13;
    }

    while (v13 < a7);
  }
}

void sub_236785604(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = a7 + 32 * v9;
      if (v9 + 1 < a3)
      {
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
      }

      v13 = *v10;
      v14 = *(v10 + 8);
      v15 = fabs(*v10) == INFINITY;
      if (fabs(v14) == INFINITY)
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v13;
      }

      if (v15)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v14;
      }

      v18 = vmulq_n_f64(xmmword_23681FB50, v17);
      v19 = v9 * a6;
      if (a4 >= 4)
      {
        v20 = a5 + 16 * v19;
        v21 = vdupq_lane_s64(*&v16, 0);
        v22 = (a8 + 16 * v9 * a9);
        for (i = 3; i < a4; i += 4)
        {
          v24 = *(v20 + 32);
          v25 = vmlaq_f64(vmulq_f64(v18, vextq_s8(*(v20 + 48), *(v20 + 48), 8uLL)), v21, *(v20 + 48));
          v26 = vmlaq_f64(vmulq_f64(v18, vextq_s8(*(v20 + 16), *(v20 + 16), 8uLL)), v21, *(v20 + 16));
          *v22 = vmlaq_f64(vmulq_f64(v18, vextq_s8(*v20, *v20, 8uLL)), v21, *v20);
          v22[1] = v26;
          v22[2] = vmlaq_f64(vmulq_f64(v18, vextq_s8(v24, v24, 8uLL)), v21, v24);
          v22[3] = v25;
          v20 += 64;
          v22 += 4;
        }
      }

      if (a4 >= 1)
      {
        v27 = (a5 + 16 * v19);
        v28 = vdupq_lane_s64(*&v16, 0);
        v29 = (a8 + 16 * v9 * a9);
        v30 = a4;
        do
        {
          v31 = *v27++;
          *v29++ = vmlaq_f64(vmulq_f64(v18, vextq_s8(v31, v31, 8uLL)), v28, v31);
          --v30;
        }

        while (v30);
      }

      ++v9;
    }

    while (v9 < a3);
  }
}

void sub_236785974(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, int a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a8 >= 1)
  {
    v14 = 0;
    __asm { FMOV            V0.4S, #-1.0 }

    v20 = vnegq_f64(_Q0);
    __asm { FMOV            V1.4S, #1.0 }

    do
    {
      v22 = a12 + 16 * v14;
      if (v14 + 1 < a8)
      {
        v23 = *(v22 + 16);
        v24 = *(v22 + 20);
      }

      v25 = *v22;
      v26 = *(v22 + 4);
      v27 = fabsf(*v22) == INFINITY;
      if (fabsf(v26) == INFINITY)
      {
        v27 = 1;
      }

      if (v27)
      {
        *&a5 = 0.0;
      }

      else
      {
        *&a5 = v25;
      }

      if (v27)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v26;
      }

      v29 = vmulq_n_f32(v20, v28);
      v30 = v14 * a11;
      if (a9 >= 4)
      {
        v31 = (a10 + 8 * v30);
        v32 = vdupq_lane_s32(*&a5, 0);
        v33 = (a13 + 8 * v14 * a14);
        for (i = 3; i < a9; i += 4)
        {
          v36 = *v31;
          v35 = v31[1];
          v31 += 2;
          *v33 = vmlaq_f32(vmulq_f32(v29, vrev64q_s32(v36)), v32, v36);
          v33[1] = vmlaq_f32(vmulq_f32(v29, vrev64q_s32(v35)), v32, v35);
          v33 += 2;
        }
      }

      if (a9 >= 1)
      {
        v37 = (a10 + 8 * v30);
        a5 = COERCE_DOUBLE(vdup_lane_s32(*&a5, 0));
        v38 = (a13 + 8 * v14 * a14);
        v39 = a9;
        do
        {
          v40 = *v37++;
          *v38++ = vmla_f32(vmul_f32(*v29.f32, vrev64_s32(v40)), *&a5, v40);
          --v39;
        }

        while (v39);
      }

      ++v14;
    }

    while (v14 < a8);
  }
}

void sub_236785C28(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = a7 + 32 * v9;
      if (v9 + 1 < a3)
      {
        v11 = *(v10 + 32);
        v12 = *(v10 + 40);
      }

      v13 = *v10;
      v14 = *(v10 + 8);
      v15 = fabs(*v10) == INFINITY;
      if (fabs(v14) == INFINITY)
      {
        v15 = 1;
      }

      if (v15)
      {
        v16 = 0.0;
      }

      else
      {
        v16 = v13;
      }

      if (v15)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v14;
      }

      v18 = vmulq_n_f64(xmmword_23681FB50, v17);
      v19 = v9 * a6;
      if (a4 >= 4)
      {
        v20 = a5 + 16 * v19;
        v21 = vdupq_lane_s64(*&v16, 0);
        v22 = (a8 + 16 * v9 * a9);
        for (i = 3; i < a4; i += 4)
        {
          v24 = *(v20 + 16);
          v25 = *(v20 + 48);
          v26 = vmlaq_f64(vmulq_f64(v18, vextq_s8(*(v20 + 32), *(v20 + 32), 8uLL)), v21, *(v20 + 32));
          *v22 = vmlaq_f64(vmulq_f64(v18, vextq_s8(*v20, *v20, 8uLL)), v21, *v20);
          v22[1] = vmlaq_f64(vmulq_f64(v18, vextq_s8(v24, v24, 8uLL)), v21, v24);
          v22[2] = v26;
          v22[3] = vmlaq_f64(vmulq_f64(v18, vextq_s8(v25, v25, 8uLL)), v21, v25);
          v20 += 64;
          v22 += 4;
        }
      }

      if (a4 >= 1)
      {
        v27 = (a5 + 16 * v19);
        v28 = vdupq_lane_s64(*&v16, 0);
        v29 = (a8 + 16 * v9 * a9);
        v30 = a4;
        do
        {
          v31 = *v27++;
          *v29++ = vmlaq_f64(vmulq_f64(v18, vextq_s8(v31, v31, 8uLL)), v28, v31);
          --v30;
        }

        while (v30);
      }

      ++v9;
    }

    while (v9 < a3);
  }
}

void sub_236785FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *(a1 + 4);
  *a6 = *a1;
  *(a6 + 4) = v7;
  v8 = a3 + 2;
  v9 = &a3[v7 + 2];
  *(a6 + 8) = a3;
  *(a6 + 16) = v9;
  *(a6 + 24) = 0;
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 28) = *(a1 + 28);
  if (v7 <= 0)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    bzero(a3 + 2, 8 * v7);
    for (i = 0; i != v7; ++i)
    {
      if (a5)
      {
        *(a5 + 8 * i) = 0;
      }

      if (!a2 || *(a2 + 4 * i) >= 1)
      {
        v15 = (*(a1 + 8) + 8 * i);
        v16 = *v15;
        if (*v15 < v15[1])
        {
          v17 = *(a1 + 16);
          v18 = ~v16;
          do
          {
            v19 = *(v17 + 4 * v16);
            if (i >= v19 && (!a2 || *(a2 + 4 * v19) >= 1))
            {
              if (a5 && i == v19)
              {
                *(a5 + 8 * i) = v18;
              }

              else
              {
                ++v8[i];
                if (i != v19)
                {
                  ++v8[v19];
                }
              }
            }

            ++v16;
            --v18;
          }

          while (v16 < v15[1]);
        }
      }
    }

    v20 = 0;
    a3[1] = 0;
    v21 = a3 + 1;
    v22 = 2;
    v23 = v7;
    do
    {
      v20 += a3[v22];
      a3[v22++] = v20;
      --v23;
    }

    while (v23);
    v24 = 0;
    *a3 = 0;
    do
    {
      if (!a2 || *(a2 + 4 * v24) >= 1)
      {
        v25 = (*(a1 + 8) + 8 * v24);
        v26 = *v25;
        if (*v25 < v25[1])
        {
          v27 = *(a1 + 16);
          v28 = ~v26;
          do
          {
            v29 = *(v27 + 4 * v26);
            if (v24 >= v29 && (!a5 || v24 != v29) && (!a2 || *(a2 + 4 * v29) >= 1))
            {
              v30 = v21[v24];
              *(v9 + 4 * v30) = v29;
              *(a4 + 8 * v30) = v26 + 1;
              ++v21[v24];
              if (v24 != v29)
              {
                v31 = v21[v29];
                *(v9 + 4 * v31) = v24;
                *(a4 + 8 * v31) = v28;
                ++v21[v29];
              }
            }

            ++v26;
            --v28;
          }

          while (v26 < v25[1]);
          LODWORD(v7) = *(a1 + 4);
        }
      }

      ++v24;
    }

    while (v24 < v7);
  }
}

void sub_2367861D0(int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  *a6 = *a1;
  *(a6 + 4) = v8;
  v9 = a3 + 2;
  v10 = &a3[v8 + 2];
  *(a6 + 8) = a3;
  *(a6 + 16) = v10;
  *(a6 + 24) = 0;
  *(a6 + 24) = a1[6];
  *(a6 + 28) = *(a1 + 28);
  if (v8 <= 0)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  bzero(a3 + 2, 8 * v8);
  for (i = 0; i != v8; ++i)
  {
    if (a5)
    {
      *(a5 + 8 * i) = 0;
    }

    if (!a2 || *(a2 + 4 * i) >= 1)
    {
      v16 = (*(a1 + 1) + 8 * i);
      v17 = *v16;
      if (*v16 < v16[1])
      {
        v18 = *(a1 + 2);
        while (1)
        {
          v19 = *(v18 + 4 * v17);
          v20 = i <= v19 && v19 < v7;
          if (!v20 || a2 && *(a2 + 4 * v19) < 1)
          {
            goto LABEL_21;
          }

          if (a5)
          {
            v21 = v17;
            v22 = (a5 + 8 * i);
            if (i == v19)
            {
              goto LABEL_20;
            }
          }

          ++v9[i];
          if (i != v19)
          {
            break;
          }

LABEL_21:
          if (++v17 >= v16[1])
          {
            goto LABEL_22;
          }
        }

        v22 = &v9[v19];
        v21 = *v22;
LABEL_20:
        *v22 = v21 + 1;
        goto LABEL_21;
      }
    }

LABEL_22:
    ;
  }

  v23 = 0;
  a3[1] = 0;
  v24 = a3 + 1;
  v25 = 2;
  v26 = v8;
  do
  {
    v23 += a3[v25];
    a3[v25++] = v23;
    --v26;
  }

  while (v26);
  v27 = 0;
  *a3 = 0;
  do
  {
    if (!a2 || *(a2 + 4 * v27) >= 1)
    {
      v28 = (*(a1 + 1) + 8 * v27);
      v29 = *v28;
      if (*v28 < v28[1])
      {
        v30 = *(a1 + 2);
        v31 = ~v29;
        do
        {
          v32 = *(v30 + 4 * v29);
          if (v27 <= v32 && v32 < *a1 && (!a5 || v27 != v32) && (!a2 || *(a2 + 4 * v32) >= 1))
          {
            v33 = v24[v27];
            *(v10 + 4 * v33) = v32;
            *(a4 + 8 * v33) = v29 + 1;
            ++v24[v27];
            if (v27 != v32)
            {
              v34 = v24[v32];
              *(v10 + 4 * v34) = v27;
              *(a4 + 8 * v34) = v31;
              ++v24[v32];
            }
          }

          ++v29;
          --v31;
        }

        while (v29 < v28[1]);
        LODWORD(v8) = a1[1];
      }
    }

    ++v27;
  }

  while (v27 < v8);
}

void sub_236786410(uint64_t a1, double *__b, char *a3)
{
  v4 = __b;
  v6 = *(a1 + 4);
  v7 = *(a1 + 28);
  v8 = (v7 * v7);
  v75 = v6;
  v9 = (v6 * v7);
  if (v9 >= 1)
  {
    memset_pattern16(__b, &unk_23681FAF0, 8 * (v6 * v7));
  }

  v71 = 8 * v9;
  v72 = v9;
  v10 = 0;
  v11 = v7 + 1;
  v12 = 8 * (v7 * v7);
  v13 = 8 * v7;
  do
  {
    while (1)
    {
      v73 = v10;
      if (v9 >= 1)
      {
        bzero(a3, v71);
      }

      if (v75 >= 1)
      {
        v14 = 0;
        v74 = *(a1 + 8);
        v15 = *v74;
        while (1)
        {
          v16 = v14 + 1;
          v17 = v74[v14 + 1];
          if (v15 < v17)
          {
            break;
          }

LABEL_51:
          v15 = v17;
          ++v14;
          if (v16 == v75)
          {
            goto LABEL_52;
          }
        }

        v18 = *(a1 + 16);
        v19 = v14 * v7;
        v20 = v12 * v15;
        v21 = v12 * v15 + 8;
        while (1)
        {
          v22 = *(v18 + 4 * v15);
          v23 = *(v18 + 4 * v15);
          if ((*(a1 + 24) & 2) != 0)
          {
            if (v14 <= v22 && v23 < *a1)
            {
              v36 = *(a1 + 32);
              v25 = (v36 + 8 * v15 * v8);
              if (v14 == v22)
              {
                if (v7)
                {
                  v37 = 0;
                  v38 = (v36 + v21);
                  v39 = &v4[v23 * v7 + 1];
                  v40 = &a3[8 * v23 * v7 + 8];
                  v41 = v7 - 1;
                  do
                  {
                    v42 = v37 + 1;
                    v43 = v37 + v19;
                    v44 = v41;
                    v45 = v40;
                    v46 = v39;
                    v47 = v38;
                    if (v37 + 1 < v7)
                    {
                      do
                      {
                        v48 = *v46++;
                        v49 = v48;
                        v50 = *v47++;
                        v51 = v4[v43] * (v49 * fabs(v50));
                        v52 = *v45;
                        if (v51 > *v45)
                        {
                          v52 = v51;
                        }

                        *v45++ = v52;
                        if (v51 <= *&a3[8 * v43])
                        {
                          v51 = *&a3[8 * v43];
                        }

                        *&a3[8 * v43] = v51;
                        --v44;
                      }

                      while (v44);
                    }

                    v53 = v4[v43] * (v4[v43] * fabs(v25[v37 * v11]));
                    if (v53 <= *&a3[8 * v43])
                    {
                      v53 = *&a3[8 * v43];
                    }

                    *&a3[8 * v43] = v53;
                    v38 = (v38 + v13 + 8);
                    v39 += 8;
                    ++v40;
                    --v41;
                    ++v37;
                  }

                  while (v42 != v7);
                }

                goto LABEL_50;
              }

LABEL_41:
              if (v7)
              {
                v54 = 0;
                v55 = v23 * v7;
                v56 = &v4[v23 * v7];
                v57 = &a3[8 * v55];
                do
                {
                  v58 = v54 + v19;
                  v59 = v7;
                  v60 = v57;
                  v61 = v56;
                  v62 = v25;
                  do
                  {
                    v63 = *v61++;
                    v64 = v63;
                    v65 = *v62++;
                    v66 = v4[v58] * (v64 * fabs(v65));
                    v67 = *v60;
                    if (v66 > *v60)
                    {
                      v67 = v66;
                    }

                    *v60++ = v67;
                    if (v66 <= *&a3[8 * v58])
                    {
                      v66 = *&a3[8 * v58];
                    }

                    *&a3[8 * v58] = v66;
                    --v59;
                  }

                  while (v59);
                  ++v54;
                  v25 = (v25 + v13);
                }

                while (v54 != v7);
              }
            }
          }

          else if (v14 >= v22)
          {
            v24 = *(a1 + 32);
            v25 = (v24 + 8 * v15 * v8);
            if (v14 != v22)
            {
              goto LABEL_41;
            }

            if (v7)
            {
              v26 = 0;
              v27 = v22 * v7;
              v28 = v24 + v20;
              v29 = &v4[v22 * v7];
              v30 = &a3[8 * v27];
              do
              {
                v31 = v14 * v7;
                if (v26)
                {
                  v32 = 0;
                  v31 = v26 + v19;
                  do
                  {
                    v33 = v4[v31] * (v29[v32] * fabs(*(v28 + 8 * v32)));
                    v34 = *&v30[8 * v32];
                    if (v33 > v34)
                    {
                      v34 = v33;
                    }

                    *&v30[8 * v32] = v34;
                    if (v33 <= *&a3[8 * v31])
                    {
                      v33 = *&a3[8 * v31];
                    }

                    *&a3[8 * v31] = v33;
                    ++v32;
                  }

                  while (v26 != v32);
                }

                v35 = v4[v31] * (v4[v31] * fabs(v25[v26 * v11]));
                if (v35 <= *&a3[8 * v31])
                {
                  v35 = *&a3[8 * v31];
                }

                *&a3[8 * v31] = v35;
                ++v26;
                v28 += v13;
              }

              while (v26 != v7);
            }
          }

LABEL_50:
          ++v15;
          v21 += v12;
          v20 += v12;
          if (v15 == v17)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_52:
      v9 = v72;
      v68 = v72;
      v69 = a3;
      v70 = v4;
      if (v72 >= 1)
      {
        break;
      }

      v10 = v73 + 1;
      if (v73 == 2)
      {
        return;
      }
    }

    do
    {
      if (*v69 == 0.0)
      {
        *v70 = INFINITY;
      }

      else
      {
        *v70 = *v70 / sqrt(*v69);
      }

      ++v70;
      ++v69;
      --v68;
    }

    while (v68);
    v10 = v73 + 1;
  }

  while (v73 != 2);
  do
  {
    if (fabs(*v4) == INFINITY)
    {
      *v4 = 1.0;
    }

    ++v4;
    --v9;
  }

  while (v9);
}

void sub_236786828(int *a1, uint64_t a2, uint64_t a3, double *__b, char *a5, char *a6)
{
  v8 = __b;
  v11 = a1[1];
  v12 = *a1;
  v13 = *(a1 + 28);
  LODWORD(v14) = v12 * v13;
  v53 = v12 * v13;
  v55 = v11;
  if (v12 * v13 >= 1)
  {
    memset_pattern16(__b, &unk_23681FAF0, 8 * (v12 * v13));
    LODWORD(v14) = v12 * v13;
  }

  v15 = (v11 * v13);
  v16 = 8 * v15;
  v54 = v15;
  if (v15 >= 1)
  {
    memset_pattern16(a5, &unk_23681FAF0, 8 * (v11 * v13));
    v15 = (v11 * v13);
    LODWORD(v14) = v12 * v13;
  }

  v17 = 0;
  v50 = 8 * v14;
  v51 = v16;
  v18 = 8 * (v13 * v13);
  v19 = &a6[8 * v12];
  do
  {
    v56 = v17;
    if (v14 >= 1)
    {
      bzero(a6, v50);
      v15 = v54;
      v11 = v55;
    }

    if (v15 >= 1)
    {
      bzero(&a6[8 * v12], v51);
      v15 = v54;
      v11 = v55;
    }

    if (v11 >= 1)
    {
      v20 = 0;
      v21 = *(a1 + 1);
      do
      {
        if (a3)
        {
          v22 = *(a3 + 4 * v20);
        }

        else
        {
          v22 = v20;
        }

        v23 = *(v21 + 8 * v20++);
        v24 = *(v21 + 8 * v20);
        if (v23 < v24)
        {
          v25 = *(a1 + 2);
          v26 = v13 * v22;
          v27 = v18 * v23;
          do
          {
            v28 = *(v25 + 4 * v23);
            if ((v28 & 0x80000000) == 0 && v28 < v12)
            {
              if (a2)
              {
                v28 = *(a2 + 4 * v28);
              }

              if (v13)
              {
                v29 = 0;
                v30 = v28 * v13;
                v31 = (*(a1 + 4) + v27);
                v32 = &v8[v30];
                v33 = &a6[8 * v30];
                do
                {
                  v34 = v29 + v26;
                  v35 = v13;
                  v36 = v33;
                  v37 = v32;
                  v38 = v31;
                  do
                  {
                    v39 = *v37++;
                    v40 = v39;
                    v41 = *v38++;
                    v42 = *&a5[8 * v34] * (v40 * fabs(v41));
                    v43 = *v36;
                    if (v42 > *v36)
                    {
                      v43 = v42;
                    }

                    *v36++ = v43;
                    if (v42 <= *&v19[8 * v34])
                    {
                      v42 = *&v19[8 * v34];
                    }

                    *&v19[8 * v34] = v42;
                    --v35;
                  }

                  while (v35);
                  ++v29;
                  v31 += v13;
                }

                while (v29 != v13);
              }
            }

            ++v23;
            v27 += v18;
          }

          while (v23 != v24);
        }
      }

      while (v20 != v11);
    }

    v14 = (v12 * v13);
    v44 = v14;
    v45 = a6;
    v46 = v8;
    if (v53 >= 1)
    {
      do
      {
        if (*v45 == 0.0)
        {
          *v46 = INFINITY;
        }

        else
        {
          *v46 = *v46 / sqrt(*v45);
        }

        ++v46;
        ++v45;
        --v44;
      }

      while (v44);
    }

    v47 = v15;
    v48 = &a6[8 * v12];
    v49 = a5;
    if (v15 >= 1)
    {
      do
      {
        if (*v48 == 0.0)
        {
          *v49 = INFINITY;
        }

        else
        {
          *v49 = *v49 / sqrt(*v48);
        }

        ++v49;
        ++v48;
        --v47;
      }

      while (v47);
    }

    v17 = v56 + 1;
  }

  while (v56 != 2);
  if (v53 >= 1)
  {
    do
    {
      if (fabs(*v8) == INFINITY)
      {
        *v8 = 1.0;
      }

      ++v8;
      --v14;
    }

    while (v14);
  }

  if (v15 >= 1)
  {
    do
    {
      if (fabs(*a5) == INFINITY)
      {
        *a5 = 0x3FF0000000000000;
      }

      a5 += 8;
      --v15;
    }

    while (v15);
  }
}

uint64_t _SparseNumericFactorHermitian_Complex_Double@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0u;
  *a6 = 0u;
  v10 = a1[2];
  *(a6 + 56) = a1[3];
  *(a6 + 40) = v10;
  v11 = *a1;
  *(a6 + 24) = a1[1];
  v12 = *(a1 + 17);
  v13 = *(a1 + 3);
  *a6 = -3;
  *(a6 + 8) = v11;
  *(a6 + 72) = 1;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 16 * *(a2 + 4) * *(a2 + 28);
  atomic_fetch_add((v13 + 48), 1u);
  *(a6 + 80) = sub_236786C10(v12, v13, 2 * *(a1 + 7), a3, a4);

  return _SparseRefactorHermitian_Complex_Double(a2, a6, a3, a5);
}

uint64_t sub_236786C10(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    a5 = (*(a2 + 24))(a3);
    if (!a5)
    {
      if (*(a2 + 40))
      {
        memset(__str, 0, 256);
        snprintf(__str, 0x100uLL, "Allocation of size %zd failed in SparseFactorSymmetric.", a3);
        v10 = *(a2 + 40);
        goto LABEL_31;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F726C();
      }

LABEL_36:
      _SparseTrap();
    }
  }

  v9 = *(a2 + 60);
  if (*(a4 + 4) <= 1u)
  {
    if (*(a4 + 4))
    {
      v11 = *(a4 + 8) == 0;
    }

    else
    {
      v11 = a1 == 0;
    }

    if (v11)
    {
      v9 = 0;
    }
  }

  else if (*(a4 + 4) - 2 >= 2)
  {
    v10 = *(a2 + 40);
    if (v10)
    {
      memset(&__str[88], 0, 168);
      strcpy(__str, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
LABEL_31:
      v10(__str, a2, a3, a4, a5);
      a5 = 0;
      goto LABEL_37;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F7228();
    }

    goto LABEL_36;
  }

  v12 = a5 + a3;
  v13 = ((a5 + 103) & 0xFFFFFFFFFFFFFFF8);
  if (a5 + a3 < v13 || (v14 = &v13[*(a2 + 64)], v14 > v12))
  {
LABEL_38:
    __break(1u);
  }

  if (v9 * 8)
  {
    v15 = (&v14[v9] + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v15 = &v13[*(a2 + 64)];
    v14 = 0;
  }

  v16 = *(a4 + 16);
  *a5 = *a4;
  *(a5 + 16) = v16;
  *(a5 + 32) = 1;
  *(a5 + 40) = v13;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = v14;
  *(a5 + 72) = 0;
  *(a5 + 80) = 0;
  *(a5 + 85) = 0;
  v17 = *(a2 + 64);
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = v15;
    do
    {
      v20 = *(*(a2 + 88) + 4 * v18 + 4) - *(*(a2 + 88) + 4 * v18);
      v21 = (32 * v20) | 8;
      if ((a1 - 3) >= 2)
      {
        v21 = 8;
      }

      v15 = (v19 + v21 + ((16 * (*(*(a2 + 120) + 8 * v18 + 8) - *(*(a2 + 120) + 8 * v18))) | 4) * v20 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v12 < v15)
      {
        goto LABEL_38;
      }

      v13[v18] = v19;
      v13 = *(a5 + 40);
      *v13[v18++] = 0;
      v19 = v15;
    }

    while (v17 != v18);
  }

  if (a1 == 4)
  {
    v22 = (v15 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v22)
    {
      goto LABEL_38;
    }

    *(a5 + 48) = v15;
    v15 = (v22 + 4 * v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v12 < v15)
    {
      goto LABEL_38;
    }

    *(a5 + 56) = v22;
  }

  *(a5 + 72) = v15 - *v13;
LABEL_37:
  v23 = *MEMORY[0x277D85DE8];
  return a5;
}

uint64_t _SparseRefactorHermitian_Complex_Double(int *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v4 = a2;
  v96 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 32);
  if ((~*(a1 + 12) & 0x1C) != 0)
  {
    v18 = *(v5 + 40);
    if (v18)
    {
      memset(&v90[66], 0, 190);
      strcpy(v90, "_SparseRefactorHermitian only applies to SparseHermitian matrices");
LABEL_11:
      v18(v90);
      result = 4294967292;
      goto LABEL_85;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_236763D08();
    }

LABEL_23:
    _SparseTrap();
  }

  v9 = *a1;
  v10 = *(a1 + 28);
  v11 = *(a2 + 80);
  v12 = *(a2 + 25);
  v13 = *(a3 + 4);
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      if (v13 == 3)
      {
        v88 = *(a2 + 25);
        v14 = sub_23670CFB0(v9, *(*(a1 + 1) + 8 * v9), v10);
        v15 = a4;
        if (v14 + 4 * v9 > (2 * *(v4 + 48)))
        {
          v15 = (*(v5 + 24))();
        }

        v16 = *(v11 + 64);
        v17 = *(a1 + 1);
        *v90 = *a1;
        *&v90[16] = v17;
        *&v90[32] = *(a1 + 4);
        sub_2367141F8(v90, v15, v16, &v15[4 * v9], v14);
        v12 = v88;
        if (v15 != a4)
        {
          (*(v5 + 32))(v15);
        }

        goto LABEL_15;
      }

      v18 = *(v5 + 40);
      if (v18)
      {
        memset(&v90[88], 0, 168);
        strcpy(v90, "SparseScalingHungarianScalingAndOrdering is not supported for symmetric factorizations.");
        goto LABEL_11;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7228();
      }

      goto LABEL_23;
    }

LABEL_14:
    v19 = *(v11 + 64);
    v20 = *(a1 + 1);
    *v90 = *a1;
    *&v90[16] = v20;
    *&v90[32] = *(a1 + 4);
    sub_23671B5CC(v90, v19, a4);
    goto LABEL_15;
  }

  if (!*(a3 + 4))
  {
    if (!*(a2 + 25))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v26 = *(a3 + 8);
  if (v26)
  {
    v27 = (v9 * v10);
    if (v27 >= 1)
    {
      v28 = *(v11 + 64);
      do
      {
        v29 = *v26++;
        *v28++ = v29;
        --v27;
      }

      while (v27);
    }
  }

LABEL_15:
  v21 = *(a3 + 8);
  if (v21 && *(a3 + 4) != 1)
  {
    v22 = *(v11 + 64);
    v23 = (v9 * v10);
    if (v22)
    {
      if (v23 >= 1)
      {
        do
        {
          v24 = *v22++;
          *v21++ = v24;
          --v23;
        }

        while (v23);
      }
    }

    else if (v23 >= 1)
    {
      memset_pattern16(v21, &unk_23681FAF0, 8 * (v9 * v10));
    }
  }

  v87 = a1;
  v30 = *(a1 + 28);
  if (0x100 / v30 * v30 <= v30)
  {
    v31 = *(a1 + 28);
  }

  else
  {
    v31 = 0x100 / v30 * v30;
  }

  v32 = &a4[2 * *(v4 + 48)];
  v33 = *(v5 + 60);
  v89 = &a4[4 * v33 + 7] & 0xFFFFFFFFFFFFFFF8;
  if (v32 < v89)
  {
    goto LABEL_88;
  }

  if (v33 >= 1)
  {
    v34 = 0;
    v35 = *(v5 + 80);
    do
    {
      *&a4[4 * *(v35 + 4 * v34)] = v34;
      ++v34;
    }

    while (v34 < *(v5 + 60));
  }

  bzero(**(v11 + 40), *(v11 + 72));
  v36 = *(v5 + 64);
  if (v36 < 1)
  {
    v41 = 0;
  }

  else
  {
    v37 = 0;
    v38 = *(v11 + 40);
    do
    {
      v39 = *(v38 + 8 * v37);
      v40 = *v39;
      if (*v39)
      {
        bzero(v39, *v39);
        v38 = *(v11 + 40);
        v36 = *(v5 + 64);
        v39 = *(v38 + 8 * v37);
      }

      *v39 = v40;
      ++v37;
    }

    while (v37 < v36);
    v41 = v36 > 0;
  }

  v42 = *(v5 + 60);
  if (*(v5 + 52) > 1)
  {
    v43 = 16 * v31 * v31 + 56 + 4 * (v42 + 2 * v31);
    v44 = v4;
    if ((v12 - 3) >= 2)
    {
      if (v12 == 2)
      {
        v50 = *(v5 + 176);
        v51 = 16 * v50;
        v52 = v50 <= 4160;
        v53 = 66560;
        if (!v52)
        {
          v53 = v51;
        }

        v43 += v53;
      }
    }

    else
    {
      v45 = 32 * v42;
      if (*(v5 + 60) <= 2080)
      {
        v45 = 66560;
      }

      v43 += v45;
    }

    v54 = sub_2366FCCD0(0);
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v55 = (v89 + (v43 + 16) * v54 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v32 >= v55)
    {
      v56 = sub_2366FCCD0(0);
      _X2 = 0;
      LODWORD(v91) = v56;
      atomic_store(0, &v91 + 1);
      atomic_store(0, (&v91 | 0xC));
      atomic_store(0, &v92);
      v58 = v93;
      do
      {
        _X5 = *(&v93 + 1);
        __asm { CASPAL          X4, X5, X2, X3, [X26] }

        _ZF = _X4 == v58;
        v58 = _X4;
      }

      while (!_ZF);
      *&v94 = v43;
      *(&v94 + 1) = v89;
      *v90 = v12;
      *&v90[8] = v87;
      *&v90[16] = v5;
      *&v90[24] = v11;
      *&v90[32] = v31;
      *&v90[40] = a4;
      v65 = *(v5 + 64);
      v66 = v55 + 40 * v65;
      if (v66 <= v32)
      {
        *&v90[48] = v55;
        v67 = (v66 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
        if (v32 >= v67)
        {
          *&v90[56] = v66;
          v68 = v67 + 19200;
          if (v67 + 19200 <= v32)
          {
            *&v90[64] = sub_2367921D4(100, (v67 + 15) & 0xFFFFFFFFFFFFFFF0);
            *&v90[72] = v69;
            if (v68 + 48 * *(v5 + 168) <= v32)
            {
              *&v90[80] = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
              *&v90[88] = 0;
              *&v95 = v90;
              if (*(v5 + 64) >= 1)
              {
                _X22 = 0;
                v71 = 0;
                do
                {
                  v72 = v71 + 1;
                  v73 = *&v90[48] + 40 * v71;
                  _ZF = *(*(v5 + 96) + 4 * (v71 + 1)) == *(*(v5 + 96) + 4 * v71);
                  atomic_store(*(*(v5 + 96) + 4 * (v71 + 1)) - *(*(v5 + 96) + 4 * v71), v73);
                  *(v73 + 8) = v71;
                  *(v73 + 16) = sub_236788A18;
                  *(*&v90[56] + v71) = 0;
                  if (_ZF)
                  {
                    v74 = *&v90[48] + 40 * v71;
                    _X0 = 0;
                    _X1 = 0;
                    __asm { CASP            X0, X1, X0, X1, [X24] }

                    *(v74 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                    *(v74 + 32) = 0;
                    v78 = _X0 & 1;
                    _X2 = v78 | v74;
                    _X5 = 0;
                    __asm { CASPL           X4, X5, X2, X3, [X24] }

                    while (_X4 != _X0)
                    {
                      _X1 = 0;
                      __asm { CASP            X0, X1, X22, X23, [X10] }

                      *(v74 + 24) = _X0 & 0xFFFFFFFFFFFFFFFELL;
                      *(v74 + 32) = 0;
                      v78 = _X0 & 1;
                      _X2 = v78 | v74;
                      _X5 = 0;
                      __asm { CASPL           X4, X5, X2, X3, [X10] }
                    }

                    if (v78)
                    {
                      __ulock_wake();
                    }
                  }

                  v71 = v72;
                }

                while (v72 < *(v5 + 64));
              }

              result = sub_2366FCD2C(&v91, 0);
              v4 = v44;
              goto LABEL_85;
            }
          }
        }
      }
    }

LABEL_88:
    __break(1u);
  }

  v86 = v4;
  v46 = ((v89 + 4 * v42 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v32 < v46)
  {
    goto LABEL_88;
  }

  v47 = (&v46[v31 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v32 < v47)
  {
    goto LABEL_88;
  }

  v48 = (v47 + 4 * v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v32 < v48 || v48 + 16 * v31 * v31 > v32)
  {
    goto LABEL_88;
  }

  if (v41)
  {
    v49 = 0;
    while (1)
    {
      result = sub_236788C74(0, v49, v12, v87, v5, v11, v31, a4, v89, v46, ((&v46[v31 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v47 + 4 * v31 + 7) & 0xFFFFFFFFFFFFFFF8, v48 + 16 * v31 * v31, 0);
      if (result)
      {
        break;
      }

      v49 = (v49 + 1);
      if (v49 >= *(v5 + 64))
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
LABEL_60:
    result = 0;
  }

  v4 = v86;
LABEL_85:
  *v4 = result;
  v85 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _SparseFactorHermitian_Complex_Double@<X0>(int a1@<W0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v226 = *MEMORY[0x277D85DE8];
  if (a1 == 1)
  {
    v7 = 4;
  }

  else
  {
    v7 = a1;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *(*(a2 + 1) + 8 * v9);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 32) = 0u;
  *a5 = -3;
  *(a5 + 8) = -3;
  *(a5 + 12) = v9;
  *(a5 + 16) = v9;
  *(a5 + 20) = a2[6] & 1;
  v11 = *(a2 + 28);
  *(a5 + 24) = v11;
  *(a5 + 25) = v7;
  *(a5 + 57) = 0u;
  *(a5 + 80) = 0;
  *(a5 + 88) = 0;
  *(a5 + 96) = 16 * v11 * v8;
  v12 = 8;
  if (*(a3 + 16))
  {
    v12 = 9;
  }

  v13 = v12 + v11;
  v14 = !is_mul_ok(v13, v9);
  v15 = v13 * v9;
  v16 = __CFADD__(v15, 2);
  v17 = v15 + 2;
  v18 = v16;
  v19 = v18 << 63 >> 63 != v18;
  if (v14 || v19)
  {
    goto LABEL_17;
  }

  v16 = __CFADD__(v17, 2 * v10);
  v20 = v17 + 2 * v10;
  v21 = v16;
  if (v10 < 0 || v21 || v20 >> 62 || (v25 = 2 * v9 + 2, (v9 & 0x80000000) != 0) || 2 * v9 >= 0xFFFFFFFFFFFFFFFELL || (v26 = 2 * v10, v16 = __CFADD__(v25, v26), v27 = v25 + v26, v16) || ((v28 = 4 * v20 + 8 * v27, !__CFADD__(4 * v20, 8 * v27)) ? (v29 = 0) : (v29 = 1), v27 >> 61 || (v29 & 1) != 0 || (v30 = v28 + 88, v28 >= 0xFFFFFFFFFFFFFFA8)))
  {
LABEL_17:
    v22 = *(a3 + 40);
    if (!v22)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F71E4();
      }

      _SparseTrap();
    }

    memset(&__str[69], 0, 187);
    strcpy(__str, "Computation of workspace required for symbolic analysis overflowed.\n");
    result = v22(__str);
    goto LABEL_19;
  }

  v33 = (*(a3 + 24))(v30);
  if (!v33)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v30);
LABEL_48:
      result = (*(a3 + 40))(__str);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

LABEL_113:
    _SparseTrap();
  }

  __b = v33;
  v34 = *(a2 + 1);
  *__str = *a2;
  *&__str[16] = v34;
  v35 = _SparseFromStructureComplex(__str, &v217);
  v36 = BYTE12(v218);
  v214 = v217;
  v213 = v217 * BYTE12(v218);
  v37 = v213 + 224;
  if (!*(a3 + 16))
  {
    v37 = 224;
  }

  v38 = v37 + 4 * (BYTE12(v218) + 2) * v217;
  v39 = (*(a3 + 24))(v38, v35);
  if (!v39)
  {
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v38);
LABEL_51:
      (*(a3 + 40))(__str);
LABEL_117:
      result = (*(a3 + 32))(__b);
      goto LABEL_23;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    goto LABEL_116;
  }

  v40 = v39;
  v206 = v30;
  v41 = v39 + v38;
  v42 = (v39 + 191) & 0xFFFFFFFFFFFFFFF8;
  if (v41 < v42)
  {
    goto LABEL_307;
  }

  v43 = v214;
  v44 = *(a3 + 16);
  v45 = *(a3 + 32);
  v222 = *a3;
  v223 = v44;
  v224 = v45;
  v46 = 1;
  v215 = v40;
  if ((*(a3 + 3) & 0x40) == 0)
  {
    v46 = sub_2366FCCD0(0);
    v43 = v214;
    v40 = v215;
  }

  v47 = v223;
  *v40 = v222;
  v40[1] = v47;
  v40[2] = v224;
  *(v40 + 12) = 1;
  *(v40 + 13) = v46;
  *(v40 + 14) = v43;
  *(v40 + 15) = v213;
  *(v40 + 16) = 0;
  *(v40 + 72) = 0u;
  v48 = (v42 + 4 * v214 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v40 + 88) = 0u;
  *(v40 + 104) = 0u;
  *(v40 + 120) = 0u;
  *(v40 + 136) = 0u;
  *(v40 + 152) = 0u;
  *(v40 + 164) = 0u;
  if (v41 < v48)
  {
    goto LABEL_307;
  }

  *(v40 + 9) = v42;
  v49 = (v48 + 4 * v213 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v41 < v49)
  {
    goto LABEL_307;
  }

  v50 = 4 * v214;
  *(v40 + 10) = v48;
  v51 = ((v49 + v50 + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v41 < v51)
  {
    goto LABEL_307;
  }

  *(v40 + 14) = v49;
  v52 = *(a3 + 16);
  if (v52)
  {
    if (v41 < ((v51 + v213 + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_307;
    }

    *(v40 + 17) = v51;
    v53 = 9;
  }

  else
  {
    v51 = 0;
    v53 = 8;
  }

  v54 = 0;
  v55 = v53 + BYTE12(v218);
  v56 = !is_mul_ok(v55, v214);
  v57 = v55 * v214;
  v16 = __CFADD__(v57, 2);
  v58 = v57 + 2;
  v59 = v16;
  v60 = v59 << 63 >> 63 != v59;
  if (v56 || v60)
  {
    goto LABEL_65;
  }

  v54 = 0;
  v61 = *(*(&v217 + 1) + 8 * v214);
  v16 = __CFADD__(v58, 2 * v61);
  v62 = v58 + 2 * v61;
  v63 = v16;
  if (v61 < 0 || v63)
  {
    goto LABEL_65;
  }

  v54 = v62 >> 62;
  if (v62 >> 62)
  {
    goto LABEL_64;
  }

  v119 = 2 * v214 + 2;
  if (v43 < 0 || (2 * v214) >= 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_65;
  }

  v16 = __CFADD__(v119, 2 * v61);
  v120 = v119 + 2 * v61;
  if (v16)
  {
LABEL_64:
    v54 = 0;
  }

  else
  {
    v54 = 0;
    v121 = 4 * v62;
    v16 = __CFADD__(v121, 8 * v120);
    v122 = v121 + 8 * v120;
    v123 = v16;
    if (!(v120 >> 61) && (v123 & 1) == 0)
    {
      v54 = v122 + 88;
    }
  }

LABEL_65:
  v64 = &__b[v54];
  v65 = (v36 + 3) * v43;
  if (v65 <= 6 * v43 + 12)
  {
    v66 = 24 * v43 + 48;
  }

  else
  {
    v66 = 4 * v65;
  }

  v67 = (&__b[v66 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v64 < v67)
  {
    goto LABEL_307;
  }

  v68 = (&v67[v50 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (v64 < v68)
  {
    goto LABEL_307;
  }

  v41 = (v68 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v64 < v41)
  {
    goto LABEL_307;
  }

  v210 = v42;
  v69 = *(*(&v217 + 1) + 8 * SDWORD1(v217));
  v70 = v41 + 8 * (v214 + v69) + 16;
  if (v70 > v64)
  {
    goto LABEL_307;
  }

  v211 = v49;
  v71 = v70 + 16 * v69;
  if (v71 > v64)
  {
    goto LABEL_307;
  }

  v72 = ((v71 + 8 * v214) & 0xFFFFFFFFFFFFFFF8);
  if (v64 < v72)
  {
    goto LABEL_307;
  }

  v207 = v70 + 16 * v69;
  v208 = v41 + 8 * (v214 + v69) + 16;
  v209 = (&v67[v50 / 4 + 1] + 3) & 0xFFFFFFFFFFFFFFF8;
  if (!v52)
  {
    v72 = 0;
    goto LABEL_90;
  }

  if (v64 < (&v72[v50 + 7] & 0xFFFFFFFFFFFFFFF8))
  {
LABEL_307:
    __break(1u);
LABEL_308:
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", v41);
      goto LABEL_48;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F716C();
    }

    goto LABEL_113;
  }

  bzero(v51, v213);
  if (v214 >= 1)
  {
    v73 = BYTE12(v218);
    v74 = (v214 + 3) & 0xFFFFFFFC;
    v75 = vdupq_n_s64(v214 - 1);
    v76 = xmmword_23681F910;
    v77 = xmmword_23681F920;
    v78 = v72 + 8;
    v79 = vdupq_n_s64(4uLL);
    do
    {
      v80 = vmovn_s64(vcgeq_u64(v75, v77));
      if (vuzp1_s16(v80, *v75.i8).u8[0])
      {
        *(v78 - 2) = v73;
      }

      if (vuzp1_s16(v80, *&v75).i8[2])
      {
        *(v78 - 1) = v73;
      }

      if (vuzp1_s16(*&v75, vmovn_s64(vcgeq_u64(v75, *&v76))).i32[1])
      {
        *v78 = v73;
        v78[1] = v73;
      }

      v76 = vaddq_s64(v76, v79);
      v77 = vaddq_s64(v77, v79);
      v78 += 4;
      v74 -= 4;
    }

    while (v74);
  }

  v81 = *(a3 + 16);
  v82 = *v81;
  v71 = v207;
  if ((*v81 & 0x80000000) == 0)
  {
    v83 = BYTE12(v218);
    v84 = *(v215 + 17);
    v85 = (v81 + 1);
    do
    {
      --*&v72[4 * (v82 / v83)];
      *(v84 + *(v85 - 1)) = 1;
      v86 = *v85++;
      v82 = v86;
    }

    while ((v86 & 0x80000000) == 0);
  }

  v70 = v208;
LABEL_90:
  v220 = 0u;
  v221 = 0u;
  if ((BYTE8(v218) & 2) != 0)
  {
    *__str = v217;
    *&__str[16] = v218;
    sub_2367861D0(__str, v72, v41, v70, v71, &v220);
  }

  else
  {
    v219[0] = v217;
    v219[1] = v218;
    sub_236785FB0(v219, v72, v41, v70, v71, __str);
    v220 = *__str;
    v221 = *&__str[16];
  }

  *__str = v220;
  *&__str[16] = v221;
  if (sub_2367E3E64(v7, __str, v72, v210, v67, a3))
  {
    free(v215);
    goto LABEL_117;
  }

  *__str = v220;
  *&__str[16] = v221;
  sub_236768978(__str, 0, v72, v210, v67, v211, __b, 0);
  sub_236750DDC(v214, v211, v210, v67, __b);
  *__str = v220;
  *&__str[16] = v221;
  sub_2366EE0E8(__str, 0, v72, v210, v67, v211, v209, __b, 0);
  v87 = sub_236767CA0(v214, BYTE12(v218), v72, v210, v67, *(v215 + 14), v209, __b, a3, &__b[4 * v214 + 4]);
  v215[16] = v87;
  *(v215 + 20) = 0;
  *(v215 + 21) = 0;
  v215[44] = 0;
  if (v87 < 1)
  {
    v41 = 0;
  }

  else
  {
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v41 = 0;
    v92 = BYTE12(v218);
    do
    {
      v93 = *(v209 + 4 * v89);
      v94 = &__b[4 * v89];
      if (v72)
      {
        v96 = *v94;
        v95 = *(v94 + 1);
        if (v96 >= v95)
        {
          v97 = 0;
        }

        else
        {
          v97 = 0;
          v98 = v95 - v96;
          v99 = &v67[v96];
          do
          {
            v100 = *v99++;
            v97 += *&v72[4 * v100];
            --v98;
          }

          while (v98);
        }
      }

      else
      {
        v93 = v92 * v93;
        v97 = (*(v94 + 1) - *v94) * v92;
      }

      if (v97 > v91)
      {
        v215[44] = v97;
        v91 = v97;
      }

      if (v93 > 192 || v97 >= 97)
      {
        v88 += ((v97 - 1) / 96 + 1) * ((v93 - 1) / 96) + (v97 - 1) / 96 + 1;
        *(v215 + 21) = v88;
      }

      v90 += v93 * v97;
      v41 += v93;
      ++v89;
    }

    while (v89 != v87);
    *(v215 + 20) = v90;
  }

  *v212 = 4 * (v41 + 3 * v87 + 3) + 16 * v87 + 16 * *(*(&v217 + 1) + 8 * v214) + 72;
  v101 = (*(a3 + 24))();
  if (!v101)
  {
    free(v215);
    if (*(a3 + 40))
    {
      memset(__str, 0, 256);
      snprintf(__str, 0x100uLL, "Allocation of size %zd failed.\n", *v212);
      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
LABEL_115:
      sub_2366F716C();
    }

LABEL_116:
    _SparseTrap();
  }

  v102 = v101 + *v212;
  v103 = v215;
  v104 = v215[16];
  v105 = v104 + 1;
  v106 = (v101 + 4 * (v104 + 1) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v101 + *v212 < v106)
  {
    goto LABEL_307;
  }

  *(v215 + 11) = v101;
  v107 = (v106 + 4 * v104 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v107)
  {
    goto LABEL_307;
  }

  *(v215 + 12) = v106;
  v108 = (v107 + 4 * v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v108)
  {
    goto LABEL_307;
  }

  *(v215 + 13) = v107;
  v109 = v108 + 8 * v105;
  if (v109 > v102)
  {
    goto LABEL_307;
  }

  *(v215 + 15) = v108;
  v110 = (v109 + 4 * v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v102 < v110)
  {
    goto LABEL_307;
  }

  *(v215 + 16) = v109;
  v111 = v110 + 8 * v105;
  if (v111 > v102)
  {
    goto LABEL_307;
  }

  *(v215 + 18) = v110;
  if (v111 + 16 * *(*(&v217 + 1) + 8 * v214) > v102)
  {
    goto LABEL_307;
  }

  *(v215 + 19) = v111;
  if (v72)
  {
    if (v104 < 1)
    {
      v113 = 0;
    }

    else
    {
      v112 = 0;
      v113 = 0;
      do
      {
        *(v101 + 4 * v112) = v113;
        v114 = *&__b[4 * v112++];
        v115 = *&__b[4 * v112];
        if (v114 < v115)
        {
          v116 = v115 - v114;
          v117 = &v67[v114];
          do
          {
            v118 = *v117++;
            v113 += *&v72[4 * v118];
            --v116;
          }

          while (v116);
        }

        v104 = v215[16];
      }

      while (v112 < v104);
    }

    *(v101 + 4 * v104) = v113;
  }

  else if ((v104 & 0x80000000) == 0)
  {
    v124 = 0;
    v125 = BYTE12(v218);
    do
    {
      *(v101 + 4 * v124) = *&__b[4 * v124] * v125;
      v181 = v124++ < v215[16];
    }

    while (v181);
  }

  if (*(a3 + 16))
  {
    bzero(*(v215 + 10), 4 * v213);
    v103 = v215;
    v126 = *(a3 + 16);
    v127 = *v126;
    if ((v127 & 0x80000000) == 0)
    {
      v128 = *(v215 + 10);
      v129 = v213 - 1;
      v130 = v126 + 1;
      do
      {
        *(v128 + 4 * v127) = v129;
        v131 = *v130++;
        v127 = v131;
        --v129;
      }

      while ((v131 & 0x80000000) == 0);
    }

    if (v214 >= 1)
    {
      v132 = 0;
      v133 = 0;
      v134 = BYTE12(v218);
      do
      {
        if (v134)
        {
          v135 = 0;
          v136 = *(v215 + 10);
          do
          {
            v137 = v135 + v67[v132] * v134;
            if (!*(v136 + 4 * v137))
            {
              *(v136 + 4 * v137) = v133++;
            }

            ++v135;
          }

          while (v134 != v135);
        }

        ++v132;
      }

      while (v132 != v214);
    }
  }

  else if (v214 >= 1)
  {
    v138 = 0;
    v139 = 0;
    v140 = BYTE12(v218);
    v141 = 4 * BYTE12(v218);
    do
    {
      if (v140)
      {
        v142 = 0;
        v143 = *(v215 + 9);
        v144 = *(v215 + 10) + v138;
        do
        {
          *(v144 + 4 * v142) = v142 + *(v143 + 4 * v139) * v140;
          ++v142;
        }

        while (v140 != v142);
      }

      ++v139;
      v138 += v141;
    }

    while (v139 != v214);
  }

  sub_236812888(v103[16], *(v103 + 14), *(v103 + 12), *(v103 + 13));
  sub_23679A71C(&v220, v215, __b, *(a3 + 16), v67, &__b[4 * v215[16] + 4]);
  sub_23678A440(&v220, v215, v208, v207, __b);
  v146 = v215[15];
  v145 = v215[16];
  v147 = 8 * v145;
  v148 = *(v215 + 20);
  v149 = v146 < 0;
  v150 = 16 * v145 + 4 * v146;
  if (__CFADD__(16 * v145, 4 * v146))
  {
    v149 = 1;
  }

  if (v145 >= 0)
  {
    v151 = v149;
  }

  else
  {
    v150 = 8 * v145;
    v151 = 1;
  }

  if (v7 == 4)
  {
    if (v151)
    {
      goto LABEL_200;
    }

    v16 = __CFADD__(v148, 2 * v146);
    v148 += 2 * v146;
    v153 = v16;
    v16 = __CFADD__(v150, v147);
    v150 += v147;
    v152 = v16;
    if ((v146 & 0x80000000) != 0 || v153 || (v145 & 0x80000000) != 0)
    {
      goto LABEL_200;
    }

    goto LABEL_195;
  }

  if (v7 == 3)
  {
    if (v151)
    {
      goto LABEL_200;
    }

    v16 = __CFADD__(v148, 2 * v146);
    v148 += 2 * v146;
    v152 = v16;
    if ((v146 & 0x80000000) != 0)
    {
      goto LABEL_200;
    }

LABEL_195:
    if (v152)
    {
      goto LABEL_200;
    }

LABEL_198:
    v16 = __CFADD__(v146, v148);
    v154 = v146 + v148;
    if (v16)
    {
      goto LABEL_200;
    }

    v156 = v145 + 5;
    if (v145 < -5)
    {
      v156 = -5 - v145;
    }

    v157 = 8 * v156;
    if (v145 < -5)
    {
      v157 = -8 * v156;
    }

    v16 = __CFADD__(v150, v157);
    v158 = v150 + v157;
    v159 = v16;
    if (v145 < -5)
    {
      goto LABEL_200;
    }

    if (v156 >> 61)
    {
      goto LABEL_200;
    }

    if (v159)
    {
      goto LABEL_200;
    }

    v160 = v158 + 96;
    if (v158 >= 0xFFFFFFFFFFFFFFA0)
    {
      goto LABEL_200;
    }

    v161 = __CFADD__(v160, 4 * v154);
    *(a5 + 56) = v160 + 4 * v154;
    if (v154 >> 62 || v161)
    {
      goto LABEL_200;
    }

    v162 = v160 + 8 * v154;
    v163 = __CFADD__(v160, 8 * v154);
    *(a5 + 64) = v162;
    if (v154 >> 61 || v163)
    {
      goto LABEL_200;
    }

    if ((*(a3 + 3) & 0x40) != 0)
    {
      v164 = 1;
    }

    else
    {
      v164 = sub_2366FCCD0(0);
    }

    v165 = *(a2 + 28);
    if (0x100 / v165 * v165 <= v165)
    {
      v166 = *(a2 + 28);
    }

    else
    {
      v166 = 0x100 / v165 * v165;
    }

    v167 = *(a2 + 28) * v9;
    v168 = v167 + 2 * v166;
    v169 = v168 >> 62;
    if (v168 >> 62)
    {
      v170 = 0;
LABEL_236:
      v169 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 1;
      goto LABEL_262;
    }

    v170 = 4 * v168 + 72;
    v174 = v215[16];
    if (v174 >= 0)
    {
      v175 = v215[16];
    }

    else
    {
      v175 = -v174;
    }

    v176 = 41 * v175;
    if (v174 < 0)
    {
      v176 = -v176;
    }

    v177 = v176 + 32;
    v178 = v176 >= 0xFFFFFFFFFFFFFFE0;
    v173 = 1;
    if (v174 < 0 || v178)
    {
      goto LABEL_261;
    }

    v179 = v177 + 19200;
    if (v177 >= 0xFFFFFFFFFFFFB500)
    {
      goto LABEL_236;
    }

    v169 = 0;
    v180 = *(v215 + 21);
    v181 = v180 < 0;
    v182 = v180 < 0;
    if (v180 < 0)
    {
      v180 = -v180;
    }

    v183 = (v180 * 0x30uLL) >> 64;
    v184 = 48 * v180;
    if (v181)
    {
      v185 = -v184;
    }

    else
    {
      v185 = v184;
    }

    v186 = v183 != 0;
    if (!v184)
    {
      v182 = 0;
    }

    v187 = v179 + v185;
    v188 = __CFADD__(v179, v185);
    v173 = 1;
    if (v186 || v182 || v188)
    {
LABEL_261:
      v171 = 0;
      v172 = 0;
    }

    else
    {
      v16 = __CFADD__(v187, 4 * v167);
      v172 = v187 + 4 * v167;
      if (v16)
      {
        v169 = 0;
        v171 = 0;
      }

      else
      {
        v173 = 0;
        v171 = (v165 * v165) * v9;
        v169 = v166 * v166;
      }
    }

LABEL_262:
    if ((v7 - 3) >= 2)
    {
      if (v7 == 2)
      {
        if ((v173 & 1) == 0)
        {
          LODWORD(v192) = v215[44];
          if (v192 <= 4160)
          {
            v192 = 4160;
          }

          else
          {
            v192 = v192;
          }

          v191 = v169 + v192;
          goto LABEL_277;
        }
      }

      else if ((v173 & 1) == 0)
      {
        v16 = __CFADD__(v171, 2 * v169);
        v191 = v171 + 2 * v169;
        if (!v16)
        {
          goto LABEL_277;
        }
      }
    }

    else if ((v173 & 1) == 0)
    {
      v189 = 4160;
      if (2 * v9 > 0x1040)
      {
        v189 = 2 * v9;
      }

      v190 = v169 + v189;
      v16 = __CFADD__(v171, v190);
      v191 = v171 + v190;
      if (!v16)
      {
LABEL_277:
        v193 = !is_mul_ok(v170, v164);
        v194 = v170 * v164;
        v16 = __CFADD__(v172, v194);
        v195 = v172 + v194;
        v196 = v16;
        if (!v193 && (v196 & 1) == 0)
        {
          v197 = !is_mul_ok(v191, v164);
          v198 = v191 * v164;
          v16 = __CFADD__(v171, v198);
          v199 = v171 + v198;
          v200 = v16;
          if (!v197 && !v200)
          {
            v201 = __CFADD__(v195, 4 * v199);
            *(a5 + 40) = v195 + 4 * v199;
            if (!(v199 >> 62) && !v201)
            {
              v16 = __CFADD__(v195, 8 * v199);
              v202 = v195 + 8 * v199;
              v203 = v16;
              *(a5 + 48) = v202;
              if (!(v199 >> 61) && !v203)
              {
                v41 = 2 * v202;
                if (2 * v202 <= v206 || ((*(a3 + 32))(__b), (__b = (*(a3 + 24))(v41)) != 0))
                {
                  *(a5 + 8) = 0;
                  *(a5 + 32) = v215;
                  v204 = sub_236786C10(v7, v215, 2 * v162, a4, 0);
                  if (v204)
                  {
                    *(a5 + 80) = v204;
                    _SparseRefactorHermitian_Complex_Double(a2, a5, a4, __b);
                    result = (*(a3 + 32))(__b);
                    goto LABEL_23;
                  }

                  goto LABEL_117;
                }

                goto LABEL_308;
              }
            }
          }
        }
      }
    }

    v205 = *(a3 + 40);
    if (!v205)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        sub_2366F7128();
      }

      _SparseTrap();
    }

    memset(&__str[73], 0, 183);
    strcpy(__str, "Computation of workspace required for numeric factorization overflowed.\n");
    v205(__str);
    result = (*(a3 + 32))(__b);
LABEL_19:
    *a5 = -4;
    goto LABEL_23;
  }

  if ((v151 & 1) == 0)
  {
    goto LABEL_198;
  }

LABEL_200:
  v155 = *(a3 + 40);
  if (!v155)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      sub_2366F72E4();
    }

    _SparseTrap();
  }

  memset(&__str[40], 0, 216);
  strcpy(__str, "Computation of factor size overflowed.\n");
  v155(__str);
  (*(a3 + 32))(__b);
  result = sub_23680EEA8(v215, a3);
LABEL_23:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_236788A18(void *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = result[1];
  v5 = *(v4 + 64);
  v6 = *v5;
  if ((v6 - 3) >= 2)
  {
    if (v6 != 2)
    {
      v9 = 0;
      v7 = *(v5 + 2);
      goto LABEL_9;
    }

    v7 = *(v5 + 2);
    v11 = *(v7 + 176);
    v9 = 16 * v11;
    v10 = v11 <= 4160;
  }

  else
  {
    v7 = *(v5 + 2);
    v8 = *(v7 + 60);
    v9 = 32 * v8;
    v10 = v8 <= 2080;
  }

  if (v10)
  {
    v9 = 66560;
  }

LABEL_9:
  v12 = result[5];
  v13 = v12 + *(v4 + 48);
  v14 = ((v12 + 4 * *(v7 + 60) + 7) & 0xFFFFFFFFFFFFFFF8);
  if (v13 < v14 || (v15 = *(v5 + 8), v16 = (&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8, v13 < v16) || (v17 = (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v13 < v17) || (v18 = v17 + 16 * v15 * v15, v18 > v13) || v13 < ((v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8))
  {
    __break(1u);
  }

  else
  {
    result = sub_236788C74(result, a2, v6, *(v5 + 1), v7, *(v5 + 3), v15, *(v5 + 5), v12, v14, ((&v14[v15 + 1] + 3) & 0xFFFFFFFFFFFFFFF8), (v16 + 4 * v15 + 7) & 0xFFFFFFFFFFFFFFF8, v17 + 16 * v15 * v15, v5);
    if (result)
    {
      _X2 = 0;
      v20 = v3[1];
      atomic_store(result, (v20 + 16));
      atomic_store(1u, (v20 + 12));
      _X3 = 0;
      __asm { CASPAL          X2, X3, X2, X3, [X1] }

      if (_X2)
      {

        return __ulock_wake();
      }
    }

    else
    {
      v27 = *(*(*(v5 + 2) + 112) + 4 * v2);
      if (v27 != -1)
      {
        v28 = (*(v5 + 6) + 40 * v27);
        if (atomic_fetch_add_explicit(v28, 0xFFFFFFFF, memory_order_release) == 1)
        {
          v29 = v3[2];
          if (v29)
          {
            _X4 = 0;
            _X5 = 0;
            v32 = v3[1] + 32;
            v33 = v3[3];
            __asm { CASP            X4, X5, X4, X5, [X1] }

            *(v29 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v29 + 32) = 0;
            v35 = _X4 & 1;
            _X2 = v35 | v29;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 != _X4)
            {
              _X4 = 0;
              do
              {
                _X7 = 0;
                __asm { CASP            X6, X7, X4, X5, [X1] }

                *(v29 + 24) = _X6 & 0xFFFFFFFFFFFFFFFELL;
                *(v29 + 32) = 0;
                v35 = _X6 & 1;
                _X2 = v35 | v29;
                _X11 = 0;
                __asm { CASPL           X10, X11, X2, X3, [X1] }
              }

              while (_X10 != _X6);
            }

            if (v35)
            {
              result = __ulock_wake();
            }
          }

          v3[2] = v28;
          v3[3] = 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_236788C74(void *a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, signed int a7, uint64_t a8, uint64_t a9, int *a10, int *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v203 = a1;
  v209 = a13;
  v210 = a2;
  v211[1] = *MEMORY[0x277D85DE8];
  v205 = a4;
  v16 = *(a4 + 28);
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v17 = sub_23671470C;
    }

    else
    {
      v17 = sub_236715298;
    }
  }

  else
  {
    if (!a3)
    {
      v200 = sub_23671554C;
      v209 = 0;
      goto LABEL_9;
    }

    v17 = sub_2367160C4;
  }

  v200 = v17;
LABEL_9:
  LODWORD(v208) = a3;
  v18 = a5[15];
  v19 = v210;
  v20 = *(v18 + 8 * v210);
  v21 = *(v18 + 8 * (v210 + 1)) - v20;
  v22 = a5[11];
  v199 = v210 + 1;
  v23 = *(v22 + 4 * (v19 + 1)) - *(v22 + 4 * v19);
  v24 = *(*(a6 + 40) + 8 * v210) + 8;
  v202 = v21;
  v25 = v21;
  if (((a3 - 3) & 0xFE) != 0)
  {
    v26 = 0;
  }

  else
  {
    v26 = 2 * v23;
  }

  v206 = v24;
  v27 = v24 + 16 * v21 * v23 + 16 * v26;
  if (v23 >= 1)
  {
    v28 = 0;
    do
    {
      *(v27 + 4 * v28) = *(a8 + 4 * (v28 + *(v22 + 4 * v19)));
      ++v28;
    }

    while (v23 != v28);
  }

  v201 = v23;
  v30 = a5[18];
  v29 = a5[19];
  v32 = a5[16];
  v31 = a5[17];
  v207 = a5;
  v33 = v32 + 4 * v20;
  v35 = *(a6 + 64);
  v36 = (v30 + 8 * v19);
  v37 = *v36;
  v38 = v36[1];
  if (v35)
  {
    if (*v36 < v38)
    {
      v204 = 16 * (v16 * v16);
      if (v16 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v16;
      }

      v40 = 16 * v16;
      v41 = 16 * v25;
      do
      {
        v42 = (v29 + 8 * v37);
        v44 = *v42;
        v43 = v42[1];
        v45 = v43 % v25;
        v46 = v205[4];
        v47 = (v43 / v25);
        v48 = v206 + 16 * v47 * v25 + 16 * v45;
        v49 = *(v33 + 4 * v45);
        if (v31)
        {
          v50 = v49 / v16 * v16;
          v51 = (v35 + 8 * v50);
          v52 = *(v33 + 4 * v47) / v16 * v16;
          v53 = v35 + 8 * v52;
          v54 = (v31 + v50);
          v55 = v31 + v52;
          v56 = 0;
          if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
          {
            v57 = -v44;
          }

          else
          {
            v57 = v44;
          }

          v58 = v57 - 1;
          if (v44 < 0)
          {
            v78 = v46 + v204 * v58 + 8;
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v79 = 0;
                v80 = v51;
                v81 = v78;
                v82 = v54;
                v83 = v39;
                do
                {
                  v84 = *v82++;
                  if ((v84 & 1) == 0)
                  {
                    v85.f64[0] = *(v81 - 1);
                    v85.f64[1] = -*v81;
                    *(v48 + 16 * v79) = vaddq_f64(*(v48 + 16 * v79), vmulq_n_f64(vmulq_n_f64(v85, *v80), *(v53 + 8 * v56)));
                    ++v79;
                  }

                  v81 = (v81 + v40);
                  ++v80;
                  --v83;
                }

                while (v83);
                v48 += 16 * v25;
              }

              ++v56;
              v78 += 16;
            }

            while (v56 != v39);
          }

          else
          {
            v59 = (v46 + v204 * v58);
            do
            {
              if ((*(v55 + v56) & 1) == 0)
              {
                v60 = 0;
                v61 = v54;
                v62 = v51;
                v63 = v59;
                v64 = v39;
                do
                {
                  v65 = *v61++;
                  if ((v65 & 1) == 0)
                  {
                    *(v48 + 16 * v60) = vaddq_f64(*(v48 + 16 * v60), vmulq_n_f64(vmulq_n_f64(*v63, *v62), *(v53 + 8 * v56)));
                    ++v60;
                  }

                  ++v63;
                  ++v62;
                  --v64;
                }

                while (v64);
                v48 += 16 * v25;
              }

              ++v56;
              v59 = (v59 + v40);
            }

            while (v56 != v39);
          }
        }

        else
        {
          v66 = (v35 + 8 * v49);
          v67 = v35 + 8 * *(v33 + 4 * v47);
          if (v44 < 0)
          {
            if (v16)
            {
              v86 = 0;
              if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
              {
                v87 = -v44;
              }

              else
              {
                v87 = v44;
              }

              v88 = v46 + v204 * (v87 - 1) + 8;
              do
              {
                v89 = 0;
                v90 = v66;
                v91 = v88;
                do
                {
                  v92 = *v90++;
                  v93.f64[0] = *(v91 - 1);
                  v93.f64[1] = -*v91;
                  *(v48 + v89) = vaddq_f64(*(v48 + v89), vmulq_n_f64(vmulq_n_f64(v93, v92), *(v67 + 8 * v86)));
                  v89 += 16;
                  v91 = (v91 + v40);
                }

                while (v40 != v89);
                ++v86;
                v48 += v41;
                v88 += 16;
              }

              while (v86 != v16);
            }
          }

          else if (v16)
          {
            v68 = 0;
            if (((v44 & 0x4000000000000000) != 0) ^ __OFSUB__(v44, -v44) | (v44 == -v44))
            {
              v69 = -v44;
            }

            else
            {
              v69 = v44;
            }

            v70 = (v46 + v204 * (v69 - 1));
            do
            {
              v71 = v66;
              v72 = v70;
              v73 = v48;
              v74 = v16;
              do
              {
                v75 = *v71++;
                v76 = v75;
                v77 = *v72++;
                *v73 = vaddq_f64(*v73, vmulq_n_f64(vmulq_n_f64(v77, v76), *(v67 + 8 * v68)));
                ++v73;
                --v74;
              }

              while (v74);
              ++v68;
              v48 += v41;
              v70 = (v70 + v40);
            }

            while (v68 != v16);
          }
        }

        v37 += 2;
      }

      while (v37 < v36[1]);
    }
  }

  else if (*v36 < v38)
  {
    v94 = 16 * (v16 * v16);
    if (v16 <= 1)
    {
      v95 = 1;
    }

    else
    {
      v95 = v16;
    }

    v96 = 16 * v16;
    v97 = 16 * v21;
    do
    {
      v98 = (v29 + 8 * v37);
      v100 = *v98;
      v99 = v98[1];
      v101 = v99 % v25;
      v102 = v205[4];
      v103 = (v99 / v25);
      v104 = v206 + 16 * v103 * v25 + 16 * (v99 % v25);
      if (v31)
      {
        v105 = (v31 + *(v33 + 4 * v101) / v16 * v16);
        v106 = v31 + *(v33 + 4 * v103) / v16 * v16;
        v107 = 0;
        if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
        {
          v108 = -v100;
        }

        else
        {
          v108 = v100;
        }

        v109 = (v102 + v94 * (v108 - 1));
        if (v100 < 0)
        {
          do
          {
            if ((*(v106 + v107) & 1) == 0)
            {
              v115 = 0;
              v116 = v105;
              v117 = v109;
              v118 = v95;
              do
              {
                v119 = *v116++;
                if ((v119 & 1) == 0)
                {
                  v120 = *(v104 + 16 * v115);
                  *&v121 = *&vaddq_f64(v120, *v117);
                  *(&v121 + 1) = *&vsubq_f64(v120, *v117).f64[1];
                  *(v104 + 16 * v115++) = v121;
                }

                v117 = (v117 + v96);
                --v118;
              }

              while (v118);
              v104 += 16 * v25;
            }

            ++v107;
            ++v109;
          }

          while (v107 != v95);
        }

        else
        {
          do
          {
            if ((*(v106 + v107) & 1) == 0)
            {
              v110 = 0;
              v111 = v105;
              v112 = v109;
              v113 = v95;
              do
              {
                v114 = *v111++;
                if ((v114 & 1) == 0)
                {
                  *(v104 + 16 * v110) = vaddq_f64(*v112, *(v104 + 16 * v110));
                  ++v110;
                }

                ++v112;
                --v113;
              }

              while (v113);
              v104 += 16 * v25;
            }

            ++v107;
            v109 = (v109 + v96);
          }

          while (v107 != v95);
        }
      }

      else if (v100 < 0)
      {
        if (v16)
        {
          v129 = 0;
          if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
          {
            v130 = -v100;
          }

          else
          {
            v130 = v100;
          }

          v131 = (v102 + v94 * (v130 - 1));
          do
          {
            v132 = 0;
            v133 = v131;
            do
            {
              v134 = *(v104 + v132);
              *&v135 = *&vaddq_f64(v134, *v133);
              *(&v135 + 1) = *&vsubq_f64(v134, *v133).f64[1];
              *(v104 + v132) = v135;
              v132 += 16;
              v133 = (v133 + v96);
            }

            while (v96 != v132);
            ++v129;
            v104 += v97;
            ++v131;
          }

          while (v129 != v16);
        }
      }

      else if (v16)
      {
        v122 = 0;
        if (((v100 & 0x4000000000000000) != 0) ^ __OFSUB__(v100, -v100) | (v100 == -v100))
        {
          v123 = -v100;
        }

        else
        {
          v123 = v100;
        }

        v124 = (v102 + v94 * (v123 - 1));
        do
        {
          v125 = v124;
          v126 = v104;
          v127 = v16;
          do
          {
            v128 = *v125++;
            *v126 = vaddq_f64(v128, *v126);
            ++v126;
            --v127;
          }

          while (v127);
          ++v122;
          v104 += v97;
          v124 = (v124 + v96);
        }

        while (v122 != v16);
      }

      v37 += 2;
    }

    while (v37 < v36[1]);
  }

  if (v208 == 4)
  {
    v136 = atomic_load((*(a6 + 48) + 4 * v19));
    v137 = v207;
    if (v136 >= 1)
    {
      sub_236719090(4, v207, a6, v210, a9);
      v138 = atomic_load((*(a6 + 48) + 4 * v19));
      v139 = v138 + *(*(v207 + 120) + 8 * v199) - *(*(v207 + 120) + 8 * v19);
      v140 = *(*(a6 + 40) + 8 * v19) + 8;
      v25 = v139;
      v201 = *(*(v207 + 88) + 4 * v199) - *(*(v207 + 88) + 4 * v19) + v138;
      v206 = v140;
      v27 = v140 + 16 * v201 * v139 + 32 * v201;
      v202 = v139;
    }

    v141 = v201;
    v142 = v200(v202, v201, v206, v25, v27, a6, v209, v203, a14);
    v143 = a6;
    v144 = v201;
    *(*(a6 + 56) + 4 * v19) = v142;
    v145 = *(*(v137 + 112) + 4 * v19);
    if (v145 != -1)
    {
      atomic_fetch_add((*(a6 + 48) + 4 * v145), v141 - v142);
    }

    if (v142 >= 1)
    {
      v146 = 0;
      v147 = 0;
      v211[0] = 0;
      v148 = v206 + 16 * v25 * v141;
      do
      {
        v149 = v147 + 1;
        v150 = 2 * v147;
        if (v147 + 1 < v142)
        {
          v151 = *(v148 + 16 * v150 + 32);
        }

        v152 = *(v148 + 16 * v150);
        if (v152 == INFINITY)
        {
          ++v146;
        }

        else if (v152 <= 0.0)
        {
          ++LODWORD(v211[0]);
        }

        else
        {
          ++HIDWORD(v211[0]);
        }

        ++v147;
      }

      while (v149 < v142);
      atomic_fetch_add((a6 + 80), HIDWORD(v211[0]));
      atomic_fetch_add((a6 + 84), v146);
      atomic_fetch_add((a6 + 88), v211[0]);
    }

    v153 = v202;
  }

  else
  {
    v153 = v202;
    v142 = v200(v202, v201, v206, v25, v27, a6, v209, v203, a14);
    v143 = a6;
    v144 = v201;
    if (v142 != v201)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_158;
    }
  }

  _VF = __OFSUB__(v153, v144);
  v156 = v153 - v144;
  if ((v156 < 0) ^ _VF | (v156 == 0))
  {
LABEL_157:
    result = 0;
    goto LABEL_158;
  }

  if (v156 < a7)
  {
    if (a14)
    {
      v157 = *(a14 + 56);
    }

    else
    {
      v157 = 0;
    }

    sub_2367898A8(v210, 0, 0, v208, v207, v143, a7, a12, a10, a11, a9, v157, v209);
    goto LABEL_157;
  }

  if (!v203)
  {
    if (v156 >= 1)
    {
      for (i = 0; i < v156; i += a7)
      {
        v193 = i;
        do
        {
          if (a14)
          {
            v194 = *(a14 + 56);
          }

          else
          {
            v194 = 0;
          }

          sub_2367898A8(v210, v193, i, v208, v207, a6, a7, a12, a10, a11, a9, v194, v209);
          v193 += a7;
        }

        while (v193 < v156);
      }
    }

    goto LABEL_157;
  }

  v158 = ((v156 - 1) / a7 + 2 + ((v156 - 1) / a7 + 2) * ((v156 - 1) / a7)) / 2;
  if (v158 >= 0x40)
  {
    v159 = 64;
  }

  else
  {
    v159 = v158;
  }

  v160 = MEMORY[0x28223BE20](v142);
  v209 = &v198 - v161;
  MEMORY[0x28223BE20](v160);
  v208 = &v198 - v162;
  HIDWORD(v211[0]) = 0;
  if (v156 < 1)
  {
    v190 = 0;
  }

  else
  {
    v205 = &v198;
    _X26 = 0;
    v164 = 0;
    v165 = 0;
    v166 = 0;
    v207 = 8 * v210;
    while (2)
    {
      v167 = v166;
      LODWORD(v206) = v166;
      do
      {
        v168 = &v208[24 * v164];
        v169 = v209;
        *v168 = v210;
        *(v168 + 1) = v167;
        *(v168 + 2) = v166;
        *(v168 + 2) = v211 + 4;
        v170 = v169 + 40 * v164;
        *v170 = 0;
        *(v170 + 24) = 0;
        *(v170 + 32) = 0;
        *(v170 + 8) = v168;
        *(v170 + 16) = sub_236789CA4;
        v171 = v203[2];
        if (v171)
        {
          v172 = v203[1] + 32;
          v173 = v203[3];
          _X4 = 0;
          _X5 = 0;
          __asm { CASP            X4, X5, X4, X5, [X1] }

          while (1)
          {
            *(v171 + 24) = _X4 & 0xFFFFFFFFFFFFFFFELL;
            *(v171 + 32) = 0;
            _X2 = _X4 & 1 | v171;
            _X7 = 0;
            __asm { CASPL           X6, X7, X2, X3, [X1] }

            if (_X6 == _X4)
            {
              break;
            }

            _X5 = 0;
            __asm { CASP            X4, X5, X26, X27, [X1] }
          }

          if (_X4)
          {
            __ulock_wake();
            v166 = v206;
          }
        }

        v184 = (v165 / v159 + v207);
        v185 = v203;
        v203[2] = v170;
        v185[3] = v184;
        if (++v164 >= v159)
        {
          v186 = v164 + v165;
          v187 = atomic_load(v211 + 1);
          if (v187 < v186)
          {
            v188 = v185;
            while (1)
            {
              LOBYTE(v211[0]) = 0;
              sub_2366FCDE4(v188, v211);
              if (v211[0])
              {
                break;
              }

              v189 = atomic_load(v211 + 1);
              if (v189 >= v186)
              {
                goto LABEL_150;
              }
            }

            sub_2366FCEC8(v188);
            result = atomic_load((v188[1] + 16));
            goto LABEL_158;
          }

LABEL_150:
          v164 = 0;
          v165 += v159;
          v166 = v206;
        }

        v167 += a7;
      }

      while (v167 < v156);
      v166 += a7;
      if (v166 < v156)
      {
        continue;
      }

      break;
    }

    v190 = v164 + v165;
  }

  v195 = atomic_load(v211 + 1);
  v196 = v203;
  if (v195 >= v190)
  {
    goto LABEL_157;
  }

  while (1)
  {
    LOBYTE(v211[0]) = 0;
    sub_2366FCDE4(v196, v211);
    if (LOBYTE(v211[0]) == 1)
    {
      break;
    }

    v197 = atomic_load(v211 + 1);
    if (v197 >= v190)
    {
      goto LABEL_157;
    }
  }

  sub_2366FCEC8(v196);
  result = atomic_load((v196[1] + 16));
LABEL_158:
  v191 = *MEMORY[0x277D85DE8];
  return result;
}