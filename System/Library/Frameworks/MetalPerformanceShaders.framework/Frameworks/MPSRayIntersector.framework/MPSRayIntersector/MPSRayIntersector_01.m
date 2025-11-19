uint64_t sub_239DFDDE4(void *a1)
{
  *a1 = &unk_284D08500;
  sub_239DFDEDC((a1 + 10));

  return sub_239E0512C(a1);
}

void sub_239DFDE38(void *a1)
{
  *a1 = &unk_284D08500;
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    a1[17] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  sub_239E0512C(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239DFDEDC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_239DFDF40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, float32x4_t a15)
{
  if (a6 < a7)
  {
    v17 = *(result + 44);
    LODWORD(v18) = vsubq_f32(a9, a8).u32[0];
    v19 = v17;
    v20 = v17 - 1;
    v21 = a6;
    v22 = a7;
    do
    {
      v23 = a2 + 32 * v21;
      v24.i64[0] = *v23;
      v25 = (((COERCE_FLOAT(*v23) - a8.f32[0]) / v18) * v19);
      if (v20 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v20;
      }

      v27.i64[0] = *(v23 + 16);
      LODWORD(v28) = (((v27.f32[0] - a8.f32[0]) / v18) * v19);
      if (v20 >= v28)
      {
        v28 = v28;
      }

      else
      {
        v28 = v20;
      }

      v29 = *(v23 + 28);
      v30 = 3 * *(v23 + 12);
      v31 = v30 + 1;
      v32 = v30 + 2;
      v33 = *(*(result + 128) + 8 * v29);
      if (v33)
      {
        if (*(*(result + 152) + 4 * v29) == 4)
        {
          v30 = *(v33 + 4 * v30);
          v31 = *(v33 + 4 * v31);
          v32 = *(v33 + 4 * v32);
        }

        else
        {
          v30 = *(v33 + 2 * v30);
          v31 = *(v33 + 2 * v31);
          v32 = *(v33 + 2 * v32);
        }
      }

      v24.i32[2] = *(v23 + 8);
      v27.i32[2] = *(v23 + 24);
      v34 = *(*(result + 80) + 8 * v29);
      v35 = *(*(result + 104) + 4 * v29);
      v36 = v34 + v35 * v30;
      a15.i64[0] = *v36;
      v37 = *(v36 + 8);
      v38 = v34 + v35 * v31;
      v16.i64[0] = *v38;
      v39 = *(v38 + 8);
      v40 = v34 + v35 * v32;
      v15.i64[0] = *v40;
      v41 = *(v40 + 8);
      ++*(a4 + 4 * v26);
      ++*(a3 + 4 * v28);
      if (v28 > v25)
      {
        v42 = v15;
        v42.i32[2] = v41;
        v43 = v16;
        v43.i32[2] = v39;
        v44 = a15;
        v44.i32[2] = v37;
        if (vcgt_f32(*a15.f32, *v16.f32).u8[0])
        {
          v45 = -1;
        }

        else
        {
          v45 = 0;
        }

        v46 = vdupq_n_s32(v45);
        v47 = vbslq_s8(v46, v44, v43);
        v48 = vbslq_s8(v46, v43, v44);
        v49 = vdupq_lane_s32(*&vcgtq_f32(v47, v15), 0);
        v50 = vbslq_s8(v49, v47, v42);
        v51 = vbslq_s8(v49, v42, v47);
        if (vmovn_s32(vcgtq_f32(v48, v51)).u8[0])
        {
          v52 = -1;
        }

        else
        {
          v52 = 0;
        }

        v53 = vdupq_n_s32(v52);
        v54 = vbslq_s8(v53, v48, v51);
        v55 = vbslq_s8(v53, v51, v48);
        v56 = vmovn_s32(vceqq_f32(v55, v54)).u8[0];
        v16 = vsubq_f32(v50, v55);
        v57 = vsubq_f32(v54, v55);
        v58 = v55;
        v58.i32[3] = 0;
        v59 = v54;
        v59.i32[3] = 0;
        v60 = vsubq_f32(v50, v54);
        v50.i32[3] = 0;
        v61 = a5 + 16 + 32 * v26;
        do
        {
          v62.f32[0] = (a8.f32[0] + (v18 / v19)) + ((v18 / v19) * v26);
          v63 = vmlaq_n_f32(v55, v16, (v62.f32[0] - v55.f32[0]) / v16.f32[0]);
          if ((v54.f32[0] < v62.f32[0]) | v56 & 1)
          {
            v64 = vminnmq_f32(v58, v59);
            v65 = vmaxnmq_f32(v58, v59);
            v63.i32[3] = 0;
            v66 = vmlaq_n_f32(v54, v60, (v62.f32[0] - v54.f32[0]) / v60.f32[0]);
            v66.i32[3] = 0;
            v67 = vminnmq_f32(v63, v66);
            v68 = vmaxnmq_f32(v63, v66);
            v64.i32[3] = 0;
            v67.i32[3] = 0;
            v65.i32[3] = 0;
            v69 = vminnmq_f32(v64, v67);
            v68.i32[3] = 0;
            v70 = vmaxnmq_f32(v65, v68);
            v71 = vminnmq_f32(v67, v50);
            v72 = vmaxnmq_f32(v68, v50);
          }

          else
          {
            v63.i32[3] = 0;
            v73 = vmlaq_n_f32(v55, v57, (v62.f32[0] - v55.f32[0]) / v57.f32[0]);
            v73.i32[3] = 0;
            v74 = vminnmq_f32(v63, v73);
            v75 = vmaxnmq_f32(v63, v73);
            v74.i32[3] = 0;
            v69 = vminnmq_f32(v58, v74);
            v75.i32[3] = 0;
            v70 = vmaxnmq_f32(v58, v75);
            v76 = vminnmq_f32(v59, v50);
            v77 = vmaxnmq_f32(v59, v50);
            v76.i32[3] = 0;
            v71 = vminnmq_f32(v74, v76);
            v77.i32[3] = 0;
            v72 = vmaxnmq_f32(v75, v77);
          }

          v69.i32[3] = 0;
          v24.i32[3] = 0;
          v78 = vmaxnmq_f32(v69, v24);
          v79.f32[0] = (a8.f32[0] + (v18 / v19)) + ((v18 / v19) * v26);
          v62 = v62.u32[0];
          v62.i32[1] = v70.i32[1];
          v62.i32[2] = v70.i32[2];
          v27.i32[3] = 0;
          v79.i32[1] = v71.i32[1];
          v80 = vminnmq_f32(v62, v27);
          v79.i64[1] = v71.u32[2];
          v24 = vmaxnmq_f32(v79, v24);
          v72.i32[3] = 0;
          v81 = *(v61 - 16);
          v82 = *v61;
          v81.i32[3] = 0;
          v78.i32[3] = 0;
          v27 = vminnmq_f32(v72, v27);
          v83 = vminnmq_f32(v81, v78);
          v82.i32[3] = 0;
          v80.i32[3] = 0;
          v84 = vmaxnmq_f32(v82, v80);
          *(v61 - 8) = v83.i32[2];
          *(v61 - 16) = v83.i64[0];
          *(v61 + 8) = v84.i32[2];
          *v61 = v84.i64[0];
          v61 += 32;
          LODWORD(v26) = v26 + 1;
        }

        while (v28 != v26);
      }

      v85 = (a5 + 32 * v28);
      a15 = *v85;
      v15 = v85[1];
      a15.i32[3] = 0;
      v24.i32[3] = 0;
      v15.i32[3] = 0;
      v27.i32[3] = 0;
      v86 = vminnmq_f32(a15, v24);
      v87 = vmaxnmq_f32(v15, v27);
      v85->i32[2] = v86.i32[2];
      v85->i64[0] = v86.i64[0];
      v85[1].i32[2] = v87.i32[2];
      v85[1].i64[0] = v87.i64[0];
      ++v21;
    }

    while (v21 != v22);
  }

  return result;
}

uint64_t sub_239DFE28C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, float32x4_t a15)
{
  if (a6 < a7)
  {
    v17 = *(result + 44);
    v18 = a8.f32[1];
    v19 = vsubq_f32(a9, a8);
    v20 = v17;
    v21 = v17 - 1;
    v22 = v19.f32[1] / v20;
    v23 = v18 + (v19.f32[1] / v20);
    v24 = a6;
    v25 = a7;
    do
    {
      v26 = a2 + 32 * v24;
      v27.i64[0] = *v26;
      v28 = (((COERCE_FLOAT(HIDWORD(*v26)) - v18) / v19.f32[1]) * v20);
      if (v21 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v21;
      }

      v30.i64[0] = *(v26 + 16);
      LODWORD(v31) = (((v30.f32[1] - v18) / v19.f32[1]) * v20);
      if (v21 >= v31)
      {
        v31 = v31;
      }

      else
      {
        v31 = v21;
      }

      v32 = *(v26 + 28);
      v33 = 3 * *(v26 + 12);
      v34 = v33 + 1;
      v35 = v33 + 2;
      v36 = *(*(result + 128) + 8 * v32);
      if (v36)
      {
        if (*(*(result + 152) + 4 * v32) == 4)
        {
          v33 = *(v36 + 4 * v33);
          v34 = *(v36 + 4 * v34);
          v35 = *(v36 + 4 * v35);
        }

        else
        {
          v33 = *(v36 + 2 * v33);
          v34 = *(v36 + 2 * v34);
          v35 = *(v36 + 2 * v35);
        }
      }

      v27.i32[2] = *(v26 + 8);
      v30.i32[2] = *(v26 + 24);
      v37 = *(*(result + 80) + 8 * v32);
      v38 = *(*(result + 104) + 4 * v32);
      v39 = v37 + v38 * v33;
      v15.i64[0] = *v39;
      v40 = *(v39 + 8);
      v41 = v37 + v38 * v34;
      v16.i64[0] = *v41;
      v42 = *(v41 + 8);
      v43 = v37 + v38 * v35;
      a15.i64[0] = *v43;
      v44 = *(v43 + 8);
      ++*(a4 + 4 * v29);
      ++*(a3 + 4 * v31);
      if (v31 > v28)
      {
        v45 = a15;
        v45.i32[2] = v44;
        v46 = v16;
        v46.i32[2] = v42;
        v47 = v15;
        v47.i32[2] = v40;
        if (vcgt_f32(*&v15, *&v16).i32[1])
        {
          v48 = -1;
        }

        else
        {
          v48 = 0;
        }

        v49 = vdupq_n_s32(v48);
        v50 = vbslq_s8(v49, v47, v46);
        v51 = vbslq_s8(v49, v46, v47);
        v52 = vdupq_lane_s32(*&vcgtq_f32(vdupq_lane_s32(*v50.i8, 1), vdupq_lane_s32(*a15.f32, 1)), 0);
        v53 = vbslq_s8(v52, v50, v45);
        v54 = vbslq_s8(v52, v45, v50);
        if (vmovn_s32(vcgtq_f32(v51, v54)).i8[2])
        {
          v55 = -1;
        }

        else
        {
          v55 = 0;
        }

        v16 = vdupq_n_s32(v55);
        v56 = vbslq_s8(v16, v51, v54);
        v57 = vbslq_s8(v16, v54, v51);
        v58 = vsubq_f32(v53, v57);
        v59 = v57;
        v59.i32[3] = 0;
        v60 = v56;
        v60.i32[3] = 0;
        v61 = vsubq_f32(v56, v57);
        v62 = vsubq_f32(v53, v56);
        v53.i32[3] = 0;
        v63 = a5 + 16 + 32 * v29;
        do
        {
          v64 = v23 + (v22 * v29);
          v65 = vmlaq_n_f32(v57, v58, (v64 - v57.f32[1]) / (v53.f32[1] - v57.f32[1]));
          if (v56.f32[1] < v64 || v57.f32[1] == v56.f32[1])
          {
            v67 = vminnmq_f32(v59, v60);
            v68 = vmaxnmq_f32(v59, v60);
            v65.i32[3] = 0;
            v69 = vmlaq_n_f32(v56, v62, (v64 - v56.f32[1]) / (v53.f32[1] - v56.f32[1]));
            v69.i32[3] = 0;
            v70 = vminnmq_f32(v65, v69);
            v71 = vmaxnmq_f32(v65, v69);
            v67.i32[3] = 0;
            v70.i32[3] = 0;
            v68.i32[3] = 0;
            v75 = vminnmq_f32(v67, v70);
            v71.i32[3] = 0;
            v76 = vmaxnmq_f32(v68, v71);
            v79 = vminnmq_f32(v70, v53);
            v80 = vmaxnmq_f32(v71, v53);
          }

          else
          {
            v65.i32[3] = 0;
            v72 = vmlaq_n_f32(v57, v61, (v64 - v57.f32[1]) / (v56.f32[1] - v57.f32[1]));
            v72.i32[3] = 0;
            v73 = vminnmq_f32(v65, v72);
            v74 = vmaxnmq_f32(v65, v72);
            v73.i32[3] = 0;
            v75 = vminnmq_f32(v59, v73);
            v74.i32[3] = 0;
            v76 = vmaxnmq_f32(v59, v74);
            v77 = vminnmq_f32(v60, v53);
            v78 = vmaxnmq_f32(v60, v53);
            v77.i32[3] = 0;
            v79 = vminnmq_f32(v73, v77);
            v78.i32[3] = 0;
            v80 = vmaxnmq_f32(v74, v78);
          }

          v75.i32[3] = 0;
          v27.i32[3] = 0;
          v81.i32[0] = v76.i32[0];
          v81.f32[1] = v23 + (v22 * v29);
          v81.i64[1] = v76.u32[2];
          v30.i32[3] = 0;
          v82 = vmaxnmq_f32(v75, v27);
          v83.i32[0] = v79.i32[0];
          v83.f32[1] = v81.f32[1];
          v84 = vminnmq_f32(v81, v30);
          v83.i64[1] = v79.u32[2];
          v27 = vmaxnmq_f32(v83, v27);
          v80.i32[3] = 0;
          v86 = *(v63 - 16);
          v85 = *v63;
          v86.i32[3] = 0;
          v82.i32[3] = 0;
          v30 = vminnmq_f32(v80, v30);
          v87 = vminnmq_f32(v86, v82);
          v85.i32[3] = 0;
          v84.i32[3] = 0;
          v88 = vmaxnmq_f32(v85, v84);
          *(v63 - 8) = v87.i32[2];
          *(v63 - 16) = v87.i64[0];
          *(v63 + 8) = v88.i32[2];
          *v63 = v88.i64[0];
          v63 += 32;
          LODWORD(v29) = v29 + 1;
        }

        while (v31 != v29);
      }

      v89 = (a5 + 32 * v31);
      a15 = *v89;
      v15 = v89[1];
      a15.i32[3] = 0;
      v27.i32[3] = 0;
      v15.i32[3] = 0;
      v30.i32[3] = 0;
      v90 = vminnmq_f32(a15, v27);
      v91 = vmaxnmq_f32(v15, v30);
      v89->i32[2] = v90.i32[2];
      v89->i64[0] = v90.i64[0];
      v89[1].i32[2] = v91.i32[2];
      v89[1].i64[0] = v91.i64[0];
      ++v24;
    }

    while (v24 != v25);
  }

  return result;
}

uint64_t sub_239DFE608(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9, double a10, double a11, double a12, double a13, double a14, __n128 a15)
{
  if (a6 < a7)
  {
    v20 = *(result + 44);
    v21 = a8.f32[2];
    v22 = vsubq_f32(a9, a8);
    v23 = v20;
    v24 = v20 - 1;
    v25 = a6;
    v26 = a7;
    do
    {
      v27 = a2 + 32 * v25;
      v28 = (((*(v27 + 8) - v21) / v22.f32[2]) * v23);
      if (v24 >= v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = v24;
      }

      LODWORD(v30) = (((*(v27 + 24) - v21) / v22.f32[2]) * v23);
      if (v24 >= v30)
      {
        v30 = v30;
      }

      else
      {
        v30 = v24;
      }

      v31 = *(v27 + 28);
      v32 = 3 * *(v27 + 12);
      v33 = v32 + 1;
      v34 = v32 + 2;
      v35 = *(*(result + 128) + 8 * v31);
      if (v35)
      {
        if (*(*(result + 152) + 4 * v31) == 4)
        {
          v32 = *(v35 + 4 * v32);
          v33 = *(v35 + 4 * v33);
          v34 = *(v35 + 4 * v34);
        }

        else
        {
          v32 = *(v35 + 2 * v32);
          v33 = *(v35 + 2 * v33);
          v34 = *(v35 + 2 * v34);
        }
      }

      v36.i64[0] = *v27;
      v36.i32[2] = *(v27 + 8);
      v37.i64[0] = *(v27 + 16);
      v37.i32[2] = *(v27 + 24);
      v38 = *(*(result + 80) + 8 * v31);
      v39 = *(*(result + 104) + 4 * v31);
      v40 = v38 + v39 * v32;
      a15.n128_u64[0] = *v40;
      v15.i32[0] = *(v40 + 8);
      v41 = v38 + v39 * v33;
      v17.i64[0] = *v41;
      v19.i32[0] = *(v41 + 8);
      v42 = v38 + v39 * v34;
      v16.i64[0] = *v42;
      v18.i32[0] = *(v42 + 8);
      ++*(a4 + 4 * v29);
      ++*(a3 + 4 * v30);
      if (v30 > v28)
      {
        v16.i32[2] = v18.i32[0];
        v17.i32[2] = v19.i32[0];
        a15.n128_u32[2] = v15.i32[0];
        v43 = vdupq_lane_s32(*&vcgtq_f32(v15, v19), 0);
        v44 = vbslq_s8(v43, v17, a15);
        v45 = vbslq_s8(v43, a15, v17);
        v46 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v45, 2), v18), 0);
        v47 = vbslq_s8(v46, v45, v16);
        v48 = vbslq_s8(v46, v16, v45);
        if (vmovn_s32(vcgtq_f32(v44, v48)).i32[1])
        {
          v49 = -1;
        }

        else
        {
          v49 = 0;
        }

        v17 = vdupq_n_s32(v49);
        v50 = vbslq_s8(v17, v44, v48);
        v16 = vbslq_s8(v17, v48, v44);
        v19 = vsubq_f32(v47, v16);
        v51 = v16;
        v51.i32[3] = 0;
        v52 = v50;
        v52.i32[3] = 0;
        v53 = vsubq_f32(v50, v16);
        v54 = vsubq_f32(v47, v50);
        v47.i32[3] = 0;
        v55 = a5 + 16 + 32 * v29;
        do
        {
          v56 = (v21 + (v22.f32[2] / v23)) + ((v22.f32[2] / v23) * v29);
          v57 = vmlaq_n_f32(v16, v19, (v56 - v16.f32[2]) / (v47.f32[2] - v16.f32[2]));
          if (v50.f32[2] < v56 || v16.f32[2] == v50.f32[2])
          {
            v59 = vminnmq_f32(v51, v52);
            v60 = vmaxnmq_f32(v51, v52);
            v57.i32[3] = 0;
            v61 = vmlaq_n_f32(v50, v54, (v56 - v50.f32[2]) / (v47.f32[2] - v50.f32[2]));
            v61.i32[3] = 0;
            v62 = vminnmq_f32(v57, v61);
            v63 = vmaxnmq_f32(v57, v61);
            v59.i32[3] = 0;
            v62.i32[3] = 0;
            v60.i32[3] = 0;
            v67 = vminnmq_f32(v59, v62);
            v63.i32[3] = 0;
            v68 = vmaxnmq_f32(v60, v63).u64[0];
            v71 = vminnmq_f32(v62, v47).u64[0];
            v72 = vmaxnmq_f32(v63, v47);
          }

          else
          {
            v57.i32[3] = 0;
            v64 = vmlaq_n_f32(v16, v53, (v56 - v16.f32[2]) / (v50.f32[2] - v16.f32[2]));
            v64.i32[3] = 0;
            v65 = vminnmq_f32(v57, v64);
            v66 = vmaxnmq_f32(v57, v64);
            v65.i32[3] = 0;
            v67 = vminnmq_f32(v51, v65);
            v66.i32[3] = 0;
            v68 = vmaxnmq_f32(v51, v66).u64[0];
            v69 = vminnmq_f32(v52, v47);
            v70 = vmaxnmq_f32(v52, v47);
            v69.i32[3] = 0;
            v71 = vminnmq_f32(v65, v69).u64[0];
            v70.i32[3] = 0;
            v72 = vmaxnmq_f32(v66, v70);
          }

          v67.i32[3] = 0;
          v36.i32[3] = 0;
          v73.i64[0] = v68;
          v73.i64[1] = LODWORD(v56);
          v37.i32[3] = 0;
          v74 = vmaxnmq_f32(v67, v36);
          v75.i64[0] = v71;
          v76 = vminnmq_f32(v73, v37);
          v75.i64[1] = LODWORD(v56);
          v36 = vmaxnmq_f32(v75, v36);
          v72.i32[3] = 0;
          v78 = *(v55 - 16);
          v77 = *v55;
          v78.i32[3] = 0;
          v74.i32[3] = 0;
          v37 = vminnmq_f32(v72, v37);
          v79 = vminnmq_f32(v78, v74);
          v77.i32[3] = 0;
          v76.i32[3] = 0;
          v80 = vmaxnmq_f32(v77, v76);
          *(v55 - 8) = v79.i32[2];
          *(v55 - 16) = v79.i64[0];
          *(v55 + 8) = v80.i32[2];
          *v55 = v80.i64[0];
          v55 += 32;
          LODWORD(v29) = v29 + 1;
        }

        while (v30 != v29);
      }

      v81 = a5 + 32 * v30;
      a15 = *v81;
      v15 = *(v81 + 16);
      a15.n128_u32[3] = 0;
      v36.i32[3] = 0;
      v15.i32[3] = 0;
      v37.i32[3] = 0;
      v82 = vminnmq_f32(a15, v36);
      v83 = vmaxnmq_f32(v15, v37);
      *(v81 + 8) = v82.i32[2];
      *v81 = v82.i64[0];
      *(v81 + 24) = v83.i32[2];
      *(v81 + 16) = v83.i64[0];
      ++v25;
    }

    while (v25 != v26);
  }

  return result;
}

void sub_239DFE960(float32x4_t *a1, int a2)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v4 = a1[4].i64[0];
  v5 = a1[6].u32[2];
  MEMORY[0x28223BE20]();
  v6 = v64 - ((4 * v5 + 15) & 0x7FFFFFFF0);
  bzero(v6, 4 * v5);
  MEMORY[0x28223BE20]();
  bzero(v6, 4 * v5);
  MEMORY[0x28223BE20]();
  v7 = &v64[-4 * v5];
  bzero(v7, v8);
  if (v5)
  {
    bzero(v6, 4 * v5);
    bzero(v6, 4 * v5);
    v15 = v7 + 1;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    v17 = vnegq_f32(v16);
    do
    {
      v15[-1] = v17;
      *v15 = v16;
      v15 += 2;
      --v5;
    }

    while (v5);
  }

  v18 = *(v4 + 24);
  v19 = v18 * a2;
  v20 = v18 * a2 + v18;
  v21 = a1[7].i32[0];
  if (v20 >= a1[6].i32[3])
  {
    v22 = a1[6].u32[3];
  }

  else
  {
    v22 = v20;
  }

  if (v21)
  {
    if (v21 == 1)
    {
      sub_239DFE28C(v4, a1[4].i64[1], v6, v6, v7, v19, v22, a1[2], a1[3], v9, v10, v11, v12, v13, v14);
    }

    else if (v21 == 2)
    {
      sub_239DFE608(v4, a1[4].i64[1], v6, v6, v7, v19, v22, a1[2], a1[3], v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    sub_239DFDF40(v4, a1[4].i64[1], v6, v6, v7, v19, v22, a1[2], a1[3], v9, v10, v11, v12, v13, v14);
  }

  if (a1[6].i32[2])
  {
    v23 = 0;
    do
    {
      atomic_fetch_add((a1[5].i64[0] + 4 * v23), *&v6[4 * v23]);
      atomic_fetch_add((a1[5].i64[1] + 4 * v23), *&v6[4 * v23]);
      v24 = (a1[6].i64[0] + 32 * v23);
      f32 = v7[2 * v23].f32;
      v26 = *f32;
      v27 = COERCE_FLOAT(atomic_load(v24));
      v28 = v27;
      if (v26 <= v27)
      {
        v28 = *f32;
      }

      v29 = v27;
      atomic_compare_exchange_strong_explicit(v24, &v29, LODWORD(v28), memory_order_release, memory_order_relaxed);
      if (LODWORD(v29) != LODWORD(v27))
      {
        v30 = v29;
        do
        {
          *&v31 = v29;
          if (v26 <= v29)
          {
            *&v31 = v26;
          }

          atomic_compare_exchange_strong_explicit(v24, &v30, v31, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v30) == LODWORD(v29);
          v29 = v30;
        }

        while (!v32);
      }

      v33 = f32[1];
      v34 = COERCE_FLOAT(atomic_load(v24 + 1));
      v35 = LODWORD(v34);
      if (v33 <= v34)
      {
        v35 = *(f32 + 1);
      }

      v36 = v34;
      atomic_compare_exchange_strong_explicit(v24 + 1, &v36, v35, memory_order_release, memory_order_relaxed);
      if (LODWORD(v36) != LODWORD(v34))
      {
        v37 = v36;
        do
        {
          *&v38 = v36;
          if (v33 <= v36)
          {
            *&v38 = v33;
          }

          atomic_compare_exchange_strong_explicit(v24 + 1, &v37, v38, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v37) == LODWORD(v36);
          v36 = v37;
        }

        while (!v32);
      }

      v39 = f32[2];
      v40 = COERCE_FLOAT(atomic_load(v24 + 2));
      v41 = LODWORD(v40);
      if (v39 <= v40)
      {
        v41 = *(f32 + 2);
      }

      v42 = v40;
      atomic_compare_exchange_strong_explicit(v24 + 2, &v42, v41, memory_order_release, memory_order_relaxed);
      if (LODWORD(v42) != LODWORD(v40))
      {
        v43 = v42;
        do
        {
          *&v44 = v42;
          if (v39 <= v42)
          {
            *&v44 = v39;
          }

          atomic_compare_exchange_strong_explicit(v24 + 2, &v43, v44, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v43) == LODWORD(v42);
          v42 = v43;
        }

        while (!v32);
      }

      v45 = f32[4];
      v46 = COERCE_FLOAT(atomic_load(v24 + 4));
      v47 = LODWORD(v46);
      if (v45 > v46)
      {
        v47 = *(f32 + 4);
      }

      v48 = v46;
      atomic_compare_exchange_strong_explicit(v24 + 4, &v48, v47, memory_order_release, memory_order_relaxed);
      if (LODWORD(v48) != LODWORD(v46))
      {
        v49 = v48;
        do
        {
          *&v50 = v48;
          if (v45 > v48)
          {
            *&v50 = v45;
          }

          atomic_compare_exchange_strong_explicit(v24 + 4, &v49, v50, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v49) == LODWORD(v48);
          v48 = v49;
        }

        while (!v32);
      }

      v51 = f32[5];
      v52 = COERCE_FLOAT(atomic_load(v24 + 5));
      v53 = LODWORD(v52);
      if (v51 > v52)
      {
        v53 = *(f32 + 5);
      }

      v54 = v52;
      atomic_compare_exchange_strong_explicit(v24 + 5, &v54, v53, memory_order_release, memory_order_relaxed);
      if (LODWORD(v54) != LODWORD(v52))
      {
        v55 = v54;
        do
        {
          *&v56 = v54;
          if (v51 > v54)
          {
            *&v56 = v51;
          }

          atomic_compare_exchange_strong_explicit(v24 + 5, &v55, v56, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v55) == LODWORD(v54);
          v54 = v55;
        }

        while (!v32);
      }

      v57 = f32[6];
      v58 = COERCE_FLOAT(atomic_load(v24 + 6));
      v59 = LODWORD(v58);
      if (v57 > v58)
      {
        v59 = *(f32 + 6);
      }

      v60 = v58;
      atomic_compare_exchange_strong_explicit(v24 + 6, &v60, v59, memory_order_release, memory_order_relaxed);
      if (LODWORD(v60) != LODWORD(v58))
      {
        v61 = v60;
        do
        {
          *&v62 = v60;
          if (v57 > v60)
          {
            *&v62 = v57;
          }

          atomic_compare_exchange_strong_explicit(v24 + 6, &v61, v62, memory_order_release, memory_order_relaxed);
          v32 = LODWORD(v61) == LODWORD(v60);
          v60 = v61;
        }

        while (!v32);
      }

      ++v23;
    }

    while (v23 < a1[6].u32[2]);
  }

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239DFED64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9)
{
  if (a6 < a7)
  {
    v13 = *(result + 44);
    v14 = v13;
    v15 = v13 - 1;
    LODWORD(v146) = vsubq_f32(a9, a8).u32[0];
    v17 = a6;
    v18 = a7;
    do
    {
      v19 = a2 + 32 * v17;
      v20.i64[0] = *v19;
      v21 = (((COERCE_FLOAT(*v19) - a8.f32[0]) / v146) * v14);
      if (v15 >= v21)
      {
        v22 = (((COERCE_FLOAT(*v19) - a8.f32[0]) / v146) * v14);
      }

      else
      {
        v22 = v15;
      }

      v23.i64[0] = *(v19 + 16);
      LODWORD(v24) = (((v23.f32[0] - a8.f32[0]) / v146) * v14);
      if (v15 >= v24)
      {
        v24 = v24;
      }

      else
      {
        v24 = v15;
      }

      v25 = *(v19 + 28);
      v26 = 4 * *(v19 + 12);
      v27 = v26 | 1;
      v28 = v26 | 2;
      v29 = v26 | 3;
      v30 = *(*(result + 128) + 8 * v25);
      if (v30)
      {
        if (*(*(result + 152) + 4 * v25) == 4)
        {
          v26 = *(v30 + 4 * v26);
          v27 = *(v30 + 4 * v27);
          v28 = *(v30 + 4 * v28);
          v29 = *(v30 + 4 * v29);
        }

        else
        {
          v26 = *(v30 + 2 * v26);
          v27 = *(v30 + 2 * v27);
          v28 = *(v30 + 2 * v28);
          v29 = *(v30 + 2 * v29);
        }
      }

      v20.i32[2] = *(v19 + 8);
      v23.i32[2] = *(v19 + 24);
      v31 = *(*(result + 80) + 8 * v25);
      v32 = *(*(result + 104) + 4 * v25);
      v33 = v31 + v32 * v26;
      v9.i64[0] = *v33;
      v34 = *(v33 + 8);
      v35 = v31 + v32 * v27;
      v10.i64[0] = *v35;
      v36 = *(v35 + 8);
      v37 = v31 + v32 * v28;
      v11.i64[0] = *v37;
      v38 = *(v37 + 8);
      v39 = v31 + v32 * v29;
      v12.i64[0] = *v39;
      v40 = *(v39 + 8);
      ++*(a4 + 4 * v22);
      ++*(a3 + 4 * v24);
      if (v24 > v21)
      {
        v41 = v12;
        v41.i32[2] = v40;
        v42 = v11;
        v42.i32[2] = v38;
        v43 = v10;
        v43.i32[2] = v36;
        v44 = v9;
        v44.i32[2] = v34;
        v45 = v44;
        v45.i32[3] = 0;
        LODWORD(v46) = vsub_f32(*v10.f32, *v9.f32).u32[0];
        v47 = v43;
        v47.i32[3] = 0;
        v48 = v42;
        v48.i32[3] = 0;
        LODWORD(v49) = vsub_f32(*v11.f32, *v10.f32).u32[0];
        LODWORD(v50) = vsub_f32(*v12.f32, *v11.f32).u32[0];
        v51 = v41;
        v51.i32[3] = 0;
        LODWORD(v52) = vsub_f32(*v9.f32, *v12.f32).u32[0];
        do
        {
          v16 = a8.f32[0] + (v146 / v14);
          v53.f32[0] = v16 + ((v146 / v14) * v22);
          v54.i64[0] = 0x7F0000007FLL;
          v54.i64[1] = 0x7F0000007FLL;
          v55 = vnegq_f32(v54);
          v56.i64[0] = 0x7F0000007FLL;
          v56.i64[1] = 0x7F0000007FLL;
          v57 = v55;
          if (v9.f32[0] <= v53.f32[0])
          {
            v57 = vminnmq_f32(v45, xmmword_239E26FC0);
            v56 = vmaxnmq_f32(v45, xmmword_239E26FD0);
          }

          if (v9.f32[0] >= v53.f32[0])
          {
            v55 = vminnmq_f32(v45, xmmword_239E26FC0);
            v54 = vmaxnmq_f32(v45, xmmword_239E26FD0);
          }

          v59 = v10.f32[0] < v53.f32[0] && v9.f32[0] > v53.f32[0];
          v61 = v10.f32[0] > v53.f32[0] && v9.f32[0] < v53.f32[0];
          if (v61 || v59)
          {
            v62 = v57;
            v62.i32[3] = 0;
            v63 = vmlaq_n_f32(vmulq_n_f32(v44, 1.0 - ((v53.f32[0] - v9.f32[0]) / v46)), v43, (v53.f32[0] - v9.f32[0]) / v46);
            v63.i32[3] = 0;
            v64 = vminnmq_f32(v62, v63);
            v65 = v56;
            v65.i32[3] = 0;
            v66 = vmaxnmq_f32(v65, v63);
            v64.i32[3] = v57.i32[3];
            v66.i32[3] = v56.i32[3];
            v67 = v55;
            v67.i32[3] = 0;
            v68 = vminnmq_f32(v67, v63);
            v69 = v54;
            v69.i32[3] = 0;
            v70 = vmaxnmq_f32(v69, v63);
            v68.i32[3] = v55.i32[3];
            v70.i32[3] = v54.i32[3];
            v56 = v66;
            v57 = v64;
            v54 = v70;
            v55 = v68;
          }

          if (v10.f32[0] <= v53.f32[0])
          {
            v71 = v57;
            v71.i32[3] = 0;
            v72 = vminnmq_f32(v71, v47);
            v73 = v56;
            v73.i32[3] = 0;
            v74 = vmaxnmq_f32(v73, v47);
            v72.i32[3] = v57.i32[3];
            v74.i32[3] = v56.i32[3];
            v56 = v74;
            v57 = v72;
          }

          if (v10.f32[0] >= v53.f32[0])
          {
            v75 = v55;
            v75.i32[3] = 0;
            v76 = vminnmq_f32(v75, v47);
            v77 = v54;
            v77.i32[3] = 0;
            v78 = vmaxnmq_f32(v77, v47);
            v76.i32[3] = v55.i32[3];
            v78.i32[3] = v54.i32[3];
            v54 = v78;
            v55 = v76;
          }

          v80 = v11.f32[0] < v53.f32[0] && v10.f32[0] > v53.f32[0];
          v82 = v11.f32[0] > v53.f32[0] && v10.f32[0] < v53.f32[0];
          if (v82 || v80)
          {
            v83 = v57;
            v83.i32[3] = 0;
            v84 = vmlaq_n_f32(vmulq_n_f32(v43, 1.0 - ((v53.f32[0] - v10.f32[0]) / v49)), v42, (v53.f32[0] - v10.f32[0]) / v49);
            v84.i32[3] = 0;
            v85 = vminnmq_f32(v83, v84);
            v86 = v56;
            v86.i32[3] = 0;
            v87 = vmaxnmq_f32(v86, v84);
            v85.i32[3] = v57.i32[3];
            v87.i32[3] = v56.i32[3];
            v88 = v55;
            v88.i32[3] = 0;
            v89 = vminnmq_f32(v88, v84);
            v90 = v54;
            v90.i32[3] = 0;
            v91 = vmaxnmq_f32(v90, v84);
            v89.i32[3] = v55.i32[3];
            v91.i32[3] = v54.i32[3];
            v56 = v87;
            v57 = v85;
            v54 = v91;
            v55 = v89;
          }

          if (v11.f32[0] <= v53.f32[0])
          {
            v92 = v57;
            v92.i32[3] = 0;
            v93 = vminnmq_f32(v92, v48);
            v94 = v56;
            v94.i32[3] = 0;
            v95 = vmaxnmq_f32(v94, v48);
            v93.i32[3] = v57.i32[3];
            v95.i32[3] = v56.i32[3];
            v56 = v95;
            v57 = v93;
          }

          if (v11.f32[0] >= v53.f32[0])
          {
            v96 = v55;
            v96.i32[3] = 0;
            v97 = vminnmq_f32(v96, v48);
            v98 = v54;
            v98.i32[3] = 0;
            v99 = vmaxnmq_f32(v98, v48);
            v97.i32[3] = v55.i32[3];
            v99.i32[3] = v54.i32[3];
            v54 = v99;
            v55 = v97;
          }

          v101 = v12.f32[0] < v53.f32[0] && v11.f32[0] > v53.f32[0];
          v103 = v12.f32[0] > v53.f32[0] && v11.f32[0] < v53.f32[0];
          if (v103 || v101)
          {
            v104 = v57;
            v104.i32[3] = 0;
            v105 = vmlaq_n_f32(vmulq_n_f32(v42, 1.0 - ((v53.f32[0] - v11.f32[0]) / v50)), v41, (v53.f32[0] - v11.f32[0]) / v50);
            v105.i32[3] = 0;
            v106 = vminnmq_f32(v104, v105);
            v107 = v56;
            v107.i32[3] = 0;
            v108 = vmaxnmq_f32(v107, v105);
            v106.i32[3] = v57.i32[3];
            v108.i32[3] = v56.i32[3];
            v109 = v55;
            v109.i32[3] = 0;
            v110 = vminnmq_f32(v109, v105);
            v111 = v54;
            v111.i32[3] = 0;
            v112 = vmaxnmq_f32(v111, v105);
            v110.i32[3] = v55.i32[3];
            v112.i32[3] = v54.i32[3];
            v56 = v108;
            v57 = v106;
            v54 = v112;
            v55 = v110;
          }

          if (v12.f32[0] <= v53.f32[0])
          {
            v113 = v57;
            v113.i32[3] = 0;
            v114 = vminnmq_f32(v113, v51);
            v115 = v56;
            v115.i32[3] = 0;
            v116 = vmaxnmq_f32(v115, v51);
            v114.i32[3] = v57.i32[3];
            v116.i32[3] = v56.i32[3];
            v56 = v116;
            v57 = v114;
          }

          if (v12.f32[0] >= v53.f32[0])
          {
            v117 = v55;
            v117.i32[3] = 0;
            v118 = vminnmq_f32(v117, v51);
            v119 = v54;
            v119.i32[3] = 0;
            v120 = vmaxnmq_f32(v119, v51);
            v118.i32[3] = v55.i32[3];
            v120.i32[3] = v54.i32[3];
            v54 = v120;
            v55 = v118;
          }

          v122 = v9.f32[0] < v53.f32[0] && v12.f32[0] > v53.f32[0];
          v124 = v9.f32[0] > v53.f32[0] && v12.f32[0] < v53.f32[0];
          if (v124 || v122)
          {
            v125 = v57;
            v125.i32[3] = 0;
            v126 = vmlaq_n_f32(vmulq_n_f32(v41, 1.0 - ((v53.f32[0] - v12.f32[0]) / v52)), v44, (v53.f32[0] - v12.f32[0]) / v52);
            v126.i32[3] = 0;
            v127 = vminnmq_f32(v125, v126);
            v128 = v56;
            v128.i32[3] = 0;
            v129 = vmaxnmq_f32(v128, v126);
            v127.i32[3] = v57.i32[3];
            v129.i32[3] = v56.i32[3];
            v130 = v55;
            v130.i32[3] = 0;
            v131 = vminnmq_f32(v130, v126);
            v132 = v54;
            v132.i32[3] = 0;
            v133 = vmaxnmq_f32(v132, v126);
            v131.i32[3] = v55.i32[3];
            v133.i32[3] = v54.i32[3];
            v56 = v129;
            v57 = v127;
            v54 = v133;
            v55 = v131;
          }

          v57.i32[3] = 0;
          v20.i32[3] = 0;
          v134 = vmaxnmq_f32(v57, v20);
          v135.f32[0] = v16 + ((v146 / v14) * v22);
          v53 = v53.u32[0];
          v53.i32[1] = v56.i32[1];
          v53.i32[2] = v56.i32[2];
          v23.i32[3] = 0;
          v135.i32[1] = v55.i32[1];
          v136 = vminnmq_f32(v53, v23);
          v135.i64[1] = v55.u32[2];
          v137 = v54;
          v137.i32[3] = 0;
          v20 = vmaxnmq_f32(v135, v20);
          v23 = vminnmq_f32(v137, v23);
          v138 = (a5 + 32 * v22);
          v139 = *v138;
          v140 = v138[1];
          v139.i32[3] = 0;
          v134.i32[3] = 0;
          v140.i32[3] = 0;
          v136.i32[3] = 0;
          v141 = vminnmq_f32(v139, v134);
          v142 = vmaxnmq_f32(v140, v136);
          v138->i32[2] = v141.i32[2];
          v138->i64[0] = v141.i64[0];
          v138[1].i32[2] = v142.i32[2];
          v138[1].i64[0] = v142.i64[0];
          ++v22;
        }

        while (v24 != v22);
      }

      v143 = (a5 + 32 * v24);
      v9 = *v143;
      v10 = v143[1];
      v9.i32[3] = 0;
      v20.i32[3] = 0;
      v10.i32[3] = 0;
      v23.i32[3] = 0;
      v144 = vminnmq_f32(v9, v20);
      v145 = vmaxnmq_f32(v10, v23);
      v143->i32[2] = v144.i32[2];
      v143->i64[0] = v144.i64[0];
      v143[1].i32[2] = v145.i32[2];
      v143[1].i64[0] = v145.i64[0];
      ++v17;
    }

    while (v17 != v18);
  }

  return result;
}

uint64_t sub_239DFF3A8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9)
{
  if (a6 < a7)
  {
    v13 = *(result + 44);
    v14 = a8.f32[1];
    v15 = vsubq_f32(a9, a8);
    v16 = v13;
    v17 = v13 - 1;
    v18 = v15.f32[1] / v16;
    v142 = v14;
    v19 = v14 + (v15.f32[1] / v16);
    v20 = a6;
    v21 = a7;
    do
    {
      v22 = a2 + 32 * v20;
      v23.i64[0] = *v22;
      v24 = (((COERCE_FLOAT(HIDWORD(*v22)) - v142) / v15.f32[1]) * v16);
      if (v17 >= v24)
      {
        v25 = (((COERCE_FLOAT(HIDWORD(*v22)) - v142) / v15.f32[1]) * v16);
      }

      else
      {
        v25 = v17;
      }

      v26.i64[0] = *(v22 + 16);
      LODWORD(v27) = (((v26.f32[1] - v142) / v15.f32[1]) * v16);
      if (v17 >= v27)
      {
        v27 = v27;
      }

      else
      {
        v27 = v17;
      }

      v28 = *(v22 + 28);
      v29 = 4 * *(v22 + 12);
      v30 = v29 | 1;
      v31 = v29 | 2;
      v32 = v29 | 3;
      v33 = *(*(result + 128) + 8 * v28);
      if (v33)
      {
        if (*(*(result + 152) + 4 * v28) == 4)
        {
          v29 = *(v33 + 4 * v29);
          v30 = *(v33 + 4 * v30);
          v31 = *(v33 + 4 * v31);
          v32 = *(v33 + 4 * v32);
        }

        else
        {
          v29 = *(v33 + 2 * v29);
          v30 = *(v33 + 2 * v30);
          v31 = *(v33 + 2 * v31);
          v32 = *(v33 + 2 * v32);
        }
      }

      v23.i32[2] = *(v22 + 8);
      v26.i32[2] = *(v22 + 24);
      v34 = *(*(result + 80) + 8 * v28);
      v35 = *(*(result + 104) + 4 * v28);
      v36 = v34 + v35 * v29;
      v9.i64[0] = *v36;
      v37 = *(v36 + 8);
      v38 = v34 + v35 * v30;
      v10.i64[0] = *v38;
      v39 = *(v38 + 8);
      v40 = v34 + v35 * v31;
      v11.i64[0] = *v40;
      v41 = *(v40 + 8);
      v42 = v34 + v35 * v32;
      v12.i64[0] = *v42;
      v43 = *(v42 + 8);
      ++*(a4 + 4 * v25);
      ++*(a3 + 4 * v27);
      if (v27 > v24)
      {
        v44 = v12;
        v44.i32[2] = v43;
        v45 = v11;
        v45.i32[2] = v41;
        v9.i32[2] = v37;
        v46 = v9;
        v46.i32[3] = 0;
        v10.i32[2] = v39;
        v47 = v10;
        v47.i32[3] = 0;
        v48 = v45;
        v48.i32[3] = 0;
        v49 = v44;
        v49.i32[3] = 0;
        do
        {
          v50 = v19 + (v18 * v25);
          v51.i64[0] = 0x7F0000007FLL;
          v51.i64[1] = 0x7F0000007FLL;
          v52 = vnegq_f32(v51);
          v53.i64[0] = 0x7F0000007FLL;
          v53.i64[1] = 0x7F0000007FLL;
          v54 = v52;
          if (v9.f32[1] <= v50)
          {
            v54 = vminnmq_f32(v46, xmmword_239E26FC0);
            v53 = vmaxnmq_f32(v46, xmmword_239E26FD0);
          }

          if (v9.f32[1] < v50)
          {
            v55 = v10.f32[1] <= v50;
          }

          else
          {
            v52 = vminnmq_f32(v46, xmmword_239E26FC0);
            v51 = vmaxnmq_f32(v46, xmmword_239E26FD0);
            v55 = 1;
          }

          if (!v55 || (v9.f32[1] > v50 ? (v56 = v10.f32[1] < v50) : (v56 = 0), v56))
          {
            v57 = v54;
            v57.i32[3] = 0;
            v58 = vmlaq_n_f32(vmulq_n_f32(v9, 1.0 - ((v50 - v9.f32[1]) / (v10.f32[1] - v9.f32[1]))), v10, (v50 - v9.f32[1]) / (v10.f32[1] - v9.f32[1]));
            v58.i32[3] = 0;
            v59 = vminnmq_f32(v57, v58);
            v60 = v53;
            v60.i32[3] = 0;
            v61 = vmaxnmq_f32(v60, v58);
            v59.i32[3] = v54.i32[3];
            v61.i32[3] = v53.i32[3];
            v62 = v52;
            v62.i32[3] = 0;
            v63 = vminnmq_f32(v62, v58);
            v64 = v51;
            v64.i32[3] = 0;
            v65 = vmaxnmq_f32(v64, v58);
            v63.i32[3] = v52.i32[3];
            v65.i32[3] = v51.i32[3];
            v53 = v61;
            v54 = v59;
            v51 = v65;
            v52 = v63;
          }

          if (v10.f32[1] <= v50)
          {
            v66 = v54;
            v66.i32[3] = 0;
            v67 = vminnmq_f32(v66, v47);
            v68 = v53;
            v68.i32[3] = 0;
            v69 = vmaxnmq_f32(v68, v47);
            v67.i32[3] = v54.i32[3];
            v69.i32[3] = v53.i32[3];
            v53 = v69;
            v54 = v67;
          }

          if (v10.f32[1] >= v50)
          {
            v70 = v52;
            v70.i32[3] = 0;
            v71 = vminnmq_f32(v70, v47);
            v72 = v51;
            v72.i32[3] = 0;
            v73 = vmaxnmq_f32(v72, v47);
            v71.i32[3] = v52.i32[3];
            v73.i32[3] = v51.i32[3];
            v51 = v73;
            v52 = v71;
          }

          v75 = v11.f32[1] < v50 && v10.f32[1] > v50;
          v77 = v11.f32[1] > v50 && v10.f32[1] < v50;
          if (v77 || v75)
          {
            v78 = v54;
            v78.i32[3] = 0;
            v79 = vmlaq_n_f32(vmulq_n_f32(v10, 1.0 - ((v50 - v10.f32[1]) / (v11.f32[1] - v10.f32[1]))), v45, (v50 - v10.f32[1]) / (v11.f32[1] - v10.f32[1]));
            v79.i32[3] = 0;
            v80 = vminnmq_f32(v78, v79);
            v81 = v53;
            v81.i32[3] = 0;
            v82 = vmaxnmq_f32(v81, v79);
            v80.i32[3] = v54.i32[3];
            v82.i32[3] = v53.i32[3];
            v83 = v52;
            v83.i32[3] = 0;
            v84 = vminnmq_f32(v83, v79);
            v85 = v51;
            v85.i32[3] = 0;
            v86 = vmaxnmq_f32(v85, v79);
            v84.i32[3] = v52.i32[3];
            v86.i32[3] = v51.i32[3];
            v53 = v82;
            v54 = v80;
            v51 = v86;
            v52 = v84;
          }

          if (v11.f32[1] <= v50)
          {
            v87 = v54;
            v87.i32[3] = 0;
            v88 = vminnmq_f32(v87, v48);
            v89 = v53;
            v89.i32[3] = 0;
            v90 = vmaxnmq_f32(v89, v48);
            v88.i32[3] = v54.i32[3];
            v90.i32[3] = v53.i32[3];
            v53 = v90;
            v54 = v88;
          }

          if (v11.f32[1] >= v50)
          {
            v91 = v52;
            v91.i32[3] = 0;
            v92 = vminnmq_f32(v91, v48);
            v93 = v51;
            v93.i32[3] = 0;
            v94 = vmaxnmq_f32(v93, v48);
            v92.i32[3] = v52.i32[3];
            v94.i32[3] = v51.i32[3];
            v51 = v94;
            v52 = v92;
          }

          v96 = v12.f32[1] < v50 && v11.f32[1] > v50;
          v98 = v12.f32[1] > v50 && v11.f32[1] < v50;
          if (v98 || v96)
          {
            v99 = v54;
            v99.i32[3] = 0;
            v100 = vmlaq_n_f32(vmulq_n_f32(v45, 1.0 - ((v50 - v11.f32[1]) / (v12.f32[1] - v11.f32[1]))), v44, (v50 - v11.f32[1]) / (v12.f32[1] - v11.f32[1]));
            v100.i32[3] = 0;
            v101 = vminnmq_f32(v99, v100);
            v102 = v53;
            v102.i32[3] = 0;
            v103 = vmaxnmq_f32(v102, v100);
            v101.i32[3] = v54.i32[3];
            v103.i32[3] = v53.i32[3];
            v104 = v52;
            v104.i32[3] = 0;
            v105 = vminnmq_f32(v104, v100);
            v106 = v51;
            v106.i32[3] = 0;
            v107 = vmaxnmq_f32(v106, v100);
            v105.i32[3] = v52.i32[3];
            v107.i32[3] = v51.i32[3];
            v53 = v103;
            v54 = v101;
            v51 = v107;
            v52 = v105;
          }

          if (v12.f32[1] <= v50)
          {
            v108 = v54;
            v108.i32[3] = 0;
            v109 = vminnmq_f32(v108, v49);
            v110 = v53;
            v110.i32[3] = 0;
            v111 = vmaxnmq_f32(v110, v49);
            v109.i32[3] = v54.i32[3];
            v111.i32[3] = v53.i32[3];
            v53 = v111;
            v54 = v109;
          }

          if (v12.f32[1] >= v50)
          {
            v112 = v52;
            v112.i32[3] = 0;
            v113 = vminnmq_f32(v112, v49);
            v114 = v51;
            v114.i32[3] = 0;
            v115 = vmaxnmq_f32(v114, v49);
            v113.i32[3] = v52.i32[3];
            v115.i32[3] = v51.i32[3];
            v51 = v115;
            v52 = v113;
          }

          v117 = v9.f32[1] < v50 && v12.f32[1] > v50;
          v119 = v9.f32[1] > v50 && v12.f32[1] < v50;
          if (v119 || v117)
          {
            v120 = v54;
            v120.i32[3] = 0;
            v121 = vmlaq_n_f32(vmulq_n_f32(v44, 1.0 - ((v50 - v12.f32[1]) / (v9.f32[1] - v12.f32[1]))), v9, (v50 - v12.f32[1]) / (v9.f32[1] - v12.f32[1]));
            v121.i32[3] = 0;
            v122 = vminnmq_f32(v120, v121);
            v123 = v53;
            v123.i32[3] = 0;
            v124 = vmaxnmq_f32(v123, v121);
            v122.i32[3] = v54.i32[3];
            v124.i32[3] = v53.i32[3];
            v125 = v52;
            v125.i32[3] = 0;
            v126 = vminnmq_f32(v125, v121);
            v127 = v51;
            v127.i32[3] = 0;
            v128 = vmaxnmq_f32(v127, v121);
            v126.i32[3] = v52.i32[3];
            v128.i32[3] = v51.i32[3];
            v53 = v124;
            v54 = v122;
            v51 = v128;
            v52 = v126;
          }

          v54.i32[3] = 0;
          v23.i32[3] = 0;
          v129.i32[0] = v53.i32[0];
          v129.f32[1] = v19 + (v18 * v25);
          v129.i64[1] = v53.u32[2];
          v26.i32[3] = 0;
          v130 = vmaxnmq_f32(v54, v23);
          v131.i32[0] = v52.i32[0];
          v131.f32[1] = v129.f32[1];
          v132 = vminnmq_f32(v129, v26);
          v131.i64[1] = v52.u32[2];
          v133 = v51;
          v133.i32[3] = 0;
          v23 = vmaxnmq_f32(v131, v23);
          v26 = vminnmq_f32(v133, v26);
          v134 = (a5 + 32 * v25);
          v135 = *v134;
          v136 = v134[1];
          v135.i32[3] = 0;
          v130.i32[3] = 0;
          v136.i32[3] = 0;
          v132.i32[3] = 0;
          v137 = vminnmq_f32(v135, v130);
          v138 = vmaxnmq_f32(v136, v132);
          v134->i32[2] = v137.i32[2];
          v134->i64[0] = v137.i64[0];
          v134[1].i32[2] = v138.i32[2];
          v134[1].i64[0] = v138.i64[0];
          ++v25;
        }

        while (v27 != v25);
      }

      v139 = (a5 + 32 * v27);
      v9 = *v139;
      v10 = v139[1];
      v9.i32[3] = 0;
      v23.i32[3] = 0;
      v10.i32[3] = 0;
      v26.i32[3] = 0;
      v140 = vminnmq_f32(v9, v23);
      v141 = vmaxnmq_f32(v10, v26);
      v139->i32[2] = v140.i32[2];
      v139->i64[0] = v140.i64[0];
      v139[1].i32[2] = v141.i32[2];
      v139[1].i64[0] = v141.i64[0];
      ++v20;
    }

    while (v20 != v21);
  }

  return result;
}

uint64_t sub_239DFFA00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, float32x4_t a8, float32x4_t a9)
{
  if (a6 < a7)
  {
    v13 = *(result + 44);
    v14 = a8.f32[2];
    v15 = vsubq_f32(a9, a8);
    v16 = v13;
    v17 = v13 - 1;
    v138 = v14;
    v18 = v14 + (v15.f32[2] / v16);
    v19 = a6;
    v20 = a7;
    do
    {
      v21 = a2 + 32 * v19;
      v22 = (((*(v21 + 8) - v138) / v15.f32[2]) * v16);
      if (v17 >= v22)
      {
        v23 = (((*(v21 + 8) - v138) / v15.f32[2]) * v16);
      }

      else
      {
        v23 = v17;
      }

      LODWORD(v24) = (((*(v21 + 24) - v138) / v15.f32[2]) * v16);
      if (v17 >= v24)
      {
        v24 = v24;
      }

      else
      {
        v24 = v17;
      }

      v25 = *(v21 + 28);
      v26 = 4 * *(v21 + 12);
      v27 = v26 | 1;
      v28 = v26 | 2;
      v29 = v26 | 3;
      v30 = *(*(result + 128) + 8 * v25);
      if (v30)
      {
        if (*(*(result + 152) + 4 * v25) == 4)
        {
          v26 = *(v30 + 4 * v26);
          v27 = *(v30 + 4 * v27);
          v28 = *(v30 + 4 * v28);
          v29 = *(v30 + 4 * v29);
        }

        else
        {
          v26 = *(v30 + 2 * v26);
          v27 = *(v30 + 2 * v27);
          v28 = *(v30 + 2 * v28);
          v29 = *(v30 + 2 * v29);
        }
      }

      v31.i64[0] = *v21;
      v31.i32[2] = *(v21 + 8);
      v32.i64[0] = *(v21 + 16);
      v32.i32[2] = *(v21 + 24);
      v33 = *(*(result + 80) + 8 * v25);
      v34 = *(*(result + 104) + 4 * v25);
      v35 = v33 + v34 * v26;
      v9.i64[0] = *v35;
      v36 = *(v35 + 8);
      v37 = v33 + v34 * v27;
      v10.i64[0] = *v37;
      v38 = *(v37 + 8);
      v39 = v33 + v34 * v28;
      v11.i64[0] = *v39;
      v40 = *(v39 + 8);
      v41 = v33 + v34 * v29;
      v12.i64[0] = *v41;
      v42 = *(v41 + 8);
      ++*(a4 + 4 * v23);
      ++*(a3 + 4 * v24);
      if (v24 > v22)
      {
        v12.f32[2] = v42;
        v11.f32[2] = v40;
        v10.f32[2] = v38;
        v9.f32[2] = v36;
        v43 = v9;
        v43.i32[3] = 0;
        v44 = v10;
        v44.i32[3] = 0;
        v45 = v11;
        v45.i32[3] = 0;
        v46 = v12;
        v46.i32[3] = 0;
        do
        {
          v47 = v18 + ((v15.f32[2] / v16) * v23);
          v48.i64[0] = 0x7F0000007FLL;
          v48.i64[1] = 0x7F0000007FLL;
          v49 = vnegq_f32(v48);
          v50.i64[0] = 0x7F0000007FLL;
          v50.i64[1] = 0x7F0000007FLL;
          v51 = v49;
          if (v36 <= v47)
          {
            v51 = vminnmq_f32(v43, xmmword_239E26FC0);
            v50 = vmaxnmq_f32(v43, xmmword_239E26FD0);
          }

          if (v36 < v47)
          {
            v52 = v38 <= v47;
          }

          else
          {
            v49 = vminnmq_f32(v43, xmmword_239E26FC0);
            v48 = vmaxnmq_f32(v43, xmmword_239E26FD0);
            v52 = 1;
          }

          if (!v52 || (v36 > v47 ? (v53 = v38 < v47) : (v53 = 0), v53))
          {
            v54 = v51;
            v54.i32[3] = 0;
            v55 = vmlaq_n_f32(vmulq_n_f32(v9, 1.0 - ((v47 - v36) / (v38 - v36))), v10, (v47 - v36) / (v38 - v36));
            v55.i32[3] = 0;
            v56 = vminnmq_f32(v54, v55);
            v57 = v50;
            v57.i32[3] = 0;
            v58 = vmaxnmq_f32(v57, v55);
            v56.i32[3] = v51.i32[3];
            v58.i32[3] = v50.i32[3];
            v59 = v49;
            v59.i32[3] = 0;
            v60 = vminnmq_f32(v59, v55);
            v61 = v48;
            v61.i32[3] = 0;
            v62 = vmaxnmq_f32(v61, v55);
            v60.i32[3] = v49.i32[3];
            v62.i32[3] = v48.i32[3];
            v50 = v58;
            v51 = v56;
            v48 = v62;
            v49 = v60;
          }

          if (v38 <= v47)
          {
            v63 = v51;
            v63.i32[3] = 0;
            v64 = vminnmq_f32(v63, v44);
            v65 = v50;
            v65.i32[3] = 0;
            v66 = vmaxnmq_f32(v65, v44);
            v64.i32[3] = v51.i32[3];
            v66.i32[3] = v50.i32[3];
            v50 = v66;
            v51 = v64;
          }

          if (v38 >= v47)
          {
            v67 = v49;
            v67.i32[3] = 0;
            v68 = vminnmq_f32(v67, v44);
            v69 = v48;
            v69.i32[3] = 0;
            v70 = vmaxnmq_f32(v69, v44);
            v68.i32[3] = v49.i32[3];
            v70.i32[3] = v48.i32[3];
            v48 = v70;
            v49 = v68;
          }

          v72 = v40 < v47 && v38 > v47;
          v74 = v40 > v47 && v38 < v47;
          if (v74 || v72)
          {
            v75 = v51;
            v75.i32[3] = 0;
            v76 = vmlaq_n_f32(vmulq_n_f32(v10, 1.0 - ((v47 - v38) / (v40 - v38))), v11, (v47 - v38) / (v40 - v38));
            v76.i32[3] = 0;
            v77 = vminnmq_f32(v75, v76);
            v78 = v50;
            v78.i32[3] = 0;
            v79 = vmaxnmq_f32(v78, v76);
            v77.i32[3] = v51.i32[3];
            v79.i32[3] = v50.i32[3];
            v80 = v49;
            v80.i32[3] = 0;
            v81 = vminnmq_f32(v80, v76);
            v82 = v48;
            v82.i32[3] = 0;
            v83 = vmaxnmq_f32(v82, v76);
            v81.i32[3] = v49.i32[3];
            v83.i32[3] = v48.i32[3];
            v50 = v79;
            v51 = v77;
            v48 = v83;
            v49 = v81;
          }

          if (v40 <= v47)
          {
            v84 = v51;
            v84.i32[3] = 0;
            v85 = vminnmq_f32(v84, v45);
            v86 = v50;
            v86.i32[3] = 0;
            v87 = vmaxnmq_f32(v86, v45);
            v85.i32[3] = v51.i32[3];
            v87.i32[3] = v50.i32[3];
            v50 = v87;
            v51 = v85;
          }

          if (v40 >= v47)
          {
            v88 = v49;
            v88.i32[3] = 0;
            v89 = vminnmq_f32(v88, v45);
            v90 = v48;
            v90.i32[3] = 0;
            v91 = vmaxnmq_f32(v90, v45);
            v89.i32[3] = v49.i32[3];
            v91.i32[3] = v48.i32[3];
            v48 = v91;
            v49 = v89;
          }

          v93 = v42 < v47 && v40 > v47;
          v95 = v42 > v47 && v40 < v47;
          if (v95 || v93)
          {
            v96 = v51;
            v96.i32[3] = 0;
            v97 = vmlaq_n_f32(vmulq_n_f32(v11, 1.0 - ((v47 - v40) / (v42 - v40))), v12, (v47 - v40) / (v42 - v40));
            v97.i32[3] = 0;
            v98 = vminnmq_f32(v96, v97);
            v99 = v50;
            v99.i32[3] = 0;
            v100 = vmaxnmq_f32(v99, v97);
            v98.i32[3] = v51.i32[3];
            v100.i32[3] = v50.i32[3];
            v101 = v49;
            v101.i32[3] = 0;
            v102 = vminnmq_f32(v101, v97);
            v103 = v48;
            v103.i32[3] = 0;
            v104 = vmaxnmq_f32(v103, v97);
            v102.i32[3] = v49.i32[3];
            v104.i32[3] = v48.i32[3];
            v50 = v100;
            v51 = v98;
            v48 = v104;
            v49 = v102;
          }

          if (v42 <= v47)
          {
            v105 = v51;
            v105.i32[3] = 0;
            v106 = vminnmq_f32(v105, v46);
            v107 = v50;
            v107.i32[3] = 0;
            v108 = vmaxnmq_f32(v107, v46);
            v106.i32[3] = v51.i32[3];
            v108.i32[3] = v50.i32[3];
            v50 = v108;
            v51 = v106;
          }

          if (v42 >= v47)
          {
            v109 = v49;
            v109.i32[3] = 0;
            v110 = vminnmq_f32(v109, v46);
            v111 = v48;
            v111.i32[3] = 0;
            v112 = vmaxnmq_f32(v111, v46);
            v110.i32[3] = v49.i32[3];
            v112.i32[3] = v48.i32[3];
            v48 = v112;
            v49 = v110;
          }

          v114 = v36 < v47 && v42 > v47;
          v116 = v36 > v47 && v42 < v47;
          if (v116 || v114)
          {
            v117 = v51;
            v117.i32[3] = 0;
            v118 = vmlaq_n_f32(vmulq_n_f32(v12, 1.0 - ((v47 - v42) / (v36 - v42))), v9, (v47 - v42) / (v36 - v42));
            v118.i32[3] = 0;
            v119 = vminnmq_f32(v117, v118);
            v120 = v50;
            v120.i32[3] = 0;
            v120.i64[0] = vmaxnmq_f32(v120, v118).u64[0];
            v119.i32[3] = v51.i32[3];
            v121 = v49;
            v121.i32[3] = 0;
            v122 = vminnmq_f32(v121, v118).u64[0];
            v50 = v48;
            v50.i32[3] = 0;
            v123 = vmaxnmq_f32(v50, v118);
            v123.i32[3] = v48.i32[3];
            v50.i64[0] = v120.i64[0];
            v51 = v119;
            v48 = v123;
            v49.i64[0] = v122;
          }

          v51.i32[3] = 0;
          v31.i32[3] = 0;
          v124.i64[0] = v50.i64[0];
          v124.i64[1] = LODWORD(v47);
          v32.i32[3] = 0;
          v125 = vmaxnmq_f32(v51, v31);
          v126.i64[0] = v49.i64[0];
          v127 = vminnmq_f32(v124, v32);
          v126.i64[1] = LODWORD(v47);
          v128 = v48;
          v128.i32[3] = 0;
          v31 = vmaxnmq_f32(v126, v31);
          v32 = vminnmq_f32(v128, v32);
          v129 = (a5 + 32 * v23);
          v130 = *v129;
          v131 = v129[1];
          v130.i32[3] = 0;
          v125.i32[3] = 0;
          v131.i32[3] = 0;
          v127.i32[3] = 0;
          v132 = vminnmq_f32(v130, v125);
          v133 = vmaxnmq_f32(v131, v127);
          v129->i32[2] = v132.i32[2];
          v129->i64[0] = v132.i64[0];
          v129[1].i32[2] = v133.i32[2];
          v129[1].i64[0] = v133.i64[0];
          ++v23;
        }

        while (v24 != v23);
      }

      v134 = (a5 + 32 * v24);
      v9 = *v134;
      v135 = v134[1];
      v9.i32[3] = 0;
      v31.i32[3] = 0;
      v135.i32[3] = 0;
      v32.i32[3] = 0;
      v136 = vminnmq_f32(v9, v31);
      v137 = vmaxnmq_f32(v135, v32);
      v134->i32[2] = v136.i32[2];
      v134->i64[0] = v136.i64[0];
      v134[1].i32[2] = v137.i32[2];
      v134[1].i64[0] = v137.i64[0];
      ++v19;
    }

    while (v19 != v20);
  }

  return result;
}

void sub_239E00038(float32x4_t *a1, int a2)
{
  v58[1] = *MEMORY[0x277D85DE8];
  v4 = a1[4].i64[0];
  v5 = a1[6].u32[2];
  MEMORY[0x28223BE20]();
  v6 = v58 - ((4 * v5 + 15) & 0x7FFFFFFF0);
  bzero(v6, 4 * v5);
  MEMORY[0x28223BE20]();
  bzero(v6, 4 * v5);
  MEMORY[0x28223BE20]();
  v7 = &v58[-4 * v5];
  bzero(v7, v8);
  if (v5)
  {
    bzero(v6, 4 * v5);
    bzero(v6, 4 * v5);
    v9 = v7 + 1;
    v10.i64[0] = 0x7F0000007FLL;
    v10.i64[1] = 0x7F0000007FLL;
    v11 = vnegq_f32(v10);
    do
    {
      v9[-1] = v11;
      *v9 = v10;
      v9 += 2;
      --v5;
    }

    while (v5);
  }

  v12 = *(v4 + 24);
  v13 = v12 * a2;
  v14 = v12 * a2 + v12;
  v15 = a1[7].i32[0];
  if (v14 >= a1[6].i32[3])
  {
    v16 = a1[6].u32[3];
  }

  else
  {
    v16 = v14;
  }

  if (v15)
  {
    if (v15 == 1)
    {
      sub_239DFF3A8(v4, a1[4].i64[1], v6, v6, v7, v13, v16, a1[2], a1[3]);
    }

    else if (v15 == 2)
    {
      sub_239DFFA00(v4, a1[4].i64[1], v6, v6, v7, v13, v16, a1[2], a1[3]);
    }
  }

  else
  {
    sub_239DFED64(v4, a1[4].i64[1], v6, v6, v7, v13, v16, a1[2], a1[3]);
  }

  if (a1[6].i32[2])
  {
    v17 = 0;
    do
    {
      atomic_fetch_add((a1[5].i64[0] + 4 * v17), *&v6[4 * v17]);
      atomic_fetch_add((a1[5].i64[1] + 4 * v17), *&v6[4 * v17]);
      v18 = (a1[6].i64[0] + 32 * v17);
      f32 = v7[2 * v17].f32;
      v20 = *f32;
      v21 = COERCE_FLOAT(atomic_load(v18));
      v22 = v21;
      if (v20 <= v21)
      {
        v22 = *f32;
      }

      v23 = v21;
      atomic_compare_exchange_strong_explicit(v18, &v23, LODWORD(v22), memory_order_release, memory_order_relaxed);
      if (LODWORD(v23) != LODWORD(v21))
      {
        v24 = v23;
        do
        {
          *&v25 = v23;
          if (v20 <= v23)
          {
            *&v25 = v20;
          }

          atomic_compare_exchange_strong_explicit(v18, &v24, v25, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v24) == LODWORD(v23);
          v23 = v24;
        }

        while (!v26);
      }

      v27 = f32[1];
      v28 = COERCE_FLOAT(atomic_load(v18 + 1));
      v29 = LODWORD(v28);
      if (v27 <= v28)
      {
        v29 = *(f32 + 1);
      }

      v30 = v28;
      atomic_compare_exchange_strong_explicit(v18 + 1, &v30, v29, memory_order_release, memory_order_relaxed);
      if (LODWORD(v30) != LODWORD(v28))
      {
        v31 = v30;
        do
        {
          *&v32 = v30;
          if (v27 <= v30)
          {
            *&v32 = v27;
          }

          atomic_compare_exchange_strong_explicit(v18 + 1, &v31, v32, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v31) == LODWORD(v30);
          v30 = v31;
        }

        while (!v26);
      }

      v33 = f32[2];
      v34 = COERCE_FLOAT(atomic_load(v18 + 2));
      v35 = LODWORD(v34);
      if (v33 <= v34)
      {
        v35 = *(f32 + 2);
      }

      v36 = v34;
      atomic_compare_exchange_strong_explicit(v18 + 2, &v36, v35, memory_order_release, memory_order_relaxed);
      if (LODWORD(v36) != LODWORD(v34))
      {
        v37 = v36;
        do
        {
          *&v38 = v36;
          if (v33 <= v36)
          {
            *&v38 = v33;
          }

          atomic_compare_exchange_strong_explicit(v18 + 2, &v37, v38, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v37) == LODWORD(v36);
          v36 = v37;
        }

        while (!v26);
      }

      v39 = f32[4];
      v40 = COERCE_FLOAT(atomic_load(v18 + 4));
      v41 = LODWORD(v40);
      if (v39 > v40)
      {
        v41 = *(f32 + 4);
      }

      v42 = v40;
      atomic_compare_exchange_strong_explicit(v18 + 4, &v42, v41, memory_order_release, memory_order_relaxed);
      if (LODWORD(v42) != LODWORD(v40))
      {
        v43 = v42;
        do
        {
          *&v44 = v42;
          if (v39 > v42)
          {
            *&v44 = v39;
          }

          atomic_compare_exchange_strong_explicit(v18 + 4, &v43, v44, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v43) == LODWORD(v42);
          v42 = v43;
        }

        while (!v26);
      }

      v45 = f32[5];
      v46 = COERCE_FLOAT(atomic_load(v18 + 5));
      v47 = LODWORD(v46);
      if (v45 > v46)
      {
        v47 = *(f32 + 5);
      }

      v48 = v46;
      atomic_compare_exchange_strong_explicit(v18 + 5, &v48, v47, memory_order_release, memory_order_relaxed);
      if (LODWORD(v48) != LODWORD(v46))
      {
        v49 = v48;
        do
        {
          *&v50 = v48;
          if (v45 > v48)
          {
            *&v50 = v45;
          }

          atomic_compare_exchange_strong_explicit(v18 + 5, &v49, v50, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v49) == LODWORD(v48);
          v48 = v49;
        }

        while (!v26);
      }

      v51 = f32[6];
      v52 = COERCE_FLOAT(atomic_load(v18 + 6));
      v53 = LODWORD(v52);
      if (v51 > v52)
      {
        v53 = *(f32 + 6);
      }

      v54 = v52;
      atomic_compare_exchange_strong_explicit(v18 + 6, &v54, v53, memory_order_release, memory_order_relaxed);
      if (LODWORD(v54) != LODWORD(v52))
      {
        v55 = v54;
        do
        {
          *&v56 = v54;
          if (v51 > v54)
          {
            *&v56 = v51;
          }

          atomic_compare_exchange_strong_explicit(v18 + 6, &v55, v56, memory_order_release, memory_order_relaxed);
          v26 = LODWORD(v55) == LODWORD(v54);
          v54 = v55;
        }

        while (!v26);
      }

      ++v17;
    }

    while (v17 < a1[6].u32[2]);
  }

  v57 = *MEMORY[0x277D85DE8];
}

float *sub_239E0043C(float *a1, float *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  while (2)
  {
    v5 = a3[1];
    v4 = a3[2];
    v6 = v5;
    v7 = &a3[v5 & 3];
    v8 = v7[28];
    v9 = v7[32];
    LODWORD(v7) = a3[36];
    v10 = v9 - v8;
    v11 = v7;
    v12 = v7 - 1;
    while (1)
    {
      v13 = (((a1[v6] - v8) / v10) * v11);
      if (v12 < v13)
      {
        v13 = v12;
      }

      if (v13 >= v4)
      {
        break;
      }

      a1 += 8;
      if (a1 == v3)
      {
        return v3;
      }
    }

    v14 = 4 * v6 - 32;
    v15 = v3;
    do
    {
      v3 = v15 - 8;
      if (v15 - 8 == a1)
      {
        return a1;
      }

      v16 = (((*(v15 + v14) - v8) / v10) * v11);
      if (v12 >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      v15 = v3;
    }

    while (v17 >= v4);
    v20 = *(a1 + 1);
    v19 = *a1;
    *(a1 + 1) = *(v3 + 1);
    *a1 = *v3;
    a1 += 8;
    *(v3 + 1) = v20;
    *v3 = v19;
    if (v3 != a1)
    {
      continue;
    }

    break;
  }

  return v3;
}

__int128 *sub_239E00554(__int128 *a1, __int128 *a2, _DWORD *a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  while (2)
  {
    v5 = a3[1];
    v4 = a3[2];
    v6 = v5;
    v7 = &a3[v5 & 3];
    v8 = v7[28];
    v9 = v7[32];
    LODWORD(v7) = a3[36];
    v10 = v9 - v8;
    v11 = v7;
    v12 = v7 - 1;
    v13 = 4 * v6;
    v14 = 4 * v6 + 16;
    while (1)
    {
      v15 = (((*(a1 + v14) - v8) / v10) * v11);
      if (v12 < v15)
      {
        v15 = v12;
      }

      if (v15 >= v4)
      {
        break;
      }

      a1 += 2;
      if (a1 == v3)
      {
        return v3;
      }
    }

    v16 = v13 - 16;
    v17 = v3;
    do
    {
      v3 = v17 - 2;
      if (v17 - 2 == a1)
      {
        return a1;
      }

      v18 = (((*(v17 + v16) - v8) / v10) * v11);
      if (v12 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v12;
      }

      v17 = v3;
    }

    while (v19 >= v4);
    v22 = a1[1];
    v21 = *a1;
    a1[1] = v3[1];
    *a1 = *v3;
    a1 += 2;
    v3[1] = v22;
    *v3 = v21;
    if (v3 != a1)
    {
      continue;
    }

    break;
  }

  return v3;
}

BOOL sub_239E00670(const char *a1)
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname(a1, &v3, &v2, 0, 0) < 0 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  return v3 != 0;
}

void *sub_239E006FC(const void *a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = (objc_msgSend_contents(a3, a2, a3, a4, a5) + a4);

  return memcpy(v7, a1, a2);
}

void *sub_239E00750(void *a1, const char *a2, void *a3, size_t a4, uint64_t a5)
{
  v7 = &a2[objc_msgSend_contents(a1, a2, a3, a4, a5)];

  return memcpy(a3, v7, a4);
}

id sub_239E007A0(void *a1, void *a2, void *a3, uint64_t a4)
{
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a2 == a3)
  {
    v130 = qword_27DF88880++;
    sub_239E00B50(a2, 724238768, v130);
    v135 = objc_msgSend_blitCommandEncoder(a2, v131, v132, v133, v134);
    if (objc_msgSend_count(a1, v136, v137, v138, v139))
    {
      v144 = 0;
      do
      {
        v145 = objc_msgSend_objectAtIndexedSubscript_(a1, v140, v144, v142, v143);
        v150 = objc_msgSend_device(a2, v146, v147, v148, v149);
        v155 = objc_msgSend_length(v145, v151, v152, v153, v154);
        v158 = objc_msgSend_newBufferWithLength_options_(v150, v156, v155, a4, v157);
        v163 = objc_msgSend_length(v145, v159, v160, v161, v162);
        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v135, v164, v145, 0, v158, 0, v163);
        objc_msgSend_addObject_(v12, v165, v158, v166, v167);

        ++v144;
      }

      while (v144 < objc_msgSend_count(a1, v168, v169, v170, v171));
    }

    objc_msgSend_endEncoding(v135, v140, v141, v142, v143);
    sub_239E00B50(a2, 724238772, v130);
  }

  else
  {
    v174 = objc_msgSend_blitCommandEncoder(a2, v8, v9, v10, v11);
    v175 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = a2;
    v173 = a4;
    if (objc_msgSend_count(a1, v14, v15, v16, v17))
    {
      v23 = 0;
      do
      {
        v24 = v12;
        v25 = objc_msgSend_objectAtIndexedSubscript_(a1, v18, v23, v20, v21);
        v30 = objc_msgSend_device(v22, v26, v27, v28, v29);
        v35 = objc_msgSend_length(v25, v31, v32, v33, v34);
        v38 = objc_msgSend_newBufferWithLength_options_(v30, v36, v35, 0, v37);
        v43 = objc_msgSend_device(a3, v39, v40, v41, v42);
        v48 = objc_msgSend_length(v38, v44, v45, v46, v47);
        v51 = objc_msgSend_newBufferWithLength_options_(v43, v49, v48, 0, v50);
        v56 = objc_msgSend_device(a3, v52, v53, v54, v55);
        v61 = objc_msgSend_length(v38, v57, v58, v59, v60);
        v64 = objc_msgSend_newBufferWithLength_options_(v56, v62, v61, v173, v63);
        v69 = objc_msgSend_length(v38, v65, v66, v67, v68);
        v70 = v25;
        v12 = v24;
        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v174, v71, v70, 0, v38, 0, v69);
        objc_msgSend_addObject_(v175, v72, v38, v73, v74);

        objc_msgSend_addObject_(v13, v75, v51, v76, v77);
        objc_msgSend_addObject_(v24, v78, v64, v79, v80);

        ++v23;
      }

      while (v23 < objc_msgSend_count(a1, v81, v82, v83, v84));
    }

    objc_msgSend_endEncoding(v174, v18, v19, v20, v21);
    v85 = objc_alloc_init(MEMORY[0x277CD6FD8]);
    v90 = objc_msgSend_device(v22, v86, v87, v88, v89);
    v95 = objc_msgSend_newSharedEvent(v90, v91, v92, v93, v94);
    objc_msgSend_encodeSignalEvent_value_(v22, v96, v95, 1, v97);
    v176[0] = MEMORY[0x277D85DD0];
    v176[1] = 3221225472;
    v176[2] = sub_239E00C58;
    v176[3] = &unk_278B3C3E8;
    v176[4] = v175;
    v176[5] = v13;
    v176[6] = v95;
    v176[7] = v85;
    objc_msgSend_notifyListener_atValue_block_(v95, v98, v85, 1, v176);
    objc_msgSend_encodeWaitForEvent_value_(a3, v99, v95, 2, v100);
    v105 = objc_msgSend_blitCommandEncoder(a3, v101, v102, v103, v104);
    if (objc_msgSend_count(v175, v106, v107, v108, v109))
    {
      v114 = 0;
      do
      {
        v115 = objc_msgSend_objectAtIndexedSubscript_(v13, v110, v114, v112, v113);
        v119 = objc_msgSend_objectAtIndexedSubscript_(v12, v116, v114, v117, v118);
        v124 = objc_msgSend_length(v115, v120, v121, v122, v123);
        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v105, v125, v115, 0, v119, 0, v124);
        ++v114;
      }

      while (v114 < objc_msgSend_count(v175, v126, v127, v128, v129));
    }

    objc_msgSend_endEncoding(v105, v110, v111, v112, v113);
  }

  return v12;
}

void sub_239E00B50(void *a1, int a2, uint64_t a3)
{
  v6 = getenv("MPSRAYINTERSECTOR_LOG_COMMAND_BUFFER_EVENTS");
  if (v6)
  {
    if (*v6 == 49)
    {
      v7 = objc_alloc_init(MEMORY[0x277CD6FD8]);
      v12 = objc_msgSend_device(a1, v8, v9, v10, v11);
      v17 = objc_msgSend_newSharedEvent(v12, v13, v14, v15, v16);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = sub_239E04240;
      v23[3] = &unk_278B3C840;
      v24 = a2;
      v23[5] = a3;
      memset(&v23[6], 0, 24);
      v23[4] = v17;
      objc_msgSend_notifyListener_atValue_block_(v17, v18, v7, 1, v23);
      objc_msgSend_encodeSignalEvent_value_(a1, v19, v17, 1, v20);
      objc_msgSend_encodeWaitForEvent_value_(a1, v21, v17, 2, v22);
    }
  }
}

void sub_239E00C58(void **a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (objc_msgSend_count(a1[4], a2, a3, a4, a5))
  {
    v9 = 0;
    do
    {
      v10 = objc_msgSend_objectAtIndexedSubscript_(a1[4], v6, v9, v7, v8);
      v14 = objc_msgSend_objectAtIndexedSubscript_(a1[5], v11, v9, v12, v13);
      v19 = objc_msgSend_contents(v14, v15, v16, v17, v18);
      v24 = objc_msgSend_contents(v10, v20, v21, v22, v23);
      v29 = objc_msgSend_length(v10, v25, v26, v27, v28);
      memcpy(v19, v24, v29);
      ++v9;
    }

    while (v9 < objc_msgSend_count(a1[4], v30, v31, v32, v33));
  }

  objc_msgSend_setSignaledValue_(a1[6], v6, 2, v7, v8);

  v34 = a1[5];
}

void sub_239E00D2C(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  kdebug_trace();
  v7 = objc_msgSend_commandBuffer(a1, v3, v4, v5, v6);
  v12 = objc_msgSend_device(a1, v8, v9, v10, v11);
  v17 = objc_msgSend_newSharedEvent(v12, v13, v14, v15, v16);
  v18 = objc_alloc_init(MEMORY[0x277CD6FD8]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_239E00E40;
  v26[3] = &unk_278B3C410;
  v26[4] = v2;
  objc_msgSend_notifyListener_atValue_block_(v17, v19, v18, 1, v26);
  objc_msgSend_encodeSignalEvent_value_(v7, v20, v17, 1, v21);
  objc_msgSend_commit(v7, v22, v23, v24, v25);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
}

intptr_t sub_239E00E40(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

void sub_239E00E90(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 1;
  *a1 = &unk_284D08780;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  operator new();
}

uint64_t sub_239E01044(uint64_t a1)
{
  *a1 = &unk_284D08780;

  v2 = *(a1 + 32);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2)
  {
    v4 = add == 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    (*(*v2 + 8))(v2);
  }

  v5 = *(a1 + 40);
  v6 = atomic_fetch_add(v5 + 2, 0xFFFFFFFF);
  if (v5 && v6 == 1)
  {
    (*(*v5 + 8))(v5);
  }

  v7 = *(a1 + 48);
  v8 = atomic_fetch_add(v7 + 2, 0xFFFFFFFF);
  if (v7 && v8 == 1)
  {
    (*(*v7 + 8))(v7);
  }

  v9 = *(a1 + 56);
  v10 = atomic_fetch_add(v9 + 2, 0xFFFFFFFF);
  if (v9 && v10 == 1)
  {
    (*(*v9 + 8))(v9);
  }

  v11 = *(a1 + 64);
  v12 = atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
  if (v11 && v12 == 1)
  {
    (*(*v11 + 8))(v11);
  }

  v13 = *(a1 + 72);
  v14 = atomic_fetch_add(v13 + 2, 0xFFFFFFFF);
  if (v13 && v14 == 1)
  {
    (*(*v13 + 8))(v13);
  }

  v15 = *(a1 + 80);
  v16 = atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
  if (v15 && v16 == 1)
  {
    (*(*v15 + 8))(v15);
  }

  return a1;
}

void sub_239E0125C(uint64_t a1)
{
  sub_239E01044(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E01294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, int a13, void *a14)
{
  *(a1 + 8) = 1;
  *a1 = &unk_284D084E0;
  atomic_fetch_add((a2 + 8), 1u);
  *(a1 + 16) = a2;
  *(a1 + 24) = sub_239E18C14(a3);
  *(a1 + 32) = sub_239E18C14(a4);
  *(a1 + 40) = sub_239E18C14(a5);
  *(a1 + 48) = sub_239E18C14(a6);
  *(a1 + 56) = sub_239E18C14(a7);
  *(a1 + 64) = a8;
  *(a1 + 72) = a11;
  *(a1 + 80) = a12;
  *(a1 + 88) = a13;
  *(a1 + 104) = a14;
  v20 = *(a2 + 16);
  MPSDevice = MPSDevice::GetMPSDevice();
  *(a1 + 112) = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, &stru_278B3C430);
  v22 = *(a2 + 16);
  v23 = (*(*MPSDevice + 24))(MPSDevice);
  v26 = objc_msgSend_newBufferWithLength_options_(v22, v24, 32, 16 * v23, v25);
  *(a1 + 96) = v26;
  v31 = objc_msgSend_contents(v26, v27, v28, v29, v30);
  *v31 = a9;
  v31[1] = a10;
  return a1;
}

uint64_t sub_239E0140C(uint64_t a1, uint64_t a2, void *a3)
{
  v142[6] = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 1;
  *a1 = &unk_284D084E0;
  atomic_fetch_add((a2 + 8), 1u);
  *(a1 + 16) = a2;
  if (*(*(a2 + 32) + 40))
  {
    sub_239E24A2C();
  }

  v6 = *(a2 + 16);
  MPSDevice = MPSDevice::GetMPSDevice();
  *(a1 + 112) = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, &stru_278B3C430);
  *(a1 + 80) = objc_msgSend_decodeInt64ForKey_(a3, v7, @"MPSBVHKeyRootNodeType", v8, v9);
  *(a1 + 72) = objc_msgSend_decodeInt64ForKey_(a3, v10, @"MPSBVHKeyLeafNodeCount", v11, v12);
  *(a1 + 64) = objc_msgSend_decodeInt64ForKey_(a3, v13, @"MPSBVHKeyInnerNodeCount", v14, v15);
  if (objc_msgSend_containsValueForKey_(a3, v16, @"MPSBVHKeyBranchingFactor", v17, v18))
  {
    v22 = objc_msgSend_decodeInt64ForKey_(a3, v19, @"MPSBVHKeyBranchingFactor", v20, v21);
  }

  else
  {
    v22 = 2;
  }

  *(a1 + 84) = v22;
  v23 = objc_msgSend_containsValueForKey_(a3, v19, @"MPSBVHKeyNodeLayout", v20, v21);
  if (v23)
  {
    v23 = objc_msgSend_decodeInt64ForKey_(a3, v24, @"MPSBVHKeyNodeLayout", v25, v26);
  }

  *(a1 + 88) = v23;
  v140 = 0;
  v141 = 0;
  v138 = 0;
  v139 = 0;
  v137 = 0;
  v135 = a3;
  v27 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v24, @"MPSBVHKeyInnerNodes", &v141, v26);
  __src = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v28, @"MPSBVHKeyLeafNodes", &v140, v29);
  v131 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v30, @"MPSBVHKeyPageTable0", &v139, v31);
  v129 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v32, @"MPSBVHKeyPageTable1", &v138, v33);
  v128 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v34, @"MPSBVHKeyPages", &v137, v35);
  v40 = objc_msgSend_commandBuffer(*(*(a1 + 16) + 24), v36, v37, v38, v39);
  *(a1 + 24) = sub_239E19178(*(*(a1 + 16) + 40), v141, v40);
  *(a1 + 32) = sub_239E19178(*(*(a1 + 16) + 48), v140, v40);
  *(a1 + 40) = sub_239E19178(*(*(a1 + 16) + 56), v139, v40);
  *(a1 + 48) = sub_239E19178(*(*(a1 + 16) + 64), v138, v40);
  *(a1 + 56) = sub_239E19178(*(*(a1 + 16) + 72), v137, v40);
  objc_msgSend_commit(v40, v41, v42, v43, v44);
  kdebug_trace();
  objc_msgSend_waitUntilCompleted(v40, v45, v46, v47, v48);
  kdebug_trace();
  v49 = *(*(a1 + 24) + 40);
  v53 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 40) + 24), v50, 0, v51, v52);
  v54 = *(*(a1 + 24) + 32);
  v59 = objc_msgSend_contents(v53, v55, v56, v57, v58);
  memcpy((v59 + v54), v27, v49);
  v60 = *(*(a1 + 32) + 40);
  v64 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 48) + 24), v61, 0, v62, v63);
  v65 = *(*(a1 + 32) + 32);
  v70 = objc_msgSend_contents(v64, v66, v67, v68, v69);
  memcpy((v70 + v65), __src, v60);
  v71 = *(*(a1 + 40) + 40);
  v75 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 56) + 24), v72, 0, v73, v74);
  v76 = *(*(a1 + 40) + 32);
  v81 = objc_msgSend_contents(v75, v77, v78, v79, v80);
  memcpy((v81 + v76), v131, v71);
  v82 = *(*(a1 + 48) + 40);
  v86 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 64) + 24), v83, 0, v84, v85);
  v87 = *(*(a1 + 48) + 32);
  v92 = objc_msgSend_contents(v86, v88, v89, v90, v91);
  memcpy((v92 + v87), v129, v82);
  v93 = *(*(a1 + 56) + 40);
  v97 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 72) + 24), v94, 0, v95, v96);
  v98 = *(*(a1 + 56) + 32);
  v103 = objc_msgSend_contents(v97, v99, v100, v101, v102);
  memcpy((v103 + v98), v128, v93);
  v104 = *(a2 + 16);
  v105 = (*(*MPSDevice + 24))(MPSDevice);
  *(a1 + 96) = objc_msgSend_newBufferWithLength_options_(v104, v106, 32, 16 * v105, v107);
  v136 = 0;
  v114 = objc_msgSend_decodeBytesForKey_returnedLength_(v135, v108, @"MPSBVHKeyBoundingBox", &v136, v109);
  if (v136 != 32)
  {
    sub_239E24A7C();
  }

  *v132 = v114[1];
  *__srca = *v114;
  v115 = objc_msgSend_contents(*(a1 + 96), v110, v111, v112, v113);
  *v115 = *__srca;
  v115[1] = *v132;
  v116 = MEMORY[0x277CBEB98];
  v142[0] = objc_opt_class();
  v142[1] = objc_opt_class();
  v142[2] = objc_opt_class();
  v142[3] = objc_opt_class();
  v142[4] = objc_opt_class();
  v142[5] = objc_opt_class();
  v119 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v117, v142, 6, v118);
  v123 = objc_msgSend_setWithArray_(v116, v120, v119, v121, v122);
  *(a1 + 104) = objc_msgSend_decodeObjectOfClasses_forKey_(v135, v124, v123, @"MPSBVHKeyStatistics", v125);
  v126 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_239E01940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 1;
  *a1 = &unk_284D084E0;
  atomic_fetch_add((a2 + 8), 1u);
  *(a1 + 16) = a2;
  *(a1 + 64) = *(a3 + 64);
  *(a1 + 80) = *(a3 + 80);
  *(a1 + 88) = *(a3 + 88);
  kdebug_trace();
  v6 = *(a2 + 16);
  MPSDevice = MPSDevice::GetMPSDevice();
  *(a1 + 112) = MPSDevice::GetMPSLibrary_DoNotUse(MPSDevice, &stru_278B3C430);
  v8 = *(a3 + 40);
  v72 = *(a3 + 24);
  v73 = v8;
  v74 = *(a3 + 56);
  v70 = 0;
  v71 = 0;
  v69 = 0;
  sub_239E04698(&v69, &v72, &v75, 5uLL);
  v9 = *(a3 + 16);
  v10 = *(v9 + 56);
  v72 = *(v9 + 40);
  v73 = v10;
  v74 = *(v9 + 72);
  v67 = 0;
  v68 = 0;
  v66 = 0;
  sub_239E0470C(&v66, &v72, &v75, 5uLL);
  v11 = *(a2 + 56);
  v72 = *(a2 + 40);
  v73 = v11;
  v74 = *(a2 + 72);
  v64 = 0;
  v65 = 0;
  v63 = 0;
  sub_239E0470C(&v63, &v72, &v75, 5uLL);
  v20 = objc_msgSend_commandBuffer(*(a2 + 24), v12, v13, v14, v15);
  v21 = *(a3 + 16);
  v22 = v20;
  if (*(a2 + 16) != *(v21 + 16))
  {
    v22 = objc_msgSend_commandBuffer(*(v21 + 24), v16, v17, v18, v19);
  }

  v61 = 0;
  v62 = 0;
  v60 = 0;
  sub_239E04564(&v60, v69, v70, (v70 - v69) >> 3);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  sub_239E0461C(&v57, v66, v67, (v67 - v66) >> 3);
  __p = 0;
  v55 = 0;
  v56 = 0;
  sub_239E0461C(&__p, v63, v64, (v64 - v63) >> 3);
  sub_239E01D68(&v60, &v57, &__p, v22, v20, &v72);
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }

  objc_msgSend_commit(v20, v23, v24, v25, v26);
  if (v22 != v20)
  {
    objc_msgSend_commit(v22, v27, v28, v29, v30);
  }

  v31 = v72;
  *(a1 + 24) = *v72;
  *(a1 + 32) = v31[1];
  *(a1 + 40) = v31[2];
  *(a1 + 48) = v31[3];
  *(a1 + 56) = v31[4];
  v32 = *(a2 + 16);
  v33 = (*(*MPSDevice + 24))(MPSDevice);
  *(a1 + 96) = objc_msgSend_newBufferWithLength_options_(v32, v34, 32, 16 * v33, v35);
  v40 = objc_msgSend_contents(*(a3 + 96), v36, v37, v38, v39);
  v52 = v40[1];
  v53 = *v40;
  v45 = objc_msgSend_contents(*(a1 + 96), v41, v42, v43, v44);
  *v45 = v53;
  v45[1] = v52;
  *(a1 + 104) = objc_msgSend_copy(*(a3 + 104), v46, v47, v48, v49);
  kdebug_trace();
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v50 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_239E01CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  v28 = *(v26 - 136);
  if (v28)
  {
    *(v26 - 128) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E01D68(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  v9 = *a1;
  v10 = a1[1];
  if (v10 == *a1)
  {
    v27 = a4;
    v26 = (v10 - *a1) >> 3;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = sub_239E19178(*(*a3 + 8 * v11), *(*(v9 + 8 * v11) + 40), v6);
      v13 = a6;
      v15 = *(a6 + 8);
      v14 = *(a6 + 16);
      if (v15 >= v14)
      {
        v17 = (v15 - *a6) >> 3;
        if ((v17 + 1) >> 61)
        {
          sub_239DEDF38();
        }

        v18 = v14 - *a6;
        v19 = v18 >> 2;
        if (v18 >> 2 <= (v17 + 1))
        {
          v19 = v17 + 1;
        }

        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v19;
        }

        if (v20)
        {
          sub_239DF5EE4(a6, v20);
        }

        *(8 * v17) = v12;
        v16 = 8 * v17 + 8;
        v21 = *(a6 + 8) - *a6;
        v22 = (8 * v17 - v21);
        memcpy(v22, *a6, v21);
        v13 = a6;
        v23 = *a6;
        *a6 = v22;
        *(a6 + 8) = v16;
        *(a6 + 16) = 0;
        if (v23)
        {
          operator delete(v23);
          v13 = a6;
        }
      }

      else
      {
        *v15 = v12;
        v16 = (v15 + 1);
      }

      v6 = a5;
      v13[1] = v16;
      v24 = v13;
      sub_239E18C14(*(*a1 + 8 * v11));
      sub_239E18C14(*(*v24 + 8 * v11++));
      v9 = *a1;
      v10 = a1[1];
      v25 = v10 - *a1;
    }

    while (v11 < v25 >> 3);
    v26 = v25 >> 3;
    v27 = a4;
  }

  v153[0] = MEMORY[0x277D85DD0];
  v153[1] = 3321888768;
  v153[2] = sub_239E04288;
  v153[3] = &unk_284D08460;
  v155 = 0;
  v156 = 0;
  v154 = 0;
  sub_239E04564(&v154, v9, v10, v26);
  objc_msgSend_addCompletedHandler_(v27, v28, v153, v29, v30);
  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3321888768;
  v149[2] = sub_239E0430C;
  v149[3] = &unk_284D08460;
  v151 = 0;
  v152 = 0;
  v150 = 0;
  sub_239E04564(&v150, *a6, *(a6 + 8), (*(a6 + 8) - *a6) >> 3);
  objc_msgSend_addCompletedHandler_(v6, v31, v149, v32, v33);
  if (v27 == v6)
  {
    v114 = qword_27DF88880++;
    sub_239E00B50(v27, 724238768, v114);
    v123 = objc_msgSend_blitCommandEncoder(v27, v115, v116, v117, v118);
    v125 = *a1;
    v124 = a1[1];
    if (v124 != *a1)
    {
      v126 = 0;
      v127 = *a3;
      do
      {
        if (*(*(v127 + 8 * v126) + 32))
        {
          v128 = 0;
          do
          {
            v129 = objc_msgSend_objectAtIndexedSubscript_(*(*(*a2 + 8 * v126) + 24), v119, v128, v121, v122);
            v130 = *(*(*a1 + 8 * v126) + 32);
            v134 = objc_msgSend_objectAtIndexedSubscript_(*(*(*a3 + 8 * v126) + 24), v131, v128, v132, v133);
            objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v123, v135, v129, v130, v134, *(*(*a6 + 8 * v126) + 32), *(*(*a1 + 8 * v126) + 40));
            ++v128;
            v127 = *a3;
          }

          while (v128 < *(*(*a3 + 8 * v126) + 32));
          v125 = *a1;
          v124 = a1[1];
        }

        ++v126;
      }

      while (v126 < (v124 - v125) >> 3);
    }

    objc_msgSend_endEncoding(v123, v119, v120, v121, v122);
    sub_239E00B50(a4, 724238772, v114);
  }

  else
  {
    v38 = objc_msgSend_blitCommandEncoder(v27, v34, v35, v36, v37);
    v39 = 0x277CBE000uLL;
    v137 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v136 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (a1[1] != *a1)
    {
      v44 = 0;
      do
      {
        v45 = objc_alloc_init(*(v39 + 2840));
        v49 = objc_alloc_init(*(v39 + 2840));
        v50 = *(*a2 + 8 * v44);
        if (*(v50 + 32))
        {
          v51 = 0;
          do
          {
            v52 = objc_msgSend_objectAtIndexedSubscript_(*(v50 + 24), v46, v51, v47, v48);
            v57 = objc_msgSend_device(a4, v53, v54, v55, v56);
            v60 = objc_msgSend_newBufferWithLength_options_(v57, v58, *(*(*a1 + 8 * v44) + 40), 0, v59);
            v65 = objc_msgSend_device(a5, v61, v62, v63, v64);
            v68 = objc_msgSend_newBufferWithLength_options_(v65, v66, *(*(*a1 + 8 * v44) + 40), 0, v67);
            objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v38, v69, v52, *(*(*a1 + 8 * v44) + 32), v60, 0, *(*(*a1 + 8 * v44) + 40));
            objc_msgSend_addObject_(v45, v70, v60, v71, v72);

            objc_msgSend_addObject_(v49, v73, v68, v74, v75);
            ++v51;
            v50 = *(*a2 + 8 * v44);
          }

          while (v51 < *(v50 + 32));
        }

        objc_msgSend_addObject_(v137, v46, v45, v47, v48);

        objc_msgSend_addObject_(v136, v76, v49, v77, v78);
        ++v44;
        v6 = a5;
        v39 = 0x277CBE000;
      }

      while (v44 < (a1[1] - *a1) >> 3);
    }

    objc_msgSend_endEncoding(v38, v40, v41, v42, v43);
    v79 = objc_alloc_init(MEMORY[0x277CD6FD8]);
    v84 = objc_msgSend_device(a4, v80, v81, v82, v83);
    v89 = objc_msgSend_newSharedEvent(v84, v85, v86, v87, v88);
    objc_msgSend_encodeSignalEvent_value_(a4, v90, v89, 1, v91);
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3321888768;
    v142[2] = sub_239E0435C;
    v142[3] = &unk_284D08498;
    v144 = 0;
    v145 = 0;
    v143 = 0;
    sub_239E04564(&v143, *a1, a1[1], (a1[1] - *a1) >> 3);
    v142[4] = v137;
    v142[5] = v136;
    v147 = 0;
    v148 = 0;
    __p = 0;
    sub_239E0461C(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
    v142[6] = v89;
    v142[7] = v79;
    objc_msgSend_notifyListener_atValue_block_(v89, v92, v79, 1, v142);
    objc_msgSend_encodeWaitForEvent_value_(v6, v93, v89, 2, v94);
    v103 = objc_msgSend_blitCommandEncoder(v6, v95, v96, v97, v98);
    if (a1[1] != *a1)
    {
      v104 = 0;
      do
      {
        v105 = objc_msgSend_objectAtIndexedSubscript_(v136, v99, v104, v101, v102);
        if (*(*(*a3 + 8 * v104) + 32))
        {
          v106 = v105;
          v107 = 0;
          do
          {
            v108 = objc_msgSend_objectAtIndexedSubscript_(v106, v99, v107, v101, v102);
            v112 = objc_msgSend_objectAtIndexedSubscript_(*(*(*a3 + 8 * v104) + 24), v109, v107, v110, v111);
            objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v103, v113, v108, 0, v112, *(*(*a6 + 8 * v104) + 32), *(*(*a6 + 8 * v104) + 40));
            ++v107;
          }

          while (v107 < *(*(*a3 + 8 * v104) + 32));
        }

        ++v104;
      }

      while (v104 < (a1[1] - *a1) >> 3);
    }

    objc_msgSend_endEncoding(v103, v99, v100, v101, v102);
    if (__p)
    {
      v147 = __p;
      operator delete(__p);
    }

    if (v143)
    {
      v144 = v143;
      operator delete(v143);
    }
  }

  if (v150)
  {
    v151 = v150;
    operator delete(v150);
  }

  if (v154)
  {
    v155 = v154;
    operator delete(v154);
  }
}

void sub_239E02408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  v37 = *(v35 - 128);
  if (v37)
  {
    *(v35 - 120) = v37;
    operator delete(v37);
  }

  v38 = *a15;
  if (*a15)
  {
    *(a15 + 8) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E024E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_commandBuffer(*(*(a1 + 16) + 24), a2, a3, a4, a5);
  v16 = objc_msgSend_blitCommandEncoder(v7, v8, v9, v10, v11);
  if (*(a2 + 32))
  {
    v17 = 0;
    do
    {
      v18 = objc_msgSend_objectAtIndexedSubscript_(*(a2 + 24), v12, v17, v14, v15);
      objc_msgSend_fillBuffer_range_value_(v16, v19, v18, *(a3 + 32), *(a3 + 40), 0);
      ++v17;
    }

    while (v17 < *(a2 + 32));
  }

  objc_msgSend_endEncoding(v16, v12, v13, v14, v15);
  objc_msgSend_commit(v7, v20, v21, v22, v23);
  kdebug_trace();
  objc_msgSend_waitUntilCompleted(v7, v24, v25, v26, v27);

  return kdebug_trace();
}

uint64_t sub_239E025C8(uint64_t a1)
{
  *a1 = &unk_284D084E0;
  sub_239E18C24(*(a1 + 24));
  sub_239E18C24(*(a1 + 32));
  sub_239E18C24(*(a1 + 40));
  sub_239E18C24(*(a1 + 48));
  sub_239E18C24(*(a1 + 56));
  v2 = *(a1 + 16);
  add = atomic_fetch_add(v2 + 2, 0xFFFFFFFF);
  if (v2 && add == 1)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_239E02688(uint64_t a1)
{
  sub_239E025C8(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E026C0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(*(*(a1 + 16) + 32) + 40))
  {
    sub_239E24AB8();
  }

  objc_msgSend_encodeInt64_forKey_(a2, a2, *(a1 + 80), @"MPSBVHKeyRootNodeType", a5);
  objc_msgSend_encodeInt64_forKey_(a2, v7, *(a1 + 72), @"MPSBVHKeyLeafNodeCount", v8);
  objc_msgSend_encodeInt64_forKey_(a2, v9, *(a1 + 64), @"MPSBVHKeyInnerNodeCount", v10);
  objc_msgSend_encodeInt64_forKey_(a2, v11, *(a1 + 84), @"MPSBVHKeyBranchingFactor", v12);
  objc_msgSend_encodeInt64_forKey_(a2, v13, *(a1 + 88), @"MPSBVHKeyNodeLayout", v14);
  v18 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 40) + 24), v15, 0, v16, v17);
  v23 = objc_msgSend_contents(v18, v19, v20, v21, v22);
  v80 = *(*(a1 + 24) + 32);
  v81 = v23;
  v27 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 48) + 24), v24, 0, v25, v26);
  v32 = objc_msgSend_contents(v27, v28, v29, v30, v31);
  v33 = *(*(a1 + 32) + 32);
  v37 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 56) + 24), v34, 0, v35, v36);
  v42 = objc_msgSend_contents(v37, v38, v39, v40, v41);
  v43 = *(*(a1 + 40) + 32);
  v47 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 64) + 24), v44, 0, v45, v46);
  v52 = objc_msgSend_contents(v47, v48, v49, v50, v51);
  v53 = *(*(a1 + 48) + 32);
  v57 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 72) + 24), v54, 0, v55, v56);
  v62 = objc_msgSend_contents(v57, v58, v59, v60, v61);
  v63 = *(*(a1 + 56) + 32);
  objc_msgSend_encodeBytes_length_forKey_(a2, v64, v81 + v80, *(*(a1 + 24) + 40), @"MPSBVHKeyInnerNodes");
  objc_msgSend_encodeBytes_length_forKey_(a2, v65, v32 + v33, *(*(a1 + 32) + 40), @"MPSBVHKeyLeafNodes");
  objc_msgSend_encodeBytes_length_forKey_(a2, v66, v42 + v43, *(*(a1 + 40) + 40), @"MPSBVHKeyPageTable0");
  objc_msgSend_encodeBytes_length_forKey_(a2, v67, v52 + v53, *(*(a1 + 48) + 40), @"MPSBVHKeyPageTable1");
  objc_msgSend_encodeBytes_length_forKey_(a2, v68, v62 + v63, *(*(a1 + 56) + 40), @"MPSBVHKeyPages");
  v73 = objc_msgSend_contents(*(a1 + 96), v69, v70, v71, v72);
  v74 = *v73;
  v75 = *(v73 + 16);
  v83 = *(v73 + 8);
  v85 = DWORD2(v75);
  v82 = v74;
  v84 = v75;
  objc_msgSend_encodeBytes_length_forKey_(a2, v76, &v82, 32, @"MPSBVHKeyBoundingBox");
  return objc_msgSend_encodeObject_forKey_(a2, v77, *(a1 + 104), @"MPSBVHKeyStatistics", v78);
}

uint64_t sub_239E0291C(uint64_t result, const char *a2, int a3, void *a4, uint64_t a5)
{
  v39 = a3;
  v40 = a2;
  if (a3 | a2)
  {
    v6 = result;
    v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(result + 16) + 40) + 24), a2, 0, a4, a5);
    v8 = *(*(v6 + 24) + 32);
    v38 = *(v6 + 64) + 1;
    v9 = *(v6 + 84);
    if (v9 == 4)
    {
      v12 = *(v6 + 88);
      if (!v12)
      {
        v18 = *(v6 + 112);
        goto LABEL_14;
      }

      if (v12 == 1)
      {
        v13 = *(v6 + 112);
        goto LABEL_14;
      }

      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_18;
      }
    }

    else if (v9 == 2)
    {
      v10 = *(v6 + 88);
      if (!v10)
      {
        v17 = *(v6 + 112);
        goto LABEL_14;
      }

      if (v10 == 1)
      {
        v11 = *(v6 + 112);
LABEL_14:
        ComputeState = MPSLibrary::GetComputeState();
        objc_msgSend_setComputePipelineState_(a4, v20, ComputeState, v21, v22);
LABEL_20:
        objc_msgSend_setBuffer_offset_atIndex_(a4, v23, v7, v8, 0);
        objc_msgSend_setBytes_length_atIndex_(a4, v24, &v38, 4, 1);
        objc_msgSend_setBytes_length_atIndex_(a4, v25, &v40, 4, 2);
        objc_msgSend_setBytes_length_atIndex_(a4, v26, &v39, 4, 3);
        v31 = objc_msgSend_threadExecutionWidth(ComputeState, v27, v28, v29, v30);
        v36 = (v31 + v38 - 1) / v31;
        v37 = vdupq_n_s64(1uLL);
        v34 = v31;
        v35 = v37;
        return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v32, &v36, &v34, v33);
      }

      if (MTLReportFailureTypeEnabled())
      {
        goto LABEL_18;
      }
    }

    else if (MTLReportFailureTypeEnabled())
    {
LABEL_18:
      MTLReportFailure();
    }

    ComputeState = 0;
    objc_msgSend_setComputePipelineState_(a4, v14, 0, v15, v16);
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_239E02B3C(uint64_t result, const char *a2, int a3, void *a4, uint64_t a5)
{
  v32 = a2;
  v31 = a3;
  if (a3 | a2)
  {
    v6 = result;
    v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(result + 16) + 72) + 24), a2, 0, a4, a5);
    v8 = *(v6 + 56);
    v9 = *(v8 + 32);
    v30 = *(v8 + 40) >> 2;
    v10 = *(v6 + 112);
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a4, v12, ComputeState, v13, v14);
    objc_msgSend_setBuffer_offset_atIndex_(a4, v15, v7, v9, 0);
    objc_msgSend_setBytes_length_atIndex_(a4, v16, &v30, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a4, v17, &v32, 4, 2);
    objc_msgSend_setBytes_length_atIndex_(a4, v18, &v31, 4, 3);
    v23 = objc_msgSend_threadExecutionWidth(ComputeState, v19, v20, v21, v22);
    v28 = (v23 + v30 - 1) / v23;
    v29 = vdupq_n_s64(1uLL);
    v26 = v23;
    v27 = v29;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v24, &v28, &v26, v25);
  }

  return result;
}

uint64_t sub_239E02C78(uint64_t result, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  if (a2)
  {
    v6 = result;
    v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(result + 16) + 56) + 24), a2, 0, a4, a5);
    v8 = *(v6 + 40);
    v9 = *(v8 + 32);
    v29 = *(v8 + 40) >> 2;
    v10 = *(v6 + 112);
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a3, v12, ComputeState, v13, v14);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v15, v7, v9, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v16, &v29, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a3, v17, &v30, 4, 2);
    v22 = objc_msgSend_threadExecutionWidth(ComputeState, v18, v19, v20, v21);
    v27 = (v22 + v29 - 1) / v22;
    v28 = vdupq_n_s64(1uLL);
    v25 = v22;
    v26 = v28;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v23, &v27, &v25, v24);
  }

  return result;
}

uint64_t sub_239E02D98(uint64_t result, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  if (a2)
  {
    v6 = result;
    v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(result + 16) + 64) + 24), a2, 0, a4, a5);
    v8 = *(v6 + 48);
    v9 = *(v8 + 32);
    v29 = *(v8 + 40) >> 2;
    v10 = *(v6 + 112);
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a3, v12, ComputeState, v13, v14);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v15, v7, v9, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v16, &v29, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a3, v17, &v30, 4, 2);
    v22 = objc_msgSend_threadExecutionWidth(ComputeState, v18, v19, v20, v21);
    v27 = (v22 + v29 - 1) / v22;
    v28 = vdupq_n_s64(1uLL);
    v25 = v22;
    v26 = v28;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v23, &v27, &v25, v24);
  }

  return result;
}

uint64_t sub_239E02EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, void *a16)
{
  *sub_239E01294(a1, a2, a3, a4, a5, a6, a7, a11, a9, a10, a12, a13, a14, a16) = &unk_284D08728;
  *(a1 + 120) = sub_239E18C14(a8);
  *(a1 + 128) = a15;
  return a1;
}

uint64_t sub_239E02F78(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = sub_239E0140C(a1, a2, a3);
  *v8 = &unk_284D08728;
  *(v8 + 128) = a4;
  size = 0;
  v11 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v9, @"MPSTriangleBVHKeyTriangleIndices", &size, v10);
  v57 = 0;
  v15 = objc_msgSend_containsValueForKey_(a3, v12, @"MPSPrimitiveBVHKeyResourceIndices", v13, v14);
  v18 = v15;
  if (v15)
  {
    v23 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v16, @"MPSPrimitiveBVHKeyResourceIndices", &v57, v17);
    if (v57 != size && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    v23 = malloc_type_malloc(size, 0x100004077774924uLL);
    bzero(v23, size);
  }

  v24 = objc_msgSend_commandBuffer(*(a2 + 24), v19, v20, v21, v22);
  v25 = sub_239E19178(*(*(a1 + 16) + 32), size, v24);
  *(a1 + 120) = v25;
  v26 = *(v25 + 40);
  v30 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 32) + 24), v27, 0, v28, v29);
  v31 = *(*(a1 + 120) + 32);
  v36 = objc_msgSend_contents(v30, v32, v33, v34, v35);
  memcpy((v36 + v31), v11, v26);
  v37 = *(*(a1 + 120) + 40);
  v41 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 32) + 24), v38, 1, v39, v40);
  v42 = *(*(a1 + 120) + 32);
  v47 = objc_msgSend_contents(v41, v43, v44, v45, v46);
  memcpy((v47 + v42), v23, v37);
  if ((v18 & 1) == 0)
  {
    free(v23);
  }

  sub_239E031D0(a1, *(*(a1 + 56) + 32), *(*(a1 + 40) + 32), *(*(a1 + 24) + 32), *(*(a1 + 32) + 32), *(*(a1 + 120) + 32), *(a1 + 128), v24);
  objc_msgSend_commit(v24, v48, v49, v50, v51);
  kdebug_trace();
  objc_msgSend_waitUntilCompleted(v24, v52, v53, v54, v55);
  kdebug_trace();
  return a1;
}

uint64_t sub_239E031D0(uint64_t a1, int a2, int a3, int a4, int a5, int a6, const char *a7, void *a8)
{
  kdebug_trace();
  sub_239E00B50(a8, 724238408, 0);
  v20 = objc_msgSend_computeCommandEncoder(a8, v16, v17, v18, v19);
  a5 >>= 4;
  v21 = a4 / sub_239DE30C0(a1);
  sub_239E0291C(a1, v21, a5, v20, v22);
  sub_239E03890(a1, v21, a6 >> 2, v20, v23);
  sub_239E02B3C(a1, v21, a5, v20, v24);
  sub_239E02C78(a1, (a2 >> 2), v20, v25, v26);
  sub_239E02D98(a1, (a3 >> 2), v20, v27, v28);
  sub_239E039C8(a1, a7, v20, v29, v30);
  objc_msgSend_endEncoding(v20, v31, v32, v33, v34);
  *(a1 + 128) += a7;
  sub_239E00B50(a8, 724238412, 0);

  return kdebug_trace();
}

uint64_t sub_239E03344(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v66[2] = *MEMORY[0x277D85DE8];
  v8 = sub_239E01940(a1, a2, a3);
  *v8 = &unk_284D08728;
  *(v8 + 128) = a4;
  v48 = a1;
  kdebug_trace();
  v65 = *(a3 + 120);
  v59 = 0;
  v60 = 0;
  v58 = 0;
  sub_239E04698(&v58, &v65, v66, 1uLL);
  v63 = *(*(a3 + 16) + 32);
  v66[0] = 0;
  v66[1] = 0;
  v65 = 0;
  sub_239E0470C(&v65, &v63, v64, 1uLL);
  v61 = *(a2 + 32);
  v64[0] = 0;
  v64[1] = 0;
  v63 = 0;
  sub_239E0470C(&v63, &v61, &v62, 1uLL);
  v17 = objc_msgSend_commandBuffer(*(a2 + 24), v9, v10, v11, v12);
  v18 = *(a3 + 16);
  v19 = v17;
  if (*(a2 + 16) != *(v18 + 16))
  {
    v19 = objc_msgSend_commandBuffer(*(v18 + 24), v13, v14, v15, v16);
  }

  v56 = 0;
  v57 = 0;
  v55 = 0;
  sub_239E04564(&v55, v58, v59, (v59 - v58) >> 3);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  sub_239E0461C(&v52, v65, v66[0], (v66[0] - v65) >> 3);
  __p = 0;
  v50 = 0;
  v51 = 0;
  sub_239E0461C(&__p, v63, v64[0], (v64[0] - v63) >> 3);
  sub_239E01D68(&v55, &v52, &__p, v19, v17, &v61);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  objc_msgSend_commit(v19, v20, v21, v22, v23);
  if (v19 != v17)
  {
    objc_msgSend_commit(v17, v24, v25, v26, v27);
  }

  v28 = *v61;
  *(a1 + 120) = *v61;
  v47 = *(*(a3 + 24) + 32);
  v46 = *(*(a1 + 24) + 32);
  v45 = *(*(a3 + 32) + 32);
  v29 = *(*(a1 + 32) + 32);
  v30 = *(*(a3 + 56) + 32);
  v31 = *(*(a1 + 56) + 32);
  v32 = *(*(a3 + 40) + 32);
  v33 = *(*(a1 + 40) + 32);
  v34 = *(*(a3 + 120) + 32);
  v35 = *(v28 + 32);
  v36 = *(a3 + 128);
  v37 = *(a1 + 128);
  v38 = objc_msgSend_commandBuffer(*(a2 + 24), v24, v25, v26, v27);
  sub_239E031D0(v48, v31 - v30, v33 - v32, v46 - v47, v29 - v45, v35 - v34, (v37 - v36), v38);
  objc_msgSend_commit(v38, v39, v40, v41, v42);
  kdebug_trace();
  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  if (v63)
  {
    v64[0] = v63;
    operator delete(v63);
  }

  if (v65)
  {
    v66[0] = v65;
    operator delete(v65);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v48;
}

void sub_239E03670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = *(v27 - 144);
  if (v29)
  {
    *(v27 - 136) = v29;
    operator delete(v29);
  }

  v30 = *(v27 - 120);
  if (v30)
  {
    *(v27 - 112) = v30;
    operator delete(v30);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_239E025C8(a13);
  _Unwind_Resume(a1);
}

uint64_t sub_239E0373C(void *a1)
{
  *a1 = &unk_284D08728;
  sub_239E18C24(a1[15]);

  return sub_239E025C8(a1);
}

void sub_239E0379C(void *a1)
{
  sub_239E0373C(a1);

  JUMPOUT(0x23EE7D780);
}

uint64_t sub_239E037D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239E026C0(a1, a2, a3, a4, a5);
  v10 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 32) + 24), v7, 0, v8, v9);
  v15 = objc_msgSend_contents(v10, v11, v12, v13, v14);
  v16 = *(*(a1 + 120) + 32);
  v20 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 16) + 32) + 24), v17, 1, v18, v19);
  v25 = objc_msgSend_contents(v20, v21, v22, v23, v24);
  v26 = *(a1 + 120);
  v27 = *(v26 + 32);
  objc_msgSend_encodeBytes_length_forKey_(a2, v28, v15 + v16, *(v26 + 40), @"MPSTriangleBVHKeyTriangleIndices");
  v30 = *(*(a1 + 120) + 40);

  return objc_msgSend_encodeBytes_length_forKey_(a2, v29, v25 + v27, v30, @"MPSPrimitiveBVHKeyResourceIndices");
}

uint64_t sub_239E03890(uint64_t result, const char *a2, int a3, void *a4, uint64_t a5)
{
  v31 = a2;
  v30 = a3;
  if (a3 | a2)
  {
    v6 = result;
    v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(result + 16) + 48) + 24), a2, 0, a4, a5);
    v8 = *(v6[4] + 32);
    v29 = v6[9];
    v9 = v6[14];
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a4, v11, ComputeState, v12, v13);
    objc_msgSend_setBuffer_offset_atIndex_(a4, v14, v7, v8, 0);
    objc_msgSend_setBytes_length_atIndex_(a4, v15, &v29, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a4, v16, &v31, 4, 2);
    objc_msgSend_setBytes_length_atIndex_(a4, v17, &v30, 4, 3);
    v22 = objc_msgSend_threadExecutionWidth(ComputeState, v18, v19, v20, v21);
    v27 = (v22 + v29 - 1) / v22;
    v28 = vdupq_n_s64(1uLL);
    v25 = v22;
    v26 = v28;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a4, v23, &v27, &v25, v24);
  }

  return result;
}

uint64_t sub_239E039C8(uint64_t result, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v30 = a2;
  if (a2)
  {
    v6 = result;
    v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(result + 16) + 32) + 24), a2, 1, a4, a5);
    v8 = *(v6 + 112);
    v9 = *(v6 + 120);
    v10 = *(v9 + 32);
    v29 = *(v9 + 40) >> 2;
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a3, v12, ComputeState, v13, v14);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v15, v7, v10, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v16, &v29, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a3, v17, &v30, 4, 2);
    v22 = objc_msgSend_threadExecutionWidth(ComputeState, v18, v19, v20, v21);
    v27 = (v22 + v29 - 1) / v22;
    v28 = vdupq_n_s64(1uLL);
    v25 = v22;
    v26 = v28;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v23, &v27, &v25, v24);
  }

  return result;
}

uint64_t sub_239E03AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, int a13, void *a14, void *a15)
{
  *sub_239E01294(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a15) = &unk_284D08748;
  *(a1 + 120) = a14;
  return a1;
}

uint64_t sub_239E03B88(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_239E0140C(a1, a2, a3);
  *v6 = &unk_284D08748;
  v7 = *(v6[3] + 32);
  v8 = *(v6[4] + 32);
  v9 = *(v6[7] + 32);
  v10 = *(v6[5] + 32);
  v15 = objc_msgSend_commandBuffer(*(a2 + 24), v11, v12, v13, v14);
  sub_239E03CE8(a1, v9, v10, v7, v8, v15);
  objc_msgSend_commit(v15, v16, v17, v18, v19);
  kdebug_trace();
  objc_msgSend_waitUntilCompleted(v15, v20, v21, v22, v23);
  kdebug_trace();
  v37 = 0;
  v28 = objc_msgSend_decodeBytesForKey_returnedLength_(a3, v24, @"MPSInstanceBVHKeyInverseTransforms", &v37, v25);
  if (v28)
  {
    v29 = objc_msgSend_newBufferWithLength_options_(*(a2 + 16), v26, v37, 0, v27);
    *(a1 + 120) = v29;
    v30 = v37;
    v35 = objc_msgSend_contents(v29, v31, v32, v33, v34);
    memcpy(v35, v28, v30);
  }

  else
  {
    *(a1 + 120) = 0;
  }

  return a1;
}

uint64_t sub_239E03CE8(uint64_t a1, int a2, int a3, int a4, int a5, void *a6)
{
  kdebug_trace();
  sub_239E00B50(a6, 724238408, 0);
  v16 = objc_msgSend_computeCommandEncoder(a6, v12, v13, v14, v15);
  a5 >>= 3;
  v17 = a4 / sub_239DE30C0(a1);
  sub_239E0291C(a1, v17, a5, v16, v18);
  sub_239E04124(a1, v17, v16, v19, v20);
  sub_239E02B3C(a1, v17, a5, v16, v21);
  sub_239E02C78(a1, (a2 >> 2), v16, v22, v23);
  sub_239E02D98(a1, (a3 >> 2), v16, v24, v25);
  objc_msgSend_endEncoding(v16, v26, v27, v28, v29);
  sub_239E00B50(a6, 724238412, 0);

  return kdebug_trace();
}

void *sub_239E03E28(void *a1, uint64_t a2, void *a3)
{
  *sub_239E01940(a1, a2, a3) = &unk_284D08748;
  kdebug_trace();
  v40 = *(a3[3] + 32);
  v41 = a2;
  v6 = *(a1[3] + 32);
  v7 = *(a3[4] + 32);
  v8 = *(a1[4] + 32);
  v9 = *(a3[7] + 32);
  v10 = *(a1[7] + 32);
  v11 = *(a3[5] + 32);
  v12 = *(a1[5] + 32);
  v17 = objc_msgSend_commandBuffer(*(a2 + 24), v13, v14, v15, v16);
  sub_239E03CE8(a1, v10 - v9, v12 - v11, v6 - v40, v8 - v7, v17);
  v22 = v17;
  v23 = a3[15];
  if (v23)
  {
    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objc_msgSend_addObject_(v24, v25, v23, v26, v27);
    v32 = a3[2];
    v33 = v22;
    if (*(v41 + 16) != *(v32 + 16))
    {
      v33 = objc_msgSend_commandBuffer(*(v32 + 24), v28, v29, v30, v31);
    }

    v38 = sub_239E007A0(v24, v33, v22, *(*(v41 + 32) + 40));
    if (v33 != v22)
    {
      objc_msgSend_commit(v33, v34, v35, v36, v37);
    }

    a1[15] = objc_msgSend_objectAtIndexedSubscript_(v38, v34, 0, v36, v37);
  }

  else
  {
    a1[15] = 0;
  }

  objc_msgSend_commit(v22, v18, v19, v20, v21);
  kdebug_trace();
  return a1;
}

uint64_t sub_239E04010(uint64_t a1)
{
  *a1 = &unk_284D08748;

  return sub_239E025C8(a1);
}

void sub_239E04070(uint64_t a1)
{
  sub_239E04010(a1);

  JUMPOUT(0x23EE7D780);
}

void *sub_239E040A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_239E026C0(a1, a2, a3, a4, a5);
  result = *(a1 + 120);
  if (result)
  {
    v12 = objc_msgSend_contents(result, v7, v8, v9, v10);
    v18 = objc_msgSend_length(*(a1 + 120), v13, v14, v15, v16);

    return objc_msgSend_encodeBytes_length_forKey_(a2, v17, v12, v18, @"MPSInstanceBVHKeyInverseTransforms");
  }

  return result;
}

uint64_t sub_239E04124(uint64_t result, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  if (a2)
  {
    v6 = result;
    v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(result + 16) + 48) + 24), a2, 0, a4, a5);
    v8 = *(v6[4] + 32);
    v28 = v6[9];
    v9 = v6[14];
    ComputeState = MPSLibrary::GetComputeState();
    objc_msgSend_setComputePipelineState_(a3, v11, ComputeState, v12, v13);
    objc_msgSend_setBuffer_offset_atIndex_(a3, v14, v7, v8, 0);
    objc_msgSend_setBytes_length_atIndex_(a3, v15, &v28, 4, 1);
    objc_msgSend_setBytes_length_atIndex_(a3, v16, &v29, 4, 2);
    v21 = objc_msgSend_threadExecutionWidth(ComputeState, v17, v18, v19, v20);
    v26 = (v21 + v28 - 1) / v21;
    v27 = vdupq_n_s64(1uLL);
    v24 = v21;
    v25 = v27;
    return objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(a3, v22, &v26, &v24, v23);
  }

  return result;
}

uint64_t sub_239E04240(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  kdebug_trace();
  v10 = *(a1 + 32);

  return objc_msgSend_setSignaledValue_(v10, v7, 2, v8, v9);
}

uint64_t sub_239E04288(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = sub_239E18C24(*(v1 + 8 * v3++));
      v1 = *(v2 + 32);
    }

    while (v3 < (*(v2 + 40) - v1) >> 3);
  }

  return result;
}

uint64_t sub_239E042D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return sub_239E04564(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

void sub_239E042F4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }
}

uint64_t sub_239E0430C(uint64_t result)
{
  v1 = *(result + 32);
  if (*(result + 40) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = sub_239E18C24(*(v1 + 8 * v3++));
      v1 = *(v2 + 32);
    }

    while (v3 < (*(v2 + 40) - v1) >> 3);
  }

  return result;
}

void sub_239E0435C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 72) != *(a1 + 64))
  {
    v6 = 0;
    do
    {
      v7 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 32), a2, v6, a4, a5);
      v11 = objc_msgSend_objectAtIndexedSubscript_(*(a1 + 40), v8, v6, v9, v10);
      if (*(*(*(a1 + 88) + 8 * v6) + 32))
      {
        v12 = v11;
        v13 = 0;
        do
        {
          v14 = objc_msgSend_objectAtIndexedSubscript_(v7, a2, v13, a4, a5);
          v18 = objc_msgSend_objectAtIndexedSubscript_(v12, v15, v13, v16, v17);
          v23 = objc_msgSend_contents(v18, v19, v20, v21, v22);
          v28 = objc_msgSend_contents(v14, v24, v25, v26, v27);
          v33 = objc_msgSend_length(v14, v29, v30, v31, v32);
          memcpy(v23, v28, v33);
          ++v13;
        }

        while (v13 < *(*(*(a1 + 88) + 8 * v6) + 32));
      }

      ++v6;
    }

    while (v6 < (*(a1 + 72) - *(a1 + 64)) >> 3);
  }

  objc_msgSend_setSignaledValue_(*(a1 + 48), a2, 2, a4, a5);

  v34 = *(a1 + 40);
}

uint64_t sub_239E04484(void *a1, uint64_t *a2)
{
  a1[8] = 0;
  a1[9] = 0;
  a1[10] = 0;
  sub_239E04564((a1 + 8), a2[8], a2[9], (a2[9] - a2[8]) >> 3);
  a1[11] = 0;
  a1[12] = 0;
  a1[13] = 0;
  return sub_239E0461C((a1 + 11), a2[11], a2[12], (a2[12] - a2[11]) >> 3);
}

void sub_239E044F0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E0450C(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;

    operator delete(v3);
  }
}

uint64_t sub_239E04564(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E045E0(result, a4);
  }

  return result;
}

void sub_239E045C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E045E0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_239DF5EE4(a1, a2);
  }

  sub_239DEDF38();
}

uint64_t sub_239E0461C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E045E0(result, a4);
  }

  return result;
}

void sub_239E0467C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E04698(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E045E0(result, a4);
  }

  return result;
}

void sub_239E046F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_239E0470C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_239E045E0(result, a4);
  }

  return result;
}

void sub_239E04764(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_239E0487C(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = objc_msgSend_counterSets(a1, a2, a3, a4, a5);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v33, v38, 16);
  if (v7)
  {
    v12 = v7;
    v13 = *v34;
    v14 = *MEMORY[0x277CD69D8];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v5);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v17 = objc_msgSend_counters(v16, v8, v9, v10, v11, 0);
        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v29, v37, 16);
        if (v19)
        {
          v20 = v19;
          v21 = *v30;
LABEL_8:
          v22 = 0;
          while (1)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v17);
            }

            v23 = objc_msgSend_name(*(*(&v29 + 1) + 8 * v22), v8, v9, v10, v11);
            if (objc_msgSend_isEqualToString_(v23, v24, v14, v25, v26))
            {
              goto LABEL_18;
            }

            if (v20 == ++v22)
            {
              v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v8, &v29, v37, 16);
              if (v20)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v33, v38, 16);
      v16 = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_18:
  v27 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t sub_239E04A1C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x277CD6D50]);
  objc_msgSend_setCounterSet_(v6, v7, a2, v8, v9);
  objc_msgSend_setSampleCount_(v6, v10, a3, v11, v12);
  objc_msgSend_setStorageMode_(v6, v13, 0, v14, v15);
  v28 = 0;
  v18 = objc_msgSend_newCounterSampleBufferWithDescriptor_error_(a1, v16, v6, &v28, v17);

  if (!v18)
  {
    objc_msgSend_description(v28, v19, v20, v21, v22);
    if (MTLReportFailureTypeEnabled())
    {
      objc_msgSend_description(v28, v23, v24, v25, v26);
      MTLReportFailure();
    }
  }

  return v18;
}

uint64_t sub_239E04ADC(int a1, const char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_msgSend_device(a3, a2, a3, a4, a5);
  v13 = objc_msgSend_supportsCounterSampling_(v9, v10, 0, v11, v12);
  if (a2 && a1 && (v13 & 1) != 0 && (v18 = objc_msgSend_device(a3, v14, v15, v16, v17), (v19 = sub_239E04A1C(v18, a2, 2)) != 0))
  {
    v20 = v19;
    v21 = objc_alloc_init(MEMORY[0x277CD6D20]);
    objc_msgSend_setDispatchType_(v21, v22, 0, v23, v24);
    v29 = objc_msgSend_sampleBufferAttachments(v21, v25, v26, v27, v28);
    v33 = objc_msgSend_objectAtIndexedSubscript_(v29, v30, 0, v31, v32);
    objc_msgSend_setSampleBuffer_(v33, v34, v20, v35, v36);
    objc_msgSend_setStartOfEncoderSampleIndex_(v33, v37, 0, v38, v39);
    objc_msgSend_setEndOfEncoderSampleIndex_(v33, v40, 1, v41, v42);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = sub_239E04C3C;
    v51[3] = &unk_278B3CDE8;
    v51[4] = v20;
    v51[5] = a4;
    objc_msgSend_addCompletedHandler_(a3, v43, v51, v44, v45);
    v49 = objc_msgSend_computeCommandEncoderWithDescriptor_(a3, v46, v21, v47, v48);

    return v49;
  }

  else
  {

    return objc_msgSend_computeCommandEncoder(a3, v14, v15, v16, v17);
  }
}

uint64_t sub_239E04C3C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  v7 = objc_msgSend_sampleCount(v6, a2, a3, a4, a5);
  v10 = objc_msgSend_resolveCounterRange_(v6, v8, 0, v7, v9);
  v15 = objc_msgSend_bytes(v10, v11, v12, v13, v14);
  v16 = v15[1] - *v15;

  v18 = *(*(a1 + 40) + 16);

  v17.n128_f64[0] = (v16 / 1000000.0);
  return v18(v17);
}

uint64_t *sub_239E04CBC(uint64_t *a1, unsigned int **a2, uint64_t *a3)
{
  *(a1 + 3) = 0u;
  v6 = a1 + 6;
  a1[8] = 0;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v8 = *a2;
  v7 = a2[1];
  v9 = v7 - *a2;
  if (v7 == *a2)
  {
    v14 = 1;
  }

  else
  {
    v10 = 0;
    v11 = v9 >> 2;
    if (v11 <= 1)
    {
      v11 = 1;
    }

    do
    {
      v13 = *v8++;
      v12 = v13;
      if (v13 > v10)
      {
        v10 = v12;
      }

      --v11;
    }

    while (v11);
    if (v10 <= 0xFFFFEFFF)
    {
      v14 = (v10 + 4096) >> 12;
    }

    else
    {
      v14 = 0xFFFFFLL;
    }
  }

  sub_239E04F58(a1 + 3, v14);
  v15 = a1[3];
  v16 = a1[4];
  v17 = v16 - v15;
  if (v16 != v15)
  {
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v16 - v15;
    }

    bzero(a1[3], 4 * v18);
  }

  v19 = *a2;
  v20 = a2[1];
  while (v19 != v20)
  {
    v21 = *v19;
    v22 = v21 >> 12;
    v23 = (v21 >> 5) & 0x7F;
    if (v23 >= v15[v22])
    {
      v15[v22] = v23 + 1;
    }

    ++v19;
  }

  if (v16 == v15)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    if (v17 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v16 - v15;
    }

    do
    {
      v26 = *v15;
      if (v26)
      {
        *v15 = v24;
        v24 += v26;
      }

      ++v15;
      --v25;
    }

    while (v25);
  }

  sub_239E04F58(a1, v24);
  v27 = *a1;
  v28 = a1[1];
  v29 = (v28 - *a1) >> 2;
  if (v28 != *a1)
  {
    if (v29 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v28 - *a1) >> 2;
    }

    bzero(*a1, 4 * v30);
  }

  v31 = *a2;
  v32 = a2[1];
  if (*a2 != v32)
  {
    v33 = a1[3];
    do
    {
      v34 = *v31;
      v35 = *(v33 + ((v34 >> 10) & 0x3FFFFC));
      v36 = (v34 >> 5) & 0x7F;
      v37 = *v31 & 0x1F;
      v38 = v35 + v36;
      if (v37 >= v27[v38])
      {
        v27[v38] = v37 + 1;
      }

      ++v31;
    }

    while (v31 != v32);
  }

  if (v28 == v27)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0;
    if (v29 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v29;
    }

    do
    {
      v41 = *v27;
      if (v41)
      {
        *v27 = v39;
        v39 += v41;
      }

      ++v27;
      --v40;
    }

    while (v40);
  }

  sub_239E04F58(v6, v39);
  v42 = *a2;
  v43 = a2[1];
  v44 = v43 - *a2;
  if (v43 != *a2)
  {
    v45 = 0;
    v46 = v44 >> 2;
    v47 = *a3;
    v48 = a1[3];
    v49 = *a1;
    v50 = a1[6];
    do
    {
      *(v50 + 4 * (*(v49 + 4 * (*(v48 + ((v42[v45] >> 10) & 0x3FFFFC)) + ((v42[v45] >> 5) & 0x7F))) + (v42[v45] & 0x1F))) = *(v47 + 4 * v45);
      ++v45;
    }

    while (v46 > v45);
  }

  return a1;
}

void sub_239E04F14(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 24);
  if (v5)
  {
    *(v1 + 32) = v5;
    operator delete(v5);
  }

  v6 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E04F58(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    sub_239E04F8C(a1, a2 - v2);
  }
}

void sub_239E04F8C(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_239DEDF38();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      sub_239DEE028(a1, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[4 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t sub_239E050BC(uint64_t a1, __int128 *a2, dispatch_object_t object)
{
  *a1 = &unk_284D08578;
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 6);
  *(a1 + 40) = a2[2];
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  *(a1 + 56) = v6;
  *(a1 + 64) = object;
  if (object)
  {
    dispatch_retain(object);
  }

  *(a1 + 72) = dispatch_group_create();
  return a1;
}

uint64_t sub_239E0512C(uint64_t a1)
{
  *a1 = &unk_284D08578;
  dispatch_release(*(a1 + 72));
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

uint64_t sub_239E05188(uint64_t a1, __n128 *a2, uint64_t a3, float32x4_t *a4, float32x4_t *a5, __n128 a6, __n128 a7)
{
  if (*(a1 + 40) <= a3)
  {
    return 0;
  }

  if (a2[2].n128_u32[0] < 2 * *(a1 + 32))
  {
    return 0;
  }

  v11 = a2[2].n128_u32[1];
  result = (**a1)(a1, a3, a2[2].n128_u64[1], a6, a7, *a2, a2[1]);
  if (result)
  {
    v12 = a2[2].n128_i64[1];
    a4[2].i64[1] = v12;
    v13 = a4[2].u32[0];
    v14 = (v12 + 32 * v13);
    a5[2].i64[1] = v14;
    a4[2].i32[1] = v13;
    v15 = a5[2].u32[0];
    a5[2].i32[1] = v15;
    v16 = a2[2].n128_u32[1];
    v17 = v16 - (v15 + v13);
    if (v16 != v15 + v13)
    {
      v18 = vsubq_f32(a4[1], *a4);
      v19 = vmul_f32(*v18.i8, *&vextq_s8(v18, v18, 4uLL));
      v20 = vsubq_f32(a5[1], *a5);
      v21 = vmul_f32(*v20.i8, *&vextq_s8(v20, v20, 4uLL));
      *v18.i8 = vadd_f32(vzip2_s32(v21, v19), vmla_f32(vzip1_s32(v21, v19), vzip1_s32(*&vextq_s8(v20, v20, 8uLL), *&vextq_s8(v18, v18, 8uLL)), vzip1_s32(*v20.i8, *v18.i8)));
      v22 = vadd_f32(*v18.i8, *v18.i8);
      v23 = vcltz_f32(v22);
      v24 = v22.f32[1];
      if (v23.i8[4])
      {
        v24 = 0.0;
      }

      if (v23.i8[0])
      {
        v22.f32[0] = 0.0;
      }

      v25 = vcvtas_u32_f32(((v24 * v13) / ((v24 * v13) + (v22.f32[0] * v15))) * v17);
      a4[2].i32[1] = v25;
      a5[2].i32[1] = v17 - v25;
      a4[2].i32[1] += v13;
      a5[2].i32[1] += v15;
      memmove((a2[2].n128_u64[1] + 32 * a4[2].u32[1]), v14, 32 * v15);
      a5[2].i64[1] = a2[2].n128_u64[1] + 32 * a4[2].u32[1];
    }

    return 1;
  }

  return result;
}

void sub_239E05340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, atomic_uint *a7, __n128 a8, __n128 a9)
{
  v77 = 0uLL;
  v78 = 0;
  sub_239E05708(&v77, a2);
  v76 = 0;
  v14 = 0uLL;
  v75 = 0u;
  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v52 = vnegq_f32(v15);
  while (1)
  {
    v16 = *(&v77 + 1);
    v17 = v77;
    v18 = *(&v14 + 1);
    v19 = v14;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((*(&v14 + 1) - v14) >> 4);
    if (*(&v77 + 1) == v77 || v20 - 0x5555555555555555 * ((*(&v77 + 1) - v77) >> 4) >= *(a1 + 52))
    {
      break;
    }

    v22 = (v77 + 48);
    if (*(&v77 + 1) != v77 + 48)
    {
      _Q0 = vsubq_f32(*(v77 + 16), *v77);
      _S2 = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[1] }

      v29 = _S1 + _S1;
      do
      {
        v30 = vsubq_f32(v22[1], *v22);
        v31 = vmul_f32(*v30.i8, *&vextq_s8(v30, v30, 4uLL));
        v32 = (v31.f32[1] + (v31.f32[0] + (*v30.i32 * *&v30.i32[2]))) + (v31.f32[1] + (v31.f32[0] + (*v30.i32 * *&v30.i32[2])));
        if (v32 > v29)
        {
          v17 = v22;
          v29 = v32;
        }

        v22 += 3;
      }

      while (v22 != *(&v77 + 1));
    }

    v33 = *v17;
    v34 = v17[2];
    v73 = v17[1];
    v74 = v34;
    v72 = v33;
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v69 = v52;
    v70 = v33;
    v68[0] = v52;
    v68[1] = v33;
    if (sub_239E05188(a1, &v72, a4, &v69, v68, a8, a9))
    {
      v35 = v69;
      v36 = v71;
      v17[1] = v70;
      v17[2] = v36;
      *v17 = v35;
      sub_239E05708(&v77, v68);
    }

    else
    {
      sub_239E05708(&v75, &v72);
      v37 = *(&v77 + 1) - (v17 + 3);
      if (*(&v77 + 1) != &v17[3])
      {
        memmove(v17, &v17[3], *(&v77 + 1) - (v17 + 3));
      }

      *(&v77 + 1) = v17 + v37;
    }

    v14 = v75;
  }

  v38 = *a2;
  *(a5 + 8) = *(a2 + 8);
  *a5 = v38;
  v39 = *(a2 + 16);
  *(a5 + 16) = v39;
  *(a5 + 24) = DWORD2(v39);
  sub_239E15E88(&v77, v16, v19, v18, v20);
  v40 = *(&v77 + 1);
  v41 = v77;
  v42 = 0xAAAAAAAAAAAAAAABLL * ((*(&v77 + 1) - v77) >> 4);
  if (v42 < 2)
  {
    *(a5 + 28) = -*(a2 + 32);
    *(a5 + 12) = (*(a2 + 40) - a3) >> 5;
  }

  else
  {
    *(a5 + 12) = atomic_fetch_add_explicit(a7, *(a1 + 52), memory_order_relaxed);
    *(a5 + 28) = v42;
    if (*(a1 + 64) && *(a2 + 32) > *(a1 + 28))
    {
      if (v41 != v40)
      {
        v43 = 0;
        v44 = MEMORY[0x277D85DD0];
        do
        {
          v72 = *v41;
          v73 = *(v41 + 16);
          v74 = *(v41 + 32);
          v46 = *(a1 + 64);
          v45 = *(a1 + 72);
          block[0] = v44;
          block[1] = 3221225472;
          block[2] = sub_239E05810;
          block[3] = &unk_278B3CE08;
          v56 = v72;
          v57 = v73;
          v58 = v74;
          v59 = a8;
          v60 = a9;
          v61 = a1;
          v62 = a3;
          v63 = a6;
          v64 = a5;
          v66 = a4;
          v67 = v43;
          v65 = a7;
          dispatch_group_async(v45, v46, block);
          ++v43;
          v41 += 48;
        }

        while (v41 != v40);
      }
    }

    else if (v41 != v40)
    {
      v47 = 0;
      do
      {
        v48 = *v41;
        v49 = *(v41 + 32);
        v73 = *(v41 + 16);
        v74 = v49;
        v72 = v48;
        sub_239E05340(a1, &v72, a3, (a4 + 1), a6 + 32 * (v47 + *(a5 + 12)), a6, a7, a8, a9);
        ++v47;
        v41 += 48;
      }

      while (v41 != v40);
    }
  }

  if (v75)
  {
    *(&v75 + 1) = v75;
    operator delete(v75);
  }

  if (v77)
  {
    *(&v77 + 1) = v77;
    operator delete(v77);
  }
}

void sub_239E056CC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 128);
  if (v4)
  {
    *(v1 - 120) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E05708(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_239DEDF38();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_239E15E30(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void *sub_239E05840(uint64_t a1, uint64_t a2, int a3, int a4, unsigned int *a5, __n128 a6, __n128 a7)
{
  v11 = *(a1 + 32);
  v12 = v11 + *(a1 + 52) * a4 - 1;
  if (v11 > v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 / v11;
  }

  *a5 = v13;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v13, 0x1000040E0EAB150uLL);
  atomic_store(1u, &v21);
  v17[0] = a6;
  v17[1] = a7;
  v18 = a3;
  v19 = a4;
  v20 = a2;
  sub_239E05340(a1, v17, a2, 1, memptr, memptr, &v21, a6, a7);
  dispatch_group_wait(*(a1 + 72), 0xFFFFFFFFFFFFFFFFLL);
  return memptr;
}

uint64_t sub_239E05910(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  *a3 = 0;
  *a4 = 0;
  *a5 = 0;
  return sub_239E05960(a1);
}

uint64_t sub_239E05960(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = (4 * ((*(a1 + 52) - 1) * *(a1 + 40)) + 15) & 0x7FFFFFFF0;
  result = MEMORY[0x28223BE20]();
  v9 = v17 - v8;
  for (i = v9; ; i -= 4)
  {
    if (*(v3 + 32 * v7 + 28) < 1)
    {
      v14 = *(v6 + 8);
      ++**v6;
      *v14 -= *(**(v6 + 16) + 32 * v7 + 28);
    }

    else
    {
      ++*v4;
      v11 = *v5 + 32 * v7;
      v12 = *(v11 + 28);
      if (v12 >= 1)
      {
        v13 = v12 + 1;
        do
        {
          *i = v13 + *(v11 + 12) - 2;
          i += 4;
          --v13;
        }

        while (v13 > 1);
      }
    }

    if (i == v9)
    {
      break;
    }

    v15 = *(i - 1);
    v7 = v15;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_239E05A78(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  v24 = a6;
  v22 = 0;
  v23 = 2;
  v20 = a7;
  v21 = a6;
  v18 = a9;
  v19 = a8;
  v9 = a2[7] > 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *a4 = *a2;
  *(a4 + 4) = v12;
  *(a4 + 8) = v10;
  *(a4 + 12) = v13;
  *(a4 + 16) = v11;
  *(a4 + 20) = v14;
  *(a4 + 24) = v9;
  v17[0] = &v28;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = &v26;
  v17[4] = &v23;
  v17[5] = &v22;
  v16[0] = &v28;
  v16[1] = &v19;
  v16[2] = &v18;
  v16[3] = &v25;
  v16[4] = &v21;
  v16[5] = &v24;
  v16[6] = &v27;
  v16[7] = &v20;
  return sub_239E05B48(a1, a2, v9 << 32, 0x100000000, v17, v16);
}

uint64_t **sub_239E05B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v19 = &v46[-2 * v18];
  v46[0] = v19;
  while (1)
  {
    if (*(a2 + 32 * v11 + 28) < 1)
    {
      v20 = *a6;
      v21 = *(a6 + 8);
      v22 = *v21;
      *v22 = HIDWORD(v12);
      v23 = *v20;
      *v21 = v22 + 1;
      v24 = *(a6 + 16);
      v25 = *v24;
      *v25 = -HIDWORD(v11);
      v26 = v23 + 32 * v11;
      *v24 = v25 + 1;
      v27 = (**(a6 + 24) + 16 * (v11 >> 32));
      LODWORD(v25) = *(v26 + 28);
      v28 = -v25;
      v29 = (**(a6 + 32) - **(a6 + 40)) >> 2;
      *v27 = v28;
      v27[1] = v29;
      v27[2] = v12;
      v27[3] = 0;
      if (v25)
      {
        v30 = **(a6 + 48);
        v31 = *(v26 + 12);
        v32 = 32 * v28;
        v33 = v30 + 32 * v31;
        v34 = 32 * v31;
        v35 = (v33 + 12);
        v36 = v32;
        do
        {
          v37 = *v35;
          v35 += 8;
          v38 = *(a6 + 32);
          v39 = *v38;
          *v39 = v37;
          *v38 = v39 + 1;
          v36 -= 32;
        }

        while (v36);
        v40 = (v30 + v34 + 28);
        do
        {
          v41 = *v40;
          v40 += 8;
          v42 = *(a6 + 56);
          v43 = *v42;
          *v43 = v41;
          *v42 = v43 + 1;
          v32 -= 32;
        }

        while (v32);
      }
    }

    else
    {
      result = sub_239E16118(a5, v11, v12, v46, v13, v14, v15, v16, v17);
    }

    v44 = v46[0];
    if (v46[0] == v19)
    {
      break;
    }

    v46[0] -= 2;
    v11 = *(v44 - 2);
    v12 = *(v44 - 1);
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_239E05CF4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v24 = a2;
  v21 = a6;
  v22 = a5;
  v19 = 0;
  v20 = 2;
  v17 = a8;
  v18 = a7;
  v8 = a2[7] > 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *a5 = *a2;
  *(a5 + 4) = v11;
  *(a5 + 8) = v9;
  *(a5 + 12) = v12;
  *(a5 + 16) = v10;
  *(a5 + 20) = v13;
  *(a5 + 24) = v8;
  v16[0] = &v24;
  v16[1] = &v18;
  v16[2] = &v17;
  v16[3] = &v22;
  v16[4] = &v20;
  v16[5] = &v19;
  v15[0] = &v24;
  v15[1] = &v18;
  v15[2] = &v17;
  v15[3] = &v21;
  v15[4] = &v23;
  return sub_239E05DA8(a1, a2, v8 << 32, 0x100000000, v16, v15);
}

uint64_t **sub_239E05DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v19 = &v29[-2 * v18];
  v29[0] = v19;
  while (1)
  {
    if (*(a2 + 32 * v11 + 28) < 1)
    {
      v20 = *(a6 + 8);
      v21 = **a6 + 32 * v11;
      v22 = *v20;
      *v22 = HIDWORD(v12);
      *v20 = v22 + 1;
      v23 = *(a6 + 16);
      v24 = *v23;
      *v24 = -HIDWORD(v11);
      *v23 = v24 + 1;
      v25 = *(v21 + 28) ? *(**(a6 + 32) + 32 * *(v21 + 12) + 12) : -1;
      v26 = (**(a6 + 24) + 8 * (v11 >> 32));
      *v26 = v25;
      v26[1] = v12;
    }

    else
    {
      result = sub_239E16118(a5, v11, v12, v29, v13, v14, v15, v16, v17);
    }

    v27 = v29[0];
    if (v29[0] == v19)
    {
      break;
    }

    v29[0] -= 2;
    v11 = *(v27 - 2);
    v12 = *(v27 - 1);
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_239E05EF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  *a1 = &unk_284D086F8;
  return result;
}

__n128 sub_239E05F38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  *a1 = &unk_284D086F8;
  return result;
}

dispatch_queue_t sub_239E05F90()
{
  v0 = qos_class_self();
  v1 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], v0, 0);

  return dispatch_queue_create("com.apple.mpsaccelerationstructure.queue", v1);
}

void sub_239E05FD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8, void *a9, uint64_t a10)
{
  v10 = a3;
  v362 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 32) + 40))
  {
    sub_239E24B58();
  }

  v316 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4, a5);
  v320 = *(a2 + 16);
  v318 = *(a2 + 24);
  if (a10 == 1)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  v355 = 0;
  v354 = 0;
  v356 = 0;
  v352 = 0;
  v351 = 0;
  v353 = 0;
  v349 = 0;
  v348 = 0;
  v350 = 0;
  v346 = 0;
  v345 = 0;
  v347 = 0;
  v327 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0;
  v14 = 0;
  v328 = 0;
  v330 = 0;
  v319 = v12 * a5;
  v321 = v10;
  for (i = objc_msgSend_count(v10, v15, v16, v17, v18); v13 < i; i = objc_msgSend_count(v321, v105, v106, v107, v108))
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v10, v20, v13, v22, v23);
    v28 = objc_msgSend_objectAtIndexedSubscript_(a4, v25, v13, v26, v27);
    v33 = objc_msgSend_unsignedIntegerValue(v28, v29, v30, v31, v32);
    v37 = objc_msgSend_objectAtIndexedSubscript_(a6, v34, v13, v35, v36);
    v38 = v12;
    v42 = objc_msgSend_objectAtIndexedSubscript_(a7, v39, v13, v40, v41);
    v47 = objc_msgSend_unsignedIntegerValue(v42, v43, v44, v45, v46);
    v341[0] = 0;
    v357[0] = 0;
    v51 = objc_msgSend_objectAtIndexedSubscript_(a9, v48, v13, v49, v50);
    v56 = objc_msgSend_unsignedIntegerValue(v51, v52, v53, v54, v55);
    if (objc_msgSend_storageMode(v24, v57, v58, v59, v60) == 2)
    {
      v67 = objc_msgSend_length(v24, v61, v62, v63, v64) - v33;
      if (v37)
      {
        v68 = v67;
        v69 = objc_msgSend_newBufferWithLength_options_(v320, v65, v67, 0, v66);
      }

      else
      {
        v68 = v319 * v56;
        v69 = objc_msgSend_newBufferWithLength_options_(v320, v65, v319 * v56, 0, v66);
      }

      v74 = v69;
      if (!v330)
      {
        v330 = objc_msgSend_commandBuffer(v318, v70, v71, v72, v73);
        v328 = objc_msgSend_blitCommandEncoder(v330, v75, v76, v77, v78);
      }

      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v328, v70, v24, v33, v74, 0, v68);
      v83 = objc_msgSend_contents(v74, v79, v80, v81, v82);
    }

    else
    {
      v74 = 0;
      v83 = (objc_msgSend_contents(v24, v61, v62, v63, v64) + v33);
    }

    v341[0] = v83;
    if (v37)
    {
      if (objc_msgSend_storageMode(v37, v84, v85, v86, v87) == 2)
      {
        v96 = objc_msgSend_newBufferWithLength_options_(v320, v88, 4 * v56 * v38, 0, v91);
        if (!v330)
        {
          v330 = objc_msgSend_commandBuffer(v318, v92, v93, v94, v95);
          v328 = objc_msgSend_blitCommandEncoder(v330, v97, v98, v99, v100);
        }

        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v328, v92, v37, v47, v96, 0, 4 * v56 * v38);
        v357[0] = objc_msgSend_contents(v96, v101, v102, v103, v104);
      }

      else
      {
        v96 = 0;
        v357[0] = (objc_msgSend_contents(v37, v88, v89, v90, v91) + v47);
      }
    }

    else
    {
      v96 = 0;
    }

    sub_239DEDD74(&v354, v341);
    LODWORD(__p[0]) = a5;
    sub_239DEDE48(&v351, __p);
    sub_239DEDD74(&v348, v357);
    LODWORD(__p[0]) = a8;
    sub_239DEDE48(&v345, __p);
    if (v74)
    {
      objc_msgSend_addObject_(v327, v105, v74, v107, v108);
    }

    if (v96)
    {
      objc_msgSend_addObject_(v327, v105, v96, v107, v108);
    }

    v14 += v56 * v38;
    v12 = v38;
    ++v13;
    v10 = v321;
  }

  if (v330)
  {
    objc_msgSend_endEncoding(v328, v20, v21, v22, v23);
    objc_msgSend_commit(v330, v109, v110, v111, v112);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v330, v113, v114, v115, v116);
    kdebug_trace();
  }

  memset(v341, 0, sizeof(v341));
  sub_239E15CC0(v341, v354, v355, (v355 - v354) >> 3);
  memset(v342, 0, sizeof(v342));
  sub_239E15D78(v342, v351, v352, (v352 - v351) >> 2);
  memset(v343, 0, sizeof(v343));
  sub_239E15CC0(v343, v348, v349, (v349 - v348) >> 3);
  memset(v344, 0, sizeof(v344));
  sub_239E15D78(v344, v345, v346, (v346 - v345) >> 2);
  v121 = objc_msgSend_date(MEMORY[0x277CBEAA8], v117, v118, v119, v120);
  kdebug_trace();
  v122 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v122 = 2.0;
  }

  v123 = (v122 * (v14 / v12));
  memptr = 0;
  v124 = 32 * v123;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v123, 0x1000040E0EAB150uLL);
  v339 = 0;
  if (a10)
  {
    v129 = 0;
    v130.i64[0] = 0x7F0000007FLL;
    v130.i64[1] = 0x7F0000007FLL;
    v131.n128_u64[0] = 0x7F0000007FLL;
    v131.n128_u64[1] = 0x7F0000007FLL;
    v329 = vnegq_f32(v130);
    v331 = v131;
    while (v129 < objc_msgSend_count(v10, v125, v126, v127, v128))
    {
      v135 = objc_msgSend_objectAtIndexedSubscript_(a9, v132, v129, v133, v134);
      v140 = objc_msgSend_unsignedIntegerValue(v135, v136, v137, v138, v139);
      if (v140)
      {
        v144 = 0;
        v145 = 1;
        do
        {
          v146 = v144 + 1;
          v147 = v144 + 2;
          v148 = v144 + 3;
          v149 = *(v343[0] + v129);
          if (v149)
          {
            if (*(v344[0] + v129) == 4)
            {
              v150 = *(v149 + 4 * v144);
              v146 = *(v149 + 4 * v146);
              v147 = *(v149 + 4 * v147);
              v148 = *(v149 + 4 * v148);
            }

            else
            {
              v150 = *(v149 + 2 * v144);
              v146 = *(v149 + 2 * v146);
              v147 = *(v149 + 2 * v147);
              v148 = *(v149 + 2 * v148);
            }
          }

          else
          {
            v150 = v144;
          }

          v151 = *(v341[0] + v129);
          v152 = *(v342[0] + v129);
          v153 = v151 + v152 * v150;
          v141.i64[0] = *v153;
          v141.i32[2] = *(v153 + 8);
          v154 = v151 + v152 * v146;
          v143.i64[0] = *v154;
          v143.i32[2] = *(v154 + 8);
          v155 = v151 + v152 * v147;
          v142.i64[0] = *v155;
          v142.i32[2] = *(v155 + 8);
          v156 = vsubq_f32(v143, v141);
          v157 = vsubq_f32(v142, v141);
          v158 = vmlaq_f32(vnegq_f32(vmulq_f32(v156, vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL))), v157, vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL));
          v159 = vmulq_f32(v158, v158);
          if (sqrtf(v159.f32[1] + (v159.f32[2] + v159.f32[0])) != 0.0)
          {
            v160 = v151 + v152 * v148;
            v161.i64[0] = *v160;
            v141.i32[3] = 0;
            v143.i32[3] = 0;
            v162 = vminnmq_f32(v141, v143);
            v163 = vmaxnmq_f32(v141, v143);
            v162.i32[3] = 0;
            v142.i32[3] = 0;
            v164 = vminnmq_f32(v162, v142);
            v163.i32[3] = 0;
            v164.i32[3] = 0;
            v165 = vmaxnmq_f32(v163, v142);
            v161.i64[1] = *(v160 + 8);
            v166 = vminnmq_f32(v164, v161);
            v165.i32[3] = 0;
            v167 = vmaxnmq_f32(v165, v161);
            v168 = v329;
            v168.i32[3] = 0;
            v169 = v339++;
            v170 = memptr + 32 * v169;
            *(v170 + 2) = v166.i32[2];
            *v170 = v166.i64[0];
            v166.i32[3] = 0;
            v142 = vminnmq_f32(v168, v166);
            v143 = v331;
            v143.i32[3] = 0;
            *(v170 + 2) = v167.i64[0];
            *(v170 + 6) = v167.i32[2];
            v167.i32[3] = 0;
            v141 = vmaxnmq_f32(v143, v167);
            v142.i32[3] = v329.n128_i32[3];
            v141.i32[3] = v331.n128_i32[3];
            *(v170 + 3) = v145 - 1;
            *(v170 + 7) = v129;
            v329 = v142;
            v331 = v141;
          }

          v171 = v140 > v145++;
          v144 += 4;
        }

        while (v171);
      }

      ++v129;
    }
  }

  else
  {
    v172 = 0;
    v173.i64[0] = 0x7F0000007FLL;
    v173.i64[1] = 0x7F0000007FLL;
    v174.n128_u64[0] = 0x7F0000007FLL;
    v174.n128_u64[1] = 0x7F0000007FLL;
    v329 = vnegq_f32(v173);
    v331 = v174;
    while (v172 < objc_msgSend_count(v10, v125, v126, v127, v128))
    {
      v178 = objc_msgSend_objectAtIndexedSubscript_(a9, v175, v172, v176, v177);
      v183 = objc_msgSend_unsignedIntegerValue(v178, v179, v180, v181, v182);
      if (v183)
      {
        v187 = 0;
        v188 = 1;
        do
        {
          v189 = v187 + 1;
          v190 = v187 + 2;
          v191 = *(v343[0] + v172);
          if (v191)
          {
            if (*(v344[0] + v172) == 4)
            {
              v192 = *(v191 + 4 * v187);
              v189 = *(v191 + 4 * v189);
              v190 = *(v191 + 4 * v190);
            }

            else
            {
              v192 = *(v191 + 2 * v187);
              v189 = *(v191 + 2 * v189);
              v190 = *(v191 + 2 * v190);
            }
          }

          else
          {
            v192 = v187;
          }

          v193 = *(v341[0] + v172);
          v194 = *(v342[0] + v172);
          v195 = v193 + v194 * v192;
          v184.i64[0] = *v195;
          v184.i32[2] = *(v195 + 8);
          v196 = v193 + v194 * v189;
          v185.i64[0] = *v196;
          v185.i32[2] = *(v196 + 8);
          v197 = v193 + v194 * v190;
          v186.i64[0] = *v197;
          v186.i32[2] = *(v197 + 8);
          v198 = vsubq_f32(v185, v184);
          v199 = vsubq_f32(v186, v184);
          v200 = vmlaq_f32(vnegq_f32(vmulq_f32(v198, vextq_s8(vuzp1q_s32(v199, v199), v199, 0xCuLL))), v199, vextq_s8(vuzp1q_s32(v198, v198), v198, 0xCuLL));
          v201 = vmulq_f32(v200, v200);
          if (sqrtf(v201.f32[1] + (v201.f32[2] + v201.f32[0])) != 0.0)
          {
            v184.i32[3] = 0;
            v185.i32[3] = 0;
            v202 = vminnmq_f32(v184, v185);
            v202.i32[3] = 0;
            v203 = vmaxnmq_f32(v184, v185);
            v186.i32[3] = 0;
            v204 = vminnmq_f32(v202, v186);
            v203.i32[3] = 0;
            v205 = vmaxnmq_f32(v203, v186);
            v206 = v329;
            v206.i32[3] = 0;
            v207 = v339++;
            v208 = memptr + 32 * v207;
            *(v208 + 2) = v204.i32[2];
            *v208 = v204.i64[0];
            v204.i32[3] = 0;
            v185 = vminnmq_f32(v206, v204);
            v186 = v331;
            v186.i32[3] = 0;
            *(v208 + 2) = v205.i64[0];
            *(v208 + 6) = v205.i32[2];
            v205.i32[3] = 0;
            v184 = vmaxnmq_f32(v186, v205);
            v185.i32[3] = v329.n128_i32[3];
            v184.i32[3] = v331.n128_i32[3];
            *(v208 + 3) = v188 - 1;
            *(v208 + 7) = v172;
            v329 = v185;
            v331 = v184;
          }

          v171 = v183 > v188++;
          v187 += 3;
        }

        while (v171);
      }

      ++v172;
    }
  }

  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v121, v209, v210, v211, v212);
  v213 = sub_239E05F90();
  v214 = *(a1 + 12);
  if (v214 > 1)
  {
    if (v214 == 2)
    {
      operator new();
    }

    if (v214 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v214)
    {
      operator new();
    }

    if (v214 == 1)
    {
      operator new();
    }
  }

  dispatch_release(v213);
  v219 = objc_msgSend_date(MEMORY[0x277CBEAA8], v215, v216, v217, v218);
  kdebug_trace();
  v338 = 0;
  v220 = sub_239E05840(0, memptr, v339, v123, &v338, v329, v331);
  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v219, v221, v222, v223, v224);
  if (*(a1 + 8) == 1)
  {
    v229 = objc_msgSend_date(MEMORY[0x277CBEAA8], v225, v226, v227, v228);
    v234 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v230, v231, v232, v233);
    v235 = *(a1 + 24);
    *v357 = *(a1 + 8);
    v358 = v235;
    v359 = *(a1 + 40);
    v360 = *(a1 + 56);
    sub_239DFA254(a1, v357, v220, v234);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v236, @"CPU", @"BVH Builder", v237);
    v241 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v238, @"{ %f, %f, %f }, { %f, %f, %f }", v239, v240, v329.n128_f32[0], v329.n128_f32[1], v329.n128_f32[2], v331.n128_f32[0], v331.n128_f32[1], v331.n128_f32[2], v316);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v242, v241, @"Bounds", v243);
    if (*(v220 + 7) >= 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v234, v244, @"Internal", @"BVH Root Node Type", v245);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v234, v244, @"Leaf", @"BVH Root Node Type", v245);
    }

    v250 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v246, v247, v248, v249);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v251, v250, @"Temporary Memory", v252);
    v257 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v253, v254, v255, v256, vcvtd_n_f64_u64(v124, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v250, v258, v257, @"Fragments (mb)", v259);
    v264 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v260, v261, v262, v263, vcvtd_n_f64_u64(32 * v338, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v250, v265, v264, @"Nodes (mb)", v266);
    v336 = 0u;
    v337 = 0u;
    v334 = 0u;
    v335 = 0u;
    v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v267, &v334, v361, 16);
    if (v272)
    {
      v273 = *v335;
      v274 = 0.0;
      do
      {
        for (j = 0; j != v272; ++j)
        {
          if (*v335 != v273)
          {
            objc_enumerationMutation(v250);
          }

          v276 = objc_msgSend_objectForKeyedSubscript_(v250, v268, *(*(&v334 + 1) + 8 * j), v270, v271);
          objc_msgSend_doubleValue(v276, v277, v278, v279, v280);
          v274 = v274 + v281;
        }

        v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v268, &v334, v361, 16);
      }

      while (v272);
    }

    else
    {
      v274 = 0.0;
    }

    v282 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v268, v269, v270, v271, v274);
    objc_msgSend_setObject_forKeyedSubscript_(v250, v283, v282, @"Total (mb)", v284);
    objc_msgSend_timeIntervalSinceNow(v229, v285, v286, v287, v288);
  }

  v289 = objc_msgSend_date(MEMORY[0x277CBEAA8], v225, v226, v227, v228);
  __p[0] = v220;
  v333 = 0;
  v339 = 0;
  v357[0] = &v333;
  v357[1] = &v339;
  *&v358 = __p;
  sub_239E05960(a1);
  objc_msgSend_timeIntervalSinceNow(v289, v290, v291, v292, v293);
  v294 = getpagesize();
  v295 = -v294;
  v296 = mmap(0, (v294 + (HIDWORD(v333) << 6) + 63) & -v294, 3, 4098, -1, 0);
  if (v296 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v297 = v294 - 1;
  v298 = mmap(0, (v294 - 1 + 16 * v333) & v295, 3, 4098, -1, 0);
  if (v298 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v297 + 4 * v339) & v295) != 0)
  {
    v299 = (v297 + 4 * v339) & v295;
  }

  else
  {
    v299 = v294;
  }

  v300 = mmap(0, v299, 3, 4098, -1, 0);
  if (v300 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v305 = mmap(0, v299, 3, 4098, -1, 0);
  if (v305 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v306 = objc_msgSend_date(MEMORY[0x277CBEAA8], v301, v302, v303, v304);
  v357[1] = 0;
  v357[0] = 0;
  *&v358 = 0;
  memset(__p, 0, sizeof(__p));
  sub_239E04F58(v357, (v333 + HIDWORD(v333)));
  sub_239E04F58(__p, (v333 + HIDWORD(v333)));
  sub_239E05A78(a1, v220, memptr, v296, v298, v300, v305, v357[0], __p[0]);
  v307 = *(v220 + 7);
  objc_msgSend_timeIntervalSinceNow(v306, v308, v309, v310, v311);
  free(memptr);
  objc_msgSend_date(MEMORY[0x277CBEAA8], v312, v313, v314, v315);
  kdebug_trace();
  operator new();
}

uint64_t sub_239E07744(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 168);
  v3 = *(a1 + 48);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v4, 0, v5, v6);
  sub_239E006FC(v3, v2, v7, *(*(a1 + 64) + 32), v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 168);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v11, 1, v12, v13);
  sub_239E006FC(v9, v10, v14, *(*(a1 + 64) + 32), v15);
  v16 = *(a1 + 80);
  v17 = *(a1 + 172);
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v18, 0, v19, v20);
  sub_239E006FC(v16, v17, v21, *(*(a1 + 88) + 32), v22);
  v23 = *(a1 + 96);
  v24 = *(a1 + 176);
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v25, 0, v26, v27);
  sub_239E006FC(v23, v24, v28, *(*(a1 + 104) + 32), v29);
  v30 = *(a1 + 112);
  v31 = (*(*(a1 + 120) + 8) - **(a1 + 120));
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v32, 0, v33, v34);
  sub_239E006FC(v30, v31, v35, *(*(a1 + 128) + 32), v36);
  v37 = *(a1 + 136);
  v38 = (*(*(a1 + 120) + 32) - *(*(a1 + 120) + 24));
  v42 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v39, 0, v40, v41);
  sub_239E006FC(v37, v38, v42, *(*(a1 + 144) + 32), v43);
  v44 = *(a1 + 152);
  v45 = (*(*(a1 + 120) + 56) - *(*(a1 + 120) + 48));
  v49 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v46, 0, v47, v48);
  sub_239E006FC(v44, v45, v49, *(*(a1 + 160) + 32), v50);
  objc_msgSend_setSignaledValue_(*(a1 + 32), v51, 2, v52, v53);
  munmap(*(a1 + 80), *(a1 + 172));
  munmap(*(a1 + 96), *(a1 + 176));
  munmap(*(a1 + 48), *(a1 + 168));
  munmap(*(a1 + 72), *(a1 + 168));
  v54 = *(a1 + 120);
  if (v54)
  {
    v55 = *(v54 + 48);
    if (v55)
    {
      *(v54 + 56) = v55;
      operator delete(v55);
    }

    v56 = *(v54 + 24);
    if (v56)
    {
      *(v54 + 32) = v56;
      operator delete(v56);
    }

    v57 = *v54;
    if (*v54)
    {
      *(v54 + 8) = v57;
      operator delete(v57);
    }

    MEMORY[0x23EE7D780](v54, 0x10C40E523AF1CLL);
  }

  v58 = *(a1 + 56);
  add = atomic_fetch_add(v58 + 2, 0xFFFFFFFF);
  if (v58 && add == 1)
  {
    (*(*v58 + 8))(v58);
  }

  sub_239E18C24(*(a1 + 88));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 128));
  sub_239E18C24(*(a1 + 144));
  sub_239E18C24(*(a1 + 160));
  sub_239E18C24(*(a1 + 64));

  return kdebug_trace();
}

void sub_239E07A3C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, void *a9)
{
  v155 = *MEMORY[0x277D85DE8];
  if (*(a2[4] + 40))
  {
    sub_239E24BA4();
  }

  v16 = a2[2];
  v140 = a2[3];
  kdebug_trace();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (!a5)
  {
    if (objc_msgSend_storageMode(a3, v17, v18, v19, v20) == 2)
    {
      v28 = objc_msgSend_newBufferWithLength_options_(v16, v24, a8 << 6, 0, v27);
      v23 = objc_msgSend_commandBuffer(v140, v29, v30, v31, v32);
      v22 = objc_msgSend_blitCommandEncoder(v23, v33, v34, v35, v36);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22, v37, a3, a4, v28, 0, a8 << 6);
      v21 = objc_msgSend_contents(v28, v38, v39, v40, v41);
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v21 = objc_msgSend_contents(a3, v24, v25, v26, v27) + a4;
    }
  }

  v138 = v16;
  if (objc_msgSend_storageMode(a6, v17, v18, v19, v20) == 2)
  {
    v50 = objc_msgSend_newBufferWithLength_options_(v16, v42, 4 * a8, 0, v45);
    if (!v23)
    {
      v23 = objc_msgSend_commandBuffer(v140, v46, v47, v48, v49);
      v22 = objc_msgSend_blitCommandEncoder(v23, v51, v52, v53, v54);
    }

    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22, v46, a6, a7, v50, 0, 4 * a8);
    v63 = objc_msgSend_contents(v50, v55, v56, v57, v58);
  }

  else
  {
    v63 = objc_msgSend_contents(a6, v42, v43, v44, v45) + a7;
  }

  if (v23)
  {
    objc_msgSend_endEncoding(v22, v59, v60, v61, v62);
    objc_msgSend_commit(v23, v64, v65, v66, v67);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v23, v68, v69, v70, v71);
    kdebug_trace();
  }

  kdebug_trace();
  kdebug_trace();
  if (v21)
  {
    v74 = a8 <= 1 ? 1 : a8;
    v75 = objc_msgSend_newBufferWithLength_options_(v138, v72, v74 << 6, 0, v73);
    v80 = objc_msgSend_contents(v75, v76, v77, v78, v79);
    if (a8)
    {
      v81 = v21 + 32;
      v82 = v80 + 32;
      v83 = a8;
      do
      {
        *(v82 - 32) = __invert_f4(*(v81 - 32));
        v82 += 64;
        v81 += 64;
        --v83;
      }

      while (v83);
    }
  }

  memset(v151, 0, sizeof(v151));
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v72, &v147, v154, 16);
  if (v88)
  {
    v89 = *v148;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v148 != v89)
        {
          objc_enumerationMutation(a9);
        }

        objc_msgSend_boundingBox(*(*(&v147 + 1) + 8 * i), v84, v85, v86, v87);
        LODWORD(v152[1]) = v91;
        v153 = v92;
        v152[0] = v93;
        v152[2] = v94;
        sub_239E08920(v151, v152);
      }

      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v84, &v147, v154, 16);
    }

    while (v88);
  }

  memptr = 0;
  if (a8 <= 1)
  {
    v95 = 1;
  }

  else
  {
    v95 = a8;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v95, 0x1000040E0EAB150uLL);
  v145 = 0;
  if (v21)
  {
    if (a8)
    {
      v96 = 0;
      v97.i64[0] = 0x7F0000007FLL;
      v97.i64[1] = 0x7F0000007FLL;
      v98.i64[0] = 0x7F0000007FLL;
      v98.i64[1] = 0x7F0000007FLL;
      v141 = vnegq_f32(v97);
      v143 = v98;
      do
      {
        v99 = (v151[0] + 32 * *(v63 + 4 * v96));
        v100 = *v99;
        v101 = v99[1];
        if ((vmovn_s32(vcgtq_f32(*v99, v101)).u8[0] & 1) == 0 && v101.f32[1] >= v100.f32[1] && v101.f32[2] >= v100.f32[2])
        {
          v103 = 0;
          v104.i64[0] = 0x7F0000007FLL;
          v104.i64[1] = 0x7F0000007FLL;
          v105 = vnegq_f32(v104);
          do
          {
            v106 = v105;
            v107 = v104;
            if (v103)
            {
              v108 = v100.f32[0];
            }

            else
            {
              v108 = v101.f32[0];
            }

            if ((v103 & 2) != 0)
            {
              v109 = v100.f32[1];
            }

            else
            {
              v109 = v101.f32[1];
            }

            if (v103 >= 4)
            {
              v110 = v100.f32[2];
            }

            else
            {
              v110 = v101.f32[2];
            }

            v111 = vaddq_f32(*(v21 + (v96 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v21 + (v96 << 6)), v108), *(v21 + (v96 << 6) + 16), v109), *(v21 + (v96 << 6) + 32), v110));
            v112 = v106;
            v112.i32[3] = 0;
            v111.i32[3] = 0;
            v113 = vminnmq_f32(v112, v111);
            v105 = v113;
            v105.i32[3] = v106.i32[3];
            v114 = v107;
            v114.i32[3] = 0;
            v115 = vmaxnmq_f32(v114, v111);
            v104 = v115;
            v104.i32[3] = v107.i32[3];
            ++v103;
          }

          while (v103 != 8);
          v116 = v141;
          v116.i32[3] = 0;
          v105.i32[3] = 0;
          v117 = v143;
          v117.i32[3] = 0;
          v104.i32[3] = 0;
          v118 = vminnmq_f32(v116, v105);
          v119 = vmaxnmq_f32(v117, v104);
          v118.i32[3] = v141.i32[3];
          v119.i32[3] = v143.i32[3];
          v120 = v145++;
          v121 = memptr + 32 * v120;
          *v121 = v113.i64[0];
          *(v121 + 2) = v113.i32[2];
          *(v121 + 3) = v96;
          *(v121 + 2) = v115.i64[0];
          *(v121 + 6) = v115.i32[2];
          *(v121 + 7) = 0;
          v141 = v118;
          v143 = v119;
        }

        ++v96;
      }

      while (v96 != a8);
    }
  }

  else if (a8)
  {
    v122 = 0;
    v123.i64[0] = 0x7F0000007FLL;
    v123.i64[1] = 0x7F0000007FLL;
    v124.i64[0] = 0x7F0000007FLL;
    v124.i64[1] = 0x7F0000007FLL;
    v142 = vnegq_f32(v123);
    v144 = v124;
    do
    {
      v125 = v151[0] + 32 * *(v63 + 4 * v122);
      v127 = *v125;
      v126 = *(v125 + 1);
      v128 = vcgt_f32(*v125, *&v126);
      if ((v128.i8[0] & 1) == 0 && (v128.i8[4] & 1) == 0 && *(&v126 + 2) >= *(&v127 + 2))
      {
        v129 = v142;
        v129.i32[3] = 0;
        v130 = *v125;
        v130.i32[3] = 0;
        v131 = vminnmq_f32(v129, v130);
        v132 = v144;
        v132.i32[3] = 0;
        v133 = *(v125 + 1);
        v133.i32[3] = 0;
        v134 = vmaxnmq_f32(v132, v133);
        v131.i32[3] = v142.i32[3];
        v134.i32[3] = v144.i32[3];
        v135 = v145++;
        v136 = memptr + 32 * v135;
        *v136 = v127;
        *(v136 + 2) = DWORD2(v127);
        *(v136 + 3) = v122;
        *(v136 + 2) = v126;
        *(v136 + 6) = DWORD2(v126);
        *(v136 + 7) = 0;
        v142 = v131;
        v144 = v134;
      }

      ++v122;
    }

    while (a8 != v122);
  }

  kdebug_trace();
  sub_239E05F90();
  v137 = *(a1 + 12);
  if (v137)
  {
    if (v137 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E08920(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_239DEDF38();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_239E162F0(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
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
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

uint64_t sub_239E089F8(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v4, 0, v5, v6);
  sub_239E006FC(v3, v2, v7, *(*(a1 + 64) + 32), v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 148);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v11, 0, v12, v13);
  sub_239E006FC(v9, v10, v14, *(*(a1 + 80) + 32), v15);
  v16 = *(a1 + 88);
  v17 = (*(*(a1 + 96) + 8) - **(a1 + 96));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v18, 0, v19, v20);
  sub_239E006FC(v16, v17, v21, *(*(a1 + 104) + 32), v22);
  v23 = *(a1 + 112);
  v24 = (*(*(a1 + 96) + 32) - *(*(a1 + 96) + 24));
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v25, 0, v26, v27);
  sub_239E006FC(v23, v24, v28, *(*(a1 + 120) + 32), v29);
  v30 = *(a1 + 128);
  v31 = (*(*(a1 + 96) + 56) - *(*(a1 + 96) + 48));
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v32, 0, v33, v34);
  sub_239E006FC(v30, v31, v35, *(*(a1 + 136) + 32), v36);
  objc_msgSend_setSignaledValue_(*(a1 + 32), v37, 2, v38, v39);
  munmap(*(a1 + 48), *(a1 + 144));
  munmap(*(a1 + 72), *(a1 + 148));
  v40 = *(a1 + 96);
  if (v40)
  {
    v41 = *(v40 + 48);
    if (v41)
    {
      *(v40 + 56) = v41;
      operator delete(v41);
    }

    v42 = *(v40 + 24);
    if (v42)
    {
      *(v40 + 32) = v42;
      operator delete(v42);
    }

    v43 = *v40;
    if (*v40)
    {
      *(v40 + 8) = v43;
      operator delete(v43);
    }

    MEMORY[0x23EE7D780](v40, 0x10C40E523AF1CLL);
  }

  v44 = *(a1 + 56);
  add = atomic_fetch_add(v44 + 2, 0xFFFFFFFF);
  if (v44 && add == 1)
  {
    (*(*v44 + 8))(v44);
  }

  sub_239E18C24(*(a1 + 64));
  sub_239E18C24(*(a1 + 80));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 120));
  sub_239E18C24(*(a1 + 136));

  return kdebug_trace();
}

uint64_t sub_239E08C68(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int **a6, uint64_t a7, uint64_t a8, __n128 *a9)
{
  if (a7 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v17 = *a2;
  v18 = a2[1];
  v20 = (v18 - v17) >> 3;
  v21 = 0;
  if (v18 != v17)
  {
    v22 = *a6;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v18 - v17) >> 3;
    }

    do
    {
      v24 = *v22++;
      v21 += v16 * v24;
      --v23;
    }

    while (v23);
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  sub_239E15CC0(&v106, v17, v18, v20);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_239E15D78(&v109, *a3, a3[1], (a3[1] - *a3) >> 2);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  sub_239E15CC0(&v112, *a4, a4[1], (a4[1] - *a4) >> 3);
  __p = 0;
  v116 = 0;
  v117 = 0;
  sub_239E15D78(&__p, *a5, a5[1], (a5[1] - *a5) >> 2);
  v25 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v25 = 2.0;
  }

  v26 = (v25 * (v21 / v16));
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v26, 0x1000040E0EAB150uLL);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v29 = vnegq_f32(v28);
  *a9 = v29;
  a9[1] = v28;
  v31 = *a2;
  v30 = a2[1];
  if (a7)
  {
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (*a6)[v33];
        if (v34)
        {
          v35 = 0;
          for (i = 0; i != v34; ++i)
          {
            v37 = v35 + 1;
            v38 = v35 + 2;
            v39 = v35 + 3;
            v40 = *(v112 + v33);
            if (v40)
            {
              if (*(__p + v33) == 4)
              {
                v41 = *(v40 + 4 * v35);
                v37 = *(v40 + 4 * v37);
                v38 = *(v40 + 4 * v38);
                v39 = *(v40 + 4 * v39);
              }

              else
              {
                v41 = *(v40 + 2 * v35);
                v37 = *(v40 + 2 * v37);
                v38 = *(v40 + 2 * v38);
                v39 = *(v40 + 2 * v39);
              }
            }

            else
            {
              v41 = v35;
            }

            v42 = *(v106 + v33);
            v43 = *(v109 + v33);
            v44 = v42 + v43 * v41;
            v28.i64[0] = *v44;
            v28.i32[2] = *(v44 + 8);
            v45 = v42 + v43 * v37;
            v29.i64[0] = *v45;
            v29.i32[2] = *(v45 + 8);
            v46 = v42 + v43 * v38;
            v27.i64[0] = *v46;
            v27.i32[2] = *(v46 + 8);
            v47 = vsubq_f32(v29, v28);
            v48 = vsubq_f32(v27, v28);
            v49 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
            v50 = vmulq_f32(v49, v49);
            if (sqrtf(v50.f32[1] + (v50.f32[2] + v50.f32[0])) != 0.0)
            {
              v51 = v42 + v43 * v39;
              v52.i64[0] = *v51;
              v28.i32[3] = 0;
              v29.i32[3] = 0;
              v53 = vminnmq_f32(v28, v29);
              v54 = vmaxnmq_f32(v28, v29);
              v53.i32[3] = 0;
              v27.i32[3] = 0;
              v55 = vminnmq_f32(v53, v27);
              v54.i32[3] = 0;
              v56 = vmaxnmq_f32(v54, v27);
              v55.i32[3] = 0;
              v52.i64[1] = *(v51 + 8);
              v29 = vminnmq_f32(v55, v52);
              v56.i32[3] = 0;
              v28 = vmaxnmq_f32(v56, v52);
              v57 = *a9;
              v58 = a9[1];
              v57.i32[3] = 0;
              v59 = v29;
              v59.i32[3] = 0;
              v27 = vminnmq_f32(v57, v59);
              v58.i32[3] = 0;
              v60 = v28;
              v60.i32[3] = 0;
              v61 = vmaxnmq_f32(v58, v60);
              a9->n128_u32[2] = v27.u32[2];
              a9[1].n128_u32[2] = v61.u32[2];
              a9->n128_u64[0] = v27.i64[0];
              a9[1].n128_u64[0] = v61.i64[0];
              v62 = v32++;
              v104 = v32;
              v63 = memptr + 32 * v62;
              *v63 = v29.i64[0];
              *(v63 + 2) = v29.i32[2];
              *(v63 + 3) = i;
              *(v63 + 2) = v28.i64[0];
              *(v63 + 6) = v28.i32[2];
              *(v63 + 7) = v33;
            }

            v35 += 4;
          }

          v31 = *a2;
          v30 = a2[1];
        }

        ++v33;
      }

      while (v33 < (v30 - v31) >> 3);
      goto LABEL_43;
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  if (v30 == *a2)
  {
    goto LABEL_42;
  }

  v32 = 0;
  v64 = 0;
  do
  {
    v65 = (*a6)[v64];
    if (v65)
    {
      v66 = 0;
      for (j = 0; j != v65; ++j)
      {
        v68 = v66 + 1;
        v69 = v66 + 2;
        v70 = *(v112 + v64);
        if (v70)
        {
          if (*(__p + v64) == 4)
          {
            v71 = *(v70 + 4 * v66);
            v68 = *(v70 + 4 * v68);
            v69 = *(v70 + 4 * v69);
          }

          else
          {
            v71 = *(v70 + 2 * v66);
            v68 = *(v70 + 2 * v68);
            v69 = *(v70 + 2 * v69);
          }
        }

        else
        {
          v71 = v66;
        }

        v72 = *(v106 + v64);
        v73 = *(v109 + v64);
        v74 = v72 + v73 * v71;
        v28.i64[0] = *v74;
        v28.i32[2] = *(v74 + 8);
        v75 = v72 + v73 * v68;
        v29.i64[0] = *v75;
        v29.i32[2] = *(v75 + 8);
        v76 = v72 + v73 * v69;
        v27.i64[0] = *v76;
        v27.i32[2] = *(v76 + 8);
        v77 = vsubq_f32(v29, v28);
        v78 = vsubq_f32(v27, v28);
        v79 = vmlaq_f32(vnegq_f32(vmulq_f32(v77, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), v78, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0])) != 0.0)
        {
          v28.i32[3] = 0;
          v29.i32[3] = 0;
          v81 = vminnmq_f32(v28, v29);
          v82 = vmaxnmq_f32(v28, v29);
          v81.i32[3] = 0;
          v27.i32[3] = 0;
          v29 = vminnmq_f32(v81, v27);
          v82.i32[3] = 0;
          v28 = vmaxnmq_f32(v82, v27);
          v83 = *a9;
          v84 = a9[1];
          v83.i32[3] = 0;
          v85 = v29;
          v85.i32[3] = 0;
          v27 = vminnmq_f32(v83, v85);
          v84.i32[3] = 0;
          v86 = v28;
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v84, v86);
          a9->n128_u32[2] = v27.u32[2];
          a9[1].n128_u32[2] = v87.u32[2];
          a9->n128_u64[0] = v27.i64[0];
          a9[1].n128_u64[0] = v87.i64[0];
          v88 = v32++;
          v104 = v32;
          v89 = memptr + 32 * v88;
          *v89 = v29.i64[0];
          *(v89 + 2) = v29.i32[2];
          *(v89 + 3) = j;
          *(v89 + 2) = v28.i64[0];
          *(v89 + 6) = v28.i32[2];
          *(v89 + 7) = v64;
        }

        v66 += 3;
      }

      v31 = *a2;
      v30 = a2[1];
    }

    ++v64;
  }

  while (v64 < (v30 - v31) >> 3);
LABEL_43:
  v90 = *(a1 + 12);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      operator new();
    }

    if (v90 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v90)
    {
      operator new();
    }

    if (v90 == 1)
    {
      operator new();
    }
  }

  v103 = 0;
  v91 = sub_239E05840(0, memptr, v32, v26, &v103, *a9, a9[1]);
  v120 = v91;
  v102 = 0;
  v104 = 0;
  v118[0] = &v102;
  v118[1] = &v104;
  v119 = &v120;
  sub_239E05960(a1);
  v92 = *(a1 + 52);
  if (v92 == 4)
  {
    v93 = 192;
  }

  else
  {
    v93 = 320;
  }

  if (v92 == 4)
  {
    v94 = 192;
  }

  else
  {
    v94 = 384;
  }

  v95 = v93 * HIDWORD(v102);
  v96 = v93 * HIDWORD(v102) + v94 * v104;
  v118[0] = 0;
  if (v96)
  {
    malloc_type_posix_memalign(v118, 0x40uLL, v96, 0x9CCB6776uLL);
    v97 = v118[0];
    if (!v118[0])
    {
      v100 = 0;
      goto LABEL_67;
    }

    v92 = *(a1 + 52);
  }

  else
  {
    v97 = 0;
  }

  v98 = v97 + v95;
  if (v92 == 4)
  {
    v99 = sub_239E09514(a1, v91, memptr, v97, v98, &v106);
  }

  else
  {
    v99 = sub_239E095D8(a1, v91, memptr, v97, v98, &v106);
  }

  v100 = v99;
LABEL_67:
  free(memptr);
  free(v91);
  if (__p)
  {
    v116 = __p;
    operator delete(__p);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  return v100;
}

void sub_239E09480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  MEMORY[0x23EE7D780](v20, 0x1091C4093A1021FLL);
  sub_239DFDEDC(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_239E09514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a3;
  v18 = a2;
  v16 = a4 + 192;
  v15 = a5;
  v6 = *(a2 + 28);
  if (v6 <= 0)
  {
    v12 = &v18;
    v13 = &v16;
    v7 = a5 | ((3 - v6) >> 2) | 0x10;
    v14 = &v15;
    v9 = &v18;
    v10 = &v17;
    v11 = a6;
    a4 = a5;
  }

  else
  {
    v7 = a4;
    v12 = &v18;
    v13 = &v16;
    v14 = &v15;
    v9 = &v18;
    v10 = &v17;
    v11 = a6;
  }

  sub_239E16338(a1, a2, 0, a4, &v12, &v9);
  return v7;
}

uint64_t sub_239E095D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = a3;
  v18 = a2;
  v16 = a4 + 320;
  v15 = a5;
  v6 = *(a2 + 28);
  if (v6 <= 0)
  {
    v12 = &v18;
    v13 = &v16;
    v7 = a5 | ((7 - v6) >> 3) | 0x10;
    v14 = &v15;
    v9 = &v18;
    v10 = &v17;
    v11 = a6;
    a4 = a5;
  }

  else
  {
    v7 = a4;
    v12 = &v18;
    v13 = &v16;
    v14 = &v15;
    v9 = &v18;
    v10 = &v17;
    v11 = a6;
  }

  sub_239E167C4(a1, a2, 0, a4, &v12, &v9);
  return v7;
}

void sub_239E0969C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, float32x4_t *a7)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_239E09C24(__p, a5);
    if (a5)
    {
      v12 = a2 + 32;
      v13 = 32;
      v14 = a5;
      do
      {
        v61 = __invert_f4(*(v12 - 32));
        *(__p[0] + v13 - 32) = v61;
        v13 += 64;
        v12 += 64;
        --v14;
      }

      while (v14);
    }
  }

  memptr = 0;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v15, 0x1000040E0EAB150uLL);
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  *a7 = vnegq_f32(v20);
  a7[1] = v20;
  if (a2)
  {
    if (a5)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        objc_msgSend_boundingBox(*(a4 + 8 * v22), v16, v17, v18, v19);
        if ((vmovn_s32(vcgtq_f32(v23, v24)).u8[0] & 1) == 0 && v24.f32[1] >= v23.f32[1] && v24.f32[2] >= v23.f32[2])
        {
          v26 = 0;
          v27.i64[0] = 0x7F0000007FLL;
          v27.i64[1] = 0x7F0000007FLL;
          v28 = vnegq_f32(v27);
          do
          {
            v29 = v28;
            v30 = v27;
            if (v26)
            {
              v31 = v23.f32[0];
            }

            else
            {
              v31 = v24.f32[0];
            }

            if ((v26 & 2) != 0)
            {
              v32 = v23.f32[1];
            }

            else
            {
              v32 = v24.f32[1];
            }

            if (v26 >= 4)
            {
              v33 = v23.f32[2];
            }

            else
            {
              v33 = v24.f32[2];
            }

            v34 = vaddq_f32(*(a2 + (v22 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (v22 << 6)), v31), *(a2 + (v22 << 6) + 16), v32), *(a2 + (v22 << 6) + 32), v33));
            v35 = v29;
            v35.i32[3] = 0;
            v34.i32[3] = 0;
            v36 = vminnmq_f32(v35, v34);
            v28 = v36;
            v28.i32[3] = v29.i32[3];
            v37 = v30;
            v37.i32[3] = 0;
            v38 = vmaxnmq_f32(v37, v34);
            v27 = v38;
            v27.i32[3] = v30.i32[3];
            ++v26;
          }

          while (v26 != 8);
          v39 = *a7;
          v40 = a7[1];
          v39.i32[3] = 0;
          v28.i32[3] = 0;
          v41 = vminnmq_f32(v39, v28);
          v40.i32[3] = 0;
          v27.i32[3] = 0;
          v42 = vmaxnmq_f32(v40, v27);
          a7->i32[2] = v41.i32[2];
          a7[1].i32[2] = v42.i32[2];
          a7->i64[0] = v41.i64[0];
          a7[1].i64[0] = v42.i64[0];
          v43 = v21++;
          v44 = memptr + 32 * v43;
          *v44 = v36.i64[0];
          *(v44 + 2) = v36.i32[2];
          *(v44 + 3) = v22;
          *(v44 + 2) = v38.i64[0];
          *(v44 + 6) = v38.i32[2];
          *(v44 + 7) = 0;
        }

        ++v22;
      }

      while (v22 != a5);
    }
  }

  else if (a5)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      objc_msgSend_boundingBox(*(a4 + 8 * v46), v16, v17, v18, v19);
      v49 = vcgt_f32(*v47.f32, *v48.f32);
      if ((v49.i8[0] & 1) == 0 && (v49.i8[4] & 1) == 0 && v48.f32[2] >= v47.f32[2])
      {
        v50 = *a7;
        v51 = a7[1];
        v50.i32[3] = 0;
        v52 = v47;
        v52.i32[3] = 0;
        v53 = vminnmq_f32(v50, v52);
        v51.i32[3] = 0;
        v54 = v48;
        v54.i32[3] = 0;
        a7->i32[2] = v53.i32[2];
        v55 = vmaxnmq_f32(v51, v54);
        a7->i64[0] = v53.i64[0];
        a7[1].i32[2] = v55.i32[2];
        a7[1].i64[0] = v55.i64[0];
        v56 = v45++;
        v57 = memptr + 32 * v56;
        *v57 = v47.i64[0];
        *(v57 + 2) = v47.i32[2];
        *(v57 + 3) = v46;
        *(v57 + 2) = v48.i64[0];
        *(v57 + 6) = v48.i32[2];
        *(v57 + 7) = 0;
      }

      ++v46;
    }

    while (a5 != v46);
  }

  v58 = *(a1 + 12);
  if (v58 != 1)
  {
    if (!v58)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E09BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_239E09C24(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    sub_239E16C78(a1, a2 - v2);
  }
}

uint64_t sub_239E09C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a2;
  v18 = a7;
  v19 = a6;
  v17 = a4 + 192;
  v16 = a5;
  if (*(a2 + 28) <= 0)
  {
    v7 = a5 | 0x20;
    v13 = &v21;
    v14 = &v17;
    v15 = &v16;
    v9 = &v21;
    v10 = &v20;
    v11 = &v18;
    v12 = &v19;
    a4 = a5;
  }

  else
  {
    v7 = a4;
    v13 = &v21;
    v14 = &v17;
    v15 = &v16;
    v9 = &v21;
    v10 = &v20;
    v11 = &v18;
    v12 = &v19;
  }

  sub_239E16DD4(a1, a2, 0, a4, &v13, &v9);
  return v7;
}

uint64_t sub_239E09D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a2;
  v18 = a7;
  v19 = a6;
  v17 = a4 + 320;
  v16 = a5;
  if (*(a2 + 28) <= 0)
  {
    v7 = a5 | 0x20;
    v13 = &v21;
    v14 = &v17;
    v15 = &v16;
    v9 = &v21;
    v10 = &v20;
    v11 = &v18;
    v12 = &v19;
    a4 = a5;
  }

  else
  {
    v7 = a4;
    v13 = &v21;
    v14 = &v17;
    v15 = &v16;
    v9 = &v21;
    v10 = &v20;
    v11 = &v18;
    v12 = &v19;
  }

  sub_239E1714C(a1, a2, 0, a4, &v13, &v9);
  return v7;
}

uint64_t sub_239E09DE4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  v24 = a6;
  v22 = 0;
  v23 = 2;
  v20 = a7;
  v21 = a6;
  v18 = a9;
  v19 = a8;
  v9 = a2[7] > 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *(a4 + 16) = *a2;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  *(a4 + 40) = v12;
  *(a4 + 48) = v13;
  *(a4 + 56) = v14;
  *a4 = v9;
  v17[0] = &v28;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = &v26;
  v17[4] = &v23;
  v17[5] = &v22;
  v16[0] = &v28;
  v16[1] = &v19;
  v16[2] = &v18;
  v16[3] = &v25;
  v16[4] = &v21;
  v16[5] = &v24;
  v16[6] = &v27;
  v16[7] = &v20;
  return sub_239E09EC0(a1, a2, v9 << 32, 0x100000000, v17, v16);
}

uint64_t sub_239E09EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v14 = &v41[-2 * v13];
  v41[0] = v14;
  while (1)
  {
    if (*(a2 + 32 * v11 + 28) < 1)
    {
      v15 = *a6;
      v16 = *(a6 + 8);
      v17 = *v16;
      *v17 = HIDWORD(v12);
      v18 = *v15;
      *v16 = v17 + 1;
      v19 = *(a6 + 16);
      v20 = *v19;
      *v20 = -HIDWORD(v11);
      v21 = v18 + 32 * v11;
      *v19 = v20 + 1;
      v22 = (**(a6 + 24) + 16 * (v11 >> 32));
      LODWORD(v20) = *(v21 + 28);
      v23 = -v20;
      v24 = (**(a6 + 32) - **(a6 + 40)) >> 2;
      *v22 = v23;
      v22[1] = v24;
      v22[2] = v12;
      v22[3] = 0;
      if (v20)
      {
        v25 = **(a6 + 48);
        v26 = *(v21 + 12);
        v27 = 32 * v23;
        v28 = v25 + 32 * v26;
        v29 = 32 * v26;
        v30 = (v28 + 12);
        v31 = v27;
        do
        {
          v32 = *v30;
          v30 += 8;
          v33 = *(a6 + 32);
          v34 = *v33;
          *v34 = v32;
          *v33 = v34 + 1;
          v31 -= 32;
        }

        while (v31);
        v35 = (v25 + v29 + 28);
        do
        {
          v36 = *v35;
          v35 += 8;
          v37 = *(a6 + 56);
          v38 = *v37;
          *v38 = v36;
          *v37 = v38 + 1;
          v27 -= 32;
        }

        while (v27);
      }
    }

    else
    {
      result = sub_239E174D4(a5, v11, v12, v41);
    }

    v39 = v41[0];
    if (v41[0] == v14)
    {
      break;
    }

    v41[0] -= 2;
    v11 = *(v39 - 2);
    v12 = *(v39 - 1);
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239E0A06C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v24 = a2;
  v21 = a6;
  v22 = a5;
  v19 = 0;
  v20 = 2;
  v17 = a8;
  v18 = a7;
  v8 = a2[7] > 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *(a5 + 16) = *a2;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  *(a5 + 40) = v11;
  *(a5 + 48) = v12;
  *(a5 + 56) = v13;
  *a5 = v8;
  v16[0] = &v24;
  v16[1] = &v18;
  v16[2] = &v17;
  v16[3] = &v22;
  v16[4] = &v20;
  v16[5] = &v19;
  v15[0] = &v24;
  v15[1] = &v18;
  v15[2] = &v17;
  v15[3] = &v21;
  v15[4] = &v23;
  return sub_239E0A12C(a1, a2, v8 << 32, 0x100000000, v16, v15);
}

uint64_t sub_239E0A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v14 = &v24[-2 * v13];
  v24[0] = v14;
  while (1)
  {
    if (*(a2 + 32 * v11 + 28) < 1)
    {
      v15 = *(a6 + 8);
      v16 = **a6 + 32 * v11;
      v17 = *v15;
      *v17 = HIDWORD(v12);
      *v15 = v17 + 1;
      v18 = *(a6 + 16);
      v19 = *v18;
      *v19 = -HIDWORD(v11);
      *v18 = v19 + 1;
      v20 = *(v16 + 28) ? *(**(a6 + 32) + 32 * *(v16 + 12) + 12) : -1;
      v21 = (**(a6 + 24) + 8 * (v11 >> 32));
      *v21 = v20;
      v21[1] = v12;
    }

    else
    {
      result = sub_239E174D4(a5, v11, v12, v24);
    }

    v22 = v24[0];
    if (v24[0] == v14)
    {
      break;
    }

    v24[0] -= 2;
    v11 = *(v22 - 2);
    v12 = *(v22 - 1);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_239E0A278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  *a1 = &unk_284D08698;
  return result;
}

__n128 sub_239E0A2BC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  *a1 = &unk_284D08698;
  return result;
}

void sub_239E0A310(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8, void *a9, uint64_t a10)
{
  v10 = a3;
  v362 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 32) + 40))
  {
    sub_239E24B58();
  }

  v316 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4, a5);
  v320 = *(a2 + 16);
  v318 = *(a2 + 24);
  if (a10 == 1)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  v355 = 0;
  v354 = 0;
  v356 = 0;
  v352 = 0;
  v351 = 0;
  v353 = 0;
  v349 = 0;
  v348 = 0;
  v350 = 0;
  v346 = 0;
  v345 = 0;
  v347 = 0;
  v327 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0;
  v14 = 0;
  v328 = 0;
  v330 = 0;
  v319 = v12 * a5;
  v321 = v10;
  for (i = objc_msgSend_count(v10, v15, v16, v17, v18); v13 < i; i = objc_msgSend_count(v321, v105, v106, v107, v108))
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v10, v20, v13, v22, v23);
    v28 = objc_msgSend_objectAtIndexedSubscript_(a4, v25, v13, v26, v27);
    v33 = objc_msgSend_unsignedIntegerValue(v28, v29, v30, v31, v32);
    v37 = objc_msgSend_objectAtIndexedSubscript_(a6, v34, v13, v35, v36);
    v38 = v12;
    v42 = objc_msgSend_objectAtIndexedSubscript_(a7, v39, v13, v40, v41);
    v47 = objc_msgSend_unsignedIntegerValue(v42, v43, v44, v45, v46);
    v341[0] = 0;
    v357[0] = 0;
    v51 = objc_msgSend_objectAtIndexedSubscript_(a9, v48, v13, v49, v50);
    v56 = objc_msgSend_unsignedIntegerValue(v51, v52, v53, v54, v55);
    if (objc_msgSend_storageMode(v24, v57, v58, v59, v60) == 2)
    {
      v67 = objc_msgSend_length(v24, v61, v62, v63, v64) - v33;
      if (v37)
      {
        v68 = v67;
        v69 = objc_msgSend_newBufferWithLength_options_(v320, v65, v67, 0, v66);
      }

      else
      {
        v68 = v319 * v56;
        v69 = objc_msgSend_newBufferWithLength_options_(v320, v65, v319 * v56, 0, v66);
      }

      v74 = v69;
      if (!v330)
      {
        v330 = objc_msgSend_commandBuffer(v318, v70, v71, v72, v73);
        v328 = objc_msgSend_blitCommandEncoder(v330, v75, v76, v77, v78);
      }

      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v328, v70, v24, v33, v74, 0, v68);
      v83 = objc_msgSend_contents(v74, v79, v80, v81, v82);
    }

    else
    {
      v74 = 0;
      v83 = (objc_msgSend_contents(v24, v61, v62, v63, v64) + v33);
    }

    v341[0] = v83;
    if (v37)
    {
      if (objc_msgSend_storageMode(v37, v84, v85, v86, v87) == 2)
      {
        v96 = objc_msgSend_newBufferWithLength_options_(v320, v88, 4 * v56 * v38, 0, v91);
        if (!v330)
        {
          v330 = objc_msgSend_commandBuffer(v318, v92, v93, v94, v95);
          v328 = objc_msgSend_blitCommandEncoder(v330, v97, v98, v99, v100);
        }

        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v328, v92, v37, v47, v96, 0, 4 * v56 * v38);
        v357[0] = objc_msgSend_contents(v96, v101, v102, v103, v104);
      }

      else
      {
        v96 = 0;
        v357[0] = (objc_msgSend_contents(v37, v88, v89, v90, v91) + v47);
      }
    }

    else
    {
      v96 = 0;
    }

    sub_239DEDD74(&v354, v341);
    LODWORD(__p[0]) = a5;
    sub_239DEDE48(&v351, __p);
    sub_239DEDD74(&v348, v357);
    LODWORD(__p[0]) = a8;
    sub_239DEDE48(&v345, __p);
    if (v74)
    {
      objc_msgSend_addObject_(v327, v105, v74, v107, v108);
    }

    if (v96)
    {
      objc_msgSend_addObject_(v327, v105, v96, v107, v108);
    }

    v14 += v56 * v38;
    v12 = v38;
    ++v13;
    v10 = v321;
  }

  if (v330)
  {
    objc_msgSend_endEncoding(v328, v20, v21, v22, v23);
    objc_msgSend_commit(v330, v109, v110, v111, v112);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v330, v113, v114, v115, v116);
    kdebug_trace();
  }

  memset(v341, 0, sizeof(v341));
  sub_239E15CC0(v341, v354, v355, (v355 - v354) >> 3);
  memset(v342, 0, sizeof(v342));
  sub_239E15D78(v342, v351, v352, (v352 - v351) >> 2);
  memset(v343, 0, sizeof(v343));
  sub_239E15CC0(v343, v348, v349, (v349 - v348) >> 3);
  memset(v344, 0, sizeof(v344));
  sub_239E15D78(v344, v345, v346, (v346 - v345) >> 2);
  v121 = objc_msgSend_date(MEMORY[0x277CBEAA8], v117, v118, v119, v120);
  kdebug_trace();
  v122 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v122 = 2.0;
  }

  v123 = (v122 * (v14 / v12));
  memptr = 0;
  v124 = 32 * v123;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v123, 0x1000040E0EAB150uLL);
  v339 = 0;
  if (a10)
  {
    v129 = 0;
    v130.i64[0] = 0x7F0000007FLL;
    v130.i64[1] = 0x7F0000007FLL;
    v131.n128_u64[0] = 0x7F0000007FLL;
    v131.n128_u64[1] = 0x7F0000007FLL;
    v329 = vnegq_f32(v130);
    v331 = v131;
    while (v129 < objc_msgSend_count(v10, v125, v126, v127, v128))
    {
      v135 = objc_msgSend_objectAtIndexedSubscript_(a9, v132, v129, v133, v134);
      v140 = objc_msgSend_unsignedIntegerValue(v135, v136, v137, v138, v139);
      if (v140)
      {
        v144 = 0;
        v145 = 1;
        do
        {
          v146 = v144 + 1;
          v147 = v144 + 2;
          v148 = v144 + 3;
          v149 = *(v343[0] + v129);
          if (v149)
          {
            if (*(v344[0] + v129) == 4)
            {
              v150 = *(v149 + 4 * v144);
              v146 = *(v149 + 4 * v146);
              v147 = *(v149 + 4 * v147);
              v148 = *(v149 + 4 * v148);
            }

            else
            {
              v150 = *(v149 + 2 * v144);
              v146 = *(v149 + 2 * v146);
              v147 = *(v149 + 2 * v147);
              v148 = *(v149 + 2 * v148);
            }
          }

          else
          {
            v150 = v144;
          }

          v151 = *(v341[0] + v129);
          v152 = *(v342[0] + v129);
          v153 = v151 + v152 * v150;
          v141.i64[0] = *v153;
          v141.i32[2] = *(v153 + 8);
          v154 = v151 + v152 * v146;
          v143.i64[0] = *v154;
          v143.i32[2] = *(v154 + 8);
          v155 = v151 + v152 * v147;
          v142.i64[0] = *v155;
          v142.i32[2] = *(v155 + 8);
          v156 = vsubq_f32(v143, v141);
          v157 = vsubq_f32(v142, v141);
          v158 = vmlaq_f32(vnegq_f32(vmulq_f32(v156, vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL))), v157, vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL));
          v159 = vmulq_f32(v158, v158);
          if (sqrtf(v159.f32[1] + (v159.f32[2] + v159.f32[0])) != 0.0)
          {
            v160 = v151 + v152 * v148;
            v161.i64[0] = *v160;
            v141.i32[3] = 0;
            v143.i32[3] = 0;
            v162 = vminnmq_f32(v141, v143);
            v163 = vmaxnmq_f32(v141, v143);
            v162.i32[3] = 0;
            v142.i32[3] = 0;
            v164 = vminnmq_f32(v162, v142);
            v163.i32[3] = 0;
            v164.i32[3] = 0;
            v165 = vmaxnmq_f32(v163, v142);
            v161.i64[1] = *(v160 + 8);
            v166 = vminnmq_f32(v164, v161);
            v165.i32[3] = 0;
            v167 = vmaxnmq_f32(v165, v161);
            v168 = v329;
            v168.i32[3] = 0;
            v169 = v339++;
            v170 = memptr + 32 * v169;
            *(v170 + 2) = v166.i32[2];
            *v170 = v166.i64[0];
            v166.i32[3] = 0;
            v142 = vminnmq_f32(v168, v166);
            v143 = v331;
            v143.i32[3] = 0;
            *(v170 + 2) = v167.i64[0];
            *(v170 + 6) = v167.i32[2];
            v167.i32[3] = 0;
            v141 = vmaxnmq_f32(v143, v167);
            v142.i32[3] = v329.n128_i32[3];
            v141.i32[3] = v331.n128_i32[3];
            *(v170 + 3) = v145 - 1;
            *(v170 + 7) = v129;
            v329 = v142;
            v331 = v141;
          }

          v171 = v140 > v145++;
          v144 += 4;
        }

        while (v171);
      }

      ++v129;
    }
  }

  else
  {
    v172 = 0;
    v173.i64[0] = 0x7F0000007FLL;
    v173.i64[1] = 0x7F0000007FLL;
    v174.n128_u64[0] = 0x7F0000007FLL;
    v174.n128_u64[1] = 0x7F0000007FLL;
    v329 = vnegq_f32(v173);
    v331 = v174;
    while (v172 < objc_msgSend_count(v10, v125, v126, v127, v128))
    {
      v178 = objc_msgSend_objectAtIndexedSubscript_(a9, v175, v172, v176, v177);
      v183 = objc_msgSend_unsignedIntegerValue(v178, v179, v180, v181, v182);
      if (v183)
      {
        v187 = 0;
        v188 = 1;
        do
        {
          v189 = v187 + 1;
          v190 = v187 + 2;
          v191 = *(v343[0] + v172);
          if (v191)
          {
            if (*(v344[0] + v172) == 4)
            {
              v192 = *(v191 + 4 * v187);
              v189 = *(v191 + 4 * v189);
              v190 = *(v191 + 4 * v190);
            }

            else
            {
              v192 = *(v191 + 2 * v187);
              v189 = *(v191 + 2 * v189);
              v190 = *(v191 + 2 * v190);
            }
          }

          else
          {
            v192 = v187;
          }

          v193 = *(v341[0] + v172);
          v194 = *(v342[0] + v172);
          v195 = v193 + v194 * v192;
          v184.i64[0] = *v195;
          v184.i32[2] = *(v195 + 8);
          v196 = v193 + v194 * v189;
          v185.i64[0] = *v196;
          v185.i32[2] = *(v196 + 8);
          v197 = v193 + v194 * v190;
          v186.i64[0] = *v197;
          v186.i32[2] = *(v197 + 8);
          v198 = vsubq_f32(v185, v184);
          v199 = vsubq_f32(v186, v184);
          v200 = vmlaq_f32(vnegq_f32(vmulq_f32(v198, vextq_s8(vuzp1q_s32(v199, v199), v199, 0xCuLL))), v199, vextq_s8(vuzp1q_s32(v198, v198), v198, 0xCuLL));
          v201 = vmulq_f32(v200, v200);
          if (sqrtf(v201.f32[1] + (v201.f32[2] + v201.f32[0])) != 0.0)
          {
            v184.i32[3] = 0;
            v185.i32[3] = 0;
            v202 = vminnmq_f32(v184, v185);
            v202.i32[3] = 0;
            v203 = vmaxnmq_f32(v184, v185);
            v186.i32[3] = 0;
            v204 = vminnmq_f32(v202, v186);
            v203.i32[3] = 0;
            v205 = vmaxnmq_f32(v203, v186);
            v206 = v329;
            v206.i32[3] = 0;
            v207 = v339++;
            v208 = memptr + 32 * v207;
            *(v208 + 2) = v204.i32[2];
            *v208 = v204.i64[0];
            v204.i32[3] = 0;
            v185 = vminnmq_f32(v206, v204);
            v186 = v331;
            v186.i32[3] = 0;
            *(v208 + 2) = v205.i64[0];
            *(v208 + 6) = v205.i32[2];
            v205.i32[3] = 0;
            v184 = vmaxnmq_f32(v186, v205);
            v185.i32[3] = v329.n128_i32[3];
            v184.i32[3] = v331.n128_i32[3];
            *(v208 + 3) = v188 - 1;
            *(v208 + 7) = v172;
            v329 = v185;
            v331 = v184;
          }

          v171 = v183 > v188++;
          v187 += 3;
        }

        while (v171);
      }

      ++v172;
    }
  }

  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v121, v209, v210, v211, v212);
  v213 = sub_239E05F90();
  v214 = *(a1 + 12);
  if (v214 > 1)
  {
    if (v214 == 2)
    {
      operator new();
    }

    if (v214 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v214)
    {
      operator new();
    }

    if (v214 == 1)
    {
      operator new();
    }
  }

  dispatch_release(v213);
  v219 = objc_msgSend_date(MEMORY[0x277CBEAA8], v215, v216, v217, v218);
  kdebug_trace();
  v338 = 0;
  v220 = sub_239E05840(0, memptr, v339, v123, &v338, v329, v331);
  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v219, v221, v222, v223, v224);
  if (*(a1 + 8) == 1)
  {
    v229 = objc_msgSend_date(MEMORY[0x277CBEAA8], v225, v226, v227, v228);
    v234 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v230, v231, v232, v233);
    v235 = *(a1 + 24);
    *v357 = *(a1 + 8);
    v358 = v235;
    v359 = *(a1 + 40);
    v360 = *(a1 + 56);
    sub_239DFA254(a1, v357, v220, v234);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v236, @"CPU", @"BVH Builder", v237);
    v241 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v238, @"{ %f, %f, %f }, { %f, %f, %f }", v239, v240, v329.n128_f32[0], v329.n128_f32[1], v329.n128_f32[2], v331.n128_f32[0], v331.n128_f32[1], v331.n128_f32[2], v316);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v242, v241, @"Bounds", v243);
    if (*(v220 + 7) >= 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v234, v244, @"Internal", @"BVH Root Node Type", v245);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v234, v244, @"Leaf", @"BVH Root Node Type", v245);
    }

    v250 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v246, v247, v248, v249);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v251, v250, @"Temporary Memory", v252);
    v257 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v253, v254, v255, v256, vcvtd_n_f64_u64(v124, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v250, v258, v257, @"Fragments (mb)", v259);
    v264 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v260, v261, v262, v263, vcvtd_n_f64_u64(32 * v338, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v250, v265, v264, @"Nodes (mb)", v266);
    v336 = 0u;
    v337 = 0u;
    v334 = 0u;
    v335 = 0u;
    v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v267, &v334, v361, 16);
    if (v272)
    {
      v273 = *v335;
      v274 = 0.0;
      do
      {
        for (j = 0; j != v272; ++j)
        {
          if (*v335 != v273)
          {
            objc_enumerationMutation(v250);
          }

          v276 = objc_msgSend_objectForKeyedSubscript_(v250, v268, *(*(&v334 + 1) + 8 * j), v270, v271);
          objc_msgSend_doubleValue(v276, v277, v278, v279, v280);
          v274 = v274 + v281;
        }

        v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v268, &v334, v361, 16);
      }

      while (v272);
    }

    else
    {
      v274 = 0.0;
    }

    v282 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v268, v269, v270, v271, v274);
    objc_msgSend_setObject_forKeyedSubscript_(v250, v283, v282, @"Total (mb)", v284);
    objc_msgSend_timeIntervalSinceNow(v229, v285, v286, v287, v288);
  }

  v289 = objc_msgSend_date(MEMORY[0x277CBEAA8], v225, v226, v227, v228);
  __p[0] = v220;
  v333 = 0;
  v339 = 0;
  v357[0] = &v333;
  v357[1] = &v339;
  *&v358 = __p;
  sub_239E05960(a1);
  objc_msgSend_timeIntervalSinceNow(v289, v290, v291, v292, v293);
  v294 = getpagesize();
  v295 = -v294;
  v296 = mmap(0, (v294 + (HIDWORD(v333) << 6) + 63) & -v294, 3, 4098, -1, 0);
  if (v296 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v297 = v294 - 1;
  v298 = mmap(0, (v294 - 1 + 16 * v333) & v295, 3, 4098, -1, 0);
  if (v298 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v297 + 4 * v339) & v295) != 0)
  {
    v299 = (v297 + 4 * v339) & v295;
  }

  else
  {
    v299 = v294;
  }

  v300 = mmap(0, v299, 3, 4098, -1, 0);
  if (v300 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v305 = mmap(0, v299, 3, 4098, -1, 0);
  if (v305 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v306 = objc_msgSend_date(MEMORY[0x277CBEAA8], v301, v302, v303, v304);
  v357[1] = 0;
  v357[0] = 0;
  *&v358 = 0;
  memset(__p, 0, sizeof(__p));
  sub_239E04F58(v357, (v333 + HIDWORD(v333)));
  sub_239E04F58(__p, (v333 + HIDWORD(v333)));
  sub_239E09DE4(a1, v220, memptr, v296, v298, v300, v305, v357[0], __p[0]);
  v307 = *(v220 + 7);
  objc_msgSend_timeIntervalSinceNow(v306, v308, v309, v310, v311);
  free(memptr);
  objc_msgSend_date(MEMORY[0x277CBEAA8], v312, v313, v314, v315);
  kdebug_trace();
  operator new();
}

uint64_t sub_239E0BA7C(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 168);
  v3 = *(a1 + 48);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v4, 0, v5, v6);
  sub_239E006FC(v3, v2, v7, *(*(a1 + 64) + 32), v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 168);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 32) + 24), v11, 1, v12, v13);
  sub_239E006FC(v9, v10, v14, *(*(a1 + 64) + 32), v15);
  v16 = *(a1 + 80);
  v17 = *(a1 + 172);
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v18, 0, v19, v20);
  sub_239E006FC(v16, v17, v21, *(*(a1 + 88) + 32), v22);
  v23 = *(a1 + 96);
  v24 = *(a1 + 176);
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v25, 0, v26, v27);
  sub_239E006FC(v23, v24, v28, *(*(a1 + 104) + 32), v29);
  v30 = *(a1 + 112);
  v31 = (*(*(a1 + 120) + 8) - **(a1 + 120));
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v32, 0, v33, v34);
  sub_239E006FC(v30, v31, v35, *(*(a1 + 128) + 32), v36);
  v37 = *(a1 + 136);
  v38 = (*(*(a1 + 120) + 32) - *(*(a1 + 120) + 24));
  v42 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v39, 0, v40, v41);
  sub_239E006FC(v37, v38, v42, *(*(a1 + 144) + 32), v43);
  v44 = *(a1 + 152);
  v45 = (*(*(a1 + 120) + 56) - *(*(a1 + 120) + 48));
  v49 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v46, 0, v47, v48);
  sub_239E006FC(v44, v45, v49, *(*(a1 + 160) + 32), v50);
  objc_msgSend_setSignaledValue_(*(a1 + 32), v51, 2, v52, v53);
  munmap(*(a1 + 80), *(a1 + 172));
  munmap(*(a1 + 96), *(a1 + 176));
  munmap(*(a1 + 48), *(a1 + 168));
  munmap(*(a1 + 72), *(a1 + 168));
  v54 = *(a1 + 120);
  if (v54)
  {
    v55 = *(v54 + 48);
    if (v55)
    {
      *(v54 + 56) = v55;
      operator delete(v55);
    }

    v56 = *(v54 + 24);
    if (v56)
    {
      *(v54 + 32) = v56;
      operator delete(v56);
    }

    v57 = *v54;
    if (*v54)
    {
      *(v54 + 8) = v57;
      operator delete(v57);
    }

    MEMORY[0x23EE7D780](v54, 0x10C40E523AF1CLL);
  }

  v58 = *(a1 + 56);
  add = atomic_fetch_add(v58 + 2, 0xFFFFFFFF);
  if (v58 && add == 1)
  {
    (*(*v58 + 8))(v58);
  }

  sub_239E18C24(*(a1 + 88));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 128));
  sub_239E18C24(*(a1 + 144));
  sub_239E18C24(*(a1 + 160));
  sub_239E18C24(*(a1 + 64));

  return kdebug_trace();
}

void sub_239E0BD74(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, unint64_t a8, void *a9)
{
  v155 = *MEMORY[0x277D85DE8];
  if (*(a2[4] + 40))
  {
    sub_239E24BA4();
  }

  v16 = a2[2];
  v140 = a2[3];
  kdebug_trace();
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (!a5)
  {
    if (objc_msgSend_storageMode(a3, v17, v18, v19, v20) == 2)
    {
      v28 = objc_msgSend_newBufferWithLength_options_(v16, v24, a8 << 6, 0, v27);
      v23 = objc_msgSend_commandBuffer(v140, v29, v30, v31, v32);
      v22 = objc_msgSend_blitCommandEncoder(v23, v33, v34, v35, v36);
      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22, v37, a3, a4, v28, 0, a8 << 6);
      v21 = objc_msgSend_contents(v28, v38, v39, v40, v41);
    }

    else
    {
      v22 = 0;
      v23 = 0;
      v21 = objc_msgSend_contents(a3, v24, v25, v26, v27) + a4;
    }
  }

  v138 = v16;
  if (objc_msgSend_storageMode(a6, v17, v18, v19, v20) == 2)
  {
    v50 = objc_msgSend_newBufferWithLength_options_(v16, v42, 4 * a8, 0, v45);
    if (!v23)
    {
      v23 = objc_msgSend_commandBuffer(v140, v46, v47, v48, v49);
      v22 = objc_msgSend_blitCommandEncoder(v23, v51, v52, v53, v54);
    }

    objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v22, v46, a6, a7, v50, 0, 4 * a8);
    v63 = objc_msgSend_contents(v50, v55, v56, v57, v58);
  }

  else
  {
    v63 = objc_msgSend_contents(a6, v42, v43, v44, v45) + a7;
  }

  if (v23)
  {
    objc_msgSend_endEncoding(v22, v59, v60, v61, v62);
    objc_msgSend_commit(v23, v64, v65, v66, v67);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v23, v68, v69, v70, v71);
    kdebug_trace();
  }

  kdebug_trace();
  kdebug_trace();
  if (v21)
  {
    v74 = a8 <= 1 ? 1 : a8;
    v75 = objc_msgSend_newBufferWithLength_options_(v138, v72, v74 << 6, 0, v73);
    v80 = objc_msgSend_contents(v75, v76, v77, v78, v79);
    if (a8)
    {
      v81 = v21 + 32;
      v82 = v80 + 32;
      v83 = a8;
      do
      {
        *(v82 - 32) = __invert_f4(*(v81 - 32));
        v82 += 64;
        v81 += 64;
        --v83;
      }

      while (v83);
    }
  }

  memset(v151, 0, sizeof(v151));
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v72, &v147, v154, 16);
  if (v88)
  {
    v89 = *v148;
    do
    {
      for (i = 0; i != v88; ++i)
      {
        if (*v148 != v89)
        {
          objc_enumerationMutation(a9);
        }

        objc_msgSend_boundingBox(*(*(&v147 + 1) + 8 * i), v84, v85, v86, v87);
        LODWORD(v152[1]) = v91;
        v153 = v92;
        v152[0] = v93;
        v152[2] = v94;
        sub_239E08920(v151, v152);
      }

      v88 = objc_msgSend_countByEnumeratingWithState_objects_count_(a9, v84, &v147, v154, 16);
    }

    while (v88);
  }

  memptr = 0;
  if (a8 <= 1)
  {
    v95 = 1;
  }

  else
  {
    v95 = a8;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v95, 0x1000040E0EAB150uLL);
  v145 = 0;
  if (v21)
  {
    if (a8)
    {
      v96 = 0;
      v97.i64[0] = 0x7F0000007FLL;
      v97.i64[1] = 0x7F0000007FLL;
      v98.i64[0] = 0x7F0000007FLL;
      v98.i64[1] = 0x7F0000007FLL;
      v141 = vnegq_f32(v97);
      v143 = v98;
      do
      {
        v99 = (v151[0] + 32 * *(v63 + 4 * v96));
        v100 = *v99;
        v101 = v99[1];
        if ((vmovn_s32(vcgtq_f32(*v99, v101)).u8[0] & 1) == 0 && v101.f32[1] >= v100.f32[1] && v101.f32[2] >= v100.f32[2])
        {
          v103 = 0;
          v104.i64[0] = 0x7F0000007FLL;
          v104.i64[1] = 0x7F0000007FLL;
          v105 = vnegq_f32(v104);
          do
          {
            v106 = v105;
            v107 = v104;
            if (v103)
            {
              v108 = v100.f32[0];
            }

            else
            {
              v108 = v101.f32[0];
            }

            if ((v103 & 2) != 0)
            {
              v109 = v100.f32[1];
            }

            else
            {
              v109 = v101.f32[1];
            }

            if (v103 >= 4)
            {
              v110 = v100.f32[2];
            }

            else
            {
              v110 = v101.f32[2];
            }

            v111 = vaddq_f32(*(v21 + (v96 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(v21 + (v96 << 6)), v108), *(v21 + (v96 << 6) + 16), v109), *(v21 + (v96 << 6) + 32), v110));
            v112 = v106;
            v112.i32[3] = 0;
            v111.i32[3] = 0;
            v113 = vminnmq_f32(v112, v111);
            v105 = v113;
            v105.i32[3] = v106.i32[3];
            v114 = v107;
            v114.i32[3] = 0;
            v115 = vmaxnmq_f32(v114, v111);
            v104 = v115;
            v104.i32[3] = v107.i32[3];
            ++v103;
          }

          while (v103 != 8);
          v116 = v141;
          v116.i32[3] = 0;
          v105.i32[3] = 0;
          v117 = v143;
          v117.i32[3] = 0;
          v104.i32[3] = 0;
          v118 = vminnmq_f32(v116, v105);
          v119 = vmaxnmq_f32(v117, v104);
          v118.i32[3] = v141.i32[3];
          v119.i32[3] = v143.i32[3];
          v120 = v145++;
          v121 = memptr + 32 * v120;
          *v121 = v113.i64[0];
          *(v121 + 2) = v113.i32[2];
          *(v121 + 3) = v96;
          *(v121 + 2) = v115.i64[0];
          *(v121 + 6) = v115.i32[2];
          *(v121 + 7) = 0;
          v141 = v118;
          v143 = v119;
        }

        ++v96;
      }

      while (v96 != a8);
    }
  }

  else if (a8)
  {
    v122 = 0;
    v123.i64[0] = 0x7F0000007FLL;
    v123.i64[1] = 0x7F0000007FLL;
    v124.i64[0] = 0x7F0000007FLL;
    v124.i64[1] = 0x7F0000007FLL;
    v142 = vnegq_f32(v123);
    v144 = v124;
    do
    {
      v125 = v151[0] + 32 * *(v63 + 4 * v122);
      v127 = *v125;
      v126 = *(v125 + 1);
      v128 = vcgt_f32(*v125, *&v126);
      if ((v128.i8[0] & 1) == 0 && (v128.i8[4] & 1) == 0 && *(&v126 + 2) >= *(&v127 + 2))
      {
        v129 = v142;
        v129.i32[3] = 0;
        v130 = *v125;
        v130.i32[3] = 0;
        v131 = vminnmq_f32(v129, v130);
        v132 = v144;
        v132.i32[3] = 0;
        v133 = *(v125 + 1);
        v133.i32[3] = 0;
        v134 = vmaxnmq_f32(v132, v133);
        v131.i32[3] = v142.i32[3];
        v134.i32[3] = v144.i32[3];
        v135 = v145++;
        v136 = memptr + 32 * v135;
        *v136 = v127;
        *(v136 + 2) = DWORD2(v127);
        *(v136 + 3) = v122;
        *(v136 + 2) = v126;
        *(v136 + 6) = DWORD2(v126);
        *(v136 + 7) = 0;
        v142 = v131;
        v144 = v134;
      }

      ++v122;
    }

    while (a8 != v122);
  }

  kdebug_trace();
  sub_239E05F90();
  v137 = *(a1 + 12);
  if (v137)
  {
    if (v137 == 1)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_239E0CC58(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 144);
  v3 = *(a1 + 48);
  v7 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 40) + 24), v4, 0, v5, v6);
  sub_239E006FC(v3, v2, v7, *(*(a1 + 64) + 32), v8);
  v9 = *(a1 + 72);
  v10 = *(a1 + 148);
  v14 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 48) + 24), v11, 0, v12, v13);
  sub_239E006FC(v9, v10, v14, *(*(a1 + 80) + 32), v15);
  v16 = *(a1 + 88);
  v17 = (*(*(a1 + 96) + 8) - **(a1 + 96));
  v21 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 56) + 24), v18, 0, v19, v20);
  sub_239E006FC(v16, v17, v21, *(*(a1 + 104) + 32), v22);
  v23 = *(a1 + 112);
  v24 = (*(*(a1 + 96) + 32) - *(*(a1 + 96) + 24));
  v28 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 64) + 24), v25, 0, v26, v27);
  sub_239E006FC(v23, v24, v28, *(*(a1 + 120) + 32), v29);
  v30 = *(a1 + 128);
  v31 = (*(*(a1 + 96) + 56) - *(*(a1 + 96) + 48));
  v35 = objc_msgSend_objectAtIndexedSubscript_(*(*(*(a1 + 56) + 72) + 24), v32, 0, v33, v34);
  sub_239E006FC(v30, v31, v35, *(*(a1 + 136) + 32), v36);
  objc_msgSend_setSignaledValue_(*(a1 + 32), v37, 2, v38, v39);
  munmap(*(a1 + 48), *(a1 + 144));
  munmap(*(a1 + 72), *(a1 + 148));
  v40 = *(a1 + 96);
  if (v40)
  {
    v41 = *(v40 + 48);
    if (v41)
    {
      *(v40 + 56) = v41;
      operator delete(v41);
    }

    v42 = *(v40 + 24);
    if (v42)
    {
      *(v40 + 32) = v42;
      operator delete(v42);
    }

    v43 = *v40;
    if (*v40)
    {
      *(v40 + 8) = v43;
      operator delete(v43);
    }

    MEMORY[0x23EE7D780](v40, 0x10C40E523AF1CLL);
  }

  v44 = *(a1 + 56);
  add = atomic_fetch_add(v44 + 2, 0xFFFFFFFF);
  if (v44 && add == 1)
  {
    (*(*v44 + 8))(v44);
  }

  sub_239E18C24(*(a1 + 64));
  sub_239E18C24(*(a1 + 80));
  sub_239E18C24(*(a1 + 104));
  sub_239E18C24(*(a1 + 120));
  sub_239E18C24(*(a1 + 136));

  return kdebug_trace();
}

uint64_t sub_239E0CEC8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, unsigned int **a6, uint64_t a7, uint64_t a8, __n128 *a9)
{
  if (a7 == 1)
  {
    v16 = 4;
  }

  else
  {
    v16 = 3;
  }

  v17 = *a2;
  v18 = a2[1];
  v20 = (v18 - v17) >> 3;
  v21 = 0;
  if (v18 != v17)
  {
    v22 = *a6;
    if (v20 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = (v18 - v17) >> 3;
    }

    do
    {
      v24 = *v22++;
      v21 += v16 * v24;
      --v23;
    }

    while (v23);
  }

  v106 = 0;
  v107 = 0;
  v108 = 0;
  sub_239E15CC0(&v106, v17, v18, v20);
  v109 = 0;
  v110 = 0;
  v111 = 0;
  sub_239E15D78(&v109, *a3, a3[1], (a3[1] - *a3) >> 2);
  v112 = 0;
  v113 = 0;
  v114 = 0;
  sub_239E15CC0(&v112, *a4, a4[1], (a4[1] - *a4) >> 3);
  __p = 0;
  v116 = 0;
  v117 = 0;
  sub_239E15D78(&__p, *a5, a5[1], (a5[1] - *a5) >> 2);
  v25 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v25 = 2.0;
  }

  v26 = (v25 * (v21 / v16));
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v26, 0x1000040E0EAB150uLL);
  v28.i64[0] = 0x7F0000007FLL;
  v28.i64[1] = 0x7F0000007FLL;
  v29 = vnegq_f32(v28);
  *a9 = v29;
  a9[1] = v28;
  v31 = *a2;
  v30 = a2[1];
  if (a7)
  {
    if (v30 != *a2)
    {
      v32 = 0;
      v33 = 0;
      do
      {
        v34 = (*a6)[v33];
        if (v34)
        {
          v35 = 0;
          for (i = 0; i != v34; ++i)
          {
            v37 = v35 + 1;
            v38 = v35 + 2;
            v39 = v35 + 3;
            v40 = *(v112 + v33);
            if (v40)
            {
              if (*(__p + v33) == 4)
              {
                v41 = *(v40 + 4 * v35);
                v37 = *(v40 + 4 * v37);
                v38 = *(v40 + 4 * v38);
                v39 = *(v40 + 4 * v39);
              }

              else
              {
                v41 = *(v40 + 2 * v35);
                v37 = *(v40 + 2 * v37);
                v38 = *(v40 + 2 * v38);
                v39 = *(v40 + 2 * v39);
              }
            }

            else
            {
              v41 = v35;
            }

            v42 = *(v106 + v33);
            v43 = *(v109 + v33);
            v44 = v42 + v43 * v41;
            v28.i64[0] = *v44;
            v28.i32[2] = *(v44 + 8);
            v45 = v42 + v43 * v37;
            v29.i64[0] = *v45;
            v29.i32[2] = *(v45 + 8);
            v46 = v42 + v43 * v38;
            v27.i64[0] = *v46;
            v27.i32[2] = *(v46 + 8);
            v47 = vsubq_f32(v29, v28);
            v48 = vsubq_f32(v27, v28);
            v49 = vmlaq_f32(vnegq_f32(vmulq_f32(v47, vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), v48, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
            v50 = vmulq_f32(v49, v49);
            if (sqrtf(v50.f32[1] + (v50.f32[2] + v50.f32[0])) != 0.0)
            {
              v51 = v42 + v43 * v39;
              v52.i64[0] = *v51;
              v28.i32[3] = 0;
              v29.i32[3] = 0;
              v53 = vminnmq_f32(v28, v29);
              v54 = vmaxnmq_f32(v28, v29);
              v53.i32[3] = 0;
              v27.i32[3] = 0;
              v55 = vminnmq_f32(v53, v27);
              v54.i32[3] = 0;
              v56 = vmaxnmq_f32(v54, v27);
              v55.i32[3] = 0;
              v52.i64[1] = *(v51 + 8);
              v29 = vminnmq_f32(v55, v52);
              v56.i32[3] = 0;
              v28 = vmaxnmq_f32(v56, v52);
              v57 = *a9;
              v58 = a9[1];
              v57.i32[3] = 0;
              v59 = v29;
              v59.i32[3] = 0;
              v27 = vminnmq_f32(v57, v59);
              v58.i32[3] = 0;
              v60 = v28;
              v60.i32[3] = 0;
              v61 = vmaxnmq_f32(v58, v60);
              a9->n128_u32[2] = v27.u32[2];
              a9[1].n128_u32[2] = v61.u32[2];
              a9->n128_u64[0] = v27.i64[0];
              a9[1].n128_u64[0] = v61.i64[0];
              v62 = v32++;
              v104 = v32;
              v63 = memptr + 32 * v62;
              *v63 = v29.i64[0];
              *(v63 + 2) = v29.i32[2];
              *(v63 + 3) = i;
              *(v63 + 2) = v28.i64[0];
              *(v63 + 6) = v28.i32[2];
              *(v63 + 7) = v33;
            }

            v35 += 4;
          }

          v31 = *a2;
          v30 = a2[1];
        }

        ++v33;
      }

      while (v33 < (v30 - v31) >> 3);
      goto LABEL_43;
    }

LABEL_42:
    v32 = 0;
    goto LABEL_43;
  }

  if (v30 == *a2)
  {
    goto LABEL_42;
  }

  v32 = 0;
  v64 = 0;
  do
  {
    v65 = (*a6)[v64];
    if (v65)
    {
      v66 = 0;
      for (j = 0; j != v65; ++j)
      {
        v68 = v66 + 1;
        v69 = v66 + 2;
        v70 = *(v112 + v64);
        if (v70)
        {
          if (*(__p + v64) == 4)
          {
            v71 = *(v70 + 4 * v66);
            v68 = *(v70 + 4 * v68);
            v69 = *(v70 + 4 * v69);
          }

          else
          {
            v71 = *(v70 + 2 * v66);
            v68 = *(v70 + 2 * v68);
            v69 = *(v70 + 2 * v69);
          }
        }

        else
        {
          v71 = v66;
        }

        v72 = *(v106 + v64);
        v73 = *(v109 + v64);
        v74 = v72 + v73 * v71;
        v28.i64[0] = *v74;
        v28.i32[2] = *(v74 + 8);
        v75 = v72 + v73 * v68;
        v29.i64[0] = *v75;
        v29.i32[2] = *(v75 + 8);
        v76 = v72 + v73 * v69;
        v27.i64[0] = *v76;
        v27.i32[2] = *(v76 + 8);
        v77 = vsubq_f32(v29, v28);
        v78 = vsubq_f32(v27, v28);
        v79 = vmlaq_f32(vnegq_f32(vmulq_f32(v77, vextq_s8(vuzp1q_s32(v78, v78), v78, 0xCuLL))), v78, vextq_s8(vuzp1q_s32(v77, v77), v77, 0xCuLL));
        v80 = vmulq_f32(v79, v79);
        if (sqrtf(v80.f32[1] + (v80.f32[2] + v80.f32[0])) != 0.0)
        {
          v28.i32[3] = 0;
          v29.i32[3] = 0;
          v81 = vminnmq_f32(v28, v29);
          v82 = vmaxnmq_f32(v28, v29);
          v81.i32[3] = 0;
          v27.i32[3] = 0;
          v29 = vminnmq_f32(v81, v27);
          v82.i32[3] = 0;
          v28 = vmaxnmq_f32(v82, v27);
          v83 = *a9;
          v84 = a9[1];
          v83.i32[3] = 0;
          v85 = v29;
          v85.i32[3] = 0;
          v27 = vminnmq_f32(v83, v85);
          v84.i32[3] = 0;
          v86 = v28;
          v86.i32[3] = 0;
          v87 = vmaxnmq_f32(v84, v86);
          a9->n128_u32[2] = v27.u32[2];
          a9[1].n128_u32[2] = v87.u32[2];
          a9->n128_u64[0] = v27.i64[0];
          a9[1].n128_u64[0] = v87.i64[0];
          v88 = v32++;
          v104 = v32;
          v89 = memptr + 32 * v88;
          *v89 = v29.i64[0];
          *(v89 + 2) = v29.i32[2];
          *(v89 + 3) = j;
          *(v89 + 2) = v28.i64[0];
          *(v89 + 6) = v28.i32[2];
          *(v89 + 7) = v64;
        }

        v66 += 3;
      }

      v31 = *a2;
      v30 = a2[1];
    }

    ++v64;
  }

  while (v64 < (v30 - v31) >> 3);
LABEL_43:
  v90 = *(a1 + 12);
  if (v90 > 1)
  {
    if (v90 == 2)
    {
      operator new();
    }

    if (v90 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v90)
    {
      operator new();
    }

    if (v90 == 1)
    {
      operator new();
    }
  }

  v103 = 0;
  v91 = sub_239E05840(0, memptr, v32, v26, &v103, *a9, a9[1]);
  v120 = v91;
  v102 = 0;
  v104 = 0;
  v118[0] = &v102;
  v118[1] = &v104;
  v119 = &v120;
  sub_239E05960(a1);
  v92 = *(a1 + 52);
  if (v92 == 4)
  {
    v93 = 192;
  }

  else
  {
    v93 = 320;
  }

  if (v92 == 4)
  {
    v94 = 192;
  }

  else
  {
    v94 = 384;
  }

  v95 = v93 * HIDWORD(v102);
  v96 = v93 * HIDWORD(v102) + v94 * v104;
  v118[0] = 0;
  if (v96)
  {
    malloc_type_posix_memalign(v118, 0x40uLL, v96, 0x9CCB6776uLL);
    v97 = v118[0];
    if (!v118[0])
    {
      v100 = 0;
      goto LABEL_67;
    }

    v92 = *(a1 + 52);
  }

  else
  {
    v97 = 0;
  }

  v98 = v97 + v95;
  if (v92 == 4)
  {
    v99 = sub_239E09514(a1, v91, memptr, v97, v98, &v106);
  }

  else
  {
    v99 = sub_239E095D8(a1, v91, memptr, v97, v98, &v106);
  }

  v100 = v99;
LABEL_67:
  free(memptr);
  free(v91);
  if (__p)
  {
    v116 = __p;
    operator delete(__p);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v109)
  {
    v110 = v109;
    operator delete(v109);
  }

  if (v106)
  {
    v107 = v106;
    operator delete(v106);
  }

  return v100;
}

void sub_239E0D6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  MEMORY[0x23EE7D780](v20, 0x1091C4093A1021FLL);
  sub_239DFDEDC(&a13);
  _Unwind_Resume(a1);
}

void sub_239E0D774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, float32x4_t *a7)
{
  memset(__p, 0, sizeof(__p));
  if (a2)
  {
    sub_239E09C24(__p, a5);
    if (a5)
    {
      v12 = a2 + 32;
      v13 = 32;
      v14 = a5;
      do
      {
        v61 = __invert_f4(*(v12 - 32));
        *(__p[0] + v13 - 32) = v61;
        v13 += 64;
        v12 += 64;
        --v14;
      }

      while (v14);
    }
  }

  memptr = 0;
  if (a5 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = a5;
  }

  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v15, 0x1000040E0EAB150uLL);
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  *a7 = vnegq_f32(v20);
  a7[1] = v20;
  if (a2)
  {
    if (a5)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        objc_msgSend_boundingBox(*(a4 + 8 * v22), v16, v17, v18, v19);
        if ((vmovn_s32(vcgtq_f32(v23, v24)).u8[0] & 1) == 0 && v24.f32[1] >= v23.f32[1] && v24.f32[2] >= v23.f32[2])
        {
          v26 = 0;
          v27.i64[0] = 0x7F0000007FLL;
          v27.i64[1] = 0x7F0000007FLL;
          v28 = vnegq_f32(v27);
          do
          {
            v29 = v28;
            v30 = v27;
            if (v26)
            {
              v31 = v23.f32[0];
            }

            else
            {
              v31 = v24.f32[0];
            }

            if ((v26 & 2) != 0)
            {
              v32 = v23.f32[1];
            }

            else
            {
              v32 = v24.f32[1];
            }

            if (v26 >= 4)
            {
              v33 = v23.f32[2];
            }

            else
            {
              v33 = v24.f32[2];
            }

            v34 = vaddq_f32(*(a2 + (v22 << 6) + 48), vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*(a2 + (v22 << 6)), v31), *(a2 + (v22 << 6) + 16), v32), *(a2 + (v22 << 6) + 32), v33));
            v35 = v29;
            v35.i32[3] = 0;
            v34.i32[3] = 0;
            v36 = vminnmq_f32(v35, v34);
            v28 = v36;
            v28.i32[3] = v29.i32[3];
            v37 = v30;
            v37.i32[3] = 0;
            v38 = vmaxnmq_f32(v37, v34);
            v27 = v38;
            v27.i32[3] = v30.i32[3];
            ++v26;
          }

          while (v26 != 8);
          v39 = *a7;
          v40 = a7[1];
          v39.i32[3] = 0;
          v28.i32[3] = 0;
          v41 = vminnmq_f32(v39, v28);
          v40.i32[3] = 0;
          v27.i32[3] = 0;
          v42 = vmaxnmq_f32(v40, v27);
          a7->i32[2] = v41.i32[2];
          a7[1].i32[2] = v42.i32[2];
          a7->i64[0] = v41.i64[0];
          a7[1].i64[0] = v42.i64[0];
          v43 = v21++;
          v44 = memptr + 32 * v43;
          *v44 = v36.i64[0];
          *(v44 + 2) = v36.i32[2];
          *(v44 + 3) = v22;
          *(v44 + 2) = v38.i64[0];
          *(v44 + 6) = v38.i32[2];
          *(v44 + 7) = 0;
        }

        ++v22;
      }

      while (v22 != a5);
    }
  }

  else if (a5)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      objc_msgSend_boundingBox(*(a4 + 8 * v46), v16, v17, v18, v19);
      v49 = vcgt_f32(*v47.f32, *v48.f32);
      if ((v49.i8[0] & 1) == 0 && (v49.i8[4] & 1) == 0 && v48.f32[2] >= v47.f32[2])
      {
        v50 = *a7;
        v51 = a7[1];
        v50.i32[3] = 0;
        v52 = v47;
        v52.i32[3] = 0;
        v53 = vminnmq_f32(v50, v52);
        v51.i32[3] = 0;
        v54 = v48;
        v54.i32[3] = 0;
        a7->i32[2] = v53.i32[2];
        v55 = vmaxnmq_f32(v51, v54);
        a7->i64[0] = v53.i64[0];
        a7[1].i32[2] = v55.i32[2];
        a7[1].i64[0] = v55.i64[0];
        v56 = v45++;
        v57 = memptr + 32 * v56;
        *v57 = v47.i64[0];
        *(v57 + 2) = v47.i32[2];
        *(v57 + 3) = v46;
        *(v57 + 2) = v48.i64[0];
        *(v57 + 6) = v48.i32[2];
        *(v57 + 7) = 0;
      }

      ++v46;
    }

    while (a5 != v46);
  }

  v58 = *(a1 + 12);
  if (v58 != 1)
  {
    if (!v58)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_239E0DCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_239E0DCFC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a3;
  v28 = a2;
  v25 = a5;
  v26 = a4;
  v24 = a6;
  v22 = 0;
  v23 = 2;
  v20 = a7;
  v21 = a6;
  v18 = a9;
  v19 = a8;
  v9 = a2[7] > 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  v10 = a2[1];
  v11 = a2[2];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[6];
  *a4 = *a2;
  *(a4 + 4) = v12;
  *(a4 + 8) = v10;
  *(a4 + 12) = v13;
  *(a4 + 16) = v11;
  *(a4 + 20) = v14;
  *(a4 + 24) = v9;
  v17[0] = &v28;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = &v26;
  v17[4] = &v23;
  v17[5] = &v22;
  v16[0] = &v28;
  v16[1] = &v19;
  v16[2] = &v18;
  v16[3] = &v25;
  v16[4] = &v21;
  v16[5] = &v24;
  v16[6] = &v27;
  v16[7] = &v20;
  return sub_239E0DDD4(a1, a2, v9 << 32, 0x100000000, v17, v16);
}

uint64_t **sub_239E0DDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v19 = &v46[-2 * v18];
  v46[0] = v19;
  while (1)
  {
    if (*(a2 + 32 * v11 + 28) < 1)
    {
      v20 = *a6;
      v21 = *(a6 + 8);
      v22 = *v21;
      *v22 = HIDWORD(v12);
      v23 = *v20;
      *v21 = v22 + 1;
      v24 = *(a6 + 16);
      v25 = *v24;
      *v25 = -HIDWORD(v11);
      v26 = v23 + 32 * v11;
      *v24 = v25 + 1;
      v27 = (**(a6 + 24) + 16 * (v11 >> 32));
      LODWORD(v25) = *(v26 + 28);
      v28 = -v25;
      v29 = (**(a6 + 32) - **(a6 + 40)) >> 2;
      *v27 = v28;
      v27[1] = v29;
      v27[2] = v12;
      v27[3] = 0;
      if (v25)
      {
        v30 = **(a6 + 48);
        v31 = *(v26 + 12);
        v32 = 32 * v28;
        v33 = v30 + 32 * v31;
        v34 = 32 * v31;
        v35 = (v33 + 12);
        v36 = v32;
        do
        {
          v37 = *v35;
          v35 += 8;
          v38 = *(a6 + 32);
          v39 = *v38;
          *v39 = v37;
          *v38 = v39 + 1;
          v36 -= 32;
        }

        while (v36);
        v40 = (v30 + v34 + 28);
        do
        {
          v41 = *v40;
          v40 += 8;
          v42 = *(a6 + 56);
          v43 = *v42;
          *v43 = v41;
          *v42 = v43 + 1;
          v32 -= 32;
        }

        while (v32);
      }
    }

    else
    {
      result = sub_239E17714(a5, v11, v12, v46, v13, v14, v15, v16, v17);
    }

    v44 = v46[0];
    if (v46[0] == v19)
    {
      break;
    }

    v46[0] -= 2;
    v11 = *(v44 - 2);
    v12 = *(v44 - 1);
  }

  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t **sub_239E0DF80(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a3;
  v24 = a2;
  v21 = a6;
  v22 = a5;
  v19 = 0;
  v20 = 2;
  v17 = a8;
  v18 = a7;
  v8 = a2[7] > 0;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[4];
  v12 = a2[5];
  v13 = a2[6];
  *a5 = *a2;
  *(a5 + 4) = v11;
  *(a5 + 8) = v9;
  *(a5 + 12) = v12;
  *(a5 + 16) = v10;
  *(a5 + 20) = v13;
  *(a5 + 24) = v8;
  v16[0] = &v24;
  v16[1] = &v18;
  v16[2] = &v17;
  v16[3] = &v22;
  v16[4] = &v20;
  v16[5] = &v19;
  v15[0] = &v24;
  v15[1] = &v18;
  v15[2] = &v17;
  v15[3] = &v21;
  v15[4] = &v23;
  return sub_239E0E03C(a1, a2, v8 << 32, 0x100000000, v16, v15);
}

uint64_t **sub_239E0E03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5, uint64_t a6)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = ((*(a1 + 52) - 1) * *(a1 + 40));
  result = MEMORY[0x28223BE20]();
  v19 = &v29[-2 * v18];
  v29[0] = v19;
  while (1)
  {
    if (*(a2 + 32 * v11 + 28) < 1)
    {
      v20 = *(a6 + 8);
      v21 = **a6 + 32 * v11;
      v22 = *v20;
      *v22 = HIDWORD(v12);
      *v20 = v22 + 1;
      v23 = *(a6 + 16);
      v24 = *v23;
      *v24 = -HIDWORD(v11);
      *v23 = v24 + 1;
      v25 = *(v21 + 28) ? *(**(a6 + 32) + 32 * *(v21 + 12) + 12) : -1;
      v26 = (**(a6 + 24) + 8 * (v11 >> 32));
      *v26 = v25;
      v26[1] = v12;
    }

    else
    {
      result = sub_239E17714(a5, v11, v12, v29, v13, v14, v15, v16, v17);
    }

    v27 = v29[0];
    if (v29[0] == v19)
    {
      break;
    }

    v29[0] -= 2;
    v11 = *(v27 - 2);
    v12 = *(v27 - 1);
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 sub_239E0E188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  v4 = *(a2 + 16);
  result = *(a2 + 32);
  *(a1 + 8) = *a2;
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  *(a1 + 56) = v2;
  *a1 = &unk_284D086C8;
  return result;
}

__n128 sub_239E0E1CC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 24) = v3;
  *(a1 + 8) = result;
  *a1 = &unk_284D086C8;
  return result;
}

void sub_239E0E220(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7, int a8, void *a9, uint64_t a10)
{
  v10 = a3;
  v362 = *MEMORY[0x277D85DE8];
  if (*(*(a2 + 32) + 40))
  {
    sub_239E24B58();
  }

  v316 = objc_msgSend_date(MEMORY[0x277CBEAA8], a2, a3, a4, a5);
  v320 = *(a2 + 16);
  v318 = *(a2 + 24);
  if (a10 == 1)
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  v355 = 0;
  v354 = 0;
  v356 = 0;
  v352 = 0;
  v351 = 0;
  v353 = 0;
  v349 = 0;
  v348 = 0;
  v350 = 0;
  v346 = 0;
  v345 = 0;
  v347 = 0;
  v327 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0;
  v14 = 0;
  v328 = 0;
  v330 = 0;
  v319 = v12 * a5;
  v321 = v10;
  for (i = objc_msgSend_count(v10, v15, v16, v17, v18); v13 < i; i = objc_msgSend_count(v321, v105, v106, v107, v108))
  {
    v24 = objc_msgSend_objectAtIndexedSubscript_(v10, v20, v13, v22, v23);
    v28 = objc_msgSend_objectAtIndexedSubscript_(a4, v25, v13, v26, v27);
    v33 = objc_msgSend_unsignedIntegerValue(v28, v29, v30, v31, v32);
    v37 = objc_msgSend_objectAtIndexedSubscript_(a6, v34, v13, v35, v36);
    v38 = v12;
    v42 = objc_msgSend_objectAtIndexedSubscript_(a7, v39, v13, v40, v41);
    v47 = objc_msgSend_unsignedIntegerValue(v42, v43, v44, v45, v46);
    v341[0] = 0;
    v357[0] = 0;
    v51 = objc_msgSend_objectAtIndexedSubscript_(a9, v48, v13, v49, v50);
    v56 = objc_msgSend_unsignedIntegerValue(v51, v52, v53, v54, v55);
    if (objc_msgSend_storageMode(v24, v57, v58, v59, v60) == 2)
    {
      v67 = objc_msgSend_length(v24, v61, v62, v63, v64) - v33;
      if (v37)
      {
        v68 = v67;
        v69 = objc_msgSend_newBufferWithLength_options_(v320, v65, v67, 0, v66);
      }

      else
      {
        v68 = v319 * v56;
        v69 = objc_msgSend_newBufferWithLength_options_(v320, v65, v319 * v56, 0, v66);
      }

      v74 = v69;
      if (!v330)
      {
        v330 = objc_msgSend_commandBuffer(v318, v70, v71, v72, v73);
        v328 = objc_msgSend_blitCommandEncoder(v330, v75, v76, v77, v78);
      }

      objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v328, v70, v24, v33, v74, 0, v68);
      v83 = objc_msgSend_contents(v74, v79, v80, v81, v82);
    }

    else
    {
      v74 = 0;
      v83 = (objc_msgSend_contents(v24, v61, v62, v63, v64) + v33);
    }

    v341[0] = v83;
    if (v37)
    {
      if (objc_msgSend_storageMode(v37, v84, v85, v86, v87) == 2)
      {
        v96 = objc_msgSend_newBufferWithLength_options_(v320, v88, 4 * v56 * v38, 0, v91);
        if (!v330)
        {
          v330 = objc_msgSend_commandBuffer(v318, v92, v93, v94, v95);
          v328 = objc_msgSend_blitCommandEncoder(v330, v97, v98, v99, v100);
        }

        objc_msgSend_copyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(v328, v92, v37, v47, v96, 0, 4 * v56 * v38);
        v357[0] = objc_msgSend_contents(v96, v101, v102, v103, v104);
      }

      else
      {
        v96 = 0;
        v357[0] = (objc_msgSend_contents(v37, v88, v89, v90, v91) + v47);
      }
    }

    else
    {
      v96 = 0;
    }

    sub_239DEDD74(&v354, v341);
    LODWORD(__p[0]) = a5;
    sub_239DEDE48(&v351, __p);
    sub_239DEDD74(&v348, v357);
    LODWORD(__p[0]) = a8;
    sub_239DEDE48(&v345, __p);
    if (v74)
    {
      objc_msgSend_addObject_(v327, v105, v74, v107, v108);
    }

    if (v96)
    {
      objc_msgSend_addObject_(v327, v105, v96, v107, v108);
    }

    v14 += v56 * v38;
    v12 = v38;
    ++v13;
    v10 = v321;
  }

  if (v330)
  {
    objc_msgSend_endEncoding(v328, v20, v21, v22, v23);
    objc_msgSend_commit(v330, v109, v110, v111, v112);
    kdebug_trace();
    objc_msgSend_waitUntilCompleted(v330, v113, v114, v115, v116);
    kdebug_trace();
  }

  memset(v341, 0, sizeof(v341));
  sub_239E15CC0(v341, v354, v355, (v355 - v354) >> 3);
  memset(v342, 0, sizeof(v342));
  sub_239E15D78(v342, v351, v352, (v352 - v351) >> 2);
  memset(v343, 0, sizeof(v343));
  sub_239E15CC0(v343, v348, v349, (v349 - v348) >> 3);
  memset(v344, 0, sizeof(v344));
  sub_239E15D78(v344, v345, v346, (v346 - v345) >> 2);
  v121 = objc_msgSend_date(MEMORY[0x277CBEAA8], v117, v118, v119, v120);
  kdebug_trace();
  v122 = 1.0;
  if (*(a1 + 12) == 3)
  {
    v122 = 2.0;
  }

  v123 = (v122 * (v14 / v12));
  memptr = 0;
  v124 = 32 * v123;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 32 * v123, 0x1000040E0EAB150uLL);
  v339 = 0;
  if (a10)
  {
    v129 = 0;
    v130.i64[0] = 0x7F0000007FLL;
    v130.i64[1] = 0x7F0000007FLL;
    v131.n128_u64[0] = 0x7F0000007FLL;
    v131.n128_u64[1] = 0x7F0000007FLL;
    v329 = vnegq_f32(v130);
    v331 = v131;
    while (v129 < objc_msgSend_count(v10, v125, v126, v127, v128))
    {
      v135 = objc_msgSend_objectAtIndexedSubscript_(a9, v132, v129, v133, v134);
      v140 = objc_msgSend_unsignedIntegerValue(v135, v136, v137, v138, v139);
      if (v140)
      {
        v144 = 0;
        v145 = 1;
        do
        {
          v146 = v144 + 1;
          v147 = v144 + 2;
          v148 = v144 + 3;
          v149 = *(v343[0] + v129);
          if (v149)
          {
            if (*(v344[0] + v129) == 4)
            {
              v150 = *(v149 + 4 * v144);
              v146 = *(v149 + 4 * v146);
              v147 = *(v149 + 4 * v147);
              v148 = *(v149 + 4 * v148);
            }

            else
            {
              v150 = *(v149 + 2 * v144);
              v146 = *(v149 + 2 * v146);
              v147 = *(v149 + 2 * v147);
              v148 = *(v149 + 2 * v148);
            }
          }

          else
          {
            v150 = v144;
          }

          v151 = *(v341[0] + v129);
          v152 = *(v342[0] + v129);
          v153 = v151 + v152 * v150;
          v141.i64[0] = *v153;
          v141.i32[2] = *(v153 + 8);
          v154 = v151 + v152 * v146;
          v143.i64[0] = *v154;
          v143.i32[2] = *(v154 + 8);
          v155 = v151 + v152 * v147;
          v142.i64[0] = *v155;
          v142.i32[2] = *(v155 + 8);
          v156 = vsubq_f32(v143, v141);
          v157 = vsubq_f32(v142, v141);
          v158 = vmlaq_f32(vnegq_f32(vmulq_f32(v156, vextq_s8(vuzp1q_s32(v157, v157), v157, 0xCuLL))), v157, vextq_s8(vuzp1q_s32(v156, v156), v156, 0xCuLL));
          v159 = vmulq_f32(v158, v158);
          if (sqrtf(v159.f32[1] + (v159.f32[2] + v159.f32[0])) != 0.0)
          {
            v160 = v151 + v152 * v148;
            v161.i64[0] = *v160;
            v141.i32[3] = 0;
            v143.i32[3] = 0;
            v162 = vminnmq_f32(v141, v143);
            v163 = vmaxnmq_f32(v141, v143);
            v162.i32[3] = 0;
            v142.i32[3] = 0;
            v164 = vminnmq_f32(v162, v142);
            v163.i32[3] = 0;
            v164.i32[3] = 0;
            v165 = vmaxnmq_f32(v163, v142);
            v161.i64[1] = *(v160 + 8);
            v166 = vminnmq_f32(v164, v161);
            v165.i32[3] = 0;
            v167 = vmaxnmq_f32(v165, v161);
            v168 = v329;
            v168.i32[3] = 0;
            v169 = v339++;
            v170 = memptr + 32 * v169;
            *(v170 + 2) = v166.i32[2];
            *v170 = v166.i64[0];
            v166.i32[3] = 0;
            v142 = vminnmq_f32(v168, v166);
            v143 = v331;
            v143.i32[3] = 0;
            *(v170 + 2) = v167.i64[0];
            *(v170 + 6) = v167.i32[2];
            v167.i32[3] = 0;
            v141 = vmaxnmq_f32(v143, v167);
            v142.i32[3] = v329.n128_i32[3];
            v141.i32[3] = v331.n128_i32[3];
            *(v170 + 3) = v145 - 1;
            *(v170 + 7) = v129;
            v329 = v142;
            v331 = v141;
          }

          v171 = v140 > v145++;
          v144 += 4;
        }

        while (v171);
      }

      ++v129;
    }
  }

  else
  {
    v172 = 0;
    v173.i64[0] = 0x7F0000007FLL;
    v173.i64[1] = 0x7F0000007FLL;
    v174.n128_u64[0] = 0x7F0000007FLL;
    v174.n128_u64[1] = 0x7F0000007FLL;
    v329 = vnegq_f32(v173);
    v331 = v174;
    while (v172 < objc_msgSend_count(v10, v125, v126, v127, v128))
    {
      v178 = objc_msgSend_objectAtIndexedSubscript_(a9, v175, v172, v176, v177);
      v183 = objc_msgSend_unsignedIntegerValue(v178, v179, v180, v181, v182);
      if (v183)
      {
        v187 = 0;
        v188 = 1;
        do
        {
          v189 = v187 + 1;
          v190 = v187 + 2;
          v191 = *(v343[0] + v172);
          if (v191)
          {
            if (*(v344[0] + v172) == 4)
            {
              v192 = *(v191 + 4 * v187);
              v189 = *(v191 + 4 * v189);
              v190 = *(v191 + 4 * v190);
            }

            else
            {
              v192 = *(v191 + 2 * v187);
              v189 = *(v191 + 2 * v189);
              v190 = *(v191 + 2 * v190);
            }
          }

          else
          {
            v192 = v187;
          }

          v193 = *(v341[0] + v172);
          v194 = *(v342[0] + v172);
          v195 = v193 + v194 * v192;
          v184.i64[0] = *v195;
          v184.i32[2] = *(v195 + 8);
          v196 = v193 + v194 * v189;
          v185.i64[0] = *v196;
          v185.i32[2] = *(v196 + 8);
          v197 = v193 + v194 * v190;
          v186.i64[0] = *v197;
          v186.i32[2] = *(v197 + 8);
          v198 = vsubq_f32(v185, v184);
          v199 = vsubq_f32(v186, v184);
          v200 = vmlaq_f32(vnegq_f32(vmulq_f32(v198, vextq_s8(vuzp1q_s32(v199, v199), v199, 0xCuLL))), v199, vextq_s8(vuzp1q_s32(v198, v198), v198, 0xCuLL));
          v201 = vmulq_f32(v200, v200);
          if (sqrtf(v201.f32[1] + (v201.f32[2] + v201.f32[0])) != 0.0)
          {
            v184.i32[3] = 0;
            v185.i32[3] = 0;
            v202 = vminnmq_f32(v184, v185);
            v202.i32[3] = 0;
            v203 = vmaxnmq_f32(v184, v185);
            v186.i32[3] = 0;
            v204 = vminnmq_f32(v202, v186);
            v203.i32[3] = 0;
            v205 = vmaxnmq_f32(v203, v186);
            v206 = v329;
            v206.i32[3] = 0;
            v207 = v339++;
            v208 = memptr + 32 * v207;
            *(v208 + 2) = v204.i32[2];
            *v208 = v204.i64[0];
            v204.i32[3] = 0;
            v185 = vminnmq_f32(v206, v204);
            v186 = v331;
            v186.i32[3] = 0;
            *(v208 + 2) = v205.i64[0];
            *(v208 + 6) = v205.i32[2];
            v205.i32[3] = 0;
            v184 = vmaxnmq_f32(v186, v205);
            v185.i32[3] = v329.n128_i32[3];
            v184.i32[3] = v331.n128_i32[3];
            *(v208 + 3) = v188 - 1;
            *(v208 + 7) = v172;
            v329 = v185;
            v331 = v184;
          }

          v171 = v183 > v188++;
          v187 += 3;
        }

        while (v171);
      }

      ++v172;
    }
  }

  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v121, v209, v210, v211, v212);
  v213 = sub_239E05F90();
  v214 = *(a1 + 12);
  if (v214 > 1)
  {
    if (v214 == 2)
    {
      operator new();
    }

    if (v214 == 3)
    {
      operator new();
    }
  }

  else
  {
    if (!v214)
    {
      operator new();
    }

    if (v214 == 1)
    {
      operator new();
    }
  }

  dispatch_release(v213);
  v219 = objc_msgSend_date(MEMORY[0x277CBEAA8], v215, v216, v217, v218);
  kdebug_trace();
  v338 = 0;
  v220 = sub_239E05840(0, memptr, v339, v123, &v338, v329, v331);
  kdebug_trace();
  objc_msgSend_timeIntervalSinceNow(v219, v221, v222, v223, v224);
  if (*(a1 + 8) == 1)
  {
    v229 = objc_msgSend_date(MEMORY[0x277CBEAA8], v225, v226, v227, v228);
    v234 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v230, v231, v232, v233);
    v235 = *(a1 + 24);
    *v357 = *(a1 + 8);
    v358 = v235;
    v359 = *(a1 + 40);
    v360 = *(a1 + 56);
    sub_239DFA254(a1, v357, v220, v234);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v236, @"CPU", @"BVH Builder", v237);
    v241 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v238, @"{ %f, %f, %f }, { %f, %f, %f }", v239, v240, v329.n128_f32[0], v329.n128_f32[1], v329.n128_f32[2], v331.n128_f32[0], v331.n128_f32[1], v331.n128_f32[2], v316);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v242, v241, @"Bounds", v243);
    if (*(v220 + 7) >= 0)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v234, v244, @"Internal", @"BVH Root Node Type", v245);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v234, v244, @"Leaf", @"BVH Root Node Type", v245);
    }

    v250 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v246, v247, v248, v249);
    objc_msgSend_setObject_forKeyedSubscript_(v234, v251, v250, @"Temporary Memory", v252);
    v257 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v253, v254, v255, v256, vcvtd_n_f64_u64(v124, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v250, v258, v257, @"Fragments (mb)", v259);
    v264 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v260, v261, v262, v263, vcvtd_n_f64_u64(32 * v338, 0x14uLL));
    objc_msgSend_setObject_forKeyedSubscript_(v250, v265, v264, @"Nodes (mb)", v266);
    v336 = 0u;
    v337 = 0u;
    v334 = 0u;
    v335 = 0u;
    v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v267, &v334, v361, 16);
    if (v272)
    {
      v273 = *v335;
      v274 = 0.0;
      do
      {
        for (j = 0; j != v272; ++j)
        {
          if (*v335 != v273)
          {
            objc_enumerationMutation(v250);
          }

          v276 = objc_msgSend_objectForKeyedSubscript_(v250, v268, *(*(&v334 + 1) + 8 * j), v270, v271);
          objc_msgSend_doubleValue(v276, v277, v278, v279, v280);
          v274 = v274 + v281;
        }

        v272 = objc_msgSend_countByEnumeratingWithState_objects_count_(v250, v268, &v334, v361, 16);
      }

      while (v272);
    }

    else
    {
      v274 = 0.0;
    }

    v282 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v268, v269, v270, v271, v274);
    objc_msgSend_setObject_forKeyedSubscript_(v250, v283, v282, @"Total (mb)", v284);
    objc_msgSend_timeIntervalSinceNow(v229, v285, v286, v287, v288);
  }

  v289 = objc_msgSend_date(MEMORY[0x277CBEAA8], v225, v226, v227, v228);
  __p[0] = v220;
  v333 = 0;
  v339 = 0;
  v357[0] = &v333;
  v357[1] = &v339;
  *&v358 = __p;
  sub_239E05960(a1);
  objc_msgSend_timeIntervalSinceNow(v289, v290, v291, v292, v293);
  v294 = getpagesize();
  v295 = -v294;
  v296 = mmap(0, (v294 + (HIDWORD(v333) << 7) + 127) & -v294, 3, 4098, -1, 0);
  if (v296 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v297 = v294 - 1;
  v298 = mmap(0, (v294 - 1 + 16 * v333) & v295, 3, 4098, -1, 0);
  if (v298 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (((v297 + 4 * v339) & v295) != 0)
  {
    v299 = (v297 + 4 * v339) & v295;
  }

  else
  {
    v299 = v294;
  }

  v300 = mmap(0, v299, 3, 4098, -1, 0);
  if (v300 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v305 = mmap(0, v299, 3, 4098, -1, 0);
  if (v305 == -1 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v306 = objc_msgSend_date(MEMORY[0x277CBEAA8], v301, v302, v303, v304);
  v357[1] = 0;
  v357[0] = 0;
  *&v358 = 0;
  memset(__p, 0, sizeof(__p));
  sub_239E04F58(v357, (v333 + HIDWORD(v333)));
  sub_239E04F58(__p, (v333 + HIDWORD(v333)));
  sub_239E0DCFC(a1, v220, memptr, v296, v298, v300, v305, v357[0], __p[0]);
  v307 = *(v220 + 7);
  objc_msgSend_timeIntervalSinceNow(v306, v308, v309, v310, v311);
  free(memptr);
  objc_msgSend_date(MEMORY[0x277CBEAA8], v312, v313, v314, v315);
  kdebug_trace();
  operator new();
}